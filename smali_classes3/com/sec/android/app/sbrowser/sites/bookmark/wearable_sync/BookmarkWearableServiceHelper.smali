.class public Lcom/sec/android/app/sbrowser/sites/bookmark/wearable_sync/BookmarkWearableServiceHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mAction:Ljava/lang/String;

.field private mBookmarkSyncModel:Lcom/sec/android/app/sbrowser/sites/bookmark/wearable_sync/BookmarkWearableSyncModel;

.field private mContext:Landroid/content/Context;

.field private mMsgId:Ljava/lang/String;

.field private final mReceivedBookmarkData:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;",
            ">;"
        }
    .end annotation
.end field

.field private mReceivedJSON:Ljava/lang/String;

.field private mSyncStatus:Ljava/lang/String;

.field private mUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/sec/android/app/sbrowser/sites/bookmark/wearable_sync/BookmarkWearableSyncModel;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/wearable_sync/BookmarkWearableServiceHelper;->mSyncStatus:Ljava/lang/String;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/wearable_sync/BookmarkWearableServiceHelper;->mReceivedBookmarkData:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/wearable_sync/BookmarkWearableServiceHelper;->mReceivedJSON:Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/wearable_sync/BookmarkWearableServiceHelper;->mMsgId:Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/wearable_sync/BookmarkWearableServiceHelper;->mAction:Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/wearable_sync/BookmarkWearableServiceHelper;->mUrl:Ljava/lang/String;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/wearable_sync/BookmarkWearableServiceHelper;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/wearable_sync/BookmarkWearableServiceHelper;->mBookmarkSyncModel:Lcom/sec/android/app/sbrowser/sites/bookmark/wearable_sync/BookmarkWearableSyncModel;

    return-void
.end method

