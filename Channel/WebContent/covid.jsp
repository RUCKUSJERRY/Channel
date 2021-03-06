<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<% request.setCharacterEncoding("UTF-8"); %>
<% response.setContentType("text/html; charset=UTF-8"); %>


<!DOCTYPE html>
<html>
<head>
<link rel="icon" type="image/png" sizes="16x16"  href="resources/image/channel_favicon.png">
<meta charset="UTF-8">
<title>CHANNEL / Covid / ${loginDto.member_name }</title>

<script src="http://code.jquery.com/jquery-latest.js"></script>
<script src="covidAjax.js"></script>

<link rel="shortcut icon" href="#">
<style type="text/css">


table {
	width: 450px;
	height: 330px;
	position: absolute;
	top: 170px;
	left: 950px;
	margin: 10px;
	border-spacing: 3 5px;
	box-shadow: 0 4px 6px rgba(50, 50, 93, 0.11), 0 1px 3px rgba(0, 0, 0, 0.08);
	
}

#map_img {
	position: absolute;
	top: 100px;
	left: 230px;
	margin: 0px;
}

input{
	text-align: center;
	border: none;
	background-color: transparent;
	font-weight: bold;

}

#input2{
	font-size: 8pt;
	text-align: center;
}


#seoul{
	width: 55px;
	height: 50px;
	position: absolute;
	top: 220px;
	left:465px;
	text-align: center;
	font-weight: bold;
	margin: 0px;
	border: 1px solid;
	border-spacing: 0px;
	font-size: 8pt;
	background-color: #FFFFF0;
	cursor: pointer;
	padding: 2px 4px;
	box-shadow: 2px 2px 4px rgb(100 100 100 / 20%);
	border-radius: 2px;
	
}

#gangwon{
	width: 50px;
	height: 50px;
	position: absolute;
	top: 190px;
	left:565px;
	text-align: center;
	font-weight: bold;
	margin: 0px;
	border: 1px solid;
	border-spacing: 0px;
	font-size: 8pt;
	background-color: #FFFFF0;
	cursor: pointer;
	padding: 2px 4px;
	box-shadow: 2px 2px 4px rgb(100 100 100 / 20%);
	border-radius: 2px;
	
}

#gyeonggi{
	width: 50px;
	height: 50px;
	position: absolute;
	top: 160px;
	left:420px;
	text-align: center;
	font-weight: bold;
	margin: 0px;
	border: 1px solid;
	border-spacing: 0px;
	font-size: 8pt;
	background-color: #FFFFF0;
	cursor: pointer;
	padding: 2px 4px;
	box-shadow: 2px 2px 4px rgb(100 100 100 / 20%);
	border-radius: 2px;
	
}

#incheon{
	width: 55px;
	height: 55px;
	position: absolute;
	top: 220px;
	left:355px;
	text-align: center;
	font-weight: bold;
	margin: 2px;
	border: 1px solid;
	font-size: 8pt;
	background-color: #FFFFF0;
	cursor: pointer;
	padding: 2px 4px;
	box-shadow: 2px 2px 4px rgb(100 100 100 / 20%);
	border-radius: 2px;
	line-height: 3ex;
}

#sejong{
	width: 55px;
	height: 55px;
	position: absolute;
	top: 300px;
	left:440px;
	text-align: center;
	font-weight: bold;
	margin: 2px;
	border: 1px solid;
	font-size: 8pt;
	background-color: #FFFFF0;
	cursor: pointer;
	padding: 2px 4px;
	box-shadow: 2px 2px 4px rgb(100 100 100 / 20%);
	border-radius: 2px;
	line-height: 3ex;
}

#chungnam{
	width: 55px;
	height: 55px;
	position: absolute;
	top: 330px;
	left:370px;
	text-align: center;
	font-weight: bold;
	margin: 2px;
	border: 1px solid;
	font-size: 8pt;
	background-color: #FFFFF0;
	cursor: pointer;
	padding: 2px 4px;
	box-shadow: 2px 2px 4px rgb(100 100 100 / 20%);
	border-radius: 2px;
	line-height: 3ex;
}

#chungbuk{
	width: 55px;
	height: 55px;
	position: absolute;
	top: 250px;
	left:540px;
	text-align: center;
	font-weight: bold;
	margin: 2px;
	border: 1px solid;
	font-size: 8pt;
	background-color: #FFFFF0;
	cursor: pointer;
	padding: 2px 4px;
	box-shadow: 2px 2px 4px rgb(100 100 100 / 20%);
	border-radius: 2px;
	line-height: 3ex;
}

