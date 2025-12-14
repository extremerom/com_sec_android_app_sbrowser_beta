.class public Lcom/sec/android/app/sbrowser/sync/SavedPageSyncItem;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final ACCOUNT_NAME:Ljava/lang/String; = "acc_name"

.field private static final ACCOUNT_TYPE:Ljava/lang/String; = "acc_type"

.field private static final CONTENT_FILE:Ljava/lang/String; = "content_file"

.field private static final IS_NIGHT_MODE:Ljava/lang/String; = "is_night_mode"

.field private static final IS_READER_PAGE:Ljava/lang/String; = "is_reader"

.field private static final TAG:Ljava/lang/String; = "SavedPageSyncItem"

.field private static final TIMESTAMP:Ljava/lang/String; = "timestamp"


# instance fields
.field private mAccName:Ljava/lang/String;

.field private mAccType:Ljava/lang/String;

.field private mContentUri:Ljava/lang/String;

.field private mCreated:J

.field private mDescription:Ljava/lang/String;

.field private mDeviceId:Ljava/lang/String;

.field private mDeviceName:Ljava/lang/String;

.field private mDirPath:Ljava/lang/String;

.field private mId:I

.field private mImage:Ljava/lang/String;

.field private mIsNightMode:I

.field private mIsReader:I

.field private mModified:J

.field private mTimestamp:J

.field private mTitle:Ljava/lang/String;

.field private mUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJII)V
    .locals 3

    move-object v0, p0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move v1, p1

    iput v1, v0, Lcom/sec/android/app/sbrowser/sync/SavedPageSyncItem;->mId:I

    move-object v1, p2

    iput-object v1, v0, Lcom/sec/android/app/sbrowser/sync/SavedPageSyncItem;->mTitle:Ljava/lang/String;

    move-object v1, p3

    iput-object v1, v0, Lcom/sec/android/app/sbrowser/sync/SavedPageSyncItem;->mContentUri:Ljava/lang/String;

    move-wide v1, p4

    iput-wide v1, v0, Lcom/sec/android/app/sbrowser/sync/SavedPageSyncItem;->mTimestamp:J

    move-object v1, p6

    iput-object v1, v0, Lcom/sec/android/app/sbrowser/sync/SavedPageSyncItem;->mDirPath:Ljava/lang/String;

    move-object v1, p7

    iput-object v1, v0, Lcom/sec/android/app/sbrowser/sync/SavedPageSyncItem;->mDescription:Ljava/lang/String;

    move-object v1, p8

    iput-object v1, v0, Lcom/sec/android/app/sbrowser/sync/SavedPageSyncItem;->mImage:Ljava/lang/String;

    move-object v1, p9

    iput-object v1, v0, Lcom/sec/android/app/sbrowser/sync/SavedPageSyncItem;->mUrl:Ljava/lang/String;

    move-object v1, p10

    iput-object v1, v0, Lcom/sec/android/app/sbrowser/sync/SavedPageSyncItem;->mAccName:Ljava/lang/String;

    move-object v1, p11

    iput-object v1, v0, Lcom/sec/android/app/sbrowser/sync/SavedPageSyncItem;->mAccType:Ljava/lang/String;

    move-object v1, p12

    iput-object v1, v0, Lcom/sec/android/app/sbrowser/sync/SavedPageSyncItem;->mDeviceId:Ljava/lang/String;

    move-object/from16 v1, p13

    iput-object v1, v0, Lcom/sec/android/app/sbrowser/sync/SavedPageSyncItem;->mDeviceName:Ljava/lang/String;

    move-wide/from16 v1, p14

    iput-wide v1, v0, Lcom/sec/android/app/sbrowser/sync/SavedPageSyncItem;->mCreated:J

    move-wide/from16 v1, p16

    iput-wide v1, v0, Lcom/sec/android/app/sbrowser/sync/SavedPageSyncItem;->mModified:J

    move/from16 v1, p18

    iput v1, v0, Lcom/sec/android/app/sbrowser/sync/SavedPageSyncItem;->mIsReader:I

    move/from16 v1, p19

    iput v1, v0, Lcom/sec/android/app/sbrowser/sync/SavedPageSyncItem;->mIsNightMode:I

    return-void
.end method

