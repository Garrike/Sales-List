import 'package:flutter/material.dart';
import 'package:pedidos_entrega/models/venda.dart';
import 'package:pedidos_entrega/services.dart';
import 'package:pedidos_entrega/widgets/card.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.teal,
      ),
      home: PedidosCTAPage(),
    );
  }
}

class PedidosCTAPage extends StatefulWidget {

  @override
  _PedidosCTAPageState createState() => _PedidosCTAPageState();
}

class _PedidosCTAPageState extends State<PedidosCTAPage> {
  @override
  void initState() {
    super.initState();
    // startDB();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Center(child: Text('Pedidos para Entrega')),),
      body: FutureBuilder(
        future: consultaVendas(),
        builder: (context, snapshot) {
          if(snapshot.hasError) return Text('Error');
          switch (snapshot.connectionState) {
            case ConnectionState.none:
              return Text('Não conectado');
            case ConnectionState.waiting:
              return Center(child: CircularProgressIndicator());
            default:
              List<Venda> listVendas = snapshot.data;
              return ListView.builder(   
                itemCount: listVendas.length,             
                itemBuilder: (context, index) {
                  return Card(
                    child: CustomListItemTwo(
                      title: '#${listVendas[index].id}  Cliente: ${listVendas[index].cliente}',
                      subtitle:
                        '${listVendas[index].endereco}, ${listVendas[index].numero} - ${listVendas[index].bairro}, ${listVendas[index].cidade} - ${listVendas[index].estado}',
                      author: '${listVendas[index].produtor}',
                      publishDate: listVendas[index].dataVenda,
                      readDuration: '${listVendas[index].statusPedido}',
                    ),
                  );
                }
              );
          }
        }
      ),
    );
  }
}