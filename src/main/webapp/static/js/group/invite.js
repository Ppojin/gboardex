$("#createInviteBtn").click(function(e){
    $.ajax({
        active: false,
        cache: false,
        url: window.location.pathname + "/createInviteCode",
        type: "POST",
        contentType: false,
        processData: false,
        success: function () {
            location.reload();
        },
        error: function () {
            console.log("ihih");
        }
    })
});