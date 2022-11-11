import '../Helpers/exportClass.dart';

// ignore: camel_case_types
class Marina extends StatelessWidget {
  const Marina({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Comida Marina"),
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
            itemCount: marino.length,
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
                        marino[index].images,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text(marino[index].nombre),
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
