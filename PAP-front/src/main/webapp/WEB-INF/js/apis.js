(function () {
  // Function-level strict mode syntax
  'use strict';
}());
function baseUrl(path) {
  // const BASE_URL = 'http://localhost:5000';
  // return `${BASE_URL}${path}`; 테스트 끝나면 이걸로 돌려놓기
  const BASE_URL = 'http://localhost:9090';
  return `${BASE_URL}${path}`;
}

function deleteRequest(path) {
  return fetch(baseUrl(path), {
    method: 'DELETE', // *GET, POST, PUT, DELETE, etc.
    // mode: 'cors', // no-cors, cors, *same-origin
    cache: 'no-cache', // *default, no-cache, reload, force-cache, only-if-cached
    // credentials: 'same-origin', // include, *same-origin, omit
    // redirect: 'follow', // manual, *follow, error
    // referrer: 'no-referrer' // no-referrer, *client
  }).then(response => response.json());
}

function getRequest(path) {
  return fetch(baseUrl(path), {
    method: 'GET', // *GET, POST, PUT, DELETE, etc.
    // mode: 'cors', // no-cors, cors, *same-origin
    cache: 'no-cache', // *default, no-cache, reload, force-cache, only-if-cached
    // credentials: 'same-origin', // include, *same-origin, omit
    // redirect: 'follow', // manual, *follow, error
    // referrer: 'no-referrer' // no-referrer, *client
  }).then(response => response.json());
}

function patchRequest(path, body = {}) {
  let contentType, data;
  if (typeof body === 'FormData') {
    contentType = 'application/x-www-form-urlencoded; charset=UTF-8';
    data = body;
  } else {
    contentType = 'application/json; charset=UTF-8';
    data = JSON.stringify(body);
  }
  // Default options are marked with *
  return fetch(baseUrl(path), {
    method: 'PATCH', // *GET, POST, PUT, DELETE, etc.
    // mode: 'cors', // no-cors, cors, *same-origin
    cache: 'no-cache', // *default, no-cache, reload, force-cache, only-if-cached
    // credentials: 'same-origin', // include, *same-origin, omit
    headers: {
      'Content-Type': contentType
    },
    // redirect: 'follow', // manual, *follow, error
    // referrer: 'no-referrer', // no-referrer, *client
    body: data // body data type must match "Content-Type" header
  }).then(response => response.json());
}

function postRequest(path, body = {}) {
  let contentType, data;
  if (typeof body === 'FormData') {
    contentType = 'application/x-www-form-urlencoded; charset=UTF-8';
    data = body;
    console.log('formdata 요청 실행', typeof data, data);
  } else {
    contentType = 'application/json; charset=UTF-8';
    data = JSON.stringify(body);
    console.log('json 요청 실행', typeof data, data);//ej
    console.log(data, "데이터 전송 성공!!!!!");//sm
  }

  // Default options are marked with *
  return fetch(baseUrl(path), {
    method: 'POST', // *GET, POST, PUT, DELETE, etc.
    // mode: 'cors', // no-cors, cors, *same-origin
    cache: 'no-cache', // *default, no-cache, reload, force-cache, only-if-cached
    // credentials: 'same-origin', // include, *same-origin, omit
    headers: {
      'Content-Type': contentType
    },
    // redirect: 'follow', // manual, *follow, error
    // referrer: 'no-referrer', // no-referrer, *client
    body: data // body data type must match "Content-Type" header
  }).then(response => response.json())
      .then((json) => { console.log(json)})//ej
}

function putRequest(path, body = {}) {
  let contentType, data;
  if (typeof body === 'FormData') {
    contentType = 'application/x-www-form-urlencoded; charset=UTF-8';
    data = body;
  } else {
    contentType = 'application/json; charset=UTF-8';
    data = JSON.stringify(body);
  }
  // Default options are marked with *
  return fetch(baseUrl(path), {
    method: 'PUT', // *GET, POST, PUT, DELETE, etc.
    // mode: 'cors', // no-cors, cors, *same-origin
    // cache: 'no-cache', // *default, no-cache, reload, force-cache, only-if-cached
    // credentials: 'same-origin', // include, *same-origin, omit
    // mode: 'cors', // no-cors, cors, *same-origin
    cache: 'no-cache', // *default, no-cache, reload, force-cache, only-if-cached
    // credentials: 'same-origin', // include, *same-origin, omit
    headers: {
      'Content-Type': contentType
    },
    // redirect: 'follow', // manual, *follow, error
    // referrer: 'no-referrer', // no-referrer, *client
    body: data // body data type must match "Content-Type" header
  }).then(response => response.json());
}

function getValidationRequest(path) {
  return fetch(baseUrl(path), {
    method: 'GET', // *GET, POST, PUT, DELETE, etc.
    // mode: 'cors', // no-cors, cors, *same-origin
    cache: 'no-cache', // *default, no-cache, reload, force-cache, only-if-cached
    // credentials: 'same-origin', // include, *same-origin, omit
    // redirect: 'follow', // manual, *follow, error
    // referrer: 'no-referrer' // no-referrer, *client
  }).then(response => response.json());
}//sm

///////////////////////////////////////////////////////////////////////////////

function loginRequest(credential) {
  return postRequest('../login.json', credential);
}

function createMember(member) {
  return postRequest('/signup', member);
}

function ValidateId(content) {
  return getValidationRequest('/signup/check-id/'+ content)
}

function ValidateNickName(content) {
  return getValidationRequest('/signup/check-nickname/' + content);
}

function ValidateEmail(content) {
  return getValidationRequest('/signup/check-email/' + content);
}

//////////////////////////////////////////////////////////////////////////////sm
function listService(page = 1, size = 10) {
  return getRequest(`/todo?page=${page}&size=${size}`);
}

function singleService(id) {
  console.log(id+"번째 서비스 페이지를 요청한다");
  return getRequest(`/single-service/${id}`);
}

function searchRequest(searchCondition) {
  return postRequest(`service-listng`, searchCondition);
}
/////////////////////////////////////////////////////////////////////////////ej
function providerProfile(content){
  return getRequest(content);
}

function updateProviderProfile(content) {
  return postRequest(`/mypage/provider`, content);
}

function updateCustomerProfile(content){
  return postRequest(`/mypage/customer`, content);
}
////////////////////////////////////////////////////////////////////////////mj



const Apis = {
  deleteRequest,
  getRequest,
  patchRequest,
  postRequest,
  putRequest,

  getValidationRequest,
  loginRequest,
  ValidateId,
  ValidateNickName,
  ValidateEmail,

  listService,
  singleService,
  searchRequest,

  providerProfile,
  updateProviderProfile,
  updateCustomerProfile
};




