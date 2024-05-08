Crie um programa em Dart para modelar um sistema de loja. Você deve ter uma classe base Produto com os seguintes atributos: codigo (int), descricao (String) e preco (double). Em seguida, crie duas subclasses: ProdutoFisico e ProdutoVirtual.

A classe ProdutoFisico deve adicionar o atributo peso (double) e ter um método calcularFrete que recebe a distância (int) em quilômetros e retorna o valor do frete, calculado como peso * distância * 0.01.

A classe ProdutoVirtual deve adicionar o atributo tamanho (int) e ter um método verificarEnvioGratis que retorna true se o tamanho for menor que 10, caso contrário retorna false.

Por fim, crie uma classe CarrinhoDeCompras que tem uma lista de produtos e métodos para adicionar e remover produtos do carrinho, além de um método calcularTotal que retorna o valor total dos produtos no carrinho.