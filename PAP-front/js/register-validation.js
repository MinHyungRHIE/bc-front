function regiidvalidate(val){
    //아이디 유효성 검사 (영문소문자, 숫자만 허용)
    for (var i = 0; i < val.length; i++) {
        var ch = val.charAt(i);
        if (!(ch >= '0' && ch <= '9') && !(ch >= 'a' && ch <= 'z') &&! (ch >= 'A' && ch <= 'Z')) {
            document.getElementById("idnotify").innerHTML = "아이디는 대소문자, 숫자만 입력가능합니다.";
            document.getElementById("idnotify").style.color="red";
            val.focus();
            return false;
        }

        else{
            document.getElementById("idnotify").innerHTML="";
        }
    }

    //아이디 길이 체크 (4~12자)
    if (val.length < 4 || val.length > 12) {
        document.getElementById("idnotify").innerHTML = "아이디를 4~12자까지 입력해주세요.";
        document.getElementById("idnotify").style.color="red";
        return false;
    }

    else{
        document.getElementById("idnotify").innerHTML="";
    }
} // idvalidate

function nickvalidate(val){

    // 닉네임 유효성 검사 (영문소문자, 숫자만 허용)
    for (var i = 0; i < val.length; i++) {
        var ch = val.charAt(i);
        if (!(ch >= '0' && ch <= '9') && !(ch >= 'a' && ch <= 'z') &&! (ch >= 'A' && ch <= 'Z')) {
            document.getElementById("nicknotify").innerHTML = "닉네임은 대소문자, 숫자만 입력가능합니다.";
            document.getElementById("nicknotify").style.color="red";
            val.focus();
            return false;
        }

        else{
            document.getElementById("nicknotify").innerHTML="";
        }
    }

    // 닉네임 길이 체크 (4~12자)
    if (val.length < 4 || val.length > 12) {
        document.getElementById("nicknotify").innerHTML = "닉네임을 4~12자까지 입력해주세요.";
        document.getElementById("nicknotify").style.color="red";
        return false;
    }

    else{
        document.getElementById("nicknotify").innerHTML="";
    }
} // nickvalidate


function passwordvalidate(val) {

    // 비밀번호 길이 체크(8~16자 까지 허용)
    if (val.length < 8 || val.length > 16) {
        document.getElementById("pwnotify").innerHTML = "비밀번호를 8~16자까지 입력해주세요.";
        document.getElementById("pwnotify").style.color = "red";
        return false;
    }

    else{
        document.getElementById("pwnotify").innerHTML = "";
    }
}

function chkpassword(secondPassword){

    var firstPassword = document.getElementById("password1").value;


    if(firstPassword.length == 0){
        document.getElementById("chkpwnotify").innerHTML = "비밀번호를 입력하지 않았습니다.";
        document.getElementById("chkpwnotify").style.color="red";
        return false;

    } else {
        //비밀번호와 비밀번호 확인 일치여부 체크
        if (secondPassword != chkpw) {
            document.getElementById("chkpwnotify").innerHTML = "비밀번호가 일치하지 않습니다.";
            document.getElementById("chkpwnotify").style.color="red";
            return false;
        }    else {
            document.getElementById("chkpwnotify").innerHTML = "비밀번호가 일치합니다.";
            document.getElementById("chkpwnotify").style.color="blue";
        }
    }


}



function emailvalidate(val){
    // 이메일 유효성 정규식
    var regex=/([\w-\.]+)@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.)|(([\w-]+\.)+))([a-zA-Z]{2,4}|[0-9]{1,3})(\]?)$/;

    if (regex.test(val) === false) {
        document.getElementById("emailnotify").innerHTML = "잘못된 이메일 형식입니다.";
        document.getElementById("emailnotify").style.color="red";
        val.value="";
        return false;
    }
    else{
        document.getElementById("emailnotify").innerHTML="";
    }
}

function regiinsertvalidate(){
    var id = document.getElementById("username2"); // 입력 받은 아이디
    var pw = document.getElementById("password1"); // 입력 받은 비밀번호
    var pw2 = document.getElementById("password2");
    var nickname = document.getElementById("nickname");
    var email = document.getElementById("email2");

    // 아이디 입력여부 검사
    if (id.value === "") {
        document.getElementById("idnotify").innerHTML = "아이디를 입력하지 않았습니다.";
        document.getElementById("idnotify").style.color="red";
        id.focus();
        id.select();
        return false;
    }
    else{
        document.getElementById("idnotify").innerHTML = "";
    }

    // 닉네임 입력여부 검사
    if (nickname.value === "") {
        document.getElementById("nicknotify").innerHTML = "닉네임을 입력하지 않았습니다.";
        document.getElementById("nicknotify").style.color="red";
        nickname.focus();
        nickname.select();
        return false;
    }
    else{
        document.getElementById("nicknotify").innerHTML = "";
    }

    // 이메일 입력여부 검사
    if (email.value === "") {
        document.getElementById("emailnotify").innerHTML = "이메일을 입력하지 않았습니다.";
        document.getElementById("emailnotify").style.color="red";
        email.focus();
        email.select();
        return false;
    }
    else{
        document.getElementById("emailnotify").innerHTML = "";
    }

    // 비밀번호 입력여부 검사
    if (pw.value === "") {
        document.getElementById("pwnotify").innerHTML = "비밀번호를 입력하지 않았습니다.";
        document.getElementById("pwnotify").style.color="red";
        pw.focus();
        pw.select();
        return false;
    }
    else{
        document.getElementById("pwnotify").innerHTML = "";
    }

    // 비밀번호 확인 입력여부 검사
    if (pw2.value === "") {
        document.getElementById("chkpwnotify").innerHTML = "비밀번호 확인을 입력하지 않았습니다.";
        document.getElementById("chkpwnotify").style.color="red";
        pw2.focus();
        pw2.select();
        return false;
    }
    else{
        document.getElementById("chkpwnotify").innerHTML = "";
    }

    event.preventDefault();
}



