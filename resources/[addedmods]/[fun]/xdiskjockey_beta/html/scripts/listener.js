var timer = null;

var defaultCategoryName = "none";
var isInModal = false;

var App = new Vue({
    el: '#body',
    data: {
        boothDjName: "Vanilla",

        visible: "none",
        playList: [],
        displayBoxCategories: [],
        categoriesDropDown: [],

        playingMusicInModal: [],

        translation: [],

        currentPlayingQue: [],

        speakerList: [],

        fxEffectsList: [],
        soundEffectsList: [],

        keyPlayList: -1,

        timestamp: 0,

        timestampMax: 150,

        current_volume: 50,

        view_edit_category_options: false,
        selectedCategoryName: defaultCategoryName,
        pulsing_enabled: false,
        stereo_enabled: false,
        pulsing_time: 1750,
        pulsing_percentage: 35,

        fade_time: 1500,

        spatial_time: 1500,

        currentData: [],
        queCategoriesStatus: [],

        inputName: "",
        inputSrc: "",

        mixerVolume: 50,

        userVolume: 80,

        playingQue: false,

        effects: false,

        externalSoundAPI: false,
        editingKey: false,
        editingKeyIndex: 0,
    },
    methods: {
        ChangeGlobalVolume: function(){
            App.userVolume = Number(App.userVolume);
            $.post('https://xdiskjockey_beta/globalVolume', JSON.stringify({
                volume: App.userVolume,
            })).fail(() => {
                                   ShowNotification("Error while $.post. Please do not rename the resource and keep the original name or it wont work.");
                               });
        },

        PlayEffect: function(item){
            $.post('https://xdiskjockey_beta/playEffect', JSON.stringify({
                item: item,
            })).fail(() => {
                                   ShowNotification("Error while $.post. Please do not rename the resource and keep the original name or it wont work.");
                               });
        },

        MixerVolumeUpdate: function(){
            $.post('https://xdiskjockey_beta/updateVolume', JSON.stringify({
                newVolume: this.mixerVolume,
            })).fail(() => {
                                   ShowNotification("Error while $.post. Please do not rename the resource and keep the original name or it wont work.");
                               });
        },

        DeleteQueList: function(){
            $.post('https://xdiskjockey_beta/deleteQueList', JSON.stringify({})).fail(() => {
                                                                                                    ShowNotification("Error while $.post. Please do not rename the resource and keep the original name or it wont work.");
                                                                                                });
            for(var i = 0; i < App.playList.length; i ++){
                var data = App.playList[i];
                data.Que = false;
            }
        },

        PlayQueList: () => {
            App.playingQue = !App.playingQue;
            RefreshUI();

            if(App.playingQue){
                sendAlert("playing_que", "success");
            }else{
                sendAlert("stop_que", "success");
            }

            $.post('https://xdiskjockey_beta/playQue', JSON.stringify({
                playingQue: App.playingQue,
            })).fail(() => {
                                   ShowNotification("Error while $.post. Please do not rename the resource and keep the original name or it wont work.");
                               });
        },

        SkipFromQue: function(item, key, status){
            RefreshUI();

            App.currentPlayingQue = [];

            $.post('https://xdiskjockey_beta/skipQue', JSON.stringify({
                musicInfo: this.playList[key],
            })).fail(() => {
                                   ShowNotification("Error while $.post. Please do not rename the resource and keep the original name or it wont work.");
                               });
        },

        AddToQue: function(item, key, status){
            this.playList[key].Que = status;
            RefreshUI();

            if(status){
                sendAlert("music_to_que", "success");
                }else{
                sendAlert("music_remove_que", "success");
            }

            $.post('https://xdiskjockey_beta/addtoque', JSON.stringify({
                musicInfo: this.playList[key],
            })).fail(() => {
                                   ShowNotification("Error while $.post. Please do not rename the resource and keep the original name or it wont work.");
                               });
        },

        AddToPlayList: function(categoryName){
            if(App.queCategoriesStatus[categoryName] == null){
                App.queCategoriesStatus[categoryName] = false;
            }
            App.queCategoriesStatus[categoryName] = !App.queCategoriesStatus[categoryName];

            for(var i = 0; i < App.playList.length; i ++){
                var data = App.playList[i];
                if(data.Category === categoryName){
                    data.Que = App.queCategoriesStatus[categoryName];
                }
            }

            sendAlert("category_to_que", "success");
            $.post('https://xdiskjockey_beta/addtoque', JSON.stringify({
                category: categoryName,
                status: App.queCategoriesStatus[categoryName],
            })).fail(() => {
                                   ShowNotification("Error while $.post. Please do not rename the resource and keep the original name or it wont work.");
                               });
            RefreshUI();
        },

        CreateNewMusic: function(){
            if(DoesNameExistsOnList(App.inputName)){
                this.Close();
                return;
            }

            GetDataFromURL(this.inputSrc, function(name, time, exists){
                if(exists){
                    var categoryName = $("#createnewmusiccategory").val();
                    if(App.displayBoxCategories[categoryName] == null){
                        App.displayBoxCategories[categoryName] = true;
                        App.displayBoxCategories.push({
                            name: categoryName,
                        });
                    }

                    $.post('https://xdiskjockey_beta/createMusic', JSON.stringify({
                        inputName: App.inputName,
                        inputSrc: App.inputSrc,
                        category: categoryName,
                        name: name,
                        time: time,
                    })).fail(() => {
                                           ShowNotification("Error while $.post. Please do not rename the resource and keep the original name or it wont work.");
                                       });
                    for(var i = 0; i < App.playList.length; i ++){
                        var data = App.playList[i];
                        if(DoesUrlExistsOnList(App.inputSrc)){
                            data.Background = "#bbbbbb";
                        }
                    }

                    App.playList.push({
                        Visible: true,
                        Active: true,
                        Loop: false,
                        Name: App.inputName,
                        Volume: 0.5,
                        URL: App.inputSrc,
                        Category: categoryName,
                        Background: "white",
                    });
                    sendAlert("added_music", "success");
                    RefreshUI();
                }else{
                    sendAlert("music_doest_exists", "danger");
                }
            })
            this.Close();
        },

        ChangePage: function(page){
            $('[data-toggle="tooltip"]').tooltip("dispose");
            this.visible = page;
            this.$nextTick(function () {
                $('[data-toggle="tooltip"]').tooltip()
            })
        },

        StopAllMusic: function(){
            $.post('https://xdiskjockey_beta/stopAllMusic').fail(() => {
                                                                               ShowNotification("Error while $.post. Please do not rename the resource and keep the original name or it wont work.");
                                                                           });
            App.playList = [];
            App.currentPlayingQue = [];
            sendAlert("stop_all_music", "success");
            RefreshUI();
        },

        IsYoutubeMusic: function(url){
            var videoId = null;
            if( url.indexOf("youtube") !== -1 ){
                var urlParts = url.split("?v=");
                videoId = urlParts[1].substring(0,11);
            }

            if( url.indexOf("youtu.be") !== -1 ){
                var urlParts = url.replace("//", "").split("/");
                videoId = urlParts[1].substring(0,11);
            }
            return videoId != null;
        },

        AddNewMusicModal: function(){
            this.inputName = "";
            this.inputSrc = "";

            showModal("#addSong",{
                backdrop: 'static',
                keyboard: false
            });

            RefreshToolTip();
        },

        CreateNewCategory: function(){
            var result = $("#category_music").val();
            if(result === "false"){
                result = null;
            }

            if(DoesCategoryExistsWithName($("#category_input_name").val())){
                sendAlert("already_exists_category", "danger");
                return;
            }

            $.post('https://xdiskjockey_beta/sendActionCategory', JSON.stringify({
                type: "create",
                selectedCategory: result,
                inputCategory: $("#category_input_name").val()
            })).fail(() => {
                                   ShowNotification("Error while $.post. Please do not rename the resource and keep the original name or it wont work.");
                               });

            sendAlert("category_created", "success");
            this.Close();
        },

        EditCategory: function(){
            $.post('https://xdiskjockey_beta/sendActionCategory', JSON.stringify({
                type: "edit",
                selectedCategory: App.selectedCategoryName,
                inputCategory: $("#category_input_name").val()
            })).fail(() => {
                                   ShowNotification("Error while $.post. Please do not rename the resource and keep the original name or it wont work.");
                               });

            sendAlert("category_edited", "success");
            this.Close();
        },

        DeleteCategoryModal: function(){
            this.Close();

            showModal("#remove_category",{
                backdrop: 'static',
                keyboard: false
            });
        },

        DeleteCategoryFinal: function(){
            $.post('https://xdiskjockey_beta/sendActionCategory', JSON.stringify({
                type: "remove",
                selectedCategory: App.selectedCategoryName,
                inputCategory: $("#category_input_name").val()
            })).fail(() => {
                                   ShowNotification("Error while $.post. Please do not rename the resource and keep the original name or it wont work.");
                               });

            sendAlert("category_deleted", "success");

            this.Close();
        },

        EnableStereoSound: function(){
            this.stereo_enabled = $("#spatial_audio").is(":checked");
            $.post('https://xdiskjockey_beta/stereoMusic', JSON.stringify({
                enabled: this.stereo_enabled,
                musicInfo: this.playList[this.keyPlayList],
                time: this.spatial_time,
            })).fail(() => {
                                   ShowNotification("Error while $.post. Please do not rename the resource and keep the original name or it wont work.");
                               });
        },

        changeGalaxyEffect: function(effectName){
            $.post('https://xdiskjockey_beta/effectName', JSON.stringify({
                effectName: effectName,
                status: $("#" + effectName).val(),
                isList: true,
            })).fail(() => {
                                   ShowNotification("Error while $.post. Please do not rename the resource and keep the original name or it wont work.");
                               });
        },

        EnableEffect: function(test, effectName){
            $.post('https://xdiskjockey_beta/effectName', JSON.stringify({
                effectName: effectName,
                status: $("#" + test.target.id).is(":checked"),
            })).fail(() => {
                                   ShowNotification("Error while $.post. Please do not rename the resource and keep the original name or it wont work.");
                               });
        },

        ChangeCurrentMusicVolume: function(){
            var data = this.playList[this.keyPlayList];
            data.Volume = this.current_volume / 100;

            $.post('https://xdiskjockey_beta/specificvolume', JSON.stringify({
                musicInfo: data,
                current_volume: this.current_volume,
            })).fail(() => {
                                   ShowNotification("Error while $.post. Please do not rename the resource and keep the original name or it wont work.");
                               });
        },

        EnablePulsing: function(){
            this.pulsing_enabled = $("#pulsing_enabled").is(":checked");
            $.post('https://xdiskjockey_beta/pulseMusic', JSON.stringify({
                enabled: this.pulsing_enabled,
                musicInfo: this.playList[this.keyPlayList],
                time: this.pulsing_time,
                percentage: this.pulsing_percentage,
            })).fail(() => {
                                   ShowNotification("Error while $.post. Please do not rename the resource and keep the original name or it wont work.");
                               });
        },

        FadeType: function(type){
            $.post('https://xdiskjockey_beta/fadeAction', JSON.stringify({
                type: type,
                musicInfo: this.playList[this.keyPlayList],
                time: this.fade_time,
                volume: this.mixerVolume,
            })).fail(() => {
                                   ShowNotification("Error while $.post. Please do not rename the resource and keep the original name or it wont work.");
                               });
        },

        ShufflePlayList: function(){
            $.post('https://xdiskjockey_beta/ShufflePlayList').fail(() => {
                                                                                  ShowNotification("Error while $.post. Please do not rename the resource and keep the original name or it wont work.");
                                                                              });
        },

        ActionCategoryModal: function(status, categoryName){
            if(categoryName){
                App.selectedCategoryName = categoryName;
            }
            App.view_edit_category_options = status;

            showModal("#actionCategory",{
                backdrop: 'static',
                keyboard: false
            });
            RefreshToolTip();
        },

        ShowFXEffects: function(){

            showModal("#fx_effects", {
                backdrop: 'static',
                keyboard: false
            });
            RefreshToolTip();
        },

        Close: function(sendCloseNui){
            $("#addSong").modal("hide");
            $("#remove_music").modal("hide");
            $("#edit_music").modal("hide");
            $("#advanced_music").modal("hide");
            $("#actionCategory").modal("hide");
            $("#fx_effects").modal("hide");
            $("#remove_category").modal("hide");
            $("#volumeManager").modal("hide");
            $("#musicPlaying").modal("hide");

            isInModal = false;

            if(timer){
                clearInterval(timer);
                timer = null;
            }
            if(sendCloseNui){
                $.post('https://xdiskjockey_beta/exit').fail(() => {
                                                                           ShowNotification("Error while $.post. Please do not rename the resource and keep the original name or it wont work.");
                                                                       });
            }
            App.playingMusicInModal = [];
        },

        EditKeyBind: function(item, key){
            App.editingKey = true;
            App.editingKeyIndex = key;

            sendAlert("editing_key", "success");
        },

        PlayMusic: function(item, key){
            this.playList[key].Active = false;
            $.post('https://xdiskjockey_beta/sendMusicPlayStatus', JSON.stringify({
                musicInfo: this.playList[key],
            })).fail(() => {
                                   ShowNotification("Error while $.post. Please do not rename the resource and keep the original name or it wont work.");
                               });
        },

        StopMusic: function(item, key){
            this.playList[key].Active = true;
            $.post('https://xdiskjockey_beta/sendMusicPlayStatus', JSON.stringify({
                musicInfo: this.playList[key],
            })).fail(() => {
                                   ShowNotification("Error while $.post. Please do not rename the resource and keep the original name or it wont work.");
                               });
        },

        StartLoopMusic:  function(item, key){
            this.playList[key].Loop = true;
            $.post('https://xdiskjockey_beta/loopMusic', JSON.stringify({
                musicInfo: this.playList[key],
            })).fail(() => {
                                   ShowNotification("Error while $.post. Please do not rename the resource and keep the original name or it wont work.");
                               });
        },

        StopLoopMusic:  function(item, key){
            this.playList[key].Loop = false;
            $.post('https://xdiskjockey_beta/loopMusic', JSON.stringify({
                musicInfo: this.playList[key],
            })).fail(() => {
                                   ShowNotification("Error while $.post. Please do not rename the resource and keep the original name or it wont work.");
                               });
        },

	    timeStampInputChanged: function(){
            $.post("https://xdiskjockey_beta/changeTimeStamp", JSON.stringify({
                musicInfo: this.playList[this.keyPlayList],
                newTime: this.timestamp,
            })).fail(() => {
                                   ShowNotification("Error while $.post. Please do not rename the resource and keep the original name or it wont work.");
                               });
	    },

        AdvancedModal: function(item, key){
            let data = this.playList[key];

            this.keyPlayList = key;
            this.currentData = item;

            this.current_volume = data.Volume * 100;

            this.timestampMax = data.time;

            if(data.stereoInfo){
                this.stereo_enabled = true;
                this.spatial_time = data.stereoInfo.time;
            }else{
                this.stereo_enabled = false;
                this.spatial_time = 1500;
            }

            if(data.pulseInfo){

                this.pulsing_enabled = true;
                this.pulsing_percentage = data.pulseInfo.percentage;
                this.pulsing_time = data.pulseInfo.time;
            }else{

                this.pulsing_enabled = false;
                this.pulsing_percentage = 35;
                this.pulsing_time = 1500;
            }

            $.post('https://xdiskjockey_beta/requestTimeStamp', JSON.stringify({
                musicInfo: this.playList[key],
            })).fail(() => {
                                   ShowNotification("Error while $.post. Please do not rename the resource and keep the original name or it wont work.");
                               });

            showModal("#advanced_music",{
                backdrop: 'static',
                keyboard: false
            });
            RefreshToolTip();
        },

        RemoveMusic: function(){
            var data = this.playList[this.keyPlayList];
            data.Visible = false;
            this.Close();

            sendAlert("removed_music", "success");

            $.post('https://xdiskjockey_beta/deleteMusic', JSON.stringify({
                modalData: data,
            })).fail(() => {
                                   ShowNotification("Error while $.post. Please do not rename the resource and keep the original name or it wont work.");
                               });
        },

        RemoveModalMusic: function(item, key){
            this.keyPlayList = key;

            showModal("#remove_music",{
                backdrop: 'static',
                keyboard: false
            });
            RefreshToolTip();
        },

        GoBack: function(){
            if(this.visible === "que"){
                App.ChangePage("playlist");
                return;
            }

            App.ChangePage("mixer");
        },

        EditMusic: function(){
            var URL = this.inputSrc;
            var Name = this.inputName;
            var ID = this.keyPlayList;

            if(DoesNameExistsOnList(Name) && Name !== App.playList[ID].Name){
                this.Close();
                return;
            }

            GetDataFromURL(URL, function(name, time, exists){
                if(exists){
                    $.post('https://xdiskjockey_beta/editMusic', JSON.stringify({
                        NewName: App.inputName,
                        NewURL: App.inputSrc,
                        OldName: App.playList[ID].Name,
                        OldURL: App.playList[ID].URL,

                        category: $("#category_music_edit").val(),

                        RealName: name,
                        time: time,
                    })).fail(() => {
                                           ShowNotification("Error while $.post. Please do not rename the resource and keep the original name or it wont work.");
                                       });

                    for(var i = 0; i < App.playList.length; i ++){
                        var data = App.playList[i];
                        if(DoesUrlExistsOnList(App.inputSrc)){
                            data.Background = "#bbbbbb";
                        }
                    }

                    App.playList[ID].Name = Name;
                    App.playList[ID].URL = URL;
                    sendAlert("edited_music", "success");
                }else{
                    sendAlert("music_doest_exists", "danger");
                }
            })
            this.Close();
        },

        EditModalMusic: function(item, key){
            this.keyPlayList = key;
            this.currentData = item;
            this.inputSrc = item.URL;
            this.inputName = item.Name;

            showModal("#edit_music",{
                backdrop: 'static',
                keyboard: false
            });
            RefreshToolTip();
        },
    },
});

