import 'package:material_ui/material_ui.dart';

class WorkListPage extends StatelessWidget{
  const WorkListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Page d'accueil"),),
      body: SafeArea(child: Center(child: const Text("Accueil"),)),
    );
  }
  
}