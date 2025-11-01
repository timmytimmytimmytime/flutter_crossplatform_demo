import 'package:flutter/material.dart';
import '../../widgets/machine_picker/machine_picker_button.dart';
import '../../screens/machines/machine_info.dart';
import '../chat/chat_screen.dart';
import '../notifications/notifications_screen.dart';
import '../settings/settings_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;
  String _activeMachine = 'LW-001';

  void _onItemTapped(int index) => setState(() => _selectedIndex = index);

  @override
  Widget build(BuildContext context) {
    final scheme = Theme.of(context).colorScheme;

    // Build tabs dynamically so they receive the current machineId
    final tabs = [
      MachineInfoScreen(machineId: _activeMachine),
      ChatScreen(machineId: _activeMachine),
      NotificationsScreen(machineId: _activeMachine),
      SettingsScreen(),
    ];

    return Scaffold(
      extendBody: true,
      body: IndexedStack(index: _selectedIndex, children: tabs),

      // --- Floating Machine Picker Button ---
      floatingActionButton: MachinePickerButton(
        machineId: _activeMachine,
        onMachineSelected: (id) => setState(() => _activeMachine = id),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,

      // --- Themed Bottom Navigation Bar ---
      bottomNavigationBar: BottomAppBar(
        shape: const CircularNotchedRectangle(),
        notchMargin: 6,
        color: scheme.surface,
        elevation: 3,
        child: SafeArea(
          bottom: true,
          child: Container(
            decoration: BoxDecoration(
              color: scheme.surface,
              boxShadow: [
                BoxShadow(
                  color: scheme.shadow.withOpacity(0.08),
                  blurRadius: 6,
                  offset: const Offset(0, -2),
                ),
              ],
            ),
            padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 2.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              mainAxisSize: MainAxisSize.min,
              children: [
                _buildNavIcon(
                  context,
                  icon: Icons.info_outline,
                  label: 'Info',
                  index: 0,
                ),
                _buildNavIcon(
                  context,
                  icon: Icons.chat_bubble_outline,
                  label: 'Chat',
                  index: 1,
                ),
                const SizedBox(width: 48),
                _buildNavIcon(
                  context,
                  icon: Icons.notifications_none,
                  label: 'Alerts',
                  index: 2,
                ),
                _buildNavIcon(
                  context,
                  icon: Icons.settings_outlined,
                  label: 'Settings',
                  index: 3,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  // --- Bottom Nav Icon Builder ---
  Widget _buildNavIcon(
    BuildContext context, {
    required IconData icon,
    required String label,
    required int index,
  }) {
    final scheme = Theme.of(context).colorScheme;
    final bool isSelected = _selectedIndex == index;
    final color = isSelected
        ? scheme.primary
        : scheme.onSurface.withOpacity(0.6);

    return InkResponse(
      onTap: () => _onItemTapped(index),
      radius: 28,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 2.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(icon, color: color, size: 22),
            const SizedBox(height: 1),
            Text(
              label,
              style: TextStyle(
                color: color,
                fontSize: 10.5,
                fontWeight: isSelected ? FontWeight.w600 : FontWeight.w400,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
