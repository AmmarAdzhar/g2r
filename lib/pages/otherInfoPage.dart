/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
import 'package:doctor/pages/homePage.dart';
import 'package:flutter/material.dart';
import 'package:doctor/utilities/constancePage.dart' as style;

class otherInfoPage extends StatefulWidget {
  otherInfoPage({Key? key}) : super(key: key);

  static const String pageId = 'otherInfoPage';

  @override
  State<otherInfoPage> createState() => _otherInfoPageState();
}

class _otherInfoPageState extends State<otherInfoPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey[200]!,
        appBar: _buildAppBar(),
        body: _buildBody(),
        bottomNavigationBar: _buildbottomNavigationBar(),
      ),
    );
  }

  PreferredSizeWidget _buildAppBar() {
    return AppBar(
      automaticallyImplyLeading: false,
      backgroundColor: Colors.grey[200]!,
      elevation: 0,
      centerTitle: true,
      title: Row(
        children: [
          InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: Container(
              decoration: style.appBarButtonStyle(),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Icon(
                  Icons.arrow_back,
                  color: Colors.purple,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildBody() {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Step 3 of 3',
              style: TextStyle(fontFamily: 'bold'),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Text(
                'Other Details',
                style: TextStyle(fontFamily: 'bold', fontSize: 20),
              ),
            ),
            Text(
              'Your information will be share on the Mycheq dashboard.',
              style: TextStyle(color: Colors.black),
            ),
            _buildInputContent(
                'Account Bank Number', 'Your Account Bank Number'),
            _buildInputContent('EPF Number', 'Your EPF Number'),
            _buildInputContent('Perkeso Number', 'Your Perkeso Number'),
            _buildInputContent('Tax Number', 'Your Tax Number'),
          ],
        ),
      ),
    );
  }

  Widget _buildbottomNavigationBar() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      child: InkWell(
        onTap: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => homePage()));
        },
        child: Container(
          width: double.infinity,
          padding: EdgeInsets.symmetric(vertical: 13.0),
          decoration: style.contentButtonStyle(),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Update',
                style: TextStyle(
                    color: Colors.black, fontSize: 20, fontFamily: 'bold'),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildInputContent(ttltxt, txt) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5),
            child: Text(
              '$ttltxt',
              style: TextStyle(fontFamily: 'bold'),
            ),
          ),
          Container(
            width: double.infinity,
            child: TextField(
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.white,
                hintText: '$txt',
                contentPadding:
                    const EdgeInsets.only(bottom: 8.0, top: 14.0, left: 20),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: style.appColor),
                  borderRadius: BorderRadius.circular(10.0),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey.shade300),
                  borderRadius: BorderRadius.circular(10.0),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
