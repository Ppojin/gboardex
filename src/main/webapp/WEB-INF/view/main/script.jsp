<%--
  Created by IntelliJ IDEA.
  User: hyojin
  Date: 2019-12-03
  Time: 오후 5:13
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<script>
    function handleImgFileSelect(e) {
        var files = e.target.files;
        var filesArr = Array.prototype.slice.call(files);

        filesArr.forEach(function(f) {
            if(!f.type.match("image.*")) {
                alert("확장자는 이미지 확장자만 가능합니다.");
                return;
            }

            sel_file = f;

            var reader = new FileReader();
            reader.onload = function(e) {
                $("#createGroupThumbnail").attr("src", e.target.result);
            }
            reader.readAsDataURL(f);
        });
    }
</script>
<script>
    $("#groupImage").on("change", handleImgFileSelect);

    $("#inviteCodeSubmit").click(function(e){
        const formData = new FormData();
        formData.append("inviteCode", $("#inviteCodeInput").val());
        console.log(e);
        $.ajax({
            active: false,
            cache: false,
            url: "/main/inviteCodeInput",
            type: "POST",
            data: formData,
            contentType: false,
            processData: false,
            success: function (data) {
                window.location.href = "/group/"+data;
            },
            error: function () {
                console.log("ihih");
            }
        })
    })
</script>