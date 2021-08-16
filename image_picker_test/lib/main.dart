import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(title: Text('Pick Image From Camera & Gallery')),
            body: Center(child: MyImagePicker())));
  }
}

class MyImagePicker extends StatefulWidget {
  @override
  MyImagePickerState createState() => MyImagePickerState();
}

class MyImagePickerState extends State {
  late File imageURI;
  final _picker = ImagePicker();

  Future getImageFromCamera() async {
    PickedFile? image = await _picker.getImage(source: ImageSource.camera);

    setState(() {
      imageURI = File(image!.path);
    });
  }

  Future getImageFromGallery() async {
    PickedFile? image = await _picker.getImage(source: ImageSource.gallery);

    setState(() {
      imageURI = File(image!.path);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
          imageURI == null
              ? Text('No image selected.')
              : Image.file(imageURI,
                  width: 300, height: 200, fit: BoxFit.cover),
          Container(
              margin: EdgeInsets.fromLTRB(0, 30, 0, 20),
              child: RaisedButton(
                onPressed: () => getImageFromCamera(),
                child: Text('Click Here To Select Image From Camera'),
                textColor: Colors.white,
                color: Colors.green,
                padding: EdgeInsets.fromLTRB(12, 12, 12, 12),
              )),
          Container(
              margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
              child: RaisedButton(
                onPressed: () => getImageFromGallery(),
                child: Text('Click Here To Select Image From Gallery'),
                textColor: Colors.white,
                color: Colors.green,
                padding: EdgeInsets.fromLTRB(12, 12, 12, 12),
              ))
        ])));
  }
}
