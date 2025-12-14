.class public Lcom/sec/android/app/sbrowser/sites/bookmark/controller/select_bookmark_folder/SelectBookmarkFolderController;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/sites/bookmark/controller/select_bookmark_folder/SelectBookmarkFolderController$SelectBookmarkHandler;
    }
.end annotation


# instance fields
.field private mAccountType:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$AccountType;

.field private mActivity:Landroid/app/Activity;

.field private mActivityStatus:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$ActivityStatus;

.field private mAncestorList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;",
            ">;"
        }
    .end annotation
.end field

.field private mBookmarkDbListener:Lcom/sec/android/app/sbrowser/common/sites/BookmarkNotifier$BookmarkDbListener;

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

.field mCollapseMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Long;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mCreateBookmarkFolderAlertUtil:Lcom/sec/android/app/sbrowser/sites/bookmark/utils/CreateBookmarkFolderAlertUtil;

.field private mCurrentParent:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

.field private mDoneSelected:Z

.field mExpandedMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Long;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mFolderList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;",
            ">;"
        }
    .end annotation
.end field

.field private mFolderMap:Lcom/google/common/collect/I;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/I;"
        }
    .end annotation
.end field

.field private final mHandler:Lcom/sec/android/app/sbrowser/sites/bookmark/controller/select_bookmark_folder/SelectBookmarkFolderController$SelectBookmarkHandler;

.field private mIsFromMoveToFolder:Ljava/lang/Boolean;

.field private mListOfObjectTypes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$BookmarkType;",
            ">;"
        }
    .end annotation
.end field

.field private mListOfObjectsIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mLocale:Ljava/lang/String;

.field private mModel:Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModel;

.field private mNonEditableItems:I

.field private mParentId:Ljava/lang/Long;

.field private mParentIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mRootItem:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

.field private mSharedPreferences:Landroid/content/SharedPreferences;

.field private mShowBookmarkId:Ljava/lang/Long;

.field private mShowProgress:Lcom/sec/android/app/sbrowser/common/sites/BookmarksProgressDialog;

.field private mTargetItem:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

.field private mView:Lcom/sec/android/app/sbrowser/sites/bookmark/model/select_bookmark_folder/SelectBookmarkFolderViewDelegate;

