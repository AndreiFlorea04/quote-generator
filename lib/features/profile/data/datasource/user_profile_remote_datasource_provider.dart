import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:quote_generator/features/profile/data/data.dart';

final userProfileRemoteDatasourceProvider =
    Provider<UserProfileRemoteDataSource>((ref) {
  return UserProfileRemoteDataSourceImpl();
});
