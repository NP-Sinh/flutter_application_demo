import 'package:flutter/material.dart';

void main() {
  runApp(BT4());
}

class Account {
  final String email;
  final String password;
  final String name;
  final String classInfo;

  Account({
    required this.email,
    required this.password,
    required this.name,
    required this.classInfo,
  });
}

class BT4 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter App',
      theme: ThemeData(primarySwatch: Colors.blue),
      initialRoute: '/login',
      onGenerateRoute: (RouteSettings settings) {
        switch (settings.name) {
          case '/login':
            return MaterialPageRoute(builder: (_) => LoginPage());
          case '/home':
            return MaterialPageRoute(
              builder: (_) => HomePage(),
              settings: settings,
            );
          case '/details':
            return MaterialPageRoute(
              builder: (_) => DetailsPage(),
              settings: settings,
            );
          default:
            return null;
        }
      },
    );
  }
}

// Trang đăng nhập
class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();

  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  final List<Account> accounts = [
    Account(
      email: '1050080155@sv.hcmunre.edu.vn',
      password: '123',
      name: 'Nguyễn Phương Sinh',
      classInfo: '10 - ĐH - CNPM2',
    ),
    Account(
      email: 'account2@example.com',
      password: 'abc',
      name: 'Trần Văn A',
      classInfo: '11 - ĐH - CNTT1',
    ),
    Account(
      email: 'account3@example.com',
      password: 'xyz',
      name: 'Lê Thị B',
      classInfo: '12 - ĐH - CNPM1',
    ),
  ];

  // Hàm xử lý đăng nhập
  void _handleLogin() {
    if (_formKey.currentState!.validate()) {
      String email = _emailController.text.trim();
      String password = _passwordController.text.trim();

      Account? matchedAccount;
      for (var account in accounts) {
        if (account.email == email && account.password == password) {
          matchedAccount = account;
          break;
        }
      }

      if (matchedAccount != null) {
        Navigator.pushReplacementNamed(
          context,
          '/home',
          arguments: matchedAccount,
        );
      } else {
        showDialog(
          context: context,
          builder:
              (context) => AlertDialog(
                title: const Text('Thông báo'),
                content: const Text('Email hoặc mật khẩu không đúng!'),
                actions: [
                  ElevatedButton(
                    onPressed: () => Navigator.of(context).pop(),
                    child: const Text('Đóng'),
                  ),
                ],
              ),
        );
      }
    }
  }

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                'Login Page',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 16),
              FlutterLogo(size: 100),
              SizedBox(height: 16),
              TextFormField(
                controller: _emailController,
                decoration: InputDecoration(labelText: 'EMAIL'),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Vui lòng nhập email';
                  }
                  if (!RegExp(r'\S+@\S+\.\S+').hasMatch(value)) {
                    return 'Vui lòng nhập email hợp lệ';
                  }
                  return null;
                },
              ),
              SizedBox(height: 16),
              TextFormField(
                controller: _passwordController,
                decoration: InputDecoration(labelText: 'PASSWORD'),
                obscureText: true,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Vui lòng nhập mật khẩu';
                  }
                  return null;
                },
              ),
              SizedBox(height: 16),
              ElevatedButton(onPressed: _handleLogin, child: Text('Login')),
              Spacer(),
              TextButton(
                onPressed: () {
                  print('NEW USER? CREATE ACCOUNT');
                },
                child: Text('NEW USER? CREATE ACCOUNT'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// Trang chủ
class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final account = ModalRoute.of(context)!.settings.arguments as Account?;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Trang chủ'),
        backgroundColor: Colors.blue,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16.0),
            child: Text(
              '1050080155 - Nguyễn Phương Sinh',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
          ),
          Expanded(
            child: Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 200,
                    margin: const EdgeInsets.all(16),
                    child: Image.asset(
                      'assets/img/logo_flutter.jpg',
                      fit: BoxFit.contain,
                    ),
                  ),
                  const SizedBox(width: 24),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      _IconText(icon: Icons.phone_iphone, text: 'iOS'),
                      SizedBox(height: 8),
                      _IconText(icon: Icons.android, text: 'Android'),
                      SizedBox(height: 8),
                      _IconText(icon: Icons.web, text: 'Web'),
                      SizedBox(height: 8),
                      _IconText(icon: Icons.desktop_windows, text: 'Desktop'),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/details', arguments: account);
              },
              child: const Text('Chi tiết'),
            ),
          ),
        ],
      ),
    );
  }
}

class _IconText extends StatelessWidget {
  final IconData icon;
  final String text;
  const _IconText({required this.icon, required this.text});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(icon, color: Colors.blue, size: 20),
        const SizedBox(width: 8),
        Text(text, style: const TextStyle(fontSize: 16)),
      ],
    );
  }
}

// Trang chi tiết
class DetailsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final account = ModalRoute.of(context)!.settings.arguments as Account?;

    return Scaffold(
      appBar: AppBar(
        title: Text('Trang chi tiết'),
        backgroundColor: Colors.blue,
      ),
      body:
          account == null
              ? Center(child: Text('Không có thông tin tài khoản'))
              : Column(
                children: [
                  Expanded(
                    child: Center(
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            'Họ và tên: ${account.name}',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 8),
                          Text(
                            'Lớp: ${account.classInfo}',
                            style: TextStyle(fontSize: 16),
                          ),
                          SizedBox(height: 16),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                width: 50,
                                height: 50,
                                color: Colors.blue,
                              ),
                              Container(
                                width: 50,
                                height: 50,
                                color: Colors.green,
                              ),
                              Container(
                                width: 50,
                                height: 50,
                                color: Colors.orange,
                              ),
                            ],
                          ),
                          SizedBox(height: 16),
                          FlutterLogo(size: 100),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.pushReplacementNamed(context, '/login');
                      },
                      child: Text('Đăng xuất'),
                    ),
                  ),
                ],
              ),
    );
  }
}
