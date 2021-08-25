import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';

import '../../enums.dart';
import 'aggregates.dart';
import 'source.dart';

part 'views.freezed.dart';
part 'views.g.dart';

@freezed
class PersonViewSafe with _$PersonViewSafe {
  @JsonSerializable(fieldRename: FieldRename.snake)
  factory PersonViewSafe({
    required PersonSafe person,
    required PersonAggregates counts,
    required String instanceHost,
  }) = _PersonViewSafe;

  PersonViewSafe._();
  factory PersonViewSafe.fromJson(Map<String, dynamic> json) =>
      _$PersonViewSafeFromJson(json);
}

@freezed
class PersonMentionView with _$PersonMentionView {
  @JsonSerializable(fieldRename: FieldRename.snake)
  factory PersonMentionView({
    required PersonMention personMention,
    required Comment comment,
    required PersonSafe creator,
    required Post post,
    required CommunitySafe community,
    required PersonSafe recipient,
    required CommentAggregates counts,
    required bool creatorBannedFromCommunity,
    required bool subscribed,
    required bool saved,
    required bool creatorBlocked,
    VoteType? myVote,
    required String instanceHost,
  }) = _PersonMentionView;

  PersonMentionView._();
  factory PersonMentionView.fromJson(Map<String, dynamic> json) =>
      _$PersonMentionViewFromJson(json);
}

@freezed
class LocalUserSettingsView with _$LocalUserSettingsView {
  @JsonSerializable(fieldRename: FieldRename.snake)
  factory LocalUserSettingsView({
    required LocalUserSettings localUser,
    required PersonSafe person,
    required PersonAggregates counts,
    required String instanceHost,
  }) = _LocalUserSettingsView;

  LocalUserSettingsView._();
  factory LocalUserSettingsView.fromJson(Map<String, dynamic> json) =>
      _$LocalUserSettingsViewFromJson(json);
}

@freezed
class SiteView with _$SiteView {
  @JsonSerializable(fieldRename: FieldRename.snake)
  factory SiteView({
    required Site site,
    required PersonSafe creator,
    required SiteAggregates counts,
    required String instanceHost,
  }) = _SiteView;

  SiteView._();
  factory SiteView.fromJson(Map<String, dynamic> json) =>
      _$SiteViewFromJson(json);
}

@freezed
class PrivateMessageView with _$PrivateMessageView {
  @JsonSerializable(fieldRename: FieldRename.snake)
  factory PrivateMessageView({
    required PrivateMessage privateMessage,
    required PersonSafe creator,
    required PersonSafe recipient,
    required String instanceHost,
  }) = _PrivateMessageView;

  PrivateMessageView._();
  factory PrivateMessageView.fromJson(Map<String, dynamic> json) =>
      _$PrivateMessageViewFromJson(json);
}

@freezed
class PostView with _$PostView {
  @JsonSerializable(fieldRename: FieldRename.snake)
  factory PostView({
    required Post post,
    required PersonSafe creator,
    required CommunitySafe community,
    required bool creatorBannedFromCommunity,
    required PostAggregates counts,
    required bool subscribed,
    required bool saved,
    required bool read,
    required bool creatorBlocked,
    VoteType? myVote,
    required String instanceHost,
  }) = _PostView;

  PostView._();
  factory PostView.fromJson(Map<String, dynamic> json) =>
      _$PostViewFromJson(json);
}

@freezed
class PostReportView with _$PostReportView {
  @JsonSerializable(fieldRename: FieldRename.snake)
  factory PostReportView({
    required PostReport postReport,
    required Post post,
    required CommunitySafe community,
    required PersonSafe creator,
    required PersonSafe postCreator,
    PersonSafe? resolver,
    required String instanceHost,
  }) = _PostReportView;

  PostReportView._();
  factory PostReportView.fromJson(Map<String, dynamic> json) =>
      _$PostReportViewFromJson(json);
}

@freezed
class CommentView with _$CommentView {
  @JsonSerializable(fieldRename: FieldRename.snake)
  factory CommentView({
    required Comment comment,
    required PersonSafe creator,
    PersonSafe? recipient,
    required Post post,
    required CommunitySafe community,
    required CommentAggregates counts,
    required bool creatorBannedFromCommunity,
    required bool subscribed,
    required bool saved,
    required bool creatorBlocked,
    VoteType? myVote,
    required String instanceHost,
  }) = _CommentView;

