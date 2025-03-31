// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'app_router.dart';

/// generated route for
/// [FavoritePage]
class FavoriteRoute extends PageRouteInfo<void> {
  const FavoriteRoute({List<PageRouteInfo>? children})
    : super(FavoriteRoute.name, initialChildren: children);

  static const String name = 'FavoriteRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const FavoritePage();
    },
  );
}

/// generated route for
/// [FoodPage]
class FoodRoute extends PageRouteInfo<void> {
  const FoodRoute({List<PageRouteInfo>? children})
    : super(FoodRoute.name, initialChildren: children);

  static const String name = 'FoodRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const FoodPage();
    },
  );
}

/// generated route for
/// [MainPage]
class MainRoute extends PageRouteInfo<void> {
  const MainRoute({List<PageRouteInfo>? children})
    : super(MainRoute.name, initialChildren: children);

  static const String name = 'MainRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const MainPage();
    },
  );
}

/// generated route for
/// [ProductPage]
class ProductRoute extends PageRouteInfo<void> {
  const ProductRoute({List<PageRouteInfo>? children})
    : super(ProductRoute.name, initialChildren: children);

  static const String name = 'ProductRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const ProductPage();
    },
  );
}

/// generated route for
/// [ProfilePage]
class ProfileRoute extends PageRouteInfo<void> {
  const ProfileRoute({List<PageRouteInfo>? children})
    : super(ProfileRoute.name, initialChildren: children);

  static const String name = 'ProfileRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const ProfilePage();
    },
  );
}

/// generated route for
/// [QrScannerPage]
class QrScannerRoute extends PageRouteInfo<void> {
  const QrScannerRoute({List<PageRouteInfo>? children})
    : super(QrScannerRoute.name, initialChildren: children);

  static const String name = 'QrScannerRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const QrScannerPage();
    },
  );
}

/// generated route for
/// [SectionPage]
class SectionRoute extends PageRouteInfo<void> {
  const SectionRoute({List<PageRouteInfo>? children})
    : super(SectionRoute.name, initialChildren: children);

  static const String name = 'SectionRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const SectionPage();
    },
  );
}

/// generated route for
/// [StoreHomePage]
class StoreHomeRoute extends PageRouteInfo<void> {
  const StoreHomeRoute({List<PageRouteInfo>? children})
    : super(StoreHomeRoute.name, initialChildren: children);

  static const String name = 'StoreHomeRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const StoreHomePage();
    },
  );
}

/// generated route for
/// [StorePage]
class StoreRoute extends PageRouteInfo<void> {
  const StoreRoute({List<PageRouteInfo>? children})
    : super(StoreRoute.name, initialChildren: children);

  static const String name = 'StoreRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const StorePage();
    },
  );
}

/// generated route for
/// [SuccessPage]
class SuccessRoute extends PageRouteInfo<SuccessRouteArgs> {
  SuccessRoute({
    Key? key,
    required String scannedData,
    List<PageRouteInfo>? children,
  }) : super(
         SuccessRoute.name,
         args: SuccessRouteArgs(key: key, scannedData: scannedData),
         initialChildren: children,
       );

  static const String name = 'SuccessRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<SuccessRouteArgs>();
      return SuccessPage(key: args.key, scannedData: args.scannedData);
    },
  );
}

class SuccessRouteArgs {
  const SuccessRouteArgs({this.key, required this.scannedData});

  final Key? key;

  final String scannedData;

  @override
  String toString() {
    return 'SuccessRouteArgs{key: $key, scannedData: $scannedData}';
  }
}
