//내 프로필 정보수정 버튼 클릭하면 입력한 데이터가 저장되고, 알림창 하나 뜨는 함수 구현


//내프로필정보수정 버튼 클릭하면 이벤트 실행->function button_myprofile 실행
document.getElementById('buttonProfile').addEventListener('click', button_myprofile);

function button_myprofile(){

    //배열 생성
    const dataArr = new Array();

    //배열에 input값 : 프로필수정정보 넣는다
    dataArr.push(
        document.getElementById("username").value, document.getElementById("useremail").value, document.getElementById("notes").value);

    if(dataArr != []){
        // {username:123, useremail:11@daum.net, notes:asdf}
        var datatmp = {"username":dataArr[0], "useremail":dataArr[1], "notes":dataArr[2]};
        const dataJson = JSON.stringify(datatmp);
        console.log(typeof dataJson, dataJson);
        //보냅시다~ 나중에

        //apis에 생성한 addprofile함수에 인자로 dataObj를 넣는다.
        //addprofile함수는 return 값이 postRequest().
        //postRequest()는 값을 json문자열로 바꾸고 리턴값 fetch던데..
        //Apis.postRequest('/myprofile' , dataArr);

        alert("프로필 수정 완료! ");
    }
    else if(dataArr ===[]) {
        alert("수정사항을 입력하세요! ");
    }
};
//////////////////////////////////////////////////////////////////////////////////////////////////////
document.getElementById('buttonPassword').addEventListener('click', button_password);

function button_password(){
    //배열 생성
    const dataArr = new Array();

    //배열에 input값 : 패쓰워드 수정정보 넣는다

    dataArr.push(
        document.getElementById("password").value, document.getElementById("newpassword").value, document.getElementById("confirmpassword").value);

    var datatmp = {"password":dataArr[0], "newpassword":dataArr[1], "confirmpassword":dataArr[2]};

    const dataJson = JSON.stringify(datatmp);

    console.log(typeof dataJson, dataJson);
    //보냅시다~ 나중에

    //apis에 생성한 addprofile함수에 인자로 dataObj를 넣는다.
    //addprofile함수는 return 값이 postRequest().
    //postRequest()는 값을 json문자열로 바꾸고 리턴값 fetch던데..
    //Apis.postRequest('/' , dataArr);

    alert("비밀번호 수정 완료! ");

};

//////////////////////////////////////////////////////////////////////////////////////////////////////////



//자기소개 란 글자수제한 함수 구현

//내 꿈 : 글자입력-> 100자 넘어가면 더보기 버튼 생성됨-> 더보기 버튼 클릭-> 나머지 글 보여짐.

var limitByte = 500; //바이트의 최대크기, limitByte 를 초과할 수 없슴

// textarea에 입력된 문자의 바이트 수를 체크
function checkByte(form) {
    var totalByte = 0;
    var note = document.getElementById("notes").value;

    for(var i =0; i < note.length; i++) {
        var currentByte = note.charCodeAt(i);
        if(currentByte > 128)
            totalByte += 2;
        else totalByte++;
    }
    // 현재 입력한 문자의 바이트 수를 체크하여 표시
    $('#notesbyte').text(totalByte);


    // 입력된 바이트 수가 limitByte를 초과 할 경우 경고창
    if(totalByte > limitByte/2) {
        alert(limitByte/2 +"글자까지 입력 가능합니다.");
        form.notes.value = note.substring(0,limitByte/2);
    }
}

