class Venda {
  int id;
  String observacoesEntrega, cidade, bairro, complemento, numero, endereco, statusPedido, cliente, produtor, estado;
  DateTime dataVenda;

  Venda(
    this.id,
    this.bairro,
    this.cidade,
    this.complemento,
    this.dataVenda,
    this.endereco,
    this.numero,
    this.observacoesEntrega,
    this.cliente,
    this.produtor,
    this.statusPedido,
    this.estado
  );
}