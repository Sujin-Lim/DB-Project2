# Contents
1. git hub 협업을 위한 초기 설정
2. git 명령 정리


---


***git hub 협업을 위한 초기 설정***

*(집이나 다른 컴퓨터에서 코딩 시 초기 설정에 관한 내용입니다.)*

    cd ~ 또는 자기가 만들 디렉토리 위치 바로 전으로 이동

    git clone https://github.com/Sujin-Lim/firstCollabor.git "디렉토리명"

-예제로 디렉토리명 firstCollabor로 생성

    cd firstCollabor

    git config user.name "이름"
    git config user.email "이메일"

-디렉토리 이동 후 커밋할 때 사용할 이름, 이메일 설정

    git switch "브랜치명"
    
-자신의 branch에서 작업(각자 이니셜 대문자로 생성)

-예제로 브랜치명 SJ 사용

-브랜치는 github에서 만들어도 되고(만든 후 git pull) git bash에서 git branch "브랜치명" 으로 생성도 가능.


    git push -u origin SJ
    
-커밋 완료 후 github로 push

-처음 push 시에만 위의 명령 사용. 이후 git push만으로 가능. 

-만약 push가 되지 않는다면, git push -u origin +SJ 처럼 브랜치명 앞에 +를 붙여 시도합니다. (현준님이 메일로 보내신 오류 내용)

(--u: upstream. 지역 저장소의 브랜치를 원격 저장소의 브랜치에 연결하기 위한 것. 처음 한 번만 사용

-origin: git hub 저장소 이름 (ex: https://github.com/----) 을 origin으로 명명한 것. db에서 테이블명을 as로 별칭으로 바꾼 것 처럼...

-SJ: 처음 커밋 시 자기가 사용한 브랜치명으로 사용.)

*<PULL REQUEST>*

- main 브랜치에 병합은 임의로 merge 명령어 사용을 하지 않고 Pull Request로 내용 확인 후 병합해야 합니다.

- request를 보내면 해당 저장소의 팀장이 내용 확인 후 merge 가능합니다.(교재 p207 참고)

- 만약 팀장이 confirm merge 버튼이 활성화 되지 않는다면, main에 있는 파일 내용과 개인이 만든 파일 내용이 충돌이 나서 고쳐야 merge 가능합니다. (교재 p124 내용 관련)


---
***git 명령 정리***

나중에 할게요..

