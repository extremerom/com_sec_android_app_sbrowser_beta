.class public Lcom/sec/android/app/sbrowser/common/sites/BookmarkWidgetRootManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static sInstance:Lcom/sec/android/app/sbrowser/common/sites/BookmarkWidgetRootManager;


# instance fields
.field private mHasPCBookmarks:Z

.field private mPCBookmarkBarId:J

.field private mPCOtherFolderId:J

.field private mRoot:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/common/sites/BookmarkWidgetRootManager;->mRoot:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

    sget-object v0, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants;->INVALID_BOOKMARK_ID:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/sec/android/app/sbrowser/common/sites/BookmarkWidgetRootManager;->mPCBookmarkBarId:J

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sec/android/app/sbrowser/common/sites/BookmarkWidgetRootManager;->mPCOtherFolderId:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/common/sites/BookmarkWidgetRootManager;->mHasPCBookmarks:Z

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/common/sites/BookmarkWidgetRootManager;->setBookmarkRoot(Landroid/content/Context;)V

    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/sec/android/app/sbrowser/common/sites/BookmarkWidgetRootManager;
    .locals 2

    const-class v0, Lcom/sec/android/app/sbrowser/common/sites/BookmarkWidgetRootManager;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/sec/android/app/sbrowser/common/sites/BookmarkWidgetRootManager;->sInstance:Lcom/sec/android/app/sbrowser/common/sites/BookmarkWidgetRootManager;

    if-nez v1, :cond_0

    new-instance v1, Lcom/sec/android/app/sbrowser/common/sites/BookmarkWidgetRootManager;

    invoke-direct {v1, p0}, Lcom/sec/android/app/sbrowser/common/sites/BookmarkWidgetRootManager;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/sec/android/app/sbrowser/common/sites/BookmarkWidgetRootManager;->sInstance:Lcom/sec/android/app/sbrowser/common/sites/BookmarkWidgetRootManager;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    sget-object p0, Lcom/sec/android/app/sbrowser/common/sites/BookmarkWidgetRootManager;->sInstance:Lcom/sec/android/app/sbrowser/common/sites/BookmarkWidgetRootManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method private setBookmarkRoot(Landroid/content/Context;)V
    .locals 12

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f14025f

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-boolean p1, p0, Lcom/sec/android/app/sbrowser/common/sites/BookmarkWidgetRootManager;->mHasPCBookmarks:Z

    if-eqz p1, :cond_0

    sget-object p1, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$BookmarkSyncID;->MY_DEVICE:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$BookmarkSyncID;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$BookmarkSyncID;->getNumVal()J

    move-result-wide v0

    :goto_0
    move-wide v1, v0

    goto :goto_1

    :cond_0
    sget-object p1, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$BookmarkSyncID;->SAMSUNG:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$BookmarkSyncID;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$BookmarkSyncID;->getNumVal()J

    move-result-wide v0

    goto :goto_0

    :goto_1
    iget-boolean p1, p0, Lcom/sec/android/app/sbrowser/common/sites/BookmarkWidgetRootManager;->mHasPCBookmarks:Z

    if-eqz p1, :cond_1

    sget-object p1, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$BookmarkSyncID;->NONE:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$BookmarkSyncID;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$BookmarkSyncID;->getNumVal()J

    move-result-wide v5

    :goto_2
    move-wide v6, v5

    goto :goto_3

    :cond_1
    sget-object p1, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$BookmarkSyncID;->MY_DEVICE:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$BookmarkSyncID;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$BookmarkSyncID;->getNumVal()J

    move-result-wide v5

    goto :goto_2

    :goto_3
    sget-object v3, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$BookmarkType;->FOLDER:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$BookmarkType;

    sget-object v9, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$AccountType;->SAMSUNG:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$AccountType;

    const-wide/16 v10, 0x0

    const-string v5, ""

    const/4 v8, 0x1

    invoke-static/range {v1 .. v11}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->create(JLcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$BookmarkType;Ljava/lang/String;Ljava/lang/String;JZLcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$AccountType;J)Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/common/sites/BookmarkWidgetRootManager;->mRoot:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

    return-void
.end method


# virtual methods
.method public getBookmarkRoot()Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/sites/BookmarkWidgetRootManager;->mRoot:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

    return-object p0
.end method

.method public getPCBookmarkBarId()J
    .locals 2

    iget-wide v0, p0, Lcom/sec/android/app/sbrowser/common/sites/BookmarkWidgetRootManager;->mPCBookmarkBarId:J

    return-wide v0
.end method

.method public getPCOtherFolderId()J
    .locals 2

    iget-wide v0, p0, Lcom/sec/android/app/sbrowser/common/sites/BookmarkWidgetRootManager;->mPCOtherFolderId:J

    return-wide v0
.end method

.method public setPCBookmarkCount(ILandroid/content/Context;)V
    .locals 0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/common/sites/BookmarkWidgetRootManager;->mHasPCBookmarks:Z

    invoke-direct {p0, p2}, Lcom/sec/android/app/sbrowser/common/sites/BookmarkWidgetRootManager;->setBookmarkRoot(Landroid/content/Context;)V

    return-void
.end method

.method public setPCFolderId(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_3

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getSYNC4()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    const-string v2, "PC_BOOKMARK_BAR"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getId()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sec/android/app/sbrowser/common/sites/BookmarkWidgetRootManager;->mPCBookmarkBarId:J

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getId()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sec/android/app/sbrowser/common/sites/BookmarkWidgetRootManager;->mPCOtherFolderId:J

    goto :goto_0

    :cond_2
    return-void

    :cond_3
    :goto_1
    sget-object p1, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants;->INVALID_BOOKMARK_ID:Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sec/android/app/sbrowser/common/sites/BookmarkWidgetRootManager;->mPCBookmarkBarId:J

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sec/android/app/sbrowser/common/sites/BookmarkWidgetRootManager;->mPCOtherFolderId:J

    return-void
.end method
