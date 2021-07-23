import 'package:flutter/material.dart';
import 'package:rick_and_morty/exports.dart';

class SplashWidget extends StatefulWidget {
  final HomeState state;

  const SplashWidget({Key? key, required this.state}) : super(key: key);

  @override
  _SplashWidgetState createState() => _SplashWidgetState();
}

class _SplashWidgetState extends State<SplashWidget>
    with SingleTickerProviderStateMixin {
  PageController _pageController = PageController();
  late AnimationController _controller;
  late Animation _animation;

  @override
  void initState() {
    _initProcess();
    super.initState();
  }

  void _initProcess() {
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 4),
    )..forward();
    _animation = Tween(begin: 0.0, end: 1.0).animate(_controller);
  }

  @override
  void didUpdateWidget(covariant SplashWidget oldWidget) {
    _updateSplash();
    super.didUpdateWidget(oldWidget);
  }

  void _updateSplash(){
    if (widget.state == HomeState.lastSplash()) {
      _pageController.animateToPage(
        1,
        duration: const Duration(milliseconds: 500),
        curve: Curves.linear,
      );
      _controller.reverse();
    }
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return StatusBarColor(
      statusColor: Colors.black,
      child: Scaffold(
        body: Container(
          width: MediaQuery.of(context).size.width,
          padding: EdgeInsets.all(8.0),
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(AppImages.background),
            ),
            color: AppColor.black,
          ),
          child: FadeTransition(
            opacity: _animation as Animation<double>,
            child: (widget.state == HomeState.continueSplash() ||
                    widget.state == HomeState.lastSplash())
                ? Column(
                    children: [
                      Expanded(
                        child: Image(
                          image: AssetImage(AppImages.rickAndMorty),
                        ),
                      ),
                      Expanded(
                        child: PageView(
                          controller: _pageController,
                          children: [
                            Column(
                              children: [
                                Expanded(
                                  child: Image(
                                    image: AssetImage(AppImages.morty),
                                  ),
                                ),
                                Expanded(
                                  child: Image(
                                    image: AssetImage(AppImages.rick),
                                  ),
                                ),
                              ],
                            ),
                            Image(
                              image:
                                  AssetImage(AppImages.rickAndMortyFamily),
                            ),
                          ],
                        ),
                      ),
                    ],
                  )
                : Container(),
          ),
        ),
      ),
    );
  }
}
