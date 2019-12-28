$(".inputReplyForm input[type=text]").keypress(function(e) {
    if (e.keyCode === 13){
        var formData = new FormData($(this).parent().parent()[0]);

        $.ajax({
            active: false,
            cache: false,
            url: window.location.pathname + "/insertReply",
            type: "POST",
            data: formData,
            contentType: false,
            processData: false,
            success: function (data) {
                console.log(data);
                location.reload();
            },
            error: function () {
                console.log("==failed==");
            }
        });
    }
});

$(".replyReplyBtn").click(function(e){
    $(".inputReplyReplyForm").css("display", "none");
    $("#replyForm-"+$(this).attr("id")).css("display", "block");
});
