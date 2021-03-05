import 'package:freezed_annotation/freezed_annotation.dart';

import '../../enums.dart';
import '../models/api.dart';
import '../models/views.dart';
import '../query.dart';

part 'comment.freezed.dart';
part 'comment.g.dart';

@freezed
abstract class CreateComment
    implements _$CreateComment, LemmyApiQuery<FullCommentView> {
  @JsonSerializable(fieldRename: FieldRename.snake, includeIfNull: false)
  const factory CreateComment({
    required String content,
    int? parentId,
    required int postId,
    String? formId,
    required String auth,
  }) = _CreateComment;

  const CreateComment._();
  factory CreateComment.fromJson(Map<String, dynamic> json) =>
      _$CreateCommentFromJson(json);

  @override
  String path() => '/comment';

  @override
  HttpMethod httpMethod() => HttpMethod.post;

  @override
  FullCommentView responseFactory(Map<String, dynamic> json) =>
      FullCommentView.fromJson(json);
}

@freezed
abstract class EditComment
    implements _$EditComment, LemmyApiQuery<FullCommentView> {
  @JsonSerializable(fieldRename: FieldRename.snake, includeIfNull: false)
  const factory EditComment({
    required String content,
    required int commentId,
    String? formId,
    required String auth,
  }) = _EditComment;

  const EditComment._();
  factory EditComment.fromJson(Map<String, dynamic> json) =>
      _$EditCommentFromJson(json);

  @override
  String path() => '/comment';

  @override
  HttpMethod httpMethod() => HttpMethod.put;

  @override
  FullCommentView responseFactory(Map<String, dynamic> json) =>
      FullCommentView.fromJson(json);
}

@freezed
abstract class DeleteComment
    implements _$DeleteComment, LemmyApiQuery<FullCommentView> {
  @JsonSerializable(fieldRename: FieldRename.snake, includeIfNull: false)
  const factory DeleteComment({
    required int commentId,
    required bool deleted,
    required String auth,
  }) = _DeleteComment;

  const DeleteComment._();
  factory DeleteComment.fromJson(Map<String, dynamic> json) =>
      _$DeleteCommentFromJson(json);

  @override
  String path() => '/comment/delete';

  @override
  HttpMethod httpMethod() => HttpMethod.post;

  @override
  FullCommentView responseFactory(Map<String, dynamic> json) =>
      FullCommentView.fromJson(json);
}

@freezed
abstract class RemoveComment
    implements _$RemoveComment, LemmyApiQuery<FullCommentView> {
  @JsonSerializable(fieldRename: FieldRename.snake, includeIfNull: false)
  const factory RemoveComment({
    required int commentId,
    required bool removed,
    String? reason,
    required String auth,
  }) = _RemoveComment;

  const RemoveComment._();
  factory RemoveComment.fromJson(Map<String, dynamic> json) =>
      _$RemoveCommentFromJson(json);

  @override
  String path() => '/comment/remove';

  @override
  HttpMethod httpMethod() => HttpMethod.post;

  @override
  FullCommentView responseFactory(Map<String, dynamic> json) =>
      FullCommentView.fromJson(json);
}

@freezed
abstract class MarkCommentAsRead
    implements _$MarkCommentAsRead, LemmyApiQuery<FullCommentView> {
  @JsonSerializable(fieldRename: FieldRename.snake, includeIfNull: false)
  const factory MarkCommentAsRead({
    required int commentId,
    required bool read,
    required String auth,
  }) = _MarkCommentAsRead;

  const MarkCommentAsRead._();
  factory MarkCommentAsRead.fromJson(Map<String, dynamic> json) =>
      _$MarkCommentAsReadFromJson(json);

  @override
  String path() => '/comment/mark_as_read';

  @override
  HttpMethod httpMethod() => HttpMethod.post;

  @override
  FullCommentView responseFactory(Map<String, dynamic> json) =>
      FullCommentView.fromJson(json);
}

@freezed
abstract class SaveComment
    implements _$SaveComment, LemmyApiQuery<FullCommentView> {
  @JsonSerializable(fieldRename: FieldRename.snake, includeIfNull: false)
  const factory SaveComment({
    required int commentId,
    required bool save,
    required String auth,
  }) = _SaveComment;

  const SaveComment._();
  factory SaveComment.fromJson(Map<String, dynamic> json) =>
      _$SaveCommentFromJson(json);

  @override
  String path() => '/comment/save';

  @override
  HttpMethod httpMethod() => HttpMethod.put;

  @override
  FullCommentView responseFactory(Map<String, dynamic> json) =>
      FullCommentView.fromJson(json);
}

