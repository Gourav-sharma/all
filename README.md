# all

A plugin to help in all type development in flutter.

## Getting Started

This project includes several services and extensions to enhance the Flutter development experience:

- **Context Service**: Provides a global context throughout the application, allowing for easy access and manipulation of context-dependent properties and methods.

- **Size Extensions**: Offers extensions for all size-related properties, including `sp`, `sw`, `w`, and `h`. These extensions facilitate responsive design by scaling text, button sizes, and screen dimensions based on the device's screen size.

- **Navigation Service**: Simplifies navigation between pages using a consistent API, making it straightforward to manage routing in the application.

- **Snackbar and Custom Dialog**: Provides utility methods to show snackbars and custom dialogs from anywhere in the app, improving the user interaction experience.


# Home Page

This section describes the `Home` class, a `StatelessWidget` that serves as the main page of the application. It features a simple user interface with a button that, when pressed, displays a custom dialog and navigates to a second page using the navigation services.

## Key Features

- **Custom Dialog**: The `Home` widget includes an `ElevatedButton` that triggers a custom dialog. The dialog asks the user if they want to navigate to a second page.

- **Responsive Design**: Uses size extensions (`sw`, `sp`) for responsive design. The button and dialog sizes adapt to the screen dimensions, ensuring a consistent appearance across different devices.

- **Navigation**: Utilizes the `All` plugin for navigation. When the "Yes" button in the dialog is pressed, the app navigates to the `DetailsPage` with a delay to ensure a smooth transition.

## Code Example

```dart
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
                          height: 150.sp,
                          color: Colors.white,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  'Want to go to Second Page?',
                                  style: TextStyle(
                                    fontSize: 15.sp,
                                    color: Colors.black,
                                    decoration: TextDecoration.none,
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 100.sp,
                                child: ElevatedButton(
                                  child: Text('Yes'),
                                  onPressed: () {
                                    All.pop();
                                    Future.delayed(
                                        const Duration(milliseconds: 500), () {
                                      // Navigate using goRouter
                                      /*
                                      *
                                      * AppRouter.goPush(AppRouter.detailPage);
                                      *
                                      */

                                      // Navigate using Navigate service using default flutter navigate
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
                child: Text(
                  'Go to Second Page',
                  style: TextStyle(
                    fontSize: 15.sp,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
```