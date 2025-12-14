.class public Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/SBCHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/SBCHelper$BookmarkControllerDelegate;,
        Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/SBCHelper$ImageAsyncTask;
    }
.end annotation


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mActivityStatus:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$ActivityStatus;

.field mDelegate:Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/SBCHelper$BookmarkControllerDelegate;

.field private mImageAsyncTask:Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/SBCHelper$ImageAsyncTask;

.field private mRequestedUrlsSet:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mRootID:J

.field private mShareDataHandler:Landroid/os/Handler;

.field private mShareViaUrls:Ljava/lang/String;

.field private mShowProgress:Lcom/sec/android/app/sbrowser/common/sites/BookmarksProgressDialog;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/SBCHelper$BookmarkControllerDelegate;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/SBCHelper;->mActivity:Landroid/app/Activity;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/SBCHelper;->mDelegate:Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/SBCHelper$BookmarkControllerDelegate;

    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/SBCHelper;->mRequestedUrlsSet:Ljava/util/HashSet;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/SBCHelper;->createHandlerIfNeeded()V

    sget-object p1, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants;->INVALID_BOOKMARK_ID:Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/SBCHelper;->mRootID:J

    return-void
.end method

.method public static bridge synthetic a(Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/SBCHelper;)Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$ActivityStatus;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/SBCHelper;->mActivityStatus:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$ActivityStatus;

    return-object p0
.end method