#daejeon{
	width: 55px;
	height: 55px;
	position: absolute;
	top: 320px;
	left:510px;
	text-align: center;
	font-weight: bold;
	margin: 2px;
	border: 1px solid;
	font-size: 8pt;
	background-color: #FFFFF0;
	cursor: pointer;
	padding: 2px 4px;
	box-shadow: 2px 2px 4px rgb(100 100 100 / 20%);
	border-radius: 2px;
	line-height: 3ex;
}

#jeonbuk{
	width: 55px;
	height: 55px;
	position: absolute;
	top: 410px;
	left:445px;
	text-align: center;
	font-weight: bold;
	margin: 2px;
	border: 1px solid;
	font-size: 8pt;
	background-color: #FFFFF0;
	cursor: pointer;
	padding: 2px 4px;
	box-shadow: 2px 2px 4px rgb(100 100 100 / 20%);
	border-radius: 2px;
	line-height: 3ex;
}

#jeonnam{
	width: 55px;
	height: 55px;
	position: absolute;
	top: 490px;
	left:370px;
	text-align: center;
	font-weight: bold;
	margin: 2px;
	border: 1px solid;
	font-size: 8pt;
	background-color: #FFFFF0;
	cursor: pointer;
	padding: 2px 4px;
	box-shadow: 2px 2px 4px rgb(100 100 100 / 20%);
	border-radius: 2px;
	line-height: 3ex;
}

#gwangju{
	width: 55px;
	height: 55px;
	position: absolute;
	top: 480px;
	left:455px;
	text-align: center;
	font-weight: bold;
	margin: 2px;
	border: 1px solid;
	font-size: 8pt;
	background-color: #FFFFF0;
	cursor: pointer;
	padding: 2px 4px;
	box-shadow: 2px 2px 4px rgb(100 100 100 / 20%);
	border-radius: 2px;
	line-height: 3ex;
}

#gyeongbuk{
	width: 55px;
	height: 55px;
	position: absolute;
	top: 290px;
	left:630px;
	text-align: center;
	font-weight: bold;
	margin: 2px;
	border: 1px solid;
	font-size: 8pt;
	background-color: #FFFFF0;
	cursor: pointer;
	padding: 2px 4px;
	box-shadow: 2px 2px 4px rgb(100 100 100 / 20%);
	border-radius: 2px;
	line-height: 3ex;
}

#gyeongnam{
	width: 55px;
	height: 55px;
	position: absolute;
	top: 450px;
	left:545px;
	text-align: center;
	font-weight: bold;
	margin: 2px;
	border: 1px solid;
	font-size: 8pt;
	background-color: #FFFFF0;
	cursor: pointer;
	padding: 2px 4px;
	box-shadow: 2px 2px 4px rgb(100 100 100 / 20%);
	border-radius: 2px;
	line-height: 3ex;
}

#daegu{
	width: 55px;
	height: 55px;
	position: absolute;
	top: 365px;
	left:615px;
	text-align: center;
	font-weight: bold;
	margin: 2px;
	border: 1px solid;
	font-size: 8pt;
	background-color: #FFFFF0;
	cursor: pointer;
	padding: 2px 4px;
	box-shadow: 2px 2px 4px rgb(100 100 100 / 20%);
	border-radius: 2px;
	line-height: 3ex;
}

#ulsan{
	width: 55px;
	height: 55px;
	position: absolute;
	top: 445px;
	left:680px;
	text-align: center;
	font-weight: bold;
	margin: 2px;
	border: 1px solid;
	font-size: 8pt;
	background-color: #FFFFF0;
	cursor: pointer;
	padding: 2px 4px;
	box-shadow: 2px 2px 4px rgb(100 100 100 / 20%);
	border-radius: 2px;
	line-height: 3ex;
}

#busan{
	width: 55px;
	height: 55px;
	position: absolute;
	top: 500px;
	left:615px;
	text-align: center;
	font-weight: bold;
	margin: 2px;
	border: 1px solid;
	font-size: 8pt;
	background-color: #FFFFF0;
	cursor: pointer;
	padding: 2px 4px;
	box-shadow: 2px 2px 4px rgb(100 100 100 / 20%);
	border-radius: 2px;
	line-height: 3ex;
}

#jeju{
	width: 55px;
	height: 55px;
	position: absolute;
	top: 640px;
	left:360px;
	text-align: center;
	font-weight: bold;
	margin: 2px;
	border: 1px solid;
	font-size: 8pt;
	background-color: #FFFFF0;
	cursor: pointer;
	padding: 2px 4px;
	box-shadow: 2px 2px 4px rgb(100 100 100 / 20%);
	border-radius: 2px;
	line-height: 3ex;
}



