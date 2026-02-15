import 'package:flutter/material.dart';
import '../models/room_model.dart';

class CreateGroupDialog extends StatefulWidget {
  const CreateGroupDialog({super.key});

  @override
  State<CreateGroupDialog> createState() => _CreateGroupDialogState();
}

class _CreateGroupDialogState extends State<CreateGroupDialog> {
  static const bgColor = Color(0xff1B2634);
  static const fieldColor = Color(0xff0E1621);

  final TextEditingController topicController = TextEditingController();

  String selectedPeople = "Unlimited";
  String selectedLanguage = "English";
  String selectedLevel = "Any Level";

  @override
  Widget build(BuildContext context) {
    return Dialog(
      backgroundColor: bgColor,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(14),
      ),
      child: Padding(
        padding: const EdgeInsets.all(18),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [

            /// 🔴 HEADER
            Row(
              children: [
                const Expanded(
                  child: Text(
                    "Custom Topic is unavailable.",
                    style: TextStyle(color: Colors.orange),
                  ),
                ),
                GestureDetector(
                  onTap: () => Navigator.pop(context),
                  child: const CircleAvatar(
                    radius: 12,
                    backgroundColor: Colors.red,
                    child: Icon(Icons.close,
                        size: 14, color: Colors.white),
                  ),
                )
              ],
            ),

            const SizedBox(height: 16),

            /// 📝 CUSTOM TOPIC
            _label("Custom Topic"),
            _textField(topicController,
                "No custom topic? Try [Generate with AI]"),

            const SizedBox(height: 14),

            /// 👥 MAX PEOPLE
            _dropdown(
              "Maximum People",
              selectedPeople,
              ["Unlimited", "2", "4", "6", "8"],
              (v) => setState(() => selectedPeople = v!),
            ),

            const SizedBox(height: 14),

            /// 🌐 LANGUAGE
            _dropdown(
              "Language",
              selectedLanguage,
              ["English", "Hindi"],
              (v) => setState(() => selectedLanguage = v!),
            ),

            const SizedBox(height: 14),

            /// 📊 LEVEL
            _dropdown(
              "Level",
              selectedLevel,
              ["Any Level", "Beginner", "Intermediate", "Advanced"],
              (v) => setState(() => selectedLevel = v!),
            ),

            const SizedBox(height: 20),

            /// 🔵 ACTION BUTTONS
            Row(
              children: [
                Expanded(
                  child: OutlinedButton(
                    onPressed: () => Navigator.pop(context),
                    child: const Text("Cancel"),
                  ),
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {
                      /// 🚀 RETURN ROOM DATA TO HOME SCREEN
                      Navigator.pop(
                        context,
                        RoomModel(
                          language: selectedLanguage,
                          level: selectedLevel,
                          topic: topicController.text.isEmpty
                              ? "New Room"
                              : topicController.text,
                        ),
                      );
                    },
                    child: const Text("Create Group"),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  /// 🔤 LABEL
  Widget _label(String text) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Text(
        text,
        style: const TextStyle(color: Colors.white),
      ),
    );
  }

  /// 🧾 TEXT FIELD
  Widget _textField(TextEditingController controller, String hint) {
    return TextField(
      controller: controller,
      style: const TextStyle(color: Colors.white),
      decoration: InputDecoration(
        hintText: hint,
        filled: true,
        fillColor: fieldColor,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }

  /// 🔽 DROPDOWN
  Widget _dropdown(
    String label,
    String value,
    List<String> items,
    ValueChanged<String?> onChanged,
  ) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _label(label),
        const SizedBox(height: 6),
        DropdownButtonFormField<String>(
          value: value,
          dropdownColor: bgColor,
          items: items
              .map((e) =>
                  DropdownMenuItem(value: e, child: Text(e)))
              .toList(),
          onChanged: onChanged,
          decoration: InputDecoration(
            filled: true,
            fillColor: fieldColor,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
        ),
      ],
    );
  }
}
