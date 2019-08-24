const myForm = document.querySelector("#myForm");
var logInInputCheck;

myForm.addEventListener('submit', function(e) {
    logInInputCheck = loginInputValidity();
    console.log(logInInputCheck);
    if(logInInputCheck === true && loginIdReturnValue === true){
        e.preventDefault();
        console.log(myForm);
        const formData = new FormData(myForm);
        loginRequest(formData)
            .then(response => {
                // 로그인 성공 여부 확인
                console.log('response', response);
            });
    } else{
        alert("양식에 맞춰 작성해주세요.");
    }
});



function initLogin(){
    var mock = false;
    $(function(){
        if(mock){
            startXhr();
        } else {
            var jsonObject = Apis.loginRequest('../login.json');
            console.log(typeof jsonObject, jsonObject);
            promiseTest(jsonObject);
        }
    });
}

function promiseTest(value){
    var id = document.getElementById("username").value;
    var pwd = document.getElementById("password").value;
    var jsonId = value["member_ID"];
    var jsonPw = value["member_Password"];
    console.log(jsonId);
    console.log(jsonPw);
    console.log(id, "+", pwd);

    if(id === jsonId && pwd === jsonPw){
        console.log("로그인 성공");
    }else{
        console.log("로그인 실패");
    }
}


var xhr;

function startXhr() {
    xhr = new XMLHttpRequest();
    xhr.open("POST", "/login.json");
    xhr.send();

    xhr.onreadystatechange = function () {
        if(xhr.readyState == 4){
            console.log("4");
            if(xhr.status == 200){
                console.log("데이터 불러오기 성공");
                serializeData();
            } else {
                console.log("데이터 불러오기 실패");
            }
        }
    }
}

function serializeData() {
    console.log("serializeData 시작");
    var serviceData = xhr.responseText;
    //데이터 가져오는지 확인
    console.log(typeof serviceData, serviceData);
    //데이터 json으로 바꾸기
    var serializedServiceData = JSON.parse(serviceData);

    var id = document.getElementById("username").value;
    var pwd = document.getElementById("password").value;

    console.log(id, "+", pwd);

    if(id === serializedServiceData["member_ID"] && pwd === serializedServiceData["member_Password"]){
        console.log("로그인 성공");
    }else{
        console.log("로그인 실패");
    }

    console.log(typeof serializedServiceData, serializedServiceData);
}
