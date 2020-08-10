import 'package:flutter/material.dart';

class UpdatePhotoBottomSheet extends StatelessWidget {
  const UpdatePhotoBottomSheet({
    @required this.getImageFromCamera,
    @required this.getImageFromGallery,
    Key key,
  }) : super(key: key);

  final VoidCallback getImageFromGallery;

  final VoidCallback getImageFromCamera;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Container(
          height: 160,
          child: Column(
            children: <Widget>[
              Text(
                'Select Photo',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                  color: Colors.black54,
                ),
              ),
              SizedBox(
                height: 18,
              ),
              OutlineButton(
                padding: EdgeInsets.all(20),
                highlightElevation: 0,
                borderSide: BorderSide(
                  width: 2,
                  color: Colors.black38,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Icon(
                      Icons.photo_library,
                      color: Colors.black54,
                    ),
                    SizedBox(width: 24),
                    Text(
                      'From Gallery',
                      style: TextStyle(color: Colors.black54),
                    ),
                  ],
                ),
                onPressed: getImageFromGallery,
              ),
              SizedBox(
                height: 16,
              ),
              OutlineButton(
                padding: EdgeInsets.all(20),
                highlightElevation: 0,
                borderSide: BorderSide(
                  width: 2,
                  color: Colors.black38,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Icon(
                      Icons.add_a_photo,
                      color: Colors.black54,
                    ),
                    SizedBox(width: 24),
                    Text(
                      'From Camera',
                      style: TextStyle(
                        color: Colors.black54,
                      ),
                    ),
                  ],
                ),
                onPressed: getImageFromCamera,
              )
            ],
          ),
        ),
      ),
    );
  }
}
