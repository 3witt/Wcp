<%@ page language="java" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="/view/conf/farmtag.tld" prefix="PF"%>
<!-- ID,TITLE,DOCDESCRIBE,AUTHOR,PUBTIME,TAGKEY ,IMGID,VISITNUM,PRAISEYES,PRAISENO,HOTNUM,TYPENAME -->
<!-- Carousel
    ================================================== -->
<div id="myCarousel" class="carousel slide" data-ride="carousel">
	<!-- Indicators -->
	<ol class="carousel-indicators">
		<c:forEach var="topDoc" items="${weburlList}" varStatus="varstatus">
			<c:if test="${topDoc.imgurl!=null}">
				<c:if test="${varstatus.index==0}">
					<li data-target="#myCarousel" data-slide-to="${varstatus.index}"
						class="active"></li>
				</c:if>
				<c:if test="${varstatus.index!=0}">
					<li data-target="#myCarousel" data-slide-to="${varstatus.index}"></li>
				</c:if>
			</c:if>
		</c:forEach>
	</ol>
	<div class="carousel-inner" role="listbox">
		<c:forEach var="topDoc" items="${weburlList}" varStatus="varstatus">
			<c:if test="${topDoc.imgurl!=null}">
				<c:if test="${varstatus.index==0}">
					<div class="item active">
						<img class="first-slide" style="width: 80%;max-height: 450px; margin:0 auto;"
							src="${topDoc.imgurl}" alt="${topDoc.webname}">
						<div class="container">
							<div class="carousel-caption">
								<div class="hidden-xs hidden-sm"><h1>${topDoc.webname}</h1></div>
								<div class="visible-xs visible-sm">
									<h5>
										<a href="${topDoc.url}" style="color: #fff">${topDoc.webname}</a>
									</h5>
								</div>
								<%-- <p>${topDoc.text }</p> --%>
								<div class="hidden-xs hidden-sm">
									<p>
										<a class="btn btn-sm btn-danger"
											href="${topDoc.url}" role="button">查看详情</a>
									</p>
								</div>
								<%-- <div class="visible-xs visible-sm">
									<p>
										<a class="btn btn-xs btn-danger"
											href="${topDoc.url}" role="button">查看详情</a>
									</p>
								</div> --%>
							</div>
						</div>
					</div>
				</c:if>
				<c:if test="${varstatus.index!=0}">
					<div class="item">
						<img class="first-slide" style="width: 80%;max-height: 450px; margin:0 auto;"
							src="${topDoc.imgurl}" alt="${topDoc.webname}">
						<div class="container">
							<div class="carousel-caption">
								<div class="hidden-xs hidden-sm"><h1>${topDoc.webname}</h1></div>
								<div class="visible-xs visible-sm">
									<h5>
										<a href="${topDoc.url}" style="color: #fff">${topDoc.webname}</a>
									</h5>
								</div>
								<%-- <p>${topDoc.text }</p> --%>
								<div class="hidden-xs hidden-sm">
									<p>
										<a class="btn btn-sm btn-danger"
											href="${topDoc.url}" role="button">查看详情</a>
									</p>
								</div>
								<%-- <div class="visible-xs visible-sm">
									<p>
										<a class="btn btn-xs btn-danger"
											href="${topDoc.url}" role="button">查看详情</a>
									</p>
								</div> --%>
							</div>
						</div>
					</div>
				</c:if>
			</c:if>
		</c:forEach>
	</div>
	<a class="left carousel-control" href="#myCarousel" role="button"
		data-slide="prev"> <span class="glyphicon glyphicon-chevron-left"
		aria-hidden="true"></span> <span class="sr-only">Previous</span>
	</a> <a class="right carousel-control" href="#myCarousel" role="button"
		data-slide="next"> <span class="glyphicon glyphicon-chevron-right"
		aria-hidden="true"></span> <span class="sr-only">Next</span>
	</a>
</div>

<script>
	$(function(){
		// 初始化轮播
		$("#myCarousel").carousel('cycle');
	})
</script>
