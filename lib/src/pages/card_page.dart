import 'package:flutter/material.dart';

class CardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cards'),
      ),
      body: ListView(
        padding: EdgeInsets.all(10.0),
        children: <Widget>[
          _cardType1(),
          SizedBox(height: 20),
          _cardType2(),
          SizedBox(height: 20),
          _cardType1(),
          SizedBox(height: 20),
          _cardType2(),
          SizedBox(height: 20),
          _cardType1(),
          SizedBox(height: 20),
          _cardType2(),
          SizedBox(height: 20),
          _cardType1(),
          SizedBox(height: 20),
          _cardType2(),
          SizedBox(height: 20),
        ],
      ),
    );
  }

  Widget _cardType1() {
    return Card(
      elevation: 10,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20.0)
      ),
      child: Column(
        children: <Widget> [
          ListTile(
            leading: Icon(Icons.photo, color: Colors.blue,),
            title: Text('Soy un título'),
            subtitle: Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque congue euismod leo, sed condimentum libero consectetur sed. Interdum et malesuada fames ac ante ipsum primis in faucibus.'),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              FlatButton(onPressed: () {}, child: Text('Cancel')),
              FlatButton(onPressed: () {}, child: Text('Ok')),
            ],
          )
        ],
      ),
    );
  }

  Widget _cardType2() {
    final card =  Container(
      child: Column(
        children: [
          FadeInImage(
            placeholder: AssetImage('assets/placeholder.gif'),
            image: NetworkImage('https://wallpapershome.com/images/pages/pic_h/11927.jpg'),
            fadeInDuration: Duration(milliseconds: 300),
            height: 300,
            fit: BoxFit.cover
          ),
          // Image(
          //   image: NetworkImage('https://i.redd.it/eefnls9gw8c51.png')
          // ),
          Container(
            padding: EdgeInsets.all(10),
            child: Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit.')
          )
        ],
      ),
    );

    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        color: Colors.white,
        boxShadow: <BoxShadow>[
          BoxShadow(
            color: Colors.black26,
            blurRadius: 5,
            spreadRadius: -5,
            offset: Offset(2, 10)
          )
        ]
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(30),
        child: card,
      )
    );
  }
}