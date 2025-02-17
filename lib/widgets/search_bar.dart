import 'package:flutter/material.dart';

class SearchBarLight extends StatefulWidget {
  const SearchBarLight({
    super.key,
    required this.focus,
    required this.onChanged,
  });
  final bool focus;
  final Function(String) onChanged;
  @override
  State<SearchBarLight> createState() => _SearchBarLightState();
}

class _SearchBarLightState extends State<SearchBarLight> {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  late String name;
  final TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: SizedBox(
        width: 350,
        child: TextFormField(
          key: formKey,
          controller: _controller,
          onChanged: (value) {
            widget.onChanged(value);
            setState(() {
            });
          },
          autofocus: widget.focus,
          decoration: InputDecoration(
              hoverColor: Colors.white,
              hintText: 'Search . .',
              hintStyle: TextStyle(
                color: Colors.white.withOpacity(0.8),
              ),
              suffixIcon: const Icon(
                Icons.search,
                color: Colors.white,
                size: 25,
              ),
              border: const UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.white)),
              enabledBorder: const UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.white)),
              focusedBorder: const UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.white))),
        ),
      ),
    );
  }
}
