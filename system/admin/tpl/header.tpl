<!-- BEGIN: HEADER -->
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="content-type" content="{HEADER_META_CONTENTTYPE}; charset=UTF-8"/>
    <meta name="description" content="{HEADER_META_DESCRIPTION}"/>
    <meta name="keywords" content="{HEADER_META_KEYWORDS}"/>
    <meta name="generator" content="Cotonti http://www.cotonti.club"/>
    <meta http-equiv="expires" content="Fri, Apr 01 1974 00:00:00 GMT"/>
    <meta http-equiv="pragma" content="no-cache"/>
    <meta http-equiv="cache-control" content="no-cache"/>
    <meta http-equiv="last-modified" content="{HEADER_META_LASTMODIFIED} GMT"/>
    {HEADER_BASEHREF}
    {HEADER_HEAD}
    <link rel="shortcut icon" href="favicon.ico"/>

    <!-- Google Fonts -->
    <link href="https://fonts.gstatic.com" rel="preconnect">
    <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Nunito:300,300i,400,400i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i"
          rel="stylesheet">

    <!-- Vendor CSS Files -->
    <link href="{PHP.cfg.system_dir}/admin/tpl/assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <link href="{PHP.cfg.system_dir}/admin/tpl/assets/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
    <link href="{PHP.cfg.system_dir}/admin/tpl/assets/vendor/remixicon/remixicon.css" rel="stylesheet">
    <link href="{PHP.cfg.system_dir}/admin/tpl/assets/vendor/boxicons/css/boxicons.min.css" rel="stylesheet">
    <link href="{PHP.cfg.system_dir}/admin/tpl/assets/vendor/quill/quill.snow.css" rel="stylesheet">
    <link href="{PHP.cfg.system_dir}/admin/tpl/assets/vendor/quill/quill.bubble.css" rel="stylesheet">
    <link href="{PHP.cfg.system_dir}/admin/tpl/assets/vendor/simple-datatables/style.css" rel="stylesheet">
    <!-- Template Main CSS File -->
    <link href="{PHP.cfg.system_dir}/admin/tpl/assets/css/style.css" rel="stylesheet">
    {HEADER_COMPOPUP}
    <title>{HEADER_TITLE}</title>
</head>
<body class="d-flex flex-column h-100">

<!-- ======= Header ======= -->
<header id="header" class="header fixed-top d-flex align-items-center">

    <div class="d-flex align-items-center justify-content-between">
        <i class="bi bi-list toggle-sidebar-btn"></i>
    </div><!-- End Logo -->

{*    <div class="search-bar">*}
{*        <form class="search-form d-flex align-items-center" method="POST" action="#">*}
{*            <input type="text" name="query" placeholder="Search" title="Enter search keyword">*}
{*            <button type="submit" title="Search"><i class="bi bi-search"></i></button>*}
{*        </form>*}
{*    </div><!-- End Search Bar -->*}

    <nav class="header-nav ms-auto">
        <ul class="d-flex align-items-center">

{*            <li class="nav-item d-block d-lg-none" >*}
{*                <a class="nav-link nav-icon search-bar-toggle " href="#">*}
{*                    <i class="bi bi-search"></i>*}
{*                </a>*}
{*            </li><!-- End Search Icon-->*}

{*            <li class="nav-item dropdown">*}

{*                <a class="nav-link nav-icon" href="#" data-bs-toggle="dropdown">*}
{*                    <i class="bi bi-bell"></i>*}
{*                    <span class="badge bg-primary badge-number">4</span>*}
{*                </a><!-- End Notification Icon -->*}

{*                <ul class="dropdown-menu dropdown-menu-end dropdown-menu-arrow notifications">*}
{*                    <li class="dropdown-header">*}
{*                        You have 4 new notifications*}
{*                        <a href="#"><span class="badge rounded-pill bg-primary p-2 ms-2">View all</span></a>*}
{*                    </li>*}
{*                    <li>*}
{*                        <hr class="dropdown-divider">*}
{*                    </li>*}

{*                    <li class="notification-item">*}
{*                        <i class="bi bi-exclamation-circle text-warning"></i>*}
{*                        <div>*}
{*                            <h4>Lorem Ipsum</h4>*}
{*                            <p>Quae dolorem earum veritatis oditseno</p>*}
{*                            <p>30 min. ago</p>*}
{*                        </div>*}
{*                    </li>*}

{*                    <li>*}
{*                        <hr class="dropdown-divider">*}
{*                    </li>*}

