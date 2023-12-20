import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class DetailPage extends ConsumerStatefulWidget {
  const DetailPage({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _DetailPageState();
}

class _DetailPageState extends ConsumerState<DetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Detail Page"),
      ),
    );
  }
}
