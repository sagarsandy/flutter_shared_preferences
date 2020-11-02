# Flutter local storage using shared preferences(key-value pair), User defaults in iOS

Flutter local storage using shared preferences(key-value pair), User defaults in iOS

Storing data: 
    
        _setValues() async {
            SharedPreferences spf = await SharedPreferences.getInstance();
            spf.setString('name', 'Bingo');
            spf.setInt('age', 30);
            spf.setBool('canPlay', true);
            spf.setDouble('height', 5.95);
        }
  
Retrieve Data:
    
        _showValues() async {
            SharedPreferences spf = await SharedPreferences.getInstance();
            String name = spf.getString('name') ?? 'default name';
            int age = spf.getInt('age') ?? 18;
            bool canPlay = spf.getBool('canPlay') ?? false;
            double height = spf.getDouble('height') ?? 5.55;
        
            print("Name is $name");
            print("$name age is $age");
            print("$name can play cricekt..? $canPlay");
            print("$name height is $height");
        
            // If u want to check key exist or not in shared preferences
            bool keyExist = spf.containsKey('names');
            print("Key is exist:  $keyExist");
      }
  
 Remove data: 
    
        _removeValues() async {
            SharedPreferences spf = await SharedPreferences.getInstance();
            spf.remove('name');
            spf.remove('age');
            spf.remove('canPlay');
            spf.remove('height');
        }
        
        
Flutter Info:
## Getting Started

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://flutter.dev/docs/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://flutter.dev/docs/cookbook)

For help getting started with Flutter, view our
[online documentation](https://flutter.dev/docs), which offers tutorials,
samples, guidance on mobile development, and a full API reference.
