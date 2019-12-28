$('.textarea').summernote({
    height: 150
});

var fd;

$(".articleRemove").click(function(e){
    const rmi = $(this).attr("value")*1;
    let formData = new FormData();
    formData.append("removeArticleID", rmi);
    const url = window.location.pathname + "/removeArticle";
    console.log(rmi, url);
    $.ajax({
        active: false,
        cache: false,
        url: url,
        type: "POST",
        data: formData,
        acync: false,
        contentType: false,
        processData: false,
        success: function (data) {
            console.log(data);
            location.reload();
            return false;
        },
        error: function () {
            console.log("ihih");
        }
    })
});

$(".submitArticleBtn").click(function(e){
    let textarea = $("#articleTextarea");
    switch (textarea.val()) {
        case null:
        case "":
            alert("내용을 입력해 주세요");
            break;
        default:
            // const form = $("#postArticleForm")[0];
            let buttonID = $(this).attr("id");
            let form;
            let formData;
            switch(buttonID){
                case "submitArticle":
                    formData = new FormData(document.getElementById("articleForm"));
                    break;
                case "submitVote":
                    formData = new FormData(document.getElementById("voteForm"));
                    break;
                case "submitSchedule":
                    formData = new FormData(document.getElementById("scheduleForm"));
                    break;
                case "submitAlbum":
                    formData = new FormData(document.getElementById("albumForm"));
                    formData = appendAlbumForm(formData);
                    break;
                case "submitPlace":
                    formData = new FormData(form = document.getElementById("placeForm"));
                    break;
                case "submitMoney":
                    formData =  new FormData(document.getElementById("moneyForm"));
                    break;
            }
            formData.append("articleContent", textarea.val());
            fd = formData;

            $.ajax({
                active: false,
                cache: false,
                url: window.location.pathname + "/insertArticle",
                type: "POST",
                data: formData,
                acync: false,
                contentType: false,
                processData: false,
                success: function (data) {
                    console.log(data);
                    $("#modalClose").click();
                    $(".note-editable").text(null);
                    $("#articleTextarea").val(null);
                    location.reload();
                },
                error: function () {
                    console.log("ihih");
                }
            })
    }
});