function showModal(id, table){
    $(id).modal(table);
    isInModal = true;
}

function RefreshToolTip(){
    $('[data-toggle="tooltip"]').tooltip("dispose");
    $('[data-toggle="tooltip"]').tooltip();
}

function RefreshUI(){
    RefreshToolTip();
    var last = App.visible;

    App.visible = "none";
    App.$nextTick(function () {
        App.visible = last;
        App.$nextTick(function () {
            $('[data-toggle="tooltip"]').tooltip();
        })
    })
}

function IsAnyMusicActive(){
    if(App.currentPlayingQue.length != 0){
        return true;
    }

    for(var i = 0; i < App.playList.length; i ++){
        var data = App.playList[i];
        if(data.Active == false){
            return true;
        }
    }
    return false;
}

function DoesUrlExistsOnList(name){
    for(var i = 0; i < App.playList.length; i ++){
        var data = App.playList[i];
        if(data.URL === name){
            return true;
        }
    }
    return false;
}

function DoesNameExistsOnList(name){
    for(var i = 0; i < App.playList.length; i ++){
        var data = App.playList[i];
        if(data.Name === name){
            return true;
        }
    }
    return false;
}

function DoesCategoryExistsWithName(categoryName){
    if(categoryName.toLowerCase() === defaultCategoryName.toLowerCase()){
        return true;
    }

    if(App.categoriesDropDown == null){
        return false;
    }

    for(var i = 0; i < App.categoriesDropDown.length; i ++){
        if(App.categoriesDropDown[i].name === categoryName){
            return true;
        }
    }
    return false;
}

