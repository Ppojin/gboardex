
$("#appendItemButton").click(function(e){
    var len = $(".voteItemRow").length + 1;
    len = (len < 10) ? "0"+len : len;
    if (len < 99) {
        $("#voteItems").append($(""+
        "<div class='voteItemRow input-group col-12 mb-3'>"+
        "    <input id='vote" + len + "' name='voteItem' type='text' class='form-control' placeholder='항목 " + len + "'>"+
        "    <span class='input-group-append'>"+
        "        <button id='removeVote" + len + "' type='button' class='btn btn-outline-danger remove_vote'>"+
        "            <i class='far fa-minus-square'></i>"+
        "        </button>"+
        "    </span>"+
        "</div>"
            ))
    } else {
        alert("너무 많은 항목을 추가하셨습니다.");
    }
});

$(".voteButton").click(function(e) {
    let id = $(this).val();
    let form = $("#voteForm"+id)[0]
    let formData = new FormData(form);

    $.ajax({
        active: false,
        cache: false,
        url: window.location.pathname + "/insertVote",
        type: "POST",
        data: formData,
        contentType: false,
        processData: false,
        success: function () {
            let list = formData.getAll("voteItemIDList");
            let target = $("#voteForm"+id);
            let count = list.length;
            target.parent().find(".voteButton").remove();

            target.find(".custom-control").each(function(index, item){
                let progressBar = $(item).find(".progress-bar");
                let input = $(item).find(".custom-control-input");
                let max = progressBar.attr("aria-valuemax")*1;
                let now = progressBar.attr("aria-valuenow")*1;

                progressBar.attr("aria-valuemax", max+count);
                $(item).find(".allSum").text(max+count);

                input.attr("disabled", true);

                if(input.is(":checked") === true){
                    now += 1;
                    progressBar.attr("aria-valuemax", now);
                    $(item).find(".thisSum").text(now);
                }
                let percent = (now / (max+count))*100;
                percent *= 1;
                progressBar.css("width", percent+"%");
                $(this).find(".votePercent").text((percent.toFixed(2)));
            })
        },
        error: function () {
            console.log("==failed==");
        }
    })
});

$(document).on('click','.remove_vote',function(e){
    $(this).parent().parent().remove();
    var voteItem = $("#voteItems").children().first();
    let len = $(".voteItemRow").length;
    for (var i=1 ; i<len + 1 ; i++){
        var num = (i < 10) ? "0"+i : i;
        voteItem.find("input").attr("id", "vote"+num);
        voteItem.find("input").attr("placeholder", "항목 "+num);
        if(i > 0){
            voteItem.find("button").attr("id", "removeVote"+num);
        }
        voteItem = voteItem.next();
    }
});