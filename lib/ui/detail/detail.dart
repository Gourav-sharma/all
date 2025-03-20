
import 'package:all/all.dart';

class DetailsPage extends StatelessWidget {
  const DetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Details')),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            All.showSnackBar("Clicked");
          },
          child: const Text('Go Back'),
        ),
      ),
    );
  }
}