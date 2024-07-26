import 'package:flutter/material.dart';
import 'package:zenon_syrius_wallet_flutter/utils/app_colors.dart';

class P2pSwapOptionsButton extends StatefulWidget {
  final VoidCallback onClick;
  final String primaryText;
  final String secondaryText;

  const P2pSwapOptionsButton({
    Key? key,
    required this.primaryText,
    required this.secondaryText,
    required this.onClick,
  }) : super(key: key);

  @override
  State<P2pSwapOptionsButton> createState() => _P2pSwapOptionsButtonState();
}

class _P2pSwapOptionsButtonState extends State<P2pSwapOptionsButton> {
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Theme.of(context).colorScheme.primaryContainer,
      borderRadius: BorderRadius.circular(
        8.0,
      ),
      child: InkWell(
        borderRadius: BorderRadius.circular(8),
        onTap: () {
          setState(() {
            widget.onClick.call();
          });
        },
        child: Container(
          padding: const EdgeInsets.all(20.0),
          decoration: BoxDecoration(
            boxShadow: <BoxShadow>[
              BoxShadow(
                color: Colors.black.withOpacity(0.02),
                offset: const Offset(0.0, 4),
                blurRadius: 6,
                spreadRadius: 8.0,
              ),
            ],
            borderRadius: BorderRadius.circular(
              8.0,
            ),
          ),
          child: Row(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Text(
                      widget.primaryText,
                      textAlign: TextAlign.left,
                      style: Theme.of(context).textTheme.headlineSmall,
                    ),
                    const SizedBox(
                      height: 8.0,
                    ),
                    Text(
                      widget.secondaryText,
                      textAlign: TextAlign.left,
                      style: const TextStyle(
                        color: AppColors.subtitleColor,
                        fontSize: 14.0,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                width: 15.0,
              ),
              const Column(
                children: [
                  Icon(Icons.keyboard_arrow_right, size: 18.0),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