  CommentView._();
  factory CommentView.fromJson(Map<String, dynamic> json) =>
      _$CommentViewFromJson(json);
}

@freezed
class CommentReportView with _$CommentReportView {
  @JsonSerializable(fieldRename: FieldRename.snake)
  factory CommentReportView({
    required CommentReport commentReport,
    required Comment comment,
    required Post post,
    required CommunitySafe community,
    required PersonSafe creator,
    required PersonSafe commentCreator,
    PersonSafe? resolver,
    required String instanceHost,
  }) = _CommentReportView;

  CommentReportView._();
  factory CommentReportView.fromJson(Map<String, dynamic> json) =>
      _$CommentReportViewFromJson(json);
}

@freezed
class ModAddCommunityView with _$ModAddCommunityView {
  @JsonSerializable(fieldRename: FieldRename.snake)
  factory ModAddCommunityView({
    required ModAddCommunity modAddCommunity,
    required PersonSafe moderator,
    required CommunitySafe community,
    required PersonSafe moddedPerson,
    required String instanceHost,
  }) = _ModAddCommunityView;

  ModAddCommunityView._();
  factory ModAddCommunityView.fromJson(Map<String, dynamic> json) =>
      _$ModAddCommunityViewFromJson(json);
}

@freezed
class ModTransferCommunityView with _$ModTransferCommunityView {
  @JsonSerializable(fieldRename: FieldRename.snake)
  factory ModTransferCommunityView({
    required ModTransferCommunity modTransferCommunity,
    required PersonSafe moderator,
    required CommunitySafe community,
    required PersonSafe moddedPerson,
    required String instanceHost,
  }) = _ModTransferCommunityView;

  ModTransferCommunityView._();
  factory ModTransferCommunityView.fromJson(Map<String, dynamic> json) =>
      _$ModTransferCommunityViewFromJson(json);
}

@freezed
class ModAddView with _$ModAddView {
  @JsonSerializable(fieldRename: FieldRename.snake)
  factory ModAddView({
    required ModAdd modAdd,
    required PersonSafe moderator,
    required PersonSafe moddedPerson,
    required String instanceHost,
  }) = _ModAddView;

  ModAddView._();
  factory ModAddView.fromJson(Map<String, dynamic> json) =>
      _$ModAddViewFromJson(json);
}

@freezed
class ModBanFromCommunityView with _$ModBanFromCommunityView {
  @JsonSerializable(fieldRename: FieldRename.snake)
  factory ModBanFromCommunityView({
    required ModBanFromCommunity modBanFromCommunity,
    required PersonSafe moderator,
    required CommunitySafe community,
    required PersonSafe bannedPerson,
    required String instanceHost,
  }) = _ModBanFromCommunityView;

  ModBanFromCommunityView._();
  factory ModBanFromCommunityView.fromJson(Map<String, dynamic> json) =>
      _$ModBanFromCommunityViewFromJson(json);
}

@freezed
class ModBanView with _$ModBanView {
  @JsonSerializable(fieldRename: FieldRename.snake)
  factory ModBanView({
    required ModBan modBan,
    required PersonSafe moderator,
    required PersonSafe bannedPerson,
    required String instanceHost,
  }) = _ModBanView;

  ModBanView._();
  factory ModBanView.fromJson(Map<String, dynamic> json) =>
      _$ModBanViewFromJson(json);
}

@freezed
class ModLockPostView with _$ModLockPostView {
  @JsonSerializable(fieldRename: FieldRename.snake)
  factory ModLockPostView({
    required ModLockPost modLockPost,
    required PersonSafe moderator,
    required Post post,
    required CommunitySafe community,
    required String instanceHost,
  }) = _ModLockPostView;

  ModLockPostView._();
  factory ModLockPostView.fromJson(Map<String, dynamic> json) =>
      _$ModLockPostViewFromJson(json);
}

@freezed
class ModRemoveCommentView with _$ModRemoveCommentView {
  @JsonSerializable(fieldRename: FieldRename.snake)
  factory ModRemoveCommentView({
    required ModRemoveComment modRemoveComment,
    required PersonSafe moderator,
    required Comment comment,
    required PersonSafe commenter,
    required Post post,
    required CommunitySafe community,
    required String instanceHost,
  }) = _ModRemoveCommentView;

  ModRemoveCommentView._();
  factory ModRemoveCommentView.fromJson(Map<String, dynamic> json) =>
      _$ModRemoveCommentViewFromJson(json);
}

