<%--
  Created by IntelliJ IDEA.
  User: hyojin
  Date: 2019-12-09
  Time: 오후 4:07
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%-- REQUIRED SCRIPTS --%>

<%-- jQuery --%>
<script src="/plugins/jquery/jquery.min.js"></script>
<%-- Bootstrap --%>
<script src="/plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
<%-- jQuery UI --%>
<script src="/plugins/jquery-ui/jquery-ui.min.js"></script>
<%-- AdminLTE App --%>
<script src="/dist/js/adminlte.min.js"></script>
<%--&lt;%&ndash; AdminLTE for demo purposes &ndash;%&gt;--%>
<%--<script src="/dist/js/demo.js"></script>--%>
<%-- fullCalendar 2.2.5 --%>
<script src="/plugins/moment/moment.min.js"></script>
<script src="/plugins/fullcalendar/main.min.js"></script>
<script src="/plugins/fullcalendar-daygrid/main.min.js"></script>
<script src="/plugins/fullcalendar-timegrid/main.min.js"></script>
<script src="/plugins/fullcalendar-interaction/main.min.js"></script>
<script src="/plugins/fullcalendar-bootstrap/main.min.js"></script>
<%-- Page specific script --%>
<script src="/static/js/group/calendar.js"></script>
<script>$(function(){calendarOnLoad('${currentGroup.groupName}')});</script>