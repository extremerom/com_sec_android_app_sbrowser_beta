.class public Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/SBCHelper$BookmarkControllerDelegate;


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mActivityStatus:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$ActivityStatus;

.field private mAncestorsList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;",
            ">;"
        }
    .end annotation
.end field

.field private mBackOp:Z

.field private mBookmarkDbListener:Lcom/sec/android/app/sbrowser/common/sites/BookmarkNotifier$BookmarkDbListener;

.field private mBookmarkFolderNavigation:Lcom/sec/android/app/sbrowser/sites/bookmark/controller/BookmarkFolderNavigation;

.field private mBookmarkHeirarchy:Lcom/google/common/collect/I;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/I;"
        }
    .end annotation
.end field

.field private mBookmarkListListener:Lcom/sec/android/app/sbrowser/sites/bookmark/utils/CreateBookmarkFolderAlertUtil$BookmarkListListener;

.field private mChildrenList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;",
            ">;"
        }
    .end annotation
.end field

.field private mCreateBookmarkFolderAlertUtil:Lcom/sec/android/app/sbrowser/sites/bookmark/utils/CreateBookmarkFolderAlertUtil;

.field private mCurrentParent:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

.field private mDeleteBookmarkCount:I

.field private mDialogHelper:Lcom/sec/android/app/sbrowser/sites/bookmark/utils/EditFolderDialogHelper;

.field private mEditBookmarkItem:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

.field private mFolderChildrenList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;",
            ">;"
        }
    .end annotation
.end field

.field private mFolderPersist:Z

.field private final mHandler:Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksHandler;

.field private mHelper:Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/SBCHelper;

.field private mInitComplete:Z

.field private mIntentLaunched:Z

.field private mIsFolderRightClick:Z

.field private mIsFolderSearchClick:Z

.field private mIsMovePerformed:Z

.field private mIsOnFirstLaunch:Z

.field private mIsSecretMode:Z

.field private mIsSecureDataUnlocked:Z

.field private mLock:Ljava/lang/Object;

.field private mModel:Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModel;

.field private mModelListener:Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModelListener;

.field private mOriginalChildObjects:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;",
            ">;"
        }
    .end annotation
.end field

.field private mRootItem:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

.field private mSelectedParent:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

.field private mSharedPreferences:Landroid/content/SharedPreferences;

.field private mShouldRefreshView:Z

.field private mShowBookmarkId:Ljava/lang/Long;

.field private mShowDeleteVi:Z

.field private mSkipExitCABMode:Z

.field private mSortTypeChangedListener:Lcom/sec/android/app/sbrowser/common/sites/BookmarkSortTypeChangedNotifier$BookmarkSortChangedListener;

.field private mTargetItem:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

.field private mView:Lcom/sec/android/app/sbrowser/sites/bookmark/model/show_bookmarks/IShowBookmarksView;

