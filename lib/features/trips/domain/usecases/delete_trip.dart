import 'package:travel_app_riverpod/features/trips/domain/repositories/trip_repository.dart';

class DeleteTrip {
  final TripRepository tripRepository;

  DeleteTrip({required this.tripRepository});
  Future<void> call() {
    return tripRepository.addTrip();
  }
}
