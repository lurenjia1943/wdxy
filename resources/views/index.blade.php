<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="renderer" content="webkit">

    <title>沃德学院运城校区学生管理系统</title>
    <!--[if lt IE 9]>
    <meta http-equiv="refresh" content="0;ie.html" />
    <![endif]-->

    <link rel="shortcut icon" href="favicon.ico"> 
    <link href="/css/bootstrap.min.css?v=3.3.6" rel="stylesheet">
    <link href="/css/font-awesome.min.css?v=4.4.0" rel="stylesheet">
    <link href="/css/animate.css" rel="stylesheet">
    <link href="/css/style.css?v=4.1.0" rel="stylesheet">
</head>

<body class="fixed-sidebar full-height-layout gray-bg" style="overflow:hidden">
    <div id="wrapper">
        <!--左侧导航开始-->
        <nav class="navbar-default navbar-static-side" role="navigation">
            <div class="nav-close"><i class="fa fa-times-circle"></i>
            </div>
            <div class="sidebar-collapse">
                <ul class="nav" id="side-menu">
                    <li class="nav-header">
                        <div class="dropdown profile-element">
                            <span><img alt="image" class="img-circle" src="img/profile_small.jpg" /></span>
                            <a data-toggle="dropdown" class="dropdown-toggle" href="#">
                                <span class="clear">
                               <span class="block m-t-xs"><strong class="font-bold">{{ Auth::user()->name }}</strong></span>
                                <span class="text-muted text-xs block">超级管理员<b class="caret"></b></span>
                                </span>
                            </a>
                            <ul class="dropdown-menu animated fadeInRight m-t-xs">
                                <li><a class="J_menuItem" href="form_avatar.html">修改头像</a>
                                </li>
                                <li><a class="J_menuItem" href="profile.html">个人资料</a>
                                </li>
                                <li><a class="J_menuItem" href="contacts.html">联系我们</a>
                                </li>
                                <li><a class="J_menuItem" href="mailbox.html">信箱</a>
                                </li>
                                <li class="divider"></li>
                                <li><a href="{{ route('logout') }}"
                    onclick="event.preventDefault();
                             document.getElementById('logout-form').submit();">安全退出</a>
                                </li>
                            </ul>
                        </div>
                        <div class="logo-element">H+
                        </div>
                    </li>
                     
                    <li>
                        <a href="#">
                            <i class="fa fa fa-users"></i>
                            <span class="nav-label">我的班级</span>
                            <span class="fa arrow"></span>
                        </a>
                        <ul class="nav nav-second-level">
                            @foreach ($arr as $v)
                            <li>
                                <a class="J_menuItem" href="/student/index/{{$v->id}}">{{$v->classid}}</a>
                            </li>
                            @endforeach
                        </ul>
                    </li>
                    <li>
                        <a href="mailbox.html"><i class="fa fa-envelope"></i> <span class="nav-label">信箱 </span><span class="label label-warning pull-right">16</span></a>
                        <ul class="nav nav-second-level">
                            <li><a class="J_menuItem" href="mailbox.html">收件箱</a>
                            </li>
                            <li><a class="J_menuItem" href="mail_detail.html">查看邮件</a>
                            </li>
                            <li><a class="J_menuItem" href="mail_compose.html">写信</a>
                            </li>
                        </ul>
                    </li>
                    <li>
                        <a href="#"><i class="fa fa-edit"></i> <span class="nav-label">表单</span><span class="fa arrow"></span></a>
                        <ul class="nav nav-second-level">
                            <li><a class="J_menuItem" href="form_basic.html">基本表单</a>
                            </li>
                            <li><a class="J_menuItem" href="form_validate.html">表单验证</a>
                            </li>
                            <li><a class="J_menuItem" href="form_advanced.html">高级插件</a>
                            </li>
                            <li><a class="J_menuItem" href="form_wizard.html">表单向导</a>
                            </li>
                            <li>
                                <a href="#">文件上传 <span class="fa arrow"></span></a>
                                <ul class="nav nav-third-level">
                                    <li><a class="J_menuItem" href="form_webuploader.html">百度WebUploader</a>
                                    </li>
                                    <li><a class="J_menuItem" href="form_file_upload.html">DropzoneJS</a>
                                    </li>
                                    <li><a class="J_menuItem" href="form_avatar.html">头像裁剪上传</a>
                                    </li>
                                </ul>
                            </li>
                            <li>
                                <a href="#">编辑器 <span class="fa arrow"></span></a>
                                <ul class="nav nav-third-level">
                                    <li><a class="J_menuItem" href="form_editors.html">富文本编辑器</a>
                                    </li>
                                    <li><a class="J_menuItem" href="form_simditor.html">simditor</a>
                                    </li>
                                    <li><a class="J_menuItem" href="form_markdown.html">MarkDown编辑器</a>
                                    </li>
                                    <li><a class="J_menuItem" href="code_editor.html">代码编辑器</a>
                                    </li>
                                </ul>
                            </li>
                            <li><a class="J_menuItem" href="suggest.html">搜索自动补全</a>
                            </li>
                            <li><a class="J_menuItem" href="layerdate.html">日期选择器layerDate</a>
                            </li>
                        </ul>
                    </li>
                    <li>
                        <a href="#"><i class="fa fa-desktop"></i> <span class="nav-label">页面</span><span class="fa arrow"></span></a>
                        <ul class="nav nav-second-level">
                            <li><a class="J_menuItem" href="contacts.html">联系人</a>
                            </li>
                            <li><a class="J_menuItem" href="profile.html">个人资料</a>
                            </li>
                            <li>
                                <a href="#">项目管理 <span class="fa arrow"></span></a>
                                <ul class="nav nav-third-level">
                                    <li><a class="J_menuItem" href="projects.html">项目</a>
                                    </li>
                                    <li><a class="J_menuItem" href="project_detail.html">项目详情</a>
                                    </li>
                                </ul>
                            </li>
                            <li><a class="J_menuItem" href="teams_board.html">团队管理</a>
                            </li>
                            <li><a class="J_menuItem" href="social_feed.html">信息流</a>
                            </li>
                            <li><a class="J_menuItem" href="clients.html">客户管理</a>
                            </li>
                            <li><a class="J_menuItem" href="file_manager.html">文件管理器</a>
                            </li>
                            <li><a class="J_menuItem" href="calendar.html">日历</a>
                            </li>
                            <li>
                                <a href="#">博客 <span class="fa arrow"></span></a>
                                <ul class="nav nav-third-level">
                                    <li><a class="J_menuItem" href="blog.html">文章列表</a>
                                    </li>
                                    <li><a class="J_menuItem" href="article.html">文章详情</a>
                                    </li>
                                </ul>
                            </li>
                            <li><a class="J_menuItem" href="faq.html">FAQ</a>
                            </li>
                            <li>
                                <a href="#">时间轴 <span class="fa arrow"></span></a>
                                <ul class="nav nav-third-level">
                                    <li><a class="J_menuItem" href="timeline.html">时间轴</a>
                                    </li>
                                    <li><a class="J_menuItem" href="timeline_v2.html">时间轴v2</a>
                                    </li>
                                </ul>
                            </li>
                            <li><a class="J_menuItem" href="pin_board.html">标签墙</a>
                            </li>
                            <li>
                                <a href="#">单据 <span class="fa arrow"></span></a>
                                <ul class="nav nav-third-level">
                                    <li><a class="J_menuItem" href="invoice.html">单据</a>
                                    </li>
                                    <li><a class="J_menuItem" href="invoice_print.html">单据打印</a>
                                    </li>
                                </ul>
                            </li>
                            <li><a class="J_menuItem" href="search_results.html">搜索结果</a>
                            </li>
                            <li><a class="J_menuItem" href="forum_main.html">论坛</a>
                            </li>
                            <li>
                                <a href="#">即时通讯 <span class="fa arrow"></span></a>
                                <ul class="nav nav-third-level">
                                    <li><a class="J_menuItem" href="chat_view.html">聊天窗口</a>
                                    </li>
                                    <li><a class="J_menuItem" href="webim.html">layIM</a>
                                    </li>
                                </ul>
                            </li>
                            <li>
                                <a href="#">登录注册相关 <span class="fa arrow"></span></a>
                                <ul class="nav nav-third-level">
                                    <li><a href="login.html" target="_blank">登录页面</a>
                                    </li>
                                    <li><a href="login_v2.html" target="_blank">登录页面v2</a>
                                    </li>
                                    <li><a href="register.html" target="_blank">注册页面</a>
                                    </li>
                                    <li><a href="lockscreen.html" target="_blank">登录超时</a>
                                    </li>
                                </ul>
                            </li>
                            <li><a class="J_menuItem" href="404.html">404页面</a>
                            </li>
                            <li><a class="J_menuItem" href="500.html">500页面</a>
                            </li>
                            <li><a class="J_menuItem" href="empty_page.html">空白页</a>
                            </li>
                        </ul>
                    </li>
                    <li>
                        <a href="#"><i class="fa fa-flask"></i> <span class="nav-label">UI元素</span><span class="fa arrow"></span></a>
                        <ul class="nav nav-second-level">
                            <li><a class="J_menuItem" href="typography.html">排版</a>
                            </li>
                            <li>
                                <a href="#">字体图标 <span class="fa arrow"></span></a>
                                <ul class="nav nav-third-level">
                                    <li>
                                        <a class="J_menuItem" href="fontawesome.html">Font Awesome</a>
                                    </li>
                                    <li>
                                        <a class="J_menuItem" href="glyphicons.html">Glyphicon</a>
                                    </li>
                                    <li>
                                        <a class="J_menuItem" href="iconfont.html">阿里巴巴矢量图标库</a>
                                    </li>
                                </ul>
                            </li>
                            <li>
                                <a href="#">拖动排序 <span class="fa arrow"></span></a>
                                <ul class="nav nav-third-level">
                                    <li><a class="J_menuItem" href="draggable_panels.html">拖动面板</a>
                                    </li>
                                    <li><a class="J_menuItem" href="agile_board.html">任务清单</a>
                                    </li>
                                </ul>
                            </li>
                            <li><a class="J_menuItem" href="buttons.html">按钮</a>
                            </li>
                            <li><a class="J_menuItem" href="tabs_panels.html">选项卡 &amp; 面板</a>
                            </li>
                            <li><a class="J_menuItem" href="notifications.html">通知 &amp; 提示</a>
                            </li>
                            <li><a class="J_menuItem" href="badges_labels.html">徽章，标签，进度条</a>
                            </li>
                            <li>
                                <a class="J_menuItem" href="grid_options.html">栅格</a>
                            </li>
                            <li><a class="J_menuItem" href="plyr.html">视频、音频</a>
                            </li>
                            <li>
                                <a href="#">弹框插件 <span class="fa arrow"></span></a>
                                <ul class="nav nav-third-level">
                                    <li><a class="J_menuItem" href="layer.html">Web弹层组件layer</a>
                                    </li>
                                    <li><a class="J_menuItem" href="modal_window.html">模态窗口</a>
                                    </li>
                                    <li><a class="J_menuItem" href="sweetalert.html">SweetAlert</a>
                                    </li>
                                </ul>
                            </li>
                            <li>
                                <a href="#">树形视图 <span class="fa arrow"></span></a>
                                <ul class="nav nav-third-level">
                                    <li><a class="J_menuItem" href="jstree.html">jsTree</a>
                                    </li>
                                    <li><a class="J_menuItem" href="tree_view.html">Bootstrap Tree View</a>
                                    </li>
                                    <li><a class="J_menuItem" href="nestable_list.html">nestable</a>
                                    </li>
                                </ul>
                            </li>
                            <li><a class="J_menuItem" href="toastr_notifications.html">Toastr通知</a>
                            </li>
                            <li><a class="J_menuItem" href="diff.html">文本对比</a>
                            </li>
                            <li><a class="J_menuItem" href="spinners.html">加载动画</a>
                            </li>
                            <li><a class="J_menuItem" href="widgets.html">小部件</a>
                            </li>
                        </ul>
                    </li>
                    <li>
                        <a href="#"><i class="fa fa-table"></i> <span class="nav-label">表格</span><span class="fa arrow"></span></a>
                        <ul class="nav nav-second-level">
                            <li><a class="J_menuItem" href="table_basic.html">基本表格</a>
                            </li>
                            <li><a class="J_menuItem" href="table_data_tables.html">DataTables</a>
                            </li>
                            <li><a class="J_menuItem" href="table_jqgrid.html">jqGrid</a>
                            </li>
                            <li><a class="J_menuItem" href="table_foo_table.html">Foo Tables</a>
                            </li>
                            <li><a class="J_menuItem" href="table_bootstrap.html">Bootstrap Table
                                <span class="label label-danger pull-right">推荐</span></a>
                            </li>
                        </ul>
                    </li>
                    <li>
                        <a href="#"><i class="fa fa-picture-o"></i> <span class="nav-label">相册</span><span class="fa arrow"></span></a>
                        <ul class="nav nav-second-level">
                            <li><a class="J_menuItem" href="basic_gallery.html">基本图库</a>
                            </li>
                            <li><a class="J_menuItem" href="carousel.html">图片切换</a>
                            </li>
                            <li><a class="J_menuItem" href="blueimp.html">Blueimp相册</a>
                            </li>
                        </ul>
                    </li>
                    <li>
                        <a class="J_menuItem" href="css_animation.html"><i class="fa fa-magic"></i> <span class="nav-label">CSS动画</span></a>
                    </li>
                    <li>
                        <a href="#"><i class="fa fa-cutlery"></i> <span class="nav-label">工具 </span><span class="fa arrow"></span></a>
                        <ul class="nav nav-second-level">
                            <li><a class="J_menuItem" href="form_builder.html">表单构建器</a>
                            </li>
                        </ul>
                    </li>

                </ul>
            </div>
        </nav>
        <!--左侧导航结束-->
        <!--右侧部分开始-->
        <div id="page-wrapper" class="gray-bg dashbard-1">
            <div class="row border-bottom">
                <nav class="navbar navbar-static-top" role="navigation" style="margin-bottom: 0">
                    <div class="navbar-header"><a class="navbar-minimalize minimalize-styl-2 btn btn-primary " href="#"><i class="fa fa-bars"></i> </a>
                        <!-- <form role="search" class="navbar-form-custom" method="post" action="search_results.html">
                            <div class="form-group">
                                <input type="text" placeholder="请输入您需要查找的内容 …" class="form-control" name="top-search" id="top-search">
                            </div>
                        </form> -->
                    </div>
                    <ul class="nav navbar-top-links navbar-right">
                        <li class="dropdown hidden-xs">
                            <a class="right-sidebar-toggle" aria-expanded="false">
                                <i class="fa fa-tasks"></i> 主题
                            </a>
                        </li>
                    </ul>
                </nav>
            </div>
            <div class="row content-tabs">
                <button class="roll-nav roll-left J_tabLeft"><i class="fa fa-backward"></i>
                </button>
                <nav class="page-tabs J_menuTabs">
                    <div class="page-tabs-content">
                        <a href="javascript:;" class="active J_menuTab" data-id="index_v1.html">最新消息</a>
                    </div>
                </nav>
                <button class="roll-nav roll-right J_tabRight"><i class="fa fa-forward"></i>
                </button>
                <div class="btn-group roll-nav roll-right">
                    <button class="dropdown J_tabClose" data-toggle="dropdown">关闭操作<span class="caret"></span>

                    </button>
                    <ul role="menu" class="dropdown-menu dropdown-menu-right">
                        <li class="J_tabShowActive"><a>定位当前选项卡</a>
                        </li>
                        <li class="divider"></li>
                        <li class="J_tabCloseAll"><a>关闭全部选项卡</a>
                        </li>
                        <li class="J_tabCloseOther"><a>关闭其他选项卡</a>
                        </li>
                    </ul>
                </div>
                <a href="{{ route('logout') }}"
                    onclick="event.preventDefault();
                             document.getElementById('logout-form').submit();" class="roll-nav roll-right J_tabExit"><i class="fa fa fa-sign-out"></i> 退出</a>

                <form id="logout-form" action="{{ route('logout') }}" method="POST" style="display: none;">
                    {{ csrf_field() }}
                </form>
            </div>
            <div class="row J_mainContent" id="content-main">
                <iframe class="J_iframe" name="iframe0" width="100%" height="100%" src="/main" frameborder="0" data-id="index_v1.html" seamless></iframe>
            </div>
            <div class="footer">
                <div class="pull-right">
                    <h4>© 2018 2018 chenxun All Rights Reserved </h4>
                </div>
            </div>
        </div>
        <!--右侧部分结束-->
        <!--右侧边栏开始-->
        <div id="right-sidebar">
            <div class="sidebar-container">

                <div class="tab-content">
                    <div id="tab-1" class="tab-pane active">
                        <div class="sidebar-title">
                            <h3> <i class="fa fa-comments-o"></i> 主题设置</h3>
                            <small><i class="fa fa-tim"></i> 你可以从这里选择和预览主题的布局和样式，这些设置会被保存在本地，下次打开的时候会直接应用这些设置。</small>
                        </div>
                        <div class="skin-setttings">
                            <div class="title">主题设置</div>
                            <div class="setings-item">
                                <span>收起左侧菜单</span>
                                <div class="switch">
                                    <div class="onoffswitch">
                                        <input type="checkbox" name="collapsemenu" class="onoffswitch-checkbox" id="collapsemenu">
                                        <label class="onoffswitch-label" for="collapsemenu">
                                            <span class="onoffswitch-inner"></span>
                                            <span class="onoffswitch-switch"></span>
                                        </label>
                                    </div>
                                </div>
                            </div>
                            <div class="setings-item">
                                <span>固定顶部</span>

                                <div class="switch">
                                    <div class="onoffswitch">
                                        <input type="checkbox" name="fixednavbar" class="onoffswitch-checkbox" id="fixednavbar">
                                        <label class="onoffswitch-label" for="fixednavbar">
                                            <span class="onoffswitch-inner"></span>
                                            <span class="onoffswitch-switch"></span>
                                        </label>
                                    </div>
                                </div>
                            </div>
                            <div class="setings-item">
                                <span>
                        固定宽度
                    </span>

                                <div class="switch">
                                    <div class="onoffswitch">
                                        <input type="checkbox" name="boxedlayout" class="onoffswitch-checkbox" id="boxedlayout">
                                        <label class="onoffswitch-label" for="boxedlayout">
                                            <span class="onoffswitch-inner"></span>
                                            <span class="onoffswitch-switch"></span>
                                        </label>
                                    </div>
                                </div>
                            </div>
                            <div class="title">皮肤选择</div>
                            <div class="setings-item default-skin nb">
                                <span class="skin-name ">
                         <a href="#" class="s-skin-0">
                             默认皮肤
                         </a>
                    </span>
                            </div>
                            <div class="setings-item blue-skin nb">
                                <span class="skin-name ">
                        <a href="#" class="s-skin-1">
                            蓝色主题
                        </a>
                    </span>
                            </div>
                            <div class="setings-item yellow-skin nb">
                                <span class="skin-name ">
                        <a href="#" class="s-skin-3">
                            黄色/紫色主题
                        </a>
                    </span>
                            </div>
                        </div>
                    </div>
                </div>

            </div>
        </div>
        <!--右侧边栏结束-->

        </div>
    </div>

    <!-- 全局js -->
    <script src="/js/jquery.min.js?v=2.1.4"></script>
    <script src="/js/bootstrap.min.js?v=3.3.6"></script>
    <script src="/js/plugins/metisMenu/jquery.metisMenu.js"></script>
    <script src="/js/plugins/slimscroll/jquery.slimscroll.min.js"></script>
    <script src="/js/plugins/layer/layer.min.js"></script>

    <!-- 自定义js -->
    <script src="/js/hplus.js?v=4.1.0"></script>
    <script type="text/javascript" src="/js/contabs.js"></script>

    <!-- 第三方插件 -->
    <script src="/js/plugins/pace/pace.min.js"></script>

</body>

</html>
