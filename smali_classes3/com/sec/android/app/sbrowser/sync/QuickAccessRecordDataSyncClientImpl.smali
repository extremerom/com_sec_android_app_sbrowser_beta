.class public Lcom/sec/android/app/sbrowser/sync/QuickAccessRecordDataSyncClientImpl;
.super Lcom/sec/android/app/sbrowser/sync/BaseRecordDataSyncClientImpl;
.source "SourceFile"


# annotations
.annotation build Landroidx/compose/runtime/internal/StabilityInferred;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/sync/QuickAccessRecordDataSyncClientImpl$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000l\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0011\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u000c\u0008\u0017\u0018\u0000 G2\u00020\u0001:\u0001GB\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0017\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004H\u0002\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J/\u0010\u0011\u001a\u00020\u00102\u0006\u0010\t\u001a\u00020\u00062\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\r\u001a\u00020\u000c2\u0006\u0010\u000f\u001a\u00020\u000eH\u0002\u00a2\u0006\u0004\u0008\u0011\u0010\u0012J7\u0010\u0013\u001a\u00020\u00102\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\t\u001a\u00020\u00062\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\r\u001a\u00020\u000c2\u0006\u0010\u000f\u001a\u00020\u000eH\u0002\u00a2\u0006\u0004\u0008\u0013\u0010\u0014J\'\u0010\u0017\u001a\u00020\u00162\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\r\u001a\u00020\u000c2\u0006\u0010\u0015\u001a\u00020\u000eH\u0002\u00a2\u0006\u0004\u0008\u0017\u0010\u0018J\u000f\u0010\u001a\u001a\u00020\u0019H\u0014\u00a2\u0006\u0004\u0008\u001a\u0010\u001bJ\u000f\u0010\u001c\u001a\u00020\u000cH\u0014\u00a2\u0006\u0004\u0008\u001c\u0010\u001dJ\u0015\u0010\u001f\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\u001eH\u0014\u00a2\u0006\u0004\u0008\u001f\u0010 J\u000f\u0010!\u001a\u00020\u000cH\u0014\u00a2\u0006\u0004\u0008!\u0010\u001dJ\u000f\u0010\"\u001a\u00020\u000cH\u0014\u00a2\u0006\u0004\u0008\"\u0010\u001dJ\u000f\u0010#\u001a\u00020\u000cH\u0014\u00a2\u0006\u0004\u0008#\u0010\u001dJ\u000f\u0010$\u001a\u00020\u000cH\u0014\u00a2\u0006\u0004\u0008$\u0010\u001dJ\u000f\u0010%\u001a\u00020\u000cH\u0014\u00a2\u0006\u0004\u0008%\u0010\u001dJ\u000f\u0010&\u001a\u00020\u000cH\u0014\u00a2\u0006\u0004\u0008&\u0010\u001dJ\u000f\u0010\'\u001a\u00020\u000cH\u0014\u00a2\u0006\u0004\u0008\'\u0010\u001dJ\u000f\u0010(\u001a\u00020\u000cH\u0014\u00a2\u0006\u0004\u0008(\u0010\u001dJM\u0010-\u001a\u00020\n2\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u00042\u0008\u0010*\u001a\u0004\u0018\u00010)2\u000c\u0010+\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\u001e2\u0008\u0010,\u001a\u0004\u0018\u00010\u000c2\u0008\u0010\r\u001a\u0004\u0018\u00010\u000c2\u0006\u0010\u0015\u001a\u00020\u000eH\u0014\u00a2\u0006\u0004\u0008-\u0010.J\u000f\u0010/\u001a\u00020\u000cH\u0014\u00a2\u0006\u0004\u0008/\u0010\u001dJ\u0017\u00100\u001a\u00020)2\u0006\u0010\u0005\u001a\u00020\u0004H\u0014\u00a2\u0006\u0004\u00080\u00101J7\u00106\u001a\u00020)2\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u00102\u001a\u00020\u00102\u000e\u00103\u001a\n\u0012\u0004\u0012\u00020\u000c\u0018\u00010\u001e2\u0006\u00105\u001a\u000204H\u0014\u00a2\u0006\u0004\u00086\u00107J9\u0010:\u001a\u00020\u00102\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\r\u001a\u00020\u000c2\u0006\u0010\u000f\u001a\u00020\u000e2\u0008\u00109\u001a\u0004\u0018\u000108H\u0014\u00a2\u0006\u0004\u0008:\u0010;J!\u0010=\u001a\u00020<2\u0006\u0010\u0005\u001a\u00020\u00042\u0008\u0010\r\u001a\u0004\u0018\u00010\u000cH\u0014\u00a2\u0006\u0004\u0008=\u0010>J+\u0010?\u001a\u00020\u00102\u0006\u0010\u0005\u001a\u00020\u00042\u0008\u0010,\u001a\u0004\u0018\u00010\u000c2\u0008\u0010\r\u001a\u0004\u0018\u00010\u000cH\u0014\u00a2\u0006\u0004\u0008?\u0010@R\u001a\u0010A\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\u001e8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008A\u0010BR$\u0010\t\u001a\u0004\u0018\u00010\u00068\u0004@\u0004X\u0084\u000e\u00a2\u0006\u0012\n\u0004\u0008\t\u0010C\u001a\u0004\u0008\u0007\u0010D\"\u0004\u0008E\u0010F\u00a8\u0006H"
    }
    d2 = {
        "Lcom/sec/android/app/sbrowser/sync/QuickAccessRecordDataSyncClientImpl;",
        "Lcom/sec/android/app/sbrowser/sync/BaseRecordDataSyncClientImpl;",
        "<init>",
        "()V",
        "Landroid/content/Context;",
        "context",
        "Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessModelV2;",
        "getModel",
        "(Landroid/content/Context;)Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessModelV2;",
        "model",
        "Lorg/json/JSONObject;",
        "jsonObject",
        "",
        "syncKey",
        "",
        "timeStamp",
        "",
        "updateDownloadObject",
        "(Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessModelV2;Lorg/json/JSONObject;Ljava/lang/String;J)Z",
        "insertDownloadObject",
        "(Landroid/content/Context;Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessModelV2;Lorg/json/JSONObject;Ljava/lang/String;J)Z",
        "timestamp",
        "Lcom/sec/android/app/sbrowser/quickaccess/model/entity/QuickAccessItemEntity;",
        "jsonToEntity",
        "(Lorg/json/JSONObject;Ljava/lang/String;J)Lcom/sec/android/app/sbrowser/quickaccess/model/entity/QuickAccessItemEntity;",
        "Landroid/net/Uri;",
        "getContentUri",
        "()Landroid/net/Uri;",
        "getKeyPrefix",
        "()Ljava/lang/String;",
        "",
        "getColumns",
        "()[Ljava/lang/String;",
        "getSyncAdapterName",
        "getAccountTypeColumnName",
        "getDirtyColumnName",
        "getDeleteColumnName",
        "getIdColumnName",
        "getFaviconColumnName",
        "getKeyColumnName",
        "getTimeStampColumnName",
        "Landroid/database/Cursor;",
        "cursor",
        "columns",
        "localId",
        "getJSONObject",
        "(Landroid/content/Context;Landroid/database/Cursor;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)Lorg/json/JSONObject;",
        "getTag",
        "getCursorForQueryLocalKeys",
        "(Landroid/content/Context;)Landroid/database/Cursor;",
        "isColdStart",
        "serverChangeIdList",
        "",
        "maxCount",
        "getCursorForHeader",
        "(Landroid/content/Context;Z[Ljava/lang/String;I)Landroid/database/Cursor;",
        "Lcom/samsung/android/scloud/lib/storage/api/IRecordDataHelper;",
        "helper",
        "insertOrUpdate",
        "(Landroid/content/Context;Lorg/json/JSONObject;Ljava/lang/String;JLcom/samsung/android/scloud/lib/storage/api/IRecordDataHelper;)Z",
        "Ldb/r;",
        "delete",
        "(Landroid/content/Context;Ljava/lang/String;)V",
        "uploadComplete",
        "(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z",
        "_columns",
        "[Ljava/lang/String;",
        "Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessModelV2;",
        "()Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessModelV2;",
        "setModel",
        "(Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessModelV2;)V",
        "Companion",
        "SBrowser_highendBetaGlobal64Release"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final $stable:I

.field public static final Companion:Lcom/sec/android/app/sbrowser/sync/QuickAccessRecordDataSyncClientImpl$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final TAG:Ljava/lang/String; = "QuickAccessRecordDataSyncClientImpl"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final _columns:[Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private model:Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessModelV2;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/sec/android/app/sbrowser/sync/QuickAccessRecordDataSyncClientImpl$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/sec/android/app/sbrowser/sync/QuickAccessRecordDataSyncClientImpl$Companion;-><init>(Ltb/f;)V

    sput-object v0, Lcom/sec/android/app/sbrowser/sync/QuickAccessRecordDataSyncClientImpl;->Companion:Lcom/sec/android/app/sbrowser/sync/QuickAccessRecordDataSyncClientImpl$Companion;

    const/16 v0, 0x8

    sput v0, Lcom/sec/android/app/sbrowser/sync/QuickAccessRecordDataSyncClientImpl;->$stable:I

    return-void
.end method

.method public constructor <init>()V
    .locals 13

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/sync/BaseRecordDataSyncClientImpl;-><init>()V

    const-string v11, "accountName"

    const-string v12, "accountType"

    const-string v0, "title"

    const-string v1, "url"

    const-string v2, "position"

    const-string v3, "touchIcon"

    const-string v4, "touchIconUrl"

    const-string v5, "dominant"

    const-string v6, "type"

    const-string v7, "itemId"

    const-string v8, "titleState"

    const-string v9, "deviceName"

    const-string v10, "deviceId"

    filled-new-array/range {v0 .. v12}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/sync/QuickAccessRecordDataSyncClientImpl;->_columns:[Ljava/lang/String;

    return-void
.end method

.method private final getModel(Landroid/content/Context;)Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessModelV2;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sync/QuickAccessRecordDataSyncClientImpl;->model:Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessModelV2;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessModelV2;

    invoke-direct {v0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessModelV2;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/sync/QuickAccessRecordDataSyncClientImpl;->model:Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessModelV2;

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sync/QuickAccessRecordDataSyncClientImpl;->model:Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessModelV2;

    invoke-static {p0}, Ltb/k;->c(Ljava/lang/Object;)V

    return-object p0
.end method

.method private final insertDownloadObject(Landroid/content/Context;Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessModelV2;Lorg/json/JSONObject;Ljava/lang/String;J)Z
    .locals 2

    invoke-direct {p0, p3, p4, p5, p6}, Lcom/sec/android/app/sbrowser/sync/QuickAccessRecordDataSyncClientImpl;->jsonToEntity(Lorg/json/JSONObject;Ljava/lang/String;J)Lcom/sec/android/app/sbrowser/quickaccess/model/entity/QuickAccessItemEntity;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/quickaccess/model/entity/QuickAccessItemEntity;->getUrl()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/quickaccess/model/entity/QuickAccessItemEntity;->getDeviceId()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p2, p3, p4}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessModelV2;->getItemsByUrlAndDeviceId(Ljava/lang/String;Ljava/lang/String;)Lcom/sec/android/app/sbrowser/quickaccess/model/entity/QuickAccessItemEntity;

    move-result-object p3

    if-eqz p3, :cond_1

    invoke-virtual {p3}, Lcom/sec/android/app/sbrowser/quickaccess/model/entity/QuickAccessItemEntity;->getLastModifiedTime()J

    move-result-wide v0

    cmp-long p4, p5, v0

    if-gez p4, :cond_0

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/sync/SyncUtil;->getCurrentTime(Landroid/content/Context;)J

    move-result-wide p3

    invoke-static {p0, p3, p4}, Lcom/sec/android/app/sbrowser/quickaccess/model/entity/QuickAccessItemEntityKt;->insertSyncFieldsOnDelete(Lcom/sec/android/app/sbrowser/quickaccess/model/entity/QuickAccessItemEntity;J)V

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/sync/SyncUtil;->getCurrentTime(Landroid/content/Context;)J

    move-result-wide p4

    invoke-static {p3, p4, p5}, Lcom/sec/android/app/sbrowser/quickaccess/model/entity/QuickAccessItemEntityKt;->insertSyncFieldsOnDelete(Lcom/sec/android/app/sbrowser/quickaccess/model/entity/QuickAccessItemEntity;J)V

    invoke-virtual {p2, p3}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessModelV2;->updateEntity(Lcom/sec/android/app/sbrowser/quickaccess/model/entity/QuickAccessItemEntity;)I

    :cond_1
    :goto_0
    invoke-virtual {p2, p0}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessModelV2;->insertItem(Lcom/sec/android/app/sbrowser/quickaccess/model/entity/QuickAccessItemEntity;)J

    move-result-wide p0

    const-wide/16 p2, -0x1

    cmp-long p0, p0, p2

    if-eqz p0, :cond_2

    const/4 p0, 0x1

    goto :goto_1

    :cond_2
    const/4 p0, 0x0

    :goto_1
    return p0
.end method

.method private final jsonToEntity(Lorg/json/JSONObject;Ljava/lang/String;J)Lcom/sec/android/app/sbrowser/quickaccess/model/entity/QuickAccessItemEntity;
    .locals 28

    move-object/from16 v0, p1

    move-object/from16 v19, p2

    const-string v1, "title"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v4, v1

    const-string v2, "getString(...)"

    invoke-static {v1, v2}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "position"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v6

    const-string v1, "touchIconUrl"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v1, "url"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v5, v1

    invoke-static {v1, v2}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "type"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem$Type;->valueOf(I)Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem$Type;

    move-result-object v1

    move-object v10, v1

    const-string v2, "valueOf(...)"

    invoke-static {v1, v2}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "accountName"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    const-string v1, "accountType"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v18, v1

    const-string v15, "optString(...)"

    invoke-static {v1, v15}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "dominant"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v9

    const-string v1, "deviceName"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v13, v1

    invoke-static {v1, v15}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "deviceId"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v14, v1

    invoke-static {v1, v15}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "itemId"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v11

    const-string v1, "titleState"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem$TitleState;->valueOf(I)Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem$TitleState;

    move-result-object v1

    move-object v12, v1

    invoke-static {v1, v2}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static/range {p3 .. p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v23

    new-instance v7, Lcom/sec/android/app/sbrowser/quickaccess/model/entity/QuickAccessItemEntity;

    move-object v1, v7

    const v24, 0xe0001

    const/16 v25, 0x0

    const-wide/16 v2, 0x0

    const/16 v16, 0x0

    move-object/from16 v26, v7

    move-object/from16 v7, v16

    const/16 v16, 0x0

    move-object/from16 v27, v15

    move/from16 v15, v16

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    invoke-direct/range {v1 .. v25}, Lcom/sec/android/app/sbrowser/quickaccess/model/entity/QuickAccessItemEntity;-><init>(JLjava/lang/String;Ljava/lang/String;I[BLjava/lang/String;ILcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem$Type;ILcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem$TitleState;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILtb/f;)V

    const-string v1, "touchIcon"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v3, v27

    invoke-static {v2, v3}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-lez v2, :cond_0

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    move-object/from16 v1, v26

    invoke-virtual {v1, v0}, Lcom/sec/android/app/sbrowser/quickaccess/model/entity/QuickAccessItemEntity;->setTouchIcon([B)V

    goto :goto_0

    :cond_0
    move-object/from16 v1, v26

    :goto_0
    return-object v1
.end method

.method private final updateDownloadObject(Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessModelV2;Lorg/json/JSONObject;Ljava/lang/String;J)Z
    .locals 2

    invoke-direct {p0, p2, p3, p4, p5}, Lcom/sec/android/app/sbrowser/sync/QuickAccessRecordDataSyncClientImpl;->jsonToEntity(Lorg/json/JSONObject;Ljava/lang/String;J)Lcom/sec/android/app/sbrowser/quickaccess/model/entity/QuickAccessItemEntity;

    move-result-object p0

    invoke-virtual {p1, p3}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessModelV2;->getItemBySyncKey(Ljava/lang/String;)Lcom/sec/android/app/sbrowser/quickaccess/model/entity/QuickAccessItemEntity;

    move-result-object p2

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/quickaccess/model/entity/QuickAccessItemEntity;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/sec/android/app/sbrowser/quickaccess/model/entity/QuickAccessItemEntity;->setUrl(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/quickaccess/model/entity/QuickAccessItemEntity;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/sec/android/app/sbrowser/quickaccess/model/entity/QuickAccessItemEntity;->setTitle(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/quickaccess/model/entity/QuickAccessItemEntity;->getPosition()I

    move-result v1

    invoke-virtual {p2, v1}, Lcom/sec/android/app/sbrowser/quickaccess/model/entity/QuickAccessItemEntity;->setPosition(I)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/quickaccess/model/entity/QuickAccessItemEntity;->getTouchIcon()[B

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/sec/android/app/sbrowser/quickaccess/model/entity/QuickAccessItemEntity;->setTouchIcon([B)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/quickaccess/model/entity/QuickAccessItemEntity;->getTouchIconUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/sec/android/app/sbrowser/quickaccess/model/entity/QuickAccessItemEntity;->setTouchIconUrl(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/quickaccess/model/entity/QuickAccessItemEntity;->getType()Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem$Type;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/sec/android/app/sbrowser/quickaccess/model/entity/QuickAccessItemEntity;->setType(Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem$Type;)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/quickaccess/model/entity/QuickAccessItemEntity;->getAccountName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/sec/android/app/sbrowser/quickaccess/model/entity/QuickAccessItemEntity;->setAccountName(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/quickaccess/model/entity/QuickAccessItemEntity;->getAccountType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/sec/android/app/sbrowser/quickaccess/model/entity/QuickAccessItemEntity;->setAccountType(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/quickaccess/model/entity/QuickAccessItemEntity;->getDominant()I

    move-result v1

    invoke-virtual {p2, v1}, Lcom/sec/android/app/sbrowser/quickaccess/model/entity/QuickAccessItemEntity;->setDominant(I)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/quickaccess/model/entity/QuickAccessItemEntity;->getTitleState()Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem$TitleState;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/sec/android/app/sbrowser/quickaccess/model/entity/QuickAccessItemEntity;->setTitleState(Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem$TitleState;)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/quickaccess/model/entity/QuickAccessItemEntity;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/sec/android/app/sbrowser/quickaccess/model/entity/QuickAccessItemEntity;->setDeviceId(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/quickaccess/model/entity/QuickAccessItemEntity;->getDeviceName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/sec/android/app/sbrowser/quickaccess/model/entity/QuickAccessItemEntity;->setDeviceName(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/quickaccess/model/entity/QuickAccessItemEntity;->getItemId()I

    move-result p0

    invoke-virtual {p2, p0}, Lcom/sec/android/app/sbrowser/quickaccess/model/entity/QuickAccessItemEntity;->setItemId(I)V

    invoke-virtual {p2, v0}, Lcom/sec/android/app/sbrowser/quickaccess/model/entity/QuickAccessItemEntity;->setDeleted(I)V

    invoke-virtual {p2, v0}, Lcom/sec/android/app/sbrowser/quickaccess/model/entity/QuickAccessItemEntity;->setDirty(I)V

    invoke-virtual {p2, p3}, Lcom/sec/android/app/sbrowser/quickaccess/model/entity/QuickAccessItemEntity;->setSync1(Ljava/lang/String;)V

    invoke-static {p4, p5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Lcom/sec/android/app/sbrowser/quickaccess/model/entity/QuickAccessItemEntity;->setSync5(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessModelV2;->updateEntity(Lcom/sec/android/app/sbrowser/quickaccess/model/entity/QuickAccessItemEntity;)I

    move-result p0

    if-lez p0, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method


# virtual methods
.method public delete(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_1

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/sync/QuickAccessRecordDataSyncClientImpl;->getModel(Landroid/content/Context;)Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessModelV2;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessModelV2;->deleteBySyncKey(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public getAccountTypeColumnName()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "accountType"

    return-object p0
.end method

.method public getColumns()[Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sync/QuickAccessRecordDataSyncClientImpl;->_columns:[Ljava/lang/String;

    return-object p0
.end method

.method public getContentUri()Landroid/net/Uri;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object p0, Lcom/sec/android/app/sbrowser/common/constants/quickaccess/QuickAccessDatabaseConstants$Info;->INSTANCE:Lcom/sec/android/app/sbrowser/common/constants/quickaccess/QuickAccessDatabaseConstants$Info;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/constants/quickaccess/QuickAccessDatabaseConstants$Info;->getURI()Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method public getCursorForHeader(Landroid/content/Context;Z[Ljava/lang/String;I)Landroid/database/Cursor;
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # [Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p3, "context"

    invoke-static {p1, p3}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "getSamsungAccountType(...)"

    if-eqz p2, :cond_0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/sync/QuickAccessRecordDataSyncClientImpl;->getModel(Landroid/content/Context;)Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessModelV2;

    move-result-object p0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/sync/SyncAccountUtil;->getSamsungAccountType()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p3}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessModelV2;->getCursorForAllSyncItemsByAccountType(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/sync/QuickAccessRecordDataSyncClientImpl;->getModel(Landroid/content/Context;)Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessModelV2;

    move-result-object p0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/sync/SyncAccountUtil;->getSamsungAccountType()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p3}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessModelV2;->getCursorForToBeSyncedItemsByAccountType(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public getCursorForQueryLocalKeys(Landroid/content/Context;)Landroid/database/Cursor;
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/sync/QuickAccessRecordDataSyncClientImpl;->getModel(Landroid/content/Context;)Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessModelV2;

    move-result-object p0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/sync/SyncAccountUtil;->getSamsungAccountType()Ljava/lang/String;

    move-result-object p1

    const-string v0, "getSamsungAccountType(...)"

    invoke-static {p1, v0}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessModelV2;->getCursorForQueryLocalKeys(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    return-object p0
.end method

.method public getDeleteColumnName()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "deleted"

    return-object p0
.end method

.method public getDirtyColumnName()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "dirty"

    return-object p0
.end method

.method public getFaviconColumnName()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance p0, Ldb/i;

    const-string v0, "An operation is not implemented: Not used"

    invoke-direct {p0, v0}, Ldb/i;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getIdColumnName()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "id"

    return-object p0
.end method

.method public getJSONObject(Landroid/content/Context;Landroid/database/Cursor;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)Lorg/json/JSONObject;
    .locals 6
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Landroid/database/Cursor;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # [Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "columns"

    invoke-static {p3, p0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lorg/json/JSONObject;

    invoke-direct {p0}, Lorg/json/JSONObject;-><init>()V

    array-length p1, p3

    const/4 p4, 0x0

    move v0, p4

    :goto_0
    if-ge v0, p1, :cond_4

    aget-object v1, p3, v0

    invoke-static {p2}, Ltb/k;->c(Ljava/lang/Object;)V

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    const/4 v3, -0x1

    const-string v4, "QuickAccessRecordDataSyncClientImpl"

    if-ne v2, v3, :cond_0

    const-string v2, "there is no column in cursor : "

    invoke-static {v2, v1, v4}, LV0/c;->z(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    invoke-interface {p2, v2}, Landroid/database/Cursor;->getType(I)I

    move-result v3

    const/4 v5, 0x1

    if-eq v3, v5, :cond_3

    const/4 v5, 0x3

    if-eq v3, v5, :cond_2

    const/4 v5, 0x4

    if-eq v3, v5, :cond_1

    const-string v2, "no such column : "

    invoke-static {v2, v1, v4}, Landroidx/recyclerview/widget/P;->u(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    invoke-interface {p2, v2}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v2

    invoke-static {v2, p4}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_1

    :cond_2
    invoke-interface {p2, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_1

    :cond_3
    invoke-interface {p2, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    const-string p1, "record_id"

    invoke-virtual {p0, p1, p5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "timestamp"

    invoke-virtual {p0, p1, p6, p7}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    return-object p0
.end method

.method public getKeyColumnName()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "sync1"

    return-object p0
.end method

.method public getKeyPrefix()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, ""

    return-object p0
.end method

.method public final getModel()Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessModelV2;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sync/QuickAccessRecordDataSyncClientImpl;->model:Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessModelV2;

    return-object p0
.end method

.method public getSyncAdapterName()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "QUICKACCESS_SYNC_V2"

    return-object p0
.end method

.method public getTag()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "QuickAccessRecordDataSyncClientImpl"

    return-object p0
.end method

.method public getTimeStampColumnName()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "sync5"

    return-object p0
.end method

.method public insertOrUpdate(Landroid/content/Context;Lorg/json/JSONObject;Ljava/lang/String;JLcom/samsung/android/scloud/lib/storage/api/IRecordDataHelper;)Z
    .locals 7
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lorg/json/JSONObject;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p6    # Lcom/samsung/android/scloud/lib/storage/api/IRecordDataHelper;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string p6, "context"

    invoke-static {p1, p6}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p6, "jsonObject"

    invoke-static {p2, p6}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p6, "syncKey"

    invoke-static {p3, p6}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/sync/QuickAccessRecordDataSyncClientImpl;->getModel(Landroid/content/Context;)Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessModelV2;

    move-result-object v2

    invoke-virtual {p0, p3}, Lcom/sec/android/app/sbrowser/sync/BaseRecordDataSyncClientImpl;->isExist(Ljava/lang/String;)Z

    move-result p6

    if-eqz p6, :cond_0

    move-object v0, p0

    move-object v1, v2

    move-object v2, p2

    move-object v3, p3

    move-wide v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/sbrowser/sync/QuickAccessRecordDataSyncClientImpl;->updateDownloadObject(Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessModelV2;Lorg/json/JSONObject;Ljava/lang/String;J)Z

    move-result p0

    goto :goto_0

    :cond_0
    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-wide v5, p4

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/app/sbrowser/sync/QuickAccessRecordDataSyncClientImpl;->insertDownloadObject(Landroid/content/Context;Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessModelV2;Lorg/json/JSONObject;Ljava/lang/String;J)Z

    move-result p0

    :goto_0
    return p0
.end method

.method public final setModel(Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessModelV2;)V
    .locals 0
    .param p1    # Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessModelV2;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/sync/QuickAccessRecordDataSyncClientImpl;->model:Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessModelV2;

    return-void
.end method

.method public uploadComplete(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sync/BaseRecordDataSyncClientImpl;->mRecordMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p2}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/sync/QuickAccessRecordDataSyncClientImpl;->getModel(Landroid/content/Context;)Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessModelV2;

    move-result-object p0

    invoke-static {p2}, Ltb/k;->c(Ljava/lang/Object;)V

    invoke-static {p2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessModelV2;->getItemById(J)Lcom/sec/android/app/sbrowser/quickaccess/model/entity/QuickAccessItemEntity;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1, v1}, Lcom/sec/android/app/sbrowser/quickaccess/model/entity/QuickAccessItemEntity;->setDirty(I)V

    invoke-virtual {p1, v1}, Lcom/sec/android/app/sbrowser/quickaccess/model/entity/QuickAccessItemEntity;->setDeleted(I)V

    if-nez p3, :cond_0

    const-string p3, ""

    :cond_0
    invoke-virtual {p1, p3}, Lcom/sec/android/app/sbrowser/quickaccess/model/entity/QuickAccessItemEntity;->setSync1(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessModelV2;->updateEntity(Lcom/sec/android/app/sbrowser/quickaccess/model/entity/QuickAccessItemEntity;)I

    move-result p0

    if-lez p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    return v1
.end method