{*                    <li class="notification-item">*}
{*                        <i class="bi bi-x-circle text-danger"></i>*}
{*                        <div>*}
{*                            <h4>Atque rerum nesciunt</h4>*}
{*                            <p>Quae dolorem earum veritatis oditseno</p>*}
{*                            <p>1 hr. ago</p>*}
{*                        </div>*}
{*                    </li>*}

{*                    <li>*}
{*                        <hr class="dropdown-divider">*}
{*                    </li>*}

{*                    <li class="notification-item">*}
{*                        <i class="bi bi-check-circle text-success"></i>*}
{*                        <div>*}
{*                            <h4>Sit rerum fuga</h4>*}
{*                            <p>Quae dolorem earum veritatis oditseno</p>*}
{*                            <p>2 hrs. ago</p>*}
{*                        </div>*}
{*                    </li>*}

{*                    <li>*}
{*                        <hr class="dropdown-divider">*}
{*                    </li>*}

{*                    <li class="notification-item">*}
{*                        <i class="bi bi-info-circle text-primary"></i>*}
{*                        <div>*}
{*                            <h4>Dicta reprehenderit</h4>*}
{*                            <p>Quae dolorem earum veritatis oditseno</p>*}
{*                            <p>4 hrs. ago</p>*}
{*                        </div>*}
{*                    </li>*}

{*                    <li>*}
{*                        <hr class="dropdown-divider">*}
{*                    </li>*}
{*                    <li class="dropdown-footer">*}
{*                        <a href="#">Show all notifications</a>*}
{*                    </li>*}

{*                </ul><!-- End Notification Dropdown Items -->*}

{*            </li><!-- End Notification Nav -->*}

{*            <li class="nav-item dropdown">*}

{*                <a class="nav-link nav-icon" href="#" data-bs-toggle="dropdown">*}
{*                    <i class="bi bi-chat-left-text"></i>*}
{*                    <span class="badge bg-success badge-number">3</span>*}
{*                </a><!-- End Messages Icon -->*}

{*                <ul class="dropdown-menu dropdown-menu-end dropdown-menu-arrow messages">*}
{*                    <li class="dropdown-header">*}
{*                        You have 3 new messages*}
{*                        <a href="#"><span class="badge rounded-pill bg-primary p-2 ms-2">View all</span></a>*}
{*                    </li>*}
{*                    <li>*}
{*                        <hr class="dropdown-divider">*}
{*                    </li>*}

{*                    <li class="message-item">*}
{*                        <a href="#">*}
{*                            <img src="assets/img/messages-1.jpg" alt="" class="rounded-circle">*}
{*                            <div>*}
{*                                <h4>Maria Hudson</h4>*}
{*                                <p>Velit asperiores et ducimus soluta repudiandae labore officia est ut...</p>*}
{*                                <p>4 hrs. ago</p>*}
{*                            </div>*}
{*                        </a>*}
{*                    </li>*}
{*                    <li>*}
{*                        <hr class="dropdown-divider">*}
{*                    </li>*}

{*                    <li class="message-item">*}
{*                        <a href="#">*}
{*                            <img src="assets/img/messages-2.jpg" alt="" class="rounded-circle">*}
{*                            <div>*}
{*                                <h4>Anna Nelson</h4>*}
{*                                <p>Velit asperiores et ducimus soluta repudiandae labore officia est ut...</p>*}
{*                                <p>6 hrs. ago</p>*}
{*                            </div>*}
{*                        </a>*}
{*                    </li>*}
{*                    <li>*}
{*                        <hr class="dropdown-divider">*}
{*                    </li>*}

{*                    <li class="message-item">*}
{*                        <a href="#">*}
{*                            <img src="assets/img/messages-3.jpg" alt="" class="rounded-circle">*}
{*                            <div>*}
{*                                <h4>David Muldon</h4>*}
{*                                <p>Velit asperiores et ducimus soluta repudiandae labore officia est ut...</p>*}
{*                                <p>8 hrs. ago</p>*}
{*                            </div>*}
{*                        </a>*}
{*                    </li>*}
{*                    <li>*}
{*                        <hr class="dropdown-divider">*}
{*                    </li>*}

{*                    <li class="dropdown-footer">*}
{*                        <a href="#">Show all messages</a>*}
{*                    </li>*}

{*                </ul><!-- End Messages Dropdown Items -->*}

