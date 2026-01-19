import 'package:flutter/material.dart';
import 'package:rummi_assistant/core/core.dart';
import 'package:rummi_assistant/l10n/l10n.dart';

class NewGameCard extends StatelessWidget {
  const NewGameCard({
    required this.onStartGame,
    super.key,
  });

  final VoidCallback onStartGame;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            context.colors.primary,
            context.colors.secondary,
          ],
        ),
        borderRadius: context.geometry.radiusLarge,
        boxShadow: [
          BoxShadow(
            color: context.colors.shadow.withValues(alpha: 0.1),
            blurRadius: 16,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: onStartGame,
          borderRadius: context.geometry.radiusLarge,
          child: Padding(
            padding: context.geometry.largePadding,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                // Decorative tiles at the top
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    _RummikubTile(
                      number: '7',
                      color: context.colors.error,
                    ),
                    context.geometry.spacingSmall.horizontalBox,
                    _RummikubTile(
                      number: '8',
                      color: context.colors.tertiary,
                    ),
                    context.geometry.spacingSmall.horizontalBox,
                    _RummikubTile(
                      number: '9',
                      color: context.colors.primary,
                    ),
                  ],
                ),
                context.geometry.spacingMedium.verticalBox,

                // Title
                Text(
                  context.localizations.homeStartGameButton,
                  style: context.typography.headlineMedium.copyWith(
                    fontWeight: FontWeight.bold,
                    color: context.colors.onPrimary,
                  ),
                ),
                context.geometry.spacingSmall.verticalBox,

                // Subtitle
                Text(
                  'Start a new Rummikub game',
                  style: context.typography.body.copyWith(
                    color: context.colors.onPrimary.withValues(alpha: 0.8),
                  ),
                  textAlign: TextAlign.center,
                ),
                context.geometry.spacingMedium.verticalBox,

                // Start button
                Container(
                  decoration: BoxDecoration(
                    color: context.colors.primary,
                    borderRadius: context.geometry.radiusMedium,
                    boxShadow: [
                      BoxShadow(
                        color: context.colors.primary.withValues(alpha: 0.3),
                        blurRadius: 8,
                        offset: const Offset(0, 4),
                      ),
                    ],
                  ),
                  child: Material(
                    color: Colors.transparent,
                    child: InkWell(
                      onTap: onStartGame,
                      borderRadius: context.geometry.radiusMedium,
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: context.geometry.spacingLarge,
                          vertical: context.geometry.spacingMedium,
                        ),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Icon(
                              Icons.play_arrow_rounded,
                              color: context.colors.onPrimary,
                              size: 28,
                            ),
                            context.geometry.spacingSmall.horizontalBox,
                            Text(
                              'Start Game',
                              style: context.typography.titleMedium.copyWith(
                                color: context.colors.onPrimary,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _RummikubTile extends StatelessWidget {
  const _RummikubTile({
    required this.number,
    required this.color,
  });

  final String number;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 48,
      height: 64,
      decoration: BoxDecoration(
        color: context.colors.surface,
        borderRadius: context.geometry.radiusSmall,
        boxShadow: [
          BoxShadow(
            color: context.colors.shadow,
            blurRadius: 4,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Center(
        child: Text(
          number,
          style: context.typography.headlineMedium.copyWith(
            color: color,
            fontWeight: FontWeight.bold,
            fontFamily: 'LuckiestGuy',
          ),
        ),
      ),
    );
  }
}
