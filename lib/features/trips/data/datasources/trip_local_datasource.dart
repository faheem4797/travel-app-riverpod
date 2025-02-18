import 'package:hive/hive.dart';
import 'package:travel_app_riverpod/features/trips/data/models/trip_model.dart';

class TripLocalDataSource {
  final Box<TripModel> tripBox;

  TripLocalDataSource({required this.tripBox});
  List<TripModel> getTrips() {
    return tripBox.values.toList();
  }

  void addTrip(TripModel trip) {
    tripBox.add(trip);
  }

  void deleteTrip(int index) {
    tripBox.deleteAt(index);
  }
}
