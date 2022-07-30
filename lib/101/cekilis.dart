void main() {
  List<String> cekilis = [];

  cekilis.add('Gudbul');
  cekilis.add('Cem');
  cekilis.add('Özlem');
  cekilis.add('Sevim');
  cekilis.add('İlknur');
  cekilis.add('Burcu');
  cekilis.add('Berna');

  void cekilisYap() {
    cekilis.shuffle();
    print(cekilis);

    for (var i = 0; i < cekilis.length; i++) {
      print('${i + 1}. sıra ${cekilis[i]} ');
    }
  }
}
