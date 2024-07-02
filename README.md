> [!NOTE]
> Methylene isn't available for use.
# Flutter core (Methylene)
# ![methylene](https://github.com/dioxide-engine/flutter-core/assets/126571884/9e3405c9-9746-4b9b-baec-c3946577703e)
Methylene provides the design and logic core for Flutter Dioxide applications and extensions. It is intended for the use of plugin creation and as the base for other dioxide first-party applications.
## Usage
1. Add `methylene : ^1.0` to your pubspec.yaml and run `flutter pub get`.
2. Load the global configuration for all Dioxide applications.
   > The global configuration is stored in the operating system related home directory in a directory called `.oxy`.
   
   * ```
     import 'package:methylene/core' as core;
     void main() {
       FlutterWidgetBindings.ensureInitizalized();
       core.loadEnvoirenment();
     }
     ```
4. Take usage of components.