.method public static bridge synthetic b(Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/SBCHelper;Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;Landroid/graphics/Bitmap;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/SBCHelper;->updateItemIcon(Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method private createHandlerIfNeeded()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/SBCHelper;->mShareDataHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Landroid/os/Handler;

    new-instance v1, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/SBCHelper$1;

    invoke-direct {v1, p0}, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/SBCHelper$1;-><init>(Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/SBCHelper;)V

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/SBCHelper;->mShareDataHandler:Landroid/os/Handler;

    return-void
.end method

.method private getBookmarkIdFromPreference()Ljava/lang/Long;
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/SBCHelper;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;->isSecretModeEnabled(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/SBCHelper;->mDelegate:Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/SBCHelper$BookmarkControllerDelegate;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/SBCHelper$BookmarkControllerDelegate;->getSharedPreference()Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-static {}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkQueryUtil;->getDefaultBookmarkId()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-string v2, "pref_show bookmark_folder_secret"

    invoke-interface {p0, v2, v0, v1}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/SBCHelper;->mDelegate:Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/SBCHelper$BookmarkControllerDelegate;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/SBCHelper$BookmarkControllerDelegate;->getSharedPreference()Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-static {}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkQueryUtil;->getDefaultBookmarkId()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-string v2, "pref_show bookmark_folder"

    invoke-interface {p0, v2, v0, v1}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method

.method private updateItemIcon(Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;Landroid/graphics/Bitmap;)V
    .locals 10

    const/4 v0, 0x1

    const/16 v1, 0x39

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    if-lt v2, v1, :cond_0

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    if-lt v2, v1, :cond_0

    invoke-static {p2}, Lcom/sec/android/app/sbrowser/common/utils/IconFetcher;->getByteArrayForBitmap(Landroid/graphics/Bitmap;)[B

    move-result-object v2

    if-eqz v2, :cond_0

    array-length v3, v2

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/SBCHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getUrl()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModificationUtil;->updateTouchIcon(Landroid/app/Activity;Ljava/lang/String;[B)V

    invoke-virtual {p1, v2}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->setTouchicon([B)V

    invoke-virtual {p1, v0}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->setIconRequested(Z)V

    :cond_0
    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getDominantColor()I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    if-ge v2, v1, :cond_1

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    if-ge v2, v1, :cond_1

    invoke-static {p2}, Lcom/sec/android/app/sbrowser/common/utils/IconFetcher;->getByteArrayForBitmap(Landroid/graphics/Bitmap;)[B

    move-result-object v7

    if-eqz v7, :cond_1

    array-length p2, v7

    if-eqz p2, :cond_1

    invoke-static {v7}, Lcom/sec/android/app/sbrowser/common/utils/ColorUtils;->getDominantColor([B)I

    move-result p2

    if-eqz p2, :cond_1

    if-eq p2, v3, :cond_1

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/SBCHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getId()J

    move-result-wide v5

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getDominantColor()I

    move-result v9

    move v8, p2

    invoke-static/range {v4 .. v9}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkUtil;->updateFavicon(Landroid/app/Activity;J[BII)V

    invoke-virtual {p1, p2}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->setDominantColor(I)V

    invoke-virtual {p1, v0}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->setIconRequested(Z)V

    :cond_1
    return-void
.end method


# virtual methods
.method public clearAsyncTask()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/SBCHelper;->mImageAsyncTask:Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/SBCHelper$ImageAsyncTask;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/AsyncTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/SBCHelper;->mImageAsyncTask:Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/SBCHelper$ImageAsyncTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/SBCHelper;->mImageAsyncTask:Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/SBCHelper$ImageAsyncTask;

    :cond_0
    return-void
.end method

.method public dismissProgress()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/SBCHelper;->mShowProgress:Lcom/sec/android/app/sbrowser/common/sites/BookmarksProgressDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/SBCHelper;->mShowProgress:Lcom/sec/android/app/sbrowser/common/sites/BookmarksProgressDialog;

    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    :cond_0
    return-void
.end method

.method public fillImages(I)V
    .locals 7

    if-ltz p1, :cond_5

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/SBCHelper;->mDelegate:Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/SBCHelper$BookmarkControllerDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/SBCHelper$BookmarkControllerDelegate;->getChildrenList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_2

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/SBCHelper;->clearAsyncTask()V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/SBCHelper;->mDelegate:Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/SBCHelper$BookmarkControllerDelegate;

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/SBCHelper$BookmarkControllerDelegate;->getChildrenList()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    move v2, v0

    move-object v3, v1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

    invoke-virtual {v4}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getUrl()Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x64

    if-le v2, v6, :cond_2

    goto :goto_1

    :cond_2
    iget-object v6, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/SBCHelper;->mRequestedUrlsSet:Ljava/util/HashSet;

    invoke-virtual {v6, v5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    invoke-virtual {p0, v4}, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/SBCHelper;->shouldRequestIcon(Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;)Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/utils/IconFetcher;->getInstance()Lcom/sec/android/app/sbrowser/common/utils/IconFetcher;

    move-result-object v3

    invoke-virtual {v3, v5, v1}, Lcom/sec/android/app/sbrowser/common/utils/IconFetcher;->requestIcon(Ljava/lang/String;Landroid/os/Handler;)V

    add-int/lit8 v2, v2, 0x1

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/SBCHelper;->mRequestedUrlsSet:Ljava/util/HashSet;

    invoke-virtual {v3, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    invoke-virtual {v4}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getUrl()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_3
    :goto_1
    if-eqz v3, :cond_4

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/utils/IconFetcher;->getInstance()Lcom/sec/android/app/sbrowser/common/utils/IconFetcher;

    move-result-object p1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/SBCHelper;->mDelegate:Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/SBCHelper$BookmarkControllerDelegate;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/SBCHelper$BookmarkControllerDelegate;->getHandler()Landroid/os/Handler;

    move-result-object p0

    const/16 v0, 0x10

    const/4 v1, 0x1

    invoke-virtual {p1, v3, v1, v0, p0}, Lcom/sec/android/app/sbrowser/common/utils/IconFetcher;->requestIcon(Ljava/lang/String;IILandroid/os/Handler;)V

    goto :goto_2

    :cond_4
    new-instance p1, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/SBCHelper$ImageAsyncTask;

    invoke-direct {p1, p0, v0}, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/SBCHelper$ImageAsyncTask;-><init>(Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/SBCHelper;I)V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/SBCHelper;->mImageAsyncTask:Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/SBCHelper$ImageAsyncTask;

    new-array p0, v0, [Ljava/lang/Void;

    invoke-virtual {p1, p0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_5
    :goto_2
    return-void
.end method

.method public getMoveMessage(Ljava/util/List;Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;Ljava/util/List;Ljava/util/List;I)Ljava/lang/String;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;",
            "Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/util/List<",
            "Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$BookmarkType;",
            ">;I)",
            "Ljava/lang/String;"
        }
    .end annotation

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/SBCHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getId()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getGUID()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, v1, v2, p2}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkStringUtil;->getUpdatedStrings(Landroid/content/Context;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/16 v3, 0x64

    if-lt v0, v3, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/SBCHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v0

    if-ne v0, v2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, v3

    invoke-static {v2, v0, p2}, LB/e;->n(IILjava/lang/String;)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_0
    const/16 v0, 0x63

    invoke-virtual {p2, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    :goto_0
    invoke-static {p2}, LB/e;->r(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/SBCHelper;->mActivity:Landroid/app/Activity;

    const v3, 0x7f140271

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v3, 0x2

    sub-int/2addr v0, v3

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v4

    move v5, v1

    move v6, v3

    move v3, v5

    :goto_1
    if-ge v1, v4, :cond_5

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v7

    if-ge v6, v7, :cond_5

    invoke-interface {p3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-interface {p1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    if-ne v7, v8, :cond_3

    invoke-interface {p4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    sget-object v8, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$BookmarkType;->FOLDER:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$BookmarkType;

    if-ne v7, v8, :cond_2

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_2
    add-int/lit8 v3, v3, 0x1

    :goto_2
    add-int/lit8 v6, v6, 0x1

    :cond_3
    if-eqz v5, :cond_4

    if-eqz v3, :cond_4

    goto :goto_3

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_5
    :goto_3
    if-eqz v5, :cond_7

    if-eqz v3, :cond_7

    if-lez p5, :cond_6

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/SBCHelper;->mActivity:Landroid/app/Activity;

    const p1, 0x7f14026c

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_4

    :cond_6
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/SBCHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f120004

    invoke-virtual {p0, p1, v0}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_4

    :cond_7
    if-eqz v5, :cond_b

    if-le v5, v2, :cond_9

    if-lez p5, :cond_8

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/SBCHelper;->mActivity:Landroid/app/Activity;

    const p1, 0x7f14026b

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_4

    :cond_8
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/SBCHelper;->mActivity:Landroid/app/Activity;

    const p1, 0x7f14026a

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_4

    :cond_9
    if-lez p5, :cond_a

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/SBCHelper;->mActivity:Landroid/app/Activity;

    const p1, 0x7f140269

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_4

    :cond_a
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/SBCHelper;->mActivity:Landroid/app/Activity;

    const p1, 0x7f140268

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_4

    :cond_b
    if-le v3, v2, :cond_d

    if-lez p5, :cond_c

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/SBCHelper;->mActivity:Landroid/app/Activity;

    const p1, 0x7f140266

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_4

    :cond_c
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/SBCHelper;->mActivity:Landroid/app/Activity;

    const p1, 0x7f140265

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_4

    :cond_d
    if-lez p5, :cond_e

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/SBCHelper;->mActivity:Landroid/app/Activity;

    const p1, 0x7f140264

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_4

    :cond_e
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/SBCHelper;->mActivity:Landroid/app/Activity;

    const p1, 0x7f140263

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    :goto_4
    return-object p0
.end method

.method public isOrderChanged(Ljava/util/List;Ljava/util/List;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;",
            ">;",
            "Ljava/util/List<",
            "Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;",
            ">;)Z"
        }
    .end annotation

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p0

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, p0, :cond_1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getId()J

    move-result-wide v2

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

    invoke-virtual {v4}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getId()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return v0
.end method

.method public isShowingProgress()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/SBCHelper;->mShowProgress:Lcom/sec/android/app/sbrowser/common/sites/BookmarksProgressDialog;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/app/Dialog;->isShowing()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    if-nez p3, :cond_0

    return-void

    :cond_0
    const/16 v0, 0xb

    if-ne p1, v0, :cond_3

    const/4 p1, -0x1

    if-eq p2, p1, :cond_1

    return-void

    :cond_1
    const-string v0, "bookmark_toast_message"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    if-nez p3, :cond_2

    return-void

    :cond_2
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/SBCHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    const v0, 0x1020002

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    invoke-static {p0, p3, p1, p1}, LH6/o;->i(Landroid/view/View;Ljava/lang/CharSequence;II)LH6/o;

    move-result-object p0

    invoke-virtual {p0}, LH6/o;->l()V

    :cond_3
    const/16 p0, 0x80

    if-ne p2, p0, :cond_4

    const-string p0, "SBCHelper"

    const-string p1, "Bookmark added"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    return-void
.end method

.method public onDestroy()V
    .locals 2

    const-string v0, "SBCHelper"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$ActivityStatus;->FINISHED:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$ActivityStatus;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/SBCHelper;->mActivityStatus:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$ActivityStatus;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/SBCHelper;->mRequestedUrlsSet:Ljava/util/HashSet;

    return-void
.end method

.method public prefsHaveValue(J)Z
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/SBCHelper;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;->isSecretModeEnabled(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/SBCHelper;->mDelegate:Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/SBCHelper$BookmarkControllerDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/SBCHelper$BookmarkControllerDelegate;->getSharedPreference()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "pref_show bookmark_folder_secret"

    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide p1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/SBCHelper;->mDelegate:Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/SBCHelper$BookmarkControllerDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/SBCHelper$BookmarkControllerDelegate;->getSharedPreference()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "pref_show bookmark_folder"

    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide p1

    :goto_0
    iget-wide v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/SBCHelper;->mRootID:J

    cmp-long p0, p1, v0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public runImageAsyncTask()V
    .locals 2

    new-instance v0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/SBCHelper$ImageAsyncTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/SBCHelper$ImageAsyncTask;-><init>(Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/SBCHelper;I)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/SBCHelper;->mImageAsyncTask:Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/SBCHelper$ImageAsyncTask;

    new-array p0, v1, [Ljava/lang/Void;

    invoke-virtual {v0, p0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public setBookmarkParent(Z)J
    .locals 5

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/SBCHelper;->getBookmarkIdFromPreference()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    sget-object v3, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$BookmarkSyncID;->MY_DEVICE:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$BookmarkSyncID;

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$BookmarkSyncID;->getNumVal()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/SBCHelper;->mRootID:J

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    sget-object v0, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$BookmarkSyncID;->SAMSUNG:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$BookmarkSyncID;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$BookmarkSyncID;->getNumVal()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    :cond_0
    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/SBCHelper;->mActivity:Landroid/app/Activity;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkQueryUtil;->getBookmarkBarId(Landroid/app/Activity;)J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    return-wide p0
.end method

.method public setOnClickForSearchItem(Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem;)V
    .locals 7

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/SBCHelper;->mActivity:Landroid/app/Activity;

    if-eqz v0, :cond_3

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {v0}, Lw2/F;->c(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants;->PREF_SFINDER_BOOKMARK_UNSET:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-string v4, "perf_show bookmark_sfinder"

    invoke-interface {v0, v4, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    sget-object v5, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants;->PREF_SFINDER_BOOKMARK_SET:Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    cmp-long v2, v2, v5

    if-nez v2, :cond_1

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-interface {v0, v4, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/SBCHelper;->mActivity:Landroid/app/Activity;

    const-class v2, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem;->getUrl()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/SBCHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/SBCHelper;->mDelegate:Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/SBCHelper$BookmarkControllerDelegate;

    invoke-interface {v0, p1}, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/SBCHelper$BookmarkControllerDelegate;->isFolderItem(Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/SBCHelper;->mDelegate:Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/SBCHelper$BookmarkControllerDelegate;

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/SBCHelper$BookmarkControllerDelegate;->onFolderItemSelected(Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem;)V

    goto :goto_0

    :cond_2
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "url"

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem;->getUrl()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/SBCHelper;->mActivity:Landroid/app/Activity;

    const/16 v1, 0x7f

    invoke-virtual {p1, v1, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/SBCHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_3
    :goto_0
    return-void
.end method

.method public setPrefsToRoot()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/SBCHelper;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;->isSecretModeEnabled(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/SBCHelper;->mDelegate:Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/SBCHelper$BookmarkControllerDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/SBCHelper$BookmarkControllerDelegate;->getSharedPreference()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/SBCHelper;->mActivity:Landroid/app/Activity;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkQueryUtil;->getBookmarkRoot(Landroid/content/Context;)Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getId()J

    move-result-wide v1

    const-string p0, "pref_show bookmark_folder_secret"

    invoke-interface {v0, p0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/SBCHelper;->mDelegate:Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/SBCHelper$BookmarkControllerDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/SBCHelper$BookmarkControllerDelegate;->getSharedPreference()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/SBCHelper;->mActivity:Landroid/app/Activity;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkQueryUtil;->getBookmarkRoot(Landroid/content/Context;)Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getId()J

    move-result-wide v1

    const-string p0, "pref_show bookmark_folder"

    invoke-interface {v0, p0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :goto_0
    return-void
.end method

.method public setRootId(J)V
    .locals 0

    iput-wide p1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/SBCHelper;->mRootID:J

    return-void
.end method

.method public setSitesActivity(Landroid/app/Activity;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/SBCHelper;->mActivity:Landroid/app/Activity;

    return-void
.end method

.method public setUpDataForSharedUrls(Ljava/util/List;Lcom/google/common/collect/I;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;",
            ">;",
            "Lcom/google/common/collect/I;",
            ")V"
        }
    .end annotation

    if-eqz p1, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    invoke-virtual {v1, p1}, Ljava/util/LinkedList;->addAll(Ljava/util/Collection;)Z

    const/4 p1, 0x0

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v1}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getType()Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$BookmarkType;

    move-result-object v3

    sget-object v4, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$BookmarkType;->URL:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$BookmarkType;

    if-ne v3, v4, :cond_1

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getTitle()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\n"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x4e20

    if-le v2, v3, :cond_0

    goto :goto_1

    :cond_1
    if-eqz p2, :cond_0

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {p2, v2}, Lcom/google/common/collect/I;->get(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_2
    :goto_1
    iput-object p1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/SBCHelper;->mShareViaUrls:Ljava/lang/String;

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/SBCHelper;->mShareDataHandler:Landroid/os/Handler;

    sget-object p2, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$Messages;->BOOKMARK_SHARE_DATA_PREPARE:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$Messages;

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$Messages;->getValue()I

    move-result p2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/SBCHelper;->mShareViaUrls:Ljava/lang/String;

    invoke-static {p1, p2, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/SBCHelper;->mShareDataHandler:Landroid/os/Handler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_3
    return-void
.end method

.method public shouldHandleNavigation(Z)Z
    .locals 6

    const/4 v0, 0x1

    if-nez p1, :cond_0

    return v0

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/SBCHelper;->getBookmarkIdFromPreference()Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/SBCHelper;->mRootID:J

    cmp-long p1, v1, v3

    if-eqz p1, :cond_3

    const-string p1, "SBCHelper"

    const-string v3, "Path retained already"

    invoke-static {p1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/SBCHelper;->mDelegate:Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/SBCHelper$BookmarkControllerDelegate;

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/SBCHelper$BookmarkControllerDelegate;->getFolderNavigation()Lcom/sec/android/app/sbrowser/sites/bookmark/controller/BookmarkFolderNavigation;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/BookmarkFolderNavigation;->size()I

    move-result p1

    const/4 v3, 0x0

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/SBCHelper;->mDelegate:Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/SBCHelper$BookmarkControllerDelegate;

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/SBCHelper$BookmarkControllerDelegate;->getFolderNavigation()Lcom/sec/android/app/sbrowser/sites/bookmark/controller/BookmarkFolderNavigation;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/BookmarkFolderNavigation;->getTop()Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkFolderNavigationItem;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkFolderNavigationItem;->getId()J

    move-result-wide v4

    cmp-long p1, v4, v1

    if-nez p1, :cond_1

    return v3

    :cond_1
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/SBCHelper;->mDelegate:Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/SBCHelper$BookmarkControllerDelegate;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/SBCHelper$BookmarkControllerDelegate;->getFolderNavigation()Lcom/sec/android/app/sbrowser/sites/bookmark/controller/BookmarkFolderNavigation;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/BookmarkFolderNavigation;->size()I

    move-result p0

    if-le p0, v0, :cond_2

    return v0

    :cond_2
    return v3

    :cond_3
    return v0
.end method

.method public shouldRequestIcon(Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;)Z
    .locals 1

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getType()Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$BookmarkType;

    move-result-object p0

    sget-object v0, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$BookmarkType;->URL:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$BookmarkType;

    if-ne p0, v0, :cond_0

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->isIconAvailable()Z

    move-result p0

    if-nez p0, :cond_0

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->isIconRequested()Z

    move-result p0

    if-nez p0, :cond_0

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getDominantColor()I

    move-result p0

    const/4 p1, -0x1

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public showDndMoveFailureToast(Landroid/os/Message;)V
    .locals 3

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/utils/Objects;->uncheckedCast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkMoveInfo;

    iget-object v0, p1, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkMoveInfo;->failure:Ljava/util/ArrayList;

    iget-object p1, p1, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkMoveInfo;->duplicate:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 v1, -0x1

    const v2, 0x1020002

    if-ne v0, p1, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/SBCHelper;->mActivity:Landroid/app/Activity;

    const p1, 0x7f140760

    invoke-static {p0, v2, p1, v1}, Lcom/sec/android/app/sbrowser/autofill/password/k;->q(Landroid/app/Activity;III)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/SBCHelper;->mActivity:Landroid/app/Activity;

    const p1, 0x7f140f4d

    invoke-static {p0, v2, p1, v1}, Lcom/sec/android/app/sbrowser/autofill/password/k;->q(Landroid/app/Activity;III)V

    :goto_0
    return-void
.end method

.method public showProgress()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/SBCHelper;->mShowProgress:Lcom/sec/android/app/sbrowser/common/sites/BookmarksProgressDialog;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sec/android/app/sbrowser/common/sites/BookmarksProgressDialog;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/SBCHelper;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/sec/android/app/sbrowser/common/sites/BookmarksProgressDialog;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/SBCHelper;->mShowProgress:Lcom/sec/android/app/sbrowser/common/sites/BookmarksProgressDialog;

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/SBCHelper;->mShowProgress:Lcom/sec/android/app/sbrowser/common/sites/BookmarksProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/SBCHelper;->mShowProgress:Lcom/sec/android/app/sbrowser/common/sites/BookmarksProgressDialog;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/SBCHelper;->mActivity:Landroid/app/Activity;

    const v2, 0x7f140f57

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/SBCHelper;->mShowProgress:Lcom/sec/android/app/sbrowser/common/sites/BookmarksProgressDialog;

    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method public startShareUrlActivity()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/SBCHelper;->mShareViaUrls:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x4e20

    if-ge v0, v1, :cond_0

    new-instance v0, Lcom/sec/android/app/sbrowser/utils/ShareHelper$IntentBuilder;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/SBCHelper;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/sec/android/app/sbrowser/utils/ShareHelper$IntentBuilder;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/SBCHelper;->mShareViaUrls:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/sbrowser/utils/ShareHelper$IntentBuilder;->chooserIntent(Ljava/lang/String;Ljava/lang/String;)Lcom/sec/android/app/sbrowser/utils/ShareHelper$IntentBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/utils/ShareHelper$IntentBuilder;->bringToFront()Lcom/sec/android/app/sbrowser/utils/ShareHelper$IntentBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/utils/ShareHelper$IntentBuilder;->build()Landroid/content/Intent;

    move-result-object v0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/SBCHelper;->mActivity:Landroid/app/Activity;

    invoke-static {p0, v0}, Lcom/sec/android/app/sbrowser/common/utils/LargeScreenUtil;->startActivityShare(Landroid/app/Activity;Landroid/content/Intent;)V

    goto :goto_1

    :catch_0
    move-exception p0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/SBCHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    const v0, 0x1020002

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    const v0, 0x7f140f5c

    const/4 v1, -0x1

    invoke-static {v0, v1, p0}, LH6/o;->h(IILandroid/view/View;)LH6/o;

    move-result-object p0

    invoke-virtual {p0}, LH6/o;->l()V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Share : There is no Share Activity "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "SBCHelper"

    invoke-static {p0, v0, v1}, Landroidx/recyclerview/widget/P;->A(Landroid/content/ActivityNotFoundException;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method public storeBookmarkId(Landroid/content/SharedPreferences;Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;)V
    .locals 2

    if-nez p2, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/SBCHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lw2/F;->c(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    :cond_1
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/SBCHelper;->mActivity:Landroid/app/Activity;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;->isSecretModeEnabled(Landroid/app/Activity;)Z

    move-result p0

    if-eqz p0, :cond_2

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string p1, "pref_show bookmark_folder_secret"

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getId()J

    move-result-wide v0

    invoke-interface {p0, p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0

    :cond_2
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string p1, "pref_show bookmark_folder"

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getId()J

    move-result-wide v0

    invoke-interface {p0, p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :goto_0
    return-void
.end method