@freezed
abstract class CreateCommentLike
    implements _$CreateCommentLike, LemmyApiQuery<FullCommentView> {
  @JsonSerializable(fieldRename: FieldRename.snake, includeIfNull: false)
  const factory CreateCommentLike({
    required int commentId,
    required VoteType score,
    required String auth,
  }) = _CreateCommentLike;

  const CreateCommentLike._();
  factory CreateCommentLike.fromJson(Map<String, dynamic> json) =>
      _$CreateCommentLikeFromJson(json);

  @override
  String path() => '/comment/like';

  @override
  HttpMethod httpMethod() => HttpMethod.post;

  @override
  FullCommentView responseFactory(Map<String, dynamic> json) =>
      FullCommentView.fromJson(json);
}

@freezed
abstract class GetComments
    implements _$GetComments, LemmyApiQuery<List<CommentView>> {
  @JsonSerializable(fieldRename: FieldRename.snake, includeIfNull: false)
  const factory GetComments({
    @JsonKey(name: 'type_') required CommentListingType type,
    required SortType sort,
    int? page,
    int? limit,
    int? communityId,
    String? communityName,
    String? auth,
  }) = _GetComments;

  const GetComments._();
  factory GetComments.fromJson(Map<String, dynamic> json) =>
      _$GetCommentsFromJson(json);

  @override
  String path() => '/comment/list';

  @override
  HttpMethod httpMethod() => HttpMethod.get;

  @override
  List<CommentView> responseFactory(Map<String, dynamic> json) =>
      (json['comments'] as List).map((e) => CommentView.fromJson(e)).toList();
}

// TODO: this does not seem to exist yet
@freezed
abstract class CreateCommentReport
    implements _$CreateCommentReport, LemmyApiQuery<bool> {
  @JsonSerializable(fieldRename: FieldRename.snake, includeIfNull: false)
  const factory CreateCommentReport({
    required int commentId,
    required String reason,
    required String auth,
  }) = _CreateCommentReport;

  const CreateCommentReport._();
  factory CreateCommentReport.fromJson(Map<String, dynamic> json) =>
      _$CreateCommentReportFromJson(json);

  @override
  String path() => 'xyz';

  @override
  HttpMethod httpMethod() => HttpMethod.get;

  @override
  bool responseFactory(Map<String, dynamic> json) => json['success'] as bool;
}

// TODO: this does not seem to exist yet
@freezed
abstract class ResolveCommentReport
    implements
        _$ResolveCommentReport,
        LemmyApiQuery<ResolveCommentReportResponse> {
  @JsonSerializable(fieldRename: FieldRename.snake, includeIfNull: false)
  const factory ResolveCommentReport({
    required int reportId,
    required bool resolved,
    required String auth,
  }) = _ResolveCommentReport;

  const ResolveCommentReport._();
  factory ResolveCommentReport.fromJson(Map<String, dynamic> json) =>
      _$ResolveCommentReportFromJson(json);

  @override
  String path() => 'xyz';

  @override
  HttpMethod httpMethod() => HttpMethod.get;

  @override
  ResolveCommentReportResponse responseFactory(Map<String, dynamic> json) =>
      ResolveCommentReportResponse.fromJson(json);
}

// TODO: this does not seem to exist yet
@freezed
abstract class ListCommentReports
    implements _$ListCommentReports, LemmyApiQuery<List<CommentReportView>> {
  @JsonSerializable(fieldRename: FieldRename.snake, includeIfNull: false)
  const factory ListCommentReports({
    int? page,
    int? limit,
    int? community,
    required String auth,
  }) = _ListCommentReports;

  const ListCommentReports._();
  factory ListCommentReports.fromJson(Map<String, dynamic> json) =>
      _$ListCommentReportsFromJson(json);

  @override
  String path() => 'xyz';

  @override
  HttpMethod httpMethod() => HttpMethod.get;

  @override
  List<CommentReportView> responseFactory(Map<String, dynamic> json) =>
      (json['comments'] as List)
          .map((e) => CommentReportView.fromJson(e))
          .toList();
}
