<%@page import="com.care.mvc.care.model.vo.Care"%>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<section id="matchPage">
	<h2>
		<i class="far fa-envelope"></i> 검색하신 요양보호사님께 문의해보세요
	</h2>
	<div id="searchResult">
	</div>

	<button id="backBtn" onclick='location.replace("${pageContext.request.contextPath}/match/search");'>새로고침</button>
</section>

<script>
    $('document').ready(function () {
        console.log('doc loaded');
    });

    function loadProf(memId) {
        const url = "${pageContext.request.contextPath}/check/profile?memId=" + memId;
        const specs = "width = 800px, height = 600px, top=200, left=200, resizable=yes";
        window.open(url, "matched profile", specs);
    }
</script>

<script>
 $(function() {	 
     $("#searchBtn").on("click", function(e) {
		e.preventDefault(); // 현재 이벤트의 기본 동작을 중단한다.
		
		var parameters = "";
		
		$("input:checked").each(function(e,v){ // (index, elem)
			parameters += "&" + $(v).prop("name")  + "=" + $(v).val(); 
		});
		
		parameters = removeFirstLetter(encodeURI(parameters));
		
		$.ajax({
            type: "post",
            url: "${pageContext.request.contextPath}/match/search",
            data: parameters,
            success: function(jArray) {	
				console.log("jArray : " + jArray);
	
				$('#searchResult').empty();
			
                $.each(jArray, function(i) {
                	let memId = jArray[i].memId;
                	let memName = jArray[i].memName
                	let imgNameSav = jArray[i].imgNameSav;
                	let url = "${pageContext.request.contextPath}/msg/write?memId=" + memId;
                	
					$('#searchResult').prepend(
						'<div class="profile">' + 
						'<img class="profPic" onclick="loadProf(' + "'" + memId + "'" + ');"' + 
						 		'src="${pageContext.request.contextPath}/upload/carephoto/' + imgNameSav + '" alt="">' + 
					    '<h5>' + memName + '(' +memId + ')</h5>' +
					    '<button class="sendMsg" onclick="location.href='+ "'" + url + "'" + '">쪽지보내기</button>' +
						'</div>');
	        	});	
            },
            error: function(e) {
                console.log(e);
            }                  
        });
	});
     
	function removeFirstLetter(str) {
		if(str == null || str.length < 1) {
	
			return str;
		}
		
		str = str.substring(1, str.length);
		
		return str;
	};
});
</script>