/**
 * 
 */



document.addEventListener('DOMContentLoaded', function(){ //DOM 생성 후 이벤트 리스너 등록
    //더보기 버튼 이벤트 리스너
    document.querySelector('.btn_openP').addEventListener('click', function(e){
        
        let classList = document.querySelector('.detailinfoP').classList; // 더보기 프레임의 클래스 정보 얻기
        let contentHeight = document.querySelector('.detailinfoP > .contentP').offsetHeight; //컨텐츠 높이 얻기

        // 2단계이면 전체보기로
        if(classList.contains('showstep2P')){
            classList.remove('showstep2P');
        }
        // 1단계이면 2단계로
        if(classList.contains('showstep1P')){
            classList.remove('showstep1P');
            if(contentHeight > 600){
                classList.add('showstep2P');
            }else{
                document.querySelector('.btn_openP').classList.add('hideP');
            }
        }
        //전체보기시 더보기 버튼 감추기 & 감추기 버튼 표시
        if(!classList.contains('showstep1P') && !classList.contains('showstep2P')){
            e.target.classList.add('hideP');
            document.querySelector('.btn_closeP').classList.remove('hideP');
            
        }
        
    });
});


//감추기 버튼 이벤트 리스너
document.querySelector('.btn_closeP').addEventListener('click', function(e){
    e.target.classList.add('hideP');
    document.querySelector('.btn_openP').classList.remove('hideP'); // 더보기 버튼 감춤
    document.querySelector('.detailinfoP').classList.add('showstep1P'); // 초기 감춤 상태로 복귀
});

