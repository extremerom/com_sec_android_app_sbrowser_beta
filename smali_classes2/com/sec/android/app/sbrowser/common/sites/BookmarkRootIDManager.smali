.class public Lcom/sec/android/app/sbrowser/common/sites/BookmarkRootIDManager;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mHasPCBookmarks:Z

.field private mPCBookmarkBarId:J

.field private mPCOtherFolderId:J

.field private mRoot:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

.field private mRootSecret:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 12

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/common/sites/BookmarkRootIDManager;->mRoot:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

    sget-object v0, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants;->INVALID_BOOKMARK_ID:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/sec/android/app/sbrowser/common/sites/BookmarkRootIDManager;->mPCBookmarkBarId:J

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sec/android/app/sbrowser/common/sites/BookmarkRootIDManager;->mPCOtherFolderId:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/common/sites/BookmarkRootIDManager;->mHasPCBookmarks:Z

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f140260

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    sget-object p1, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$BookmarkSyncID;->SAMSUNG:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$BookmarkSyncID;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$BookmarkSyncID;->getNumVal()J

    move-result-wide v1

    sget-object v3, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$BookmarkType;->FOLDER:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$BookmarkType;

    sget-object p1, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$BookmarkSyncID;->MY_DEVICE:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$BookmarkSyncID;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$BookmarkSyncID;->getNumVal()J

    move-result-wide v6

    sget-object v9, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$AccountType;->SAMSUNG:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$AccountType;

    const-wide/16 v10, 0x0

    const-string v5, ""

    const/4 v8, 0x1

    invoke-static/range {v1 .. v11}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->create(JLcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$BookmarkType;Ljava/lang/String;Ljava/lang/String;JZLcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$AccountType;J)Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/common/sites/BookmarkRootIDManager;->mRootSecret:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/common/sites/BookmarkRootIDManager;->setBookmarkRoot()V

    return-void
.end method

.method public static synthetic a(Landroid/content/Context;)Lcom/sec/android/app/sbrowser/common/sites/BookmarkRootIDManager;
    .locals 0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/sites/BookmarkRootIDManager;->lambda$getInstance$0(Landroid/content/Context;)Lcom/sec/android/app/sbrowser/common/sites/BookmarkRootIDManager;

    move-result-object p0

    return-object p0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/sec/android/app/sbrowser/common/sites/BookmarkRootIDManager;
    .locals 2

    new-instance v0, Lcom/sec/android/app/sbrowser/common/account/b;

    const/4 v1, 0x2

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/sbrowser/common/account/b;-><init>(Landroid/content/Context;I)V

    const-class p0, Lcom/sec/android/app/sbrowser/common/sites/BookmarkRootIDManager;

    invoke-static {p0, v0}, Lcom/sec/android/app/sbrowser/common/singleton/SingletonFactory;->getOrCreate(Ljava/lang/Class;Lcom/sec/android/app/sbrowser/common/function/Supplier;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/sbrowser/common/sites/BookmarkRootIDManager;

    return-object p0
.end method

.method private static synthetic lambda$getInstance$0(Landroid/content/Context;)Lcom/sec/android/app/sbrowser/common/sites/BookmarkRootIDManager;
    .locals 1

    new-instance v0, Lcom/sec/android/app/sbrowser/common/sites/BookmarkRootIDManager;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/common/sites/BookmarkRootIDManager;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method private setBookmarkRoot()V
    .locals 13

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/application/ApplicationStatus;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f14025f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/common/sites/BookmarkRootIDManager;->mHasPCBookmarks:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$BookmarkSyncID;->MY_DEVICE:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$BookmarkSyncID;

    :goto_0
    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$BookmarkSyncID;->getNumVal()J

    move-result-wide v0

    move-wide v2, v0

    goto :goto_1

    :cond_0
    sget-object v0, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$BookmarkSyncID;->SAMSUNG:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$BookmarkSyncID;

    goto :goto_0

    :goto_1
    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/common/sites/BookmarkRootIDManager;->mHasPCBookmarks:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$BookmarkSyncID;->NONE:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$BookmarkSyncID;

    :goto_2
    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$BookmarkSyncID;->getNumVal()J

    move-result-wide v0

    move-wide v7, v0

    goto :goto_3

    :cond_1
    sget-object v0, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$BookmarkSyncID;->MY_DEVICE:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$BookmarkSyncID;

    goto :goto_2

    :goto_3
    sget-object v4, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$BookmarkType;->FOLDER:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$BookmarkType;

    sget-object v10, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$AccountType;->SAMSUNG:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$AccountType;

    const-wide/16 v11, 0x0

    const-string v6, ""

    const/4 v9, 0x1

    invoke-static/range {v2 .. v12}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->create(JLcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$BookmarkType;Ljava/lang/String;Ljava/lang/String;JZLcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$AccountType;J)Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/common/sites/BookmarkRootIDManager;->mRoot:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

    return-void
.end method


# virtual methods
.method public getBookmarkRoot(Landroid/net/Uri;)Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;
    .locals 2

    sget-object v0, Lcom/sec/android/app/sbrowser/common/constants/sites/SBrowserProviderConstants;->BOOKMARK_INTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/sites/BookmarkRootIDManager;->mRootSecret:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

    return-object p0

    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "BookmarkRootIDManager mBookmarkRootId id : "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/sites/BookmarkRootIDManager;->mRoot:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getId()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "BookmarkRootIDManager"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/sites/BookmarkRootIDManager;->mRoot:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

    return-object p0
.end method

.method public getBookmarkRootId(Landroid/net/Uri;)J
    .locals 0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/common/sites/BookmarkRootIDManager;->getBookmarkRoot(Landroid/net/Uri;)Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getId()J

    move-result-wide p0

    return-wide p0
.end method

.method public getPCBookmarkBarId()J
    .locals 2

    iget-wide v0, p0, Lcom/sec/android/app/sbrowser/common/sites/BookmarkRootIDManager;->mPCBookmarkBarId:J

    return-wide v0
.end method

.method public getPCOtherFolderId()J
    .locals 2

    iget-wide v0, p0, Lcom/sec/android/app/sbrowser/common/sites/BookmarkRootIDManager;->mPCOtherFolderId:J

    return-wide v0
.end method

.method public setOtherFolderId(J)V
    .locals 0

    iput-wide p1, p0, Lcom/sec/android/app/sbrowser/common/sites/BookmarkRootIDManager;->mPCOtherFolderId:J

    return-void
.end method

.method public setPCBookmarkCount(IZ)V
    .locals 0

    if-eqz p2, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/common/sites/BookmarkRootIDManager;->mHasPCBookmarks:Z

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/common/sites/BookmarkRootIDManager;->setBookmarkRoot()V

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

    iput-wide v0, p0, Lcom/sec/android/app/sbrowser/common/sites/BookmarkRootIDManager;->mPCBookmarkBarId:J

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getId()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sec/android/app/sbrowser/common/sites/BookmarkRootIDManager;->mPCOtherFolderId:J

    goto :goto_0

    :cond_2
    return-void

    :cond_3
    :goto_1
    sget-object p1, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants;->INVALID_BOOKMARK_ID:Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sec/android/app/sbrowser/common/sites/BookmarkRootIDManager;->mPCBookmarkBarId:J

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sec/android/app/sbrowser/common/sites/BookmarkRootIDManager;->mPCOtherFolderId:J

    return-void
.end method
