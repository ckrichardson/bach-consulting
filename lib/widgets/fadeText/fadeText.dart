import 'package:flutter/material.dart';

class FadeText extends StatefulWidget {
  final String text;

  const FadeText({required this.text});

  @override
  _FadeTextState createState() => _FadeTextState();
}

class _FadeTextState extends State<FadeText>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late ScrollController _scrollController;

  bool _isVisible = false;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 500),
    );
    _scrollController = ScrollController();
    _scrollController.addListener(_onScroll);
  }

  @override
  void dispose() {
    _animationController.dispose();
    _scrollController.dispose();
    super.dispose();
  }

  void _onScroll() {
    final offset = _scrollController.offset;
    final screenHeight = MediaQuery.of(context).size.height;
    final textPosition = screenHeight *
        0.5; // Adjust this value to control when the text starts animating

    if (offset > textPosition && !_isVisible) {
      setState(() {
        _isVisible = true;
        _animationController.forward();
      });
    } else if (offset < textPosition && _isVisible) {
      setState(() {
        _isVisible = false;
        _animationController.reverse();
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      controller: _scrollController,
      children: [
        AnimatedOpacity(
          opacity: _isVisible ? 1.0 : 0.0,
          duration: const Duration(milliseconds: 500),
          curve: Curves.easeInOut,
          child: Text(
            widget.text,
            style: const TextStyle(fontSize: 24.0),
          ),
        ),
      ],
    );
  }
}
