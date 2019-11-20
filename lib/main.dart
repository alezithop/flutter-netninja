import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  home: HomeColumn(),
));

class HomeText extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Hello there'),
        centerTitle: true,
        backgroundColor: Colors.red[600],
      ),
      body: Center(
        child: Text(
          'Welcome to MyApp',
          style: TextStyle(
            fontSize: 30.0,
            fontWeight: FontWeight.bold,
            letterSpacing: 2.0,
            color: Colors.grey[600],
            fontFamily: 'Quicksand',
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){},
        child: Text('click'),
        backgroundColor: Colors.blue[400],
      ),
    );
  }
}

class HomeImages extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Hello there'),
        centerTitle: true,
        backgroundColor: Colors.red[600],
      ),
      body: Center(
        child: Image.asset('assets/image-3.png'),
        /*Image(
//            image: NetworkImage('https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/4968e058-19f2-4b90-8ec5-c6f64e1e99c5/dap6083-1a31f840-8e8f-4405-a062-00f22db90a87.png?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7InBhdGgiOiJcL2ZcLzQ5NjhlMDU4LTE5ZjItNGI5MC04ZWM1LWM2ZjY0ZTFlOTljNVwvZGFwNjA4My0xYTMxZjg0MC04ZThmLTQ0MDUtYTA2Mi0wMGYyMmRiOTBhODcucG5nIn1dXSwiYXVkIjpbInVybjpzZXJ2aWNlOmZpbGUuZG93bmxvYWQiXX0.LEVr6l8DSJlbEx47L4F7AUlEPHlkWb-rAPCviEDWAXQ')
        image: AssetImage('assets/image-3.png'),
        )*/
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){},
        child: Text('click'),
        backgroundColor: Colors.blue[400],
      ),
    );
  }
}

class HomeIcons extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Hello there'),
        centerTitle: true,
        backgroundColor: Colors.red[600],
      ),
      body: Center(
        /* child: Icon(
          Icons.assignment_ind,
          color: Colors.lightBlue,
          size: 50.0,
        )*/
        /*child: RaisedButton.icon(
            onPressed: () {},
            icon: Icon(
              Icons.assignment_ind
            ),
            label: Text('My Profile')
        )*/
        child: IconButton(
          icon: Icon(Icons.assignment_ind),
          onPressed: () {
            print('you click me again');
          },
          color: Colors.amber,
          iconSize: 50.0,
        )
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){},
        child: Text('click'),
        backgroundColor: Colors.blue[400],
      ),
    );
  }
}

class HomeContainers extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Hello there'),
        centerTitle: true,
        backgroundColor: Colors.red[600],
      ),
      body: Container(
        color: Colors.tealAccent[400],
        child: Text('Hello'),
        //padding: EdgeInsets.fromLTRB(left, top, right, bottom)
          padding: EdgeInsets.fromLTRB(10.0, 20.0, 30.0, 40.0),
          margin: EdgeInsets.all(30.0),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){},
        child: Text('click'),
        backgroundColor: Colors.blue[400],
      ),
    );
  }
}

class HomePadding extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Hello there'),
        centerTitle: true,
        backgroundColor: Colors.red[600],
      ),
      body: Padding(
        padding: EdgeInsets.all(90.0),
          child: Text('Hi'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){},
        child: Text('click'),
        backgroundColor: Colors.blue[400],
      ),
    );
  }
}

class HomeRow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Hello there'),
        centerTitle: true,
        backgroundColor: Colors.red[600],
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text('Hi People'),
          FlatButton(
            onPressed: () {},
            color: Colors.blueAccent,
            child: Text('Click me'),
          ),
          Container(
            color: Colors.cyanAccent,
            padding: EdgeInsets.all(30.0),
            child: Text('inside container'),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){},
        child: Text('click'),
        backgroundColor: Colors.blue[400],
      ),
    );
  }
}

class HomeColumn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Hello there'),
        centerTitle: true,
        backgroundColor: Colors.red[600],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Row(
            children: <Widget>[
              Text('hiii'),
              Text(' world'),
            ],
          ),
          Container(
            padding: EdgeInsets.all(20.0),
            color: Colors.teal,
            child: Text('One'),
          ),
          Container(
            padding: EdgeInsets.all(30.0),
            color: Colors.deepPurpleAccent,
            child: Text('Two'),
          ),
          Container(
            padding: EdgeInsets.all(40.0),
            color: Colors.lightBlueAccent,
            child: Text('Three'),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){},
        child: Text('click'),
        backgroundColor: Colors.blue[400],
      ),
    );
  }
}