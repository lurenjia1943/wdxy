<!DOCTYPE html>
<html>

<head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">


    <title>学生考勤表</title>
    <link rel="shortcut icon" href="favicon.ico">
    <link href="/css/bootstrap.min.css" rel="stylesheet">
    <link href="/css/font-awesome.css" rel="stylesheet">
    <link href="/css/plugins/iCheck/custom.css" rel="stylesheet">
    <link href="/css/bootstrap-table.css" rel="stylesheet">
    <link href="/css/animate.css" rel="stylesheet">
    <link href="/css/style.css" rel="stylesheet">
    
</head>

<body class="gray-bg">
    <div class="wrapper wrapper-content animated fadeInRight">
        <div class="row panel">
            <div class="col-sm-12">

                <div class="ibox float-e-margins">
                    
                    <!-- Example Pagination -->

                    <div class="example-wrap">
                        <div class="row">
                            <h2 class="col-sm-10">学生考勤情况一览表</h2>
                            <!-- <div class="col-sm-2" style="margin-top: 16px;">
                                    <div data-toggle="buttons" class="btn-group">
                                        <label class="btn btn-sm btn-white">
                                            <input type="radio" id="day" name="options">天</label>
                                        <label class="btn btn-sm btn-white active">
                                            <input type="radio" id="week" name="options">周</label>
                                        <label class="btn btn-sm btn-white">
                                            <input type="radio" id="month" name="options">月</label>
                                    </div>
                            </div> -->
                        </div>
                        <div class="btn-group hidden-xs" id="exampleTableEventsToolbar" role="group">
                             <button type="button" class="btn btn-outline btn-default">
                                <a class="glyphicon glyphicon-plus" aria-hidden="true" href="form_basic.html#modal-form" data-toggle="modal" style="color: black"></a>
                            </button>
                          <!--   <button type="button" class="btn btn-outline btn-default">
                                <i class="glyphicon glyphicon-pencil edit" aria-hidden="true"></i>
                            </button> -->
                            <button type="button" class="btn btn-outline btn-default">
                                <i class="glyphicon glyphicon-trash delete" aria-hidden="true"></i>
                            </button>
                        </div>
                       <!-- <h3 style="margin-left: 720px;">本周出勤率</h3> -->
                        <table id="exampleTableToolbar" data-toggle="table">
                            <thead style="color:black">
                                <tr>
                                    <th data-field="check" data-checkbox="true"></th>
                                    <th data-field="id" data-halign="center">ID</th>
                                    <th data-field="name" data-halign="center">姓名</th>
                                    <th data-field="sex" data-sortable="true" data-halign="center">性别</th>    
                                    <th data-field="iphone" data-halign="center">手机</th>
                                    <th data-halign="center">请假</th>
                                    <th data-halign="center">旷课</th>
                                    <th data-halign="center">迟到</th>
                                    <th data-halign="center">早退</th>
                                    <th data-halign="center">描述</th>
                                    <th data-field="created_at" data-sortable="true" data-halign="center">时间</th>           
                                </tr>
                            </thead>
                            <tbody>
                              
                                @foreach($student as $v)
                                <tr class="text-center">
                                    <td></td>
                                    <td>{{$v->id}}</td>
                                    <td>{{$v->name}}</td>
                                    <td>{{$v->sex}}</td>
                                    <td>{{$v->iphone}}</td>
                                    <td>@if(($v->commuting) == 0)
                                            <i class="fa fa-check"></i>
                                        @else
                                            --
                                        @endif</td>
                                    <td>@if(($v->commuting) == 1)
                                            <i class="fa fa-check"></i>
                                        @else
                                            --
                                        @endif</td>
                                    <td>@if(($v->commuting) == 2)
                                           <i class="fa fa-check"></i>
                                        @else
                                            --
                                        @endif</td>
                                    <td>@if(($v->commuting) == 3)
                                            <i class="fa fa-check"></i>
                                        @else
                                            --
                                        @endif</td>
                                    <td>{{$v->describe}}</td>
                                    <td>{{$v->time}}</td>
                                </tr>
                                @endforeach
                            </tbody>
                        </table>
                    <!-- End Example Pagination -->
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- 考勤记入 -->
     <div id="modal-form" class="modal fade" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-body">
                    <div class="row">
                        <div class="col-sm-12">
                            <h3 class="m-t-none m-b">缺勤记入</h3><hr>
                            <form role="form" action="/commuting/store" method="post"  class="form-horizontal">
                                {!! csrf_field() !!}
                                <div class="form-group">
                                    <label class="col-sm-2 control-label">姓名：</label>
                                    <div class="col-sm-10">
                                        <select class="form-control m-b" name="name">
                                           <option  disabled selected hidden style="" value="-1"> 请选择
                                            </option>
                                             @for($i=0;$i<count($stuname);$i++)
                                                 <option value="{{$stuname[$i]->name}}">{{$stuname[$i]->name}}</option>
                                            @endfor   
                                        </select>
                                    </div>
                                </div>
                               
                               <div class="form-group">
                                    <label class="col-sm-2 control-label">类型：</label>
                                    <div class="col-sm-10">
                                      <select class="form-control m-b" name="commuting">
                                        <option value="0">请假</option>
                                        <option value="1">旷课</option>
                                        <option value="2">迟到</option>
                                        <option value="3">早退</option>
                                    </select>
                                    </div>
                                </div>
                                 <div class="form-group">
                                    <label class="col-sm-2 control-label">时间：</label>
                                    <div class="col-sm-10">
                                        <input type="text" class="form-control" placeholder="请选择日期" id="time1" name="time">
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-sm-2 control-label">描述：</label>
                                    <div class="col-sm-10">
                                      <input type="text" class="form-control" name="describe" placeholder="尽量填写">
                                    </div>
                                </div>
                               <input type="hidden" name="classid" value="{{$class->id}}">
                                <div>
                                    <button class="btn btn-sm btn-primary pull-right m-t-n-xs" type="submit"><strong>执行添加</strong>
                                    </button>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- 全局js -->
    <script src="/js/jquery.min.js?v=2.1.4"></script>
    <script src="/js/bootstrap.min.js"></script>
    <script type="text/javascript" src="/layer/layer.js"></script>

    <!-- Peity -->
    <script src="/js/plugins/peity/jquery.peity.min.js"></script>

    <!-- 自定义js -->
    <script src="/js/content.js?v=1.0.0"></script>

    <!-- Bootstrap table -->
    <script src="/js/plugins/bootstrap-table/bootstrap-table.min.js"></script>
    <script src="/js/plugins/bootstrap-table/bootstrap-table-mobile.min.js"></script>
    <script src="/js/plugins/bootstrap-table/locale/bootstrap-table-zh-CN.min.js"></script>
    <!-- iCheck -->
    <script src="/js/plugins/iCheck/icheck.min.js"></script>
    <script src="/laydate/laydate.js"></script>
    <script type="text/javascript">
        (function() {
            $('#exampleTableToolbar').bootstrapTable({
              search: true,
              showRefresh: true,
              toolbar: '#exampleTableEventsToolbar',
              showColumns: true,
              cache: false,                       //是否使用缓存，默认为true，所以一般情况下需要设置一下这个属性（*）
              singleSelect:true,
              pagination: true,                   //是否显示分页（*）
              pageSize: 10,                       //每页的记录行数（*）
              pageList: [10, 25, 50, 100],        //可供选择的每页的行数（*）
              iconSize: 'outline',
            });
        })();
    </script>
    <script type="text/javascript">
         //考勤记录时间
        laydate.render({
          elem: '#time1' //指定元素
        });
       
    </script>
    <script  type="text/javascript">
         //删除学生
                  $('.delete').click(function(){
                var id = $('#exampleTableToolbar').bootstrapTable('getSelections')[0].id;
                layer.confirm('你确定要删除吗？', {
                    btn: ['删除','取消'] 
                  }, function(){
                    $.get("/commuting/destroy",{id:id},function(data,status){
                        layer.msg('删除成功', {icon: 1});
                        //删除表格
                        var ids = $.map($('#exampleTableToolbar').bootstrapTable('getSelections'), function (row) {
                            return row.id;
                        });
                        $('#exampleTableToolbar').bootstrapTable('remove', {
                            field: 'id',
                            values: ids
                        });
                    });
                  }, function(){
                    layer.msg('已取消',{icon: 2});
                  });
            });
    </script>
</body>

</html>
