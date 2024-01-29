void main() {
  
  // --------------------- PREENCHER AQUI ANNA EM MILIMETROS -----------------------
  int larguraRotulo = 160;
  int alturaRotulo = 140;
  // --------------------- PREENCHER AQUI ANNA EM MILIMETROS -----------------------
  
  
  
  int larguraFolha = 300;
  int alturaFolha = 450;

  String quantidadeQuadrados = calcularQuantidadeRotulos(
      larguraFolha, alturaFolha, larguraRotulo, alturaRotulo);

  print('$quantidadeQuadrados');
}

String calcularQuantidadeRotulos(
    int larguraFolha, int alturaFolha, int larguraRotulo, int alturaRotulo) {
  
  String resultadoFormatado = '';
  
  // If para testar se o tamanho do rótulo ultrapassa ou não o valor permitido para caber na folha
  if(larguraRotulo > 300 && alturaRotulo > 450){
    
    resultadoFormatado = '!!!!!!  Tamanho maior que o permitido, tamanho máximo = 30cm x 45cm  !!!!!!';
    return resultadoFormatado;
    
  } else if(larguraRotulo > 300){
    
    resultadoFormatado = '!!!!!!  Largura maior que o permitido, tamanho máximo = 30cm  !!!!!!';
    return resultadoFormatado;
    
  } else if(alturaRotulo > 450){
    
    resultadoFormatado = '!!!!!!  Altura maior que o permitido, tamanho máximo = 45cm  !!!!!!';
    return resultadoFormatado;
  }
  
  // Número de quadrados na largura e altura
  int quantidadeLargura = larguraFolha ~/ larguraRotulo;
  int quantidadeAltura = alturaFolha ~/ alturaRotulo;

  
  // Rotação do rótulo para ver se cabem mais rótulos na folha
  int larguraRotulo2 = alturaRotulo;
  int alturaRotulo2 = larguraRotulo;
  
  int quantidadeLargura2 = larguraFolha ~/ larguraRotulo2;
  int quantidadeAltura2 = alturaFolha ~/ alturaRotulo2;
  
  
  // Total de quadrados - Comparação
  int totalRotulos1 = quantidadeLargura * quantidadeAltura;
  
  int totalRotulosRotacionado = quantidadeLargura2 * quantidadeAltura2;
  
  int comparacao = totalRotulos1 > totalRotulosRotacionado
      ? totalRotulos1
      : totalRotulosRotacionado;
  
  // Calculo do CMC do rótulo
  double calculoDeCusto = 8.50 / comparacao;
  
  resultadoFormatado = 'Valor do rótulo: R\$${calculoDeCusto.toStringAsFixed(2)}';

  return resultadoFormatado;
}
