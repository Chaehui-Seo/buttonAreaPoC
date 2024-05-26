# [UIButton] touchDrag 이벤트 영역

UIButton의 기본 이벤트 중 touchDrag로 시작하는 이벤트들이 있습니다.

 - touchDragEnter
 - touchDragExit
 - touchDragInside
 - touchDragOutside

UIButton에서 touchDown이 시작된 상태로 드래그되었을 때 불리는 이벤트 메소드입니다.

<br>
그런데 해당 이벤트들이 실제로 트리거되는 영역이 버튼의 영역과 상이했습니다.

아래와 같이 빨간선으로 표시해둔 영역을 기준으로 enter/exit, inside/outside가 구분되는 것으로 확인했습니다.
빨간선은 버튼 기준으로 상하좌우 70에 해당했습니다.

[관련 내용 정리한 블로그 글](https://huhuhi.tistory.com/2)

![buttonDragAreaBorder](https://github.com/Chaehui-Seo/buttonAreaPoC/assets/73422344/93cef935-d65b-46a7-8453-3ba536802223)
