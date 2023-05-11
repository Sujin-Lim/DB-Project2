/**
 * 
 */



document.addEventListener('DOMContentLoaded', function(){ //DOM 생성 후 이벤트 리스너 등록
    //더보기 버튼 이벤트 리스너
    document.querySelector('.btn_openF').addEventListener('click', function(e){
        
        let classList = document.querySelector('.detailinfoF').classList; // 더보기 프레임의 클래스 정보 얻기
        let contentHeight = document.querySelector('.detailinfoF > .contentF').offsetHeight; //컨텐츠 높이 얻기

        // 2단계이면 전체보기로
        if(classList.contains('showstep2F')){
            classList.remove('showstep2F');
        }
        // 1단계이면 2단계로
        if(classList.contains('showstep1F')){
            classList.remove('showstep1F');
            if(contentHeight > 600){
                classList.add('showstep2F');
            }else{
                document.querySelector('.btn_openF').classList.add('hideF');
            }
        }
        //전체보기시 더보기 버튼 감추기 & 감추기 버튼 표시
        if(!classList.contains('showstep1F') && !classList.contains('showstep2F')){
            e.target.classList.add('hideF');
            document.querySelector('.btn_closeF').classList.remove('hideF');
            
        }
        
    });
});


//감추기 버튼 이벤트 리스너
document.querySelector('.btn_closeF').addEventListener('click', function(e){
    e.target.classList.add('hideF');
    document.querySelector('.btn_openF').classList.remove('hideF'); // 더보기 버튼 감춤
    document.querySelector('.detailinfoF').classList.add('showstep1F'); // 초기 감춤 상태로 복귀
});
