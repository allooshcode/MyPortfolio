import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:url_launcher/url_launcher.dart';

part 'portfolio_event.dart';
part 'portfolio_state.dart';

class PortfolioBloc extends Bloc<PortfolioEvent, PortfolioState> {
  PortfolioBloc() : super(PortfolioInitial()) {
    on<LaunchWhatsAppEvent>((event, emit) async {
      emit(LaunchinglinkState());
      await contactwhatsapp();
      emit(LaunchedlinkState());
    });
  }

  Future launchWhatsApp({
    required int phone,
    required String message,
  }) async {
    Uri url() {
      if (!kIsWeb) {
        // add the [https]
        return Uri.parse(
            "https://wa.me/$phone/?text=${Uri.parse(message)}"); // new line
      } else {
        // add the [https]
        return Uri.parse(
            "https://api.whatsapp.com/send?text=${Uri.parse(message)}"); // new line
      }
    }

    if (await canLaunchUrl(url())) {
      await launchUrl(url());
    } else {
      throw 'Could not launch ${url()}';
    }
  }

  Future<void> contactwhatsapp() async {
    try {
      await Future.delayed(const Duration(seconds: 2));
      await launchWhatsApp(
        phone: 60104370100,
        message: 'nice to get touch with you, please how can help you ?',
      );
    } catch (err) {
      Fluttertoast.showToast(msg: err.toString());
    }
  }
}
