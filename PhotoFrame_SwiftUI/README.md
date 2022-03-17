# PhotoFrame_SwiftUI
Make the UIKit app to SwiftUI app (Just Practice)

## 작업내역

| 날짜        | 번호    | 내용                            | 비고                                             |
| ---------- | :----- | ------------------------------| ---------------------------------------------- |
| 2022.03.15 | Step01 | View 이동 관련 기능 구현           | NavigationView, Sheet, Button 구현              |


------
## Step01
### Description
- NavigationView를 활용하여 View 간의 이동 구현 및 Button, Sheet 동작 구현 

### Task
- [x] TabView를 통해 동작 화면 분할 (ContentView)
- [x] 기본 View를 NavigationView로 구현 (ButtonLabelView)
    - [x] Label 앞에 systemImage를 추가하고 뒤에 Text가 붙는 형태 활용
    - [x] NavigationLink를 활용하여 클릭 시, 다음 뷰로 넘어갈 수 있도록 구현
- [x] Button 클릭 시, default 상태에서 Image와 Label이 변경되는 화면 구현 (ChangableView)
    - [x] 변경되는 Image와 Label Text를 정의한 ImageName 모델 구현
    - [x] Default 상태를 구현하고, Button 클릭 시 첫번째 변경 사항과 두번째 변경 사항을 오갈 수 있도록 설정
        - [x] if문을 통해 Default 시, Image가 보이지 않도록 설정
        - [x] @State를 활용하여 Input에 따라 Model이 변경되고 이에 맞춰 View가 update되도록 구현
    - [x] 추가 Button에는 모달뷰가 출력되도록 sheet 활용
        - [x] 모달뷰 출력 여부는 @State를 통해 조작
- [x] 모달뷰로 출력될 View 구현 (SheetView)
    -[x] Button 클릭 시, 뷰가 해제될 수 있도록 @Environmnet(\.dismiss)를 할당해 dismiss 기능 활성화
    
### 결과 화면
<img src = "https://user-images.githubusercontent.com/44107696/158746388-9b366a42-fa82-4428-94d4-2ac5ebacfec9.gif" width="340" height="700">

