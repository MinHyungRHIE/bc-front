
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<head>

    <!-- Basic Page Needs
    ================================================== -->
    <title>BucketClass-Provider-profile</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">

    <!-- CSS
    ================================================== -->
    <link rel="stylesheet" href="../css/style.css">
    <link rel="stylesheet" href="../css/main-color.css" id="colors">
    <link rel="icon" type="image/png" sizes="32x32" href="../img/favicon-32x32.png">


</head>

<body>

<!-- Wrapper -->
<div id="wrapper">
    <!-- =========================================== -->
    <!-- =========================================== -->
    <!-- =============== Tiles Header ============= -->
    <!-- =========================================== -->

    <!-- Dashboard -->
    <div id="dashboard1" style="padding-top: 0px !important;">
    <!-- =========================================== -->
    <!-- =============== Tiles SideBar ============= -->
    <!-- =========================================== -->



        <!-- Content
        ================================================== -->
        <div class="dashboard-content">

            <!-- Titlebar -->
            <div id="titlebar">
                <div class="row">
                    <div class="col-md-12">
                        <h2>마이페이지</h2>
                        <!-- Breadcrumbs -->
                        <nav id="breadcrumbs">
                            <ul>
                                <li><a href="#">Home</a></li>
                                <!--							<li><a href="#">Dashboard</a></li>-->
                                <li>마이페이지</li>
                            </ul>
                        </nav>
                    </div>
                </div>
            </div>

            <div class="row">

                <!-- Profile -->
                <div class="col-lg-6 col-md-12">
                    <div class="dashboard-list-box margin-top-0">
                        <h4 class="gray">마이페이지 변경</h4>
                        <div class="col-fs-6" align="" style="color:#c8c8c8; font-size:0.8em">가입일 : <span id="member_join_date" style="color:#c8c8c8"></span></div>
                        <div class="dashboard-list-box-static">

                            <!-- Avatar -->
                            <div class="edit-profile-photo">
                                <span> <img id="member_img1" alt="" > </span>
                                <div class="change-photo-btn">
                                    <div class="photoUpload">
                                        <span><i class="fa fa-upload"></i> 사진 업로드</span>
                                        <input type="file" class="upload" />
                                    </div>
                                </div>
                            </div>

                            <!-- 프로필 세부사항 -->
                            <div class="my-profile">

                                <label>닉네임</label>
                                <input type="text" name=${member_nickname} id="member_nickname" placeholder="닉네임을 입력하세요" value="" onKeyUp="nickValidity(this.value)" />
                                <label id = "checknick" class="check"></label>

                                <label>E-mail</label>
                                <input type="email" name=${member_email} id="member_email" placeholder="E-Mail 을 입력하세요" onKeyUp="emailValidity(this.value)" />
                                <label id = "checkemail" class="check" ></label>

                                <label>경력</label>
                                <input type="text" name=${career} id="career" placeholder="경력을 입력하세요" />

                                <label>자격증</label>
                                <input type="text" name=${certi} id="certi" placeholder="자격증을 입력하세요" />

                                <label>자기소개</label>
                                <textarea name="introduce" id="introduce" cols="30" rows="10" onKeyUp="checkByte(this.form, 500)"></textarea>

                                <p class="data_count" style="font-size: smaller"><em id="introbyte" >0</em>/250 글자</p>
                            </div>
                            <button id='buttonProfile' class='button margin-top-15'>마이페이지 수정</button>

                        </div>
                    </div>
                </div>

                <!-- Change Password -->
                <div class="col-lg-6 col-md-12">
                    <div class="dashboard-list-box margin-top-0">
                        <h4 class="gray">비밀번호 변경</h4>
                        <div class="dashboard-list-box-static">

                            <!-- Change Password -->
                            <div class="my-profile" id="my-profile-password">

                                <label class="margin-top-0">현재 비밀번호</label>
                                <input type="password" name=${member_Password} id="member_Password" placeholder="현재 비밀번호 입력"  />
                                <!--							<label id="pw-notify"></label>-->

                                <label>새 비밀번호</label>
                                <input type="password" name=${newpassword} id="newpassword" placeholder="새 비밀번호 입력" value="" onkeyup="newPwValidity(this.value)" />
                                <label id="new-pw-notify"></label>

                                <label>새 비밀번호 확인</label>
                                <input type="password" name=${confirmpassword} id="confirmpassword" placeholder="새 비밀번호 확인" value="" onkeyup="confirmPwValidity(this.value)" />
                                <label id="confirm-pw-notify"></label>

                                <button id='buttonPassword' class="button margin-top-15">비밀번호 변경</button>

                            </div>

                        </div>
                    </div>
                </div>


                <!-- Copyrights -->
                <div class="col-md-12">
                    <div class="copyrights">© 2019 BucketList. All Rights Reserved.</div>
                </div>

            </div>

            </div>
        <!-- Content / End -->
    </div>
