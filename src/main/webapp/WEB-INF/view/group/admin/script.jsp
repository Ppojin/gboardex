<%--
  Created by IntelliJ IDEA.
  User: hwanghyojin
  Date: 2019/12/28
  Time: 3:35 오후
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%-- jQuery --%>
<script src="/plugins/jquery/jquery.min.js"></script>
<%-- jquery-ui for datepicker --%>
<%--<script src="/plugins/jquery-ui/jquery-ui.min.js"></script>--%>
<%-- Bootstrap 4 --%>
<script src="/plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
<%-- AdminLTE App --%>
<script src="/dist/js/adminlte.min.js"></script>
<%-- ./wrapper --%>
<script>
    $("#groupDeleteBtn").click(function(){
        const url = window.location.pathname + "/removeGroup";
        $.ajax({
            active: false,
            cache: false,
            url: url,
            type: "POST",
            acync: false,
            contentType: false,
            processData: false,
            success: function (data) {
                if (data === "SUCCESS"){
                    console.log(data);
                    location.reload();
                    alert("그룹이 삭제되었습니다.");
                    window.location.href = "/main";
                    return true;
                } else {
                    alert("가입된 회원이 있으면 그룹을 삭제할 수 없습니다.");
                    return false;
                }
            },
            error: function () {
            }
        })
    })
</script>
