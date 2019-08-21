//////////////////////////////////////////내 프로필 수정관련 함수///////////////////////////////////////////////////////

//내 프로필 정보수정 버튼 클릭하면 입력한 데이터가 저장되고, 알림창 하나 뜨는 함수 구현
//내프로필정보수정 버튼 클릭하면 이벤트 실행->function button_myprofile 실행

document.getElementById('buttonProfile').addEventListener('click', button_myprofile);

function button_myprofile(){

    if(checkAll() === true){
        //배열 생성
        const dataArr = new Array();

        //배열에 input값 : 프로필수정정보 넣는다
        dataArr.push(
            document.getElementById("member_nickname").value, document.getElementById("member_email").value,
            document.getElementById("introduce").value, document.getElementById("career").value,
            document.getElementById("certi").value);

        // {member_nickname:123, member_Email:11@daum.net, introduce:asdf}
        var datatmp = {"member_nickname":dataArr[0], "member_email":dataArr[1], "introduce":dataArr[2],
            "career":dataArr[3], "certi":dataArr[4]};

        var dataJson = JSON.stringify(datatmp);


        //apis에 생성한 addprofile함수에 인자로 dataObj를 넣는다.
        //addprofile함수는 return 값이 postRequest().
        //postRequest()는 값을 json문자열로 바꾸고 리턴값 fetch던데..
        //Apis.postRequest('/myprofile' , dataArr);

        alert("프로필 수정 완료! ");
        return dataJson;


    }else
        alert("프로필 빈칸을 채워주세요");

}; /// 버튼 눌렀을때 항목의 값이 다 있으면, JSON으로 보내기

/////////////////////////프로필수정 입력 여부 검사/////////////////////////////////////////
function checkAll() {

    if (checkMail(document.getElementById('member_email').value) === false) {
        return false;
    }

    if (checkNickName(document.getElementById('member_nickname').value) === false) {
        return false;
    }

    if (checkCareer(document.getElementById('career').value) === false) {
        return false;
    }

    if (checkCerti(document.getElementById('certi').value) === false) {
        return false;
    }

    if (checkIntro(document.getElementById('introduce').value) === false) {
        return false;
    }
    return true;
}

// 빈칸 함수
// function checkExistData(value, dataName) {
//     if (value == "") {
//         alert(dataName + " 입력해주세요!");
//         return false;
//     }
//     return true;
// }


//자기소개 관련함수//
//자기소개 체크
function checkIntro() {
    var text = document.getElementById("introduce");

    if (text.value == "") {
        alert("자기소개를 입력해 주세요!");
        return false;
    }else
        return true;
};

//자기소개 란 글자수제한 함수: textarea에 입력된 문자의 바이트 수를 체크
function checkByte(form, limitByte) {

    //obj는 받아오는 객체의 값, limitByte 최대 바이트 수. 초과할 수 없음
    //var strValue = form.value();
    var totalByte = 0;
    var note = document.getElementById("introduce").value;
    //var len = 0;
    //var limitByte = 500;

    for (var i = 0; i < note.length; i++) {

        var currentByte = note.charCodeAt(i);//charcodeat은 유니코드 받아오는 거

        if (currentByte > 128) {
            totalByte += 2;
        } else {
            totalByte++;
        }
        // if(totalByte <= limitByte){
        // 	len = i + 1;
        // }
    }

    // 현재 입력한 문자의 바이트 수를 체크하여 표시
    $('#introbyte').text(totalByte);


    // 입력된 바이트 수가 limitByte를 초과 할 경우 경고창 및 글자수 제한
    if (totalByte > limitByte / 2) {
        if (confirm(limitByte / 2 + "글자까지 입력 가능합니다.") == true) {

            document.getElementById("introduce").value = note.slice(0, limitByte / 2);
            $('#introbyte').text(limitByte / 2);
            // document.getElementById("introduce").focus();
        }

        //for(var i=0; i<limitByte; i++){
        //form.introduce.value = note.substr(0,limitByte/2);
        //str = strValue.substr(0, len);
        //form.value = str;
        //checkByte(form, 500);
    };
};

//e-mail 관련함수
//e-mail 입력체크
function checkMail(mail) {
    var mail = document.getElementById("checkemail").value;

    if (mail == "") {
        alert("E-Mail을 입력해 주세요!");
        return false;

    }else
        return true;
};

function emailValidity(val) {
    // 이메일 유효성 정규식
    var regex = /([\w-\.]+)@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.)|(([\w-]+\.)+))([a-zA-Z]{2,4}|[0-9]{1,3})(\]?)$/;

    if (regex.test(val) == false) {
        document.getElementById("checkemail").innerHTML = "잘못된 이메일 형식입니다.";
        document.getElementById("checkemail").style.color = "red";
        val.value = "";
        return false;
    }else {
        document.getElementById("checkemail").innerHTML = "";
    }
};

function checkNickName() {
    var name = document.getElementById("member_nickname").value;

    if (name == "") {
        alert("닉네임을 입력해 주세요!");
        return false;
    } else
        return true;
}

