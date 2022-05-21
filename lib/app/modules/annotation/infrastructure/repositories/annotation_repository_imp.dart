import 'package:dartz/dartz.dart';

import '../../domain/entities/annotation_entity.dart';
import '../../domain/entities/edit_or_remove_annotation_entity.dart';
import '../../domain/repositories/annotation_repository.dart';
import '../datasourcers/annotation_datasource.dart';

class AnnotationRepositoryImp implements AnnotationRepository {
  final AnnotationDataSource _annotationDataSource;

  AnnotationRepositoryImp(this._annotationDataSource);

  @override
  Future<Either<Exception, AnnotationEntity>> createAnnotation(
      {required AnnotationEntity annotationEntity}) {
    return _annotationDataSource.createAnnotation(
        annotationEntity: annotationEntity);
  }

  @override
  Future<Either<Exception, EditOrRemoveAnnotationEntity>> editAnnotation(
      {required EditOrRemoveAnnotationEntity editAnnotationEntity}) {
    return _annotationDataSource.editAnnotation(
        editAnnotationEntity: editAnnotationEntity);
  }

  @override
  Future<Either<Exception, EditOrRemoveAnnotationEntity>> removeAnnotation(
      {required EditOrRemoveAnnotationEntity editOrRemoveAnnotationEntity}) {
    return _annotationDataSource.removeAnnotation(
        editOrRemoveAnnotationEntity: editOrRemoveAnnotationEntity);
  }

  @override
  Future<Either<Exception, List<AnnotationEntity>>> getTodo() {
    return _annotationDataSource.getTodo();
  }
}