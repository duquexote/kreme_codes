void main() {
 
 print('----------------------------------');
  calculoRotulo('ANA CLAUDIA ATIVADOR DE CACHOS', 50, 152.29);
 print('----------------------------------');
  
  
  
  
  
  // transformarMinusculo('ALISAMENTO E MATIZAÇÃO, NUTRIÇÃO PROFUNDA, PROTEÇÃO DA COR, REDUÇÃO DO FRIZZ, EFEITO DURADOURO');


}

// Função para calcular o CMC quando são 2 clientes em um item só
void pedidoJunto(int folhas, int quantidade1, int quantidade2, double valor1, String nome1, int rotulos1, String nome2, int rotulos2){
  
int soma = ((folhas * quantidade1)+(folhas * quantidade2));
  double resultado = valor1 / soma;
  String resultadoCerto = resultado.toStringAsFixed(2);
  
  print('$rotulos1 ROTULOS - $nome1');
  print('TOTAL - R\$$valor1');
  print('CMC - R\$$resultadoCerto');
  
  print('');
  
  print('$rotulos2 ROTULOS - $nome2');
  print('TOTAL - R\$$valor1');
  print('CMC - R\$$resultadoCerto');
  
  print('');


}


// Função para calcular o CMC de 1 cliente só
void calculoRotulo(String nome, int quantidade, double valor){
  double valorCMC = valor / quantidade;
  String cmc = valorCMC.toStringAsFixed(2);
  
  print('$quantidade ROTULOS - $nome');
  print('TOTAL - R\$$valor');
  print('CMC - R\$$cmc');
  
  print('');
 
  
}

void transformarMinusculo (String texto){
  print(texto.toLowerCase());
}
