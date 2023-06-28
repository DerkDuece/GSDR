function getYoutubeUrlId(url)
{
    var videoId = "";
    if( url.indexOf("youtube") !== -1 ){
        var urlParts = url.split("?v=");
        videoId = urlParts[1].substring(0,11);
    }

    if( url.indexOf("youtu.be") !== -1 ){
        var urlParts = url.replace("//", "").split("/");
        videoId = urlParts[1].substring(0,11);
    }
    return videoId;
}

function GetDataFromURL(URL, cb){
    var ytId = getYoutubeUrlId(URL);
    if(ytId === "")
	{
        fetch(URL, { method: 'HEAD' }).then(res => {
            if(res){
                if(res.status == 403){
                    cb(null, null, false);
                    return;
                }
            }
            var audioPlayer = new Howl({
                    src: URL,
                    loop: false,
                    html5: true,
                    autoplay: true,
                    volume: 0.0,
                    format: ['mp3'],
                    onplay: function(){
                        cb(editString(URL), audioPlayer._duration, true);
                        audioPlayer.pause();
                        audioPlayer.stop();
                        audioPlayer.unload();
                    },
                    loaderror: () =>{
                        cb(null, null, false);
                    },
            });
        }).catch(err => cb(null, null, false));
    }
    else
    {
        ValidYoutubeVideo(ytId, function(result){
            if(result){
                var test = new YT.Player("trash",
                {
                    height: '0',
                    width: '0',
                    videoId: ytId,
                    events:
                    {
                        'onReady': function(event){
                            cb(event.target.getVideoData().title, test.getDuration(), true);
                            test.stopVideo();
                            test.destroy();
                        },
                    }
                });
            }else{
                cb(null, null, false)
            }
        })
    }
}

function ValidYoutubeVideo(id, cb) {
    fetch("https://img.youtube.com/vi/" + id + "/mqdefault.jpg", { method: 'HEAD' }).then(res => {
        if(res.status == 404){
            cb(false)
            }else{
            cb(true)
        }
    }).catch(err => cb(false));
}

function isReady(divId, howler){
    if(howler){
        for (var soundName in soundList)
        {
            var sound = soundList[soundName];
            if(sound.loaded() == false){
                sound.setLoaded(true);
                $.post('https://xdiskjockey_beta/events', JSON.stringify(
                {
                    type: "onPlay",
                    id: sound.getName(),
                })).fail(() => {
                    ShowNotification("Error while $.post. Please do not rename the resource and keep the original name or it wont work.");
                });

                var time = 0;
                if(sound.getAudioPlayer() != null){time = sound.getAudioPlayer()._duration;}
                if(sound.isDynamic()) sound.setVolume(0);

                $.post('https://xdiskjockey_beta/data_status', JSON.stringify(
                {
                    time: time,
                    type: "maxDuration",
                    id: sound.getName(),
                })).fail(() => {
                                       ShowNotification("Error while $.post. Please do not rename the resource and keep the original name or it wont work.");
                                   });
                break;
            }
        }
        return;
    }
	for (var soundName in soundList)
	{
		var sound = soundList[soundName];
        if(sound.getDivId() === divId){
            $.post('https://xdiskjockey_beta/events', JSON.stringify(
            {
                type: "onPlay",
                id: sound.getName(),
            })).fail(() => {
                                   ShowNotification("Error while $.post. Please do not rename the resource and keep the original name or it wont work.");
                               });

            var time = 0;
            if(sound.getYoutubePlayer() != null){time = sound.getYoutubePlayer().getDuration();}
			if(sound.isDynamic()) sound.setVolume(0);
            sound.setLoaded(true);

            $.post('https://xdiskjockey_beta/data_status', JSON.stringify(
            {
                time: time,
                type: "maxDuration",
                id: sound.getName(),
            })).fail(() => {
                                   ShowNotification("Error while $.post. Please do not rename the resource and keep the original name or it wont work.");
                               });

            sound.isYoutubeReady(true);
            break;
        }
	}
}

