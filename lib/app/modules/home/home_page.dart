import 'package:flutter/material.dart';
import 'package:pensamento_formulario/app/app_module.dart';
import 'package:pensamento_formulario/app/modules/shared/blocs/sentimento_bloc.dart';
import 'package:pensamento_formulario/app/modules/shared/models/sentimento_model.dart';
import 'package:pensamento_formulario/app/modules/shared/widgets/smille.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final blocSentimento = AppModule.to.getBloc<SentimentoBloc>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Pensamentos"),
      ),
      body: StreamBuilder<List<SentimentoModel>>(
        stream: blocSentimento.listOut,
        builder: (_, snapshot) {
          if (!snapshot.hasData) {
            return Center(
              child: CircularProgressIndicator(),
            );
          }
          final List<SentimentoModel> models = snapshot.data;

          if (models.length == 0) {
            return Container(
              color: Colors.grey[300],
              child: Center(
                child: Text("Não há nenhum sentimento cadastrado!"),
              ),
            );
          }

          return ListView.separated(
            itemCount: models.length,
            itemBuilder: (_, index) {
              return ListTile(
                leading: Container(
                  height: 100,
                  width: 100,
                  child: Smiley(
                    range: models[index].sentimento,
                  ),
                ),
                title: Text(models[index].title),
                subtitle: Text(models[index].subtitle),
              );
            },
            separatorBuilder: (_, index) {
              return Divider();
            },
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {},
      ),
    );
  }
}
