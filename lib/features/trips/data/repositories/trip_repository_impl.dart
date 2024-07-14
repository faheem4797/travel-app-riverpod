import 'package:dartz/dartz.dart';
import 'package:travel_app_riverpod/core/error/failures.dart';
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
  Future<Either<Failure, List<Trip>>> getTrips() async {
    try {
      final tripModels = tripLocalDataSource.getTrips();
      List<Trip> res = tripModels.map((model) => model.toEntity()).toList();
      return Right(res);
    } catch (error) {
      return Left(SomeSpecificError(error.toString()));
    }
  }
}
