import 'package:flutter/material.dart';
import 'package:moreno/formularioVentas.dart';
import 'package:moreno/formularioProducto.dart';
import 'package:moreno/formularioUsuarioCliente.dart';
import 'package:moreno/formularioEmpleado.dart';

void main() => runApp(const MiAplicacionDulceria());

class MiAplicacionDulceria extends StatelessWidget {
  const MiAplicacionDulceria({super.key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // Application name
      title: 'Cklass',
      // Application theme data, you can set the colors for the application as
      // you want
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      // A widget which will be started on application startup
      home: const MiPaginaInicial(titulo: 'Cklass'),
    );
  }
}

class MiPaginaInicial extends StatelessWidget {
  final String titulo;
  const MiPaginaInicial({super.key, required this.titulo});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            centerTitle: true,
            title: const Text('Cklass'),
            backgroundColor: const Color(0xffff2e2e),
            elevation: 8,
            bottom: TabBar(
              indicatorColor: Colors.amberAccent,
              indicator: BoxDecoration(color: const Color(0xffffffff)),
              tabs: [
                Tab(
                  icon: Image.asset('assets/icons8-zapatillas-50.png'),
                ),
                Tab(
                  icon: Image.asset('assets/icons8-grupo-de-usuario-50.png'),
                ),
                Tab(
                  icon: Image.asset('assets/icons8-employ-64.png'),
                ),
                Tab(
                  icon: Image.asset('assets/icons8-bolsa-de-compras-50.png'),
                ),
              ],
            ),
          ),
          body: TabBarView(
            children: [
              ListView(
                children: const [
                  Text(
                    "Registro de productos",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontWeight: FontWeight.normal,
                      fontSize: 24,
                    ),
                  ),
                  FormularioProducto(),
                ],
              ),
              ListView(
                children: const [
                  Text(
                    "Usuarios/Clientes",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontWeight: FontWeight.normal,
                      fontSize: 24,
                    ),
                  ),
                  FormularioUsuarioCliente(),
                ],
              ),
              ListView(
                children: const [
                  Text(
                    "Empleados",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontWeight: FontWeight.normal,
                      fontSize: 24,
                    ),
                  ),
                  FormularioEmpleado(),
                ],
              ),
              ListView(
                children: const [
                  Text(
                    "Ventas",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontWeight: FontWeight.normal,
                      fontSize: 24,
                    ),
                  ),
                  FormularioVentas(),
                ],
              ),
            ],
          ),
        ));
  }
}
