.class public final Lcom/sec/android/app/sbrowser/scloud/sync/common/records/RecordItemResponse;
.super Lcom/sec/android/app/sbrowser/scloud/sync/common/records/RecordBase;
.source "SourceFile"


# instance fields
.field private mRcode:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Long;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/scloud/sync/common/records/RecordBase;-><init>(Ljava/lang/String;Ljava/lang/Long;)V

    iput p3, p0, Lcom/sec/android/app/sbrowser/scloud/sync/common/records/RecordItemResponse;->mRcode:I

    return-void
.end method


# virtual methods
.method public fromJSON(Ljava/lang/Object;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/sec/android/app/sbrowser/scloud/sync/common/records/RecordBase;->fromJSON(Ljava/lang/Object;)V

    check-cast p1, Lorg/json/JSONObject;

    const-string v0, "rcode"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/sec/android/app/sbrowser/scloud/sync/common/records/RecordItemResponse;->mRcode:I

    :cond_0
    return-void
.end method

.method public getRcode()I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/sbrowser/scloud/sync/common/records/RecordItemResponse;->mRcode:I

    return p0
.end method

.method public toJSON()Ljava/lang/Object;
    .locals 2

    invoke-super {p0}, Lcom/sec/android/app/sbrowser/scloud/sync/common/records/RecordBase;->toJSON()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    const-string v1, "rcode"

    iget p0, p0, Lcom/sec/android/app/sbrowser/scloud/sync/common/records/RecordItemResponse;->mRcode:I

    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    return-object v0
.end method
