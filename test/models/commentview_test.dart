import 'dart:convert';

import 'package:lemmy_api_client/lemmy_api_client.dart';
import 'package:lemmy_api_client/src/v1/models/comment.dart';
import 'package:test/test.dart';

void main() {
  test('CommentView test', () {
    final Map<String, dynamic> commentFromApi = jsonDecode(""" 
      {
        "id": 14296,
        "creator_id": 8218,
        "post_id": 38501,
        "post_name": "Niklaus Wirth was right and that is a problem",
        "parent_id": 14286,
        "content": "I think that the same functionality current crop of apps has could be implemented much more cleanly and efficiently if there wasn't a rush to get products to market. If developers could spend the time to think things through and try different approaches to see what works best we'd have much higher quality software today. Instead, everything is rushed to market as fast as possible, and developers are constantly overwhelmed with unreasonable amounts of work with no time to do things properly or clean things up along the way.",
        "removed": false,
        "read": true,
        "published": "2020-08-02T20:31:19.303284",
        "updated": null,
        "deleted": false,
        "ap_id": "https://dev.lemmy.ml/comment/14296",
        "local": true,
        "community_id": 14680,
        "community_actor_id": "https://dev.lemmy.ml/c/programming",
        "community_local": true,
        "community_name": "programming",
        "community_icon": null,
        "banned": false,
        "banned_from_community": false,
        "creator_actor_id": "https://dev.lemmy.ml/u/yogthos",
        "creator_local": true,
        "creator_name": "yogthos",
        "creator_preferred_username": null,
        "creator_published": "2020-01-18T04:02:39.254957",
        "creator_avatar": "https://dev.lemmy.ml/pictrs/image/bwk1q2.png",
        "score": 1,
        "upvotes": 1,
        "downvotes": 0,
        "hot_rank": 0,
        "hot_rank_active": 0,
        "user_id": 13709,
        "my_vote": 0,
        "subscribed": false,
        "saved": false
      }""");

    final comment = CommentView.fromJson(commentFromApi);

    expect(comment.id, 14296);
    expect(comment.creatorId, 8218);
    expect(comment.postId, 38501);
    expect(comment.postName, 'Niklaus Wirth was right and that is a problem');
    expect(comment.parentId, 14286);
    expect(comment.content,
        '''I think that the same functionality current crop of apps has could be implemented much more cleanly and efficiently if there wasn't a rush to get products to market. If developers could spend the time to think things through and try different approaches to see what works best we'd have much higher quality software today. Instead, everything is rushed to market as fast as possible, and developers are constantly overwhelmed with unreasonable amounts of work with no time to do things properly or clean things up along the way.''');
    expect(comment.removed, false);
    expect(comment.read, true);
    expect(comment.published, DateTime.parse('2020-08-02T20:31:19.303284'));
    expect(comment.updated, null);
    expect(comment.deleted, false);
    expect(comment.apId, 'https://dev.lemmy.ml/comment/14296');
    expect(comment.local, true);
    expect(comment.communityId, 14680);
    expect(comment.communityActorId, 'https://dev.lemmy.ml/c/programming');
    expect(comment.communityLocal, true);
    expect(comment.communityName, 'programming');
    expect(comment.communityIcon, null);
    expect(comment.banned, false);
    expect(comment.bannedFromCommunity, false);
    expect(comment.creatorActorId, 'https://dev.lemmy.ml/u/yogthos');
    expect(comment.creatorLocal, true);
    expect(comment.creatorName, 'yogthos');
    expect(comment.creatorPreferredUsername, null);
    expect(
        comment.creatorPublished, DateTime.parse('2020-01-18T04:02:39.254957'));
    expect(
        comment.creatorAvatar, 'https://dev.lemmy.ml/pictrs/image/bwk1q2.png');
    expect(comment.score, 1);
    expect(comment.upvotes, 1);
    expect(comment.downvotes, 0);
    expect(comment.hotRank, 0);
    expect(comment.hotRankActive, 0);
    expect(comment.userId, 13709);
    expect(comment.myVote, VoteType.none);
    expect(comment.subscribed, false);
    expect(comment.saved, false);
  });
}