.field private mViewListener:Lcom/sec/android/app/sbrowser/sites/bookmark/model/show_bookmarks/ShowBookmarksViewListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->mIsOnFirstLaunch:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->mInitComplete:Z

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->mBackOp:Z

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->mFolderPersist:Z

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->mLock:Ljava/lang/Object;

    new-instance v0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController$1;-><init>(Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->mModelListener:Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModelListener;

    new-instance v0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController$2;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController$2;-><init>(Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->mSortTypeChangedListener:Lcom/sec/android/app/sbrowser/common/sites/BookmarkSortTypeChangedNotifier$BookmarkSortChangedListener;

    new-instance v0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController$3;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController$3;-><init>(Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->mBookmarkListListener:Lcom/sec/android/app/sbrowser/sites/bookmark/utils/CreateBookmarkFolderAlertUtil$BookmarkListListener;

    new-instance v0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksHandler;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksHandler;-><init>(Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->mHandler:Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksHandler;

    new-instance v0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController$4;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController$4;-><init>(Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->mBookmarkDbListener:Lcom/sec/android/app/sbrowser/common/sites/BookmarkNotifier$BookmarkDbListener;

    sget-object v0, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$ActivityStatus;->FOREGROUND:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$ActivityStatus;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->mActivityStatus:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$ActivityStatus;

    return-void
.end method

.method public static synthetic a(Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->lambda$handleBackMessage$1()V

    return-void
.end method

.method public static synthetic b(Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->lambda$setSearchData$0()V

    return-void
.end method

.method public static synthetic c(Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;Ljava/lang/Integer;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->lambda$handleHistoryNavigation$4(Ljava/lang/Integer;)V

    return-void
.end method

.method private clearListAfterDND()V
    .locals 3

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->mTargetItem:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->mViewListener:Lcom/sec/android/app/sbrowser/sites/bookmark/model/show_bookmarks/ShowBookmarksViewListener;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/show_bookmarks/ShowBookmarksViewListener;->setNonEditableItems(I)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->mViewListener:Lcom/sec/android/app/sbrowser/sites/bookmark/model/show_bookmarks/ShowBookmarksViewListener;

    invoke-interface {v1, v0}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/show_bookmarks/ShowBookmarksViewListener;->setListOfObjectsIds(Ljava/util/List;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->mViewListener:Lcom/sec/android/app/sbrowser/sites/bookmark/model/show_bookmarks/ShowBookmarksViewListener;

    invoke-interface {p0, v0}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/show_bookmarks/ShowBookmarksViewListener;->setListOfObjectTypes(Ljava/util/List;)V

    return-void
.end method

.method public static synthetic d(Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->lambda$handleBookmarkEditSuccess$3()V

    return-void
.end method

.method private dismissCreateFolderDialogBox()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->mCreateBookmarkFolderAlertUtil:Lcom/sec/android/app/sbrowser/sites/bookmark/utils/CreateBookmarkFolderAlertUtil;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/sites/bookmark/utils/CreateBookmarkFolderAlertUtil;->hideCreateFolderDialog()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->mCreateBookmarkFolderAlertUtil:Lcom/sec/android/app/sbrowser/sites/bookmark/utils/CreateBookmarkFolderAlertUtil;

    :cond_0
    return-void
.end method

.method public static synthetic e(Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;Ljava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->lambda$handleHistoryNavigation$5(Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic f(Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;Landroid/content/Context;ZZ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->lambda$initializeBookmarkData$2(Landroid/content/Context;ZZ)V

    return-void
.end method

.method public static bridge synthetic g(Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;)Landroid/app/Activity;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->mActivity:Landroid/app/Activity;

    return-object p0
.end method

.method private getViewListener()Lcom/sec/android/app/sbrowser/sites/bookmark/model/show_bookmarks/ShowBookmarksViewListener;
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->mViewListener:Lcom/sec/android/app/sbrowser/sites/bookmark/model/show_bookmarks/ShowBookmarksViewListener;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksViewListenerImpl;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->mModel:Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModel;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->mView:Lcom/sec/android/app/sbrowser/sites/bookmark/model/show_bookmarks/IShowBookmarksView;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->mBookmarkListListener:Lcom/sec/android/app/sbrowser/sites/bookmark/utils/CreateBookmarkFolderAlertUtil$BookmarkListListener;

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksViewListenerImpl;-><init>(Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModel;Lcom/sec/android/app/sbrowser/sites/bookmark/model/show_bookmarks/IShowBookmarksView;Lcom/sec/android/app/sbrowser/sites/bookmark/utils/CreateBookmarkFolderAlertUtil$BookmarkListListener;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->mViewListener:Lcom/sec/android/app/sbrowser/sites/bookmark/model/show_bookmarks/ShowBookmarksViewListener;

    return-object v0
.end method

.method public static bridge synthetic h(Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;)Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$ActivityStatus;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->mActivityStatus:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$ActivityStatus;

    return-object p0
.end method

.method private handleBackMessage()V
    .locals 4

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/c;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/c;-><init>(Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;I)V

    const-wide/16 v2, 0x190

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private handleBookmarkAddSuccess(Ljava/lang/Object;)V
    .locals 9

    check-cast p1, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkAddInfo;

    iget-object v0, p1, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkAddInfo;->item:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

    invoke-static {}, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/BookmarkFolderNavigation;->isFeatureEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->mBookmarkFolderNavigation:Lcom/sec/android/app/sbrowser/sites/bookmark/controller/BookmarkFolderNavigation;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getId()J

    move-result-wide v3

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getParentId()J

    move-result-wide v5

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getTitle()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual/range {v2 .. v8}, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/BookmarkFolderNavigation;->handleFolderAdded(JJLjava/lang/String;Z)V

    :cond_0
    iget-boolean v1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->mIsSecretMode:Z

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->isPrivate()Z

    move-result v2

    if-eq v1, v2, :cond_1

    return-void

    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->mCurrentParent:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getId()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    const/4 v2, 0x0

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->mChildrenList:Ljava/util/List;

    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->mModel:Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModel;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->mCurrentParent:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getId()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModel;->getAllAncestorBookmarkItems(Ljava/lang/Long;)V

    goto/16 :goto_1

    :cond_2
    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getParentId()J

    move-result-wide v3

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->mCurrentParent:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getId()J

    move-result-wide v5

    cmp-long v1, v3, v5

    if-nez v1, :cond_9

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getType()Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$BookmarkType;

    move-result-object v1

    sget-object v3, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$BookmarkType;->URL:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$BookmarkType;

    if-ne v1, v3, :cond_8

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->mView:Lcom/sec/android/app/sbrowser/sites/bookmark/model/show_bookmarks/IShowBookmarksView;

    sget-object v3, Lcom/sec/android/app/sbrowser/common/sites/bookmark/model/show_bookmarks/ShowBookmarksConstants$ShowBookmarkLayout;->SHOW_BOOKMARKS:Lcom/sec/android/app/sbrowser/common/sites/bookmark/model/show_bookmarks/ShowBookmarksConstants$ShowBookmarkLayout;

    invoke-interface {v1, v3}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/show_bookmarks/IShowBookmarksView;->setNoBookmarksLayout(Lcom/sec/android/app/sbrowser/common/sites/bookmark/model/show_bookmarks/ShowBookmarksConstants$ShowBookmarkLayout;)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->mChildrenList:Ljava/util/List;

    if-nez v1, :cond_3

    return-void

    :cond_3
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->clone(Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;)Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

    move-result-object v1

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->mChildrenList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_4
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

    invoke-virtual {v4}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getType()Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$BookmarkType;

    move-result-object v5

    sget-object v6, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$BookmarkType;->URL:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$BookmarkType;

    if-ne v5, v6, :cond_4

    invoke-virtual {v4}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getUrl()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_5

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "NULL account type"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getAccountType()Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$AccountType;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "ShowBookmarksController"

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_5
    invoke-virtual {v4}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getUrl()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getUrl()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-virtual {v4, v2}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->setIconRequested(Z)V

    goto :goto_0

    :cond_6
    iget-object v3, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->mChildrenList:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->mOriginalChildObjects:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->mView:Lcom/sec/android/app/sbrowser/sites/bookmark/model/show_bookmarks/IShowBookmarksView;

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/show_bookmarks/IShowBookmarksView;->updateChildren()V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->mView:Lcom/sec/android/app/sbrowser/sites/bookmark/model/show_bookmarks/IShowBookmarksView;

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/show_bookmarks/IShowBookmarksView;->updateActionMode()V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->mHelper:Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/SBCHelper;

    if-eqz v1, :cond_7

    invoke-virtual {v1, v2}, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/SBCHelper;->fillImages(I)V

    :cond_7
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->invalidateOptionsMenu()V

    goto :goto_1

    :cond_8
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->mModel:Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModel;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->mCurrentParent:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getId()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModel;->getBookmarkChildren(Ljava/lang/Long;)V

    :cond_9
    :goto_1
    iget-boolean v1, p1, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkAddInfo;->isDND:Z

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->mView:Lcom/sec/android/app/sbrowser/sites/bookmark/model/show_bookmarks/IShowBookmarksView;

    invoke-interface {v1, v0}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/show_bookmarks/IShowBookmarksView;->moveItemsToFolder(Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;)V

    :cond_a
    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getType()Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$BookmarkType;

    move-result-object v1

    sget-object v3, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$BookmarkType;->FOLDER:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$BookmarkType;

    if-ne v1, v3, :cond_c

    iget-boolean p1, p1, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkAddInfo;->isDND:Z

    if-nez p1, :cond_c

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->mActivity:Landroid/app/Activity;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->mModel:Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModel;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModelBase;->getBookmarkRoot()Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getId()J

    move-result-wide v3

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getParentId()J

    move-result-wide v5

    cmp-long p0, v3, v5

    if-nez p0, :cond_b

    const/4 v2, 0x1

    :cond_b
    invoke-static {v0, p1, v2}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkUtil;->showSuccessToast(Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;Landroid/app/Activity;Z)V

    :cond_c
    return-void
.end method

.method private handleBookmarkDeleteSuccess(Ljava/lang/Object;)V
    .locals 9

    check-cast p1, Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->mCreateBookmarkFolderAlertUtil:Lcom/sec/android/app/sbrowser/sites/bookmark/utils/CreateBookmarkFolderAlertUtil;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/sites/bookmark/utils/CreateBookmarkFolderAlertUtil;->hideCreateFolderDialog()V

    :cond_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/BookmarkFolderNavigation;->isFeatureEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->mBookmarkFolderNavigation:Lcom/sec/android/app/sbrowser/sites/bookmark/controller/BookmarkFolderNavigation;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/BookmarkFolderNavigation;->markForDelete(Ljava/util/ArrayList;)V

    :cond_1
    iget v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->mDeleteBookmarkCount:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-lez v0, :cond_4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->mHelper:Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/SBCHelper;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/SBCHelper;->dismissProgress()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->mChildrenList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget v3, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->mDeleteBookmarkCount:I

    sub-int/2addr v0, v3

    if-nez v0, :cond_2

    iput v2, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->mDeleteBookmarkCount:I

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->mChildrenList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->mOriginalChildObjects:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->mView:Lcom/sec/android/app/sbrowser/sites/bookmark/model/show_bookmarks/IShowBookmarksView;

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/show_bookmarks/IShowBookmarksView;->exitCABMode()V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->mView:Lcom/sec/android/app/sbrowser/sites/bookmark/model/show_bookmarks/IShowBookmarksView;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->mChildrenList:Ljava/util/List;

    invoke-interface {p1, v0}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/show_bookmarks/IShowBookmarksView;->setChildren(Ljava/util/List;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->mView:Lcom/sec/android/app/sbrowser/sites/bookmark/model/show_bookmarks/IShowBookmarksView;

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/show_bookmarks/IShowBookmarksView;->updateChildren()V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->mView:Lcom/sec/android/app/sbrowser/sites/bookmark/model/show_bookmarks/IShowBookmarksView;

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/show_bookmarks/IShowBookmarksView;->updateInformativeAppBarInfo()V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    return-void

    :cond_2
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getParentId()J

    move-result-wide v3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->mCurrentParent:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getId()J

    move-result-wide v5

    cmp-long v0, v3, v5

    if-nez v0, :cond_3

    iput v2, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->mDeleteBookmarkCount:I

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->updateListAfterDelete(Ljava/util/ArrayList;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->mView:Lcom/sec/android/app/sbrowser/sites/bookmark/model/show_bookmarks/IShowBookmarksView;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/show_bookmarks/IShowBookmarksView;->updateInformativeAppBarInfo()V

    return-void

    :cond_3
    iput-boolean v1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->mShowDeleteVi:Z

    iput v2, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->mDeleteBookmarkCount:I

    :cond_4
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getParentId()J

    move-result-wide v3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->mCurrentParent:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getId()J

    move-result-wide v5

    cmp-long v0, v3, v5

    if-nez v0, :cond_5

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->mHelper:Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/SBCHelper;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/SBCHelper;->clearAsyncTask()V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->mModel:Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModel;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->mCurrentParent:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getId()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModel;->getBookmarkChildren(Ljava/lang/Long;)V

    return-void

    :cond_5
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->mCurrentParent:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

    move v3, v2

    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_b

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->mAncestorsList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    sub-int/2addr v4, v1

    :goto_1
    if-ltz v4, :cond_8

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

    invoke-virtual {v5}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getId()J

    move-result-wide v5

    iget-object v7, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->mAncestorsList:Ljava/util/List;

    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

    invoke-virtual {v7}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getId()J

    move-result-wide v7

    cmp-long v5, v5, v7

    if-nez v5, :cond_7

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->mAncestorsList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    sub-int/2addr p1, v1

    add-int/2addr v4, v1

    sub-int/2addr p1, v4

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->selectAncestor(I)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->mCurrentParent:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getId()J

    move-result-wide v1

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getId()J

    move-result-wide v3

    cmp-long p1, v1, v3

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->mCreateBookmarkFolderAlertUtil:Lcom/sec/android/app/sbrowser/sites/bookmark/utils/CreateBookmarkFolderAlertUtil;

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/sites/bookmark/utils/CreateBookmarkFolderAlertUtil;->hideCreateFolderDialog()V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->mCreateBookmarkFolderAlertUtil:Lcom/sec/android/app/sbrowser/sites/bookmark/utils/CreateBookmarkFolderAlertUtil;

    :cond_6
    return-void

    :cond_7
    add-int/lit8 v4, v4, -0x1

    goto :goto_1

    :cond_8
    move v4, v2

    :goto_2
    iget-object v5, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->mChildrenList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_a

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

    invoke-virtual {v5}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getParentId()J

    move-result-wide v5

    iget-object v7, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->mChildrenList:Ljava/util/List;

    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

    invoke-virtual {v7}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getId()J

    move-result-wide v7

    cmp-long v5, v5, v7

    if-nez v5, :cond_9

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->mHelper:Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/SBCHelper;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/SBCHelper;->clearAsyncTask()V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->mModel:Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModel;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->mCurrentParent:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getId()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModel;->getBookmarkChildren(Ljava/lang/Long;)V

    return-void

    :cond_9
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_a
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :cond_b
    return-void
.end method

.method private handleBookmarkEditSuccess(Ljava/lang/Object;)V
    .locals 6

    check-cast p1, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->updateNavBarViewHolder(Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;)V

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/BookmarkFolderNavigation;->isFeatureEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->mBookmarkFolderNavigation:Lcom/sec/android/app/sbrowser/sites/bookmark/controller/BookmarkFolderNavigation;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/BookmarkFolderNavigation;->markForDelete(Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;)V

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->mEditBookmarkItem:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getId()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getId()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->mDialogHelper:Lcom/sec/android/app/sbrowser/sites/bookmark/utils/EditFolderDialogHelper;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/sites/bookmark/utils/EditFolderDialogHelper;->isEditFolderSelected()Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/c;

    const/4 v2, 0x2

    invoke-direct {v1, p0, v2}, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/c;-><init>(Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;I)V

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->mEditBookmarkItem:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->mDialogHelper:Lcom/sec/android/app/sbrowser/sites/bookmark/utils/EditFolderDialogHelper;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/sites/bookmark/utils/EditFolderDialogHelper;->dismissDialog()V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->mDialogHelper:Lcom/sec/android/app/sbrowser/sites/bookmark/utils/EditFolderDialogHelper;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/sites/bookmark/utils/EditFolderDialogHelper;->getEditFolderDialog()Lm/k;

    move-result-object v0

    if-eqz v0, :cond_3

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->mEditBookmarkItem:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->mDialogHelper:Lcom/sec/android/app/sbrowser/sites/bookmark/utils/EditFolderDialogHelper;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/sites/bookmark/utils/EditFolderDialogHelper;->setFolderText(Ljava/lang/String;)V

    :cond_3
    :goto_0
    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->mIsSecretMode:Z

    if-nez v0, :cond_4

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->mModel:Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModel;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->mCurrentParent:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getId()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModel;->getBookmarkChildren(Ljava/lang/Long;)V

    return-void

    :cond_4
    const/4 v0, 0x0

    move v1, v0

    :goto_1
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->mAncestorsList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_7

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->mAncestorsList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getId()J

    move-result-wide v2

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getId()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_6

    invoke-static {}, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/BookmarkFolderNavigation;->isFeatureEnabled()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->mAncestorsList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    add-int/lit8 v1, v1, 0x1

    sub-int/2addr p1, v1

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->selectAncestor(I)V

    goto :goto_2

    :cond_5
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->mAncestorsList:Ljava/util/List;

    invoke-interface {v0, v1, p1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->mView:Lcom/sec/android/app/sbrowser/sites/bookmark/model/show_bookmarks/IShowBookmarksView;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->mAncestorsList:Ljava/util/List;

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->mIsOnFirstLaunch:Z

    invoke-interface {p1, v0, p0}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/show_bookmarks/IShowBookmarksView;->addAncestors(Ljava/util/List;Z)V

    :goto_2
    return-void

    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_7
    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getParentId()J

    move-result-wide v1

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->mCurrentParent:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getId()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-nez v1, :cond_9

    move v1, v0

    :goto_3
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->mChildrenList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_9

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->mChildrenList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getId()J

    move-result-wide v2

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getId()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_8

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->mView:Lcom/sec/android/app/sbrowser/sites/bookmark/model/show_bookmarks/IShowBookmarksView;

    invoke-interface {v2}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/show_bookmarks/IShowBookmarksView;->exitCABMode()V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->mChildrenList:Ljava/util/List;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->clone(Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;)Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

    move-result-object v3

    invoke-interface {v2, v1, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->mOriginalChildObjects:Ljava/util/List;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->clone(Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;)Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

    move-result-object p1

    invoke-interface {v2, v1, p1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->mView:Lcom/sec/android/app/sbrowser/sites/bookmark/model/show_bookmarks/IShowBookmarksView;

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/show_bookmarks/IShowBookmarksView;->updateChildren()V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->mHelper:Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/SBCHelper;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/SBCHelper;->fillImages(I)V

    goto :goto_4

    :cond_8
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_9
    :goto_4
    return-void
.end method

.method private handleBookmarkMoveSuccess(Ljava/lang/Object;)V
    .locals 8

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/utils/Objects;->uncheckedCast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkMoveInfo;

    iget-object p1, p1, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkMoveInfo;->success:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x2

    if-gt v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->mHelper:Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/SBCHelper;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/SBCHelper;->dismissProgress()V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->mTargetItem:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

    if-eqz v2, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->mHelper:Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/SBCHelper;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->mViewListener:Lcom/sec/android/app/sbrowser/sites/bookmark/model/show_bookmarks/ShowBookmarksViewListener;

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/show_bookmarks/ShowBookmarksViewListener;->getListOfObjectsIds()Ljava/util/List;

    move-result-object v3

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->mViewListener:Lcom/sec/android/app/sbrowser/sites/bookmark/model/show_bookmarks/ShowBookmarksViewListener;

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/show_bookmarks/ShowBookmarksViewListener;->getListOfObjectTypes()Ljava/util/List;

    move-result-object v4

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->mViewListener:Lcom/sec/android/app/sbrowser/sites/bookmark/model/show_bookmarks/ShowBookmarksViewListener;

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/show_bookmarks/ShowBookmarksViewListener;->getNonEditableItems()I

    move-result v5

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/SBCHelper;->getMoveMessage(Ljava/util/List;Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;Ljava/util/List;Ljava/util/List;I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    const v2, 0x1020002

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/4 v2, -0x1

    invoke-static {v1, v0, v2, v2}, LH6/o;->i(Landroid/view/View;Ljava/lang/CharSequence;II)LH6/o;

    move-result-object v0

    invoke-virtual {v0}, LH6/o;->l()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->clearListAfterDND()V

    :cond_1
    invoke-static {}, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/BookmarkFolderNavigation;->isFeatureEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->mBookmarkFolderNavigation:Lcom/sec/android/app/sbrowser/sites/bookmark/controller/BookmarkFolderNavigation;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/BookmarkFolderNavigation;->handleFolderMoved(Ljava/util/ArrayList;)V

    :cond_2
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->mCurrentParent:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getId()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-eqz v1, :cond_9

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->mCurrentParent:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

    invoke-virtual {v4}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getId()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_3

    goto/16 :goto_3

    :cond_3
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->mChildrenList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    move v3, v1

    :goto_0
    if-ge v3, v2, :cond_6

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->mChildrenList:Ljava/util/List;

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

    invoke-virtual {v6}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getId()J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-eqz v4, :cond_5

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->mChildrenList:Ljava/util/List;

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

    invoke-virtual {v6}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getId()J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-nez v4, :cond_4

    goto :goto_1

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_5
    :goto_1
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->mHelper:Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/SBCHelper;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/SBCHelper;->clearAsyncTask()V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->mModel:Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModel;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->mCurrentParent:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getId()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModel;->getBookmarkChildren(Ljava/lang/Long;)V

    return-void

    :cond_6
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->mAncestorsList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    move v3, v1

    :goto_2
    if-ge v3, v2, :cond_8

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->mAncestorsList:Ljava/util/List;

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

    invoke-virtual {v6}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getId()J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-nez v4, :cond_7

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->mHelper:Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/SBCHelper;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/SBCHelper;->clearAsyncTask()V

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->mIsMovePerformed:Z

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->mModel:Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModel;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModel;->getAllAncestorBookmarkItems(Ljava/lang/Long;)V

    return-void

    :cond_7
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_8
    return-void

    :cond_9
    :goto_3
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->mHelper:Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/SBCHelper;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/SBCHelper;->clearAsyncTask()V

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->mIsMovePerformed:Z

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->mModel:Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModel;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->mCurrentParent:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getId()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModel;->getBookmarkChildren(Ljava/lang/Long;)V

    return-void
.end method

.method private handleBookmarkReorderedSuccess(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->mHelper:Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/SBCHelper;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/SBCHelper;->dismissProgress()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->mModel:Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModel;

    check-cast p1, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->mCurrentParent:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getId()J

    move-result-wide v1

    invoke-virtual {v0, p1, v1, v2}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModel;->handleBookmarkReorderedSuccess(Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;J)V

    return-void
.end method

.method private handleHierarchicalNavigation()Z
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x1

    :try_start_0
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->mAncestorsList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-le v2, v1, :cond_1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->mBookmarkFolderNavigation:Lcom/sec/android/app/sbrowser/sites/bookmark/controller/BookmarkFolderNavigation;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/BookmarkFolderNavigation;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->mBookmarkFolderNavigation:Lcom/sec/android/app/sbrowser/sites/bookmark/controller/BookmarkFolderNavigation;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/BookmarkFolderNavigation;->getPrevious()Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkFolderNavigationItem;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkFolderNavigationItem;->getId()J

    move-result-wide v2

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->mCurrentParent:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

    invoke-virtual {v4}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getParentId()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->mBookmarkFolderNavigation:Lcom/sec/android/app/sbrowser/sites/bookmark/controller/BookmarkFolderNavigation;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->mCurrentParent:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getId()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/BookmarkFolderNavigation;->pop(J)Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkFolderNavigationItem;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->mView:Lcom/sec/android/app/sbrowser/sites/bookmark/model/show_bookmarks/IShowBookmarksView;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->mAncestorsList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x2

    filled-new-array {v3}, [I

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/show_bookmarks/IShowBookmarksView;->switchToPreviousParent([I)V

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->mView:Lcom/sec/android/app/sbrowser/sites/bookmark/model/show_bookmarks/IShowBookmarksView;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->mAncestorsList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x2

    filled-new-array {v3, v0}, [I

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/show_bookmarks/IShowBookmarksView;->switchToPreviousParent([I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return v1

    :catch_0
    const-string v2, "ShowBookmarksController"

    const-string v3, "handleHierarchialNavigation empty stack"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->mAncestorsList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-le v2, v1, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->mView:Lcom/sec/android/app/sbrowser/sites/bookmark/model/show_bookmarks/IShowBookmarksView;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->mAncestorsList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    add-int/lit8 p0, p0, -0x2

    filled-new-array {p0}, [I

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/show_bookmarks/IShowBookmarksView;->switchToPreviousParent([I)V

    return v1

    :cond_2
    return v0
.end method

.method private handleHistoryNavigation()Z
    .locals 13

    const-string v0, "ShowBookmarksController"

    const-string v1, "handleHistoryNavigation"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->mAncestorsList:Ljava/util/List;

    const/4 v3, 0x0

    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "handleHistoryNavigation - mAncestorsList no empty current="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->mCurrentParent:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getId()J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->mBookmarkFolderNavigation:Lcom/sec/android/app/sbrowser/sites/bookmark/controller/BookmarkFolderNavigation;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/BookmarkFolderNavigation;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->mBookmarkFolderNavigation:Lcom/sec/android/app/sbrowser/sites/bookmark/controller/BookmarkFolderNavigation;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->mCurrentParent:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getId()J

    move-result-wide v4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->mAncestorsList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->mRootItem:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getId()J

    move-result-wide v7

    iget-object v9, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->mModel:Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModel;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->mHelper:Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/SBCHelper;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->mRootItem:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getId()J

    move-result-wide v10

    invoke-virtual {v0, v10, v11}, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/SBCHelper;->prefsHaveValue(J)Z

    move-result v10

    new-instance v11, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/b;

    const/4 v0, 0x0

    invoke-direct {v11, p0, v0}, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/b;-><init>(Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;I)V

    new-instance v12, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/b;

    const/4 v0, 0x1

    invoke-direct {v12, p0, v0}, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/b;-><init>(Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;I)V

    invoke-virtual/range {v2 .. v12}, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/BookmarkFolderNavigation;->handleHistoryNavigation(ZJIJLcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModel;ZLcom/sec/android/app/sbrowser/common/model/general/GeneralCallback;Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback;)Z

    move-result p0

    return p0

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->mAncestorsList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_2

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->mView:Lcom/sec/android/app/sbrowser/sites/bookmark/model/show_bookmarks/IShowBookmarksView;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->mAncestorsList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x2

    filled-new-array {v3}, [I

    move-result-object v3

    invoke-interface {v1, v3}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/show_bookmarks/IShowBookmarksView;->switchToPreviousParent([I)V

    const-string v1, "handleHistoryNavigation calling clear"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->mBookmarkFolderNavigation:Lcom/sec/android/app/sbrowser/sites/bookmark/controller/BookmarkFolderNavigation;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/BookmarkFolderNavigation;->clear()V

    :cond_1
    move v3, v2

    :cond_2
    return v3
.end method

.method public static bridge synthetic i(Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;)Lcom/sec/android/app/sbrowser/sites/bookmark/controller/BookmarkFolderNavigation;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->mBookmarkFolderNavigation:Lcom/sec/android/app/sbrowser/sites/bookmark/controller/BookmarkFolderNavigation;

    return-object p0
.end method

.method public static bridge synthetic j(Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->mChildrenList:Ljava/util/List;

    return-object p0
.end method

.method public static bridge synthetic k(Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;)Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->mCurrentParent:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

    return-object p0
.end method

.method public static bridge synthetic l(Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->mFolderChildrenList:Ljava/util/List;

    return-object p0
.end method

.method private synthetic lambda$handleBackMessage$1()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->mBackOp:Z

    return-void
.end method

.method private synthetic lambda$handleBookmarkEditSuccess$3()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->mActivity:Landroid/app/Activity;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksControllerUtil;->showFolderRenamedDialog(Landroid/app/Activity;)V

    return-void
.end method

.method private synthetic lambda$handleHistoryNavigation$4(Ljava/lang/Integer;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->mView:Lcom/sec/android/app/sbrowser/sites/bookmark/model/show_bookmarks/IShowBookmarksView;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    filled-new-array {p1}, [I

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/show_bookmarks/IShowBookmarksView;->switchToPreviousParent([I)V

    return-void
.end method

.method private synthetic lambda$handleHistoryNavigation$5(Ljava/lang/Boolean;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->mBackOp:Z

    return-void
.end method

.method private synthetic lambda$initializeBookmarkData$2(Landroid/content/Context;ZZ)V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->mActivityStatus:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$ActivityStatus;

    sget-object v1, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$ActivityStatus;->FINISHED:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$ActivityStatus;

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->mModel:Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModel;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, p1, v1}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModel;->initializeBookmarkData(Landroid/content/Context;Landroid/app/Activity;)Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->mRootItem:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->mHelper:Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/SBCHelper;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/SBCHelper;->setRootId(J)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/BookmarkFolderNavigation;->isFeatureEnabled()Z

    move-result p1

    if-eqz p1, :cond_1

    new-instance p1, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/BookmarkFolderNavigation;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->mActivity:Landroid/app/Activity;

    invoke-direct {p1, v0}, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/BookmarkFolderNavigation;-><init>(Landroid/app/Activity;)V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->mBookmarkFolderNavigation:Lcom/sec/android/app/sbrowser/sites/bookmark/controller/BookmarkFolderNavigation;

    :cond_1
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->mView:Lcom/sec/android/app/sbrowser/sites/bookmark/model/show_bookmarks/IShowBookmarksView;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->getViewListener()Lcom/sec/android/app/sbrowser/sites/bookmark/model/show_bookmarks/ShowBookmarksViewListener;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/show_bookmarks/IShowBookmarksView;->setListener(Lcom/sec/android/app/sbrowser/sites/bookmark/model/show_bookmarks/ShowBookmarksViewListener;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->mActivity:Landroid/app/Activity;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;->isSecretModeEnabled(Landroid/app/Activity;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->mIsSecretMode:Z

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/sites/BookmarkSortTypeChangedNotifier;->getInstance()Lcom/sec/android/app/sbrowser/common/sites/BookmarkSortTypeChangedNotifier;

    move-result-object p1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->mSortTypeChangedListener:Lcom/sec/android/app/sbrowser/common/sites/BookmarkSortTypeChangedNotifier$BookmarkSortChangedListener;

    iget-boolean v1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->mIsSecretMode:Z

    invoke-virtual {p1, v0, v1}, Lcom/sec/android/app/sbrowser/common/sites/BookmarkSortTypeChangedNotifier;->addObserver(Lcom/sec/android/app/sbrowser/common/sites/BookmarkSortTypeChangedNotifier$BookmarkSortChangedListener;Z)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->mHelper:Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/SBCHelper;

    invoke-virtual {p1, p2}, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/SBCHelper;->setBookmarkParent(Z)J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->mShowBookmarkId:Ljava/lang/Long;

    const/4 p2, 0x0

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->mChildrenList:Ljava/util/List;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->mAncestorsList:Ljava/util/List;

    if-eqz p3, :cond_2

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->mModel:Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModel;

    const/4 p2, 0x1

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModel;->getAllAncestorBookmarkItems(Ljava/lang/Long;Z)V

    goto :goto_0

    :cond_2
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->mModel:Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModel;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModel;->getAllAncestorBookmarkItems(Ljava/lang/Long;)V

    :goto_0
    return-void
.end method

.method private synthetic lambda$setSearchData$0()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->mView:Lcom/sec/android/app/sbrowser/sites/bookmark/model/show_bookmarks/IShowBookmarksView;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/show_bookmarks/IShowBookmarksView;->clearAllOptions()V

    :cond_0
    return-void
.end method

.method public static bridge synthetic m(Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;)Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksHandler;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->mHandler:Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksHandler;

    return-object p0
.end method

.method public static bridge synthetic n(Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;)Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/SBCHelper;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->mHelper:Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/SBCHelper;

    return-object p0
.end method

.method public static bridge synthetic o(Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->mIsFolderRightClick:Z

    return p0
.end method

.method public static bridge synthetic p(Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;)Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModel;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->mModel:Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModel;

    return-object p0
.end method

.method public static bridge synthetic q(Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;)Lcom/sec/android/app/sbrowser/sites/bookmark/model/show_bookmarks/IShowBookmarksView;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->mView:Lcom/sec/android/app/sbrowser/sites/bookmark/model/show_bookmarks/IShowBookmarksView;

    return-object p0
.end method

.method public static bridge synthetic r(Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;)V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->mIsFolderRightClick:Z

    return-void
.end method

.method public static bridge synthetic s(Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->dismissCreateFolderDialogBox()V

    return-void
.end method

.method private selectAncestor(I)V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->mAncestorsList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ge p1, v0, :cond_2

    if-gez p1, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->mAncestorsList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    const/4 v1, 0x0

    if-le v0, p1, :cond_1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->mAncestorsList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->mAncestorsList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->mCurrentParent:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->mView:Lcom/sec/android/app/sbrowser/sites/bookmark/model/show_bookmarks/IShowBookmarksView;

    invoke-interface {v1, v0}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/show_bookmarks/IShowBookmarksView;->setParent(Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->mView:Lcom/sec/android/app/sbrowser/sites/bookmark/model/show_bookmarks/IShowBookmarksView;

    invoke-interface {v0, p1}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/show_bookmarks/IShowBookmarksView;->setAncestorPosition(I)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->mHelper:Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/SBCHelper;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/SBCHelper;->clearAsyncTask()V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->mModel:Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModel;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->mCurrentParent:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getId()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModel;->getBookmarkChildren(Ljava/lang/Long;)V

    :cond_2
    :goto_1
    return-void
.end method

.method private setAncestors(Landroid/os/Message;)V
    .locals 8

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->mAncestorsList:Ljava/util/List;

    iget-boolean v1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->mIsFolderSearchClick:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    :goto_0
    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->mViewListener:Lcom/sec/android/app/sbrowser/sites/bookmark/model/show_bookmarks/ShowBookmarksViewListener;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->mAncestorsList:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

    invoke-interface {v1, v3}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/show_bookmarks/ShowBookmarksViewListener;->onSelect(Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    iput-boolean v2, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->mIsFolderSearchClick:Z

    :cond_1
    iget p1, p1, Landroid/os/Message;->arg1:I

    const-string v0, "BOOKMARK_SET_ANCESTORS profile isInit"

    const-string v1, "ShowBookmarksController"

    invoke-static {p1, v0, v1}, Landroidx/recyclerview/widget/P;->i(ILjava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->mAncestorsList:Ljava/util/List;

    const/4 v3, 0x1

    invoke-static {v3, v0}, LV0/c;->g(ILjava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->mRootItem:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->mCurrentParent:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getId()J

    move-result-wide v4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->mAncestorsList:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getId()J

    move-result-wide v6

    cmp-long v0, v4, v6

    if-eqz v0, :cond_4

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->mAncestorsList:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->mCurrentParent:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->mView:Lcom/sec/android/app/sbrowser/sites/bookmark/model/show_bookmarks/IShowBookmarksView;

    invoke-interface {v4, v0}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/show_bookmarks/IShowBookmarksView;->setParent(Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;)V

    if-eq p1, v3, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->mView:Lcom/sec/android/app/sbrowser/sites/bookmark/model/show_bookmarks/IShowBookmarksView;

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->mAncestorsList:Ljava/util/List;

    iget-boolean v5, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->mIsOnFirstLaunch:Z

    invoke-interface {v0, v4, v5}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/show_bookmarks/IShowBookmarksView;->addAncestors(Ljava/util/List;Z)V

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->mView:Lcom/sec/android/app/sbrowser/sites/bookmark/model/show_bookmarks/IShowBookmarksView;

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->mAncestorsList:Ljava/util/List;

    invoke-static {v3, v4}, LV0/c;->g(ILjava/util/List;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

    invoke-interface {v0, v4}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/show_bookmarks/IShowBookmarksView;->setRoot(Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;)V

    :cond_4
    :goto_1
    if-ne p1, v3, :cond_5

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->mModel:Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModel;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->mCurrentParent:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p1, v0, v3}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModel;->getBookmarkChildren(Ljava/lang/Long;Z)V

    goto :goto_2

    :cond_5
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->mModel:Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModel;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->mCurrentParent:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getId()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModel;->getBookmarkChildren(Ljava/lang/Long;)V

    :goto_2
    iput-boolean v2, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->mIsOnFirstLaunch:Z

    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "parent updated"

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private setChildren(Landroid/os/Message;)V
    .locals 11

    const-string v0, "Children updated"

    const-string v1, "BOOKMARK_SET_CHILDREN children count : "

    iget v2, p1, Landroid/os/Message;->arg1:I

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->mModel:Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModel;

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModelBase;->getBookmarksHierarchy()V

    const-string v3, "ShowBookmarksController"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "BOOKMARK_SET_CHILDREN profile isInit "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->mView:Lcom/sec/android/app/sbrowser/sites/bookmark/model/show_bookmarks/IShowBookmarksView;

    const/4 v4, 0x1

    invoke-interface {v3, v4}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/show_bookmarks/IShowBookmarksView;->showSearchOption(Z)V

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->mSelectedParent:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

    const/4 v5, 0x0

    const/4 v6, 0x0

    if-eqz v3, :cond_0

    iput-object v3, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->mCurrentParent:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

    iput-object v5, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->mSelectedParent:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->mAncestorsList:Ljava/util/List;

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getId()J

    move-result-wide v7

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->mCurrentParent:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getId()J

    move-result-wide v9

    cmp-long v3, v7, v9

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->mAncestorsList:Ljava/util/List;

    iget-object v7, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->mCurrentParent:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

    invoke-interface {v3, v6, v7}, Ljava/util/List;->add(ILjava/lang/Object;)V

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->mView:Lcom/sec/android/app/sbrowser/sites/bookmark/model/show_bookmarks/IShowBookmarksView;

    iget-object v7, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->mCurrentParent:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

    invoke-interface {v3, v7}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/show_bookmarks/IShowBookmarksView;->setParent(Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;)V

    if-eq v2, v4, :cond_0

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->mView:Lcom/sec/android/app/sbrowser/sites/bookmark/model/show_bookmarks/IShowBookmarksView;

    iget-object v7, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->mCurrentParent:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

    invoke-interface {v3, v7, v4, v6}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/show_bookmarks/IShowBookmarksView;->appendAncestor(Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;ZZ)V

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->mView:Lcom/sec/android/app/sbrowser/sites/bookmark/model/show_bookmarks/IShowBookmarksView;

    invoke-interface {v3}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/show_bookmarks/IShowBookmarksView;->resetScrollPosition()V

    :cond_0
    iget-boolean v3, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->mShowDeleteVi:Z

    if-eqz v3, :cond_1

    iput-boolean v4, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->mSkipExitCABMode:Z

    iput-boolean v6, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->mShowDeleteVi:Z

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->mView:Lcom/sec/android/app/sbrowser/sites/bookmark/model/show_bookmarks/IShowBookmarksView;

    invoke-interface {v3, v6}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/show_bookmarks/IShowBookmarksView;->setSceneAnimation(Z)V

    :cond_1
    iget-object v3, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->mLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/util/List;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->mChildrenList:Ljava/util/List;

    const-string p1, "ShowBookmarksController"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->mChildrenList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean p1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->mSkipExitCABMode:Z

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->mView:Lcom/sec/android/app/sbrowser/sites/bookmark/model/show_bookmarks/IShowBookmarksView;

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/show_bookmarks/IShowBookmarksView;->exitCABMode()V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto/16 :goto_4

    :cond_2
    :goto_0
    if-eq v2, v4, :cond_3

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->mView:Lcom/sec/android/app/sbrowser/sites/bookmark/model/show_bookmarks/IShowBookmarksView;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->mChildrenList:Ljava/util/List;

    invoke-interface {p1, v1}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/show_bookmarks/IShowBookmarksView;->setChildren(Ljava/util/List;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->mView:Lcom/sec/android/app/sbrowser/sites/bookmark/model/show_bookmarks/IShowBookmarksView;

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/show_bookmarks/IShowBookmarksView;->updateInformativeAppBarInfo()V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->mActivity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->invalidateOptionsMenu()V

    :cond_3
    iget-boolean p1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->mIsMovePerformed:Z

    if-eqz p1, :cond_4

    iput-boolean v6, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->mIsMovePerformed:Z

    goto :goto_1

    :cond_4
    if-eq v2, v4, :cond_5

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->mHelper:Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/SBCHelper;

    if-eqz p1, :cond_5

    invoke-virtual {p1, v6}, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/SBCHelper;->fillImages(I)V

    :cond_5
    :goto_1
    new-instance p1, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->mChildrenList:Ljava/util/List;

    invoke-direct {p1, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->mOriginalChildObjects:Ljava/util/List;

    const-string p1, "ShowBookmarksController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-virtual {v1, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->mDialogHelper:Lcom/sec/android/app/sbrowser/sites/bookmark/utils/EditFolderDialogHelper;

    if-eqz p1, :cond_8

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/sites/bookmark/utils/EditFolderDialogHelper;->getEditFolderDialog()Lm/k;

    move-result-object p1

    if-eqz p1, :cond_8

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->mChildrenList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    move v0, v6

    :goto_2
    if-ge v0, p1, :cond_7

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->mEditBookmarkItem:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getId()J

    move-result-wide v1

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->mChildrenList:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

    invoke-virtual {v4}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getId()J

    move-result-wide v7

    cmp-long v1, v1, v7

    if-nez v1, :cond_6

    goto :goto_3

    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_7
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->mDialogHelper:Lcom/sec/android/app/sbrowser/sites/bookmark/utils/EditFolderDialogHelper;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/sites/bookmark/utils/EditFolderDialogHelper;->dismissDialog()V

    iput-object v5, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->mEditBookmarkItem:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

    :cond_8
    :goto_3
    const-string p1, "ShowBookmarksController"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mShouldRefreshView "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->mShouldRefreshView:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean p1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->mShouldRefreshView:Z

    if-eqz p1, :cond_9

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->updateBookmarkFromCache()V

    iput-boolean v6, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->mShouldRefreshView:Z

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->mView:Lcom/sec/android/app/sbrowser/sites/bookmark/model/show_bookmarks/IShowBookmarksView;

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/show_bookmarks/IShowBookmarksView;->isLaunchedFromBookmarkBar()Z

    move-result p1

    if-eqz p1, :cond_9

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->mView:Lcom/sec/android/app/sbrowser/sites/bookmark/model/show_bookmarks/IShowBookmarksView;

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/show_bookmarks/IShowBookmarksView;->launchInActionMode()V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->mView:Lcom/sec/android/app/sbrowser/sites/bookmark/model/show_bookmarks/IShowBookmarksView;

    invoke-interface {p0, v6}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/show_bookmarks/IShowBookmarksView;->setLaunchedFromBookmarkBar(Z)V

    :cond_9
    monitor-exit v3

    return-void

    :goto_4
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static bridge synthetic t(Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->handleBookmarkAddSuccess(Ljava/lang/Object;)V

    return-void
.end method

.method public static bridge synthetic u(Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->handleBookmarkDeleteSuccess(Ljava/lang/Object;)V

    return-void
.end method

.method private updateBookmarkFromCache()V
    .locals 6

    const-string v0, "updateBookmarkFromCache"

    const-string v1, "ShowBookmarksController"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->mAncestorsList:Ljava/util/List;

    const/4 v2, 0x1

    invoke-static {v2, v0}, LV0/c;->g(ILjava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->mRootItem:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->mAncestorsList:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->mCurrentParent:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->mView:Lcom/sec/android/app/sbrowser/sites/bookmark/model/show_bookmarks/IShowBookmarksView;

    invoke-interface {v4, v0}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/show_bookmarks/IShowBookmarksView;->setParent(Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->mView:Lcom/sec/android/app/sbrowser/sites/bookmark/model/show_bookmarks/IShowBookmarksView;

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->mAncestorsList:Ljava/util/List;

    iget-boolean v5, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->mIsOnFirstLaunch:Z

    invoke-interface {v0, v4, v5}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/show_bookmarks/IShowBookmarksView;->addAncestors(Ljava/util/List;Z)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "parent updated"

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->mChildrenList:Ljava/util/List;

    invoke-direct {v0, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->mOriginalChildObjects:Ljava/util/List;

    iput-boolean v3, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->mIsOnFirstLaunch:Z

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->mView:Lcom/sec/android/app/sbrowser/sites/bookmark/model/show_bookmarks/IShowBookmarksView;

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->mChildrenList:Ljava/util/List;

    invoke-interface {v0, v4}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/show_bookmarks/IShowBookmarksView;->setChildren(Ljava/util/List;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->mHelper:Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/SBCHelper;

    if-eqz v0, :cond_0

    invoke-virtual {v0, v3}, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/SBCHelper;->fillImages(I)V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->mView:Lcom/sec/android/app/sbrowser/sites/bookmark/model/show_bookmarks/IShowBookmarksView;

    invoke-interface {v0, v2}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/show_bookmarks/IShowBookmarksView;->showSearchOption(Z)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "Children updated"

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private updateBookmarkHierarchy(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->mBookmarkHeirarchy:Lcom/google/common/collect/I;

    if-nez v0, :cond_0

    return-void

    :cond_0
    check-cast p1, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkAddInfo;

    iget-object p1, p1, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkAddInfo;->item:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getParentId()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/common/collect/I;->get(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->mBookmarkHeirarchy:Lcom/google/common/collect/I;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getParentId()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p0, v0, p1}, Lcom/google/common/collect/I;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method private updateListAfterDelete(Ljava/util/ArrayList;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->mView:Lcom/sec/android/app/sbrowser/sites/bookmark/model/show_bookmarks/IShowBookmarksView;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/show_bookmarks/IShowBookmarksView;->isRecyclerViewScrolling()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->mView:Lcom/sec/android/app/sbrowser/sites/bookmark/model/show_bookmarks/IShowBookmarksView;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/show_bookmarks/IShowBookmarksView;->setSceneAnimation(Z)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->mView:Lcom/sec/android/app/sbrowser/sites/bookmark/model/show_bookmarks/IShowBookmarksView;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/show_bookmarks/IShowBookmarksView;->exitCABMode()V

    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_1
    if-ltz v0, :cond_3

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->mChildrenList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_2
    if-ltz v2, :cond_2

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->mChildrenList:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getId()J

    move-result-wide v3

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getId()J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-nez v3, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->mChildrenList:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->mOriginalChildObjects:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_3

    :cond_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_2

    :cond_2
    :goto_3
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_3
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->mView:Lcom/sec/android/app/sbrowser/sites/bookmark/model/show_bookmarks/IShowBookmarksView;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->mChildrenList:Ljava/util/List;

    invoke-interface {p1, v0}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/show_bookmarks/IShowBookmarksView;->setChildren(Ljava/util/List;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    return-void
.end method

.method public static bridge synthetic v(Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->handleBookmarkEditSuccess(Ljava/lang/Object;)V

    return-void
.end method

.method public static bridge synthetic w(Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->handleBookmarkMoveSuccess(Ljava/lang/Object;)V

    return-void
.end method

.method public static bridge synthetic x(Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->handleBookmarkReorderedSuccess(Ljava/lang/Object;)V

    return-void
.end method

.method public static bridge synthetic y(Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->updateBookmarkHierarchy(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public addToFolderNavigationStackIfNeeded()V
    .locals 11

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->mFolderPersist:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->mIsSecretMode:Z

    if-eqz v0, :cond_1

    const-string v0, "pref_show bookmark_folder_secret"

    goto :goto_0

    :cond_1
    const-string v0, "pref_show bookmark_folder"

    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-static {}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkQueryUtil;->getDefaultBookmarkId()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-interface {v1, v0, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v5

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->mRootItem:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getId()J

    move-result-wide v0

    cmp-long v0, v5, v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->mModel:Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModel;

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModelBase;->getBookmarkItem(Ljava/lang/Long;)Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

    move-result-object v0

    if-nez v0, :cond_2

    return-void

    :cond_2
    iget-object v4, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->mBookmarkFolderNavigation:Lcom/sec/android/app/sbrowser/sites/bookmark/controller/BookmarkFolderNavigation;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getParentId()J

    move-result-wide v7

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getTitle()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x1

    invoke-virtual/range {v4 .. v10}, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/BookmarkFolderNavigation;->add(JJLjava/lang/String;Z)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->mFolderPersist:Z

    :cond_3
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->mActivityStatus:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$ActivityStatus;

    sget-object v1, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$ActivityStatus;->FINISHED:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$ActivityStatus;

    if-eq v0, v1, :cond_1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->mView:Lcom/sec/android/app/sbrowser/sites/bookmark/model/show_bookmarks/IShowBookmarksView;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/show_bookmarks/IShowBookmarksView;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public dispatchMoreKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->mActivityStatus:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$ActivityStatus;

    sget-object v1, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$ActivityStatus;->FINISHED:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$ActivityStatus;

    if-eq v0, v1, :cond_1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->mView:Lcom/sec/android/app/sbrowser/sites/bookmark/model/show_bookmarks/IShowBookmarksView;

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/show_bookmarks/IShowBookmarksView;->dispatchMoreKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public getActivity()Landroid/app/Activity;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->mActivity:Landroid/app/Activity;

    return-object p0
.end method

.method public getAncestorsList()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->mAncestorsList:Ljava/util/List;

    return-object p0
.end method

.method public getBookmarkFolderNavigation()Lcom/sec/android/app/sbrowser/sites/bookmark/controller/BookmarkFolderNavigation;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->mBookmarkFolderNavigation:Lcom/sec/android/app/sbrowser/sites/bookmark/controller/BookmarkFolderNavigation;

    return-object p0
.end method

.method public getBookmarkMap()Lcom/google/common/collect/I;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/I;"
        }
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->mBookmarkHeirarchy:Lcom/google/common/collect/I;

    return-object p0
.end method

.method public getChildrenList()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->mChildrenList:Ljava/util/List;

    return-object p0
.end method

.method public getCreateBookmarkFolderAlertUtil()Lcom/sec/android/app/sbrowser/sites/bookmark/utils/CreateBookmarkFolderAlertUtil;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->mCreateBookmarkFolderAlertUtil:Lcom/sec/android/app/sbrowser/sites/bookmark/utils/CreateBookmarkFolderAlertUtil;

    return-object p0
.end method

.method public getCurrentParent()Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->mCurrentParent:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

    return-object p0
.end method

.method public getCurrentTabInformativeSubTitle()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->mView:Lcom/sec/android/app/sbrowser/sites/bookmark/model/show_bookmarks/IShowBookmarksView;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/show_bookmarks/IShowBookmarksView;->getCurrentTabInformativeSubTitle()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getCurrentTabInformativeTitle()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->mView:Lcom/sec/android/app/sbrowser/sites/bookmark/model/show_bookmarks/IShowBookmarksView;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/show_bookmarks/IShowBookmarksView;->getCurrentTabInformativeTitle()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getDialogHelper()Lcom/sec/android/app/sbrowser/sites/bookmark/utils/EditFolderDialogHelper;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->mDialogHelper:Lcom/sec/android/app/sbrowser/sites/bookmark/utils/EditFolderDialogHelper;

    return-object p0
.end method

.method public getDndList()Landroidx/recyclerview/widget/RecyclerView;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->mView:Lcom/sec/android/app/sbrowser/sites/bookmark/model/show_bookmarks/IShowBookmarksView;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/show_bookmarks/IShowBookmarksView;->getDndList()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p0

    return-object p0
.end method

.method public getEditBookmarkItem()Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->mEditBookmarkItem:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

    return-object p0
.end method

.method public getFolderNavigation()Lcom/sec/android/app/sbrowser/sites/bookmark/controller/BookmarkFolderNavigation;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->mBookmarkFolderNavigation:Lcom/sec/android/app/sbrowser/sites/bookmark/controller/BookmarkFolderNavigation;

    return-object p0
.end method

.method public getHandler()Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->mHandler:Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksHandler;

    return-object p0
.end method

.method public getHelper()Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/SBCHelper;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->mHelper:Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/SBCHelper;

    return-object p0
.end method

.method public getLock()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method public getOriginalChildObjects()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->mOriginalChildObjects:Ljava/util/List;

    return-object p0
.end method

.method public getSharedPreference()Landroid/content/SharedPreferences;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->mSharedPreferences:Landroid/content/SharedPreferences;

    return-object p0
.end method

.method public getSitesSearchItemMap(Landroid/app/Activity;Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSearchBase;)Ljava/util/LinkedHashMap;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSearchBase;",
            ")",
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem;",
            ">;"
        }
    .end annotation

    const/4 p0, 0x1

    invoke-static {p1, p0, p2, p0}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkQueryUtil;->getBookmarkSearchItems(Landroid/app/Activity;ZLcom/sec/android/app/sbrowser/sites/common/search/model/SitesSearchBase;Z)Ljava/util/LinkedHashMap;

    move-result-object p0

    return-object p0
.end method

.method public getSitesSearchItems(Landroid/app/Activity;Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSearchBase;)V
    .locals 1

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSearchBase;->getSitesSmartSearchData()Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSmartSearchData;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSmartSearchData;->clearLists()V

    const/4 p0, 0x1

    const/4 v0, 0x0

    invoke-static {p1, p0, p2, v0}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkQueryUtil;->getBookmarkSearchItems(Landroid/app/Activity;ZLcom/sec/android/app/sbrowser/sites/common/search/model/SitesSearchBase;Z)Ljava/util/LinkedHashMap;

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSearchBase;->getSitesSmartSearchData()Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSmartSearchData;

    move-result-object p0

    sget-object p2, Lcom/sec/android/app/sbrowser/common/model/sites/SitePages;->BOOKMARKS:Lcom/sec/android/app/sbrowser/common/model/sites/SitePages;

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/common/model/sites/SitePages;->getValue()I

    move-result p2

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;->isSecretModeEnabled(Landroid/app/Activity;)Z

    move-result p1

    invoke-virtual {p0, p2, p1}, Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSmartSearchData;->orderData(IZ)V

    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->mActivityStatus:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$ActivityStatus;

    sget-object v1, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$ActivityStatus;->FINISHED:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$ActivityStatus;

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$Messages;->values()[Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$Messages;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->what:I

    aget-object v0, v0, v1

    sget-object v1, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController$5;->$SwitchMap$com$sec$android$app$sbrowser$common$constants$sites$BookmarkConstants$Messages:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    :pswitch_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/google/common/collect/I;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->mBookmarkHeirarchy:Lcom/google/common/collect/I;

    goto/16 :goto_0

    :pswitch_1
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->handleHistoryNavigation()Z

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->handleBackMessage()V

    goto/16 :goto_0

    :pswitch_2
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->handleHierarchicalNavigation()Z

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->handleBackMessage()V

    goto/16 :goto_0

    :pswitch_3
    iget p1, p1, Landroid/os/Message;->arg1:I

    if-nez p1, :cond_1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->mModel:Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModel;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModelBase;->getBookmarkRoot()Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getId()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModel;->getAllAncestorBookmarkItems(Ljava/lang/Long;)V

    goto/16 :goto_0

    :cond_1
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->mModel:Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModel;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->mCurrentParent:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getId()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModel;->getAllAncestorBookmarkItems(Ljava/lang/Long;)V

    goto/16 :goto_0

    :pswitch_4
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/util/List;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->mFolderChildrenList:Ljava/util/List;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->mView:Lcom/sec/android/app/sbrowser/sites/bookmark/model/show_bookmarks/IShowBookmarksView;

    invoke-interface {v0, p1}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/show_bookmarks/IShowBookmarksView;->createFolderInParent(Ljava/util/List;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->mIsFolderRightClick:Z

    goto :goto_0

    :pswitch_5
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->mView:Lcom/sec/android/app/sbrowser/sites/bookmark/model/show_bookmarks/IShowBookmarksView;

    if-eqz p1, :cond_2

    invoke-interface {p1, v2}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/show_bookmarks/IShowBookmarksView;->enableNavigationForDrag(Z)V

    :cond_2
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->mHelper:Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/SBCHelper;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/SBCHelper;->dismissProgress()V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->mActivity:Landroid/app/Activity;

    const v0, 0x1020002

    const v1, 0x7f140262

    const/4 v2, -0x1

    invoke-static {p1, v0, v1, v2}, Lcom/sec/android/app/sbrowser/autofill/password/k;->q(Landroid/app/Activity;III)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->clearListAfterDND()V

    goto :goto_0

    :pswitch_6
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->mView:Lcom/sec/android/app/sbrowser/sites/bookmark/model/show_bookmarks/IShowBookmarksView;

    if-eqz v0, :cond_3

    invoke-interface {v0, v2}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/show_bookmarks/IShowBookmarksView;->enableNavigationForDrag(Z)V

    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->mHelper:Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/SBCHelper;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/SBCHelper;->dismissProgress()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->mTargetItem:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->mHelper:Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/SBCHelper;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/SBCHelper;->showDndMoveFailureToast(Landroid/os/Message;)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->clearListAfterDND()V

    goto :goto_0

    :pswitch_7
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->mHelper:Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/SBCHelper;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/SBCHelper;->runImageAsyncTask()V

    goto :goto_0

    :pswitch_8
    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->setChildren(Landroid/os/Message;)V

    goto :goto_0

    :pswitch_9
    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->setAncestors(Landroid/os/Message;)V

    goto :goto_0

    :pswitch_a
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->mDialogHelper:Lcom/sec/android/app/sbrowser/sites/bookmark/utils/EditFolderDialogHelper;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/sites/bookmark/utils/EditFolderDialogHelper;->getEditFolderDialog()Lm/k;

    move-result-object p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->mDialogHelper:Lcom/sec/android/app/sbrowser/sites/bookmark/utils/EditFolderDialogHelper;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/sites/bookmark/utils/EditFolderDialogHelper;->dismissDialog()V

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->mEditBookmarkItem:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

    goto :goto_0

    :pswitch_b
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->mDialogHelper:Lcom/sec/android/app/sbrowser/sites/bookmark/utils/EditFolderDialogHelper;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/sites/bookmark/utils/EditFolderDialogHelper;->handleEditFailure()V

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->mEditBookmarkItem:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

    goto :goto_0

    :pswitch_c
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->mDialogHelper:Lcom/sec/android/app/sbrowser/sites/bookmark/utils/EditFolderDialogHelper;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sites/bookmark/utils/EditFolderDialogHelper;->handleDuplicateFolder()V

    :cond_4
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public initializeBookmarkData(Landroid/content/Context;ZZLcom/sec/android/app/sbrowser/sites/bookmark/model/show_bookmarks/ShowBookmarkViewCallback;)V
    .locals 7

    const-string v0, "ShowBookmarksController"

    const-string v1, "initializeBookmarkData"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, p1

    check-cast v0, Landroid/app/Activity;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->mActivity:Landroid/app/Activity;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->mInitComplete:Z

    invoke-interface {p4}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/show_bookmarks/ShowBookmarkViewCallback;->initShowBookmarksView()Lcom/sec/android/app/sbrowser/sites/bookmark/model/show_bookmarks/IShowBookmarksView;

    move-result-object p4

    iput-object p4, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->mView:Lcom/sec/android/app/sbrowser/sites/bookmark/model/show_bookmarks/IShowBookmarksView;

    new-instance p4, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/SBCHelper;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->mActivity:Landroid/app/Activity;

    invoke-direct {p4, v0, p0}, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/SBCHelper;-><init>(Landroid/app/Activity;Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/SBCHelper$BookmarkControllerDelegate;)V

    iput-object p4, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->mHelper:Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/SBCHelper;

    iget-object p4, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->mView:Lcom/sec/android/app/sbrowser/sites/bookmark/model/show_bookmarks/IShowBookmarksView;

    invoke-interface {p4, p3}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/show_bookmarks/IShowBookmarksView;->setLaunchedFromBookmarkBar(Z)V

    iget-object p4, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->mActivity:Landroid/app/Activity;

    invoke-virtual {p4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->mActivity:Landroid/app/Activity;

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModelHelper;->getBookmarkContentUri(Landroid/app/Activity;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {p4, v0, v1, v2}, Landroid/content/Context;->grantUriPermission(Ljava/lang/String;Landroid/net/Uri;I)V

    iget-object p4, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->mActivity:Landroid/app/Activity;

    invoke-virtual {p4}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p4

    invoke-static {p4}, Lw2/F;->c(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p4

    iput-object p4, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->mSharedPreferences:Landroid/content/SharedPreferences;

    new-instance p4, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModel;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->mActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->mModelListener:Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModelListener;

    invoke-direct {p4, v0, v1}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModel;-><init>(Landroid/content/Context;Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModelListener;)V

    iput-object p4, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->mModel:Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModel;

    new-instance p4, Landroid/os/Handler;

    invoke-direct {p4}, Landroid/os/Handler;-><init>()V

    new-instance v6, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/m;

    const/4 v5, 0x1

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move v3, p3

    move v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/m;-><init>(Ljava/lang/Object;Ljava/lang/Object;ZZI)V

    invoke-virtual {p4, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public initializeCreateBookmarkFolderAlertUtil(Landroid/content/Context;Ljava/util/List;Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModel;Lcom/sec/android/app/sbrowser/sites/bookmark/utils/CreateBookmarkFolderAlertUtil$BookmarkListListener;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;",
            ">;",
            "Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;",
            "Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModel;",
            "Lcom/sec/android/app/sbrowser/sites/bookmark/utils/CreateBookmarkFolderAlertUtil$BookmarkListListener;",
            ")V"
        }
    .end annotation

    new-instance v6, Lcom/sec/android/app/sbrowser/sites/bookmark/utils/CreateBookmarkFolderAlertUtil;

    move-object v0, v6

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/sbrowser/sites/bookmark/utils/CreateBookmarkFolderAlertUtil;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModel;Lcom/sec/android/app/sbrowser/sites/bookmark/utils/CreateBookmarkFolderAlertUtil$BookmarkListListener;)V

    iput-object v6, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->mCreateBookmarkFolderAlertUtil:Lcom/sec/android/app/sbrowser/sites/bookmark/utils/CreateBookmarkFolderAlertUtil;

    return-void
.end method

.method public isFolderItem(Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem;)Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->mModel:Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModel;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModel;->isFolderItem(Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem;)Z

    move-result p0

    return p0
.end method

.method public isIntentLaunched()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->mIntentLaunched:Z

    return p0
.end method

.method public isItemsEmpty()Z
    .locals 6

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->mChildrenList:Ljava/util/List;

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->mCurrentParent:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->mCurrentParent:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getId()J

    move-result-wide v2

    sget-object p0, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$BookmarkSyncID;->SAMSUNG:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$BookmarkSyncID;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$BookmarkSyncID;->getNumVal()J

    move-result-wide v4

    cmp-long p0, v2, v4

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :cond_2
    :goto_0
    return v1
.end method

.method public ismIsSecretMode()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->mIsSecretMode:Z

    return p0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->mHelper:Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/SBCHelper;

    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/SBCHelper;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method public onAppBarHeightChanged(I)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->mView:Lcom/sec/android/app/sbrowser/sites/bookmark/model/show_bookmarks/IShowBookmarksView;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/show_bookmarks/IShowBookmarksView;->onAppBarHeightChanged(I)V

    :cond_0
    return-void
.end method

.method public onAttach(Landroid/content/Context;Lcom/sec/android/app/sbrowser/sites/bookmark/model/show_bookmarks/ShowBookmarkViewCallback;)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onAttach mInitComplete "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->mInitComplete:Z

    const-string v2, "ShowBookmarksController"

    invoke-static {v2, v0, v1}, Lt/b;->z(Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    move-object v0, p1

    check-cast v0, Landroid/app/Activity;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->mActivity:Landroid/app/Activity;

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->mInitComplete:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, v0, p2}, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->initializeBookmarkData(Landroid/content/Context;ZZLcom/sec/android/app/sbrowser/sites/bookmark/model/show_bookmarks/ShowBookmarkViewCallback;)V

    :cond_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/sites/BookmarkNotifier;->getBookmarkNotifier()Lcom/sec/android/app/sbrowser/common/sites/BookmarkNotifier;

    move-result-object p1

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->mBookmarkDbListener:Lcom/sec/android/app/sbrowser/common/sites/BookmarkNotifier$BookmarkDbListener;

    invoke-virtual {p1, p2}, Lcom/sec/android/app/sbrowser/common/sites/BookmarkNotifier;->registerBookmarkListener(Lcom/sec/android/app/sbrowser/common/sites/BookmarkNotifier$BookmarkDbListener;)V

    new-instance p1, Lcom/sec/android/app/sbrowser/sites/bookmark/utils/EditFolderDialogHelper;

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->mActivity:Landroid/app/Activity;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->mModel:Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModel;

    invoke-direct {p1, p2, v0}, Lcom/sec/android/app/sbrowser/sites/bookmark/utils/EditFolderDialogHelper;-><init>(Landroid/app/Activity;Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModel;)V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->mDialogHelper:Lcom/sec/android/app/sbrowser/sites/bookmark/utils/EditFolderDialogHelper;

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->mView:Lcom/sec/android/app/sbrowser/sites/bookmark/model/show_bookmarks/IShowBookmarksView;

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->mActivity:Landroid/app/Activity;

    invoke-interface {p1, p2}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/show_bookmarks/IShowBookmarksView;->setSitesActivity(Landroid/app/Activity;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->mHelper:Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/SBCHelper;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->mActivity:Landroid/app/Activity;

    invoke-virtual {p1, p0}, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/SBCHelper;->setSitesActivity(Landroid/app/Activity;)V

    return-void
.end method

.method public onBackPressed(Z)Z
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->mView:Lcom/sec/android/app/sbrowser/sites/bookmark/model/show_bookmarks/IShowBookmarksView;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->mHelper:Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/SBCHelper;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/SBCHelper;->isShowingProgress()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->mView:Lcom/sec/android/app/sbrowser/sites/bookmark/model/show_bookmarks/IShowBookmarksView;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/show_bookmarks/IShowBookmarksView;->onBackpressed()Z

    move-result v0

    const-string v2, "ShowBookmarksController"

    const/4 v3, 0x1

    if-eqz v0, :cond_2

    const-string p0, "handled is true - return"

    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_2
    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->mBackOp:Z

    if-eqz v0, :cond_3

    const-string p0, "mBackOp is true - return"

    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->mHelper:Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/SBCHelper;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/SBCHelper;->shouldHandleNavigation(Z)Z

    move-result v0

    if-nez v0, :cond_4

    return v1

    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->mBookmarkFolderNavigation:Lcom/sec/android/app/sbrowser/sites/bookmark/controller/BookmarkFolderNavigation;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/BookmarkFolderNavigation;->isStackTopItemMarked()Z

    move-result v0

    goto :goto_0

    :cond_5
    move v0, v1

    :goto_0
    if-eqz v0, :cond_6

    return v1

    :cond_6
    if-eqz p1, :cond_7

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->mAncestorsList:Ljava/util/List;

    if-eqz v0, :cond_7

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v3, :cond_7

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->mBookmarkFolderNavigation:Lcom/sec/android/app/sbrowser/sites/bookmark/controller/BookmarkFolderNavigation;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/BookmarkFolderNavigation;->size()I

    move-result v0

    if-ne v0, v3, :cond_7

    return v1

    :cond_7
    const/4 v0, -0x1

    if-eqz p1, :cond_8

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->mAncestorsList:Ljava/util/List;

    if-eqz p1, :cond_8

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_8

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->mBookmarkFolderNavigation:Lcom/sec/android/app/sbrowser/sites/bookmark/controller/BookmarkFolderNavigation;

    if-eqz p1, :cond_8

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/BookmarkFolderNavigation;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_8

    iput-boolean v3, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->mBackOp:Z

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->mHandler:Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksHandler;

    sget-object v1, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$Messages;->BOOKMARK_HISTORICAL_BACK:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$Messages;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$Messages;->getValue()I

    move-result v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p1, v1, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->mHandler:Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksHandler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :goto_1
    move v1, v3

    goto :goto_2

    :cond_8
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->mAncestorsList:Ljava/util/List;

    if-eqz p1, :cond_9

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-le p1, v3, :cond_9

    iput-boolean v3, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->mBackOp:Z

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->mHandler:Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksHandler;

    sget-object v1, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$Messages;->BOOKMARK_HIERARCHICAL_BACK:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$Messages;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$Messages;->getValue()I

    move-result v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p1, v1, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->mHandler:Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksHandler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_1

    :cond_9
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->mHelper:Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/SBCHelper;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/SBCHelper;->setPrefsToRoot()V

    :goto_2
    return v1
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    const-string v0, "ShowBookmarksController"

    const-string v1, "onConfigurationChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->mView:Lcom/sec/android/app/sbrowser/sites/bookmark/model/show_bookmarks/IShowBookmarksView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v0, p1}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/show_bookmarks/IShowBookmarksView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->mCurrentParent:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

    if-nez p1, :cond_1

    return-void

    :cond_1
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->mAncestorsList:Ljava/util/List;

    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->mView:Lcom/sec/android/app/sbrowser/sites/bookmark/model/show_bookmarks/IShowBookmarksView;

    const/4 v1, 0x1

    invoke-interface {v0, p1, v1}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/show_bookmarks/IShowBookmarksView;->addAncestors(Ljava/util/List;Z)V

    :cond_2
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->mChildrenList:Ljava/util/List;

    if-eqz p1, :cond_3

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->mView:Lcom/sec/android/app/sbrowser/sites/bookmark/model/show_bookmarks/IShowBookmarksView;

    sget-object v0, Lcom/sec/android/app/sbrowser/common/sites/bookmark/model/show_bookmarks/ShowBookmarksConstants$ShowBookmarkLayout;->SHOW_NO_BOOKMARKS:Lcom/sec/android/app/sbrowser/common/sites/bookmark/model/show_bookmarks/ShowBookmarksConstants$ShowBookmarkLayout;

    invoke-interface {p1, v0}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/show_bookmarks/IShowBookmarksView;->setNoBookmarksLayout(Lcom/sec/android/app/sbrowser/common/sites/bookmark/model/show_bookmarks/ShowBookmarksConstants$ShowBookmarkLayout;)V

    goto :goto_0

    :cond_3
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->mView:Lcom/sec/android/app/sbrowser/sites/bookmark/model/show_bookmarks/IShowBookmarksView;

    sget-object v0, Lcom/sec/android/app/sbrowser/common/sites/bookmark/model/show_bookmarks/ShowBookmarksConstants$ShowBookmarkLayout;->SHOW_BOOKMARKS:Lcom/sec/android/app/sbrowser/common/sites/bookmark/model/show_bookmarks/ShowBookmarksConstants$ShowBookmarkLayout;

    invoke-interface {p1, v0}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/show_bookmarks/IShowBookmarksView;->setNoBookmarksLayout(Lcom/sec/android/app/sbrowser/common/sites/bookmark/model/show_bookmarks/ShowBookmarksConstants$ShowBookmarkLayout;)V

    :goto_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->mDialogHelper:Lcom/sec/android/app/sbrowser/sites/bookmark/utils/EditFolderDialogHelper;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sites/bookmark/utils/EditFolderDialogHelper;->showAlertDialogOnOrientation()V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->mView:Lcom/sec/android/app/sbrowser/sites/bookmark/model/show_bookmarks/IShowBookmarksView;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/show_bookmarks/IShowBookmarksView;->onCreateOptionsMenu(Landroid/view/Menu;)V

    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 6

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "onCreateView mInitComplete "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->mInitComplete:Z

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " mShouldRefreshView "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->mShouldRefreshView:Z

    const-string v1, "ShowBookmarksController"

    invoke-static {v1, p2, v0}, Lcom/sec/android/app/sbrowser/autofill/password/k;->A(Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->mView:Lcom/sec/android/app/sbrowser/sites/bookmark/model/show_bookmarks/IShowBookmarksView;

    invoke-interface {p2, p1}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/show_bookmarks/IShowBookmarksView;->onCreateView(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->mActivity:Landroid/app/Activity;

    invoke-virtual {p2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->mAncestorsList:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->mChildrenList:Ljava/util/List;

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->mShowBookmarkId:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->mAncestorsList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getId()J

    move-result-wide v4

    cmp-long v0, v2, v4

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->updateBookmarkFromCache()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->mShouldRefreshView:Z

    :goto_0
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p2

    if-eqz p2, :cond_1

    const-string v0, "SBrowserMainActivityContextId"

    const/4 v2, 0x0

    invoke-virtual {p2, v0, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_1

    const-string v0, "MWidget"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {p2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    sget-object v0, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants;->PREF_SFINDER_BOOKMARK_SET:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-string v0, "perf_show bookmark_sfinder"

    invoke-interface {p2, v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    invoke-interface {p2}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_1
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->mActivity:Landroid/app/Activity;

    const p2, 0x7f0b0b40

    invoke-virtual {p0, p2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroidx/appcompat/widget/Toolbar;

    if-eqz p0, :cond_3

    :goto_1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p2

    if-ge v1, p2, :cond_3

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    instance-of v0, p2, Landroid/widget/ImageButton;

    if-eqz v0, :cond_2

    check-cast p2, Landroid/widget/ImageButton;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/a;

    const/4 v3, 0x1

    invoke-direct {v2, v3, p2}, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/a;-><init>(ILjava/lang/Object;)V

    const-wide/16 v3, 0xfa

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    return-object p1
.end method

.method public onDeleteButtonClicked()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->mView:Lcom/sec/android/app/sbrowser/sites/bookmark/model/show_bookmarks/IShowBookmarksView;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/show_bookmarks/IShowBookmarksView;->onDeleteButtonClicked()V

    return-void
.end method

.method public onDestroy()V
    .locals 3

    const-string v0, "ShowBookmarksController"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$ActivityStatus;->FINISHED:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$ActivityStatus;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->mActivityStatus:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$ActivityStatus;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->mInitComplete:Z

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->mHelper:Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/SBCHelper;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/SBCHelper;->onDestroy()V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/sites/BookmarkNotifier;->getBookmarkNotifier()Lcom/sec/android/app/sbrowser/common/sites/BookmarkNotifier;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->mBookmarkDbListener:Lcom/sec/android/app/sbrowser/common/sites/BookmarkNotifier$BookmarkDbListener;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/common/sites/BookmarkNotifier;->unregisterBookmarkListener(Lcom/sec/android/app/sbrowser/common/sites/BookmarkNotifier$BookmarkDbListener;)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/sites/BookmarkSortTypeChangedNotifier;->getInstance()Lcom/sec/android/app/sbrowser/common/sites/BookmarkSortTypeChangedNotifier;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->mSortTypeChangedListener:Lcom/sec/android/app/sbrowser/common/sites/BookmarkSortTypeChangedNotifier$BookmarkSortChangedListener;

    iget-boolean v2, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->mIsSecretMode:Z

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/sbrowser/common/sites/BookmarkSortTypeChangedNotifier;->removeObserver(Lcom/sec/android/app/sbrowser/common/sites/BookmarkSortTypeChangedNotifier$BookmarkSortChangedListener;Z)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->mModel:Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModel;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModelBase;->unRegisterListener()V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->mView:Lcom/sec/android/app/sbrowser/sites/bookmark/model/show_bookmarks/IShowBookmarksView;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/show_bookmarks/IShowBookmarksView;->onDestroy()V

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->mModel:Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModel;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->mView:Lcom/sec/android/app/sbrowser/sites/bookmark/model/show_bookmarks/IShowBookmarksView;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->mBookmarkFolderNavigation:Lcom/sec/android/app/sbrowser/sites/bookmark/controller/BookmarkFolderNavigation;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/BookmarkFolderNavigation;->clear()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->mBookmarkFolderNavigation:Lcom/sec/android/app/sbrowser/sites/bookmark/controller/BookmarkFolderNavigation;

    :cond_2
    return-void
.end method

.method public onFolderItemSelected(Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem;)V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->mModel:Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModel;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem;->getId()Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModelBase;->getBookmarkItem(Ljava/lang/Long;)Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->mModel:Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModel;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getId()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModel;->getAllAncestorBookmarkItems(Ljava/lang/Long;)V

    :cond_0
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->mActivity:Landroid/app/Activity;

    check-cast p1, Lcom/sec/android/app/sbrowser/sites/SitesActivity;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/sites/SitesActivity;->onBackPressed()V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->mIsFolderSearchClick:Z

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 5

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->mSharedPreferences:Landroid/content/SharedPreferences;

    sget-object v1, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants;->PREF_SFINDER_BOOKMARK_UNSET:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    const-string v1, "perf_show bookmark_sfinder"

    invoke-interface {v0, v1, v3, v4}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    sget-object v3, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants;->PREF_SFINDER_BOOKMARK_SET:Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    cmp-long v0, v0, v3

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return v2

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->mView:Lcom/sec/android/app/sbrowser/sites/bookmark/model/show_bookmarks/IShowBookmarksView;

    if-eqz p0, :cond_1

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/show_bookmarks/IShowBookmarksView;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method public onPause()V
    .locals 3

    sget-object v0, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$ActivityStatus;->BACKGROUND:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$ActivityStatus;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->mActivityStatus:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$ActivityStatus;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->mView:Lcom/sec/android/app/sbrowser/sites/bookmark/model/show_bookmarks/IShowBookmarksView;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/show_bookmarks/IShowBookmarksView;->onPause()V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->mSharedPreferences:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_2

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->mCurrentParent:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    sget-object v0, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants;->PREF_SFINDER_BOOKMARK_UNSET:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-string v2, "perf_show bookmark_sfinder"

    invoke-interface {p0, v2, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_2
    :goto_0
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->mView:Lcom/sec/android/app/sbrowser/sites/bookmark/model/show_bookmarks/IShowBookmarksView;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/show_bookmarks/IShowBookmarksView;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->mView:Lcom/sec/android/app/sbrowser/sites/bookmark/model/show_bookmarks/IShowBookmarksView;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/show_bookmarks/IShowBookmarksView;->onResume()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->mView:Lcom/sec/android/app/sbrowser/sites/bookmark/model/show_bookmarks/IShowBookmarksView;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/show_bookmarks/IShowBookmarksView;->isCABShown()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->mView:Lcom/sec/android/app/sbrowser/sites/bookmark/model/show_bookmarks/IShowBookmarksView;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/show_bookmarks/IShowBookmarksView;->isLaunchedFromBookmarkBar()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->mModel:Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModel;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->mCurrentParent:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

    if-eqz v1, :cond_2

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->mIsSecureDataUnlocked:Z

    if-nez p0, :cond_2

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getId()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModel;->getAllAncestorBookmarkItems(Ljava/lang/Long;)V

    :cond_2
    return-void
.end method

.method public onSearchDelete(Ljava/util/concurrent/CopyOnWriteArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->mHelper:Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/SBCHelper;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/SBCHelper;->showProgress()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->mModel:Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModel;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->getTaskId()I

    move-result p0

    invoke-virtual {v0, p1, p0}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModelBase;->deleteBookmarks(Ljava/util/concurrent/CopyOnWriteArrayList;I)V

    return-void
.end method

.method public onSecureDataUnlocked()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->mView:Lcom/sec/android/app/sbrowser/sites/bookmark/model/show_bookmarks/IShowBookmarksView;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/show_bookmarks/IShowBookmarksView;->isCABShown()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->mIsSecureDataUnlocked:Z

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->mModel:Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModel;

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->mCurrentParent:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getId()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModel;->getAllAncestorBookmarkItems(Ljava/lang/Long;)V

    :cond_1
    return-void
.end method

.method public onViewCreated()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->mView:Lcom/sec/android/app/sbrowser/sites/bookmark/model/show_bookmarks/IShowBookmarksView;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/show_bookmarks/IShowBookmarksView;->isLaunchedFromBookmarkBar()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->mShouldRefreshView:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->mView:Lcom/sec/android/app/sbrowser/sites/bookmark/model/show_bookmarks/IShowBookmarksView;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/show_bookmarks/IShowBookmarksView;->launchInActionMode()V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->mView:Lcom/sec/android/app/sbrowser/sites/bookmark/model/show_bookmarks/IShowBookmarksView;

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/show_bookmarks/IShowBookmarksView;->setLaunchedFromBookmarkBar(Z)V

    :cond_0
    return-void
.end method

.method public setActionModeTitleAlpha(F)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->mView:Lcom/sec/android/app/sbrowser/sites/bookmark/model/show_bookmarks/IShowBookmarksView;

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/show_bookmarks/IShowBookmarksView;->setActionModeTitleAlpha(F)V

    return-void
.end method

.method public setCurrentParent(Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->mCurrentParent:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

    return-void
.end method

.method public setDeleteBookmarkCount(I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->mDeleteBookmarkCount:I

    return-void
.end method

.method public setEditBookmarkItem(Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->mEditBookmarkItem:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

    return-void
.end method

.method public setIntentLaunched(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->mIntentLaunched:Z

    return-void
.end method

.method public setOnClickForSearchItem(Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->mHelper:Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/SBCHelper;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/SBCHelper;->setOnClickForSearchItem(Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem;)V

    return-void
.end method

.method public setSearchData(Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSearchBase;)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Setting search Data in ShowBookmarksController: view = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->mView:Lcom/sec/android/app/sbrowser/sites/bookmark/model/show_bookmarks/IShowBookmarksView;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ShowBookmarksController"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->mModel:Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModel;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModelBase;->getBookmarksHierarchy()V

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/c;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/c;-><init>(Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->mActivity:Landroid/app/Activity;

    const/4 v0, 0x0

    invoke-static {p0, v0, p1, v0}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkQueryUtil;->getBookmarkSearchItems(Landroid/app/Activity;ZLcom/sec/android/app/sbrowser/sites/common/search/model/SitesSearchBase;Z)Ljava/util/LinkedHashMap;

    return-void
.end method

.method public setSelectedParent(Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->mSelectedParent:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

    return-void
.end method

.method public setTargetItem(Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->mTargetItem:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

    return-void
.end method

.method public setViewForNewConfig(Landroid/view/ViewGroup;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->mView:Lcom/sec/android/app/sbrowser/sites/bookmark/model/show_bookmarks/IShowBookmarksView;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/show_bookmarks/IShowBookmarksView;->setViewForNewConfig(Landroid/view/ViewGroup;)V

    :cond_0
    return-void
.end method

.method public setmIntentLaunched(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->mIntentLaunched:Z

    return-void
.end method

.method public updateChildren()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->mView:Lcom/sec/android/app/sbrowser/sites/bookmark/model/show_bookmarks/IShowBookmarksView;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/show_bookmarks/IShowBookmarksView;->updateChildren()V

    return-void
.end method

.method public updateNavBarViewHolder(Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->mView:Lcom/sec/android/app/sbrowser/sites/bookmark/model/show_bookmarks/IShowBookmarksView;

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/show_bookmarks/IShowBookmarksView;->updateNavigationBarFolderName(Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;)V

    return-void
.end method
