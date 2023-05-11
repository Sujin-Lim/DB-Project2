/**
 * 
 */



document.addEventListener('DOMContentLoaded', function(){ //DOM 생성 후 이벤트 리스너 등록
    //더보기 버튼 이벤트 리스너
    document.querySelector('.btn_openB').addEventListener('click', function(e){
        
        let classList = document.querySelector('.detailinfoB').classList; // 더보기 프레임의 클래스 정보 얻기
        let contentHeight = document.querySelector('.detailinfoB > .contentB').offsetHeight; //컨텐츠 높이 얻기

        // 2단계이면 전체보기로
        if(classList.contains('showstep2B')){
            classList.remove('showstep2B');
        }
        // 1단계이면 2단계로
        if(classList.contains('showstep1B')){
            classList.remove('showstep1B');
            if(contentHeight > 600){
                classList.add('showstep2B');
            }else{
                document.querySelector('.btn_openB').classList.add('hideB');
            }
        }
        //전체보기시 더보기 버튼 감추기 & 감추기 버튼 표시
        if(!classList.contains('showstep1B') && !classList.contains('showstep2B')){
            e.target.classList.add('hideB');
            document.querySelector('.btn_closeB').classList.remove('hideB');
            
        }
        
    });
});


//감추기 버튼 이벤트 리스너
document.querySelector('.btn_closeB').addEventListener('click', function(e){
    e.target.classList.add('hideB');
    document.querySelector('.btn_openB').classList.remove('hideB'); // 더보기 버튼 감춤
    document.querySelector('.detailinfoB').classList.add('showstep1B'); // 초기 감춤 상태로 복귀
});