function fancyTimeFormat(duration) {
  const hrs = ~~(duration / 3600);
  const mins = ~~((duration % 3600) / 60);
  const secs = ~~duration % 60;

  let ret = "";

  if (hrs > 0) {
    ret += "" + hrs + ":" + (mins < 10 ? "0" : "");
  }

  ret += "" + mins + ":" + (secs < 10 ? "0" : "");
  ret += "" + secs;
  return ret;
}

$(function () {
//    App.speakerList.push({
//        Id: 1,
//        Volume: 0.75,
//    });

    window.addEventListener('message', function (event) {
        var item = event.data;

        if(item.type === "volume"){
            App.userVolume = item.userVolume;
        }

        if(item.type === "fxsounds"){
            App.soundEffectsList = item.SoundsEffects;
        }

        if (item.type === "ui") {
            App.playList = [];
            App.effects = item.effects;
            App.ChangePage(item.visible);
        }

        if(item.type === "queueCurrent"){
            App.currentPlayingQue = item.currentPlayingQue;
            RefreshUI();
        }

        if(item.type === "translation"){
            App.translation = item.translation;
        }

        if(item.type === "fx_effects"){
            App.fxEffectsList = item.list;
        }

        if(item.type === "soundAPI"){
            App.externalSoundAPI = item.custom;
        }

        if(item.type === "hideAllQue"){
            for(var i = 0; i < App.playList.length; i ++){
                var data = App.playList[i];
                if(data.Que){
                    data.Active = true;
                }
            }
            RefreshUI();
        }

        if(item.type === "updateStatusMusic"){
            for(var i = 0; i < App.playList.length; i ++){
                var data = App.playList[i];
                if(data.Name === item.name && data.URL === item.url){
                    if(item.actionType === "playButton"){
                        data.Active = item.active;
                    }
                    if(item.actionType === "loopButton"){
                        data.Loop = item.active;
                    }
                    break;
                }
            }
        }

        if(item.type === "requestTimeStamp"){
            timer = setInterval(function(){
                App.timestamp ++;
                if(App.timestamp >= App.timestampMax){
                    App.timestamp = App.timestampMax;
                }
            }, 1000);
            App.timestamp = item.timeStamp;
        }

        if(item.type === "quePlaying"){
            App.playingQue = item.status;
        }

        if (item.type === "booth_name") {
            App.boothDjName = item.name;
        }

        if(item.type === "volumeManager"){
            showModal("#volumeManager", {
                backdrop: 'static',
                keyboard: false
            })
        }

        if(item.type === "mixermusic"){
            App.playingMusicInModal = item.sounds;
            showModal("#musicPlaying",{
                backdrop: 'static',
                keyboard: false
            });
        }

        if (item.type === "playlist") {
            App.playList = [];
            App.displayBoxCategories = [];

            App.mixerVolume = item.volume;

            for(var i = 0; i < item.playList.length; i ++){
                var data = item.playList[i];
                if(App.displayBoxCategories[data.Category] == null){
                    App.displayBoxCategories[data.Category] = true;
                    App.displayBoxCategories.push({
                        name: data.Category,
                    });
                }
            }

            App.categoriesDropDown = [];
            App.categoriesDropDown = item.categoriesDropDown;

            App.playList = item.playList;

            RefreshUI();
        }
    })
});

