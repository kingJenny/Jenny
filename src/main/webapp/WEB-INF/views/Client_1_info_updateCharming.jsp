<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>


<!---------------------------------- header end ---------------------------------->
   <section id="fh5co-testimonials" data-section="love">
      <div class="container">
         <div class="row">
         </div>
      </div>
   </section>



   <!--  게시판상세페이지 -->

	<section id="fh5co-intro">
		<div class="container">
			<div class=" section-heading text-center">
				<div align="center"
					style="width: 70%; height: auto; border: 1px solid #F1D9F7; border-radius: 1em; margin: 0 auto; margin-top: 50px; padding-bottom: 50px;">

					<p style="padding-top: 40px; width: 300px; margin: 0 auto;">
						<font size="50pt"  style="color:#8D08AE;">나의 특징</font>
					</p><br>
						<div class="grid cols-1 cols-m-2 form whiteForm factForm">
						<section>
							<div
								style="height: auto; width: 100%; padding: 40px 0px 40px 0px; text-align: content; border-bottom: 1px solid #F1D9F7; border-top: 1px solid #F1D9F7;">
								<div style="text-align: center;">
							<c:forEach items="${charmingPointList}" var="list">
							<div class="ui checkbox" style="width:300px; height:50px; font-size:30px;color:#8D08AE;">
									<input type="checkbox" name="clientCharmingPointList" value='${list.charmingPointIdx}' style="width:150px; height:50px; font-size:30px;color:#8D08AE;"> 
									<label>${list.charmingPointName}</label>
									
							</div>
							</c:forEach>
							<div class="row" style="display: none">	
						   </div>
								</div>
							</div> <br>
								<button class="ui purple button" type="submit" >저장</button>
								<button class="ui purple button"  onclick="location.href='Client_0_main'">마이페이지</button>
						</section>
						</div>
					</div>
				</div>
			</div>
	</section>
<script>
   $(document).ready(function() {


	   var cCharmingPointList= []
	   <c:forEach items="${clientCharmingPointList}" var="clientCharmingPointList">
	   cCharmingPointList.push('${clientCharmingPointList.charmingPointIdx}')
	   </c:forEach>
   
	   
	   $('input:checkbox[name="clientCharmingPointList"]').each(function() {
		     if(cCharmingPointList.includes(this.value)){ //값 비교
		            this.checked = true; //checked 처리

		      }
		});

	  $('.sum').click(function(){
		  var arr=[];
		  $('input[name="clientCharmingPointList"]:checked').each(function(i){arr.push($(this).val())});
		  console.log(arr);
		  location.href='updateClientCharmingPoint?arr='+arr;
	  })
   });
   </script>
	
	<!-- 내정보 -->

	<!---------------------------------- Footer start ---------------------------------->
