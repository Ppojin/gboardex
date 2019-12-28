var DP = {
    dateFormat: 'yy-mm-dd', //날짜 표시 형식 설정
    showOtherMonths: true, //이전 달과 다음 달 날짜를 표시
    showMonthAfterYear:true, //연도 표시 후 달 표시
    changeYear: true, //연도 선택 콤보박스
    changeMonth: true, //월 선택 콤보박스
    yearSuffix: "년", //연도 뒤에 나오는 텍스트 지정
    monthNamesShort: ['1','2','3','4','5','6','7','8','9','10','11','12'],
    monthNames: ['1월','2월','3월','4월','5월','6월','7월','8월','9월','10월','11월','12월'],
    dayNamesMin: ['일','월','화','수','목','금','토'],
    dayNames: ['일요일','월요일','화요일','수요일','목요일','금요일','토요일'],

    beforeShow: function() {
        setTimeout(function() {
            $('.ui-datepicker').css('z-index', 99999999999999);
        }, 0);
    }
};
$('#picDate').datepicker(DP);

var startDateDP = DP;
var startDate = $("#startDate");

startDateDP["beforeShow"] = function(){
    setTimeout(function() {
        $('.ui-datepicker').css('z-index', 99999999999999);
        $('.ui-state-default').attr("onClick", "dateClicked();");
    }, 0);
};
startDate.datepicker(startDateDP);