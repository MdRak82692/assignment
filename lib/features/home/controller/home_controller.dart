import 'dart:async';
import 'package:get/get.dart';

class HomeController extends GetxController {
  RxInt selectedIndex = 0.obs;
  RxInt currentTempIndex = 0.obs;
  Timer? _timer;

  @override
  void onInit() {
    super.onInit();
    _startTempTimer();
  }

  void _startTempTimer() {
    _timer = Timer.periodic(const Duration(seconds: 30), (timer) {
      currentTempIndex.value = (currentTempIndex.value + 1) % 3;
    });
  }

  @override
  void onClose() {
    _timer?.cancel();
    super.onClose();
  }
}
