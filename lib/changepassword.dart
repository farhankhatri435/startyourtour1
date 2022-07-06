import 'package:flutter/material.dart';

class ChangePassword extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var currentpassc = TextEditingController();
    var passc = TextEditingController();
    var confirmpassc = TextEditingController();
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        foregroundColor: Theme.of(context).primaryColor,
        title: Container(
          width: double.infinity,
          padding: EdgeInsets.only(top: 30, bottom: 3),
          alignment: Alignment.centerRight,
          child: Text(
            'Change Password',
            style: TextStyle(
                color: Theme.of(context).primaryIconTheme.color,
                fontSize: 25,
                fontWeight: FontWeight.bold),
          ),
        ),
        leading: Builder(builder: (BuildContext context) {
          return Container(
            padding: EdgeInsets.only(top: 20),
            child: IconButton(
              icon: Icon(Icons.arrow_back_ios_new),
              iconSize: 32, //IconTheme.of(context).size,
              onPressed: () =>
                  Navigator.pop(context), //Scaffold.of(context).openDrawer(),
            ),
          );
        }),
        elevation: 0,
      ),
      body:
          Column(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        Container(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
          child: Form(
              child: Column(
            children: [
              TextFormField(
                controller: passc,
                style: TextStyle(color: Colors.black),
                decoration: InputDecoration(
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey),
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey),
                  ),
                  border: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey),
                  ),
                  suffixIcon: Icon(
                    Icons.vpn_key_sharp,
                    color: Theme.of(context).primaryIconTheme.color,
                    size: 20,
                  ),
                  hintText: 'Current Password',
                  hintStyle: TextStyle(color: Colors.black),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              TextFormField(
                controller: currentpassc,
                style: TextStyle(color: Colors.black),
                decoration: InputDecoration(
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey),
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey),
                  ),
                  border: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey),
                  ),
                  suffixIcon: Icon(
                    Icons.vpn_key_sharp,
                    color: Theme.of(context).primaryIconTheme.color,
                    size: 20,
                  ),
                  hintText: 'Password',
                  hintStyle: TextStyle(color: Colors.black),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              TextFormField(
                controller: confirmpassc,
                style: TextStyle(color: Colors.black),
                decoration: InputDecoration(
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey),
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey),
                  ),
                  border: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey),
                  ),
                  suffixIcon: Icon(
                    Icons.vpn_key_sharp,
                    color: Theme.of(context).primaryIconTheme.color,
                    size: 20,
                  ),
                  hintText: 'Confirm Password',
                  hintStyle: TextStyle(color: Colors.black),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              ElevatedButton(
                  style: ButtonStyle(
                      padding: MaterialStateProperty.all(
                          EdgeInsets.symmetric(vertical: 9)),
                      backgroundColor:
                          MaterialStateProperty.all(Color(0xFFF26A38)),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18.0),
                        ),
                      )),
                  child: Container(
                    width: 150,
                    child: Center(
                      child: Text('Save',
                          style: TextStyle(fontSize: 20, color: Colors.white)),
                    ),
                  ),
                  onPressed: () {
                    Navigator.pop(context);
                    showDialog(
                        context: context,
                        builder: (ctx) => Dialog(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(
                                      30.0)), //this right here
                              child: Container(
                                padding: EdgeInsets.only(left: 25, top: 15),
                                height: 210.0,
                                width: 300.0,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Text(
                                      'Success!',
                                      style: TextStyle(
                                          color: Theme.of(context)
                                              .primaryIconTheme
                                              .color,
                                          fontSize: 30,
                                          fontWeight: FontWeight.w600),
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Text(
                                      'Your password has been changed.',
                                      style: TextStyle(
                                          color: Colors.black, fontSize: 20),
                                    ),
                                    SizedBox(
                                      height: 20,
                                    ),
                                    Center(
                                      child: ElevatedButton(
                                          style: ButtonStyle(
                                              padding:
                                                  MaterialStateProperty.all(
                                                      EdgeInsets.symmetric(
                                                          vertical: 7)),
                                              backgroundColor:
                                                  MaterialStateProperty.all(
                                                      Color(0xFFF26A38)),
                                              shape: MaterialStateProperty.all<
                                                  RoundedRectangleBorder>(
                                                RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          18.0),
                                                ),
                                              )),
                                          child: Container(
                                            width: 150,
                                            child: Center(
                                              child: Text('OK',
                                                  style: TextStyle(
                                                      fontSize: 20,
                                                      color: Colors.white)),
                                            ),
                                          ),
                                          onPressed: () {
                                            Navigator.pop(ctx);
                                          }),
                                    )
                                  ],
                                ),
                              ),
                            ));
                    // Navigator.pushReplacement(
                    //   context,
                    //   MaterialPageRoute(builder: (context) => HomePage()),
                    // );
                  })
            ],
          )),
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 90),
          child: Image(
              fit: BoxFit.cover,
              width: 200,
              height: 150,
              image: AssetImage(
                'assets/abc.jpg',
              )),
        )
      ]),
    );
  }
}
