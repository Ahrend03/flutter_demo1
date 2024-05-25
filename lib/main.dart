import 'package:flutter/material.dart';

void main() {
 runApp(MaterialApp(
  debugShowCheckedModeBanner: false,
  home: HomePage(),
 ));
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: Icon(
            Icons.arrow_back_ios,
            size: 18.0,
          ),
          backgroundColor: Colors.white,
          toolbarHeight: 30.0,
          actions: [
            Padding(
              padding: const EdgeInsets.all(4.0),
              child: Icon(
                Icons.turned_in_not,
                size: 18.0,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(4.0),
              child: Icon(
                Icons.file_upload_outlined,
                size: 18.0,
              ),
            )
          ],
        ),
        body: Stack(
          children: [
            Container(
              child: Column(
                children: [
                  Image.asset(
                    "assets/images/tecnog.png",
                    fit: BoxFit.fill,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Prendas que cambian de forma gracias a los tejidos inteligentes.",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                          softWrap: true,
                          overflow: TextOverflow.ellipsis,
                          maxLines: 2,
                        ),
                        SizedBox(height: 8.0),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 32.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        iconBar("Coments", Icons.comment_bank_outlined),
                        iconBar("Like", Icons.favorite_border_outlined),
                        iconBar("Share", Icons.share_outlined),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(12),
                    child: Row(
                      children: [
                        CircleAvatar(
                          radius: 25.0,
                          backgroundImage: AssetImage('assets/images/tony.jpg'),
                        ),
                        SizedBox(width: 16.0),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Robert Downey Jr.',
                              style: TextStyle(
                                fontSize: 18.0,
                                fontWeight: FontWeight.bold,
                                color: Colors.grey,
                              ),
                            ),
                          ],
                        ),
                        Spacer(),
                        Text(
                          '1hr Ago',
                          style: TextStyle(
                            fontSize: 16.0,
                            color: Colors.grey,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(18),
                    child: Text(
                      "Las capas de invisibilidad son una de las tecnologías que suelen prodigarse en la ciencia ficción. Y, si bien no se descartan avances similares en el campo de la ropa inteligente en los próximos años, hay otras aplicaciones no menos sorprendentes a la vuelta de la  esquina. Además de funcionalidades estéticas como cambiar de color, los investigadores están desarrollando una nueva generación de tejidos inteligentes que pueden cambiar de estructura para mantener la temperatura corporal. Es el caso del material que acaba de presentar un equipo de especialistas del MIT estadounidense.",
                      style: TextStyle(
                        fontSize: 18,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              bottom: 20.0,
              right: 20.0,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  shape: CircleBorder(),
                  padding: EdgeInsets.all(16.0),
                ),
                onPressed: () {
                  
                },
                child: Icon(Icons.arrow_upward),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget iconBar(String accion, IconData icono) {
    return Row(
      children: [
        Icon(
          icono,
          color: Colors.black,
        ),
        SizedBox(width: 8),
        Text(accion)
      ],
    );
  }
}