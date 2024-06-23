import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:stock_market/blocs/theme/theme_cubit.dart';
import 'package:stock_market/core/core.dart';

class ChangeAppearanceBottomSheet extends StatelessWidget {
  const ChangeAppearanceBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ThemeCubit, ThemeModeState>(
      builder: (context, state) {
        return Column(
          children: List.generate(AppearanceType.values.length, (index) {
            final types = AppearanceType.values[index];
            return GestureDetector(
                onTap: () => context
                    .read<ThemeCubit>()
                    .getTheme(ThemeModeState(themeMode: types.themeMode)),
                child: ChangeAppearanceTile(
                  appearanceType: types,
                  isActive: state.themeMode == types.themeMode,
                ));
          }),
        );
      },
    );
  }
}

class ChangeAppearanceTile extends StatelessWidget {
  const ChangeAppearanceTile({
    super.key,
    required this.appearanceType,
    required this.isActive,
  });

  final AppearanceType appearanceType;
  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: CustomDecoration.containerDecoration(context,
          color: isActive
              ? context.theme.positive
              : context.theme.backgroundPrimary),
      padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 16.v),
      child: Row(
        children: [
          Icon(
            appearanceType.iconData,
            color: isActive
                ? context.theme.contentPrimary
                : context.theme.primaryA!,
          ),
          8.h.horizontalSpace,
          Text(
            appearanceType.label,
            style: context.textStyle.bodyMedium?.apply(
                color: isActive
                    ? context.theme.contentPrimary
                    : context.theme.primaryA),
          )
        ],
      ),
    );
  }
}
