.class public Lcom/sec/android/app/sbrowser/sites/bookmark/wearable_sync/BookmarkWearableBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# instance fields
.field private mAndroidID:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mIsFolderTypeBookmark:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public isSyncedBookmarkDeleted(J)Z
    .locals 1

    new-instance v0, Lcom/sec/android/app/sbrowser/sites/bookmark/wearable_sync/BookmarkWearableSyncModel;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/wearable_sync/BookmarkWearableBroadcastReceiver;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/sites/bookmark/wearable_sync/BookmarkWearableSyncModel;-><init>(Landroid/content/Context;)V

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/sec/android/app/sbrowser/sites/bookmark/wearable_sync/BookmarkWearableSyncModel;->getBookmarkItem(Ljava/lang/Long;)Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 12

    const/4 v0, 0x1

    const-string v1, "BookmarkWearableBroadcastReceiver"

    const-string v2, "Intent Received"

    invoke-static {v1, v2}, Lcom/sec/android/app/sbrowser/common/blockers/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/sec/terrace/TerraceApplicationStatus;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lw2/F;->c(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "bookmarks_wearable_sync_status"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    return-void

    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/wearable_sync/BookmarkWearableBroadcastReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    const-string v2, "id"

    invoke-virtual {p1, v2}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    move-result-wide v5

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    const-string v2, "title"

    invoke-virtual {p1, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    const-string v2, "url"

    invoke-virtual {p1, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    const-string v2, "timestamp"

    invoke-virtual {p1, v2}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    move-result-wide v10

    const-string p1, "bookmark_type"

    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/wearable_sync/BookmarkWearableBroadcastReceiver;->mIsFolderTypeBookmark:Z

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/application/ApplicationStatus;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v2, "android_id"

    invoke-static {p1, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/wearable_sync/BookmarkWearableBroadcastReceiver;->mAndroidID:Ljava/lang/String;

    const-string p1, "bookmark"

    invoke-virtual {p2, p1}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p2, -0x1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    :goto_0
    move v0, p2

    goto :goto_1

    :sswitch_0
    const-string v0, "com.sec.android.app.sbrowser.beta.bookmark.BOOKMARK_ADDED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x2

    goto :goto_1

    :sswitch_1
    const-string v2, "com.sec.android.app.sbrowser.beta.bookmark.BOOKMARK_DELETED"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    goto :goto_0

    :sswitch_2
    const-string v0, "com.sec.android.app.sbrowser.beta.bookmark.BOOKMARK_UPDATED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    move v0, v3

    :cond_4
    :goto_1
    packed-switch v0, :pswitch_data_0

    goto :goto_2

    :pswitch_0
    const-string v9, "add"

    move-object v4, p0

    invoke-virtual/range {v4 .. v11}, Lcom/sec/android/app/sbrowser/sites/bookmark/wearable_sync/BookmarkWearableBroadcastReceiver;->sendAddRequest(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    goto :goto_2

    :pswitch_1
    const-string p2, "sync"

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/sites/bookmark/wearable_sync/BookmarkWearableBroadcastReceiver;->sendDeleteRequest(Ljava/util/ArrayList;Ljava/lang/String;)V

    goto :goto_2

    :pswitch_2
    const-string v9, "rename"

    move-object v4, p0

    invoke-virtual/range {v4 .. v11}, Lcom/sec/android/app/sbrowser/sites/bookmark/wearable_sync/BookmarkWearableBroadcastReceiver;->sendUpdateRequest(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    :goto_2
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x799c0ad1 -> :sswitch_2
        -0xf38bb73 -> :sswitch_1
        0x53768674 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public sendAddRequest(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 7

    const-string v0, "Bookmark Add Request to Gear"

    const-string v1, "BookmarkWearableBroadcastReceiver"

    invoke-static {v1, v0}, Lcom/sec/android/app/sbrowser/common/blockers/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/sites/bookmark/wearable_sync/BookmarkWearableSharedPreferenceHelper;->getInstance()Lcom/sec/android/app/sbrowser/sites/bookmark/wearable_sync/BookmarkWearableSharedPreferenceHelper;

    move-result-object v0

    new-instance v2, Lcom/sec/android/app/sbrowser/sites/bookmark/wearable_sync/BookmarkWearableSharedPreferenceEntry;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/sec/android/app/sbrowser/sites/bookmark/wearable_sync/BookmarkWearableSharedPreferenceEntry;-><init>(Ljava/lang/Long;)V

    invoke-virtual {v0, v2}, Lcom/sec/android/app/sbrowser/sites/bookmark/wearable_sync/BookmarkWearableSharedPreferenceHelper;->addOrReplaceSharedPreferenceEntry(Lcom/sec/android/app/sbrowser/sites/bookmark/wearable_sync/BookmarkWearableSharedPreferenceEntry;)V

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v5, "msgId"

    const-string v6, "update"

    invoke-virtual {v0, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v5, "msgType"

    sget-object v6, Lcom/sec/android/app/sbrowser/sites/bookmark/wearable_sync/BookmarkWearableConstants$MessageType;->SET:Lcom/sec/android/app/sbrowser/sites/bookmark/wearable_sync/BookmarkWearableConstants$MessageType;

    invoke-virtual {v6}, Lcom/sec/android/app/sbrowser/sites/bookmark/wearable_sync/BookmarkWearableConstants$MessageType;->getValue()I

    move-result v6

    invoke-virtual {v0, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v5, "deviceId"

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/wearable_sync/BookmarkWearableBroadcastReceiver;->mAndroidID:Ljava/lang/String;

    invoke-virtual {v0, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v5, "id"

    invoke-virtual {v2, v5, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string p1, "title"

    invoke-virtual {v2, p1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "url"

    invoke-virtual {v2, p1, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "timestamp"

    invoke-virtual {v2, p1, p6, p7}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string p1, "action"

    invoke-virtual {v4, p1, p5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v3, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    const-string p1, "bookmark"

    invoke-virtual {v4, p1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "uid"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p2

    invoke-virtual {v0, p1, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string p1, "data"

    invoke-virtual {v0, p1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Error: "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1, p2, v1}, Lcom/sec/android/app/sbrowser/autofill/password/k;->B(Lorg/json/JSONException;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :goto_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/wearable_sync/BookmarkWearableBroadcastReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/sites/bookmark/wearable_sync/BookmarkWearableServiceHelper;->sendResponse(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public sendDeleteRequest(Ljava/util/ArrayList;Ljava/lang/String;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string v0, "Bookmark Delete Request to Gear"

    const-string v1, "BookmarkWearableBroadcastReceiver"

    invoke-static {v1, v0}, Lcom/sec/android/app/sbrowser/common/blockers/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    move v2, v0

    move v3, v2

    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x1

    if-ge v2, v4, :cond_2

    invoke-static {}, Lcom/sec/android/app/sbrowser/sites/bookmark/wearable_sync/BookmarkWearableSharedPreferenceHelper;->getInstance()Lcom/sec/android/app/sbrowser/sites/bookmark/wearable_sync/BookmarkWearableSharedPreferenceHelper;

    move-result-object v4

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

    invoke-virtual {v6}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getId()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Lcom/sec/android/app/sbrowser/sites/bookmark/wearable_sync/BookmarkWearableSharedPreferenceHelper;->hasEntry(J)Z

    move-result v4

    if-eqz v4, :cond_1

    move v3, v5

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/sec/android/app/sbrowser/sites/bookmark/wearable_sync/BookmarkWearableSharedPreferenceHelper;->getInstance()Lcom/sec/android/app/sbrowser/sites/bookmark/wearable_sync/BookmarkWearableSharedPreferenceHelper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/sites/bookmark/wearable_sync/BookmarkWearableSharedPreferenceHelper;->getEntries()Ljava/util/List;

    move-result-object p1

    move v2, v0

    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_4

    iget-boolean v4, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/wearable_sync/BookmarkWearableBroadcastReceiver;->mIsFolderTypeBookmark:Z

    if-eqz v4, :cond_3

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/android/app/sbrowser/sites/bookmark/wearable_sync/BookmarkWearableSharedPreferenceEntry;

    iget-wide v6, v4, Lcom/sec/android/app/sbrowser/sites/bookmark/wearable_sync/BookmarkWearableSharedPreferenceEntry;->bookmarkId:J

    invoke-virtual {p0, v6, v7}, Lcom/sec/android/app/sbrowser/sites/bookmark/wearable_sync/BookmarkWearableBroadcastReceiver;->isSyncedBookmarkDeleted(J)Z

    move-result v4

    if-eqz v4, :cond_3

    move v3, v5

    goto :goto_2

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    :goto_2
    if-nez v3, :cond_5

    return-void

    :cond_5
    invoke-static {}, Lcom/sec/android/app/sbrowser/sites/bookmark/wearable_sync/BookmarkWearableSharedPreferenceHelper;->getInstance()Lcom/sec/android/app/sbrowser/sites/bookmark/wearable_sync/BookmarkWearableSharedPreferenceHelper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/sites/bookmark/wearable_sync/BookmarkWearableSharedPreferenceHelper;->clearSharedPreferenceEntry()V

    new-instance p1, Lcom/sec/android/app/sbrowser/sites/bookmark/wearable_sync/BookmarkWearableSyncModel;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/wearable_sync/BookmarkWearableBroadcastReceiver;->mContext:Landroid/content/Context;

    invoke-direct {p1, v2}, Lcom/sec/android/app/sbrowser/sites/bookmark/wearable_sync/BookmarkWearableSyncModel;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/sites/bookmark/wearable_sync/BookmarkWearableSyncModel;->getBookmarkData()Ljava/util/ArrayList;

    move-result-object p1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "No of Bookmarks Sent to Gear after Delete "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/android/app/sbrowser/common/blockers/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    move v2, v0

    :goto_3
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_6

    invoke-static {}, Lcom/sec/android/app/sbrowser/sites/bookmark/wearable_sync/BookmarkWearableSharedPreferenceHelper;->getInstance()Lcom/sec/android/app/sbrowser/sites/bookmark/wearable_sync/BookmarkWearableSharedPreferenceHelper;

    move-result-object v3

    new-instance v4, Lcom/sec/android/app/sbrowser/sites/bookmark/wearable_sync/BookmarkWearableSharedPreferenceEntry;

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

    invoke-virtual {v5}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getId()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/sec/android/app/sbrowser/sites/bookmark/wearable_sync/BookmarkWearableSharedPreferenceEntry;-><init>(Ljava/lang/Long;)V

    invoke-virtual {v3, v4}, Lcom/sec/android/app/sbrowser/sites/bookmark/wearable_sync/BookmarkWearableSharedPreferenceHelper;->addOrReplaceSharedPreferenceEntry(Lcom/sec/android/app/sbrowser/sites/bookmark/wearable_sync/BookmarkWearableSharedPreferenceEntry;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_6
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4}, Lorg/json/JSONArray;-><init>()V

    :goto_4
    :try_start_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v0, v5, :cond_7

    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    const-string v6, "id"

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

    invoke-virtual {v7}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getId()J

    move-result-wide v7

    invoke-virtual {v5, v6, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v6, "title"

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

    invoke-virtual {v7}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getTitle()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v6, "url"

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

    invoke-virtual {v7}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getUrl()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v6, "timestamp"

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

    invoke-virtual {v7}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getUpdatedTime()J

    move-result-wide v7

    invoke-virtual {v5, v6, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    invoke-virtual {v4, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :catch_0
    move-exception p1

    goto :goto_5

    :cond_7
    const-string p1, "msgId"

    const-string v0, "update"

    invoke-virtual {v2, p1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "msgType"

    sget-object v0, Lcom/sec/android/app/sbrowser/sites/bookmark/wearable_sync/BookmarkWearableConstants$MessageType;->SET:Lcom/sec/android/app/sbrowser/sites/bookmark/wearable_sync/BookmarkWearableConstants$MessageType;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/sites/bookmark/wearable_sync/BookmarkWearableConstants$MessageType;->getValue()I

    move-result v0

    invoke-virtual {v2, p1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p1, "deviceId"

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/wearable_sync/BookmarkWearableBroadcastReceiver;->mAndroidID:Ljava/lang/String;

    invoke-virtual {v2, p1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "bookmark"

    invoke-virtual {v3, p1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "action"

    invoke-virtual {v3, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "uid"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v2, p1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string p1, "data"

    invoke-virtual {v2, p1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_6

    :goto_5
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Error: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1, p2, v1}, Lcom/sec/android/app/sbrowser/autofill/password/k;->B(Lorg/json/JSONException;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :goto_6
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/wearable_sync/BookmarkWearableBroadcastReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/sites/bookmark/wearable_sync/BookmarkWearableServiceHelper;->sendResponse(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public sendUpdateRequest(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 11

    move-object v1, p0

    move-wide v2, p1

    const-string v0, "bookmark"

    const-string v4, "Bookmark Rename Request to Gear"

    const-string v5, "BookmarkWearableBroadcastReceiver"

    invoke-static {v5, v4}, Lcom/sec/android/app/sbrowser/common/blockers/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "Size of preference set "

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/sites/bookmark/wearable_sync/BookmarkWearableSharedPreferenceHelper;->getInstance()Lcom/sec/android/app/sbrowser/sites/bookmark/wearable_sync/BookmarkWearableSharedPreferenceHelper;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/app/sbrowser/sites/bookmark/wearable_sync/BookmarkWearableSharedPreferenceHelper;->getEntries()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Lcom/sec/android/app/sbrowser/common/blockers/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "Bookmark exist in 50 Synced Bookmarks"

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/sites/bookmark/wearable_sync/BookmarkWearableSharedPreferenceHelper;->getInstance()Lcom/sec/android/app/sbrowser/sites/bookmark/wearable_sync/BookmarkWearableSharedPreferenceHelper;

    move-result-object v6

    invoke-virtual {v6, p1, p2}, Lcom/sec/android/app/sbrowser/sites/bookmark/wearable_sync/BookmarkWearableSharedPreferenceHelper;->hasEntry(J)Z

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Lcom/sec/android/app/sbrowser/common/blockers/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/sites/bookmark/wearable_sync/BookmarkWearableSharedPreferenceHelper;->getInstance()Lcom/sec/android/app/sbrowser/sites/bookmark/wearable_sync/BookmarkWearableSharedPreferenceHelper;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/sbrowser/sites/bookmark/wearable_sync/BookmarkWearableSharedPreferenceHelper;->getEntries()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v4, :cond_0

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "ids"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/sites/bookmark/wearable_sync/BookmarkWearableSharedPreferenceHelper;->getInstance()Lcom/sec/android/app/sbrowser/sites/bookmark/wearable_sync/BookmarkWearableSharedPreferenceHelper;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sec/android/app/sbrowser/sites/bookmark/wearable_sync/BookmarkWearableSharedPreferenceHelper;->getEntries()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/sec/android/app/sbrowser/sites/bookmark/wearable_sync/BookmarkWearableSharedPreferenceEntry;

    iget-wide v8, v8, Lcom/sec/android/app/sbrowser/sites/bookmark/wearable_sync/BookmarkWearableSharedPreferenceEntry;->bookmarkId:J

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Lcom/sec/android/app/sbrowser/common/blockers/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/sites/bookmark/wearable_sync/BookmarkWearableSharedPreferenceHelper;->getInstance()Lcom/sec/android/app/sbrowser/sites/bookmark/wearable_sync/BookmarkWearableSharedPreferenceHelper;

    move-result-object v4

    invoke-virtual {v4, p1, p2}, Lcom/sec/android/app/sbrowser/sites/bookmark/wearable_sync/BookmarkWearableSharedPreferenceHelper;->hasEntry(J)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v6, "add"

    move-object v1, p0

    move-wide v2, p1

    move-object v4, p3

    move-object v5, p4

    move-wide/from16 v7, p6

    invoke-virtual/range {v1 .. v8}, Lcom/sec/android/app/sbrowser/sites/bookmark/wearable_sync/BookmarkWearableBroadcastReceiver;->sendAddRequest(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    return-void

    :cond_1
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    new-instance v7, Lorg/json/JSONArray;

    invoke-direct {v7}, Lorg/json/JSONArray;-><init>()V

    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v9, "msgId"

    const-string v10, "update"

    invoke-virtual {v4, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v9, "msgType"

    sget-object v10, Lcom/sec/android/app/sbrowser/sites/bookmark/wearable_sync/BookmarkWearableConstants$MessageType;->SET:Lcom/sec/android/app/sbrowser/sites/bookmark/wearable_sync/BookmarkWearableConstants$MessageType;

    invoke-virtual {v10}, Lcom/sec/android/app/sbrowser/sites/bookmark/wearable_sync/BookmarkWearableConstants$MessageType;->getValue()I

    move-result v10

    invoke-virtual {v4, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v9, "deviceId"

    iget-object v10, v1, Lcom/sec/android/app/sbrowser/sites/bookmark/wearable_sync/BookmarkWearableBroadcastReceiver;->mAndroidID:Ljava/lang/String;

    invoke-virtual {v4, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v9, "id"

    invoke-virtual {v6, v9, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v2, "title"

    move-object v3, p3

    invoke-virtual {v6, v2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "url"

    move-object v3, p4

    invoke-virtual {v6, v2, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "timestamp"

    move-wide/from16 v9, p6

    invoke-virtual {v6, v2, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v2, "action"

    move-object/from16 v3, p5

    invoke-virtual {v8, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v8, v0, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v7, v6}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    invoke-virtual {v8, v0, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "uid"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v4, v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v0, "data"

    invoke-virtual {v4, v0, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Error: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v2, v5}, Lcom/sec/android/app/sbrowser/autofill/password/k;->B(Lorg/json/JSONException;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :goto_1
    iget-object v0, v1, Lcom/sec/android/app/sbrowser/sites/bookmark/wearable_sync/BookmarkWearableBroadcastReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/sites/bookmark/wearable_sync/BookmarkWearableServiceHelper;->sendResponse(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method
