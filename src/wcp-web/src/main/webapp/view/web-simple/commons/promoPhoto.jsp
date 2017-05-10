<%@ page language="java" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="/view/conf/farmtag.tld" prefix="PF"%>
			<div id="myCarousel" class="carousel slide">
				<!-- 轮播（Carousel）指标 -->
				<ol class="carousel-indicators">
					<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
					<li data-target="#myCarousel" data-slide-to="1"></li>
					<li data-target="#myCarousel" data-slide-to="2"></li>
				</ol>   
			
				<!-- 轮播（Carousel）项目 -->
				<div class="carousel-inner">
					<div class="item active">
					<img src="http://desk.fd.zol-img.com.cn/t_s1920x1080c5/g5/M00/02/0D/ChMkJ1kJS8WIVB_jAANCw48k__cAAcHIAIamk0AA0Lb705.jpg" alt="First slide">
					</div>
					<div class="item">
					<img src="http://desk.fd.zol-img.com.cn/t_s1920x1080c5/g5/M00/02/0D/ChMkJ1kJS8OIcz0cAALSKEWKVQsAAcHIAIKnGYAAtJA717.jpg" alt="Second slide">
					</div>
					<div class="item">
					<img src="http://desk.fd.zol-img.com.cn/t_s1920x1080c5/g5/M00/02/0D/ChMkJlkJS8KIQY1eAAHwuJGlDvcAAcHIAIH1NYAAfDQ965.jpg" alt="Third slide">
					</div>
				</div>
				<!-- 轮播（Carousel）导航 -->
				<a class="left carousel-control" href="#myCarousel"
							role="button" data-slide="prev"> <span
							class="glyphicon glyphicon-chevron-left"></span> <span
							class="sr-only">Previous</span>
						</a> 
				<a class="right carousel-control"
					href="#myCarousel" role="button" data-slide="next">
					<span class="glyphicon glyphicon-chevron-right"></span> <span
					class="sr-only">Next</span>
				</a>
			</div>
			<script>
				$(function(){
					// 初始化轮播
					$("#myCarousel").carousel('cycle');
				})
			</script>