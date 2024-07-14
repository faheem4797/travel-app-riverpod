import 'package:travel_app_riverpod/features/trips/domain/entities/trip.dart';
import 'package:travel_app_riverpod/features/trips/domain/repositories/trip_repository.dart';

class GetTrips {
  final TripRepository tripRepository;

  GetTrips({required this.tripRepository});
  Future<List<Trip>> call() {
    return tripRepository.getTrips();
  }
}
