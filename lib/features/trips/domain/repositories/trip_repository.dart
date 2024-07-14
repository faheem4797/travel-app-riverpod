import 'package:travel_app_riverpod/features/trips/domain/entities/trip.dart';

abstract class TripRepository {
  Future<List<Trip>> getTrips();
  Future<void> addTrip(Trip trip);
  Future<void> deleteTrip(int index);
}