function nickValidity(val) {

    // 닉네임 유효성 검사 (영문소문자, 숫자만 허용)
    for (var i = 0; i < val.length; i++) {
        var ch = val.charAt(i);
        if (!(ch >= '0' && ch <= '9') && !(ch >= 'a' && ch <= 'z') && !(ch >= 'A' && ch <= 'Z')) {
            document.getElementById("checknick").innerHTML = "닉네임은 대소문자, 숫자만 입력가능합니다.";
            val.focus();
            return false;
        } else {
            document.getElementById("checknick").innerHTML = "";
        }
    }

    // 닉네임 길이 체크 (4~12자)
    if (val.length < 4 || val.length > 12) {
        document.getElementById("checknick").innerHTML = "닉네임을 4~12자까지 입력해주세요.";
        document.getElementById("checknick").style.color = "red";
        return false;
    } else {
        document.getElementById("checknick").innerHTML = "";
    }
};


function checkCareer() {
    var text = document.getElementById("career").value;

    if (text == "") {
        alert("경력을 입력해주세요!");
        return false;
    } else
        return true;

};

function checkCerti() {
    var text = document.getElementById("certi").value;

    if (text == "") {
        alert("자격증을 입력해주세요!");
        return false;
    } else
        return true;

};



//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

/////////////////////////////////////////////비밀번호 관련 함수/////////////////////////////////////////////////////////

//1) 현재비밀번호 데이터 불러와서 아이디와 맞는 비밀번호인지 비교(백과 이야기를)


//2) 새 비밀번호,새 비밀번호 확인 입력 함수
// _ 1.빈칸체크, 2.유효성검사, 3.새 비밀번호,새 비밀번호 일치확인

//3) 현재비밀번호 데이터 불러와서 새 비밀번호와 비교

//result: 변경 버튼 누를 시, 위의 세가지가 검사되어 데이터가 JSON으로 데이터 형식으로 변환되어야 한다.
//배열에 넣어서 JSON으로!

//입력여부
// // if (!checkPassword(form.newpassword.value, form.confirmpassword.value)) {
//     // 	return false;
//     // }

document.getElementById('buttonPassword').addEventListener('click', button_password); //버튼 누를시 버튼 함수와 연결

function button_password() {

    var check1 = tocheck_id_pw;
    var check2 = tocheck_newpw(document.getElementById("newpassword").value, document.getElementById("confirmpassword").value);
    var check3 = tocheck_pw_newpw;

    if (//check1 == true &&
        check2 == true
    //&& check3== true
    ) {
        //배열 생성
        const dataArr = new Array();

        //배열에 input값 : 패쓰워드 수정정보 넣는다

        dataArr.push(
            document.getElementById("member_Password").value, document.getElementById("newpassword").value,
            document.getElementById("confirmpassword").value);
        var datatmp = {"member_Password": dataArr[0], "newpassword": dataArr[1], "confirmpassword": dataArr[2]};
        const dataJson = JSON.stringify(datatmp);

        alert("비밀번호 수정 완료! ");

        return dataJson;
    }
    //보냅시다~ 나중에
    //apis에 생성한 addprofile함수에 인자로 dataObj를 넣는다.
    //addprofile함수는 return 값이 postRequest().
    //postRequest()는 값을 json문자열로 바꾸고 리턴값 fetch던데..
    //Apis.postRequest('/' , dataArr);

};//4) 버튼 눌렀을 때 JSON으로 변경해주는 함수


//1) 로그인 되어있는 비밀번호 데이터 불러와서 현재 비밀번호의 입력값과 일치하는지 비교
function tocheck_id_pw(member_Password) {


    checkpw = JSON
};

//2) 새 비밀번호,새 비밀번호 확인 입력 함수_ 1.입력여부,2.유효성검사,3.새 비밀번호,새 비밀번호 일치확인
function tocheck_newpw(newpassword, confirmpassword) {

    //비밀번호가 입력되었는지 확인하기
    if (!checkExistData(newpassword, "비밀번호를"))
        return false;
    //비밀번호 확인이 입력되었는지 확인하기
    if (!checkExistData(confirmpassword, "비밀번호 확인을"))
        return false;

    var newpasswordRegExp = /^[a-zA-z0-9]{4,12}$/; //비밀번호 길이 체크(8~16자 까지 허용)

    if (!newpasswordRegExp.test(newpassword)) {
        alert("비밀번호는 영문 대소문자와 숫자 4~12자리로 입력해야합니다!");
        form.newpassword.value = "";
        form.newpassword.focus();
        return false;
    }
    //변경 비밀번호와 변경 비밀번호 확인이 맞지 않다면..
    if (newpassword != confirmpassword) {
        alert("두 비밀번호가 맞지 않습니다.");
        form.newpassword.value = "";
        form.confirmpassword.value = "";
        form.confirmpassword.focus();
        return false;
    }
    return true; //확인이 완료되었을 때
};

// //3)현재비밀번호와 변경비밀번호 비교
function tocheck_pw_newpw(member_Password, confirmpassword) {

    var pw = member_Password;
    var pwck = document.getElementById("confirmpassword").value;

    if (pw != pwck) {
        return false;
    }
};