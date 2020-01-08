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
<%--        <ul class="order-1 order-md-3 navbar-nav navbar-no-expand ml-auto">--%>
<%--        </ul>--%>
        <ul class="order-1 order-md-3 navbar-nav navbar-no-expand ml-auto">
            <li class="nav-item">
                <a class="navbar-brand nav-link" data-widget="control-sidebar" data-slide="true" href="#">
                    <span class="brand-text font-weight-light">${login.userName}</span>
                    <img src="https://www.gravatar.com/avatar/${login.userGravatar}?d=identicon&amp;f=y" alt="${login.userName} Image" class="brand-image img-circle elevation-3" style="opacity: .8">
                </a>
            </li>
        </ul>
    </div>
</nav>