$(function () {
     $.post('https://xdiskjockey_beta/init').fail(() => {
                                                                ShowNotification("Error while $.post. Please do not rename the resource and keep the original name or it wont work.");
                                                            });

    window.addEventListener('message', function (event) {
        var item = event.data;
        if (item.type === "notify") {
            $.notify({
                // options
                message: item.msg,
            }, {
                // settings
                placement: { from: "bottom", align: "right" },
                type: item.style,
                showProgressbar: true,
                newest_on_top: true,
                animate: {
                    enter: "animated bounceInRight",
                    exit: "animated bounceOutRight",
                }
            });
        }
    })
});

function ShowNotification(msg, style){
    $.notify({
        // options
        message: msg,
    }, {
        // settings
        placement: { from: "bottom", align: "right" },
        type: style ?? "danger",
        showProgressbar: true,
        newest_on_top: true,
        animate: {
            enter: "animated bounceInRight",
            exit: "animated bounceOutRight",
        }
    });
}

function sendAlert(msg, style) {
    $.post('https://xdiskjockey_beta/notify', JSON.stringify({
        msg: msg,
        style: style,
    })).fail(() => {
                           ShowNotification("Error while $.post. Please do not rename the resource and keep the original name or it wont work.");
                       });
}

$(document).keyup(function (e) {
    if (e.key === "Escape" && App.editingKey == false) {
        if(App.visible !== "none"){
            if(App.visible === "mixer"){
                App.ChangePage("none");
                $.post('https://xdiskjockey_beta/exit').fail(() => {
                                                                           ShowNotification("Error while $.post. Please do not rename the resource and keep the original name or it wont work.");
                                                                       });
                App.Close();
            }else{
                if(App.visible === "que"){
                    App.ChangePage("playlist");
                    App.Close();
                    return;
                }

                App.ChangePage("mixer");
                App.Close();
            }
        }
    }
});

