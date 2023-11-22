import 'dart:ffi';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_components/theme/app_theme.dart';

class ListViewBuilderScreen extends StatefulWidget {
  const ListViewBuilderScreen({Key? key}) : super(key: key);

  @override
  State<ListViewBuilderScreen> createState() => _ListViewBuilderScreenState();
}

class _ListViewBuilderScreenState extends State<ListViewBuilderScreen> {
  final List<int> imagesIds = [1, 2, 3, 4, 5, 6];

  final ScrollController scrollController = ScrollController();

  bool isLoanding = false;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    scrollController.addListener(() {
      final double positionScroll = scrollController.position.pixels + 300;
      final double maxScroll = scrollController.position.maxScrollExtent;

      if (positionScroll >= maxScroll) {
        // add5();
        fetchData();
      }
    });
  }

  Future fetchData() async {
    if (isLoanding) return;

    isLoanding = true;
    setState(() {});

    await Future.delayed(const Duration(seconds: 3));
    add5();

    isLoanding = false;
    setState(() {});

    if (scrollController.position.pixels + 100 <= scrollController.position.maxScrollExtent) return;

    scrollController.animateTo(scrollController.position.pixels + 100, duration: const Duration(milliseconds: 300), curve: Curves.fastOutSlowIn);
  }

  void add5() {
    final lastId = imagesIds.last;
    print('lastId: $lastId');

    imagesIds.addAll([1, 2, 3, 4, 5].map((e) => lastId + e));

    setState(() {});
  }

  Future<void> onRefresh() async {
    await Future.delayed(const Duration(seconds: 3));
    final lastId = imagesIds.last;
    imagesIds.clear();
    imagesIds.add(lastId + 1);
    add5();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Colors.black,
      body: MediaQuery.removePadding(
        context: context,
        removeTop: true,
        child: Stack(
          children: [
            RefreshIndicator(
              color: AppTheme.primaryColor,
              onRefresh: onRefresh,
              child: ListView.builder(
                controller: scrollController,
                physics: const BouncingScrollPhysics(),
                itemBuilder: (context, index) {
                  return FadeInImage(
                    width: double.infinity,
                    height: 300,
                    fit: BoxFit.cover,
                    placeholder: const AssetImage('assets/jar-loading.gif'),
                    image: NetworkImage('https://picsum.photos/500/300?image=${imagesIds[index] + 1}'),
                  );
                },
                itemCount: imagesIds.length,
              ),
            ),
            if (isLoanding)
              Positioned(
                bottom: 40,
                left: (size.width / 2) - 30,
                child: const _LoadingIcon(),
              )
          ],
        ),
      ),
    );
  }
}

class _LoadingIcon extends StatelessWidget {
  const _LoadingIcon({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      height: 60,
      width: 60,
      decoration: BoxDecoration(color: Colors.white.withOpacity(0.8), shape: BoxShape.circle),
      child: const CircularProgressIndicator(
        color: AppTheme.primaryColor,
      ),
    );
  }
}
