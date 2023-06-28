class SoundPlayer
{
    static yPlayer = null;
    youtubeIsReady = false;
    pulseSwitch = false;
    stereoSwitch = false;
    pulseTimer = null;
    stereoTimer = null;
    lerpPulseTimer = [];
	constructor()
	{
		this.url = "test";
		this.name = "";
		this.dynamic = false;
		this.distance = 10;
		this.volume = 1.0;
		this.pos = [0.0,0.0,0.0];
		this.max_volume = -1.0;
		this.max_volume_before_puls = 0.0;
		this.div_id = "myAudio_" + Math.floor(Math.random() * 9999999);
		this.loop = false;
		this.isYoutube = false;
		this.load = false;
		this.isMuted_ = false;
		this.audioPlayer = null;
	}

	isYoutubeReady(result){
	    this.youtubeIsReady = result;
	}

	getDistance() { return this.distance;}
	getLocation() { return this.pos;     }
	getVolume()   { return this.volume;  }
	getMaxVolume(){ return this.max_volume;  }
	getUrlSound() { return this.url;     }
	isDynamic()   { return this.dynamic; }
	getDivId()    { return this.div_id;  }
	isLoop()      { return this.loop;    }
	getName()     { return this.name;    }
	loaded()      { return this.load;    }

	getAudioPlayer()    { return this.audioPlayer; }
	getYoutubePlayer()  { return this.yPlayer;     }

    setLoaded(result)    { this.load = result;   }
	setName(result)      { this.name = result;   }
	setDistance(result)  { this.distance = result;   }
	setDynamic(result)   { this.dynamic = result;    }
	setLocation(x_,y_,z_){ this.pos = [x_,y_,z_];    }

	destroyPulseTimer(){
	    if(this.pulseTimer){
            this.max_volume = this.max_volume_before_puls;
	        clearInterval(this.pulseTimer);
	        this.pulseTimer = null;
	    }
        if(this.lerpPulseTimer["pulse"]){
            clearInterval(this.lerpPulseTimer["pulse"]);
            this.lerpPulseTimer["pulse"] = null;
        }
	}

	destroyStereoTimer(){
        if(this.lerpPulseTimer["stereo"]){
            clearInterval(this.lerpPulseTimer["stereo"]);
            this.lerpPulseTimer["stereo"] = null;
        }
        if(this.stereoTimer){
            clearInterval(this.stereoTimer);
            this.stereoTimer = null;
        }
        if(this.audioPlayer){
            this.audioPlayer.stereo(0);
        }
	}

    lerp = (startValue, endValue, time, cb, id, deleteTimer)  => {
        let t = 0;
        let currentValue = startValue;
        const changeValue = endValue - startValue;

        this.lerpPulseTimer[id] = setInterval(() => {
            t += 10 / time;
            currentValue = (t >= 1) ? endValue : (startValue + (changeValue * t));
            cb(currentValue)
            if (t >= 1) {
                clearInterval(this.lerpPulseTimer[id]);
                if(deleteTimer){
                    this.lerpPulseTimer[id] = true;
                }
            }
        }, 10);
    }

    lerpStereo = (time) => {
        this.stereoSwitch = !this.stereoSwitch;

        if(this.stereoSwitch){
            this.lerp(1, -1, time / 2, (value) => {
                this.audioPlayer.stereo(value);
            }, "stereo")
        }else{
            this.lerp(-1, 1, time / 2, (value) => {
                this.audioPlayer.stereo(value);
            }, "stereo")
        }
    }

    startStereoSound = (time) => {
        if (this.stereoTimer) {
            clearInterval(this.stereoTimer);
            this.stereoTimer = null;
        }
        if (this.lerpPulseTimer["stereo"]) {
            clearInterval(this.lerpPulseTimer["stereo"]);
            this.lerpPulseTimer["stereo"] = null;
        }
        const intervalTime = time / 2;

        this.lerp(0, 1, intervalTime, (value) => {
            this.audioPlayer.stereo(value);
        }, "temporary_stereo", true)
        this.stereoTimer = setInterval(() => {
            this.lerpStereo(intervalTime);
        }, intervalTime);
    }

    lerpVolume = (percentage, time) => {
        this.pulseSwitch = !this.pulseSwitch;

        if(this.pulseSwitch){
            this.lerp(this.max_volume, this.max_volume * percentage, time / 2, (value) => {
                this.setMaxVolume(value);
            }, "pulse")
        }else{
            this.lerp(this.max_volume * percentage, this.max_volume_before_puls, time / 2, (value) => {
                this.setMaxVolume(value);
            }, "pulse")
        }
        this.setMaxVolume(this.max_volume - 0.05)
    }

    startPulsingSound = (percentage, time) => {
        if (this.pulseTimer) {
            clearInterval(this.pulseTimer);
            this.pulseTimer = null;
            this.max_volume = this.max_volume_before_puls;
        }
        if (this.lerpPulseTimer["pulse"]) {
            clearInterval(this.lerpPulseTimer["pulse"]);
            this.lerpPulseTimer["pulse"] = null;
        }
        this.max_volume_before_puls = this.max_volume;
        const intervalTime = time / 2;
        this.lerpVolume((100 - percentage) / 100, intervalTime);
        this.pulseTimer = setInterval(() => {
            this.lerpVolume((100 - percentage) / 100, intervalTime);
        }, intervalTime);
    }

	setSoundUrl(result) {
	    this.url = result.replace(/<[^>]*>?/gm, '');
	}

	setLoop(result) {
        if(!this.isYoutube)
        {
            if(this.audioPlayer != null){
                this.audioPlayer.loop(result);
            }
        }
	    this.loop = result;
	}


	setMaxVolume(result) { this.max_volume = result; }
	setVolume(result)
	{
		this.volume = result;
		if(this.max_volume == -1) this.max_volume = result;
		if(this.max_volume > (this.volume - 0.01)) this.volume = this.max_volume;

		if(this.isMuted_ || IsAllMuted){
			if(!this.isYoutube)
			{
				if(this.audioPlayer != null){
				    this.audioPlayer.volume(0);
				}
			}
			else
			{
				if(this.yPlayer && this.youtubeIsReady){
				    this.yPlayer.setVolume(0);
				}
			}
		}
		else
		{
			if(!this.isYoutube)
			{
				if(this.audioPlayer != null) {
				    this.audioPlayer.volume(result);
				}
			}
			else
			{
				if(this.yPlayer && this.youtubeIsReady){
				    this.yPlayer.setVolume(result * 100);
				}
			}
		}
	}

	create()
	{
	    $.post('https://xdiskjockey_beta/events', JSON.stringify(
	    {
            type: "onLoading",
            id: this.getName(),
	    })).fail(() => {
                               ShowNotification("Error while $.post. Please do not rename the resource and keep the original name or it wont work.");
                           });
	    var link = getYoutubeUrlId(this.getUrlSound());
        if(link === "")
        {
            this.isYoutube = false;

            this.audioPlayer = new Howl({
                src: this.getUrlSound(),
                loop: false,
                //html5: true,
                autoplay: true,
                stereo: 0.0,
                volume: 0.0,
                pos: [-2,0,-0.5],
                format: ['mp3'],
                onend: (event) => {
                    ended(null);
                    this.destroyStereoTimer();
                    this.destroyPulseTimer();
                },
                onplay: function(){
                    isReady("nothing", true);
                },
            });
        }
        else
        {
            this.isYoutube = true;
            this.isYoutubeReady(false);
            $("#" + this.div_id).remove();
            $("body").append("<div id='"+ this.div_id +"'></div>");
            this.yPlayer = new YT.Player(this.div_id, {

                startSeconds:Number,

                videoId: link,
                origin: window.location.href,
                enablejsapi: 1,
                width: "0",
                height: "0",
                events: {
                    'onReady': function(event){
                        event.target.setVolume(0);
                        event.target.playVideo();
                        isReady(event.target.getIframe().id);
                    },
                    'onStateChange': function(event){
                        event.target.unMute();
                        event.target.setVolume(0);
                        if (event.data == YT.PlayerState.ENDED) {
                            isLooped(event.target.getIframe().id);
                            ended(event.target.getIframe().id);
                        }
                    }
                }
            });
        }
	}

    destroyYoutubeApi()
    {
        if (this.yPlayer) {
            if (typeof this.yPlayer.stopVideo === "function" && typeof this.yPlayer.destroy === "function") {
                this.yPlayer.stopVideo();
                this.yPlayer.destroy();
                this.youtubeIsReady = false;
                this.yPlayer = null;
            }
        }
    }

	delete()
	{
	    if(this.audioPlayer != null){
            this.audioPlayer.pause();
            this.audioPlayer.stop();
            this.audioPlayer.unload();
	    }
	    this.audioPlayer = null;
	    $("#" + this.div_id).remove();
	}

	updateVolume(dd,maxd)
	{
        var d_max = maxd;
        var d_now = dd;

        var vol = 0;

        var distance = (d_now / d_max);

        if (distance < 1)
        {
            distance = distance * 100;
            var far_away = 100 - distance;
            vol = (this.max_volume / 100) * far_away;
			this.setVolume(vol);
			this.isMuted_ = false;
        }
        else
        {
            this.setVolume(0);
            this.isMuted_ = true;
        }
	}

	play()
	{
        if(!this.isYoutube)
        {
            if(this.audioPlayer != null){
                this.audioPlayer.play();
            }
        }
        else
        {
            if(this.youtubeIsReady){
                this.yPlayer.playVideo();
            }
        }
	}
	pause()
	{
        if(!this.isYoutube)
        {
            if(this.audioPlayer != null) this.audioPlayer.pause();
        }
        else
        {
            if(this.youtubeIsReady) this.yPlayer.pauseVideo();
        }
	}

	resume()
	{
        if(!this.isYoutube)
        {
            if(this.audioPlayer != null) this.audioPlayer.play();
        }
        else
        {
            if(this.youtubeIsReady) this.yPlayer.playVideo();
        }
	}

	isMuted()
	{
        return this.isMuted_;
	}

	mute()
	{
        this.setVolume(0);
        this.isMuted_ = true;
	}

	unmute()
	{
        if(!this.isYoutube)
        {
            if(this.audioPlayer != null) this.audioPlayer.volume(this.getVolume());
        }
        else
        {
            if(this.youtubeIsReady) this.yPlayer.setVolume( this.getVolume() * 100);
        }
        this.isMuted_ = false;
	}

	unmuteSilent()
	{
        this.isMuted_ = false;
	}

	setTimeStamp(time)
	{
        if(!this.isYoutube)
        {
            this.audioPlayer.seek(time);
        }
        else
        {
            if(this.yPlayer){
                if(this.yPlayer.seekTo){
                    this.yPlayer.seekTo(time);
                }
            }
        }
	}

	isPlaying()
	{
        if(this.isYoutube) return this.youtubeIsReady && this.yPlayer.getPlayerState() == 1;
        else return this.audioPlayer != null  && this.audioPlayer.playing();
	}
}