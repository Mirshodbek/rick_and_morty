import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:rick_and_morty/exports.dart';

class ListCount extends StatelessWidget {
  final bool visible;
  final String listCount;

  const ListCount({
    Key? key,
    required this.visible,
    required this.listCount,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const SizedBox(
          width: 16.0,
        ),
        Text(
          listCount,
          style: AppTextTheme.personagesGenderTextStyle.copyWith(
            letterSpacing: 1.5,
          ),
        ),
        const Spacer(),
        if (visible) _performanceIcon(),
        const SizedBox(
          width: 16.0,
        ),
      ],
    );
  }

  Widget _performanceIcon() => Builder(
        builder: (performance) {
          final state =
              performance.select((PersonagesBloc bloc) => bloc.isGrid);
          return InkWell(
            onTap: () {
              performance.read<PersonagesBloc>()
                ..add(
                  PersonagesEvent.selectedView(isGrid: state),
                );
            },
            child: state
                ? SvgPicture.asset(AppIcons.performance1)
                : SvgPicture.asset(AppIcons.performance),
          );
        },
      );
}