</style>
</head>
<body>

<%@ include file="common.jsp" %>

	<!-- 
		<a href="https://api.corona-19.kr/korea/?serviceKey=y95ANMI7Wqm8rhOXSoF3auBHVl2UKjndY">
			????????? ?????????
		</a>
		<br/><br/>
		<a href="http://openapi.data.go.kr/openapi/service/rest/Covid19/getCovid19InfStateJson?serviceKey=dMj3mB4JRQikFiWG9okvWpFVdKcxxGtkVrJOMFTC7gkX41kdn%2BW59RYtJAdY2qyOYnIDKMtFWPvpDz1bdBGKOQ%3D%3D">
			???????????????
		</a>
		<br/><br/>
		<a href="http://openapi.data.go.kr/openapi/service/rest/Covid19/getCovid19SidoInfStateJson?serviceKey=dMj3mB4JRQikFiWG9okvWpFVdKcxxGtkVrJOMFTC7gkX41kdn%2BW59RYtJAdY2qyOYnIDKMtFWPvpDz1bdBGKOQ%3D%3D">
			???/??? ????????????
		</a>
		<br/><br/><br/>
	-->
	<!-- 
	
			<accDefRate>1.3660181291</accDefRate>
			 ?????? ?????????
			<accExamCnt>7355964</accExamCnt>
			 ?????? ?????????
			<accExamCompCnt>7252832</accExamCompCnt>
			 ?????? ?????? ?????????
			<careCnt>6767</careCnt>
			 ????????? ?????? ??? 
			<clearCnt>90611</clearCnt>
			 ???????????? ???
			<createDt>2021-03-22 10:04:58.004</createDt>
			 ??????????????????
			<deathCnt>1697</deathCnt>
			 ????????? ???
			<decideCnt>99075</decideCnt>
			 ????????? ???
			<examCnt>103132</examCnt>
			 ???????????? ??? 
			<resutlNegCnt>7153757</resutlNegCnt>
			 ?????? ?????? ??? 
			<seq>456</seq>
			 ????????? ????????? (???????????? ?????????)
			<stateDt>20210322</stateDt>
			 ?????????
			<stateTime>00:00</stateTime>
			 ????????????
			<updateDt>null</updateDt>
			 ??????????????????
			 
			 ---------------------------------------------------------------------
			 
			<createDt>?????????????????? </createDt>
			<deathCnt>????????? ???</deathCnt>
			<defCnt>????????? ???</defCnt>
			<gubun>?????????(??????)</gubun>
			<gubunCn>?????????(?????????)?????????</gubunCn>
			<gubunEn>?????????(??????)Lazaretto</gubunEn>
			<incDec>???????????? ?????????</incDec>
			<isolClearCnt>?????? ?????? ???</isolClearCnt>
			<isolIngCnt>????????? ?????????</isolIngCnt>
			<localOccCnt>???????????? ???</localOccCnt>
			<overFlowCnt>???????????? ???</overFlowCnt>
			<qurRate>10????????? ?????????</qurRate>
			<seq>???????????????(?????? ????????? ???????????? ?????????)</seq>
			<stdDay>????????????</stdDay>
			<updateDt>??????????????????</updateDt>

	 -->
	 	<img src="resources/image/covidmap.png" id="map_img" width="600" height="600">
	
		<table>
			<tr>
				<td colspan="5" bgcolor="FDF5E6" align="left" style="padding-left: 20px;"><b>????????????</b></td>
				<td colspan="6" bgcolor="FFFAFA" align="right" style="padding-right: 15px;">  <input type="text" id="stateDt" style="text-align: right;" readonly>
			</tr>
			
		
			<tr>
				<td colspan="5" bgcolor="FDF5E6" align="left" style="padding-left: 20px;"><b>?????? ?????????</b></td>
				<td colspan="6" bgcolor="FFFAFA" align="right" style="padding-right: 15px;">  <input type="text" id="decideCnt" style="text-align: right;" readonly>
			</tr>
						
			<tr>
				<td colspan="5" bgcolor="FDF5E6" align="left" style="padding-left: 20px;"><b>?????? ?????????</b></td>
			
				<td colspan="6" bgcolor="FFFAFA" align="right" style="padding-right: 15px;">  <input type="text" id="deathCnt" style="text-align: right;" readonly>
			</tr>
			
			<tr>
				<td colspan="5" bgcolor="FDF5E6" align="left" style="padding-left: 20px;"><b>?????? ?????????</b></td>
			
				<td colspan="6" bgcolor="FFFAFA" align="right" style="padding-right: 15px;">  <input type="text" id="careCnt" style="text-align: right;" readonly>
			</tr>
			
			<tr>
				<td colspan="5" bgcolor="FDF5E6" align="left" style="padding-left: 20px;"><b>?????? ?????????</b></td>
			
				<td colspan="6" bgcolor="FFFAFA" align="right" style="padding-right: 15px;">  <input type="text" id="accExamCnt" style="text-align: right;" readonly>
			</tr>
			
			<tr>
				<td colspan="5" bgcolor="FDF5E6" align="left" style="padding-left: 20px;"><b>???????????? ???</b></td>
			
				<td colspan="6" bgcolor="FFFAFA" align="right" style="padding-right: 15px;">  <input type="text" id="examCnt"  style="text-align: right;" readonly>
			</tr>
			
			<tr>
				<td colspan="5" bgcolor="FDF5E6" align="left" style="padding-left: 20px;"><b>?????? ?????? ???</b></td>
			
				<td colspan="6" bgcolor="FFFAFA" align="right" style="padding-right: 15px;">  <input type="text" id="resultNegCnt" style="text-align: right;" readonly>
			</tr>
			
			<tr>
				<td colspan="5" bgcolor="FDF5E6" align="left" style="padding-left: 20px;"><b>?????? ?????????</b></td>
			
				<td colspan="6" bgcolor="FFFAFA" align="right" style="padding-right: 15px;">  <input type="text" id="accDefRate" style="text-align: right;" readonly>
			</tr>
			
		
			
		</table>
	
		<table id="seoul">
			<tr>
				<td>??????</td>
				<!-- <input style="width: 38px; height: 13px; font-size: 8pt;" type="text" id="gubun" readonly> -->
			</tr>
			
			<tr>
				<td><input style="width: 38px; height: 13px; font-size: 8pt;" type="text" id="defCnt17" disabled="disabled"></td>
			</tr>
			
			<tr>
				<td><input style="width: 38px; height: 13px; font-size: 8pt;" type="text" id="incDec17" disabled="disabled"></td>
			</tr>
		</table>
		
		<table id="gangwon">
			<tr>
				<td>??????</td>
			</tr>
			
			
			<tr>
				<td><input style="width: 38px; height: 13px; font-size: 8pt;" type="text" id="defCnt8" disabled="disabled"></td>
			</tr>
			
			
			<tr>
				<td><input style="width: 38px; height: 13px; font-size: 8pt;" type="text" id="incDec8" disabled="disabled"></td>
			</tr>
		</table>

		<table id="gyeonggi">
			<tr>
				<td>??????</td>
			</tr>
			
			<tr>
				<td><input style="width: 38px; height: 13px; font-size: 8pt;" type="text" id="defCnt9" disabled="disabled"></td>
			</tr>
			
			<tr>
				<td><input style="width: 38px; height: 13px; font-size: 8pt;" type="text" id="incDec9" disabled="disabled"></td>
			</tr>
		</table>
		
		
		<table id="incheon">
			<tr>
				<td>??????</td>
			</tr>
			
			<tr>
				<td><input style="width: 38px; height: 13px; font-size: 8pt;" type="text" id="defCnt14" disabled="disabled"></td>
			</tr>
			
			<tr>
				<td><input style="width: 38px; height: 13px; font-size: 8pt;" type="text" id="incDec14" disabled="disabled"></td>
			</tr>
		</table>
		
		<table id="sejong">
			<tr>
				<td>??????</td>
			</tr>
			
			<tr>
				<td><input style="width: 38px; height: 13px; font-size: 8pt;" type="text" id="defCnt10" disabled="disabled"></td>
			</tr>
			
			<tr>
				<td><input style="width: 38px; height: 13px; font-size: 8pt;" type="text" id="incDec10" disabled="disabled"></td>
			</tr>
		</table>
		
		<table id="chungnam">
			<tr>
				<td>??????</td>
			</tr>
			
			<tr>
				<td><input style="width: 38px; height: 13px; font-size: 8pt;" type="text" id="defCnt6" disabled="disabled"></td>
			</tr>
			
			<tr>
				<td><input style="width: 38px; height: 13px; font-size: 8pt;" type="text" id="incDec6" disabled="disabled"></td>
			</tr>
		</table>
		
		<table id="chungbuk">
			<tr>
				<td>??????</td>
			</tr>
			
			<tr>
				<td><input style="width: 38px; height: 13px; font-size: 8pt;" type="text" id="defCnt7" disabled="disabled"></td>
			</tr>
			
			<tr>
				<td><input style="width: 38px; height: 13px; font-size: 8pt;" type="text" id="incDec7" disabled="disabled"></td>
			</tr>
		</table>
		
		<table id="daejeon">
			<tr>
				<td>??????</td>
			</tr>
			
			<tr>
				<td><input style="width: 38px; height: 13px; font-size: 8pt;" type="text" id="defCnt12" disabled="disabled"></td>
			</tr>
			
			<tr>
				<td><input style="width: 38px; height: 13px; font-size: 8pt;" type="text" id="incDec12" disabled="disabled"></td>
			</tr>
		</table>
		
		<table id="jeonbuk">
			<tr>
				<td>??????</td>
			</tr>
			
			<tr>
				<td><input style="width: 38px; height: 13px; font-size: 8pt;" type="text" id="defCnt5" disabled="disabled"></td>
			</tr>
			
			<tr>
				<td><input style="width: 38px; height: 13px; font-size: 8pt;" type="text" id="incDec5" disabled="disabled"></td>
			</tr>
		</table>
		
		<table id="jeonnam">
			<tr>
				<td>??????</td>
			</tr>
			
			<tr>
				<td><input style="width: 38px; height: 13px; font-size: 8pt;" type="text" id="defCnt4" disabled="disabled"></td>
			</tr>
			
			<tr>
				<td><input style="width: 38px; height: 13px; font-size: 8pt;" type="text" id="incDec4" disabled="disabled"></td>
			</tr>
		</table>
		
		<table id="gwangju">
			<tr>
				<td>??????</td>
			</tr>
			
			<tr>
				<td><input style="width: 38px; height: 13px; font-size: 8pt;" type="text" id="defCnt13" disabled="disabled"></td>
			</tr>
			
			<tr>
				<td><input style="width: 38px; height: 13px; font-size: 8pt;" type="text" id="incDec13" disabled="disabled"></td>
			</tr>
		</table>
		
		<table id="gyeongbuk">
			<tr>
				<td>??????</td>
			</tr>
			
			<tr>
				<td><input style="width: 38px; height: 13px; font-size: 8pt;" type="text" id="defCnt3" disabled="disabled"></td>
			</tr>
			
			<tr>
				<td><input style="width: 38px; height: 13px; font-size: 8pt;" type="text" id="incDec3" disabled="disabled"></td>
			</tr>
		</table>
		
		<table id="gyeongnam">
			<tr>
				<td>??????</td>
			</tr>
			
			<tr>
				<td><input style="width: 38px; height: 13px; font-size: 8pt;" type="text" id="defCnt2" disabled="disabled"></td>
			</tr>
			
			<tr>
				<td><input style="width: 38px; height: 13px; font-size: 8pt;" type="text" id="incDec2" disabled="disabled"></td>
			</tr>
		</table>
		
		<table id="daegu">
			<tr>
				<td>??????</td>
			</tr>
			
			<tr>
				<td><input style="width: 38px; height: 13px; font-size: 8pt;" type="text" id="defCnt15" disabled="disabled"></td>
			</tr>
			
			<tr>
				<td><input style="width: 38px; height: 13px; font-size: 8pt;" type="text" id="incDec15" disabled="disabled"></td>
			</tr>
		</table>
		
		<table id="ulsan">
			<tr>
				<td>??????</td>
			</tr>
			
			<tr>
				<td><input style="width: 38px; height: 13px; font-size: 8pt;" type="text" id="defCnt11" disabled="disabled"></td>
			</tr>
			
			<tr>
				<td><input style="width: 38px; height: 13px; font-size: 8pt;" type="text" id="incDec11" disabled="disabled"></td>
			</tr>
		</table>
		
		<table id="busan">
			<tr>
				<td>??????</td>
			</tr>
			
			<tr>
				<td><input style="width: 38px; height: 13px; font-size: 8pt;" type="text" id="defCnt16" disabled="disabled"></td>
			</tr>
			
			<tr>
				<td><input style="width: 38px; height: 13px; font-size: 8pt;" type="text" id="incDec16" disabled="disabled"></td>
			</tr>
		</table>
		
		<table id="jeju">
			<tr>
				<td>??????</td>
			</tr>
			
			<tr>
				<td><input style="width: 38px; height: 13px; font-size: 8pt;" type="text" id="defCnt1" disabled="disabled"></td>
			</tr>
			
			<tr>
				<td><input style="width: 38px; height: 13px; font-size: 8pt;" type="text" id="incDec1" disabled="disabled"></td>
			</tr>
		</table>
		
		
</body>
</html>



















