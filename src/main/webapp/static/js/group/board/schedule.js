function dateClicked(){
    setTimeout(function(){
        let startDate = $("#startDate");
        let endDate = $("#endDate");
        var endDateDP = DP;
        endDateDP["beforeShow"] = function(){
            setTimeout(function() {
                $('.ui-datepicker').css('z-index', 99999999999999);
            }, 0);
        };
        endDate.val(startDate.val());
        endDate.attr("disabled", false);
        endDate.datepicker(endDateDP);
        endDate.datepicker('option', 'minDate', new Date(startDate.val()));
    }, 0)
}

$("#setEndDate").change(function(){
    if($("#setEndDate").is(":checked")){
        $("#endDatePickerDiv").css("display", "block");
        $("#labelStartDate").text("일정 시작일");
    }else{
        $("#endDatePickerDiv").css("display", "none");
        $("#labelStartDate").text("일정");
    }
});
