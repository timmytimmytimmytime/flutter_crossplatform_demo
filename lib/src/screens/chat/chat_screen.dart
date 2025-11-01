import 'package:flutter/material.dart';
import '../../app/app_theme.dart';
import '../../mixin/gradient_mixin.dart';

class ChatScreen extends StatelessWidget with GradientHelpers {
  final String machineId;
  const ChatScreen({super.key, required this.machineId});

  @override
  Widget build(BuildContext context) {
    final scheme = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;

    final List<Map<String, dynamic>> messages = [
      {
        'from': 'Operator',
        'text': 'How’s the field looking today?',
        'isUser': false,
      },
      {
        'from': 'LW-001',
        'text': 'Weeding progress 47%. Light soil resistance.',
        'isUser': true,
      },
      {
        'from': 'Operator',
        'text': 'Copy that. Switching to auto-mode.',
        'isUser': false,
      },
      {
        'from': 'LW-001',
        'text': 'Auto-mode engaged. Estimated completion 2h 13m.',
        'isUser': true,
      },
      {'from': 'Operator', 'text': 'Good work out there 👏', 'isUser': false},
    ];

    return Scaffold(
      backgroundColor: scheme.background,
      appBar: AppBar(
        title: gradientText('Chat - $machineId', textTheme.titleLarge!),
        centerTitle: true,
        backgroundColor: scheme.surface,
        foregroundColor: scheme.onSurface,
        elevation: 0,
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(16),
        itemCount: messages.length,
        itemBuilder: (context, index) {
          final msg = messages[index];
          final bool isUser = msg['isUser'] as bool;
          final align = isUser
              ? CrossAxisAlignment.end
              : CrossAxisAlignment.start;
          final bubbleColor = isUser
              ? scheme.primary.withOpacity(0.9)
              : scheme.surfaceVariant ?? scheme.surface.withOpacity(0.9);
          final textColor = isUser ? scheme.onPrimary : scheme.onSurface;

          return Column(
            crossAxisAlignment: align,
            children: [
              Container(
                margin: const EdgeInsets.symmetric(vertical: 6),
                padding: const EdgeInsets.symmetric(
                  vertical: 10,
                  horizontal: 14,
                ),
                decoration: BoxDecoration(
                  color: bubbleColor,
                  borderRadius: BorderRadius.circular(14),
                ),
                child: Text(
                  msg['text'] as String,
                  style: textTheme.bodyMedium?.copyWith(color: textColor),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
