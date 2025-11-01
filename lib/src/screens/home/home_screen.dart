import 'package:flutter/material.dart';
import '../machines/machine_info.dart';
import '../chat/chat_screen.dart';
import '../notifications/notifications_screen.dart';
import '../settings/settings_screen.dart';
import '../../widgets/machine_picker/machine_picker_button.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;
  String _activeMachine = 'LW-001';

  final _tabs = const [
    MachineInfoScreen(),
    ChatScreen(),
    NotificationsScreen(),
    SettingsScreen(),
  ];

  void _onItemTapped(int index) => setState(() => _selectedIndex = index);

  void _showMachineSelector(BuildContext context) {
    showModalBottomSheet(
      context: context,
      backgroundColor: Colors.black87,
      builder: (context) {
        final machines = ['LW-001', 'LW-002', 'LW-003'];
        return ListView.builder(
          itemCount: machines.length,
          itemBuilder: (context, index) {
            final id = machines[index];
            return ListTile(
              title: Text(id, style: const TextStyle(color: Colors.white)),
              trailing: _activeMachine == id
                  ? const Icon(Icons.check, color: Colors.orange)
                  : null,
              onTap: () {
                setState(() => _activeMachine = id);
                Navigator.pop(context);
              },
            );
          },
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: IndexedStack(index: _selectedIndex, children: _tabs),
      floatingActionButton: MachinePickerButton(
        machineId: _activeMachine,
        onPressed: () => _showMachineSelector(context),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        shape: const CircularNotchedRectangle(),
        notchMargin: 6,
        color: Colors.black,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(
                icon: const Icon(Icons.info_outline),
                color: _selectedIndex == 0 ? Colors.orange : Colors.white54,
                onPressed: () => _onItemTapped(0),
              ),
              IconButton(
                icon: const Icon(Icons.chat_bubble_outline),
                color: _selectedIndex == 1 ? Colors.orange : Colors.white54,
                onPressed: () => _onItemTapped(1),
              ),
              const SizedBox(width: 48), // space for FAB bump
              IconButton(
                icon: const Icon(Icons.notifications_none),
                color: _selectedIndex == 2 ? Colors.orange : Colors.white54,
                onPressed: () => _onItemTapped(2),
              ),
              IconButton(
                icon: const Icon(Icons.settings_outlined),
                color: _selectedIndex == 3 ? Colors.orange : Colors.white54,
                onPressed: () => _onItemTapped(3),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
