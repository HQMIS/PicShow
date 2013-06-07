<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html;charset=utf-8" />
		<title>历史背景图大图展</title>
		<link rel="shortcut icon" href="images/show.png" />
		<link rel="stylesheet" href="css/slideshow.css" />
		<style type="text/css">
			body {
				background: #fff;
				margin: 0;
			}

			.slideshow {
				margin-top: 5px;
			}
		</style>
		<script type="text/javascript" src="js/mootools-1.3.1-core.js"></script>
		<script type="text/javascript" src="js/mootools-1.3.1.1-more.js"></script>
		<script type="text/javascript" src="js/slideshow.js"></script>
		<!--[if lt IE 7 ]>
        <script src="js/dd_belatedpng.js"></script>
        <script>DD_belatedPNG.fix('img, .png_bg'); //这个如果你们需要加入png图片,可以解决透明的问题不需要就删除就可以了 </script>
      	<![endif]-->
		<script type="text/javascript">
            window.addEvent('domready', function(){

                new Request.JSON({
                    url:'json/data.js',
                    onFailure:function(e){
                        console.log(e.status);
                    },
                    onSuccess:function(text){
                        var data =text;
                        /*
                         *本地测试就把这段代码撤了 并注释上一行
                         **/
                        //var date={
                        //    "1.jpg": {
                        //        "caption": "第一张图片"
                        //    },
                        //    "2.jpg": {
                        //        "caption": "第二张图片"
                        //    },
                        //    "3.jpg": {
                        //        "caption": "第三张图片"
                        //    },
                        //    "4.jpg": {
                        //        "caption": "第四张图片"
                        //    },
                        //    "5.jpg": {
                        //        "caption": "第五张图片"
                        //    },
                        //    "6.jpg": {
                        //        "caption": "第六张图片"
                        //    },
                        //    "7.jpg": {
                        //        "caption": "第七张图片"
                        //    },
                        //    "8.jpg": {
                        //        "caption": "第八张图片"
                        //    },
                        //    "9.jpg": {
                        //        "caption": "第六张图片"
                        //    },
                        //    "10.jpg": {
                        //        "caption": "第六张图片"
                        //    },
                        //    "11.jpg": {
                        //        "caption": "第六张图片"
                        //    }
                        //
                        //}
                        //第一个参数'overlap',
                        //第二个参数data即传入的json对象 ，
                        //第三个字面量对象
                        //1captions:代表图片说明文字栏一般只需设置delay时间
                        //2delay:即代表图片的轮播的延时
                        //3 hu:代表 图片所在文件夹相对于文档的相对位置
                        //width height 代表你需要的大图片的宽度与高度
                        new Slideshow('overlap', data, { captions: { delay: 400 }, delay: 5000, height: 570, hu: 'images/', width: 1024 });
                    }

                }).send()
            });
        </script>
	</head>
	<body>
		<div id="overlap" class="slideshow">
			<img src="images/a.jpg" alt="1" />
		</div>
	</body>
</html>
