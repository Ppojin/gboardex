<%--
  Created by IntelliJ IDEA.
  User: hwanghyojin
  Date: 2019/12/26
  Time: 4:45 오후
  To change this template use File | Settings | File Templates.
--%>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<nav class="main-header navbar navbar-expand-md navbar-light navbar-white">
    <div class="container">
        <a href="/main" class="navbar-brand">
            <img src="../../dist/img/AdminLTELogo.png" alt="AdminLTE Logo" class="brand-image img-circle elevation-3"
                 style="opacity: .8">
            <span class="brand-text font-weight-light">H201503251</span>
        </a>
        <!-- SEARCH FORM -->
        <form class="form-inline ml-0 ml-md-3">
            <div class="input-group input-group-sm">
                <input class="form-control form-control-navbar" type="search" placeholder="Search" aria-label="Search">
                <div class="input-group-append">
                    <button class="btn btn-navbar" type="submit">
                        <i class="fas fa-search"></i>
                    </button>
                </div>
            </div>
        </form>
        <%-- 로그인 정보 --%>
        <ul class="order-1 order-md-3 navbar-nav navbar-no-expand ml-auto" style="z-index:2">
            <li class="nav-item dropdown user-menu">
                <a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown" aria-expanded="true">
                    <img src="https://www.gravatar.com/avatar/${login.userGravatar}?d=identicon&amp;f=y" class="user-image img-circle elevation-2" alt="User Image">
                    <span class="d-none d-md-inline">${login.userName}</span>
                </a>
                <ul class="dropdown-menu dropdown-menu-lg dropdown-menu-right">
                    <!-- User image -->
                    <li class="user-header bg-primary">
                        <img src="https://www.gravatar.com/avatar/${login.userGravatar}?d=identicon&amp;f=y" class="img-circle elevation-2" alt="User Image">

                        <p>
                            ${login.userName}
                            <%--                        <small>Member since Nov. 2012</small>--%>
                        </p>
                    </li>
                    <!-- Menu Body -->
<%--                    <li class="user-body">--%>
<%--                        <div class="row">--%>
<%--                            <div class="col-4 text-center">--%>
<%--                                <a href="#">Followers</a>--%>
<%--                            </div>--%>
<%--                            <div class="col-4 text-center">--%>
<%--                                <a href="#">Sales</a>--%>
<%--                            </div>--%>
<%--                            <div class="col-4 text-center">--%>
<%--                                <a href="#">Friends</a>--%>
<%--                            </div>--%>
<%--                        </div>--%>
<%--                        <!-- /.row -->--%>
<%--                    </li>--%>
                    <!-- Menu Footer-->
                    <li class="user-footer">
<%--                        <a href="#" class="btn btn-default btn-flat">Profile</a>--%>
                        <a href="/user/logout" class="btn btn-default btn-flat float-right">Sign out</a>
                    </li>
                </ul>
            </li>
        </ul>
    </div>
</nav>