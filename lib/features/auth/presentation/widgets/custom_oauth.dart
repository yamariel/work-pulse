import 'package:material_ui/material_ui.dart';

class CustomOauth extends StatelessWidget {
  final void Function()? onTap;
  final String imagePath;
  final String authName;

  const CustomOauth({
    super.key,
    required this.onTap,
    required this.imagePath,
    required this.authName,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).colorScheme;

    return Column(
      children: [
        InkWell(
          onTap: onTap,
          borderRadius: BorderRadius.circular(12),
          child: Container(
            padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 24),
            decoration: BoxDecoration(
              color: theme.surface,
              borderRadius: BorderRadius.circular(12),
            ),
            child: SizedBox(
              height: 30,
              width: double.infinity,
              child: Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(imagePath, width: 30, height: 30),
                  const SizedBox(width: 12),
                  Text(authName, style: TextStyle(fontSize: 16)),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
