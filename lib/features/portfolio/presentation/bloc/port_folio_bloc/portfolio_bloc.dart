import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:my_porfolio/features/portfolio/domain/usecases/call_linkedin_usecase.dart';
import 'package:my_porfolio/features/portfolio/domain/usecases/resume_usecase.dart';
import 'package:url_launcher/url_launcher.dart';

part 'portfolio_event.dart';
part 'portfolio_state.dart';

class PortfolioBloc extends Bloc<PortfolioEvent, PortfolioState> {
  final CallLinkedInUsecase callLinkedInUsecase;
  final CallResumeUsecase callResumeUsecase;

  PortfolioBloc(
      {required this.callResumeUsecase, required this.callLinkedInUsecase})
      : super(PortfolioInitial()) {
    on<CallResumeEvent>((event, emit) async {
      final response = await callResumeUsecase.callResume();
      response.fold(
          (l) => emit(ResumeStateError()), (r) => emit(ResumeStateDone()));
    });

    on<LaunchWhatsAppEvent>((event, emit) async {
      emit(LaunchingWhatsState());
      await contactwhatsapp();
      emit(LaunchedWhatsState());
    });

    on<CallLinkedInEvent>(((event, emit) async {
      emit(LinkedInStateInit());
      final response = await callLinkedInUsecase.callLinkedIn();
      response.fold(
          (l) => emit(LinkedInStateError()), (r) => emit(LinkedInStateDone()));
    }));
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
