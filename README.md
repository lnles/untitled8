# untitled8

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.


##  run the generator

Use the [watch] flag to watch the files' system for edits and rebuild as necessary.
```shell
dart run build_runner watch
```
If you want the generator to run one time and exit, use
```shell
dart run build_runner build
```
Add the generated route to your routes list


# Structure divided by scope
```
.                  
├── features                                 # All features or Modules 
│   ├─ auth                                  # Auth's MVC       
│   │  ├── auth_model.dart   
│   │  ├── auth_controller.dart  
│   │  └── auth_page.dart                      
│   ├─ home                                  # Home's MVC       
│   │  ├── home_model.dart   
│   │  ├── home_controller.dart  
│   │  └── home_page.dart                        
│   └─ product                               # Product's MVC     
│      ├── product_model.dart   
│      ├── product_controller.dart
│      └── product_page.dart                    
├── core                                     # Tools and utilities
├── app_widget.dart                          # Main Widget containing MaterialApp 
└── main.dart                                # runApp
```