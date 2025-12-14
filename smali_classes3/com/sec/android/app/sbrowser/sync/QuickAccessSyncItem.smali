.class public Lcom/sec/android/app/sbrowser/sync/QuickAccessSyncItem;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final ACCOUNT_NAME:Ljava/lang/String; = "accountName"

.field private static final ACCOUNT_TYPE:Ljava/lang/String; = "accountType"

.field private static final RECORD_ID:Ljava/lang/String; = "record_id"

.field private static final TAG:Ljava/lang/String; = "QuickAccessSyncItem"

.field public static final TIMESTAMP:Ljava/lang/String; = "modified_time"


# instance fields
.field private mAccName:Ljava/lang/String;

.field private mAccType:Ljava/lang/String;

.field private mDominant:I

.field private mItemId:I

.field private mPosition:I

.field private mSyncKey:Ljava/lang/String;

.field private mTimestamp:J

.field private mTitle:Ljava/lang/String;

.field private mTouchIcon:Ljava/lang/String;

.field private mTouchIconUrl:Ljava/lang/String;

.field private mType:I

.field private mUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;IIIJLjava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/sync/QuickAccessSyncItem;->mSyncKey:Ljava/lang/String;

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/sync/QuickAccessSyncItem;->mUrl:Ljava/lang/String;

    iput p4, p0, Lcom/sec/android/app/sbrowser/sync/QuickAccessSyncItem;->mPosition:I

    iput-object p5, p0, Lcom/sec/android/app/sbrowser/sync/QuickAccessSyncItem;->mTouchIcon:Ljava/lang/String;

    iput-object p6, p0, Lcom/sec/android/app/sbrowser/sync/QuickAccessSyncItem;->mTouchIconUrl:Ljava/lang/String;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/sync/QuickAccessSyncItem;->mTitle:Ljava/lang/String;

    iput p7, p0, Lcom/sec/android/app/sbrowser/sync/QuickAccessSyncItem;->mDominant:I

    iput p8, p0, Lcom/sec/android/app/sbrowser/sync/QuickAccessSyncItem;->mType:I

    iput p9, p0, Lcom/sec/android/app/sbrowser/sync/QuickAccessSyncItem;->mItemId:I

    iput-wide p10, p0, Lcom/sec/android/app/sbrowser/sync/QuickAccessSyncItem;->mTimestamp:J

    iput-object p12, p0, Lcom/sec/android/app/sbrowser/sync/QuickAccessSyncItem;->mAccName:Ljava/lang/String;

    iput-object p13, p0, Lcom/sec/android/app/sbrowser/sync/QuickAccessSyncItem;->mAccType:Ljava/lang/String;

    return-void
.end method

.method public static parseJSONObject(Lorg/json/JSONObject;)Lcom/sec/android/app/sbrowser/sync/QuickAccessSyncItem;
    .locals 15

    const-string v0, "title"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v0, "position"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v5

    const-string v0, "touchicon"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    move-object v6, v0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :goto_1
    const-string v0, "touchiconUrl"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v0, "modified_time"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v11

    const-string v0, "url"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v0, "dominant"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v8

    const-string v0, "TYPE"

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v9

    const-string v0, "itemId"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v10

    const-string v0, "record_id"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v0, "accountName"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const-string v0, "accountType"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    new-instance p0, Lcom/sec/android/app/sbrowser/sync/QuickAccessSyncItem;

    move-object v1, p0

    invoke-direct/range {v1 .. v14}, Lcom/sec/android/app/sbrowser/sync/QuickAccessSyncItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;IIIJLjava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public static toJSONObject(Lcom/sec/android/app/sbrowser/sync/QuickAccessSyncItem;)Lorg/json/JSONObject;
    .locals 4

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    invoke-static {p0}, Lcom/sec/terrace/base/AssertUtil;->assertNotNull(Ljava/lang/Object;)V

    :try_start_0
    const-string v1, "record_id"

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/sync/QuickAccessSyncItem;->mSyncKey:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "title"

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/sync/QuickAccessSyncItem;->mTitle:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "position"

    iget v2, p0, Lcom/sec/android/app/sbrowser/sync/QuickAccessSyncItem;->mPosition:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "touchicon"

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/sync/QuickAccessSyncItem;->mTouchIcon:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "touchiconUrl"

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/sync/QuickAccessSyncItem;->mTouchIconUrl:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "modified_time"

    iget-wide v2, p0, Lcom/sec/android/app/sbrowser/sync/QuickAccessSyncItem;->mTimestamp:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v1, "url"

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/sync/QuickAccessSyncItem;->mUrl:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "dominant"

    iget v2, p0, Lcom/sec/android/app/sbrowser/sync/QuickAccessSyncItem;->mDominant:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "TYPE"

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/sbrowser/sync/QuickAccessSyncItem;->mType:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "itemId"

    iget v2, p0, Lcom/sec/android/app/sbrowser/sync/QuickAccessSyncItem;->mItemId:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "accountName"

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/sync/QuickAccessSyncItem;->mAccName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "accountType"

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sync/QuickAccessSyncItem;->mAccType:Ljava/lang/String;

    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "toJSONObject - resulted in error: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "QuickAccessSyncItem"

    invoke-static {p0, v1, v2}, Lcom/sec/android/app/sbrowser/autofill/password/k;->B(Lorg/json/JSONException;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :goto_0
    return-object v0
.end method


# virtual methods
.method public getDominant()I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/sbrowser/sync/QuickAccessSyncItem;->mDominant:I

    return p0
.end method

.method public getItemId()I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/sbrowser/sync/QuickAccessSyncItem;->mItemId:I

    return p0
.end method

.method public getPosition()I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/sbrowser/sync/QuickAccessSyncItem;->mPosition:I

    return p0
.end method

.method public getSyncKey()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sync/QuickAccessSyncItem;->mSyncKey:Ljava/lang/String;

    return-object p0
.end method

.method public getTimestamp()J
    .locals 2

    iget-wide v0, p0, Lcom/sec/android/app/sbrowser/sync/QuickAccessSyncItem;->mTimestamp:J

    return-wide v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sync/QuickAccessSyncItem;->mTitle:Ljava/lang/String;

    return-object p0
.end method

.method public getTouchIcon()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sync/QuickAccessSyncItem;->mTouchIcon:Ljava/lang/String;

    return-object p0
.end method

.method public getTouchIconUrl()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sync/QuickAccessSyncItem;->mTouchIconUrl:Ljava/lang/String;

    return-object p0
.end method

.method public getType()I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/sbrowser/sync/QuickAccessSyncItem;->mType:I

    return p0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sync/QuickAccessSyncItem;->mUrl:Ljava/lang/String;

    return-object p0
.end method
