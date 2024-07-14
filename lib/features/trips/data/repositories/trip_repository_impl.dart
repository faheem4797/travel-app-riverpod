import 'package:travel_app_riverpod/features/trips/data/datasources/trip_local_datasource.dart';
import 'package:travel_app_riverpod/features/trips/data/models/trip_model.dart';
import 'package:travel_app_riverpod/features/trips/domain/entities/trip.dart';
import 'package:travel_app_riverpod/features/trips/domain/repositories/trip_repository.dart';

class TripRepositoryImpl implements TripRepository {
  final TripLocalDataSource tripLocalDataSource;

  TripRepositoryImpl({required this.tripLocalDataSource});
  @override
  Future<void> addTrip(Trip trip) async {
    final tripModel = TripModel.fromEntity(trip);
    tripLocalDataSource.addTrip(tripModel);
  }

  @override
  Future<void> deleteTrip(int index) async {
    tripLocalDataSource.deleteTrip(index);
  }

  @override
  Future<List<Trip>> getTrips() async {
    final tripsinModel = tripLocalDataSource.getTrips();
    List<Trip> res = tripsinModel.map((model) => model.toEntity()).toList();

    return res;
  }
}
