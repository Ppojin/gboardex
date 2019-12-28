var Calendar = FullCalendar.Calendar;
var calendarOnLoad = function(groupName){
    /* initialize the external events
     -----------------------------------------------------------------*/
    function ini_events(ele) {
        ele.each(function () {

            // create an Event Object (http://arshaw.com/fullcalendar/docs/event_data/Event_Object/)
            // it doesn't need to have a start or end
            var eventObject = {
                title: $.trim($(this).text()) // use the element's text as the event title
            };

            // store the Event Object in the DOM element so we can get to it later
            $(this).data('eventObject', eventObject);

            // make the event draggable using jQuery UI
            $(this).draggable({
                zIndex        : 1070,
                revert        : true, // will cause the event to go back to its
                revertDuration: 0  //  original position after the drag
            })

        })
    }

    ini_events($('#external-events div.external-event'));

    /* initialize the calendar
     -----------------------------------------------------------------*/
    //Date for the calendar events (dummy data)
    var date = new Date();
    var d    = date.getDate(),
        m    = date.getMonth(),
        y    = date.getFullYear();

    var calendarEl = document.getElementById('calendar');

    var events;

    $.ajax({
        active: false,
        cache: false,
        url: window.location.pathname + "/listAllSchedule",
        type: "POST",
        form: new FormData(),
        contentType: false,
        processData: false,
        success: function (data) {
            // console.log(data);
            var calendar = new Calendar(calendarEl, {
                height    : 'auto',
                plugins: [ 'bootstrap', 'interaction', 'dayGrid' ],
                header    : {
                    left  : 'today',
                    center: groupName+' 일정',
                    right : 'prev,next'
                },
                events    : data,
                editable  : false,
                droppable : false,
            });
            calendar.render();
        },error : function(jqXHR, textStatus, errorThrown){
            console.log(jqXHR);
            console.log(textStatus);
            console.log(errorThrown);
        }
    })
};