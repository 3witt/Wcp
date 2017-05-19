<%@ page language="java" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="/view/conf/farmtag.tld" prefix="PF"%>
<style>
<!--
.farm_tree_flag {
	color: #c3c3c3;
	text-decoration: none;
}

.farm_tree_h {
	color: #c3c3c3;
}

.farm_tree_s {
	color: #e2e2e2;
}
-->
</style>
<div class="widget-box shadow-box">
	<div class="title">
		<h3>
			<i class="glyphicon glyphicon-tree-conifer"></i> 分类
		</h3>
	</div>
	<div class="stream-list p-stream">
		<div class="panel-body">
			<ul class="doctypeUl">
				<c:forEach var="node" items="${typesons}">
					<c:if test="${node.parentid=='NONE'}">
						<li>
							<h5 class="showLableType">
								<a href="webtype/view${node.id}/Pub1.html">${node.name}</a>
								<c:if test="${node.num>0}">
									<span style="color: #D9534F; font-weight: bold;">${node.num}</span>
								</c:if>
							</h5>
							<ul>
								<c:forEach var="node1" items="${typesons}">
									<c:if test="${node1.parentid==node.id}">
										<li>
											<h5 class="showLableType">
												<a href="webtype/view${node1.id}/Pub1.html">${node1.name}</a>
												<c:if test="${node1.num>0}">
													<span style="color: #D9534F; font-weight: bold;">${node1.num}</span>
												</c:if>
												<!-- <a class="glyphicon glyphicon-chevron-down farm_tree_flag"></a> -->
											</h5>
											<ul>
												<c:forEach var="node2" items="${types}">
													<c:if test="${node2.parentid==node1.id}">
														<li>
															<h5 class="showLableType">
																<a id="${node2.id}"> ${node2.name}</a>
																<c:if test="${node2.num>0}">
																	<span style="color: #D9534F; font-weight: bold;">${node2.num}</span>
																</c:if>
															</h5>
														</li>
													</c:if>
												</c:forEach>
											</ul>
										</li>
									</c:if>
								</c:forEach>
							</ul>
						</li>
					</c:if>
				</c:forEach>
			</ul>
		</div>
	</div>
</div>





<%-- <div class="widget-box shadow-box">
	<div class="title">
		<h3>
			<i class="glyphicon glyphicon-tree-conifer"></i> 分类
		</h3>
	</div>
	<div class="stream-list p-stream">
		<c:forEach items="${typesons}" var="node">
			<c:if test="${node.parentid=='NONE'}">
				<div class="col-sm-3 docTypeBox">
					<h1>
						<a href="webtype/view${node.id}/Pub1.html"> ${node.name} <c:if
								test="${node.num>0}">
								<span style="color: #D9534F; font-weight: bold;">${node.num}</span>
							</c:if>
						</a>
					</h1>
					<ul>
						<c:forEach items="${typesons}" var="node1">
							<c:if test="${node1.parentid==node.id}">
								<li><a href="webtype/view${node1.id}/Pub1.html">${node1.name}</a></li>
							</c:if>
						</c:forEach>
					</ul>
				</div>
			</c:if>
		</c:forEach>
	</div>
</div> --%>



