.class public Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseController;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseController$MHDataBaseAsyncTask;,
        Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseController$AsyncTaskType;,
        Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseController$UpdateType;,
        Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseController$QueryType;,
        Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseController$DeleteType;
    }
.end annotation


# static fields
.field private static final MEDIA_HISTORY_PROJECTION:[Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "[MM]MHDatabaseController"


# direct methods
.method static constructor <clinit>()V
    .locals 24

    const-string v22, "EXTRA9"

    const-string v23, "EXTRA10"

    const-string v0, "_ID"

    const-string v1, "PAGE_URL"

    const-string v2, "VIDEO_URL"

    const-string v3, "TITLE"

    const-string v4, "THUMBNAIL"

    const-string v5, "DEFAULT_THUMBNAIL"

    const-string v6, "ICON"

    const-string v7, "PRIVACY"

    const-string v8, "HAS_VIDEO"

    const-string v9, "POSITION"

    const-string v10, "DURATION"

    const-string v11, "VISIT_DATE"

    const-string v12, "HAS_CLOSED_CAPTION"

    const-string v13, "DIMENSION"

    const-string v14, "EXTRA1"

    const-string v15, "EXTRA2"

    const-string v16, "EXTRA3"

    const-string v17, "EXTRA4"

    const-string v18, "EXTRA5"

    const-string v19, "EXTRA6"

    const-string v20, "EXTRA7"

    const-string v21, "EXTRA8"

    filled-new-array/range {v0 .. v23}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseController;->MEDIA_HISTORY_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a()Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseController;
    .locals 1

    new-instance v0, Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseController;

    invoke-direct {v0}, Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseController;-><init>()V

    return-object v0
.end method

.method public static synthetic b(Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseController;Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseModel;Landroid/content/Context;Lcom/sec/android/app/sbrowser/common/utils/WebContentFetcher$ContentType;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseController;->lambda$updateTitleFromOgTag$0(Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseModel;Landroid/content/Context;Lcom/sec/android/app/sbrowser/common/utils/WebContentFetcher$ContentType;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic c(Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseController;Landroid/content/Context;Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseModel;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseController;->insertMediaHistoryData(Landroid/content/Context;Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseModel;)Z

    return-void
.end method

.method private checkAndAddThumbnail(Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseModel;Landroid/content/ContentValues;)V
    .locals 1
    .param p1    # Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseModel;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseModel;->getThumbnail()Landroid/graphics/Bitmap;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseModel;->getThumbnail()Landroid/graphics/Bitmap;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/media/history/common/MHThumbnailUtil;->getByteArrayFromBitmap(Landroid/graphics/Bitmap;)[B

    move-result-object p0

    const-string v0, "THUMBNAIL"

    invoke-virtual {p2, v0, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    :cond_0
    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseModel;->getDefaultThumbnail()Landroid/graphics/Bitmap;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseModel;->getDefaultThumbnail()Landroid/graphics/Bitmap;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/media/history/common/MHThumbnailUtil;->getByteArrayFromBitmap(Landroid/graphics/Bitmap;)[B

    move-result-object p0

    const-string p1, "DEFAULT_THUMBNAIL"

    invoke-virtual {p2, p1, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    :cond_1
    return-void
.end method

.method public static bridge synthetic d()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseController;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private delete(Landroid/content/Context;Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseController$DeleteType;Ljava/util/ArrayList;)I
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseController$DeleteType;",
            "Ljava/util/ArrayList<",
            "Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseModel;",
            ">;)I"
        }
    .end annotation

    const/4 v0, -0x1

    if-nez p1, :cond_0

    return v0

    :cond_0
    sget-object v1, Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseController$2;->$SwitchMap$com$sec$android$app$sbrowser$media$history$model$MHDatabaseController$DeleteType:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget p2, v1, p2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq p2, v1, :cond_4

    const/4 v3, 0x2

    if-eq p2, v3, :cond_3

    const/4 v1, 0x3

    if-eq p2, v1, :cond_1

    sget-object p0, Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseController;->TAG:Ljava/lang/String;

    const-string p1, "Unknown delete type"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_1
    invoke-direct {p0, p3}, Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseController;->generateIndexList(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_2

    return v0

    :cond_2
    sget-object p2, Lcom/sec/android/app/sbrowser/media/history/common/MHConstants;->CONTENT_URI_MEDIA_HISTORY_DELETE:Landroid/net/Uri;

    const-string p3, ", "

    invoke-static {p3, p0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p0

    const-string p3, "_ID IN ("

    const-string v1, ")"

    invoke-static {p3, p0, v1}, LV0/c;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :goto_0
    move-object v5, v2

    move-object v2, p0

    move-object p0, v5

    goto :goto_1

    :cond_3
    sget-object p2, Lcom/sec/android/app/sbrowser/media/history/common/MHConstants;->CONTENT_URI_MEDIA_HISTORY_DELETE_MULTIPLE:Landroid/net/Uri;

    new-array v2, v1, [Ljava/lang/String;

    const-wide/16 v3, 0x32

    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p0

    const/4 p3, 0x0

    aput-object p0, v2, p3

    const-string p0, "_ID NOT IN (SELECT _ID from MEDIAHISTORY ORDER BY VISIT_DATE DESC LIMIT ?)"

    goto :goto_0

    :cond_4
    sget-object p2, Lcom/sec/android/app/sbrowser/media/history/common/MHConstants;->CONTENT_URI_MEDIA_HISTORY_DELETE_MULTIPLE:Landroid/net/Uri;

    move-object p0, v2

    :goto_1
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-virtual {p1, p2, v2, p0}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p0

    sget-object p1, Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseController;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "error: "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, p2, p1}, Landroidx/recyclerview/widget/P;->t(Ljava/lang/RuntimeException;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :goto_2
    return v0
.end method

.method private generateIndexList(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseModel;",
            ">;)",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    if-nez p1, :cond_0

    return-object p0

    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseModel;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseModel;->getIndex()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object p0
.end method

.method private getContentValuesForAll(Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseModel;)Landroid/content/ContentValues;
    .locals 3
    .param p1    # Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseModel;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseModel;->getPageUrl()Ljava/lang/String;

    move-result-object v1

    const-string v2, "PAGE_URL"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "VIDEO_URL"

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseModel;->getVideoUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1, v0}, Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseController;->checkAndAddThumbnail(Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseModel;Landroid/content/ContentValues;)V

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseModel;->getPrivacy()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    const-string v1, "PRIVACY"

    invoke-virtual {v0, v1, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseModel;->getHasVideo()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    const-string v1, "HAS_VIDEO"

    invoke-virtual {v0, v1, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseModel;->getPosition()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string v1, "POSITION"

    invoke-virtual {v0, v1, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseModel;->getDuration()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string v1, "DURATION"

    invoke-virtual {v0, v1, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    const-string v1, "VISIT_DATE"

    invoke-virtual {v0, v1, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseModel;->getHasClosedCaption()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    const-string v1, "HAS_CLOSED_CAPTION"

    invoke-virtual {v0, v1, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string p0, "DIMENSION"

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseModel;->getDimension()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseModel;->getClosedCaptionUrl()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_0

    const-string p0, "EXTRA1"

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseModel;->getClosedCaptionUrl()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method private getContentValuesForThumbnail(Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseModel;)Landroid/content/ContentValues;
    .locals 1
    .param p1    # Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseModel;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseController;->checkAndAddThumbnail(Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseModel;Landroid/content/ContentValues;)V

    return-object v0
.end method

.method private getContentValuesForTitle(Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseModel;)Landroid/content/ContentValues;
    .locals 1
    .param p1    # Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseModel;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance p0, Landroid/content/ContentValues;

    invoke-direct {p0}, Landroid/content/ContentValues;-><init>()V

    const-string v0, "TITLE"

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseModel;->getTitle()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public static declared-synchronized getInstance()Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseController;
    .locals 4

    const-class v0, Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseController;

    monitor-enter v0

    :try_start_0
    const-class v1, Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseController;

    new-instance v2, Lcom/sec/android/app/sbrowser/homepage/a;

    const/4 v3, 0x5

    invoke-direct {v2, v3}, Lcom/sec/android/app/sbrowser/homepage/a;-><init>(I)V

    invoke-static {v1, v2}, Lcom/sec/android/app/sbrowser/common/singleton/SingletonFactory;->getOrCreate(Ljava/lang/Class;Lcom/sec/android/app/sbrowser/common/function/Supplier;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseController;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private getMediaHistoryDataByModel(Landroid/content/Context;Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseModel;)Ljava/util/concurrent/CopyOnWriteArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseModel;",
            ")",
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseModel;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseController$QueryType;->MODEL:Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseController$QueryType;

    invoke-direct {p0, p1, v0, p2}, Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseController;->query(Landroid/content/Context;Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseController$QueryType;Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseModel;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object p0

    return-object p0
.end method

.method private getMediaHistoryDataByPageUrl(Landroid/content/Context;Ljava/lang/String;)Ljava/util/concurrent/CopyOnWriteArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseModel;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseModel;->createEmptyModel()Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseModel;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseModel;->setPageUrl(Ljava/lang/String;)V

    sget-object p2, Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseController$QueryType;->PAGE_URL:Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseController$QueryType;

    invoke-direct {p0, p1, p2, v0}, Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseController;->query(Landroid/content/Context;Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseController$QueryType;Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseModel;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object p0

    return-object p0
.end method

.method private insert(Landroid/content/Context;Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseModel;)Z
    .locals 3

    const/4 p0, 0x0

    if-eqz p1, :cond_2

    if-nez p2, :cond_0

    goto/16 :goto_1

    :cond_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "PAGE_URL"

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseModel;->getPageUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "VIDEO_URL"

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseModel;->getVideoUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "TITLE"

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseModel;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseModel;->getThumbnail()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/media/history/common/MHThumbnailUtil;->getByteArrayFromBitmap(Landroid/graphics/Bitmap;)[B

    move-result-object v1

    const-string v2, "THUMBNAIL"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseModel;->getDefaultThumbnail()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/media/history/common/MHThumbnailUtil;->getByteArrayFromBitmap(Landroid/graphics/Bitmap;)[B

    move-result-object v1

    const-string v2, "DEFAULT_THUMBNAIL"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseModel;->getPrivacy()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "PRIVACY"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseModel;->getHasVideo()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "HAS_VIDEO"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseModel;->getPosition()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "POSITION"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseModel;->getDuration()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "DURATION"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "VISIT_DATE"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseModel;->getHasClosedCaption()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "HAS_CLOSED_CAPTION"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string v1, "DIMENSION"

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseModel;->getDimension()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "EXTRA1"

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseModel;->getClosedCaptionUrl()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    sget-object p2, Lcom/sec/android/app/sbrowser/media/history/common/MHConstants;->CONTENT_URI_MEDIA_HISTORY:Landroid/net/Uri;

    invoke-virtual {p1, p2, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    sget-object p2, Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseController;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "error: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1, v0, p2}, Landroidx/recyclerview/widget/P;->t(Ljava/lang/RuntimeException;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_1

    sget-object p1, Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseController;->TAG:Ljava/lang/String;

    const-string p2, "insert fail"

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return p0

    :cond_1
    const/4 p0, 0x1

    :cond_2
    :goto_1
    return p0
.end method

.method private insertMediaHistoryData(Landroid/content/Context;Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseModel;)Z
    .locals 1

    if-eqz p1, :cond_2

    if-nez p2, :cond_0

    goto :goto_1

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseController;->isExistedMediaHistory(Landroid/content/Context;Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseModel;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseController;->updateMediaHistoryData(Landroid/content/Context;Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseModel;)Z

    move-result p0

    goto :goto_0

    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseController;->insert(Landroid/content/Context;Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseModel;)Z

    move-result p0

    :goto_0
    return p0

    :cond_2
    :goto_1
    const/4 p0, 0x0

    return p0
.end method

.method private isExistedMediaHistory(Landroid/content/Context;Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseModel;)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    if-nez p2, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseModel;->isMSE()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseModel;->getPageUrl()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseController;->getMediaHistoryDataByPageUrl(Landroid/content/Context;Ljava/lang/String;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object p0

    goto :goto_0

    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseController;->getMediaHistoryDataByModel(Landroid/content/Context;Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseModel;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object p0

    :goto_0
    if-eqz p0, :cond_2

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result p0

    if-eqz p0, :cond_2

    const/4 v0, 0x1

    :cond_2
    :goto_1
    return v0
.end method

.method private synthetic lambda$updateTitleFromOgTag$0(Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseModel;Landroid/content/Context;Lcom/sec/android/app/sbrowser/common/utils/WebContentFetcher$ContentType;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0

    check-cast p5, Ljava/lang/String;

    if-eqz p5, :cond_0

    const-string p3, "&amp;"

    const-string p4, "&"

    invoke-virtual {p5, p3, p4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p3

    const-string p4, "&lt;"

    const-string p5, "<"

    invoke-virtual {p3, p4, p5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p3

    const-string p4, "&gt;"

    const-string p5, ">"

    invoke-virtual {p3, p4, p5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p3

    const-string p4, "&quot;"

    const-string p5, "\""

    invoke-virtual {p3, p4, p5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p3

    const-string p4, "&#039;"

    const-string p5, "\'"

    invoke-virtual {p3, p4, p5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p3

    const-string p4, "&#047;"

    const-string p5, "/"

    invoke-virtual {p3, p4, p5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p3

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    :goto_0
    if-eqz p3, :cond_1

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p4

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseModel;->getTitle()Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p5}, Ljava/lang/String;->length()I

    move-result p5

    if-le p4, p5, :cond_1

    sget-object p4, Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseController;->TAG:Ljava/lang/String;

    const-string p5, "[MediaHistory] Use page og:title"

    invoke-static {p4, p5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1, p3}, Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseModel;->setTitle(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    sget-object p3, Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseController;->TAG:Ljava/lang/String;

    const-string p4, "[MediaHistory] Use page title"

    invoke-static {p3, p4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    invoke-direct {p0, p2, p1}, Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseController;->updateMediaHistoryTitle(Landroid/content/Context;Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseModel;)V

    return-void
.end method

.method private query(Landroid/content/Context;Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseController$QueryType;Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseModel;)Ljava/util/concurrent/CopyOnWriteArrayList;
    .locals 9
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseController$QueryType;",
            "Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseModel;",
            ")",
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseModel;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    if-nez p1, :cond_0

    sget-object p0, Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseController;->TAG:Ljava/lang/String;

    const-string p1, "context is null"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_0
    sget-object v1, Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseController$2;->$SwitchMap$com$sec$android$app$sbrowser$media$history$model$MHDatabaseController$QueryType:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget p2, v1, p2

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq p2, v3, :cond_4

    const/4 v4, 0x2

    if-eq p2, v4, :cond_3

    const/4 v5, 0x3

    if-eq p2, v5, :cond_2

    const/4 v6, 0x4

    if-eq p2, v6, :cond_1

    sget-object p0, Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseController;->TAG:Ljava/lang/String;

    const-string p1, "Unknown query type"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_1
    new-array p2, v6, [Ljava/lang/String;

    invoke-virtual {p3}, Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseModel;->getVideoUrl()Ljava/lang/String;

    move-result-object v6

    aput-object v6, p2, v1

    invoke-virtual {p3}, Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseModel;->getPageUrl()Ljava/lang/String;

    move-result-object v1

    aput-object v1, p2, v3

    invoke-virtual {p3}, Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseModel;->getDuration()I

    move-result v1

    sub-int/2addr v1, v3

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, p2, v4

    invoke-virtual {p3}, Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseModel;->getDuration()I

    move-result p3

    add-int/2addr p3, v3

    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p3

    aput-object p3, p2, v5

    const-string p3, "VIDEO_URL = ? OR (PAGE_URL = ? AND DURATION BETWEEN ? AND ?)"

    :goto_0
    move-object v7, p2

    move-object v6, p3

    move-object v8, v2

    goto :goto_1

    :cond_2
    sget-object p2, Lcom/sec/android/app/sbrowser/media/history/common/MHConstants;->QUERY_SORT_ORDER_FOR_LATEST_HISTORY:Ljava/lang/String;

    move-object v8, p2

    move-object v6, v2

    move-object v7, v6

    goto :goto_1

    :cond_3
    new-array p2, v3, [Ljava/lang/String;

    invoke-virtual {p3}, Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseModel;->getPageUrl()Ljava/lang/String;

    move-result-object p3

    aput-object p3, p2, v1

    const-string p3, "PAGE_URL = ? "

    goto :goto_0

    :cond_4
    new-array p2, v3, [Ljava/lang/String;

    invoke-virtual {p3}, Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseModel;->getVideoUrl()Ljava/lang/String;

    move-result-object p3

    aput-object p3, p2, v1

    const-string p3, "VIDEO_URL = ? "

    goto :goto_0

    :goto_1
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Lcom/sec/android/app/sbrowser/media/history/common/MHConstants;->CONTENT_URI_MEDIA_HISTORY:Landroid/net/Uri;

    sget-object v5, Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseController;->MEDIA_HISTORY_PROJECTION:[Ljava/lang/String;

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/database/CursorIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p1, :cond_5

    :try_start_1
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result p2

    if-lez p2, :cond_5

    :goto_2
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result p2

    if-eqz p2, :cond_5

    invoke-static {}, Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseModel;->createEmptyModel()Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseModel;

    move-result-object p2

    invoke-direct {p0, p2, p1}, Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseController;->setMediaInfoForEmptyModel(Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseModel;Landroid/database/Cursor;)V

    invoke-virtual {v0, p2}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p0

    :try_start_2
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception p1

    :try_start_3
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_3
    throw p0

    :catch_0
    move-exception p0

    goto :goto_4

    :cond_5
    if-eqz p1, :cond_6

    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Landroid/database/CursorIndexOutOfBoundsException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_5

    :goto_4
    sget-object p1, Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseController;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "error: "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, p2, p1}, Landroidx/recyclerview/widget/P;->t(Ljava/lang/RuntimeException;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :cond_6
    :goto_5
    return-object v0
.end method

.method private setMediaInfoForEmptyModel(Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseModel;Landroid/database/Cursor;)V
    .locals 4
    .param p1    # Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseModel;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/database/Cursor;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-string p0, "_ID"

    invoke-interface {p2, p0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p0

    invoke-interface {p2, p0}, Landroid/database/Cursor;->getInt(I)I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseModel;->setIndex(I)V

    const-string p0, "VIDEO_URL"

    invoke-interface {p2, p0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p0

    invoke-interface {p2, p0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseModel;->setVideoUrl(Ljava/lang/String;)V

    const-string p0, "PAGE_URL"

    invoke-interface {p2, p0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p0

    invoke-interface {p2, p0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseModel;->setPageUrl(Ljava/lang/String;)V

    const-string p0, "TITLE"

    invoke-interface {p2, p0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p0

    invoke-interface {p2, p0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseModel;->setTitle(Ljava/lang/String;)V

    const-string p0, "THUMBNAIL"

    invoke-interface {p2, p0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p0

    invoke-interface {p2, p0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseModel;->setThumbnail([B)V

    const-string p0, "DEFAULT_THUMBNAIL"

    invoke-interface {p2, p0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p0

    invoke-interface {p2, p0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseModel;->setDefaultThumbnail([B)V

    const-string p0, "PRIVACY"

    invoke-interface {p2, p0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p0

    invoke-interface {p2, p0}, Landroid/database/Cursor;->getInt(I)I

    move-result p0

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p0, v1, :cond_0

    move p0, v1

    goto :goto_0

    :cond_0
    move p0, v0

    :goto_0
    invoke-virtual {p1, p0}, Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseModel;->setPrivacy(Z)V

    const-string p0, "HAS_VIDEO"

    invoke-interface {p2, p0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p0

    invoke-interface {p2, p0}, Landroid/database/Cursor;->getInt(I)I

    move-result p0

    if-ne p0, v1, :cond_1

    move p0, v1

    goto :goto_1

    :cond_1
    move p0, v0

    :goto_1
    invoke-virtual {p1, p0}, Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseModel;->setHasVideo(Z)V

    const-string p0, "POSITION"

    invoke-interface {p2, p0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p0

    invoke-interface {p2, p0}, Landroid/database/Cursor;->getInt(I)I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseModel;->setPosition(I)V

    const-string p0, "DURATION"

    invoke-interface {p2, p0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p0

    invoke-interface {p2, p0}, Landroid/database/Cursor;->getInt(I)I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseModel;->setDuration(I)V

    const-string p0, "VISIT_DATE"

    invoke-interface {p2, p0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p0

    invoke-interface {p2, p0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseModel;->setVisitDate(J)V

    const-string p0, "HAS_CLOSED_CAPTION"

    invoke-interface {p2, p0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p0

    invoke-interface {p2, p0}, Landroid/database/Cursor;->getInt(I)I

    move-result p0

    if-ne p0, v1, :cond_2

    move v0, v1

    :cond_2
    invoke-virtual {p1, v0}, Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseModel;->setHasClosedCaption(Z)V

    const-string p0, "DIMENSION"

    invoke-interface {p2, p0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p0

    invoke-interface {p2, p0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseModel;->setDimension(Ljava/lang/String;)V

    const-string p0, "EXTRA1"

    invoke-interface {p2, p0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p0

    invoke-interface {p2, p0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseModel;->setClosedCaptionUrl(Ljava/lang/String;)V

    return-void
.end method

.method private update(Landroid/content/Context;Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseController$UpdateType;Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseModel;)Z
    .locals 7

    const/4 v0, 0x0

    if-eqz p1, :cond_5

    if-nez p3, :cond_0

    goto/16 :goto_3

    :cond_0
    invoke-virtual {p3}, Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseModel;->isMSE()Z

    move-result v1

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v1, :cond_1

    new-array v1, v4, [Ljava/lang/String;

    invoke-virtual {p3}, Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseModel;->getPageUrl()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v0

    const-string v5, "PAGE_URL = ? "

    goto :goto_0

    :cond_1
    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {p3}, Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseModel;->getVideoUrl()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v0

    invoke-virtual {p3}, Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseModel;->getPageUrl()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v4

    invoke-virtual {p3}, Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseModel;->getDuration()I

    move-result v5

    sub-int/2addr v5, v4

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v3

    invoke-virtual {p3}, Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseModel;->getDuration()I

    move-result v5

    add-int/2addr v5, v4

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v2

    const-string v5, "VIDEO_URL = ? OR (PAGE_URL = ? AND DURATION BETWEEN ? AND ?)"

    :goto_0
    sget-object v6, Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseController$2;->$SwitchMap$com$sec$android$app$sbrowser$media$history$model$MHDatabaseController$UpdateType:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget p2, v6, p2

    if-eq p2, v4, :cond_4

    if-eq p2, v3, :cond_3

    if-eq p2, v2, :cond_2

    sget-object p0, Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseController;->TAG:Ljava/lang/String;

    const-string p1, "Unknown delete type"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_2
    invoke-direct {p0, p3}, Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseController;->getContentValuesForTitle(Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseModel;)Landroid/content/ContentValues;

    move-result-object p0

    goto :goto_1

    :cond_3
    invoke-direct {p0, p3}, Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseController;->getContentValuesForThumbnail(Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseModel;)Landroid/content/ContentValues;

    move-result-object p0

    goto :goto_1

    :cond_4
    invoke-direct {p0, p3}, Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseController;->getContentValuesForAll(Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseModel;)Landroid/content/ContentValues;

    move-result-object p0

    :goto_1
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    sget-object p2, Lcom/sec/android/app/sbrowser/media/history/common/MHConstants;->CONTENT_URI_MEDIA_HISTORY:Landroid/net/Uri;

    invoke-virtual {p1, p2, p0, v5, v1}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p0

    sget-object p1, Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseController;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "error: "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, p2, p1}, Landroidx/recyclerview/widget/P;->t(Ljava/lang/RuntimeException;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    const/4 p0, -0x1

    :goto_2
    if-ltz p0, :cond_5

    move v0, v4

    :cond_5
    :goto_3
    return v0
.end method

.method private updateMediaHistoryData(Landroid/content/Context;Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseModel;)Z
    .locals 1

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseController$UpdateType;->ALL:Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseController$UpdateType;

    invoke-direct {p0, p1, v0, p2}, Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseController;->update(Landroid/content/Context;Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseController$UpdateType;Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseModel;)Z

    move-result p0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method private updateMediaHistoryTitle(Landroid/content/Context;Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseModel;)V
    .locals 1

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseController$UpdateType;->TITLE:Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseController$UpdateType;

    invoke-direct {p0, p1, v0, p2}, Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseController;->update(Landroid/content/Context;Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseController$UpdateType;Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseModel;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method private updateTitleFromOgTag(Landroid/content/Context;Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseModel;)V
    .locals 4

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/utils/WebContentFetcher;->getInstance()Lcom/sec/android/app/sbrowser/common/utils/WebContentFetcher;

    move-result-object v0

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseModel;->getPageUrl()Ljava/lang/String;

    move-result-object v1

    new-instance v2, LM4/a;

    const/16 v3, 0x11

    invoke-direct {v2, p0, v3, p2, p1}, LM4/a;-><init>(Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/sbrowser/common/utils/WebContentFetcher;->fetchOgTitle(Ljava/lang/String;Lcom/sec/android/app/sbrowser/common/utils/WebContentFetcher$FetchContentCallback;)V

    return-void
.end method


# virtual methods
.method public deleteAllMediaHistoryData(Landroid/content/Context;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    sget-object v1, Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseController$DeleteType;->ALL:Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseController$DeleteType;

    const/4 v2, 0x0

    invoke-direct {p0, p1, v1, v2}, Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseController;->delete(Landroid/content/Context;Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseController$DeleteType;Ljava/util/ArrayList;)I

    move-result p0

    sget-object p1, Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseController;->TAG:Ljava/lang/String;

    const-string v1, "Deleted data : ["

    const-string v2, "]"

    invoke-static {p0, v1, v2, p1}, Landroidx/recyclerview/widget/P;->j(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, -0x1

    if-eq p0, p1, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public deleteMediaHistoryDataByIndex(Landroid/content/Context;Ljava/util/ArrayList;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList<",
            "Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseModel;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseController$DeleteType;->INDEX:Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseController$DeleteType;

    invoke-direct {p0, p1, v1, p2}, Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseController;->delete(Landroid/content/Context;Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseController$DeleteType;Ljava/util/ArrayList;)I

    move-result p0

    sget-object p1, Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseController;->TAG:Ljava/lang/String;

    const-string p2, "Deleted data : ["

    const-string v1, "]"

    invoke-static {p0, p2, v1, p1}, Landroidx/recyclerview/widget/P;->j(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, -0x1

    if-eq p0, p1, :cond_1

    const/4 v0, 0x1

    :cond_1
    :goto_0
    return v0
.end method

.method public deleteMediaHistoryDataByVisitTime(Landroid/content/Context;JJ)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual/range {p0 .. p5}, Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseController;->getMediaHistoryDataByVisitTime(Landroid/content/Context;JJ)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object p2

    invoke-direct {v1, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sget-object p2, Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseController$DeleteType;->INDEX:Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseController$DeleteType;

    invoke-direct {p0, p1, p2, v1}, Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseController;->delete(Landroid/content/Context;Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseController$DeleteType;Ljava/util/ArrayList;)I

    move-result p0

    sget-object p1, Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseController;->TAG:Ljava/lang/String;

    const-string p2, "Deleted data : ["

    const-string p3, "]"

    invoke-static {p0, p2, p3, p1}, Landroidx/recyclerview/widget/P;->j(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, -0x1

    if-eq p0, p1, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public deleteMediaHistoryDataIfNecessary(Landroid/content/Context;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseController$DeleteType;->LIMIT_SIZE:Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseController$DeleteType;

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseController;->delete(Landroid/content/Context;Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseController$DeleteType;Ljava/util/ArrayList;)I

    move-result p0

    sget-object p1, Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseController;->TAG:Ljava/lang/String;

    const-string v0, "Deleted data : ["

    const-string v1, "]"

    invoke-static {p0, v0, v1, p1}, Landroidx/recyclerview/widget/P;->j(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public getMediaHistoryData(Landroid/content/Context;)Ljava/util/concurrent/CopyOnWriteArrayList;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseModel;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseController$QueryType;->SIZE:Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseController$QueryType;

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseController;->query(Landroid/content/Context;Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseController$QueryType;Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseModel;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object p0

    return-object p0
.end method

.method public getMediaHistoryDataByVisitTime(Landroid/content/Context;JJ)Ljava/util/concurrent/CopyOnWriteArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "JJ)",
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseModel;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseController;->getMediaHistoryData(Landroid/content/Context;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object p0

    new-instance p1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseModel;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseModel;->getVisitDate()J

    move-result-wide v1

    cmp-long v1, v1, p2

    if-ltz v1, :cond_0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseModel;->getVisitDate()J

    move-result-wide v1

    cmp-long v1, v1, p4

    if-gtz v1, :cond_0

    invoke-virtual {p1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object p1
.end method

.method public insertMediaHistoryDataByAsync(Landroid/content/Context;Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseModel;)V
    .locals 3

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseController$MHDataBaseAsyncTask;

    sget-object v1, Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseController$AsyncTaskType;->INSERT:Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseController$AsyncTaskType;

    const/4 v2, 0x0

    invoke-direct {v0, p0, p1, v1, v2}, Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseController$MHDataBaseAsyncTask;-><init>(Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseController;Landroid/content/Context;Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseController$AsyncTaskType;I)V

    filled-new-array {p2}, [Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseModel;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseController;->updateTitleFromOgTag(Landroid/content/Context;Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseModel;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public requestUpdateHistory(Lcom/sec/terrace/content/browser/media/TerraceMediaPlayerManagerClient;Landroid/app/Activity;Lcom/sec/terrace/Terrace;)Z
    .locals 4

    sget-object v0, Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseController;->TAG:Ljava/lang/String;

    const-string v1, "onRequestUpdateHistory"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/sbrowser/media/ui/MediaImageManager;

    const/16 v2, 0x72

    invoke-static {p2}, Lcom/sec/android/app/sbrowser/media/common/MediaUtils;->getIdealMediaImageSize(Landroid/content/Context;)I

    move-result p2

    invoke-direct {v1, v2, p2}, Lcom/sec/android/app/sbrowser/media/ui/MediaImageManager;-><init>(II)V

    invoke-virtual {p1}, Lcom/sec/terrace/content/browser/media/TerraceMediaPlayerManagerClient;->getTitle()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const-string v3, ""

    if-eqz v2, :cond_1

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Lcom/sec/terrace/Terrace;->getTitle()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_0
    move-object p2, v3

    :cond_1
    :goto_0
    new-instance v2, Lcom/sec/android/app/sbrowser/media/common/MediaInfo;

    if-eqz p3, :cond_2

    invoke-virtual {p3}, Lcom/sec/terrace/Terrace;->getUrl()Ljava/lang/String;

    move-result-object p3

    goto :goto_1

    :cond_2
    move-object p3, v3

    :goto_1
    invoke-direct {v2, p1, p3, p2}, Lcom/sec/android/app/sbrowser/media/common/MediaInfo;-><init>(Lcom/sec/terrace/content/browser/media/TerraceMediaPlayerManagerClient;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/media/common/MediaInfo;->getDuration()I

    move-result p2

    const/16 p3, 0x3a98

    if-ge p2, p3, :cond_3

    const/4 p0, 0x0

    return p0

    :cond_3
    invoke-static {v2}, Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseModel;->createModel(Lcom/sec/android/app/sbrowser/media/common/MediaInfo;)Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseModel;

    move-result-object p2

    invoke-virtual {p1}, Lcom/sec/terrace/content/browser/media/TerraceMediaPlayerManagerClient;->getImages()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_4

    invoke-virtual {v1, p1}, Lcom/sec/android/app/sbrowser/media/ui/MediaImageManager;->getSelectedImageUrl(Ljava/util/List;)Ljava/lang/String;

    move-result-object v3

    :cond_4
    invoke-virtual {p0, v0, p2}, Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseController;->insertMediaHistoryDataByAsync(Landroid/content/Context;Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseModel;)V

    invoke-virtual {p0, v0, p2, v3}, Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseController;->updateThumbnailAsynchronously(Landroid/content/Context;Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseModel;Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0
.end method

.method public shouldUpdateHistory(Landroid/app/Activity;)Z
    .locals 1

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/media/common/MediaUtils;->isPrivacyMode(Landroid/app/Activity;)Z

    move-result p0

    const/4 p1, 0x0

    if-eqz p0, :cond_0

    sget-object p0, Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseController;->TAG:Ljava/lang/String;

    const-string v0, "[MM] Won\'t update video history in privacy mode."

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return p1

    :cond_0
    sget-object p0, Lcom/sec/android/app/sbrowser/media/common/MediaFeatureGlobalConfigUtils;->Companion:Lcom/sec/android/app/sbrowser/media/common/MediaFeatureGlobalConfigUtils$Companion;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/common/MediaFeatureGlobalConfigUtils$Companion;->isVideoHistorySupported()Z

    move-result p0

    if-nez p0, :cond_1

    sget-object p0, Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseController;->TAG:Ljava/lang/String;

    const-string v0, "No need to store the history if it is not enabled."

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return p1

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public updateMediaHistoryThumbnail(Landroid/content/Context;Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseModel;)V
    .locals 1

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseController$UpdateType;->THUMBNAIL:Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseController$UpdateType;

    invoke-direct {p0, p1, v0, p2}, Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseController;->update(Landroid/content/Context;Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseController$UpdateType;Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseModel;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method public updateThumbnailAsynchronously(Landroid/content/Context;Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseModel;Ljava/lang/String;)V
    .locals 1

    if-nez p2, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseController$1;

    invoke-direct {v0, p0, p3, p2, p1}, Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseController$1;-><init>(Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseController;Ljava/lang/String;Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseModel;Landroid/content/Context;)V

    invoke-static {p1, p3, v0}, Lcom/sec/android/app/sbrowser/media/history/common/MHThumbnailUtil;->updateThumbnailAsynchronously(Landroid/content/Context;Ljava/lang/String;Lcom/sec/android/app/sbrowser/media/history/common/MHThumbnailUtil$ThumbnailUtilDelegate;)V

    return-void
.end method
