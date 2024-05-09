import 'dart:io';
void main(){
Produto produto = Produto(0012, 'cor escura' , 2.90);
produto.printProduto();
}
class Produto implements CarrinhoDeCompras {
  int codigo;
  String descricao;
  double preco;
  Produto(this.codigo, this.descricao, this.preco);
  void printProduto(){
    print('o produto tem o $codigo com a descricao $descricao no valor de $preco em reais');
  }
  @override
  void addProdutos(){
  }
  @override
  void ValorTotal() {

  }
  @override
  void removeProdutos() {

  }
}
class ProdutoFisico extends Produto{
  double peso;
  ProdutoFisico(this.peso, int codigo, String descricao, double preco): super (codigo, descricao, preco);
  void CalcularFrete(){
    print('Qual é a distancia em KM?');
    String? inputDis = stdin.readLineSync();
    if(inputDis != null){
      int Distancia = int.parse(inputDis);
      double? valorFrete = funcFrete(Distancia);
      print('o valor do frete do produto é $valorFrete');
    }
  }
  double? funcFrete(int Distancia){
    return
    Distancia * 0.01;
  }
}
class ProdutoVirtual extends Produto{
  int tamanho;
  bool isEnvioGratis;
  ProdutoVirtual(this.tamanho, this.isEnvioGratis, int codigo, String descricao, double preco): super (codigo, descricao, preco);
  void VerificarEnvioGratis(){
    if(tamanho <= 10){
      isEnvioGratis = true;
    }else{
      isEnvioGratis = false;
    }
  }
}
abstract class CarrinhoDeCompras{
  void addProdutos();
  void removeProdutos();
  void ValorTotal();
}