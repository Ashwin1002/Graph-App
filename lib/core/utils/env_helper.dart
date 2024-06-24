import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:injectable/injectable.dart';

@Injectable()
class EnvHelper {
  /// load .env file
  static Future<void> init() async {
    await dotenv.load(fileName: '.env');
  }

  /// return the value of the variable stored in .env file
  String get(String envVariableName) => dotenv.env[envVariableName] ?? '';
}
