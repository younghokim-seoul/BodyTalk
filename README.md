flutter pub run build_runner build --delete-conflicting-outputs


# 🚀 iOS TestFlight 배포 가이드 (Flutter)

본 가이드는 Flutter 프로젝트를 빌드하여 Apple TestFlight에 업로드하는 전체 과정을 설명합니다. (자동 서명 및 아카이브 방식)

## 📌 사전 준비사항
1. [App Store Connect](https://appstoreconnect.apple.com/)에 앱(Bundle ID: `com.cm.bodytalk.korea`)이 미리 생성되어 있어야 합니다.
2. Apple Developer 계정에 로그인되어 있어야 합니다.

---

## 🛠️ 1단계: 기기 연결 및 인증서 자동 발급 (Xcode)
배포용 인증서(Provisioning Profile)를 생성하려면 개발자 계정에 등록된 실제 기기가 최소 1대 필요합니다.

1. **실제 아이폰**을 Mac에 케이블로 연결합니다. (시뮬레이터 불가)
2. 터미널에서 아래 명령어를 입력하여 Xcode 프로젝트를 엽니다.
   ```bash
   open ios/Runner.xcworkspace


Xcode 상단 중앙의 **실행 타겟(Target)**을 시뮬레이터가 아닌 연결한 실제 아이폰 이름으로 변경합니다.

좌측 프로젝트 네비게이터에서 Runner 선택 -> Signing & Capabilities 탭 이동.

Automatically manage signing이 체크되어 있는지 확인하고, 에러(❌)가 모두 사라질 때까지 대기합니다. (Xcode가 자동으로 기기를 등록하고 인증서를 발급합니다.)


📦 2단계: 배포용 파일(Archive) 빌드 (터미널)
Xcode에서 에러가 없는 것을 확인했다면, 터미널(VS Code 또는 Android Studio)로 돌아와서 배포용 패키지를 생성합니다.

프로젝트 루트 경로에서 아래 명령어를 실행합니다.

Bash
flutter build ipa
수 분 후, 터미널에 ✓ Built IPA to build/ios/ipa... 및 Xcode archive done. 메시지가 뜨면 성공입니다.

🚀 3단계: TestFlight 서버로 업로드 (Xcode Organizer)
빌드된 Archive 파일을 애플 서버로 전송합니다.

터미널에 아래 명령어를 입력하여 빌드된 Archive 파일을 바로 엽니다.

Bash
open build/ios/archive/Runner.xcarchive
Xcode Organizer 창이 열리면, 방금 빌드한 버전을 선택하고 우측의 파란색 [Distribute App] 버튼을 클릭합니다.

배포 방식 설정 화면에서 아래 순서대로 진행합니다:

Method: TestFlight & App Store 선택 -> Next

Destination: Upload 선택 -> Next

이후 나오는 App Thinning, 서명 등의 옵션은 기본값 그대로 유지하며 Next 클릭

마지막 요약 화면에서 [Upload] 버튼을 누릅니다.

전송이 완료되고 초록색 체크마크(Successfully uploaded)가 뜨면 업로드 성공입니다!

💡 참고: 업로드 후 App Store Connect 웹사이트에서 '처리 중' 상태가 끝나기까지 약 10~20분 정도 소요되며, 완료 후 테스터들에게 이메일이 발송됩니다.