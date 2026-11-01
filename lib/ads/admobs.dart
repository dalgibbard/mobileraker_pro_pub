import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';

import 'ad_block_unit.dart';

export 'ad_block_unit.dart';

/// Stub stand-in for the private AdMobs implementation. Ads are disabled in this build.
class AdMobs {
  Future<void> initialize() async {}

  Future<void> requestConsentIfRequired() async {}
}

final adMobsProvider = Provider<AdMobs>((ref) => AdMobs());

/// Stand-in for the pro `family2` provider: callable with two positional args.
class _BannerAdFamily {
  final _family = FutureProvider.family<BannerAd?, (AdSize, AdBlockUnit)>(
    (ref, args) async => null,
  );

  call(AdSize size, AdBlockUnit unit) => _family((size, unit));
}

final bannerAdProvider = _BannerAdFamily();

final isConsentFormAvailableProvider = FutureProvider<bool>((ref) async => false);
