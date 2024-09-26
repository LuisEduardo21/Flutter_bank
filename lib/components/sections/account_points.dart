import 'package:alubank/components/box_card.dart';
import 'package:alubank/components/color_dots.dart';
import 'package:alubank/components/content_division.dart';
import 'package:alubank/themes/themes_color.dart';
import 'package:flutter/material.dart';

class AccountPoints extends StatelessWidget {
  const AccountPoints({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 16),
            child: Text(
              'Pontos da conta',
              style: Theme.of(context).textTheme.titleMedium,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(2),
            child: BoxCard(
              boxContent: _AccountPoints(),
            ),
          )
        ],
      ),
    );
  }
}

class _AccountPoints extends StatelessWidget {
  const _AccountPoints({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Text(
                'Pontos Totais:',
              ),
            ),
          ],
        ),
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 6, bottom: 6),
              child: Column(
                children: [
                  Text(
                    '3000',
                    style: Theme.of(context).textTheme.bodyLarge,
                  ),
                ],
              ),
            )
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(top: 8, bottom: 8),
          child: ContentDivision(),
        ),
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 2, bottom: 2),
              child: Text(
                "Objetivos:",
                style: Theme.of(context).textTheme.titleMedium,
              ),
            )
          ],
        ),
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 6),
              child: ColorDots(color: ThemesColor.recentActivity['income']),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Entrega grátis: 1500pts"),
              ],
            ),
          ],
        ),
                Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 6),
              child: ColorDots(color: ThemesColor.recentActivity['luck']),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("1 mês de streaming: 300pts"),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
