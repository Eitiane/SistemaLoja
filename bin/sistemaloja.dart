import 'dart:io';

void main() {
  Produto produto = Produto(0012, 'cor escura', 2.90);
  produto.printProduto();
  ProdutoFisico produtoFisico = ProdutoFisico(2.0, 0013, 'cor clara', 3.50);
  produtoFisico.CalcularFrete();

  ProdutoVirtual produtoVirtual = ProdutoVirtual(5, false, 009, 'cor neutra', 4.20);
  produtoVirtual.VerificarEnvioGratis();

  CarrinhoDeCompras carrinho = CarrinhoDeCompras();
  carrinho.addProdutos(produto);
  carrinho.addProdutos(produtoFisico);
  carrinho.addProdutos(produtoVirtual);
  carrinho.ValorTotal();
}
// class Pai produto
class Produto {
  int codigo;
  String descricao;
  double preco;

  Produto(this.codigo, this.descricao, this.preco);

  void printProduto() {
    print(
        'o produto tem o $codigo com a descricao $descricao no valor de $preco em reais');
  }
  void add(Produto produto) {}

  void remove(Produto produto) {}
}

class ProdutoFisico extends Produto {
  double peso;

  ProdutoFisico(this.peso, int codigo, String descricao, double preco)
      : super(codigo, descricao, preco);
// método para calcular o Frete - recebe dados do usuario
  void CalcularFrete() {
    print('Qual é a distancia em KM?');
    String? inputDis = stdin.readLineSync();
    if (inputDis != null) {
      int Distancia = int.parse(inputDis);
      double? valorFrete = funcFrete(Distancia);
      print('o valor do frete do produto é $valorFrete');
    }
  }
// função para calcular o frete
  double? funcFrete(int Distancia) {
    return Distancia * 0.01;
  }
}

class ProdutoVirtual extends Produto {
  int tamanho;
  bool isEnvioGratis;

  ProdutoVirtual(this.tamanho, this.isEnvioGratis, int codigo, String descricao,
      double preco)
      : super(codigo, descricao, preco);

  void VerificarEnvioGratis() {
    if (tamanho <= 10) {
      isEnvioGratis = true;
      print('O envio é grátis.');
    } else {
      isEnvioGratis = false;
      print('O envio não é grátis você irá pagar.');
    }
  }
}

class CarrinhoDeCompras {
  List<dynamic> produtos = [];

  void addProdutos(Produto produto) {
    produtos.add(produto);
  }

  void ValorTotal() {
  double total = 0;
  for (var p in produtos) {
  total += p.preco;
  }
  print('O valor total dos produtos é: $total');
}
  void removeProdutos(Produto produto) {
    produto.remove(produto);
  }
}
