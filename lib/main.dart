import 'package:flutter/material.dart';

void main() {
  runApp(const DemoApp());
}

class DemoApp extends StatefulWidget {
  const DemoApp({super.key});

  @override
  State<DemoApp> createState() => _DemoAppState();
}

class _DemoAppState extends State<DemoApp> {
  List<String> friendList = [
    'Iram',
    'Sabbir',
    'Rakib',
    'Hasan',
    'Roy',
    'Niloy',
    'Kopil',
    'Umama',
    'Bappy',
    'Antor',
    'Saiful',
    'Saiful',
    'Saiful',
    'Saiful',
    'Saiful',
  ];
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  const Home({super.key});

  final TextEditingController _emailTEController = TextEditingController();

  final TextEditingController _passswordTEController = TextEditingController();

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Demo App',
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Home',
            style: TextStyle(color: Colors.white),
=======
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
        backgroundColor: Colors.blue,
        centerTitle: true,
      ),
      body: Scrollbar(
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(
                height: 16,
              ),
              ElevatedButton(
                onPressed: () {
                  showModalBottomSheet(
                    barrierColor: Colors.green.shade100,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    isScrollControlled: false,
                    useSafeArea: true,
                    enableDrag: false,
                    context: context,
                    builder: (context) {
                      return Column(
                        children: [
                          const Padding(
                            padding: EdgeInsets.symmetric(vertical: 16),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                SizedBox(
                                  height: 16,
                                ),
                                Text(
                                  'Title',
                                  style: TextStyle(fontSize: 18),
                                ),
                              ],
                            ),
                          ),
                          const Divider(
                            height: 10,
                            thickness: 4,
                          ),
                          const Text('Sample'),
                          Row(
                            children: [
                              ElevatedButton(
                                onPressed: () {},
                                child: const Text('Cancel'),
                              ),
                              ElevatedButton(
                                onPressed: () {},
                                child: const Text('Save'),
                              ),
                            ],
                          ),
                        ],
                      );
                    },
                  );
                },
                child: const Text(
                  'TAP',
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),
              ),
              const SizedBox(height: 24),
              Padding(
                padding: const EdgeInsets.all(18),
                child: TextField(
                  //maxLength: 50,
                  onChanged: (String? value) {
                    print('value');
                  },
                  controller: TextEditingController(),
                  obscureText: false,
                  maxLines: 1,
                  keyboardType: TextInputType.emailAddress,
                  enabled: true,
                  decoration: InputDecoration(
                    hintText: 'Email',
                    hintStyle: TextStyle(
                      fontWeight: FontWeight.w600,
                      color: Colors.grey.shade50,
                    ),
                    labelText: 'EMail Address',
                    prefix: const Icon(Icons.email),
                    suffix: const Icon(Icons.person),
                    fillColor: Colors.white54,
                    filled: true,
                    border: const OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black),
                    ),
                    enabledBorder: const OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.green),
                    ),
                    focusedBorder: const OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.red, width: 2),
                    ),
                    /*disabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.green, width: 4),
                    ),*/
                  ),
                ),

              ),
              Padding(
                padding: const EdgeInsets.all(18),
                child: TextField(
                  //maxLength: 50,
                  onChanged: (String? value) {
                    print('value');
                  },
                  controller: TextEditingController(),
                  obscureText: true,
                  maxLines: 1,
                  keyboardType: TextInputType.visiblePassword,
                  enabled: true,
                  decoration: InputDecoration(
                    hintText: 'Password',
                    hintStyle: TextStyle(
                      fontWeight: FontWeight.w600,
                      color: Colors.grey.shade50,
                    ),
                    labelText: 'Password',
                    prefix: const Icon(Icons.phone),
                    suffix: const Icon(Icons.person),
                    fillColor: Colors.white54,
                    filled: true,
                    border: const OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.red),
                    ),
                    enabledBorder: const OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black),
                    ),
                    focusedBorder: const OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.red, width: 4),
                    ),
                    /*disabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.green, width: 4),
                    ),*/
                  ),
                ),

              ),
              Padding(
                padding: const EdgeInsets.all(18),
                child: TextField(
                  //maxLength: 50,
                  onChanged: (String? value) {
                    print('value');
                  },
                  controller: TextEditingController(),
                  obscureText: false,
                  maxLines: 1,
                  keyboardType: TextInputType.text,
                  enabled: true,
                  decoration: InputDecoration(
                    hintText: 'Full Name',
                    hintStyle: TextStyle(
                      fontWeight: FontWeight.w600,
                      color: Colors.grey.shade50,
                    ),
                    labelText: 'Full Name',
                    prefix: const Icon(Icons.phone),
                    suffix: const Icon(Icons.person),
                    fillColor: Colors.white54,
                    filled: true,
                    border: const OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.red),
                    ),
                    enabledBorder: const OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black),
                    ),
                    focusedBorder: const OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.red, width: 4),
                    ),
                    /*disabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.green, width: 4),
                    ),*/
                  ),
                ),

              ),
              Padding(
                padding: const EdgeInsets.all(18),
                child: TextField(
                  //maxLength: 50,
                  onChanged: (String? value) {
                    print('value');
                  },
                  controller: TextEditingController(),
                  obscureText: false,
                  maxLines: 1,
                  keyboardType: TextInputType.text,
                  enabled: true,
                  decoration: InputDecoration(
                    hintText: 'Last Name',
                    hintStyle: TextStyle(
                      fontWeight: FontWeight.w600,
                      color: Colors.grey.shade50,
                    ),
                    labelText: 'Last Name',
                    prefix: const Icon(Icons.phone),
                    suffix: const Icon(Icons.person),
                    fillColor: Colors.white54,
                    filled: true,
                    border: const OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.red),
                    ),
                    enabledBorder: const OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black),
                    ),
                    focusedBorder: const OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.red, width: 4),
                    ),
                    /*disabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.green, width: 4),
                    ),*/
                  ),
                ),

              ),
              Padding(
                padding: const EdgeInsets.all(18),
                child: TextField(
                  //maxLength: 50,
                  onChanged: (String? value) {
                    print('value');
                  },
                  controller: TextEditingController(),
                  obscureText: false,
                  maxLines: 1,
                  keyboardType: TextInputType.phone,
                  enabled: true,
                  decoration: InputDecoration(
                    hintText: 'Contact Number',
                    hintStyle: TextStyle(
                      fontWeight: FontWeight.w600,
                      color: Colors.grey.shade50,
                    ),
                    labelText: 'Contact Number',
                    prefix: const Icon(Icons.phone),
                    suffix: const Icon(Icons.person),
                    fillColor: Colors.white54,
                    filled: true,
                    border: const OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.red),
                    ),
                    enabledBorder: const OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black),
                    ),
                    focusedBorder: const OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.red, width: 4),
                    ),
                    /*disabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.green, width: 4),
                    ),*/
                  ),
                ),

              ),
            ],

          ),
          centerTitle: true,
          backgroundColor: Colors.amber,
          elevation: 10,
        ),
        /*  body: ListView.builder(
          itemCount: friendList.length,
          itemBuilder: (context, index) {
            int displayIndex = index + 1;
            return ListTile(
              dense: false,
              title: Text(friendList[index]),
              subtitle: Text('Friend no $displayIndex'),
              trailing: const Icon(Icons.arrow_circle_right_outlined),
              leading: const CircleAvatar(
                backgroundColor: Colors.amber,
                child: Icon(Icons.person),
              ),
              onTap: () {
                print('On Tap $index');
              },
              onLongPress: () {
                print('On LongPress $index');
              },
              tileColor: Colors.grey,
            );
          },
        ),*/ /*
        body: Center(
          child: GridView(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2, mainAxisSpacing: 12, crossAxisSpacing: 8),
            children: [
              Text('Iram'),
              Text('Sabbir'),
              Text('Rakib'),
              Text('Hasan'),
              Text('Hasan'),
              Text('Hasan'),
              Text('Hasan'),
              Text('Hasan'),
              Text('Hasan'),
            ],*/
        /*body: GridView.builder(
          gridDelegate:
              const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 4),
          itemCount: friendList.length,
          itemBuilder: (context, index) {
            return Center(
              child: Text(friendList[index]),
            );
          },
        ),*/
        body: Form(
          key: _formKey,
          child: Column(
            children: [
              TextFormField(
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  controller: _emailTEController,
                  decoration: const InputDecoration(
                    hintText: 'Email',
                  ),
                  validator: (String? value) {
                    if (value == null || value.isEmpty) {
                      return 'Enter Email Address';
                    }
                    return null;
                  }),
              TextFormField(
                autovalidateMode: AutovalidateMode.onUserInteraction,
                validator:(String? value) {
                  if (value == null || value.isEmpty) {
                    return 'Enter Password';
                  }
                  return null;
                } ,
                controller: _passswordTEController,
                decoration: const InputDecoration(
                  hintText: 'Password',
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  /*String email = _emailTEController.text;
                  String password = _passswordTEController.text;

                  if (email.isNotEmpty && password.isNotEmpty) {
                    print('Login Success');
                  } else {
                    print('Login Failed. Missing Data');
                  }*/
                  if (_formKey.currentState!.validate()) {
                    print('Login Success');
                  }
                },
                child: const Text('Tap'),
              )
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(onPressed: () {

      },
        backgroundColor: Colors.amberAccent,
        foregroundColor: Colors.black,
        //hoverColor: Colors.blue,
        splashColor: Colors.green,
        child:
        const Icon(Icons.add),
      ),
    );
  }
}