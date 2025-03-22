
import 'package:all/all.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text('Home'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: 80.sw,
              child: ElevatedButton(
                onPressed: () {
                  All.showCustomDialog(
                      child: Center(
                        child: Container(
                          width: 60.sw,
                          height: 150.sP,
                          color: Colors.white,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text('Want to go to Second Page?',
                                  style:TextStyle(fontSize: 15.sP,
                                    color: Colors.black,
                                    decoration: TextDecoration.none,
                                  ),),
                              ),
                              SizedBox(
                                width: 100.sP,
                                child: ElevatedButton(
                                  child: Text('Yes'),
                                  onPressed: () {
                                    All.pop();
                                    Future.delayed(const Duration(milliseconds: 500), () {
                                       // Navigate using goRouter
                                      /*
                                      *
                                      * AppRouter.goPush(AppRouter.detailPage);
                                      *
                                      * */

                                      //Navigate using Nagigate service using default flutter navigate
                                      All.push(DetailsPage());
                                    });
                                  },
                                ),
                              )
                            ],
                          ),
                        ),
                      ));
                },
                child: Text('Go to Second Page',
                    style: TextStyle(
                      fontSize: 15.sP,
                    )),
              ),
            ),
          ],
        ),
      ),
    );
  }
}