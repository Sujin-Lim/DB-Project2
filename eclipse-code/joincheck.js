
/**
 * 회원 가입 시의 유효성 검사
 * 빈 칸이 있는지, 각 속성에 맞게 데이터들이 넣어졌는지 확인
 */

function joinCheck() {
  var custid = document.frm.custid.value.trim();
  var custpw = document.frm.custpw.value.trim();
  var custname = document.frm.custname.value.trim();
  var custphone = document.frm.custphone.value.trim();
  var custadd = document.frm.custadd.value.trim();
  var nameRegExp = /^[가-힣]+$/; // 이름: 한글으로만 구성되었는지 확인하는 정규식
  var idRegExp = /^[a-zA-Z0-9]+$/; // 아이디: 영문과 숫자로만 구성되었는지 확인하는 정규식
  var phoneRegExp = /^01\d{8,9}$/; //전화번호: 01로 시작하는 10~11자리 숫자만 가능




  if (custid.length == 0) {
    alert("아이디를 입력해 주세요");
    frm.custid.focus();
    return false;
  } else if (!idRegExp.test(custid)) {
    alert("아이디는 영문과 숫자로만 작성해 주세요.");
    frm.custid.focus();
    return false;
  }
  
  if (custpw.length == 0) {
    alert("비밀번호를 입력해 주세요");
    frm.custpw.focus();
    return false;
  } else if (custpw.length < 4 || custpw.length > 10) {
    alert("비밀번호는 4~10자 이내로 입력해 주세요.");
    frm.custpw.focus();
    return false;
  }
  
  if (custname.length == 0) {
    alert("이름을 입력해 주세요");
    frm.custname.focus();
    return false;
  } else if (!nameRegExp.test(custname)) {
    alert("이름은 한글로만 작성해 주세요");
    frm.custname.focus();
    return false;
  }

  if (custphone.length == 0) {
    alert("전화번호는 -를 제외한 숫자로 입력해 주세요");
    frm.custphone.focus();
    return false;
  } else if (!phoneRegExp.test(custphone)) {
    alert("전화번호는 10~11자리의 숫자로 입력해 주세요.");
    frm.custphone.focus();
    return false;
  }
  
   if (custadd.length == 0) {
        alert("주소를 입력해 주세요");
        frm.custadd.focus();
        return false;
    } else if (custadd.length > 30) {
        alert("주소는 30자 이내로 입력해주세요.");
        frm.custadd.focus();
        return false;
    }
  
  alert("회원 등록 완료!");
  return true;
}


