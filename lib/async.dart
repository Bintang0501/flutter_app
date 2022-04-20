void main() async {

  Toko1();
  
  // await Toko4(60).then((value){
  //   print(value);
  //   print("Then");
  // },
  // ).catchError((error){
  //   print(error);
  //   print("Error");
  // });

  try {
    var value = await Toko4(30);
    print(value);
    print("Try");
  } catch(error) {
    print(error);
    print("Error");
  }

  Toko2();

  Toko3();

}

Toko1 (){
  print("Toko Bunga");
}

Toko2 (){
  print("Toko Baju");
}

Toko3 (){
  print("Toko Sepatu");
}

Future<String> Toko4 (int harga){
  return Future.delayed(Duration(seconds: 4), () {

    if(harga>50){
      return "Murah";
    }else{
      throw "Mahal";
    }

  });
  
}