</div>
<!-- Wrapper / End -->


<!-- Scripts ====================================================================== -->
<script type="text/javascript" src="../js/jquery-2.2.0.min.js"></script>
<script type="text/javascript" src="../js/mmenu.min.js"></script>
<script type="text/javascript" src="../js/chosen.min.js"></script>
<script type="text/javascript" src="../js/slick.min.js"></script>
<script type="text/javascript" src="../js/rangeslider.min.js"></script>
<script type="text/javascript" src="../js/magnific-popup.min.js"></script>
<script type="text/javascript" src="../js/waypoints.min.js"></script>
<script type="text/javascript" src="../js/counterup.min.js"></script>
<script type="text/javascript" src="../js/jquery-ui.min.js"></script>
<script type="text/javascript" src="../js/tooltips.min.js"></script>
<script type="text/javascript" src="../js/custom.js"></script>
<script type="text/javascript" src="../js/provider-profile.js"></script>
<script type="text/javascript" src="../js/apis.js"></script>
<script type="text/javascript" src="../js/dropzone.js"></script>
<!-- =============================================================================== -->

<!--<script src="/js/apis.js"></script>-->
<script type="text/javascript" charset="UTF-8">

    var callpassword1;
    var res;
    // =============== Loading & Parsing JSON ==================
    var mock = false;
    $(document).ready(function () {
        if (mock) {
            startXhr();
            //startXhr2();
        } else {
            res = Apis.getRequest('/list'); //getrequest로 요청보냄. return으로 response=>response.json()으로 받아짐.
            serializeData();
        }
    });

    var xhr;

    function startXhr() {
        xhr = new XMLHttpRequest();
        xhr.open("GET", "../data/member_provider.json");
        xhr.send();
        xhr.onreadystatechange = function () {
            if (xhr.readyState == 4) {
                if (xhr.status == 200) {
                    console.log("데이터 불러오기 성공");
                    serializeData();
                } else {
                    console.log("데이터 불러오기 실패");
                }
            }
        }
    };

    function serializeData() {
        // var response = xhr.responseText;
        // for(var i=0; i<response.length; i++){
        //     for (var j=0; j<response[i].length; j++){
        //         if(typeof response[i][j] ){
        //         }
        //     }
        // }
        var profileData = JSON.parse(xhr.responseText);//JSON.parse(res)
        // res에 담긴(promise object를 json으로 반환 해준 값)값을 profileData에 담아줌.


        showServiceItem(profileData);
    };

    // =============== Loading & Parsing JSON / END ==================
    // ==================== Tag & Value Mapping =======================
    var member_id;

    function showServiceItem(profileData) {
        console.log(profileData);

        if (mock) {
            member_id = 0;
        } else {
            serviceNo = '${service-id}';
        }

        insertValue('member_nickname', profileData[member_id].member_nickname);
        insertValue('member_email', profileData[member_id].member_email);
        insertValue('career', profileData[member_id].career);
        insertValue('certi', profileData[member_id].certi);
        insertValue('introduce', profileData[member_id].introduce);

        insertText('member_join_date', profileData[member_id].member_join_date);

        insertProfileImgResource('member_img', profileData[member_id].member_img);

        callPW(profileData[member_id].member_password);
    };

    // 1) 단일 값 맵핑
    function insertValue(tag, column) {
        if (column == null) {
            document.getElementById(tag).setAttribute('placeholder', '입력하세요');
        } else {
            document.getElementById(tag).setAttribute('value', column);
        }
    };

    function insertText(tag, column) {
        document.getElementById(tag).appendChild(document.createTextNode(column));
    };

    // 2) 프로필 이미지 소스 맵핑 //로직 다시 짜보기(ClassName :콜랙션으로 됨)
    function insertProfileImgResource(tag, column) {

        //document.getElementsByClassName(tag).setAttribute('src', column);
        document.getElementById(tag).setAttribute('src', column);
        var id2 = (tag + "1");
        document.getElementById(id2).setAttribute('src', column);
        // const imgTag = document.getElementById(tag);
        // const imgItem = document.createElement('img');
        // imgItem.setAttribute('src', column);
        // imgTag.appendChild(imgItem);
    };

    // // 3) 비밀번호 값 불러오기
    function callPW(column) {
        callpassword1 = column;


        return callpassword1;
    }
    // ==================== Tag & Data Mapping / END =======================


    //===================== SideBar Button Mapping Function====================

    //addListing click-> MyListing page
    document.getElementById('sideBarMyListing').addEventListener('click', clickMyListing);

    function clickMyListing(){
        var mylistingpage = Apis.getRequest('/???');
        //url로 경로를 지정하면, return 값이 response.json()으로 온 값

        //다시 반환된 그 값이 뭘까...


    }

</script>
</body>

</html>
