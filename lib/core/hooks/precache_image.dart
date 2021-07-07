import 'package:flutter/cupertino.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

Future<void> usePrecacheImage({required ImageProvider provider}) {
  return use(PrecacheImageHook(provider: provider));
}

class PrecacheImageHook extends Hook<Future<void>> {
  final ImageProvider provider;

  PrecacheImageHook({
    required this.provider,
  });

  @override
  HookState<Future<void>, Hook<Future<void>>> createState() {
    return _PrecacheImageHookState();
  }
}

class _PrecacheImageHookState
    extends HookState<Future<void>, PrecacheImageHook> {
  Future<void>? precacheFuture;

  @override
  Future<void> build(BuildContext context) {
    if (precacheFuture == null) {
      precacheFuture = precacheImage(hook.provider, context);
    }

    return precacheFuture!;
  }
}
