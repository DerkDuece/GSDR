    // Wait to receive message from client script
window.addEventListener("message", function(event) {
    if (event.data.PayloadType == "PlayTone") {
        $("#gauge").css('display', "none");
        var pager = null;
        pager = new Audio("./sounds/" + event.data.Payload + ".mp3");
        pager.volume = 1.0;
        pager.play();

    } else if (event.data.PayloadType == "PlaySiren") {
        if (!FireSirens[event.data.Payload[0]]) {
            FireSirens[event.data.Payload[0]] = new Audio("./sounds/" + event.data.Payload[2] + ".mp3");
            // Set volume to 0 assuming it will be updated in the next few frames
            FireSirens[event.data.Payload[0]].volume = 0.0;
            FireSirens[event.data.Payload[0]].play();
            FireSirens[event.data.Payload[0]].addEventListener("ended",function(){
                // Send call back to remove siren
                $.post("http://Firestations/RemoveSiren", JSON.stringify({
                    Name: event.data.Payload[0],
                    ID: event.data.Payload[1]
                }));
                FireSirens[event.data.Payload[0]] = null;
            });
        }
    } else if (event.data.PayloadType == "SetSirenVolume") {
        if (FireSirens[event.data.Payload[0]]) {
            FireSirens[event.data.Payload[0]].volume = event.data.Payload[1];
        }
    } else if (event.data.type == "show") {
        $("#gauge").css('display', "block");
        } else if (event.data.type == "hide") {
            $("#gauge").css('display', "none");
        } else if (event.data.type == "set") {
            $("#gauge").attr("data-value", parseFloat(event.data.value));
        } else if (event.data.type = "set-show") {
            $("#gauge").css('display', "block");
            $("#gauge").attr("data-value", parseFloat(event.data.value));
        }
});
var FireSirens = [];