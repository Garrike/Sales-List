import 'models/venda.dart';

Future<List<Venda>> consultaVendas () async {
  var vendas = List<Venda>();
  vendas.add(
    Venda(
      1,
      'Jardim Petrópolis',
      'Cuiabá',
      'Condomínio Petrópolis Apt. 9A',
      DateTime(2020, 03, 28),
      'Av. Fernando Corrêa',
      '2332',
      'Cuidado, produto frágil',
      'Gabriel',
      'Elmo',
      'Não Entregue',
      'MT'
    ),
  );
  vendas.add(
    Venda(
      2,
      'Jardim Petrópolis',
      'Cuiabá',
      'Condomínio Petrópolis Apt. 9A',
      DateTime(2020, 03, 28),
      'Av. Fernando Corrêa',
      '2332',
      'Cuidado, produto frágil',
      'Gabriel',
      'Elmo',
      'Não Entregue',
      'MT'
    ),
  );
  vendas.add(
    Venda(
      3,
      'Jardim Petrópolis',
      'Cuiabá',
      'Condomínio Petrópolis Apt. 9A',
      DateTime(2020, 03, 28),
      'Av. Fernando Corrêa',
      '2332',
      'Cuidado, produto frágil',
      'Gabriel',
      'Elmo',
      'Em Separação',
      'MT'
    ),
  );
  vendas.add(
    Venda(
      4,
      'Jardim Petrópolis',
      'Cuiabá',
      'Condomínio Petrópolis Apt. 9A',
      DateTime(2020, 03, 28),
      'Av. Fernando Corrêa',
      '2332',
      'Cuidado, produto frágil',
      'Gabriel',
      'Elmo',
      'Entregue',
      'MT'
    ),
  );
  await new Future.delayed(new Duration(seconds: 2));
  return vendas;
}