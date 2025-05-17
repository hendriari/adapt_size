enum DeviceType { mobile, tablet, desktop }

class AdaptDeviceType {
  static late DeviceType _deviceType;

  static void init(double screenWidth) {
    if (screenWidth >= 950) {
      _deviceType = DeviceType.desktop;
    } else if (screenWidth >= 600) {
      _deviceType = DeviceType.tablet;
    } else {
      _deviceType = DeviceType.mobile;
    }
  }

  static DeviceType get type => _deviceType;
  static bool get isMobile => _deviceType == DeviceType.mobile;
  static bool get isTablet => _deviceType == DeviceType.tablet;
  static bool get isDesktop => _deviceType == DeviceType.desktop;
}