/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
import 'package:doctor/pages/workProfilePage.dart';
import 'package:flutter/material.dart';
import 'package:doctor/utilities/constancePage.dart' as style;

class basicInfoPage extends StatefulWidget {
  basicInfoPage({Key? key}) : super(key: key);

  static const String pageId = 'basicInfoPage';

  @override
  State<basicInfoPage> createState() => _basicInfoPageState();
}

class _basicInfoPageState extends State<basicInfoPage> {
  DateTime date = DateTime(2022, 12, 24);

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
          SizedBox(height: 50),
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
          InkWell(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => basicInfoPage()));
            },
            child: Stack(
              clipBehavior: Clip.none,
              children: [
                Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.shade300,
                          blurRadius: 10.0,
                        ),
                      ]),
                  child: Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Icon(
                      Icons.power_settings_new,
                      color: Colors.purple,
                    ),
                  ),
                ),
              ],
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
              'Step 1 of 3',
              style: TextStyle(fontFamily: 'bold'),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Text(
                'Employee Profile',
                style: TextStyle(fontFamily: 'bold', fontSize: 20),
              ),
            ),
            Text(
              'Your information will be share on the Mycheq dashboard.',
              style: TextStyle(color: Colors.black, fontSize: 17),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Row(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: SizedBox.fromSize(
                      size: Size.fromRadius(60),
                      child: FittedBox(
                        child: Image.asset('assets/images/User.png'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Expanded(
                      child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Column(
                      children: [
                        Container(
                          height: 50,
                          decoration: style.contentButtonStyle(),
                          child: Center(
                            child: Text(
                              'Upload Your Avatar',
                              style: TextStyle(
                                  color: Colors.black, fontFamily: 'bold'),
                            ),
                          ),
                        ),
                      ],
                    ),
                  )),
                ],
              ),
            ),
            _buildInputContent('First Name', 'Your first name'),
            _buildInputContent('Last Name', 'Your last name'),
            _buildInputContent('IC Number', 'Your IC number'),
            _buildInputContent('Home Address', 'Your home address'),
            _buildButton2('Birthday'),
          ],
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
              style: TextStyle(fontFamily: 'bold', fontSize: 16),
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

  Widget _buildButton2(ttltxt) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5),
            child: Text(
              '$ttltxt',
              style: TextStyle(
                fontFamily: 'bold',
              ),
            ),
          ),
          Container(
            height: 50,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(color: Colors.grey.shade300),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                children: [
                  TextButton.icon(
                    icon: Icon(Icons.calendar_month_outlined),
                    onPressed: () async {
                      DateTime? newDate = await showDatePicker(
                        context: context,
                        initialDate: date,
                        firstDate: DateTime(1900),
                        lastDate: DateTime(2100),
                        helpText: 'Select Your Birth Date',
                        builder: (context, child) {
                          return Theme(
                            data: Theme.of(context).copyWith(
                              colorScheme: ColorScheme.light(
                                primary:
                                    style.appColor, // header background color
                                onPrimary: Colors.black, // header text color
                                onSurface: Colors.black, // body text color
                              ),
                              textButtonTheme: TextButtonThemeData(
                                style: TextButton.styleFrom(
                                  primary: style.appColor, // button text color
                                ),
                              ),
                            ),
                            child: child!,
                          );
                        },
                      );
                      if (newDate == null) return;
                      setState(() => date = newDate);
                    },
                    label: Text(
                      '${date.day}/${date.month}/${date.year}',
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildbottomNavigationBar() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: InkWell(
        onTap: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => workProfilePage()));
        },
        child: Container(
          width: double.infinity,
          padding: EdgeInsets.symmetric(vertical: 13.0),
          decoration: style.contentButtonStyle(),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Continue',
                style: TextStyle(
                    color: Colors.black, fontSize: 17, fontFamily: 'bold'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
