import 'package:shared_preferences/shared_preferences.dart';

class Preferences {
  static late SharedPreferences _prefs;

  static String _email = '';
  static String _numero = '';

  static String _img = '';
  static String _nombre = '';
  static String _apellido = '';
  static String _ciudad = '';
  static String _pais = '';
  static int _genero = 1;

  static Future init() async {
    _prefs = await SharedPreferences.getInstance();
  }

  //email
  static String get email {
    return _prefs.getString('email') ?? _email;
  }

  static set email(String email) {
    _email = email;
    _prefs.setString('email', email);
  }

  //numero
  static String get numero {
    return _prefs.getString('numero') ?? _numero;
  }

  static set numero(String numero) {
    _numero = numero;
    _prefs.setString('numero', numero);
  }

  //Get and Set
  //Img
  static String get img {
    return _prefs.getString('img') ?? _img;
  }

  static set img(String img) {
    _img = img;
    _prefs.setString('img', img);
  }

  //nombre
  static String get nombre {
    return _prefs.getString('nombre') ?? _nombre;
  }

  static set nombre(String nombre) {
    _nombre = nombre;
    _prefs.setString('nombre', nombre);
  }

  //apellido
  static String get apellido {
    return _prefs.getString('apellido') ?? _apellido;
  }

  static set apellido(String apellido) {
    _apellido = apellido;
    _prefs.setString('apellido', apellido);
  }

  //ciudad
  static String get ciudad {
    return _prefs.getString('cuidad') ?? _ciudad;
  }

  static set ciudad(String ciudad) {
    _ciudad = ciudad;
    _prefs.setString('ciudad', ciudad);
  }

  //pasi
  static String get pais {
    return _prefs.getString('pais') ?? _pais;
  }

  static set pais(String pais) {
    _pais = pais;
    _prefs.setString('pias', pais);
  }

  //Genero

  static int get genero {
    return _prefs.getInt('genero') ?? _genero;
  }

  static set genero(int genero) {
    _genero = genero;
    _prefs.setInt('genero', genero);
  }
}
