<%@ page language="java" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="/view/conf/farmtag.tld" prefix="PF"%>
<div class="widget-box shadow-box">
	<div class="stream-list p-stream">
		<div class="title">
		<h3>
			<i class="glyphicon glyphicon-heart"></i>推荐视频
		</h3>
		</div>
		<div class="hidden-xs hidden-sm">
			<video controls width="100%" height="450px">
		    	<source src="<PF:basePath/>/text/img/video.mp4" type="video/mp4" />
			</video>
		</div>
		<div class="visible-xs visible-sm">
			<video controls width="100%">
		    	<source src="<PF:basePath/>/text/img/video.mp4" type="video/mp4" />
			</video>
		</div>
	</div>
</div>