function isLooped(divId){
	for (var soundName in soundList)
	{
		var sound = soundList[soundName];
        if(sound.getDivId() === divId && sound.isLoop()){
            sound.setTimeStamp(0);
            sound.play();

            $.post('https://xdiskjockey_beta/data_status', JSON.stringify({ type: "finished",id: soundName })).fail(() => {
                                                                                                                                  ShowNotification("Error while $.post. Please do not rename the resource and keep the original name or it wont work.");
                                                                                                                              });
            $.post('https://xdiskjockey_beta/events', JSON.stringify(
            {
                type: "onEnd",
                id: sound.getName(),
            })).fail(() => {
                                   ShowNotification("Error while $.post. Please do not rename the resource and keep the original name or it wont work.");
                               });

            var time = 0;
            if(sound.getAudioPlayer() != null){time = sound.getAudioPlayer()._duration;}
            if(sound.getYoutubePlayer() != null){time = sound.getYoutubePlayer().getDuration();}
            $.post('https://xdiskjockey_beta/events', JSON.stringify(
            {
                type: "resetTimeStamp",
                id: sound.getName(),
                time: time,
            })).fail(() => {
                                   ShowNotification("Error while $.post. Please do not rename the resource and keep the original name or it wont work.");
                               });
            break;
        }
    }
}

function ended(divId){
    if(divId == null)
    {
    	for (var soundName in soundList)
    	{
            var sound = soundList[soundName];
            if(!sound.isPlaying())
            {
                $.post('https://xdiskjockey_beta/data_status', JSON.stringify({ type: "finished",id: soundName })).fail(() => {
                                                                                                                                      ShowNotification("Error while $.post. Please do not rename the resource and keep the original name or it wont work.");
                                                                                                                                  });
                $.post('https://xdiskjockey_beta/events', JSON.stringify(
                {
                    type: "onEnd",
                    id: sound.getName(),
                })).fail(() => {
                                       ShowNotification("Error while $.post. Please do not rename the resource and keep the original name or it wont work.");
                                   });
                if(sound.isLoop()){
                    var time = 0;
                    if(sound.getAudioPlayer() != null){time = sound.getAudioPlayer()._duration;}
                    if(sound.getYoutubePlayer() != null){time = sound.getYoutubePlayer().getDuration();}
                    $.post('https://xdiskjockey_beta/events', JSON.stringify(
                    {
                        type: "resetTimeStamp",
                        id: sound.getName(),
                        time: time,
                    })).fail(() => {
                                           ShowNotification("Error while $.post. Please do not rename the resource and keep the original name or it wont work.");
                                       });

                    sound.setTimeStamp(0);
                    sound.play();
                }
                break;
            }
    	}
    }
    else
    {
    	for (var soundName in soundList)
    	{
            var sound = soundList[soundName];
            if(sound.getDivId() === divId && !sound.isLoop()){
                $.post('https://xdiskjockey_beta/data_status', JSON.stringify({ type: "finished",id: soundName })).fail(() => {
                                                                                                                                      ShowNotification("Error while $.post. Please do not rename the resource and keep the original name or it wont work.");
                                                                                                                                  });
                $.post('https://xdiskjockey_beta/events', JSON.stringify(
                {
                    type: "onEnd",
                    id: sound.getName(),
                })).fail(() => {
                                       ShowNotification("Error while $.post. Please do not rename the resource and keep the original name or it wont work.");
                                   });
                break;
            }
        }
    }
}

function editString(string){
    var str = string;
    var res = str.split("/");
    var final = res[res.length - 1];
    final = final.replace(".mp3", " ");
    final = final.replace(".wav", " ");
    final = final.replace(".wma", " ");
    final = final.replace(".wmv", " ");

    final = final.replace(".aac", " ");
    final = final.replace(".ac3", " ");
    final = final.replace(".aif", " ");
    final = final.replace(".ogg", " ");
    final = final.replace("%20", " ");
    final = final.replace("-", " ");
    final = final.replace("_", " ");
    return final;
}