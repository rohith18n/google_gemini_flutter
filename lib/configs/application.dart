import 'package:acetime/configs/provider/theme_provider.dart';
import 'package:acetime/configs/theme/app_theme.dart';
import 'package:acetime/view/screens/chat_screen/chat_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class MainApp extends ConsumerWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      themeMode: ref.watch(themeProvider).themeMode,
      home: const ChatScreen(),
    );
  }
}
