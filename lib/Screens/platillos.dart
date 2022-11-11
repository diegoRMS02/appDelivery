import '../Helpers/exportClass.dart';

// ignore: camel_case_types
class platillos extends StatelessWidget {
  const platillos({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Comida Criolla"),
        automaticallyImplyLeading: true,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => Navigator.pushNamed(context, "home"),
        ),
      ),
      backgroundColor: Colors.orange,
      body: Container(
        margin: const EdgeInsets.all(20),
        child: GridView.builder(
            itemCount: Menu.length,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2),
            itemBuilder: ((context, index) {
              return Container(
                margin: const EdgeInsets.all(10),
                padding: EdgeInsets.only(top: 0),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white),
                child: GestureDetector(
                  onTap: () {
                    print('ok');
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      Image.network(
                        Menu[index].images,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text(Menu[index].nombre),
                          FloatingActionButton(
                              hoverColor: Colors.red,
                              onPressed: () {
                                print('ok');
                              },
                              child: const Icon(Icons.shop_2)),
                        ],
                      )
                    ],
                  ),
                ),
              );
            })),
      ),
    );
  }
}
