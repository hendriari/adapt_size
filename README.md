# Adapt Size

A lightweight responsive utility for scaling widgets, text, and layout based on screen size and device type (mobile, tablet, desktop).

## Features
- Responsive width, height, and text scaling
- Device type classification
- Orientation-aware layout
- Easy to use extensions: `.w`, `.h`, `.sp`
- Minimal setup, no builder wrapping `MaterialApp` required

## Getting Started

### Initialize:

```dart
return AdaptSize(
  designSize: const Size(360, 690),
  builder: (context) => MyApp(),
);
```

### Use it:

```dart
Container(
  width: 100.w,
  height: 50.h,
  child: Text('Hello', style: TextStyle(fontSize: 14.sp)),
)
```

## Device Type:

```dart
if (AdaptDeviceType.isTablet) {
  // tablet specific UI
}
```

## Test
Run tests:
```bash
flutter test
```

## License
MIT
