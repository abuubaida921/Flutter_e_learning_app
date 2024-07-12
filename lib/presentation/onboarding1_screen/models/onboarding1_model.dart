import '../../../core/app_export.dart';
import 'learning_frame1_item_model.dart';

/// and is typically used to hold data that is passed between different parts of the application.
class Onboarding1Model {
  static List<LearningFrame1ItemModel> getOnboardingData() {
    return [
      LearningFrame1ItemModel(
          ImageConstant.imgOnboarding1,
          "Learn new skills and advance your career with learning",
          "Electronic learning, is the delivery of learning and training through digital resources."),
      LearningFrame1ItemModel(
          ImageConstant.imgOnboarding2,
          "The most convenient and effective way to learn.",
          "Electronic learning, is the delivery of learning and training through digital resources."),
      LearningFrame1ItemModel(
          ImageConstant.imgOnboarding3,
          "Learn at your own time, with digital learning.",
          "Electronic learning, is the delivery of learning and training through digital resources."),
    ];
  }
}
