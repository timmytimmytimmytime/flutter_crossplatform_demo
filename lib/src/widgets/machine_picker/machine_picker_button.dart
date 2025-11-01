import 'package:flutter/material.dart';
import '../../app/app_theme.dart';

class MachinePickerButton extends StatelessWidget {
  final String machineId;
  final ValueChanged<String> onMachineSelected;

  const MachinePickerButton({
    super.key,
    required this.machineId,
    required this.onMachineSelected,
  });

  @override
  Widget build(BuildContext context) {
    final scheme = Theme.of(context).colorScheme;
    final isDark = scheme.brightness == Brightness.dark;

    return GestureDetector(
      onTap: () => _showMachinePicker(context),
      child: Container(
        width: 70,
        height: 70,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          gradient: const LinearGradient(
            colors: [kBrandPrimary, kBrandSecondary],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
          boxShadow: [
            BoxShadow(
              color: isDark
                  ? Colors.black.withOpacity(0.6)
                  : Colors.black.withOpacity(0.2),
              blurRadius: 8,
              offset: const Offset(0, 3),
            ),
          ],
        ),
        child: Center(
          child: Text(
            machineId,
            style: const TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 14,
            ),
          ),
        ),
      ),
    );
  }

  void _showMachinePicker(BuildContext context) {
    final scheme = Theme.of(context).colorScheme;
    final machines = ['LW-001', 'LW-002', 'LW-003', 'LW-004'];

    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      backgroundColor: scheme.surface,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
      ),
      builder: (context) {
        return SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  width: 40,
                  height: 4,
                  margin: const EdgeInsets.only(bottom: 12),
                  decoration: BoxDecoration(
                    color: scheme.onSurface.withOpacity(0.3),
                    borderRadius: BorderRadius.circular(2),
                  ),
                ),
                Text(
                  'Select Machine',
                  style: Theme.of(context).textTheme.titleLarge?.copyWith(
                    color: scheme.onSurface,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                const SizedBox(height: 8),
                ListView.separated(
                  shrinkWrap: true,
                  itemCount: machines.length,
                  separatorBuilder: (_, __) =>
                      Divider(color: scheme.onSurface.withOpacity(0.2)),
                  itemBuilder: (context, i) {
                    final id = machines[i];
                    final bool selected = id == machineId;

                    return ListTile(
                      leading: Icon(
                        Icons.precision_manufacturing_outlined,
                        color: selected
                            ? scheme.primary
                            : scheme.onSurface.withOpacity(0.6),
                      ),
                      title: Text(
                        id,
                        style: Theme.of(context).textTheme.titleMedium
                            ?.copyWith(color: scheme.onSurface),
                      ),
                      trailing: selected
                          ? Icon(Icons.check_circle, color: scheme.primary)
                          : null,
                      onTap: () {
                        Navigator.pop(context);
                        onMachineSelected(id);
                      },
                    );
                  },
                ),
                const SizedBox(height: 8),
              ],
            ),
          ),
        );
      },
    );
  }
}
