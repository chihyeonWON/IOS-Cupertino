# cupertino

```
머터리얼 디자인은 안드로이드에 적용하려고 구글이 만든 디자인 규칙이므로 
아이폰에는 어울리지 않습니다.
좀 더 아이폰스러운 디자인을 적용하려면 쿠퍼티노 디자인을 사용합니다.
Cupertino로 시작하는 이름의 클래스들이 이에 해당하며 사용 방법이 머터리얼 위젯과 비슷하므로
쉽게 적용할 수 있습니다.
```

### 쿠퍼티노 기본 UI
```
쿠퍼티노 디자인에서는 AppBar 대신 CupertinoNavigationBar를 사용하며
CupertinoSwitch, CupertinoButton 등을 사용합니다.
```

#### CupertinoNavigationBar
```
머터리얼 디자인의 AppBar에 대응되는 CupertinoNavigationBar를 사용하였습니다.
```
![image](https://user-images.githubusercontent.com/58906858/210199025-ac6bd920-1efd-4985-908e-234e5fa419cf.png)

#### CupertinoSwitch
```
머터리얼 디자인의 Switch에 대응되는 CupertinoSwitch를 사용하였습니다.
```
![image](https://user-images.githubusercontent.com/58906858/210199181-3a25fd19-9585-4113-8674-306b73182f20.png)

#### CupertinoButton
```
머터리얼 디자인의 ElevatedButton에 대응되는 CupertinoButton을 사용하였습니다.
```
![image](https://user-images.githubusercontent.com/58906858/210199432-d8cc258f-825b-4d5e-a32a-154a658d3031.png)

#### CupertinoAlertDialog
```
머터리얼 디자인의 AlertDialog에 대응되는 CupertinoAlertDialog를 사용하였습니다.
위에서 만든 CupertinoButton을 눌렀을 때 AlertDialog가 발생하도록 함수를 만들어서 넣어주었습니다.
```
![image](https://user-images.githubusercontent.com/58906858/210200269-410e04a4-d16b-413b-9e4f-bbaa5b8056f9.png)

#### CupertinoPicker
```
IOS에서 자주 사용되는 피커입니다.
위 아래로 스크롤하고 피커 바깥을 클릭하면 선택한 값이 적용되도록 하였습니다.
피커가 닫힐때 까지 await 한 후 선택한 값이 result 변수에 최종적으로 저장됩니다.
```
![image](https://user-images.githubusercontent.com/58906858/210200797-0e21cd89-5855-4f7c-a086-9e544e103b6d.png)