.method public static bridge synthetic a(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/sites/bookmark/wearable_sync/BookmarkWearableServiceHelper;->getNearbyNode(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private createJSONObject(JLjava/lang/String;Ljava/lang/String;J)Lorg/json/JSONObject;
    .locals 1

    new-instance p0, Lorg/json/JSONObject;

    invoke-direct {p0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v0, "id"

    invoke-virtual {p0, v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    if-eqz p3, :cond_0

    const-string p1, "title"

    invoke-virtual {p0, p1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    if-eqz p4, :cond_1

    const-string p1, "url"

    invoke-virtual {p0, p1, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_1
    const-wide/16 p1, -0x1

    cmp-long p1, p5, p1

    if-eqz p1, :cond_2

    const-string p1, "timestamp"

    invoke-virtual {p0, p1, p5, p6}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Error: "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string p3, "BookmarkWearableServiceHelper"

    invoke-static {p1, p2, p3}, Lcom/sec/android/app/sbrowser/autofill/password/k;->B(Lorg/json/JSONException;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :cond_2
    :goto_2
    return-object p0
.end method

.method private createResponseJSONObject(Ljava/lang/String;ILjava/lang/String;Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 2

    new-instance p0, Lorg/json/JSONObject;

    invoke-direct {p0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/application/ApplicationStatus;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "android_id"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "msgId"

    invoke-virtual {p0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "msgType"

    invoke-virtual {p0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p1, "deviceId"

    invoke-virtual {p0, p1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "uid"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string p1, "result"

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    if-eqz p3, :cond_0

    const-string p1, "action"

    invoke-virtual {p4, p1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    if-eqz p4, :cond_1

    const-string p1, "data"

    invoke-virtual {p0, p1, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Error: "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string p3, "BookmarkWearableServiceHelper"

    invoke-static {p1, p2, p3}, Lcom/sec/android/app/sbrowser/autofill/password/k;->B(Lorg/json/JSONException;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :cond_1
    :goto_2
    return-object p0
.end method

.method private deleteBookmark()V
    .locals 12

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "DeleteBookmark Received data Size "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/wearable_sync/BookmarkWearableServiceHelper;->mReceivedBookmarkData:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BookmarkWearableServiceHelper"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/wearable_sync/BookmarkWearableServiceHelper;->mBookmarkSyncModel:Lcom/sec/android/app/sbrowser/sites/bookmark/wearable_sync/BookmarkWearableSyncModel;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/wearable_sync/BookmarkWearableServiceHelper;->mReceivedBookmarkData:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/sbrowser/sites/bookmark/wearable_sync/BookmarkWearableSyncModel;->deleteBookmark(Ljava/util/ArrayList;)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/sites/bookmark/wearable_sync/BookmarkWearableSharedPreferenceHelper;->getInstance()Lcom/sec/android/app/sbrowser/sites/bookmark/wearable_sync/BookmarkWearableSharedPreferenceHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/sites/bookmark/wearable_sync/BookmarkWearableSharedPreferenceHelper;->clearSharedPreferenceEntry()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/wearable_sync/BookmarkWearableServiceHelper;->mBookmarkSyncModel:Lcom/sec/android/app/sbrowser/sites/bookmark/wearable_sync/BookmarkWearableSyncModel;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/sites/bookmark/wearable_sync/BookmarkWearableSyncModel;->getBookmarkData()Ljava/util/ArrayList;

    move-result-object v0

    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    const/4 v3, 0x0

    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_0

    invoke-static {}, Lcom/sec/android/app/sbrowser/sites/bookmark/wearable_sync/BookmarkWearableSharedPreferenceHelper;->getInstance()Lcom/sec/android/app/sbrowser/sites/bookmark/wearable_sync/BookmarkWearableSharedPreferenceHelper;

    move-result-object v4

    new-instance v5, Lcom/sec/android/app/sbrowser/sites/bookmark/wearable_sync/BookmarkWearableSharedPreferenceEntry;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

    invoke-virtual {v6}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getId()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/sec/android/app/sbrowser/sites/bookmark/wearable_sync/BookmarkWearableSharedPreferenceEntry;-><init>(Ljava/lang/Long;)V

    invoke-virtual {v4, v5}, Lcom/sec/android/app/sbrowser/sites/bookmark/wearable_sync/BookmarkWearableSharedPreferenceHelper;->addOrReplaceSharedPreferenceEntry(Lcom/sec/android/app/sbrowser/sites/bookmark/wearable_sync/BookmarkWearableSharedPreferenceEntry;)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

    invoke-virtual {v4}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getId()J

    move-result-wide v6

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

    invoke-virtual {v4}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getTitle()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

    invoke-virtual {v4}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getUrl()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

    invoke-virtual {v4}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getUpdatedTime()J

    move-result-wide v10

    move-object v5, p0

    invoke-direct/range {v5 .. v11}, Lcom/sec/android/app/sbrowser/sites/bookmark/wearable_sync/BookmarkWearableServiceHelper;->createJSONObject(JLjava/lang/String;Ljava/lang/String;J)Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {v2, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v3, "bookmark"

    invoke-virtual {v0, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Error: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v2, v3, v1}, Lcom/sec/android/app/sbrowser/autofill/password/k;->B(Lorg/json/JSONException;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Json Data: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Lcom/sec/android/app/sbrowser/sites/bookmark/wearable_sync/BookmarkWearableConstants$MessageType;->RESPONSE:Lcom/sec/android/app/sbrowser/sites/bookmark/wearable_sync/BookmarkWearableConstants$MessageType;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/sites/bookmark/wearable_sync/BookmarkWearableConstants$MessageType;->getValue()I

    move-result v1

    const-string v2, "sync"

    const-string v3, "update"

    invoke-direct {p0, v3, v1, v2, v0}, Lcom/sec/android/app/sbrowser/sites/bookmark/wearable_sync/BookmarkWearableServiceHelper;->createResponseJSONObject(Ljava/lang/String;ILjava/lang/String;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/wearable_sync/BookmarkWearableServiceHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/sec/android/app/sbrowser/sites/bookmark/wearable_sync/BookmarkWearableServiceHelper;->sendResponse(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method private static getNearbyNode(Landroid/content/Context;)Ljava/lang/String;
    .locals 7

    new-instance v6, LN5/d;

    sget-object v5, Lb5/i;->c:Lb5/i;

    sget-object v4, LY5/g;->a:LY5/g;

    const/4 v2, 0x0

    sget-object v3, LY5/h;->a:Lb5/g;

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lb5/j;-><init>(Landroid/content/Context;Landroid/app/Activity;Lb5/g;Lb5/c;Lb5/i;)V

    invoke-virtual {v6}, Lb5/j;->asGoogleApiClient()Lb5/m;

    move-result-object p0

    new-instance v0, LZ5/t;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, LX4/g;-><init>(Lb5/m;I)V

    check-cast p0, Lc5/C;

    iget-object p0, p0, Lc5/C;->b:Lb5/j;

    invoke-virtual {p0, v0}, Lb5/j;->doRead(Lc5/e;)Lc5/e;

    move-result-object p0

    sget-object v0, LZ5/d;->e:LZ5/d;

    invoke-static {p0, v0}, Lcom/google/android/gms/common/internal/o;->l(Lcom/google/android/gms/common/api/internal/BasePendingResult;Lcom/google/android/gms/common/internal/n;)LR5/p;

    move-result-object p0

    const/4 v0, 0x0

    :try_start_0
    invoke-static {p0}, LG5/G;->b(LR5/h;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LY5/f;

    move-object v2, v1

    check-cast v2, Lcom/google/android/gms/wearable/internal/zzgm;

    iget-boolean v2, v2, Lcom/google/android/gms/wearable/internal/zzgm;->d:Z

    if-eqz v2, :cond_0

    check-cast v1, Lcom/google/android/gms/wearable/internal/zzgm;

    iget-object v0, v1, Lcom/google/android/gms/wearable/internal/zzgm;->a:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Task failed: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "BookmarkWearableServiceHelper"

    invoke-static {p0, v1, v2}, Landroidx/recyclerview/widget/P;->s(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-object v0
.end method

.method private removeFromPreference()V
    .locals 4

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/wearable_sync/BookmarkWearableServiceHelper;->mReceivedBookmarkData:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    invoke-static {}, Lcom/sec/android/app/sbrowser/sites/bookmark/wearable_sync/BookmarkWearableSharedPreferenceHelper;->getInstance()Lcom/sec/android/app/sbrowser/sites/bookmark/wearable_sync/BookmarkWearableSharedPreferenceHelper;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/wearable_sync/BookmarkWearableServiceHelper;->mReceivedBookmarkData:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/sbrowser/sites/bookmark/wearable_sync/BookmarkWearableSharedPreferenceHelper;->removeSharedPreferenceEntry(J)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private renameBookmark()V
    .locals 4

    const-string v0, "BookmarkWearableServiceHelper"

    const-string v1, "RenameBookmark"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/wearable_sync/BookmarkWearableServiceHelper;->mReceivedBookmarkData:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getId()J

    move-result-wide v2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/wearable_sync/BookmarkWearableServiceHelper;->mReceivedBookmarkData:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getTitle()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/wearable_sync/BookmarkWearableServiceHelper;->mBookmarkSyncModel:Lcom/sec/android/app/sbrowser/sites/bookmark/wearable_sync/BookmarkWearableSyncModel;

    invoke-virtual {v1, v2, v3, v0}, Lcom/sec/android/app/sbrowser/sites/bookmark/wearable_sync/BookmarkWearableSyncModel;->editBookmark(JLjava/lang/String;)V

    sget-object v0, Lcom/sec/android/app/sbrowser/sites/bookmark/wearable_sync/BookmarkWearableConstants$MessageType;->RESPONSE:Lcom/sec/android/app/sbrowser/sites/bookmark/wearable_sync/BookmarkWearableConstants$MessageType;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/sites/bookmark/wearable_sync/BookmarkWearableConstants$MessageType;->getValue()I

    move-result v0

    const/4 v1, 0x0

    const-string v2, "update"

    invoke-direct {p0, v2, v0, v1, v1}, Lcom/sec/android/app/sbrowser/sites/bookmark/wearable_sync/BookmarkWearableServiceHelper;->createResponseJSONObject(Ljava/lang/String;ILjava/lang/String;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/wearable_sync/BookmarkWearableServiceHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/sec/android/app/sbrowser/sites/bookmark/wearable_sync/BookmarkWearableServiceHelper;->sendResponse(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public static sendResponse(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onSend: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BookmarkWearableServiceHelper"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/sec/android/app/sbrowser/sites/bookmark/wearable_sync/BookmarkWearableServiceHelper$1;

    invoke-direct {v0, p0, p1}, Lcom/sec/android/app/sbrowser/sites/bookmark/wearable_sync/BookmarkWearableServiceHelper$1;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method


# virtual methods
.method public getActionType()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/wearable_sync/BookmarkWearableServiceHelper;->mAction:Ljava/lang/String;

    return-object p0
.end method

.method public getMessageId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/wearable_sync/BookmarkWearableServiceHelper;->mMsgId:Ljava/lang/String;

    return-object p0
.end method

.method public getSyncStatusValue()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/wearable_sync/BookmarkWearableServiceHelper;->mSyncStatus:Ljava/lang/String;

    return-object p0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/wearable_sync/BookmarkWearableServiceHelper;->mUrl:Ljava/lang/String;

    return-object p0
.end method

.method public isSyncStatusOn()Z
    .locals 2

    invoke-static {}, Lcom/sec/terrace/TerraceApplicationStatus;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lw2/F;->c(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "bookmarks_wearable_sync_status"

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public loadBookmarks()V
    .locals 12

    const-string v0, "loadBookmarks"

    const-string v1, "BookmarkWearableServiceHelper"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "on"

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/sites/bookmark/wearable_sync/BookmarkWearableServiceHelper;->updateSyncPreference(Ljava/lang/String;)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/sites/bookmark/wearable_sync/BookmarkWearableSharedPreferenceHelper;->getInstance()Lcom/sec/android/app/sbrowser/sites/bookmark/wearable_sync/BookmarkWearableSharedPreferenceHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/sites/bookmark/wearable_sync/BookmarkWearableSharedPreferenceHelper;->clearSharedPreferenceEntry()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/wearable_sync/BookmarkWearableServiceHelper;->mBookmarkSyncModel:Lcom/sec/android/app/sbrowser/sites/bookmark/wearable_sync/BookmarkWearableSyncModel;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/sites/bookmark/wearable_sync/BookmarkWearableSyncModel;->getBookmarkData()Ljava/util/ArrayList;

    move-result-object v0

    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    const/4 v3, 0x0

    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_0

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "added in set "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

    invoke-virtual {v5}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getId()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/sec/android/app/sbrowser/sites/bookmark/wearable_sync/BookmarkWearableSharedPreferenceHelper;->getInstance()Lcom/sec/android/app/sbrowser/sites/bookmark/wearable_sync/BookmarkWearableSharedPreferenceHelper;

    move-result-object v4

    new-instance v5, Lcom/sec/android/app/sbrowser/sites/bookmark/wearable_sync/BookmarkWearableSharedPreferenceEntry;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

    invoke-virtual {v6}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getId()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/sec/android/app/sbrowser/sites/bookmark/wearable_sync/BookmarkWearableSharedPreferenceEntry;-><init>(Ljava/lang/Long;)V

    invoke-virtual {v4, v5}, Lcom/sec/android/app/sbrowser/sites/bookmark/wearable_sync/BookmarkWearableSharedPreferenceHelper;->addOrReplaceSharedPreferenceEntry(Lcom/sec/android/app/sbrowser/sites/bookmark/wearable_sync/BookmarkWearableSharedPreferenceEntry;)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

    invoke-virtual {v4}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getId()J

    move-result-wide v6

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

    invoke-virtual {v4}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getTitle()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

    invoke-virtual {v4}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getUrl()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

    invoke-virtual {v4}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getTime()J

    move-result-wide v10

    move-object v5, p0

    invoke-direct/range {v5 .. v11}, Lcom/sec/android/app/sbrowser/sites/bookmark/wearable_sync/BookmarkWearableServiceHelper;->createJSONObject(JLjava/lang/String;Ljava/lang/String;J)Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {v2, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "size of preference set "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/sites/bookmark/wearable_sync/BookmarkWearableSharedPreferenceHelper;->getInstance()Lcom/sec/android/app/sbrowser/sites/bookmark/wearable_sync/BookmarkWearableSharedPreferenceHelper;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/sites/bookmark/wearable_sync/BookmarkWearableSharedPreferenceHelper;->getEntries()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v3, "bookmark"

    invoke-virtual {v0, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Error: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v2, v3, v1}, Lcom/sec/android/app/sbrowser/autofill/password/k;->B(Lorg/json/JSONException;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Json Data: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Lcom/sec/android/app/sbrowser/sites/bookmark/wearable_sync/BookmarkWearableConstants$MessageType;->RESPONSE:Lcom/sec/android/app/sbrowser/sites/bookmark/wearable_sync/BookmarkWearableConstants$MessageType;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/sites/bookmark/wearable_sync/BookmarkWearableConstants$MessageType;->getValue()I

    move-result v1

    const/4 v2, 0x0

    const-string v3, "sync"

    invoke-direct {p0, v3, v1, v2, v0}, Lcom/sec/android/app/sbrowser/sites/bookmark/wearable_sync/BookmarkWearableServiceHelper;->createResponseJSONObject(Ljava/lang/String;ILjava/lang/String;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/wearable_sync/BookmarkWearableServiceHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/sec/android/app/sbrowser/sites/bookmark/wearable_sync/BookmarkWearableServiceHelper;->sendResponse(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public readRequestMessage(Ljava/lang/String;)V
    .locals 22

    move-object/from16 v0, p0

    const-string v1, "timestamp"

    const-string v2, "title"

    const-string v3, "bookmark"

    const-string v4, "sync"

    const-string v5, "action"

    const-string v6, "data"

    const-string v7, "msgId"

    const-string v8, "BookmarkWearableServiceHelper"

    const-string v9, "url"

    :try_start_0
    iget-object v10, v0, Lcom/sec/android/app/sbrowser/sites/bookmark/wearable_sync/BookmarkWearableServiceHelper;->mReceivedBookmarkData:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->clear()V

    move-object/from16 v10, p1

    iput-object v10, v0, Lcom/sec/android/app/sbrowser/sites/bookmark/wearable_sync/BookmarkWearableServiceHelper;->mReceivedJSON:Ljava/lang/String;

    new-instance v10, Lorg/json/JSONObject;

    iget-object v11, v0, Lcom/sec/android/app/sbrowser/sites/bookmark/wearable_sync/BookmarkWearableServiceHelper;->mReceivedJSON:Ljava/lang/String;

    invoke-direct {v10, v11}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    new-instance v11, Lorg/json/JSONObject;

    invoke-direct {v11}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {v10, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_0

    invoke-virtual {v10, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v0, Lcom/sec/android/app/sbrowser/sites/bookmark/wearable_sync/BookmarkWearableServiceHelper;->mMsgId:Ljava/lang/String;

    goto :goto_0

    :catch_0
    move-exception v0

    goto/16 :goto_4

    :cond_0
    :goto_0
    invoke-virtual {v10, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-virtual {v10, v6}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v11

    :cond_1
    invoke-virtual {v11, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {v11, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Lcom/sec/android/app/sbrowser/sites/bookmark/wearable_sync/BookmarkWearableServiceHelper;->mAction:Ljava/lang/String;

    :cond_2
    invoke-virtual {v11, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {v11, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/sec/android/app/sbrowser/sites/bookmark/wearable_sync/BookmarkWearableServiceHelper;->mSyncStatus:Ljava/lang/String;

    :cond_3
    invoke-virtual {v11, v9}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-virtual {v11, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/sec/android/app/sbrowser/sites/bookmark/wearable_sync/BookmarkWearableServiceHelper;->mUrl:Ljava/lang/String;

    :cond_4
    invoke-virtual {v11, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-virtual {v11, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    const/4 v4, 0x0

    :goto_1
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v4, v5, :cond_8

    invoke-virtual {v3, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    const-string v6, "id"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v11

    invoke-virtual {v5, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    const/4 v7, 0x0

    if-eqz v6, :cond_5

    invoke-virtual {v5, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object v14, v6

    goto :goto_2

    :cond_5
    move-object v14, v7

    :goto_2
    invoke-virtual {v5, v9}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-virtual {v5, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object v15, v6

    goto :goto_3

    :cond_6
    move-object v15, v7

    :goto_3
    invoke-virtual {v5, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-virtual {v5, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    :cond_7
    new-instance v5, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

    sget-object v13, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$BookmarkType;->URL:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$BookmarkType;

    sget-object v6, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$BookmarkSyncID;->SAMSUNG:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$BookmarkSyncID;

    invoke-virtual {v6}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$BookmarkSyncID;->getNumVal()J

    move-result-wide v16

    sget-object v19, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$AccountType;->SAMSUNG:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$AccountType;

    const-wide/16 v20, 0x0

    const/16 v18, 0x1

    move-object v10, v5

    invoke-direct/range {v10 .. v21}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;-><init>(JLcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$BookmarkType;Ljava/lang/String;Ljava/lang/String;JZLcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$AccountType;J)V

    iget-object v6, v0, Lcom/sec/android/app/sbrowser/sites/bookmark/wearable_sync/BookmarkWearableServiceHelper;->mReceivedBookmarkData:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No. of received bookmarks "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/sites/bookmark/wearable_sync/BookmarkWearableServiceHelper;->mReceivedBookmarkData:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    const-string v0, "Read Request Completed"

    invoke-static {v8, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_5

    :goto_4
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Error: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1, v8}, Lcom/sec/android/app/sbrowser/autofill/password/k;->B(Lorg/json/JSONException;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :goto_5
    return-void
.end method

.method public showBookmarkOnPhone(Ljava/lang/String;)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-static {}, Lcom/sec/terrace/TerraceApplicationStatus;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    const-string v1, "com.android.browser.application_id"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "bookmark_show_on_phone"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "android.intent.category.BROWSABLE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    sget v1, Lcom/sec/android/app/sbrowser/common/utils/SBrowserIntentUtils;->TYPE_SBROWSER_MAIN_ACTIVITY:I

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/common/utils/SBrowserIntentUtils;->getClassName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 p1, 0x14000000

    invoke-virtual {v0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/externalnav/SBrowserIntentHandler;->addTrustedIntentExtras(Landroid/content/Intent;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/wearable_sync/BookmarkWearableServiceHelper;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    sget-object p1, Lcom/sec/android/app/sbrowser/sites/bookmark/wearable_sync/BookmarkWearableConstants$MessageType;->RESPONSE:Lcom/sec/android/app/sbrowser/sites/bookmark/wearable_sync/BookmarkWearableConstants$MessageType;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/sites/bookmark/wearable_sync/BookmarkWearableConstants$MessageType;->getValue()I

    move-result p1

    const/4 v0, 0x0

    const-string v1, "show_on_phone"

    invoke-direct {p0, v1, p1, v0, v0}, Lcom/sec/android/app/sbrowser/sites/bookmark/wearable_sync/BookmarkWearableServiceHelper;->createResponseJSONObject(Ljava/lang/String;ILjava/lang/String;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object p1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/wearable_sync/BookmarkWearableServiceHelper;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/sites/bookmark/wearable_sync/BookmarkWearableServiceHelper;->sendResponse(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public updateBookmark(Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sites/bookmark/wearable_sync/BookmarkWearableServiceHelper;->isSyncStatusOn()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "UpdateBookmark with"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BookmarkWearableServiceHelper"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "rename"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/sites/bookmark/wearable_sync/BookmarkWearableServiceHelper;->renameBookmark()V

    goto :goto_0

    :cond_1
    const-string v0, "delete"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/sites/bookmark/wearable_sync/BookmarkWearableServiceHelper;->deleteBookmark()V

    goto :goto_0

    :cond_2
    const-string v0, "remove"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/sites/bookmark/wearable_sync/BookmarkWearableServiceHelper;->removeFromPreference()V

    :cond_3
    :goto_0
    return-void
.end method

.method public updateSyncPreference(Ljava/lang/String;)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/sec/terrace/TerraceApplicationStatus;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lw2/F;->c(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "on"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v3, "bookmarks_wearable_sync_status"

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    :goto_0
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    sget-object v0, Lcom/sec/android/app/sbrowser/sites/bookmark/wearable_sync/BookmarkWearableConstants$MessageType;->RESPONSE:Lcom/sec/android/app/sbrowser/sites/bookmark/wearable_sync/BookmarkWearableConstants$MessageType;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/sites/bookmark/wearable_sync/BookmarkWearableConstants$MessageType;->getValue()I

    move-result v0

    const-string v2, "sync_status"

    const/4 v3, 0x0

    invoke-direct {p0, v2, v0, v3, v3}, Lcom/sec/android/app/sbrowser/sites/bookmark/wearable_sync/BookmarkWearableServiceHelper;->createResponseJSONObject(Ljava/lang/String;ILjava/lang/String;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/wearable_sync/BookmarkWearableServiceHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/sites/bookmark/wearable_sync/BookmarkWearableServiceHelper;->sendResponse(Landroid/content/Context;Ljava/lang/String;)V

    :cond_2
    return-void
.end method
