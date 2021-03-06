<%@page import="com.care.mvc.common.util.PageInfo"%>
<%@page import="com.care.mvc.message.model.vo.SendMessage"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <link rel="stylesheet" href="../../css/style.css">
<%

	ArrayList<SendMessage> list = (ArrayList<SendMessage>)request.getAttribute("list");
	
	PageInfo info = (PageInfo)request.getAttribute("pageInfo");

%>
<%@ include file="/views/common/header.jsp" %>
<section>
    <div id="msg_container">
        <form action="<%= request.getContextPath()%>/msg/send" method="get" style="margin: 0px;">
            <div id="msg_1">
                <!-- <h1>CAREPOOL 쪽지</h1> -->
            </div>
            <div id="msg_2">
                <div id="msg_2-1">
                    <div id="write_msg">
                        <a href="<%= request.getContextPath()%>/msg/write">쪽지쓰기</a>
                    </div>
                    <div>
                        <a href="<%= request.getContextPath()%>/msg/get?loginMember=<%= loginMember.getMemId() %>">
                            받은쪽지함
                        </a>
                    </div>
                    <div>
                        <a href="<%= request.getContextPath()%>/msg/send?loginMember=<%= loginMember.getMemId() %>">
                            보낸쪽지함
                        </a>
                    </div>
                </div>
                <div id="msg_2-2">
                    <div id="msg_2-2-header">
                        <input type="text" id="find_id" name="find_id" placeholder="아이디 검색 : ">
                        <input type="button" name="search_id" value="검색" onclick="search()">
                    </div>
                    <div id="msg_2-2-section">
                        <table id="msg_table">
                            <tr>
                                <td id="td-1" style="width: 150px;"><b>번호</b></td>
                                <td id="td-1" style="width: 150px;"><b>받은사람</b></td>
                                <td id="td-1"><b>내용</b>	</td>
                                <td id="td-1" style="width: 150px;"><b>파일</b></td>
                                <td id="td-1" style="width: 200px;"><b>보낸날짜</b></td>
                                <td id="td-1" style="width: 30px;"><b>-</b></td>
                            </tr>
                             <% if(list.isEmpty()) { %>
                            <tr>
                                <td id="td-2" colspan="6">
                                    보낸 메세지가 존재하지 않습니다.
                                </td>
                            </tr>
                            <% }else { 
                            	for(int i=0; i< list.size(); i++){
                            %>								
                            <tr>
                                <td id="td-2" >
										<b><%=list.get(i).getRowNum()%></b>
									</td>
                                <td id="td-2">
									<a id="checkPatProfile" onclick="checkprofile('<%=list.get(i).getRec_id()%>')" style="cursor:pointer">
										<b id="sendId"><%=list.get(i).getRec_id()%></b>
									</a>
								</td>
                                <td id="td-2">
                                    <a href="<%=request.getContextPath()%>/sendMsg/details?send_no=<%= list.get(i).getSend_no()%>">
                                        <b><%=list.get(i).getSend_body()%></b>
                                    </a>
                                </td>
                                <td id="td-2">
                                   	<a href="#">
                                   	<%if(list.get(i).getImgs().size() != 0) { %>
										<% if(list.get(i).getImgs().get(0).getSend_img_name_org() != null) { %>
											<b><img src="<%=request.getContextPath()%>/image/filefigure.png" style="width:20px"></b>
										<% } else { %> 
											<b>파일 없음</b>
										<% } %>
									<% } %>
									</a>
                                </td>
                                
                                <td id="td-2">
                                    <b><%=list.get(i).getSend_date()%></b>
                                </td>
                                <td id="td-2" style="width: 30px;">
										<input type="button" value="삭제" onclick="delete_row('<%=list.get(i).getSend_no()%>')" name="delete" style="color:red;">
									</td>
                            </tr>
                                <%}
                        } %>
                        </table>
						</div>
                    </div>
                </div>
            </form>
           <div id="msg_2-2-footer">
			<div id="pageBar">
				<!-- 맨 처음으로 -->
				<button onclick="location.href='<%= request.getContextPath() %>/msg/send?send_page=1'">&lt;&lt;</button>
				<!-- 이전 페이지로 -->
				<button onclick="location.href='<%= request.getContextPath() %>/msg/send?send_page=<%= info.getPrvePage()%>'">&lt;</button>
				
				<!--  10개 페이지 목록 -->
				
				<% for(int p = info.getStartPage(); p <= info.getEndPage(); p++) { %>
					<% if(p == info.getCurrentPage()) { %>
						<button disabled><%= p %></button>
					<% }else { %>
						<button onclick="location.href='<%= request.getContextPath()%>/msg/send?send_page=<%= p %>'"><%= p %></button>
					<% } %>
				<% } %>
				<!-- 다음 페이지로 -->
				<button onclick="location.href='<%= request.getContextPath()%>/msg/send?send_page=<%= info.getNextPage() %>'">&gt;</button>
				<!-- 맨 끝으로 -->
				<button onclick="location.href='<%= request.getContextPath()%>/msg/send?send_page=<%= info.getMaxPage() %>'">&gt;&gt;</button>
			</div>
		</div>
        </div>
    </section>
    <script>
	function search(){
		var id = document.getElementById('find_id').value;
		location.href="<%= request.getContextPath()%>/search/sendId?Id="+id
	}

	function checkprofile(id){
		url = "<%=request.getContextPath()%>/check/profile?memId=" + id;
		specs = "width = 800px, height = 600px, top=200, left=200, resizable=yes";
		window.open(url, "", specs);
		return false;
	} 
	
    function delete_row(no){
		if(confirm("쪽지를 삭제하시겠습니까 ?")){
			location.href="<%=request.getContextPath()%>/delete/send?SendNum=" + no
		}; 
    };
    
    </script>
    <%@ include file="/views/common/footer.jsp" %>