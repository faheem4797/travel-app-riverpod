import 'package:travel_app_riverpod/features/trips/domain/repositories/trip_repository.dart';

class AddTrip {
  final TripRepository tripRepository;

  AddTrip({required this.tripRepository});
  Future<void> call() {
    return tripRepository.addTrip();
  }
}
