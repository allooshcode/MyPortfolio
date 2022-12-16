import 'package:equatable/equatable.dart';
import 'package:my_porfolio/global/errors/exceptions.dart';
import 'package:my_porfolio/global/utils/constants.dart';
import 'package:url_launcher/url_launcher.dart';

class CallLinkedInData extends Equatable {
  Future callLinkedinData() async {
    try {
      if (await canLaunchUrl(Uri.parse(AppConstants.linkidInUrl))) {
        await launchUrl(Uri.parse(AppConstants.linkidInUrl));
      } else {
        throw ServerException(msgError: 'Could not launch Linked In profile');
      }
    } catch (err) {
      throw ServerException(msgError: err.toString());
    }
  }

  @override
  List<Object?> get props => throw UnimplementedError();
}