function IsKeyAlreadyTaken(keyCode){
    for(var i = 0; i < App.soundEffectsList.length; i ++){
        var data = App.soundEffectsList[i];
        if(keyCode == data.keyBind){
            return true;
        }
    }
    return false;
}

$("body").on("keydown", function(event) {
    if(isInModal){
        return;
    }

    if(event.keyCode == 8 || event.keyCode == 27){
        if(App.editingKey){
            App.editingKey = false;
            RefreshUI();
            sendAlert("edit_key_exit", "success");
            return;
        }
    }

    if(App.editingKey){
        if(IsKeyAlreadyTaken(event.keyCode)){
            sendAlert("editing_key_taken", "danger");
        }else{
            var data = App.soundEffectsList[App.editingKeyIndex];
            data.keyBind = event.keyCode;

            App.editingKey = false;
            RefreshUI();

            $.post('https://xdiskjockey_beta/editedKey', JSON.stringify({
                key: event.keyCode,
                name: data.Name,
                url: data.URL,
            })).fail(() => {
                                   ShowNotification("Error while $.post. Please do not rename the resource and keep the original name or it wont work.");
                               });
            sendAlert("key_edited", "success");
        }
    }else{
        for(var i = 0; i < App.soundEffectsList.length; i ++){
            var data = App.soundEffectsList[i];
            if(event.keyCode == data.keyBind){
                $.post('https://xdiskjockey_beta/playEffect', JSON.stringify({
                    item: data,
                })).fail(() => {
                                       ShowNotification("Error while $.post. Please do not rename the resource and keep the original name or it wont work.");
                                   });
                return;
            }
        }
    }
});