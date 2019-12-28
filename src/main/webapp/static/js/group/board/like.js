

$(".btnLike").click(function(){
    console.log("대냥");
    const articleID = $(this).attr("value")*1;
    let formData = new FormData();
    formData.append("articleID", articleID);
    let thisClass = $(this).attr("class");
    let doAjax = true;
    if(thisClass === "btn btn-primary btn-sm btnLike"){
        $(this).attr("class", "btn btn-primary btn-sm btnLike disabled");
    } else if (thisClass === "btn btn-default btn-sm btnLike") {
        $(this).attr("class", "btn btn-default btn-sm btnLike disabled");
    } else {
        doAjax = false;
    }
    if(doAjax){
        $.ajax({
            active: false,
            cache: false,
            url: window.location.pathname + "/like",
            type: "POST",
            data: formData,
            acync: false,
            contentType: false,
            processData: false,
            success: function (data) {
                let likeCount = $(this).parent().find('.likeCount').text()*1;
                if(data === "LIKED"){
                    $(this).attr("class", "btn btn-primary btn-sm btnLike").text("liked");
                    $(this).prepend($('<i class="far fa-thumbs-up"></i>'));
                    $(this).parent().find('.likeCount').text(likeCount+1);
                    location.reload();
                } else if(data === "UNLICKED"){
                    $(this).attr("class", "btn btn-default btn-sm btnLike").text("Like");
                    $(this).prepend($('<i class="far fa-thumbs-up"></i>'));
                    $(this).parent().find('.likeCount').text(likeCount-1);
                    location.reload();
                }
            },
            error: function () {
                console.log("ihih");
            }
        })
    }
});