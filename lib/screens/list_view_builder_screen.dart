import 'package:flutter/material.dart';

class ListViewBuilderScreen extends StatefulWidget {
  const ListViewBuilderScreen({Key? key}) : super(key: key);

  @override
  State<ListViewBuilderScreen> createState() => _ListViewBuilderScreenState();
}

class _ListViewBuilderScreenState extends State<ListViewBuilderScreen> {
  final List<int> imagesIds = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
  final ScrollController scrollController = ScrollController();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    scrollController.addListener(() {
      print(
          ' ${scrollController.position.pixels},  ${scrollController.position.maxScrollExtent} ');

      if ((scrollController.position.pixels + 500) >=
          scrollController.position.maxScrollExtent) {
        add5();
      }
    });
  }

  void add5() {
    final lastId = imagesIds.last;
    imagesIds.addAll([1, 2, 3, 4, 5].map((e) => lastId + e));

    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber,
      //appBar: AppBar(),
      body: MediaQuery.removePadding(
        //elimina los espacios en blanco que deja las imagenes en top o bottom
        context: context,
        removeTop: true,
        removeBottom: true,
        child: ListView.builder(
          controller:
              scrollController, //controller sirve para cualquier widget con scroll
          itemCount: imagesIds.length,
          itemBuilder: (BuildContext context, int index) {
            return FadeInImage(
                width: double.infinity, //toma todo el ancho posible
                height: 300,
                fit: BoxFit.cover, //toome todo el espacio que tiene la imagen
                placeholder: const AssetImage('assets/jar-loading.gif'),
                image: NetworkImage(
                    'https://picsum.photos/500/300?image=${index + imagesIds[index]}'));
          },
        ),
      ),
    );
  }
}
