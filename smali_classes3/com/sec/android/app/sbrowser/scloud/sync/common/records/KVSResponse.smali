.class public final Lcom/sec/android/app/sbrowser/scloud/sync/common/records/KVSResponse;
.super Lcom/sec/android/app/sbrowser/scloud/sync/common/records/AbstractJSON;
.source "SourceFile"


# instance fields
.field private final mItemDetailsList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sec/android/app/sbrowser/scloud/sync/common/records/RecordItem;",
            ">;"
        }
    .end annotation
.end field

.field private final mItemResponseList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sec/android/app/sbrowser/scloud/sync/common/records/RecordItemResponse;",
            ">;"
        }
    .end annotation
.end field

.field private final mKeyDetailList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sec/android/app/sbrowser/scloud/sync/common/records/RecordKey;",
            ">;"
        }
    .end annotation
.end field

.field private mMaxTimeStamp:Ljava/lang/String;

.field private mNextKey:Ljava/lang/String;

.field private mResponseCode:I

.field private mServerTimeStamp:Ljava/lang/Long;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/scloud/sync/common/records/AbstractJSON;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/scloud/sync/common/records/KVSResponse;->mMaxTimeStamp:Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/scloud/sync/common/records/KVSResponse;->mNextKey:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/scloud/sync/common/records/KVSResponse;->mItemResponseList:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/scloud/sync/common/records/KVSResponse;->mItemDetailsList:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/scloud/sync/common/records/KVSResponse;->mKeyDetailList:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/scloud/sync/common/records/KVSResponse;->mMaxTimeStamp:Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/scloud/sync/common/records/KVSResponse;->mNextKey:Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/app/sbrowser/scloud/sync/common/records/KVSResponse;->mResponseCode:I

    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/scloud/sync/common/records/KVSResponse;->mServerTimeStamp:Ljava/lang/Long;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/scloud/sync/common/records/KVSResponse;->mItemResponseList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/scloud/sync/common/records/KVSResponse;->mItemDetailsList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/scloud/sync/common/records/KVSResponse;->mKeyDetailList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public fromJSON(Ljava/lang/Object;)V
    .locals 11

    new-instance v0, Lorg/json/JSONObject;

    check-cast p1, Ljava/lang/String;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "rcode"

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/sbrowser/scloud/sync/common/records/KVSResponse;->mResponseCode:I

    :cond_0
    const-string v1, "maxTimestamp"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/scloud/sync/common/records/KVSResponse;->mMaxTimeStamp:Ljava/lang/String;

    :cond_1
    const-string v1, "nextKey"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/scloud/sync/common/records/KVSResponse;->mNextKey:Ljava/lang/String;

    :cond_2
    const-string v1, "serverTimestamp"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/scloud/sync/common/records/KVSResponse;->mServerTimeStamp:Ljava/lang/Long;

    :cond_3
    const-string v1, "list"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_7

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "timestamp"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    const-string v3, "key"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {v2, p1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/scloud/sync/common/records/KVSResponse;->mItemResponseList:Ljava/util/List;

    new-instance v5, Lcom/sec/android/app/sbrowser/scloud/sync/common/records/RecordItemResponse;

    invoke-direct {v5, v6, v7, v3}, Lcom/sec/android/app/sbrowser/scloud/sync/common/records/RecordItemResponse;-><init>(Ljava/lang/String;Ljava/lang/Long;I)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    const-string v3, "value"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    const-string v5, "deleted"

    if-eqz v4, :cond_5

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v4

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v8, p0, Lcom/sec/android/app/sbrowser/scloud/sync/common/records/KVSResponse;->mItemDetailsList:Ljava/util/List;

    new-instance v9, Lcom/sec/android/app/sbrowser/scloud/sync/common/records/RecordItem;

    invoke-direct {v9, v6, v7, v3, v4}, Lcom/sec/android/app/sbrowser/scloud/sync/common/records/RecordItem;-><init>(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Z)V

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_5
    const-string v3, "size"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v10

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v8

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/scloud/sync/common/records/KVSResponse;->mKeyDetailList:Ljava/util/List;

    new-instance v3, Lcom/sec/android/app/sbrowser/scloud/sync/common/records/RecordKey;

    move-object v5, v3

    invoke-direct/range {v5 .. v10}, Lcom/sec/android/app/sbrowser/scloud/sync/common/records/RecordKey;-><init>(Ljava/lang/String;Ljava/lang/Long;JZ)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_7
    return-void
.end method

.method public getItemDetailsList()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/sec/android/app/sbrowser/scloud/sync/common/records/RecordItem;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/scloud/sync/common/records/KVSResponse;->mItemDetailsList:Ljava/util/List;

    return-object p0
.end method

.method public getItemResponseList()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/sec/android/app/sbrowser/scloud/sync/common/records/RecordItemResponse;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/scloud/sync/common/records/KVSResponse;->mItemResponseList:Ljava/util/List;

    return-object p0
.end method

.method public getKeyDetailList()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/sec/android/app/sbrowser/scloud/sync/common/records/RecordKey;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/scloud/sync/common/records/KVSResponse;->mKeyDetailList:Ljava/util/List;

    return-object p0
.end method

.method public getMaxTimeStamp()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/scloud/sync/common/records/KVSResponse;->mMaxTimeStamp:Ljava/lang/String;

    return-object p0
.end method

.method public getNextKey()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/scloud/sync/common/records/KVSResponse;->mNextKey:Ljava/lang/String;

    return-object p0
.end method

.method public getResponseCode()I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/sbrowser/scloud/sync/common/records/KVSResponse;->mResponseCode:I

    return p0
.end method

.method public getServerTimeStamp()J
    .locals 2

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/scloud/sync/common/records/KVSResponse;->mServerTimeStamp:Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method
