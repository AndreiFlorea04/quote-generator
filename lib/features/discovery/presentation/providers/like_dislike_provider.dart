import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:quote_generator/core/core.dart';
import 'package:quote_generator/features/discovery/discovery.dart';
import 'package:quote_generator/features/profile/profile.dart';

final likeDislikeQuoteProvider = FutureProvider.autoDispose.family(
  (ref, String quoteId) async {
    final String userId = ref.watch(userProvider).appUser?.userId ?? '';
    final likeDislikeQuote = ref.watch(likeDislikeQuoteUsecaseProvider);
    final MapString info = {
      QuoteKey.quoteId: quoteId,
      QuoteKey.userId: userId,
    };
    return likeDislikeQuote(info);
  },
);
