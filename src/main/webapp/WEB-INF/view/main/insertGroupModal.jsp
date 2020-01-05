<%--
  Created by IntelliJ IDEA.
  User: hyojin
  Date: 2019-11-24
  Time: 오후 3:46
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!-- Modal -->
<div class="modal fade" id="createGroup" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLabel">그룹 생성</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <!-- 본문 -->
<%--                <script>--%>
<%--                    function check() {--%>
<%--                        var cgf = CreateGroupForm;--%>
<%--                        if (CreateGroupForm.groupName.value == "") {--%>
<%--                            alert("값을 입력해 주세요.");--%>
<%--                            CreateGroupForm.id.focus();--%>
<%--                            return false;--%>
<%--                        } else if (CreateGroupForm.groupMainPic.value == "") {--%>
<%--                            alert("사진을 등록해 주세요.");--%>
<%--                            CreateGroupForm.pw.focus();--%>
<%--                            return false;--%>
<%--                        } else return true;--%>
<%--                    }--%>
<%--                </script>--%>
<%--                <form id="cg_form" onsubmit="return check()" action="${path}/main/createGroupPost">--%>
                <form id="cg_form" onsubmit="return check()" action="${path}/main/createGroupPost" method="post" enctype="multipart/form-data">
                    <!-- 그룹명 -->
                    <div class="form-group">
                        <label>그룹 이름</label>
                        <div class="input-group input-group-sm">
                            <div class="input-group-prepend">
                                <span class="input-group-text">@</span>
                            </div>
                            <input name="groupName" id="cg_name" type="text" class="form-control">
                            <span class="input-group-append">
                                <button type="button" class="btn btn-info btn-flat">중복확인</button>
                            </span>
                        </div>
                    </div>
                    <!-- ./그룹명 -->
<%--                    <!-- 그룹url -->--%>
<%--                    <div class="form-group">--%>
<%--                        <label>그룹 URL</label>--%>
<%--                        <div class="input-group input-group-sm">--%>
<%--                            <div class="input-group-prepend">--%>
<%--                                <span class="input-group-text">/</span>--%>
<%--                            </div>--%>
<%--                            <input name="groupURL" id="cg_url" type="text" class="form-control">--%>
<%--                            <span class="input-group-append">--%>
<%--                                <button type="button" class="btn btn-info btn-flat">중복확인</button>--%>
<%--                            </span>--%>
<%--                        </div>--%>
<%--                    </div>--%>
                    <!-- ./그룹url -->
                    <!-- 그룹 요약 -->
                    <div class="form-group pb-1">
                        <label>요약</label>
                        <textarea name="groupSummary" id="cg_summary" class="form-control" rows="3" placeholder="그룹에 대한 설명을 적어주세요..."></textarea>
                    </div>
                    <!-- ./그룹 요약 -->
                    <!-- 그룹 색상 -->
                    <div class="form-group">
                        <label>그룹 아이콘 색상을 선택해 주세요</label>
                        <div class="btn-group btn-group-toggle w-100" data-toggle="buttons" style="height: 25px;">
                            <label class="btn bg-navy">
                                <input type="radio" name="groupColor" id="color0" value="0" autocomplete="off">
                            </label>
                            <label class="btn bg-indigo">
                                <input type="radio" name="groupColor" id="color1" value="1" autocomplete="off">
                            </label>
                            <label class="btn bg-primary active">
                                <input type="radio" name="groupColor" id="color2" value="2" autocomplete="off">
                            </label>
                            <label class="btn bg-olive">
                                <input type="radio" name="groupColor" id="color3" value="3" autocomplete="off">
                            </label>
                            <label class="btn bg-lime">
                                <input type="radio" name="groupColor" id="color4" value="4" autocomplete="off">
                            </label>
                            <label class="btn bg-warning">
                                <input type="radio" name="groupColor" id="color5" value="5" autocomplete="off">
                            </label>
                            <label class="btn bg-danger">
                                <input type="radio" name="groupColor" id="color6" value="6" autocomplete="off">
                            </label>
                            <label class="btn bg-light">
                                <input type="radio" name="groupColor" id="color7" value="7" autocomplete="off">
                            </label>
                            <label class="btn bg-gray">
                                <input type="radio" name="groupColor" id="color8" value="8" autocomplete="off">
                            </label>
                            <label class="btn bg-black">
                                <input type="radio" name="groupColor" id="color9" value="9" autocomplete="off">
                            </label>
                        </div>
                    </div>
                    <!-- ./그룹 색상 -->
                    <!-- 그룹 사진 -->
                    <div class="form-group">
                        <div class="col-12">
                            <label for="groupImage">File input</label>
                        </div>
                        <div class="col-xs pb-1">
                            <img class="img-thumbnail" id="createGroupThumbnail" style="height: 100px; width: 100px;"/>
                        </div>
                        <input name="groupMainPic" class="form-control-file" type="file" id="groupImage" accept=".gif, .jpg, .png">
                    </div>
                    <!-- ./그룹 사진 -->
                    <div>
                        <button type="button" class="btn btn-secondary" data-dismiss="modal">취소</button>
                        <button type="submit" class="btn btn-primary">생성</button>
                    </div>
                </form>
                <!-- /.본문 -->
            </div>
        </div>
    </div>
</div>