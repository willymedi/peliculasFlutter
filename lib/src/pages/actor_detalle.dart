import 'package:flutter/material.dart';
import 'package:peliculas/src/models/actores_models.dart';

class ActorDetalle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Actor actor = ModalRoute.of(context).settings.arguments;
    return Container(
        child: Scaffold(
            appBar: AppBar(
              title: Text(actor.name),
              backgroundColor: Colors.indigoAccent,
            ),
            body: Column(
              children: [_posterTitulo(context, actor)],
            )));
  }

  Widget _posterTitulo(BuildContext context, Actor actor) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
      child: Row(
        children: <Widget>[
          ClipRRect(
            borderRadius: BorderRadius.circular(20.0),
            child: Image(
              image: NetworkImage(actor.getFoto()),
              height: 150.0,
            ),
          ),
          SizedBox(
            width: 20.0,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                actor.name,
                style: Theme.of(context).textTheme.headline6,
                overflow: TextOverflow.ellipsis,
              ),
              Text(
                "Caracter: ${actor.character}",
                style: Theme.of(context).textTheme.subtitle1,
                overflow: TextOverflow.ellipsis,
              ),
              Row(
                children: [
                  Icon(Icons.star_border),
                  Text(
                    "Popularidad: ${actor.popularity}",
                    style: Theme.of(context).textTheme.subtitle1,
                  )
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}
