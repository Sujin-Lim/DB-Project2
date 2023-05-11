/**
 * 
 */


document.addEventListener('DOMContentLoaded', function(){ //DOM 생성 후 이벤트 리스너 등록
    //더보기 버튼 이벤트 리스너
    document.querySelector('.btn_openE').addEventListener('click', function(e){
        
        let classList = document.querySelector('.detailinfoE').classList; // 더보기 프레임의 클래스 정보 얻기
        let contentHeight = document.querySelector('.detailinfoE > .contentE').offsetHeight; //컨텐츠 높이 얻기

        // 2단계이면 전체보기로
        if(classList.contains('showstep2E')){
            classList.remove('showstep2E');
        }
        // 1단계이면 2단계로
        if(classList.contains('showstep1E')){
            classList.remove('showstep1E');
            if(contentHeight > 600){
                classList.add('showstep2E');
            }else{
                document.querySelector('.btn_openE').classList.add('hideE');
            }
        }
        //전체보기시 더보기 버튼 감추기 & 감추기 버튼 표시
        if(!classList.contains('showstep1E') && !classList.contains('showstep2E')){
            e.target.classList.add('hideE');
            document.querySelector('.btn_closeE').classList.remove('hideE');
            
        }
        
    });
});


//감추기 버튼 이벤트 리스너
document.querySelector('.btn_closeE').addEventListener('click', function(e){
    e.target.classList.add('hideE');
    document.querySelector('.btn_openE').classList.remove('hideE'); // 더보기 버튼 감춤
    document.querySelector('.detailinfoE').classList.add('showstep1E'); // 초기 감춤 상태로 복귀
});

