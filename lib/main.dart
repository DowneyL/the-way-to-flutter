import 'package:flutter/material.dart';
import 'home.dart';
import 'about.dart';
import 'august5th/counter.dart';
import 'august5th/tapboxa.dart';
import 'august5th/tapboxb.dart';
import 'august5th/tapboxc.dart';
import 'august5th/cupertino.dart';
import 'august5th/textdemo.dart';
import 'august5th/button_demo.dart';
import 'august5th/image_demo.dart';
import 'august5th/icon_demo.dart';
import 'august5th/switch_checkbox_demo.dart';
import 'august5th/text_field_demo.dart';
import 'august5th/text_focus_demo.dart';
import 'august5th/form_demo.dart';
import 'august5th_widget/column_row_demo.dart';
import 'august5th_widget/flex_demo.dart';
import 'august5th_widget/wrap_demo.dart';
import 'august5th_widget/flow_demo.dart';
import 'august5th_widget/stack_pos_demo.dart';
import 'august5th_widget/padding_demo.dart';
import 'august5th_widget/constrained_box_demo.dart';
import 'august5th_widget/decorated_box.dart';
import 'august5th_widget/transform_demo.dart';
import 'august5th_widget/container_demo.dart';
import 'august5th_widget/scaffold_demo.dart';
import 'august5th_widget/single_scroll_demo.dart';
import 'august5th_widget/list_view_demo.dart';
import 'august5th_widget/infinite_list_view.dart';
import 'august5th_widget/grid_view_demo.dart';
import 'august5th_widget/custom_scroll_demo.dart';

void main() => runApp(Application());
//void main() {
//  runApp(Application());
//}

class Application extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blueGrey,
      ),
      routes: {
        "about": (context) => About(),
        "counter": (context) => CounterWidget(),
        "tapboxa": (context) => TapBoxA(),
        "tapboxb": (context) => TapBoxBParentWidget(),
        "tapboxc": (context) => CParentWidget(),
        "cupertino": (context) => CupertinoWidget(),
        "textdemo": (context) => TextDemo(),
        "button_demo": (context) => ButtonDemo(),
        "image_demo": (context) => ImageDemo(),
        "icon_demo": (context) => IconDemo(),
        "switch_checkbox_demo": (context) => SwitchAndCheckboxDemoWidget(),
        "text_input_demo": (context) => TextFieldDemoWidget(),
        "text_focus_demo": (context) => TextFocusDemoWidget(),
        "form_demo": (context) => FormDemoRoute(),
        "column_row_demo": (context) => ColumnRowDemoRoute(),
        "flex_demo": (context) => FlexLayoutDemoRoute(),
        "wrap_demo": (context) => WrapDemoRoute(),
        "flow_demo": (context) => FlowDemoRoute(),
        "stack_pos_demo": (context) => StackPosDemoRoute(),
        "padding_demo": (context) => PaddingDemoRoute(),
        "constrained_box_demo": (context) => ConstrainedBoxDemoRouter(),
        "decorated_box_demo": (context) => DecoratedBoxDemoRoute(),
        "transform_demo": (context) => TransformDemoRoute(),
        "container_demo": (context) => ContainerDemoRoute(),
        "scaffold_demo": (context) => ScaffoldDemoRoute(),
        "single_scroll_demo": (context) => SingleChildScrollViewDemoRoute(),
        "list_view_demo": (context) => ListViewDemoRoute(),
        "infinite_list_view": (context) => InfiniteListView(),
        "grid_view_demo": (context) => GridViewDemoRoute(),
        "custom_scroll_demo": (context) => CustomScrollViewDemoRoute(),
      },
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}
