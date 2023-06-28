import 'package:flutter/material.dart';
import 'package:game_test/constants/app_color.dart';

class TestSlider extends StatelessWidget {
  const TestSlider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: SliderTheme(
        data: SliderThemeData(
            trackShape: const RectangularSliderTrackShape(),
            trackHeight: 4,
            overlayShape: SliderComponentShape.noOverlay,
            thumbShape: SliderComponentShape.noThumb),
        child: Slider(
          activeColor: AppColors.green,
          inactiveColor: AppColors.inActive,
          value: 3,
          onChanged: (value) {},
          min: 0,
          max: 10,
        ),
      ),
    );
  }
}
