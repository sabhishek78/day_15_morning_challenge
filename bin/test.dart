
import 'main.dart';

import 'package:test/test.dart';

void main() {

  test('posNegSort', (){
    expect(posNegSort([6, 3, -2, 5, -8, 2, -2]),[2, 3, -2, 5, -8, 6, -2]);
    expect(posNegSort([-6, -3, -2, -5, -8, -2, -2]),[-6, -3, -2, -5, -8, -2, -2]);
    expect(posNegSort([]),[]);
  });
  test('Encrypt String', (){

    expect(encrypt("apple"),"1lpp0aca");
    expect(encrypt("ppl"),"lppaca");
    expect(encrypt(""),"aca");
  });
}