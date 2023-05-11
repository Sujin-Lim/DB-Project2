/**
 * 
 */



document.addEventListener('DOMContentLoaded', function(){ //DOM 생성 후 이벤트 리스너 등록
    //더보기 버튼 이벤트 리스너
    document.querySelector('.btn_openG').addEventListener('click', function(e){
        
        let classList = document.querySelector('.detailinfoG').classList; // 더보기 프레임의 클래스 정보 얻기
        let contentHeight = document.querySelector('.detailinfoG > .contentG').offsetHeight; //컨텐츠 높이 얻기

        // 2단계이면 전체보기로
        if(classList.contains('showstep2G')){
            classList.remove('showstep2G');
        }
        // 1단계이면 2단계로
        if(classList.contains('showstep1G')){
            classList.remove('showstep1G');
            if(contentHeight > 600){
                classList.add('showstep2G');
            }else{
                document.querySelector('.btn_openG').classList.add('hideG');
            }
        }
        //전체보기시 더보기 버튼 감추기 & 감추기 버튼 표시
        if(!classList.contains('showstep1G') && !classList.contains('showstep2G')){
            e.target.classList.add('hideG');
            document.querySelector('.btn_closeG').classList.remove('hideG');
            
        }
        
    });
});


//감추기 버튼 이벤트 리스너
document.querySelector('.btn_closeG').addEventListener('click', function(e){
    e.target.classList.add('hideG');
    document.querySelector('.btn_openG').classList.remove('hideG'); // 더보기 버튼 감춤
    document.querySelector('.detailinfoG').classList.add('showstep1G'); // 초기 감춤 상태로 복귀
});