{*            </li><!-- End Messages Nav -->*}

            <li class="nav-item dropdown">
                <a class="nav-link nav-icon" href="{PHP.cfg.mainurl}" target="_blank" data-bs-toggle="tooltip" data-bs-placement="bottom" data-bs-original-title="{__('hea_viewsite')}">
                    <i class="bi bi-globe"></i>
                </a>
            </li>
            <li class="nav-item dropdown pe-3">
                <a class="nav-link nav-profile d-flex align-items-center pe-0" href="#" data-bs-toggle="dropdown">
                    <img src="{HEADER_USER_AVATAR_SRC}" alt="{PHP.usr.name}" class="rounded-circle">
                    <span class="d-none d-md-block dropdown-toggle ps-2">{PHP.usr.name}</span>
                </a>

                <ul class="dropdown-menu dropdown-menu-end dropdown-menu-arrow profile">
                    <li class="dropdown-header">
                        <h6>{PHP.usr.name}</h6>
                        <span>{PHP.usr.maingrp|cot_build_group($this, false, false)}</span>
                    </li>
                    <li>
                        <hr class="dropdown-divider">
                    </li>
                    <li>
                        <a class="dropdown-item d-flex align-items-center" href="{PHP|cot_url('users','m=profile')}"
                           target="_blank">
                            <i class="bi bi-gear"></i>
                            <span>{PHP.L.Profile}</span>
                        </a>
                    </li>
                    <li>
                        <a class="dropdown-item d-flex align-items-center" href="https://cotcms.com/forums"
                           target="_blank">
                            <i class="bi bi-question-circle"></i>
                            <span>{PHP.L.Help}</span>
                        </a>
                    </li>
                    <li>
                        <hr class="dropdown-divider">
                    </li>

                    <li>
                        <a class="dropdown-item d-flex align-items-center" href="{PHP.out.loginout_url}">
                            <i class="bi bi-box-arrow-right"></i>
                            <span>{PHP.L.Logout}</span>
                        </a>
                    </li>

                </ul><!-- End Profile Dropdown Items -->
            </li><!-- End Profile Nav -->

        </ul>
    </nav><!-- End Icons Navigation -->

</header><!-- End Header -->

<!-- ======= Sidebar ======= -->
<aside id="sidebar" class="sidebar">

    <div class="mb-5">
        <a href="{PHP|cot_url('admin')}" class="logo d-flex align-items-center">
            <!-- IF {PHP.cfg.maintitle} && {PHP.cfg.maintitle|mb_strlen} < 50 -->
            <span class="d-none d-lg-block">{PHP.cfg.maintitle}</span>
            <!-- ELSE -->
            <span class="d-none d-lg-block">{PHP.L.hea_viewsite}</span>
            <!-- ENDIF -->
        </a>
    </div>

    <ul class="sidebar-nav" id="sidebar-nav">
        <li class="nav-item">
            <a class="<!-- IF !{PHP.m}  -->nav-link<!-- ELSE -->nav-link collapsed<!-- ENDIF -->"
               href="{PHP|cot_url('admin')}">
                <i class="bi bi-grid"></i>
                <span>{PHP.L.Home}</span>
            </a>
        </li>

        <!-- BEGIN: MENU -->
            <!-- IF {MENU_ITEMS} -->
            <li class="nav-item">
                <a
                    class="<!-- IF {MENU_ACTIVE} -->nav-link<!-- ELSE -->nav-link collapsed<!-- ENDIF -->"
                    data-bs-target="#nav-{MENU_KEY}"
                    data-bs-toggle="collapse"
                    href="#">
                    <i class="bi {MENU_ICON}"></i><span>{MENU_TITLE}</span><i class="bi bi-chevron-down ms-auto"></i>
                </a>
                <ul id="nav-{MENU_KEY}" class="<!-- IF {MENU_ACTIVE} -->nav-content<!-- ELSE -->nav-content collapse<!-- ENDIF -->" data-bs-parent="#sidebar-nav">
                    <!-- BEGIN: ITEMS -->
                    <li>
                        <a href="{MENU_ITEM_URL}" <!-- IF {MENU_ITEM_ACTIVE} -->class="active"<!-- ENDIF -->>
                            <i class="bi bi-circle"></i><span>{MENU_ITEM_TITLE}</span>
                        </a>
                    </li>
                    <!-- END: ITEMS -->
                </ul>
            </li>
            <!-- ELSE -->
            <li class="nav-item">
                <a class="<!-- IF {MENU_ACTIVE} -->nav-link<!-- ELSE -->nav-link collapsed<!-- ENDIF -->" href="{MENU_URL}">
                    <i class="bi {MENU_ICON}"></i>
                    <span>{MENU_TITLE}</span>
                </a>
            </li>
            <!-- ENDIF -->
        <!-- END: MENU -->
    </ul>

</aside><!-- End Sidebar-->

<!-- END: HEADER -->
