<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!-- Navbar -->
<nav class="main-header navbar navbar-expand-md navbar-light navbar-white" style="z-index:2">
    <div class="container">
<%--        <a href="/group/${currentGroup.groupID}" class="navbar-brand">--%>
<%--            <img src="${currentGroup.groupImageURL}" alt="${currentGroup.groupID} Image" class="brand-image img-circle elevation-3"--%>
<%--                 style="opacity: .8">--%>
<%--            <span class="brand-text font-weight-light">${currentGroup.groupName}</span>--%>
<%--        </a>--%>
        <div class="collapse navbar-collapse order-3" id="navbarCollapse">
            <!-- Left navbar links -->
            <ul class="navbar-nav">
                <li class="nav-item">
                    <a href="/group/${currentGroup.groupID}" class="nav-link">
                        <span><i class="nav-icon fas fa-clipboard"></i></span>
                        <span>게시판<%--<span class="right badge badge-danger">New</span>--%></span>
                    </a>
                </li>
                <li class="nav-item">
                    <a href="/group/${currentGroup.groupID}/calendar" class="nav-link">
                        <span><i class="nav-icon far fa-calendar-alt"></i></span>
                        <span>달력<%--<span class="right badge badge-danger">New</span>--%></span>
                    </a>
                </li>
                <li class="nav-item">
                    <a href="/group/${currentGroup.groupID}/invite" class="nav-link">
                        <span><i class="nav-icon fas fa-user-friends"></i></span>
                        <span> 초대</span>
                    </a>
                </li>
            </ul>
        </div>
    </div>
</nav>
<!-- /.navbar -->