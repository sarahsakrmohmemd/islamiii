import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../../providers/theme_provider.dart';

class SettingsTab extends StatelessWidget {
  const SettingsTab({super.key});

  @override
  Widget build(BuildContext context) {
    // الحصول على theme provider
    ThemeProvider themeProvider = Provider.of<ThemeProvider>(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text("الإعدادات"),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: [
          // تغيير المظهر بين الوضع الفاتح والداكن
          ListTile(
            leading: const Icon(Icons.brightness_6),
            title: const Text("الوضع الداكن / الفاتح"),
            trailing: Switch(
              value: themeProvider.isDarkMode,
              onChanged: (value) {
                themeProvider.toggleTheme();
              },
            ),
          ),
          const Divider(),
          // يمكنك إضافة إعدادات أخرى هنا حسب الحاجة
        ],
      ),
    );
  }
}