@freezed
class ModRemoveCommunityView with _$ModRemoveCommunityView {
  @JsonSerializable(fieldRename: FieldRename.snake)
  factory ModRemoveCommunityView({
    required ModRemoveCommunity modRemoveCommunity,
    required PersonSafe moderator,
    required CommunitySafe community,
    required String instanceHost,
  }) = _ModRemoveCommunityView;

  ModRemoveCommunityView._();
  factory ModRemoveCommunityView.fromJson(Map<String, dynamic> json) =>
      _$ModRemoveCommunityViewFromJson(json);
}

@freezed
class ModRemovePostView with _$ModRemovePostView {
  @JsonSerializable(fieldRename: FieldRename.snake)
  factory ModRemovePostView({
    required ModRemovePost modRemovePost,
    required PersonSafe moderator,
    required Post post,
    required CommunitySafe community,
    required String instanceHost,
  }) = _ModRemovePostView;

  ModRemovePostView._();
  factory ModRemovePostView.fromJson(Map<String, dynamic> json) =>
      _$ModRemovePostViewFromJson(json);
}

@freezed
class ModStickyPostView with _$ModStickyPostView {
  @JsonSerializable(fieldRename: FieldRename.snake)
  factory ModStickyPostView({
    required ModStickyPost modStickyPost,
    required PersonSafe moderator,
    required Post post,
    required CommunitySafe community,
    required String instanceHost,
  }) = _ModStickyPostView;

  ModStickyPostView._();
  factory ModStickyPostView.fromJson(Map<String, dynamic> json) =>
      _$ModStickyPostViewFromJson(json);
}

@freezed
class CommunityFollowerView with _$CommunityFollowerView {
  @JsonSerializable(fieldRename: FieldRename.snake)
  factory CommunityFollowerView({
    required CommunitySafe community,
    required PersonSafe follower,
    required String instanceHost,
  }) = _CommunityFollowerView;

  CommunityFollowerView._();
  factory CommunityFollowerView.fromJson(Map<String, dynamic> json) =>
      _$CommunityFollowerViewFromJson(json);
}

@freezed
class CommunityModeratorView with _$CommunityModeratorView {
  @JsonSerializable(fieldRename: FieldRename.snake)
  factory CommunityModeratorView({
    required CommunitySafe community,
    required PersonSafe moderator,
    required String instanceHost,
  }) = _CommunityModeratorView;

  CommunityModeratorView._();
  factory CommunityModeratorView.fromJson(Map<String, dynamic> json) =>
      _$CommunityModeratorViewFromJson(json);
}

@freezed
class PersonBlockView with _$PersonBlockView {
  @JsonSerializable(fieldRename: FieldRename.snake)
  factory PersonBlockView({
    required PersonSafe person,
    required PersonSafe target,
    required String instanceHost,
  }) = _PersonBlockView;

  PersonBlockView._();
  factory PersonBlockView.fromJson(Map<String, dynamic> json) =>
      _$PersonBlockViewFromJson(json);
}

@freezed
class CommunityBlockView with _$CommunityBlockView {
  @JsonSerializable(fieldRename: FieldRename.snake)
  factory CommunityBlockView({
    required PersonSafe person,
    required CommunitySafe community,
    required String instanceHost,
  }) = _CommunityBlockView;

  CommunityBlockView._();
  factory CommunityBlockView.fromJson(Map<String, dynamic> json) =>
      _$CommunityBlockViewFromJson(json);
}

@freezed
class CommunityPersonBanView with _$CommunityPersonBanView {
  @JsonSerializable(fieldRename: FieldRename.snake)
  factory CommunityPersonBanView({
    required CommunitySafe community,
    required PersonSafe person,
    required String instanceHost,
  }) = _CommunityPersonBanView;

  CommunityPersonBanView._();
  factory CommunityPersonBanView.fromJson(Map<String, dynamic> json) =>
      _$CommunityPersonBanViewFromJson(json);
}

@freezed
class CommunityView with _$CommunityView {
  @JsonSerializable(fieldRename: FieldRename.snake)
  factory CommunityView({
    required CommunitySafe community,
    required bool subscribed,
    required bool blocked,
    required CommunityAggregates counts,
    required String instanceHost,
  }) = _CommunityView;

  CommunityView._();
  factory CommunityView.fromJson(Map<String, dynamic> json) =>
      _$CommunityViewFromJson(json);
}
