

 function joinCheck() {
	 if(document.frm.custid.value.length == 0) {
		 alert ("아이디를 입력해 주세요");
		 frm.custid.focus();
		 return false;
	 }
	  if(document.frm.custpw.value.length == 0) {
		 alert ("비밀번호를 입력해 주세요");
		 frm.custpw.focus();
		 return false;
	 }
	  if(document.frm.custname.value.length == 0) {
		 alert ("이름을 입력해 주세요");
		 frm.custname.focus();
		 return false;
	 }
	  if(document.frm.custphone.value.length == 0) {
		 alert ("전화번호를 입력해 주세요");
		 frm.custphone.focus();
		 return false;
	 }
	  if(document.frm.custadd.value.length == 0) {
		 alert ("주소를 입력해 주세요");
		 frm.custadd.focus();
		 return false;
	 }
 alert("회원 등록 완료!");
 return true;
 }