.field private mViewListener:Lcom/sec/android/app/sbrowser/sites/bookmark/model/select_bookmark_folder/SelectBookmarkViewListener;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/sec/android/app/sbrowser/sites/bookmark/model/select_bookmark_folder/SelectBookmarkFolderViewDelegate;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$ActivityStatus;->FOREGROUND:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$ActivityStatus;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/select_bookmark_folder/SelectBookmarkFolderController;->mActivityStatus:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$ActivityStatus;

    sget-object v0, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$AccountType;->NONE:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$AccountType;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/select_bookmark_folder/SelectBookmarkFolderController;->mAccountType:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$AccountType;

    new-instance v0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/select_bookmark_folder/SelectBookmarkFolderController$SelectBookmarkHandler;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/select_bookmark_folder/SelectBookmarkFolderController$SelectBookmarkHandler;-><init>(Lcom/sec/android/app/sbrowser/sites/bookmark/controller/select_bookmark_folder/SelectBookmarkFolderController;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/select_bookmark_folder/SelectBookmarkFolderController;->mHandler:Lcom/sec/android/app/sbrowser/sites/bookmark/controller/select_bookmark_folder/SelectBookmarkFolderController$SelectBookmarkHandler;

    new-instance v0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/select_bookmark_folder/SelectBookmarkFolderController$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/select_bookmark_folder/SelectBookmarkFolderController$1;-><init>(Lcom/sec/android/app/sbrowser/sites/bookmark/controller/select_bookmark_folder/SelectBookmarkFolderController;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/select_bookmark_folder/SelectBookmarkFolderController;->mBookmarkListListener:Lcom/sec/android/app/sbrowser/sites/bookmark/utils/CreateBookmarkFolderAlertUtil$BookmarkListListener;

    new-instance v0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/select_bookmark_folder/SelectBookmarkFolderController$3;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/select_bookmark_folder/SelectBookmarkFolderController$3;-><init>(Lcom/sec/android/app/sbrowser/sites/bookmark/controller/select_bookmark_folder/SelectBookmarkFolderController;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/select_bookmark_folder/SelectBookmarkFolderController;->mBookmarkDbListener:Lcom/sec/android/app/sbrowser/common/sites/BookmarkNotifier$BookmarkDbListener;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/select_bookmark_folder/SelectBookmarkFolderController;->mActivity:Landroid/app/Activity;

    new-instance v0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/select_bookmark_folder/SelectBookmarkFolderController$2;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/select_bookmark_folder/SelectBookmarkFolderController$2;-><init>(Lcom/sec/android/app/sbrowser/sites/bookmark/controller/select_bookmark_folder/SelectBookmarkFolderController;)V

    new-instance v1, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModel;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/select_bookmark_folder/SelectBookmarkFolderController;->mActivity:Landroid/app/Activity;

    invoke-direct {v1, v2, v0}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModel;-><init>(Landroid/content/Context;Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModelListener;)V

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/select_bookmark_folder/SelectBookmarkFolderController;->mModel:Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModel;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/select_bookmark_folder/SelectBookmarkFolderController;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModelHelper;->getBookmarkContentUri(Landroid/app/Activity;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModelBase;->setUri(Landroid/net/Uri;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/select_bookmark_folder/SelectBookmarkFolderController;->mModel:Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModel;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModel;->hasPCSyncedBookmarks()Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkPCSyncInfo;

    move-result-object v0

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/sites/BookmarkRootIDManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/sbrowser/common/sites/BookmarkRootIDManager;

    move-result-object p1

    iget v1, v0, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkPCSyncInfo;->mPCBookmarkCount:I

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/select_bookmark_folder/SelectBookmarkFolderController;->mActivity:Landroid/app/Activity;

    invoke-static {v2}, Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;->isSecretModeEnabled(Landroid/app/Activity;)Z

    move-result v2

    invoke-virtual {p1, v1, v2}, Lcom/sec/android/app/sbrowser/common/sites/BookmarkRootIDManager;->setPCBookmarkCount(IZ)V

    iget-object v1, v0, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkPCSyncInfo;->mPCSyncList:Ljava/util/List;

    invoke-virtual {p1, v1}, Lcom/sec/android/app/sbrowser/common/sites/BookmarkRootIDManager;->setPCFolderId(Ljava/util/List;)V

    iget p1, v0, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkPCSyncInfo;->mPCBookmarkCount:I

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/select_bookmark_folder/SelectBookmarkFolderController;->mModel:Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModel;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModel;->createPCBookmarkFolderIfNeeded()V

    :cond_0
    iput-object p2, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/select_bookmark_folder/SelectBookmarkFolderController;->mView:Lcom/sec/android/app/sbrowser/sites/bookmark/model/select_bookmark_folder/SelectBookmarkFolderViewDelegate;

    return-void
.end method

.method public static bridge synthetic a(Lcom/sec/android/app/sbrowser/sites/bookmark/controller/select_bookmark_folder/SelectBookmarkFolderController;)Landroid/app/Activity;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/select_bookmark_folder/SelectBookmarkFolderController;->mActivity:Landroid/app/Activity;

    return-object p0
.end method

.method private addNextAncestorChildren(IILcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;)V
    .locals 9

    if-ltz p2, :cond_4

    if-nez p3, :cond_0

    goto/16 :goto_1

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/select_bookmark_folder/SelectBookmarkFolderController;->mFolderMap:Lcom/google/common/collect/I;

    invoke-virtual {p3}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getId()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/common/collect/I;->get(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-virtual {p3}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getFolderCount()I

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    invoke-virtual {p3, v2}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->setExpanded(Z)V

    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/select_bookmark_folder/SelectBookmarkFolderController;->mExpandedMap:Ljava/util/HashMap;

    invoke-virtual {p3}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getId()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/select_bookmark_folder/SelectBookmarkFolderController;->mCollapseMap:Ljava/util/HashMap;

    invoke-virtual {p3}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getId()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    invoke-virtual {v1, p3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    const/4 v0, -0x1

    const/4 v1, 0x0

    move v3, v0

    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/select_bookmark_folder/SelectBookmarkFolderController;->mFolderList:Ljava/util/List;

    invoke-interface {v5, p1, v4}, Ljava/util/List;->add(ILjava/lang/Object;)V

    if-lt p2, v2, :cond_2

    invoke-virtual {v4}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getId()J

    move-result-wide v5

    iget-object v7, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/select_bookmark_folder/SelectBookmarkFolderController;->mAncestorList:Ljava/util/List;

    add-int/lit8 v8, p2, -0x1

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

    invoke-virtual {v7}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getId()J

    move-result-wide v7

    cmp-long v5, v5, v7

    if-nez v5, :cond_2

    move v3, p1

    move-object v1, v4

    :cond_2
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_3
    if-eq v3, v0, :cond_4

    add-int/2addr v3, v2

    sub-int/2addr p2, v2

    invoke-direct {p0, v3, p2, v1}, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/select_bookmark_folder/SelectBookmarkFolderController;->addNextAncestorChildren(IILcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;)V

    :cond_4
    :goto_1
    return-void
.end method

.method public static bridge synthetic b(Lcom/sec/android/app/sbrowser/sites/bookmark/controller/select_bookmark_folder/SelectBookmarkFolderController;)Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$ActivityStatus;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/select_bookmark_folder/SelectBookmarkFolderController;->mActivityStatus:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$ActivityStatus;

    return-object p0
.end method

.method private bookmarkDBOperations(Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$Messages;Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/select_bookmark_folder/SelectBookmarkFolderController;->mActivityStatus:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$ActivityStatus;

    sget-object v1, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$ActivityStatus;->FINISHED:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$ActivityStatus;

    if-eq v0, v1, :cond_1

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/select_bookmark_folder/SelectBookmarkFolderController;->finishActivityInMultiWindow(Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$Messages;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/select_bookmark_folder/SelectBookmarkFolderController$5;->$SwitchMap$com$sec$android$app$sbrowser$common$constants$sites$BookmarkConstants$Messages:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/select_bookmark_folder/SelectBookmarkFolderController;->mModel:Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModel;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModel;->getBookmarkFolderHierarchy()V

    goto :goto_0

    :pswitch_1
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/select_bookmark_folder/SelectBookmarkFolderController;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    :pswitch_2
    invoke-direct {p0, p2}, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/select_bookmark_folder/SelectBookmarkFolderController;->handleBookmarkAccountUpdated(Ljava/lang/Object;)V

    goto :goto_0

    :pswitch_3
    invoke-direct {p0, p2}, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/select_bookmark_folder/SelectBookmarkFolderController;->handleBookmarkReorderedSuccess(Ljava/lang/Object;)V

    goto :goto_0

    :pswitch_4
    invoke-direct {p0, p2}, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/select_bookmark_folder/SelectBookmarkFolderController;->handleBookmarkMoveSuccess(Ljava/lang/Object;)V

    goto :goto_0

    :pswitch_5
    invoke-direct {p0, p2}, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/select_bookmark_folder/SelectBookmarkFolderController;->handleBookmarkEditParentSuccess(Ljava/lang/Object;)V

    goto :goto_0

    :pswitch_6
    invoke-direct {p0, p2}, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/select_bookmark_folder/SelectBookmarkFolderController;->handleBookmarkEditSuccess(Ljava/lang/Object;)V

    goto :goto_0

    :pswitch_7
    invoke-direct {p0, p2}, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/select_bookmark_folder/SelectBookmarkFolderController;->handleBookmarkDeletedMultiple(Ljava/lang/Object;)V

    goto :goto_0

    :pswitch_8
    invoke-direct {p0, p2}, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/select_bookmark_folder/SelectBookmarkFolderController;->handleBookmarkDeleteSuccess(Ljava/lang/Object;)V

    goto :goto_0

    :pswitch_9
    invoke-direct {p0, p2}, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/select_bookmark_folder/SelectBookmarkFolderController;->handleBookmarkAddSuccess(Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static bridge synthetic c(Lcom/sec/android/app/sbrowser/sites/bookmark/controller/select_bookmark_folder/SelectBookmarkFolderController;)Lcom/sec/android/app/sbrowser/sites/bookmark/utils/CreateBookmarkFolderAlertUtil$BookmarkListListener;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/select_bookmark_folder/SelectBookmarkFolderController;->mBookmarkListListener:Lcom/sec/android/app/sbrowser/sites/bookmark/utils/CreateBookmarkFolderAlertUtil$BookmarkListListener;

    return-object p0
.end method

.method public static bridge synthetic d(Lcom/sec/android/app/sbrowser/sites/bookmark/controller/select_bookmark_folder/SelectBookmarkFolderController;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/select_bookmark_folder/SelectBookmarkFolderController;->mChildrenList:Ljava/util/List;

    return-object p0
.end method

.method private dismissProgress()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/select_bookmark_folder/SelectBookmarkFolderController;->mShowProgress:Lcom/sec/android/app/sbrowser/common/sites/BookmarksProgressDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/select_bookmark_folder/SelectBookmarkFolderController;->mShowProgress:Lcom/sec/android/app/sbrowser/common/sites/BookmarksProgressDialog;

    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    :cond_0
    return-void
.end method

.method public static bridge synthetic e(Lcom/sec/android/app/sbrowser/sites/bookmark/controller/select_bookmark_folder/SelectBookmarkFolderController;)Lcom/sec/android/app/sbrowser/sites/bookmark/utils/CreateBookmarkFolderAlertUtil;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/select_bookmark_folder/SelectBookmarkFolderController;->mCreateBookmarkFolderAlertUtil:Lcom/sec/android/app/sbrowser/sites/bookmark/utils/CreateBookmarkFolderAlertUtil;

    return-object p0
.end method

.method private expandToParent()V
    .locals 9

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/select_bookmark_folder/SelectBookmarkFolderController;->mFolderList:Ljava/util/List;

    if-eqz v0, :cond_4

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/select_bookmark_folder/SelectBookmarkFolderController;->mAncestorList:Ljava/util/List;

    if-nez v1, :cond_0

    goto :goto_2

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/select_bookmark_folder/SelectBookmarkFolderController;->mAncestorList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_4

    move v4, v2

    :goto_1
    if-ge v4, v0, :cond_3

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/select_bookmark_folder/SelectBookmarkFolderController;->mAncestorList:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

    invoke-virtual {v5}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getId()J

    move-result-wide v5

    iget-object v7, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/select_bookmark_folder/SelectBookmarkFolderController;->mFolderList:Ljava/util/List;

    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

    invoke-virtual {v7}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getId()J

    move-result-wide v7

    cmp-long v5, v5, v7

    if-nez v5, :cond_2

    add-int/lit8 v0, v4, 0x1

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/select_bookmark_folder/SelectBookmarkFolderController;->mFolderList:Ljava/util/List;

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->isExpanded()Z

    move-result v1

    if-eqz v1, :cond_1

    add-int/lit8 v3, v3, -0x1

    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/select_bookmark_folder/SelectBookmarkFolderController;->mFolderList:Ljava/util/List;

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

    invoke-direct {p0, v0, v3, v1}, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/select_bookmark_folder/SelectBookmarkFolderController;->addNextAncestorChildren(IILcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;)V

    return-void

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    :goto_2
    return-void
.end method

.method public static bridge synthetic f(Lcom/sec/android/app/sbrowser/sites/bookmark/controller/select_bookmark_folder/SelectBookmarkFolderController;)Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/select_bookmark_folder/SelectBookmarkFolderController;->mCurrentParent:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

    return-object p0
.end method

.method private finishActivityInMultiWindow(Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$Messages;)Z
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/select_bookmark_folder/SelectBookmarkFolderController;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->hasWindowFocus()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;->getInstance()Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;

    move-result-object v0

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/select_bookmark_folder/SelectBookmarkFolderController;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;->isFocusedInstance(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;->getInstance()Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;->size()I

    move-result v0

    const/4 v2, 0x1

    if-le v0, v2, :cond_1

    sget-object v0, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$Messages;->BOOKMARK_ICON_UPDATED:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$Messages;

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/select_bookmark_folder/SelectBookmarkFolderController;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, v1, p1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/select_bookmark_folder/SelectBookmarkFolderController;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return v2

    :cond_1
    :goto_0
    return v1
.end method

.method public static bridge synthetic g(Lcom/sec/android/app/sbrowser/sites/bookmark/controller/select_bookmark_folder/SelectBookmarkFolderController;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/select_bookmark_folder/SelectBookmarkFolderController;->mDoneSelected:Z

    return p0
.end method

.method private getMoveMessage(Ljava/util/List;)Ljava/lang/String;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/select_bookmark_folder/SelectBookmarkFolderController;->mActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/select_bookmark_folder/SelectBookmarkFolderController;->mTargetItem:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getId()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/select_bookmark_folder/SelectBookmarkFolderController;->mTargetItem:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getTitle()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/select_bookmark_folder/SelectBookmarkFolderController;->mTargetItem:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getGUID()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkStringUtil;->getUpdatedStrings(Landroid/content/Context;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0x64

    if-lt v1, v4, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/select_bookmark_folder/SelectBookmarkFolderController;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v1

    if-ne v1, v3, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, v4

    invoke-static {v3, v1, v0}, LB/e;->n(IILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/16 v1, 0x63

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-static {v0}, LB/e;->r(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/select_bookmark_folder/SelectBookmarkFolderController;->mActivity:Landroid/app/Activity;

    const v4, 0x7f140271

    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v4, 0x2

    sub-int/2addr v1, v4

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/select_bookmark_folder/SelectBookmarkFolderController;->mListOfObjectsIds:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    move v6, v2

    move v7, v4

    move v4, v6

    :goto_1
    if-ge v2, v5, :cond_5

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v8

    if-ge v7, v8, :cond_5

    iget-object v8, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/select_bookmark_folder/SelectBookmarkFolderController;->mListOfObjectsIds:Ljava/util/List;

    invoke-interface {v8, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Long;

    invoke-interface {p1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    iget-object v8, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/select_bookmark_folder/SelectBookmarkFolderController;->mListOfObjectTypes:Ljava/util/List;

    invoke-interface {v8, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    sget-object v9, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$BookmarkType;->FOLDER:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$BookmarkType;

    if-ne v8, v9, :cond_2

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_2
    add-int/lit8 v4, v4, 0x1

    :goto_2
    add-int/lit8 v7, v7, 0x1

    :cond_3
    if-eqz v6, :cond_4

    if-eqz v4, :cond_4

    goto :goto_3

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_5
    :goto_3
    if-eqz v6, :cond_7

    if-eqz v4, :cond_7

    iget p1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/select_bookmark_folder/SelectBookmarkFolderController;->mNonEditableItems:I

    if-lez p1, :cond_6

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/select_bookmark_folder/SelectBookmarkFolderController;->mActivity:Landroid/app/Activity;

    const p1, 0x7f14026c

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1, v0}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_4

    :cond_6
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/select_bookmark_folder/SelectBookmarkFolderController;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f120004

    invoke-virtual {p0, p1, v1}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object p0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1, v0}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_4

    :cond_7
    if-eqz v6, :cond_b

    if-le v6, v3, :cond_9

    iget p1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/select_bookmark_folder/SelectBookmarkFolderController;->mNonEditableItems:I

    if-lez p1, :cond_8

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/select_bookmark_folder/SelectBookmarkFolderController;->mActivity:Landroid/app/Activity;

    const p1, 0x7f14026b

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1, v0}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_4

    :cond_8
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/select_bookmark_folder/SelectBookmarkFolderController;->mActivity:Landroid/app/Activity;

    const p1, 0x7f14026a

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1, v0}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_4

    :cond_9
    iget p1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/select_bookmark_folder/SelectBookmarkFolderController;->mNonEditableItems:I

    if-lez p1, :cond_a

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/select_bookmark_folder/SelectBookmarkFolderController;->mActivity:Landroid/app/Activity;

    const p1, 0x7f140269

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_4

    :cond_a
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/select_bookmark_folder/SelectBookmarkFolderController;->mActivity:Landroid/app/Activity;

    const p1, 0x7f140268

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_4

    :cond_b
    if-le v4, v3, :cond_d

    iget p1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/select_bookmark_folder/SelectBookmarkFolderController;->mNonEditableItems:I

    if-lez p1, :cond_c

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/select_bookmark_folder/SelectBookmarkFolderController;->mActivity:Landroid/app/Activity;

    const p1, 0x7f140266

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1, v0}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_4

    :cond_c
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/select_bookmark_folder/SelectBookmarkFolderController;->mActivity:Landroid/app/Activity;

    const p1, 0x7f140265

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1, v0}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_4

    :cond_d
    iget p1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/select_bookmark_folder/SelectBookmarkFolderController;->mNonEditableItems:I

    if-lez p1, :cond_e

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/select_bookmark_folder/SelectBookmarkFolderController;->mActivity:Landroid/app/Activity;

    const p1, 0x7f140264

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_4

    :cond_e
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/select_bookmark_folder/SelectBookmarkFolderController;->mActivity:Landroid/app/Activity;

    const p1, 0x7f140263

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    :goto_4
    return-object p0
.end method

.method private getViewListener()Lcom/sec/android/app/sbrowser/sites/bookmark/model/select_bookmark_folder/SelectBookmarkViewListener;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/select_bookmark_folder/SelectBookmarkFolderController;->mViewListener:Lcom/sec/android/app/sbrowser/sites/bookmark/model/select_bookmark_folder/SelectBookmarkViewListener;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/select_bookmark_folder/SelectBookmarkFolderController$4;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/select_bookmark_folder/SelectBookmarkFolderController$4;-><init>(Lcom/sec/android/app/sbrowser/sites/bookmark/controller/select_bookmark_folder/SelectBookmarkFolderController;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/select_bookmark_folder/SelectBookmarkFolderController;->mViewListener:Lcom/sec/android/app/sbrowser/sites/bookmark/model/select_bookmark_folder/SelectBookmarkViewListener;

    return-object v0
.end method

.method public static bridge synthetic h(Lcom/sec/android/app/sbrowser/sites/bookmark/controller/select_bookmark_folder/SelectBookmarkFolderController;)Lcom/google/common/collect/I;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/select_bookmark_folder/SelectBookmarkFolderController;->mFolderMap:Lcom/google/common/collect/I;

    return-object p0
.end method

.method private handleBookmarkAccountUpdated(Ljava/lang/Object;)V
    .locals 2

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/select_bookmark_folder/SelectBookmarkFolderController;->mIsFromMoveToFolder:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/select_bookmark_folder/SelectBookmarkFolderController;->mModel:Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModel;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModel;->getBookmarkFolderHierarchy()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/select_bookmark_folder/SelectBookmarkFolderController;->mAccountType:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$AccountType;

    sget-object v1, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$AccountType;->SAMSUNG:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$AccountType;

    if-ne v0, v1, :cond_1

    and-int/lit8 p1, p1, 0x2

    if-nez p1, :cond_1

    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/select_bookmark_folder/SelectBookmarkFolderController;->mActivity:Landroid/app/Activity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/select_bookmark_folder/SelectBookmarkFolderController;->mActivity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    :cond_1
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/select_bookmark_folder/SelectBookmarkFolderController;->mModel:Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModel;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModel;->getBookmarkFolderHierarchy()V

    return-void
.end method

.method private handleBookmarkAddSuccess(Ljava/lang/Object;)V
    .locals 8

    check-cast p1, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkAddInfo;

    iget-object p1, p1, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkAddInfo;->item:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

    if-eqz p1, :cond_9

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/select_bookmark_folder/SelectBookmarkFolderController;->mFolderList:Ljava/util/List;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/select_bookmark_folder/SelectBookmarkFolderController;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;->isSecretModeEnabled(Landroid/app/Activity;)Z

    move-result v0

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->isPrivate()Z

    move-result v1

    if-eq v0, v1, :cond_0

    goto/16 :goto_4

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/select_bookmark_folder/SelectBookmarkFolderController;->mFolderList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    const/4 v3, 0x1

    if-ge v2, v0, :cond_5

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getParentId()J

    move-result-wide v4

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/select_bookmark_folder/SelectBookmarkFolderController;->mFolderList:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

    invoke-virtual {v6}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getId()J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-nez v4, :cond_4

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getType()Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$BookmarkType;

    move-result-object v4

    sget-object v5, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$BookmarkType;->FOLDER:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$BookmarkType;

    if-ne v4, v5, :cond_3

    add-int/lit8 v4, v2, 0x1

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/select_bookmark_folder/SelectBookmarkFolderController;->mFolderList:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

    invoke-virtual {v5}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->isExpanded()Z

    move-result v5

    if-nez v5, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/select_bookmark_folder/SelectBookmarkFolderController;->mExpandedMap:Ljava/util/HashMap;

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/select_bookmark_folder/SelectBookmarkFolderController;->mFolderList:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

    invoke-virtual {v5}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getId()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/select_bookmark_folder/SelectBookmarkFolderController;->mCollapseMap:Ljava/util/HashMap;

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/select_bookmark_folder/SelectBookmarkFolderController;->mFolderList:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

    invoke-virtual {v5}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getId()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/select_bookmark_folder/SelectBookmarkFolderController;->mFolderList:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

    invoke-virtual {v0, v3}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->setExpanded(Z)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/select_bookmark_folder/SelectBookmarkFolderController;->mFolderMap:Lcom/google/common/collect/I;

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/select_bookmark_folder/SelectBookmarkFolderController;->mFolderList:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

    invoke-virtual {v5}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getId()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v0, v5}, Lcom/google/common/collect/I;->get(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    move v5, v1

    :goto_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_2

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/select_bookmark_folder/SelectBookmarkFolderController;->mFolderList:Ljava/util/List;

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

    invoke-interface {v6, v4, v7}, Ljava/util/List;->add(ILjava/lang/Object;)V

    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_1
    :goto_2
    if-ge v4, v0, :cond_2

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/select_bookmark_folder/SelectBookmarkFolderController;->mFolderList:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

    invoke-virtual {v5}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getBookmarkLevel()I

    move-result v5

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/select_bookmark_folder/SelectBookmarkFolderController;->mFolderList:Ljava/util/List;

    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

    invoke-virtual {v6}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getBookmarkLevel()I

    move-result v6

    if-ge v5, v6, :cond_2

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/select_bookmark_folder/SelectBookmarkFolderController;->mFolderList:Ljava/util/List;

    invoke-interface {v0, v4, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/select_bookmark_folder/SelectBookmarkFolderController;->mFolderList:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/select_bookmark_folder/SelectBookmarkFolderController;->mFolderList:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

    invoke-virtual {v4}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getFolderCount()I

    move-result v4

    add-int/2addr v4, v3

    invoke-virtual {v0, v4}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->setFolderCount(I)V

    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/select_bookmark_folder/SelectBookmarkFolderController;->mFolderList:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/select_bookmark_folder/SelectBookmarkFolderController;->mFolderList:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

    invoke-virtual {v4}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getChildCount()I

    move-result v4

    add-int/2addr v4, v3

    invoke-virtual {v0, v4}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->setChildCount(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/select_bookmark_folder/SelectBookmarkFolderController;->mFolderList:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getBookmarkLevel()I

    move-result v0

    add-int/2addr v0, v3

    invoke-virtual {p1, v0}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->setBookmarkLevel(I)V

    goto :goto_3

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_5
    :goto_3
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/select_bookmark_folder/SelectBookmarkFolderController;->mChildrenList:Ljava/util/List;

    if-nez v0, :cond_6

    return-void

    :cond_6
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/select_bookmark_folder/SelectBookmarkFolderController;->mFolderMap:Lcom/google/common/collect/I;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getParentId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v2, p1}, Lcom/google/common/collect/I;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/select_bookmark_folder/SelectBookmarkFolderController;->mView:Lcom/sec/android/app/sbrowser/sites/bookmark/model/select_bookmark_folder/SelectBookmarkFolderViewDelegate;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/select_bookmark_folder/SelectBookmarkFolderController;->mFolderList:Ljava/util/List;

    invoke-interface {v0, v2}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/select_bookmark_folder/SelectBookmarkFolderViewDelegate;->displayList(Ljava/util/List;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/select_bookmark_folder/SelectBookmarkFolderController;->mActivity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/select_bookmark_folder/SelectBookmarkFolderController;->mModel:Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModel;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModelBase;->getBookmarkRoot()Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getId()J

    move-result-wide v4

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getParentId()J

    move-result-wide v6

    cmp-long v2, v4, v6

    if-nez v2, :cond_7

    move v1, v3

    :cond_7
    invoke-static {p1, v0, v1}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkUtil;->showSuccessToast(Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;Landroid/app/Activity;Z)V

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getType()Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$BookmarkType;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$BookmarkType;->FOLDER:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$BookmarkType;

    if-ne v0, v1, :cond_8

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/select_bookmark_folder/SelectBookmarkFolderController;->mCurrentParent:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/select_bookmark_folder/SelectBookmarkFolderController;->mView:Lcom/sec/android/app/sbrowser/sites/bookmark/model/select_bookmark_folder/SelectBookmarkFolderViewDelegate;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getId()J

    move-result-wide v1

    invoke-interface {v0, v1, v2}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/select_bookmark_folder/SelectBookmarkFolderViewDelegate;->setSelectedFolder(J)V

    :cond_8
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/select_bookmark_folder/SelectBookmarkFolderController;->mIsFromMoveToFolder:Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_9

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/select_bookmark_folder/SelectBookmarkFolderController;->mActivity:Landroid/app/Activity;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->isInMultiWindowMode(Landroid/app/Activity;)Z

    move-result p1

    if-eqz p1, :cond_9

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/select_bookmark_folder/SelectBookmarkFolderController;->mModel:Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModel;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/select_bookmark_folder/SelectBookmarkFolderController;->mCurrentParent:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getId()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModel;->getBookmarkChildrenFolder(Ljava/lang/Long;)V

    :cond_9
    :goto_4
    return-void
.end method

.method private handleBookmarkDeleteSuccess(Ljava/lang/Object;)V
    .locals 10

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "BOOKMARK_DELETE_SUCCESS "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/select_bookmark_folder/SelectBookmarkFolderController;->mIsFromMoveToFolder:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SelectFolderController"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    check-cast p1, Ljava/util/List;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/select_bookmark_folder/SelectBookmarkFolderController;->mIsFromMoveToFolder:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_a

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getType()Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$BookmarkType;

    move-result-object v4

    sget-object v5, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$BookmarkType;->URL:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$BookmarkType;

    if-ne v4, v5, :cond_1

    goto :goto_0

    :cond_1
    iget-object v4, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/select_bookmark_folder/SelectBookmarkFolderController;->mParentIds:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getId()J

    move-result-wide v6

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    cmp-long v5, v6, v8

    if-nez v5, :cond_2

    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/select_bookmark_folder/SelectBookmarkFolderController;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, v2, p1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/select_bookmark_folder/SelectBookmarkFolderController;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    :cond_3
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_8

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getParentId()J

    move-result-wide v3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/select_bookmark_folder/SelectBookmarkFolderController;->mParentIds:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    cmp-long v0, v3, v5

    if-nez v0, :cond_8

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/select_bookmark_folder/SelectBookmarkFolderController;->mListOfObjectsIds:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    :goto_1
    if-ltz v3, :cond_4

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getId()J

    move-result-wide v4

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/select_bookmark_folder/SelectBookmarkFolderController;->mCurrentParent:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

    invoke-virtual {v6}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getId()J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-nez v4, :cond_5

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/select_bookmark_folder/SelectBookmarkFolderController;->mRootItem:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

    iput-object v4, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/select_bookmark_folder/SelectBookmarkFolderController;->mCurrentParent:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

    :cond_5
    iget-object v4, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/select_bookmark_folder/SelectBookmarkFolderController;->mListOfObjectsIds:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getId()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/select_bookmark_folder/SelectBookmarkFolderController;->mListOfObjectsIds:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/select_bookmark_folder/SelectBookmarkFolderController;->mListOfObjectTypes:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_6
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    :cond_7
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/select_bookmark_folder/SelectBookmarkFolderController;->mListOfObjectsIds:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_8

    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/select_bookmark_folder/SelectBookmarkFolderController;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, v2, p1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/select_bookmark_folder/SelectBookmarkFolderController;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    :cond_8
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/select_bookmark_folder/SelectBookmarkFolderController;->mModel:Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModel;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/select_bookmark_folder/SelectBookmarkFolderController;->mParentId:Ljava/lang/Long;

    invoke-virtual {p1, v0}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModel;->getBookmarkChildrenFolder(Ljava/lang/Long;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/select_bookmark_folder/SelectBookmarkFolderController;->mModel:Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModel;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModel;->getBookmarkFolderHierarchy()V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/select_bookmark_folder/SelectBookmarkFolderController;->mCreateBookmarkFolderAlertUtil:Lcom/sec/android/app/sbrowser/sites/bookmark/utils/CreateBookmarkFolderAlertUtil;

    if-eqz p1, :cond_9

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/sites/bookmark/utils/CreateBookmarkFolderAlertUtil;->hideCreateFolderDialog()V

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/select_bookmark_folder/SelectBookmarkFolderController;->mCreateBookmarkFolderAlertUtil:Lcom/sec/android/app/sbrowser/sites/bookmark/utils/CreateBookmarkFolderAlertUtil;

    :cond_9
    return-void

    :cond_a
    :goto_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_c

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getType()Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$BookmarkType;

    move-result-object v0

    sget-object v3, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$BookmarkType;->FOLDER:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$BookmarkType;

    if-ne v0, v3, :cond_b

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/select_bookmark_folder/SelectBookmarkFolderController;->mModel:Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModel;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/select_bookmark_folder/SelectBookmarkFolderController;->mRootItem:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getId()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModel;->getBookmarkChildrenFolder(Ljava/lang/Long;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/select_bookmark_folder/SelectBookmarkFolderController;->mRootItem:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/select_bookmark_folder/SelectBookmarkFolderController;->mCurrentParent:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/select_bookmark_folder/SelectBookmarkFolderController;->mCreateBookmarkFolderAlertUtil:Lcom/sec/android/app/sbrowser/sites/bookmark/utils/CreateBookmarkFolderAlertUtil;

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/sites/bookmark/utils/CreateBookmarkFolderAlertUtil;->hideCreateFolderDialog()V

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/select_bookmark_folder/SelectBookmarkFolderController;->mCreateBookmarkFolderAlertUtil:Lcom/sec/android/app/sbrowser/sites/bookmark/utils/CreateBookmarkFolderAlertUtil;

    :cond_b
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_c
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/select_bookmark_folder/SelectBookmarkFolderController;->mModel:Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModel;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModel;->getBookmarkFolderHierarchy()V

    return-void
.end method

.method private handleBookmarkDeletedMultiple(Ljava/lang/Object;)V
    .locals 7

    const-string v0, "SelectFolderController"

    const-string v1, "BOOKMARK_DELETED_MULTIPLE_URLS"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    check-cast p1, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkDeleteInfo;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/select_bookmark_folder/SelectBookmarkFolderController;->mIsFromMoveToFolder:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/select_bookmark_folder/SelectBookmarkFolderController;->mListOfObjectsIds:Ljava/util/List;

    if-eqz v0, :cond_6

    if-eqz p1, :cond_6

    const/4 v0, 0x0

    move v2, v0

    :goto_0
    iget-object v3, p1, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkDeleteInfo;->success_ids:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_3

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/select_bookmark_folder/SelectBookmarkFolderController;->mListOfObjectsIds:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    :goto_1
    if-ltz v3, :cond_2

    iget-object v4, p1, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkDeleteInfo;->success_ids:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/select_bookmark_folder/SelectBookmarkFolderController;->mCurrentParent:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

    invoke-virtual {v5}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getId()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/select_bookmark_folder/SelectBookmarkFolderController;->mRootItem:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

    iput-object v4, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/select_bookmark_folder/SelectBookmarkFolderController;->mCurrentParent:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

    :cond_0
    iget-object v4, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/select_bookmark_folder/SelectBookmarkFolderController;->mListOfObjectsIds:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    iget-object v5, p1, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkDeleteInfo;->success_ids:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/select_bookmark_folder/SelectBookmarkFolderController;->mListOfObjectsIds:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/select_bookmark_folder/SelectBookmarkFolderController;->mListOfObjectTypes:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_1
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/select_bookmark_folder/SelectBookmarkFolderController;->mListOfObjectsIds:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_4

    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/select_bookmark_folder/SelectBookmarkFolderController;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2, v0, p1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/select_bookmark_folder/SelectBookmarkFolderController;->mActivity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    :cond_4
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/select_bookmark_folder/SelectBookmarkFolderController;->mModel:Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModel;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModel;->getBookmarkFolderHierarchy()V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/select_bookmark_folder/SelectBookmarkFolderController;->mModel:Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModel;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/select_bookmark_folder/SelectBookmarkFolderController;->mParentId:Ljava/lang/Long;

    invoke-virtual {p1, v0}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModel;->getBookmarkChildrenFolder(Ljava/lang/Long;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/select_bookmark_folder/SelectBookmarkFolderController;->mCreateBookmarkFolderAlertUtil:Lcom/sec/android/app/sbrowser/sites/bookmark/utils/CreateBookmarkFolderAlertUtil;

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/sites/bookmark/utils/CreateBookmarkFolderAlertUtil;->hideCreateFolderDialog()V

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/select_bookmark_folder/SelectBookmarkFolderController;->mCreateBookmarkFolderAlertUtil:Lcom/sec/android/app/sbrowser/sites/bookmark/utils/CreateBookmarkFolderAlertUtil;

    :cond_5
    return-void

    :cond_6
    if-eqz p1, :cond_8

    iget-object v0, p1, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkDeleteInfo;->success_ids:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_8

    iget-boolean p1, p1, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkDeleteInfo;->isFolder:Z

    if-eqz p1, :cond_7

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/select_bookmark_folder/SelectBookmarkFolderController;->mModel:Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModel;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/select_bookmark_folder/SelectBookmarkFolderController;->mRootItem:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModel;->getBookmarkChildrenFolder(Ljava/lang/Long;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/select_bookmark_folder/SelectBookmarkFolderController;->mRootItem:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/select_bookmark_folder/SelectBookmarkFolderController;->mCurrentParent:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/select_bookmark_folder/SelectBookmarkFolderController;->mCreateBookmarkFolderAlertUtil:Lcom/sec/android/app/sbrowser/sites/bookmark/utils/CreateBookmarkFolderAlertUtil;

    if-eqz p1, :cond_7

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/sites/bookmark/utils/CreateBookmarkFolderAlertUtil;->hideCreateFolderDialog()V

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/select_bookmark_folder/SelectBookmarkFolderController;->mCreateBookmarkFolderAlertUtil:Lcom/sec/android/app/sbrowser/sites/bookmark/utils/CreateBookmarkFolderAlertUtil;

    :cond_7
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/select_bookmark_folder/SelectBookmarkFolderController;->mModel:Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModel;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModel;->getBookmarkFolderHierarchy()V

    :cond_8
    return-void
.end method

.method private handleBookmarkEditParentSuccess(Ljava/lang/Object;)V
    .locals 9

    check-cast p1, Ljava/util/ArrayList;

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/select_bookmark_folder/SelectBookmarkFolderController;->mFolderList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x2

    :goto_0
    if-ge v0, v3, :cond_3

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getParentId()J

    move-result-wide v5

    iget-object v7, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/select_bookmark_folder/SelectBookmarkFolderController;->mFolderList:Ljava/util/List;

    invoke-interface {v7, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

    invoke-virtual {v7}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getId()J

    move-result-wide v7

    cmp-long v5, v5, v7

    if-nez v5, :cond_1

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/select_bookmark_folder/SelectBookmarkFolderController;->mFolderList:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/select_bookmark_folder/SelectBookmarkFolderController;->mFolderList:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

    invoke-virtual {v6}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getChildCount()I

    move-result v6

    sub-int/2addr v6, v2

    invoke-virtual {v5, v6}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->setChildCount(I)V

    add-int/lit8 v4, v4, -0x1

    if-nez v4, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getParentId()J

    move-result-wide v5

    iget-object v7, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/select_bookmark_folder/SelectBookmarkFolderController;->mFolderList:Ljava/util/List;

    invoke-interface {v7, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

    invoke-virtual {v7}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getId()J

    move-result-wide v7

    cmp-long v5, v5, v7

    if-nez v5, :cond_2

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/select_bookmark_folder/SelectBookmarkFolderController;->mFolderList:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/select_bookmark_folder/SelectBookmarkFolderController;->mFolderList:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

    invoke-virtual {v6}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getChildCount()I

    move-result v6

    add-int/2addr v6, v2

    invoke-virtual {v5, v6}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->setChildCount(I)V

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/select_bookmark_folder/SelectBookmarkFolderController;->mFolderList:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

    invoke-virtual {v5}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getBookmarkLevel()I

    move-result v5

    add-int/2addr v5, v2

    invoke-virtual {p1, v5}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->setBookmarkLevel(I)V

    add-int/lit8 v4, v4, -0x1

    if-nez v4, :cond_2

    goto :goto_1

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/select_bookmark_folder/SelectBookmarkFolderController;->mChildrenList:Ljava/util/List;

    if-nez p1, :cond_4

    return-void

    :cond_4
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/select_bookmark_folder/SelectBookmarkFolderController;->mView:Lcom/sec/android/app/sbrowser/sites/bookmark/model/select_bookmark_folder/SelectBookmarkFolderViewDelegate;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/select_bookmark_folder/SelectBookmarkFolderController;->mFolderList:Ljava/util/List;

    invoke-interface {p1, v0}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/select_bookmark_folder/SelectBookmarkFolderViewDelegate;->displayList(Ljava/util/List;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/select_bookmark_folder/SelectBookmarkFolderController;->mIsFromMoveToFolder:Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/select_bookmark_folder/SelectBookmarkFolderController;->mActivity:Landroid/app/Activity;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->isInMultiWindowMode(Landroid/app/Activity;)Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/select_bookmark_folder/SelectBookmarkFolderController;->mModel:Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModel;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/select_bookmark_folder/SelectBookmarkFolderController;->mCurrentParent:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getId()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModel;->getBookmarkChildrenFolder(Ljava/lang/Long;)V

    :cond_5
    return-void
.end method

.method private handleBookmarkEditSuccess(Ljava/lang/Object;)V
    .locals 5

    check-cast p1, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/select_bookmark_folder/SelectBookmarkFolderController;->mFolderList:Ljava/util/List;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/select_bookmark_folder/SelectBookmarkFolderController;->mCurrentParent:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getType()Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$BookmarkType;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$BookmarkType;->FOLDER:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$BookmarkType;

    if-ne v0, v1, :cond_2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/select_bookmark_folder/SelectBookmarkFolderController;->mFolderList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getId()J

    move-result-wide v1

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/select_bookmark_folder/SelectBookmarkFolderController;->mFolderList:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getId()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-nez v1, :cond_1

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getParentId()J

    move-result-wide v1

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/select_bookmark_folder/SelectBookmarkFolderController;->mCurrentParent:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getId()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/select_bookmark_folder/SelectBookmarkFolderController;->mFolderList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getBookmarkLevel()I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->setBookmarkLevel(I)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/select_bookmark_folder/SelectBookmarkFolderController;->mFolderList:Ljava/util/List;

    invoke-interface {v1, v0, p1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/select_bookmark_folder/SelectBookmarkFolderController;->mView:Lcom/sec/android/app/sbrowser/sites/bookmark/model/select_bookmark_folder/SelectBookmarkFolderViewDelegate;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/select_bookmark_folder/SelectBookmarkFolderController;->mFolderList:Ljava/util/List;

    invoke-interface {p1, p0}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/select_bookmark_folder/SelectBookmarkFolderViewDelegate;->displayList(Ljava/util/List;)V

    return-void

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method private handleBookmarkMoveSuccess(Ljava/lang/Object;)V
    .locals 7

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iget-boolean v1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/select_bookmark_folder/SelectBookmarkFolderController;->mDoneSelected:Z

    const/4 v2, 0x2

    if-eqz v1, :cond_6

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/select_bookmark_folder/SelectBookmarkFolderController;->dismissProgress()V

    const-wide/16 v3, 0x0

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/select_bookmark_folder/SelectBookmarkFolderController;->mActivityStatus:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$ActivityStatus;

    sget-object v4, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$ActivityStatus;->FOREGROUND:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$ActivityStatus;

    if-ne v3, v4, :cond_3

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/utils/Objects;->uncheckedCast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkMoveInfo;

    iget-object v1, p1, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkMoveInfo;->success:Ljava/util/ArrayList;

    iget-object p1, p1, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkMoveInfo;->parentID:Ljava/lang/Long;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-gt v3, v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0, v1}, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/select_bookmark_folder/SelectBookmarkFolderController;->getMoveMessage(Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    const-string v2, "bookmark_toast_message"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/select_bookmark_folder/SelectBookmarkFolderController;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    :cond_2
    :goto_1
    move-object v1, p1

    :cond_3
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/select_bookmark_folder/SelectBookmarkFolderController;->mSharedPreferences:Landroid/content/SharedPreferences;

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/select_bookmark_folder/SelectBookmarkFolderController;->mActivity:Landroid/app/Activity;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;->isSecretModeEnabled(Landroid/app/Activity;)Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/select_bookmark_folder/SelectBookmarkFolderController;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v2, "pref_add_bookmark_folder_secret"

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-interface {p1, v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_2

    :cond_4
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/select_bookmark_folder/SelectBookmarkFolderController;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v2, "pref_add_bookmark_folder"

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-interface {p1, v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_5
    :goto_2
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/select_bookmark_folder/SelectBookmarkFolderController;->mActivity:Landroid/app/Activity;

    const/4 v1, -0x1

    invoke-virtual {p1, v1, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/select_bookmark_folder/SelectBookmarkFolderController;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    :cond_6
    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/utils/Objects;->uncheckedCast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkMoveInfo;

    iget-object p1, p1, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkMoveInfo;->success:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/select_bookmark_folder/SelectBookmarkFolderController;->mListOfObjectsIds:Ljava/util/List;

    if-eqz v1, :cond_c

    if-eqz p1, :cond_c

    move v1, v2

    :goto_3
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_a

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/select_bookmark_folder/SelectBookmarkFolderController;->mListOfObjectsIds:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    :goto_4
    if-ltz v3, :cond_9

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/select_bookmark_folder/SelectBookmarkFolderController;->mListOfObjectsIds:Ljava/util/List;

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/select_bookmark_folder/SelectBookmarkFolderController;->mActivity:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->finish()V

    :cond_7
    iget-object v5, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/select_bookmark_folder/SelectBookmarkFolderController;->mListOfObjectsIds:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/select_bookmark_folder/SelectBookmarkFolderController;->mListOfObjectsIds:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/select_bookmark_folder/SelectBookmarkFolderController;->mListOfObjectTypes:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_8
    add-int/lit8 v3, v3, -0x1

    goto :goto_4

    :cond_9
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_a
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/select_bookmark_folder/SelectBookmarkFolderController;->mListOfObjectsIds:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_b

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/select_bookmark_folder/SelectBookmarkFolderController;->mActivity:Landroid/app/Activity;

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/select_bookmark_folder/SelectBookmarkFolderController;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    :cond_b
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-gt p1, v2, :cond_c

    return-void

    :cond_c
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/select_bookmark_folder/SelectBookmarkFolderController;->mModel:Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModel;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModel;->getBookmarkFolderHierarchy()V

    return-void
.end method

.method private handleBookmarkReorderedSuccess(Ljava/lang/Object;)V
    .locals 8

    check-cast p1, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

    if-eqz p1, :cond_4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/select_bookmark_folder/SelectBookmarkFolderController;->mFolderList:Ljava/util/List;

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/select_bookmark_folder/SelectBookmarkFolderController;->mFolderList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_4

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getId()J

    move-result-wide v2

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/select_bookmark_folder/SelectBookmarkFolderController;->mFolderList:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

    invoke-virtual {v4}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getId()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_3

    add-int/lit8 v2, v1, 0x1

    move v3, v0

    :goto_1
    iget-object v4, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/select_bookmark_folder/SelectBookmarkFolderController;->mFolderList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_3

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/select_bookmark_folder/SelectBookmarkFolderController;->mFolderList:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

    invoke-virtual {v4}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getParentId()J

    move-result-wide v4

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getId()J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-nez v4, :cond_1

    add-int/lit8 v3, v3, 0x1

    :cond_1
    const/4 v4, 0x2

    if-lt v3, v4, :cond_2

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/select_bookmark_folder/SelectBookmarkFolderController;->mModel:Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModel;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModel;->getBookmarkFolderHierarchy()V

    return-void

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    :goto_2
    return-void
.end method

.method private handleMessage(Landroid/os/Message;)V
    .locals 5

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/select_bookmark_folder/SelectBookmarkFolderController;->mActivityStatus:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$ActivityStatus;

    sget-object v1, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$ActivityStatus;->FINISHED:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$ActivityStatus;

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$Messages;->values()[Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$Messages;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->what:I

    aget-object v0, v0, v1

    sget-object v1, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/select_bookmark_folder/SelectBookmarkFolderController$5;->$SwitchMap$com$sec$android$app$sbrowser$common$constants$sites$BookmarkConstants$Messages:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const-string v1, "SelectFolderController"

    const/4 v2, 0x0

    const/4 v3, -0x1

    const v4, 0x1020002

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_1

    :pswitch_0
    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/select_bookmark_folder/SelectBookmarkFolderController;->mDoneSelected:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/select_bookmark_folder/SelectBookmarkFolderController;->dismissProgress()V

    :cond_1
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

    if-ne v0, p1, :cond_2

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/select_bookmark_folder/SelectBookmarkFolderController;->mActivity:Landroid/app/Activity;

    const v0, 0x7f140760

    invoke-static {p1, v4, v0, v3}, Lcom/sec/android/app/sbrowser/autofill/password/k;->q(Landroid/app/Activity;III)V

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/select_bookmark_folder/SelectBookmarkFolderController;->mActivity:Landroid/app/Activity;

    const v0, 0x7f140f4d

    invoke-static {p1, v4, v0, v3}, Lcom/sec/android/app/sbrowser/autofill/password/k;->q(Landroid/app/Activity;III)V

    :goto_0
    iput-boolean v2, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/select_bookmark_folder/SelectBookmarkFolderController;->mDoneSelected:Z

    goto/16 :goto_1

    :pswitch_1
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/select_bookmark_folder/SelectBookmarkFolderController;->mActivity:Landroid/app/Activity;

    const v0, 0x7f1403e9

    invoke-static {p1, v4, v0, v3}, Lcom/sec/android/app/sbrowser/autofill/password/k;->q(Landroid/app/Activity;III)V

    iput-boolean v2, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/select_bookmark_folder/SelectBookmarkFolderController;->mDoneSelected:Z

    goto/16 :goto_1

    :pswitch_2
    iget-boolean p1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/select_bookmark_folder/SelectBookmarkFolderController;->mDoneSelected:Z

    if-eqz p1, :cond_3

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/select_bookmark_folder/SelectBookmarkFolderController;->dismissProgress()V

    :cond_3
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/select_bookmark_folder/SelectBookmarkFolderController;->mActivity:Landroid/app/Activity;

    const v0, 0x7f140f50

    invoke-static {p1, v4, v0, v3}, Lcom/sec/android/app/sbrowser/autofill/password/k;->q(Landroid/app/Activity;III)V

    iput-boolean v2, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/select_bookmark_folder/SelectBookmarkFolderController;->mDoneSelected:Z

    goto/16 :goto_1

    :pswitch_3
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/util/List;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/select_bookmark_folder/SelectBookmarkFolderController;->mAncestorList:Ljava/util/List;

    goto/16 :goto_1

    :pswitch_4
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/util/List;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/select_bookmark_folder/SelectBookmarkFolderController;->mChildrenList:Ljava/util/List;

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/select_bookmark_folder/SelectBookmarkFolderController;->mView:Lcom/sec/android/app/sbrowser/sites/bookmark/model/select_bookmark_folder/SelectBookmarkFolderViewDelegate;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/select_bookmark_folder/SelectBookmarkFolderController;->mCurrentParent:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getId()J

    move-result-wide v2

    invoke-interface {p1, v2, v3}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/select_bookmark_folder/SelectBookmarkFolderViewDelegate;->setCurrentParent(J)V

    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "Children updated"

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :pswitch_5
    iget-boolean p1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/select_bookmark_folder/SelectBookmarkFolderController;->mDoneSelected:Z

    if-eqz p1, :cond_4

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/select_bookmark_folder/SelectBookmarkFolderController;->dismissProgress()V

    :cond_4
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/select_bookmark_folder/SelectBookmarkFolderController;->mActivity:Landroid/app/Activity;

    const v0, 0x7f140f51

    invoke-static {p1, v4, v0, v3}, Lcom/sec/android/app/sbrowser/autofill/password/k;->q(Landroid/app/Activity;III)V

    iput-boolean v2, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/select_bookmark_folder/SelectBookmarkFolderController;->mDoneSelected:Z

    goto :goto_1

    :pswitch_6
    iget-boolean p1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/select_bookmark_folder/SelectBookmarkFolderController;->mDoneSelected:Z

    if-eqz p1, :cond_5

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/select_bookmark_folder/SelectBookmarkFolderController;->dismissProgress()V

    :cond_5
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/select_bookmark_folder/SelectBookmarkFolderController;->mActivity:Landroid/app/Activity;

    const v0, 0x7f140262

    invoke-static {p1, v4, v0, v3}, Lcom/sec/android/app/sbrowser/autofill/password/k;->q(Landroid/app/Activity;III)V

    iput-boolean v2, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/select_bookmark_folder/SelectBookmarkFolderController;->mDoneSelected:Z

    goto :goto_1

    :pswitch_7
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/sec/android/app/sbrowser/common/constants/sites/FolderHierarchyInfo;

    iget-object v0, p1, Lcom/sec/android/app/sbrowser/common/constants/sites/FolderHierarchyInfo;->mList:Ljava/util/List;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/select_bookmark_folder/SelectBookmarkFolderController;->mFolderList:Ljava/util/List;

    iget-object v0, p1, Lcom/sec/android/app/sbrowser/common/constants/sites/FolderHierarchyInfo;->mFolderMap:Lcom/google/common/collect/I;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/select_bookmark_folder/SelectBookmarkFolderController;->mFolderMap:Lcom/google/common/collect/I;

    iget-object v0, p1, Lcom/sec/android/app/sbrowser/common/constants/sites/FolderHierarchyInfo;->mExpandedMap:Ljava/util/HashMap;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/select_bookmark_folder/SelectBookmarkFolderController;->mExpandedMap:Ljava/util/HashMap;

    iget-object p1, p1, Lcom/sec/android/app/sbrowser/common/constants/sites/FolderHierarchyInfo;->mCollapseMap:Ljava/util/HashMap;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/select_bookmark_folder/SelectBookmarkFolderController;->mCollapseMap:Ljava/util/HashMap;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/select_bookmark_folder/SelectBookmarkFolderController;->expandToParent()V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/select_bookmark_folder/SelectBookmarkFolderController;->mView:Lcom/sec/android/app/sbrowser/sites/bookmark/model/select_bookmark_folder/SelectBookmarkFolderViewDelegate;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/select_bookmark_folder/SelectBookmarkFolderController;->mFolderList:Ljava/util/List;

    invoke-interface {p1, v0}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/select_bookmark_folder/SelectBookmarkFolderViewDelegate;->displayList(Ljava/util/List;)V

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Folder list size is : "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/select_bookmark_folder/SelectBookmarkFolderController;->mFolderList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static bridge synthetic i(Lcom/sec/android/app/sbrowser/sites/bookmark/controller/select_bookmark_folder/SelectBookmarkFolderController;)Lcom/sec/android/app/sbrowser/sites/bookmark/controller/select_bookmark_folder/SelectBookmarkFolderController$SelectBookmarkHandler;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/select_bookmark_folder/SelectBookmarkFolderController;->mHandler:Lcom/sec/android/app/sbrowser/sites/bookmark/controller/select_bookmark_folder/SelectBookmarkFolderController$SelectBookmarkHandler;

    return-object p0
.end method

.method public static bridge synthetic j(Lcom/sec/android/app/sbrowser/sites/bookmark/controller/select_bookmark_folder/SelectBookmarkFolderController;)Ljava/lang/Boolean;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/select_bookmark_folder/SelectBookmarkFolderController;->mIsFromMoveToFolder:Ljava/lang/Boolean;

    return-object p0
.end method

.method public static bridge synthetic k(Lcom/sec/android/app/sbrowser/sites/bookmark/controller/select_bookmark_folder/SelectBookmarkFolderController;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/select_bookmark_folder/SelectBookmarkFolderController;->mListOfObjectTypes:Ljava/util/List;

    return-object p0
.end method

.method public static bridge synthetic l(Lcom/sec/android/app/sbrowser/sites/bookmark/controller/select_bookmark_folder/SelectBookmarkFolderController;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/select_bookmark_folder/SelectBookmarkFolderController;->mListOfObjectsIds:Ljava/util/List;

    return-object p0
.end method

.method public static bridge synthetic m(Lcom/sec/android/app/sbrowser/sites/bookmark/controller/select_bookmark_folder/SelectBookmarkFolderController;)Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModel;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/select_bookmark_folder/SelectBookmarkFolderController;->mModel:Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModel;

    return-object p0
.end method

.method public static bridge synthetic n(Lcom/sec/android/app/sbrowser/sites/bookmark/controller/select_bookmark_folder/SelectBookmarkFolderController;)Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/select_bookmark_folder/SelectBookmarkFolderController;->mTargetItem:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

    return-object p0
.end method

.method public static bridge synthetic o(Lcom/sec/android/app/sbrowser/sites/bookmark/controller/select_bookmark_folder/SelectBookmarkFolderController;Lcom/sec/android/app/sbrowser/sites/bookmark/utils/CreateBookmarkFolderAlertUtil;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/select_bookmark_folder/SelectBookmarkFolderController;->mCreateBookmarkFolderAlertUtil:Lcom/sec/android/app/sbrowser/sites/bookmark/utils/CreateBookmarkFolderAlertUtil;

    return-void
.end method

.method public static bridge synthetic p(Lcom/sec/android/app/sbrowser/sites/bookmark/controller/select_bookmark_folder/SelectBookmarkFolderController;Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/select_bookmark_folder/SelectBookmarkFolderController;->mCurrentParent:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

    return-void
.end method

.method public static bridge synthetic q(Lcom/sec/android/app/sbrowser/sites/bookmark/controller/select_bookmark_folder/SelectBookmarkFolderController;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/select_bookmark_folder/SelectBookmarkFolderController;->mDoneSelected:Z

    return-void
.end method

.method public static bridge synthetic r(Lcom/sec/android/app/sbrowser/sites/bookmark/controller/select_bookmark_folder/SelectBookmarkFolderController;Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/select_bookmark_folder/SelectBookmarkFolderController;->mTargetItem:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

    return-void
.end method

.method public static bridge synthetic s(Lcom/sec/android/app/sbrowser/sites/bookmark/controller/select_bookmark_folder/SelectBookmarkFolderController;Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$Messages;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/select_bookmark_folder/SelectBookmarkFolderController;->bookmarkDBOperations(Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$Messages;Ljava/lang/Object;)V

    return-void
.end method

.method private setBookmarkParent()V
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/select_bookmark_folder/SelectBookmarkFolderController;->mParentId:Ljava/lang/Long;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/select_bookmark_folder/SelectBookmarkFolderController;->mShowBookmarkId:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    sget-object v2, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$BookmarkSyncID;->MY_DEVICE:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$BookmarkSyncID;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$BookmarkSyncID;->getNumVal()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    sget-object v0, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$BookmarkSyncID;->SAMSUNG:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$BookmarkSyncID;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$BookmarkSyncID;->getNumVal()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/select_bookmark_folder/SelectBookmarkFolderController;->mShowBookmarkId:Ljava/lang/Long;

    :cond_0
    return-void
.end method

.method private showProgress()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/select_bookmark_folder/SelectBookmarkFolderController;->mShowProgress:Lcom/sec/android/app/sbrowser/common/sites/BookmarksProgressDialog;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sec/android/app/sbrowser/common/sites/BookmarksProgressDialog;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/select_bookmark_folder/SelectBookmarkFolderController;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/sec/android/app/sbrowser/common/sites/BookmarksProgressDialog;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/select_bookmark_folder/SelectBookmarkFolderController;->mShowProgress:Lcom/sec/android/app/sbrowser/common/sites/BookmarksProgressDialog;

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/select_bookmark_folder/SelectBookmarkFolderController;->mShowProgress:Lcom/sec/android/app/sbrowser/common/sites/BookmarksProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/select_bookmark_folder/SelectBookmarkFolderController;->mShowProgress:Lcom/sec/android/app/sbrowser/common/sites/BookmarksProgressDialog;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/select_bookmark_folder/SelectBookmarkFolderController;->mActivity:Landroid/app/Activity;

    const v2, 0x7f140f57

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/select_bookmark_folder/SelectBookmarkFolderController;->mShowProgress:Lcom/sec/android/app/sbrowser/common/sites/BookmarksProgressDialog;

    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method public static bridge synthetic t(Lcom/sec/android/app/sbrowser/sites/bookmark/controller/select_bookmark_folder/SelectBookmarkFolderController;Landroid/os/Message;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/select_bookmark_folder/SelectBookmarkFolderController;->handleMessage(Landroid/os/Message;)V

    return-void
.end method

.method public static bridge synthetic u(Lcom/sec/android/app/sbrowser/sites/bookmark/controller/select_bookmark_folder/SelectBookmarkFolderController;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/select_bookmark_folder/SelectBookmarkFolderController;->showProgress()V

    return-void
.end method

.method private updateProgress()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/select_bookmark_folder/SelectBookmarkFolderController;->mShowProgress:Lcom/sec/android/app/sbrowser/common/sites/BookmarksProgressDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/select_bookmark_folder/SelectBookmarkFolderController;->mShowProgress:Lcom/sec/android/app/sbrowser/common/sites/BookmarksProgressDialog;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/select_bookmark_folder/SelectBookmarkFolderController;->mActivity:Landroid/app/Activity;

    const v1, 0x7f140f57

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public finishActivity()V
    .locals 1

    sget-object v0, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$ActivityStatus;->FINISHED:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$ActivityStatus;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/select_bookmark_folder/SelectBookmarkFolderController;->mActivityStatus:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$ActivityStatus;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/select_bookmark_folder/SelectBookmarkFolderController;->mView:Lcom/sec/android/app/sbrowser/sites/bookmark/model/select_bookmark_folder/SelectBookmarkFolderViewDelegate;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/select_bookmark_folder/SelectBookmarkFolderViewDelegate;->finish()V

    return-void
.end method

.method public handleBackPress()Z
    .locals 0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/select_bookmark_folder/SelectBookmarkFolderController;->onBackPressed()Z

    move-result p0

    return p0
.end method

.method public onBackPressed()Z
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/select_bookmark_folder/SelectBookmarkFolderController;->mView:Lcom/sec/android/app/sbrowser/sites/bookmark/model/select_bookmark_folder/SelectBookmarkFolderViewDelegate;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/select_bookmark_folder/SelectBookmarkFolderController;->mShowProgress:Lcom/sec/android/app/sbrowser/common/sites/BookmarksProgressDialog;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/app/Dialog;->isShowing()Z

    :cond_1
    return v1
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/select_bookmark_folder/SelectBookmarkFolderController;->mLocale:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/utils/LocaleUtils;->getDisplayLanguage(Landroid/content/res/Configuration;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/select_bookmark_folder/SelectBookmarkFolderController;->mLocale:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/select_bookmark_folder/SelectBookmarkFolderController;->mView:Lcom/sec/android/app/sbrowser/sites/bookmark/model/select_bookmark_folder/SelectBookmarkFolderViewDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/select_bookmark_folder/SelectBookmarkFolderViewDelegate;->handleLanguageChange()V

    :cond_0
    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/utils/LocaleUtils;->getDisplayLanguage(Landroid/content/res/Configuration;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/select_bookmark_folder/SelectBookmarkFolderController;->mLocale:Ljava/lang/String;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/select_bookmark_folder/SelectBookmarkFolderController;->updateProgress()V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/select_bookmark_folder/SelectBookmarkFolderController;->mView:Lcom/sec/android/app/sbrowser/sites/bookmark/model/select_bookmark_folder/SelectBookmarkFolderViewDelegate;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/select_bookmark_folder/SelectBookmarkFolderViewDelegate;->onConfigurationChanged()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/select_bookmark_folder/SelectBookmarkFolderController;->mActivity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/select_bookmark_folder/SelectBookmarkFolderController;->mActivity:Landroid/app/Activity;

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModelHelper;->getBookmarkContentUri(Landroid/app/Activity;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/Context;->grantUriPermission(Ljava/lang/String;Landroid/net/Uri;I)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/select_bookmark_folder/SelectBookmarkFolderController;->mActivity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/select_bookmark_folder/SelectBookmarkFolderController;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lw2/F;->c(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/select_bookmark_folder/SelectBookmarkFolderController;->mSharedPreferences:Landroid/content/SharedPreferences;

    if-eqz p1, :cond_1

    const-string v0, "from_move_bookmark"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/select_bookmark_folder/SelectBookmarkFolderController;->mIsFromMoveToFolder:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "bookmark_id_list"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/select_bookmark_folder/SelectBookmarkFolderController;->mListOfObjectsIds:Ljava/util/List;

    const-string v0, "bookmark_type_list"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/select_bookmark_folder/SelectBookmarkFolderController;->mListOfObjectTypes:Ljava/util/List;

    const-string v0, "bookmark_non_edit_count"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/select_bookmark_folder/SelectBookmarkFolderController;->mNonEditableItems:I

    const-string v0, "parent_ids"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/select_bookmark_folder/SelectBookmarkFolderController;->mParentIds:Ljava/util/List;

    sget-object v0, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$AccountType;->NONE:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$AccountType;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$AccountType;->getNumVal()I

    move-result v0

    const-string v1, "account_type"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$AccountType;->getAccountTypeForValue(I)Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$AccountType;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/select_bookmark_folder/SelectBookmarkFolderController;->mAccountType:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$AccountType;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "mListOfObjectsIds: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/select_bookmark_folder/SelectBookmarkFolderController;->mListOfObjectsIds:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SelectFolderController"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sget-object v0, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$BookmarkSyncID;->MY_DEVICE:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$BookmarkSyncID;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$BookmarkSyncID;->getNumVal()J

    move-result-wide v0

    const-string v2, "bookmark_id"

    invoke-virtual {p1, v2, v0, v1}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/select_bookmark_folder/SelectBookmarkFolderController;->mParentId:Ljava/lang/Long;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/select_bookmark_folder/SelectBookmarkFolderController;->mModel:Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModel;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModelBase;->getBookmarkItem(Ljava/lang/Long;)Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/select_bookmark_folder/SelectBookmarkFolderController;->mCurrentParent:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

    :cond_1
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/sites/BookmarkNotifier;->getBookmarkNotifier()Lcom/sec/android/app/sbrowser/common/sites/BookmarkNotifier;

    move-result-object p1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/select_bookmark_folder/SelectBookmarkFolderController;->mBookmarkDbListener:Lcom/sec/android/app/sbrowser/common/sites/BookmarkNotifier$BookmarkDbListener;

    invoke-virtual {p1, v0}, Lcom/sec/android/app/sbrowser/common/sites/BookmarkNotifier;->registerBookmarkListener(Lcom/sec/android/app/sbrowser/common/sites/BookmarkNotifier$BookmarkDbListener;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/select_bookmark_folder/SelectBookmarkFolderController;->mView:Lcom/sec/android/app/sbrowser/sites/bookmark/model/select_bookmark_folder/SelectBookmarkFolderViewDelegate;

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/select_bookmark_folder/SelectBookmarkFolderViewDelegate;->configureAndShowView()V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/select_bookmark_folder/SelectBookmarkFolderController;->mModel:Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModel;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModelBase;->getBookmarkRoot()Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/select_bookmark_folder/SelectBookmarkFolderController;->mRootItem:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/select_bookmark_folder/SelectBookmarkFolderController;->setBookmarkParent()V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/select_bookmark_folder/SelectBookmarkFolderController;->mModel:Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModel;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/select_bookmark_folder/SelectBookmarkFolderController;->mShowBookmarkId:Ljava/lang/Long;

    invoke-virtual {p1, v0}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModel;->getBookmarkChildrenFolder(Ljava/lang/Long;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/select_bookmark_folder/SelectBookmarkFolderController;->mModel:Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModel;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/select_bookmark_folder/SelectBookmarkFolderController;->mShowBookmarkId:Ljava/lang/Long;

    invoke-virtual {p1, v0}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModel;->getAllAncestorBookmarkItems(Ljava/lang/Long;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/select_bookmark_folder/SelectBookmarkFolderController;->mModel:Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModel;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModel;->getBookmarkFolderHierarchy()V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/select_bookmark_folder/SelectBookmarkFolderController;->mView:Lcom/sec/android/app/sbrowser/sites/bookmark/model/select_bookmark_folder/SelectBookmarkFolderViewDelegate;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/select_bookmark_folder/SelectBookmarkFolderController;->getViewListener()Lcom/sec/android/app/sbrowser/sites/bookmark/model/select_bookmark_folder/SelectBookmarkViewListener;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/select_bookmark_folder/SelectBookmarkFolderViewDelegate;->setListener(Lcom/sec/android/app/sbrowser/sites/bookmark/model/select_bookmark_folder/SelectBookmarkViewListener;)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/select_bookmark_folder/SelectBookmarkFolderController;->mView:Lcom/sec/android/app/sbrowser/sites/bookmark/model/select_bookmark_folder/SelectBookmarkFolderViewDelegate;

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/select_bookmark_folder/SelectBookmarkFolderViewDelegate;->onCreateOptionsMenu(Landroid/view/Menu;)V

    return-void
.end method

.method public onDestroy()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/select_bookmark_folder/SelectBookmarkFolderController;->mModel:Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModel;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/select_bookmark_folder/SelectBookmarkFolderController;->mCollapseMap:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/select_bookmark_folder/SelectBookmarkFolderController;->mExpandedMap:Ljava/util/HashMap;

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModel;->updateFolderState(Ljava/util/HashMap;Ljava/util/HashMap;)V

    sget-object v0, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$ActivityStatus;->FINISHED:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$ActivityStatus;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/select_bookmark_folder/SelectBookmarkFolderController;->mActivityStatus:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$ActivityStatus;

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/sites/BookmarkNotifier;->getBookmarkNotifier()Lcom/sec/android/app/sbrowser/common/sites/BookmarkNotifier;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/select_bookmark_folder/SelectBookmarkFolderController;->mBookmarkDbListener:Lcom/sec/android/app/sbrowser/common/sites/BookmarkNotifier$BookmarkDbListener;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/common/sites/BookmarkNotifier;->unregisterBookmarkListener(Lcom/sec/android/app/sbrowser/common/sites/BookmarkNotifier$BookmarkDbListener;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/select_bookmark_folder/SelectBookmarkFolderController;->mModel:Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModel;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModelBase;->unRegisterListener()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/select_bookmark_folder/SelectBookmarkFolderController;->mView:Lcom/sec/android/app/sbrowser/sites/bookmark/model/select_bookmark_folder/SelectBookmarkFolderViewDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/select_bookmark_folder/SelectBookmarkFolderViewDelegate;->onDestroy()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/select_bookmark_folder/SelectBookmarkFolderController;->mFolderMap:Lcom/google/common/collect/I;

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/select_bookmark_folder/SelectBookmarkFolderController;->mView:Lcom/sec/android/app/sbrowser/sites/bookmark/model/select_bookmark_folder/SelectBookmarkFolderViewDelegate;

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/select_bookmark_folder/SelectBookmarkFolderViewDelegate;->onOptionsItemSelected(Landroid/view/MenuItem;)V

    return-void
.end method

.method public onPause()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/select_bookmark_folder/SelectBookmarkFolderController;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/terrace/base/TerraceApiCompatibilityUtils;->getLocale(Landroid/content/res/Configuration;)Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getDisplayLanguage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/select_bookmark_folder/SelectBookmarkFolderController;->mLocale:Ljava/lang/String;

    sget-object v0, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$ActivityStatus;->BACKGROUND:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$ActivityStatus;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/select_bookmark_folder/SelectBookmarkFolderController;->mActivityStatus:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$ActivityStatus;

    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/select_bookmark_folder/SelectBookmarkFolderController;->mView:Lcom/sec/android/app/sbrowser/sites/bookmark/model/select_bookmark_folder/SelectBookmarkFolderViewDelegate;

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/select_bookmark_folder/SelectBookmarkFolderViewDelegate;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    return-void
.end method

.method public onResume()V
    .locals 1

    sget-object v0, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$ActivityStatus;->FOREGROUND:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$ActivityStatus;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/select_bookmark_folder/SelectBookmarkFolderController;->mActivityStatus:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$ActivityStatus;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/select_bookmark_folder/SelectBookmarkFolderController;->mView:Lcom/sec/android/app/sbrowser/sites/bookmark/model/select_bookmark_folder/SelectBookmarkFolderViewDelegate;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/select_bookmark_folder/SelectBookmarkFolderViewDelegate;->onResume()V

    return-void
.end method
