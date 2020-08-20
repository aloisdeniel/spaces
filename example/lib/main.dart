import 'package:flutter/material.dart';
import 'package:spaces/spaces.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Spacing Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      builder: (context, child) => Spacing(
        dataBuilder: (context) {
          final mediaQuery = MediaQuery.of(context);
          if (mediaQuery.size.width > 400) {
            return SpacingData.generate(20);
          }
          return SpacingData.generate(10);
        },
        child: child,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text('Spacing'),
          bottom: TabBar(
            tabs: [
              Tab(
                text: 'Values',
              ),
              Tab(
                text: 'Space',
              ),
              Tab(
                text: 'SpacedFlex',
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            const ValuesTab(),
            const SpaceTab(),
            const SpacedFlexTab(),
          ],
        ),
      ),
    );
  }
}

class ValuesTab extends StatelessWidget {
  const ValuesTab();

  Widget _box(BuildContext context, String title, double height) {
    final spacing = Spacing.of(context);
    return Padding(
      padding: spacing.insets.all.big,
      child: Column(
        children: [
          Text(
            title,
            textAlign: TextAlign.center,
          ),
          Container(
            color: Colors.red,
            width: spacing.spaces.big,
            height: height,
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final spacing = Spacing.of(context);
    return Container(
      color: Colors.red.withOpacity(0.2),
      margin: spacing.insets.all.big,
      padding: spacing.insets.all.normal,
      child: ListView(
        children: <Widget>[
          _box(context, 'extraSmall', spacing.spaces.extraSmall),
          _box(context, 'small', spacing.spaces.small),
          _box(context, 'semiSmall', spacing.spaces.semiSmall),
          _box(context, 'normal', spacing.spaces.normal),
          _box(context, 'semiBig', spacing.spaces.semiBig),
          _box(context, 'big', spacing.spaces.big),
          _box(context, 'extraBig', spacing.spaces.extraBig),
        ],
      ),
    );
  }
}

class SpaceTab extends StatelessWidget {
  const SpaceTab();

  Widget _box(BuildContext context) {
    final spacing = Spacing.of(context);
    return Container(
      color: Colors.blue,
      width: spacing.spaces.big,
      height: spacing.spaces.big,
    );
  }

  @override
  Widget build(BuildContext context) {
    final spacing = Spacing.of(context);
    return Container(
      color: Colors.blue.withOpacity(0.2),
      margin: spacing.insets.all.big,
      padding: spacing.insets.all.normal,
      child: ListView(
        children: <Widget>[
          _box(context),
          Space.extraSmall(),
          _box(context),
          Space.small(),
          _box(context),
          Space.semiSmall(),
          _box(context),
          Space.normal(),
          _box(context),
          Space.semiBig(),
          _box(context),
          Space.big(),
          _box(context),
          Space.extraBig(),
          _box(context),
        ],
      ),
    );
  }
}

class SpacedFlexTab extends StatelessWidget {
  const SpacedFlexTab();

  Widget _box(BuildContext context) {
    final spacing = Spacing.of(context);
    return Container(
      color: Colors.green,
      width: spacing.spaces.big,
      height: spacing.spaces.big,
    );
  }

  @override
  Widget build(BuildContext context) {
    final spacing = Spacing.of(context);
    return Container(
      color: Colors.green.withOpacity(0.2),
      child: ListView(
        children: [
          SpacedColumn.normal(
            padding: spacing.insets.all.normal,
            children: <Widget>[
              _box(context),
              _box(context),
              _box(context),
              _box(context),
            ],
          ),
          Center(
            child: SpacedRow.normal(
              padding: spacing.insets.all.normal,
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                _box(context),
                _box(context),
                _box(context),
                _box(context),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
