import 'package:dartz/dartz.dart';
import 'package:hardware_market/Core/errors/failure.dart';
import 'package:hardware_market/Domain/entity/product_entity.dart';

abstract class HomeRepo{
  Future<Either<List<ProductEntity>,Failure>> getProducts();
}