.method public static parseJSONObject(Lorg/json/JSONObject;)Lcom/sec/android/app/sbrowser/sync/SavedPageSyncItem;
    .locals 22

    move-object/from16 v0, p0

    const-string v1, "title"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v1, "content_file"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v1, "timestamp"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v6

    const-string v1, "dir_path"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v1, "description"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v1, "favicon"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    move-object v10, v1

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    :goto_1
    const-string v1, "url"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string v1, "acc_name"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-string v1, "acc_type"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const-string v1, "device_id"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    const-string v1, "device_name"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    const-string v1, "created"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v16

    const-string v1, "modified"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v18

    const-string v1, "is_reader"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v20

    const-string v1, "is_night_mode"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v21

    new-instance v0, Lcom/sec/android/app/sbrowser/sync/SavedPageSyncItem;

    move-object v2, v0

    const/4 v3, 0x0

    invoke-direct/range {v2 .. v21}, Lcom/sec/android/app/sbrowser/sync/SavedPageSyncItem;-><init>(ILjava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJII)V

    return-object v0
.end method

.method public static toJSONObject(Lcom/sec/android/app/sbrowser/sync/SavedPageSyncItem;)Lorg/json/JSONObject;
    .locals 4

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    invoke-static {p0}, Lcom/sec/terrace/base/AssertUtil;->assertNotNull(Ljava/lang/Object;)V

    :try_start_0
    const-string v1, "title"

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/sync/SavedPageSyncItem;->mTitle:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "content_file"

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/sync/SavedPageSyncItem;->mContentUri:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "timestamp"

    iget-wide v2, p0, Lcom/sec/android/app/sbrowser/sync/SavedPageSyncItem;->mTimestamp:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v1, "dir_path"

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/sync/SavedPageSyncItem;->mDirPath:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "description"

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/sync/SavedPageSyncItem;->mDescription:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "favicon"

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/sync/SavedPageSyncItem;->mImage:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "url"

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/sync/SavedPageSyncItem;->mUrl:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "acc_name"

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/sync/SavedPageSyncItem;->mAccName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "acc_type"

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/sync/SavedPageSyncItem;->mAccType:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "device_id"

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/sync/SavedPageSyncItem;->mDeviceId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "device_name"

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/sync/SavedPageSyncItem;->mDeviceName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "created"

    iget-wide v2, p0, Lcom/sec/android/app/sbrowser/sync/SavedPageSyncItem;->mCreated:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v1, "modified"

    iget-wide v2, p0, Lcom/sec/android/app/sbrowser/sync/SavedPageSyncItem;->mModified:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v1, "is_reader"

    iget v2, p0, Lcom/sec/android/app/sbrowser/sync/SavedPageSyncItem;->mIsReader:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "is_night_mode"

    iget p0, p0, Lcom/sec/android/app/sbrowser/sync/SavedPageSyncItem;->mIsNightMode:I

    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "toJSONObject - resulted in error: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "SavedPageSyncItem"

    invoke-static {p0, v1, v2}, Lcom/sec/android/app/sbrowser/autofill/password/k;->B(Lorg/json/JSONException;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :goto_0
    return-object v0
.end method


# virtual methods
.method public getContentUri()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sync/SavedPageSyncItem;->mContentUri:Ljava/lang/String;

    return-object p0
.end method

.method public getCreated()J
    .locals 2

    iget-wide v0, p0, Lcom/sec/android/app/sbrowser/sync/SavedPageSyncItem;->mCreated:J

    return-wide v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sync/SavedPageSyncItem;->mDescription:Ljava/lang/String;

    return-object p0
.end method

.method public getDeviceId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sync/SavedPageSyncItem;->mDeviceId:Ljava/lang/String;

    return-object p0
.end method

.method public getDeviceName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sync/SavedPageSyncItem;->mDeviceName:Ljava/lang/String;

    return-object p0
.end method

.method public getDirPath()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sync/SavedPageSyncItem;->mDirPath:Ljava/lang/String;

    return-object p0
.end method

.method public getId()I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/sbrowser/sync/SavedPageSyncItem;->mId:I

    return p0
.end method

.method public getImage()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sync/SavedPageSyncItem;->mImage:Ljava/lang/String;

    return-object p0
.end method

.method public getIsNightMode()I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/sbrowser/sync/SavedPageSyncItem;->mIsNightMode:I

    return p0
.end method

.method public getIsReader()I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/sbrowser/sync/SavedPageSyncItem;->mIsReader:I

    return p0
.end method

.method public getModified()J
    .locals 2

    iget-wide v0, p0, Lcom/sec/android/app/sbrowser/sync/SavedPageSyncItem;->mModified:J

    return-wide v0
.end method

.method public getTimestamp()J
    .locals 2

    iget-wide v0, p0, Lcom/sec/android/app/sbrowser/sync/SavedPageSyncItem;->mTimestamp:J

    return-wide v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sync/SavedPageSyncItem;->mTitle:Ljava/lang/String;

    return-object p0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sync/SavedPageSyncItem;->mUrl:Ljava/lang/String;

    return-object p0
.end method

.method public setId(I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/sbrowser/sync/SavedPageSyncItem;->mId:I

    return-void
.end method
