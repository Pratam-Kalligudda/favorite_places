import 'dart:io';

import 'package:favorite_places/models/place.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class UserPlacesNotifer extends StateNotifier<List<Place>> {
  UserPlacesNotifer() : super(const []);

  void addPlace(String title, File image, PlaceLocation address) {
    final newPlace = Place(title: title, image: image, location: address);
    state = [newPlace, ...state];
  }
}

final userPlacesProvider =
    StateNotifierProvider<UserPlacesNotifer, List<Place>>(
        (ref) => UserPlacesNotifer());
