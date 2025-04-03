import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:widgets_app/presentation/providers/theme_provider.dart';

class ThemeChangerScreen extends ConsumerWidget {
  static final name = 'theme_change_screen';
  const ThemeChangerScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isDarkMode = ref.watch(themeControllerProvider);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Counter con Riverpod'),
        actions: [
          IconButton(
            onPressed: () {
              ref.read(themeControllerProvider.notifier).state = !isDarkMode;
            },
            icon:
                isDarkMode
                    ? const Icon(Icons.nightlight_outlined)
                    : const Icon(Icons.wb_sunny_outlined),
          ),
        ],
      ),
      body: const _ThemeChangerView(),
    );
  }
}

class _ThemeChangerView extends ConsumerWidget {
  const _ThemeChangerView();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final List<Color> colors = ref.watch(colorListProvider);
    return ListView.builder(
      itemCount: colors.length,
      itemBuilder: (context, index) {
        final color = colors[index];
        return RadioListTile(
          title: Text('Este color',style: TextStyle(color:color),),
          subtitle: Text('${color.toARGB32()}'),
          activeColor: color,
          value: index,
          groupValue: 0,
          onChanged: (value) {
            
          },
        );
      },
    );
  }
}
