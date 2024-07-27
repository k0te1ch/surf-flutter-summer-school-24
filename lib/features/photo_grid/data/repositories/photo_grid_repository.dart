// ignore_for_file: public_member_api_docs

import 'dart:developer' as developer;
import 'package:surf_flutter_summer_school_24/api/service/photo/photo_api.dart';
import 'package:surf_flutter_summer_school_24/features/photo_grid/domain/entities/photo_entity.dart';
import 'package:surf_flutter_summer_school_24/features/photo_grid/domain/repositories/i_photo_grid_repository.dart';

class PhotoGridRepository implements IPhotoGridRepository {
  final PhotoApi _photoApi;
  final String _oauthToken;

  PhotoGridRepository(this._photoApi, this._oauthToken);

  @override
  Future<List<PhotoEntity>> getPhotos() async {
    try {
      developer.log('Запущен getPhotos');
      final response = await _photoApi.getPhotos('Постограм', _oauthToken);
      developer.log('Получен ответ от API: $response');

      final embedded = response.embedded;
      developer.log('Embedded: $embedded');

      final items = embedded.items;
      developer.log('Извлечены элементы: $items');

      final photos = items.map((item) {
        return PhotoEntity(
          id: item.resourceId,
          imageUrl: item.file,
          description: item.name,
        );
      }).toList();

      developer.log('Преобразованные фото: $photos');
      return photos;
    } on Exception catch (e, stackTrace) {
      developer.log('Ошибка в getPhotos: $e\n$stackTrace');
      rethrow;
    }
  }
}
