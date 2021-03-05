/// [ 문제 ]
/// RGB To Hex Conversion
///
/// The rgb function is incomplete.
/// - rgb 함수가 완성되지 않았다.
/// Complete it so that passing in RGB decimal values will result in a hexadecimal representation being returned.
/// - 10진수의 RGB값을 파라미터로 주어주면 16진수로 return 하도록 이 함수를 완성시켜라.
/// Valid decimal values for RGB are 0 - 255.
/// - 10진수의 RGV 값은 0 부터 255 사이의 값이다.
/// Any values that fall out of that range must be rounded to the closest valid value.
/// - 해당 범위를 벗어나는 값은 가까운 값으로 치환 되어야 한다. (0보다 작으면 0, 255보다 크면 255)
/// Note: Your answer should always be 6 characters long, the shorthand with 3 will not work here.
/// - 답은 항상 6자리의 문자여야 한다 (앞을 0으로 채우라는 뜻)
/// The following are examples of expected output values:
/// - 다음의 예를 따라라
/// rgb(255, 255, 255) // returns FFFFFF
/// rgb(255, 255, 300) // returns FFFFFF
/// rgb(0, 0, 0)       // returns 000000
/// rgb(148, 0, 211)   // returns 9400D3
/// **/

//Arrow function으로 처리했다 아무 득도 어없지만 유희로 즐겨보았다
String rgb(int r, int g, int b) =>(
    // 첫 번째 줄 부터 차례로 R G B 값을 계산하여 이어 붙인다
    // 1. 맨 앞의 3항연산은 0~255 범위를 벗어나는 숫자에 대한 validation
    // 2. toRadixString(16) :  int를 16진수의 string으로 바꿔준다
    // 3. padLeft(2, '0') : 2자리에서 모자란 부분을 왼쪽부터 0으로 채워준다
        (r > 255 ? 255 : r < 0 ? 0 : r).toRadixString(16).padLeft(2, '0')
        + (g > 255 ? 255 : g < 0 ? 0 : g).toRadixString(16).padLeft(2, '0')
        + (b > 255 ? 255 : b < 0 ? 0 : b).toRadixString(16).padLeft(2, '0'))
    // 모두 대문자로 치환하여 리턴하면 성공
    .toUpperCase(); // replace with your solution