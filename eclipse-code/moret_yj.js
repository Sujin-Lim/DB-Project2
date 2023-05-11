/**
 * 
 */


document.addEventListener('DOMContentLoaded', function(){ //DOM 생성 후 이벤트 리스너 등록
    //더보기 버튼 이벤트 리스너
    document.querySelector('.btn_openT').addEventListener('click', function(e){
        
        let classList = document.querySelector('.detailinfoT').classList; // 더보기 프레임의 클래스 정보 얻기
        let contentHeight = document.querySelector('.detailinfoT > .contentT').offsetHeight; //컨텐츠 높이 얻기

        // 2단계이면 전체보기로
        if(classList.contains('showstep2T')){
            classList.remove('showstep2T');
        }
        // 1단계이면 2단계로
        if(classList.contains('showstep1T')){
            classList.remove('showstep1T');
            if(contentHeight > 600){
                classList.add('showstep2T');
            }else{
                document.querySelector('.btn_openT').classList.add('hideT');
            }
        }
        //전체보기시 더보기 버튼 감추기 & 감추기 버튼 표시
        if(!classList.contains('showstep1T') && !classList.contains('showstep2T')){
            e.target.classList.add('hideT');
            document.querySelector('.btn_closeT').classList.remove('hideT');
            
        }
        
    });
});


//감추기 버튼 이벤트 리스너
document.querySelector('.btn_closeT').addEventListener('click', function(e){
    e.target.classList.add('hideT');
    document.querySelector('.btn_openT').classList.remove('hideT'); // 더보기 버튼 감춤
    document.querySelector('.detailinfoT').classList.add('showstep1T'); // 초기 감춤 상태로 복귀
});

