.class public Lcom/sec/android/app/sbrowser/sync/OpenTabSyncClientImpl;
.super Lcom/sec/android/app/sbrowser/sync/BaseRecordDataSyncClientImpl;
.source "SourceFile"


# static fields
.field private static final OPEN_TAB_PREFIX:Ljava/lang/String; = "SBR@"

.field static final TAB_COLUMNS:[Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "OpenTabSyncClientImpl"


# direct methods
.method static constructor <clinit>()V
    .locals 17

    const-string v15, "DEVICE_TYPE"

    const-string v16, "TAB_USAGE"

    const-string v0, "TAB_ID"

    const-string v1, "TAB_INDEX"

    const-string v2, "TAB_URL"

    const-string v3, "TAB_TITLE"

    const-string v4, "TAB_GROUP_NAME"

    const-string v5, "TAB_GROUP_COLOR"

    const-string v6, "TAB_FAV_ICON"

    const-string v7, "TAB_ACTIVATE"

    const-string v8, "IS_INCOGNITO"

    const-string v9, "DATE_CREATED"

    const-string v10, "DATE_MODIFIED"

    const-string v11, "ACCOUNT_NAME"

    const-string v12, "ACCOUNT_TYPE"

    const-string v13, "DEVICE_NAME"

    const-string v14, "DEVICE_ID"

    filled-new-array/range {v0 .. v16}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/sbrowser/sync/OpenTabSyncClientImpl;->TAB_COLUMNS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/sync/BaseRecordDataSyncClientImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public deleteOwnData(Landroid/content/ContentValues;)Z
    .locals 1

    const-string p0, "DEVICE_ID"

    invoke-virtual {p1, p0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1, p0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/utils/DeviceUtil;->getUniqueDeviceId()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/utils/DeviceUtil;->getUniqueDeviceId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public getAccountTypeColumnName()Ljava/lang/String;
    .locals 0

    const-string p0, "ACCOUNT_TYPE"

    return-object p0
.end method

.method public getColumns()[Ljava/lang/String;
    .locals 0

    sget-object p0, Lcom/sec/android/app/sbrowser/sync/OpenTabSyncClientImpl;->TAB_COLUMNS:[Ljava/lang/String;

    return-object p0
.end method

.method public getContentUri()Landroid/net/Uri;
    .locals 0

    sget-object p0, Lcom/sec/android/app/sbrowser/common/constants/sites/SBrowserProviderConstants;->OPEN_TAB_URI:Landroid/net/Uri;

    return-object p0
.end method

.method public getDeleteColumnName()Ljava/lang/String;
    .locals 0

    const-string p0, "IS_DELETED"

    return-object p0
.end method

.method public getDirtyColumnName()Ljava/lang/String;
    .locals 0

    const-string p0, "DIRTY"

    return-object p0
.end method

.method public getFaviconColumnName()Ljava/lang/String;
    .locals 0

    const-string p0, "TAB_FAV_ICON"

    return-object p0
.end method

.method public getIdColumnName()Ljava/lang/String;
    .locals 0

    const-string p0, "_ID"

    return-object p0
.end method

.method public getJSONObject(Landroid/content/Context;Landroid/database/Cursor;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)Lorg/json/JSONObject;
    .locals 0

    invoke-static {p2, p3}, Lcom/sec/android/app/sbrowser/common/sync/JSONParser;->toJSON(Landroid/database/Cursor;[Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {p0, p1, p5, p6, p7}, Lcom/sec/android/app/sbrowser/sync/BaseRecordDataSyncClientImpl;->toJSON(Lorg/json/JSONObject;Ljava/lang/String;J)Lorg/json/JSONObject;

    move-result-object p0

    return-object p0
.end method

.method public getKeyColumnName()Ljava/lang/String;
    .locals 0

    const-string p0, "SYNC1"

    return-object p0
.end method

.method public getKeyPrefix()Ljava/lang/String;
    .locals 0

    const-string p0, "SBR@"

    return-object p0
.end method

.method public getSyncAdapterName()Ljava/lang/String;
    .locals 0

    const-string p0, "SBROWSER_TAB"

    return-object p0
.end method

.method public getTag()Ljava/lang/String;
    .locals 0

    const-string p0, "OpenTabSyncClientImpl"

    return-object p0
.end method

.method public getTimeStampColumnName()Ljava/lang/String;
    .locals 0

    const-string p0, "SYNC5"

    return-object p0
.end method

.method public isSupportNullField(Ljava/lang/String;)Z
    .locals 0

    const-string p0, "TAB_GROUP_NAME"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method
