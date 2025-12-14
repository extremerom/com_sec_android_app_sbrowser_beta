.class public Lcom/sec/android/app/sbrowser/sites/search/controller/SitesSearchController;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/sites/search/model/SitesSearchActivityController;
.implements Lcom/sec/android/app/sbrowser/sites/search/model/SitesSearchControllerDelegate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/sites/search/controller/SitesSearchController$SitesSearchHandler;
    }
.end annotation


# instance fields
.field private mActivityStatus:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$ActivityStatus;

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

.field private mContext:Landroid/content/Context;

.field private mCreateBookmarkFolderDialog:Lcom/sec/android/app/sbrowser/sites/bookmark/utils/CreateBookmarkFolderAlertUtil;

.field private mCurrentParent:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

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

.field private final mHandler:Lcom/sec/android/app/sbrowser/sites/search/controller/SitesSearchController$SitesSearchHandler;

.field private mIsFolderRightClick:Z

.field private mModel:Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModel;

.field private mModelListener:Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModelListener;

.field private mSelectedItem:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

.field private mSitesActivityDelegate:Lcom/sec/android/app/sbrowser/common/model/sites/SitesActivityDelegate;

.field private mSitesActivityListener:Lcom/sec/android/app/sbrowser/common/model/sites/SitesActivityListener;

.field private mSitesSearchView:Lcom/sec/android/app/sbrowser/sites/search/model/SitesSearchViewDelegate;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/common/model/sites/SitesActivityListener;Lcom/sec/android/app/sbrowser/common/model/sites/SitesActivityDelegate;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/sec/android/app/sbrowser/sites/search/controller/SitesSearchController$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/sites/search/controller/SitesSearchController$1;-><init>(Lcom/sec/android/app/sbrowser/sites/search/controller/SitesSearchController;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/sites/search/controller/SitesSearchController;->mModelListener:Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModelListener;

    new-instance v0, Lcom/sec/android/app/sbrowser/sites/search/controller/SitesSearchController$2;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/sites/search/controller/SitesSearchController$2;-><init>(Lcom/sec/android/app/sbrowser/sites/search/controller/SitesSearchController;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/sites/search/controller/SitesSearchController;->mBookmarkListListener:Lcom/sec/android/app/sbrowser/sites/bookmark/utils/CreateBookmarkFolderAlertUtil$BookmarkListListener;

    new-instance v0, Lcom/sec/android/app/sbrowser/sites/search/controller/SitesSearchController$3;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/sites/search/controller/SitesSearchController$3;-><init>(Lcom/sec/android/app/sbrowser/sites/search/controller/SitesSearchController;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/sites/search/controller/SitesSearchController;->mBookmarkDbListener:Lcom/sec/android/app/sbrowser/common/sites/BookmarkNotifier$BookmarkDbListener;

    new-instance v0, Lcom/sec/android/app/sbrowser/sites/search/controller/SitesSearchController$SitesSearchHandler;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/sites/search/controller/SitesSearchController$SitesSearchHandler;-><init>(Lcom/sec/android/app/sbrowser/sites/search/controller/SitesSearchController;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/sites/search/controller/SitesSearchController;->mHandler:Lcom/sec/android/app/sbrowser/sites/search/controller/SitesSearchController$SitesSearchHandler;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/sites/search/controller/SitesSearchController;->mSitesActivityListener:Lcom/sec/android/app/sbrowser/common/model/sites/SitesActivityListener;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/sites/search/controller/SitesSearchController;->mSitesActivityDelegate:Lcom/sec/android/app/sbrowser/common/model/sites/SitesActivityDelegate;

    sget-object p1, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$ActivityStatus;->FOREGROUND:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$ActivityStatus;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/sites/search/controller/SitesSearchController;->mActivityStatus:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$ActivityStatus;

    return-void
.end method

.method public static bridge synthetic a(Lcom/sec/android/app/sbrowser/sites/search/controller/SitesSearchController;)Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$ActivityStatus;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/search/controller/SitesSearchController;->mActivityStatus:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$ActivityStatus;

    return-object p0
.end method

.method public static bridge synthetic b(Lcom/sec/android/app/sbrowser/sites/search/controller/SitesSearchController;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/search/controller/SitesSearchController;->mChildrenList:Ljava/util/List;

    return-object p0
.end method

.method public static bridge synthetic c(Lcom/sec/android/app/sbrowser/sites/search/controller/SitesSearchController;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/search/controller/SitesSearchController;->mFolderChildrenList:Ljava/util/List;

    return-object p0
.end method

.method public static bridge synthetic d(Lcom/sec/android/app/sbrowser/sites/search/controller/SitesSearchController;)Lcom/sec/android/app/sbrowser/sites/search/controller/SitesSearchController$SitesSearchHandler;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/search/controller/SitesSearchController;->mHandler:Lcom/sec/android/app/sbrowser/sites/search/controller/SitesSearchController$SitesSearchHandler;

    return-object p0
.end method

.method public static bridge synthetic e(Lcom/sec/android/app/sbrowser/sites/search/controller/SitesSearchController;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/sites/search/controller/SitesSearchController;->mIsFolderRightClick:Z

    return p0
.end method

.method public static bridge synthetic f(Lcom/sec/android/app/sbrowser/sites/search/controller/SitesSearchController;)V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/sites/search/controller/SitesSearchController;->mIsFolderRightClick:Z

    return-void
.end method

.method public static bridge synthetic g(Lcom/sec/android/app/sbrowser/sites/search/controller/SitesSearchController;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/sites/search/controller/SitesSearchController;->handleBookmarkEditSuccess(Ljava/lang/Object;)V

    return-void
.end method

.method public static bridge synthetic h(Lcom/sec/android/app/sbrowser/sites/search/controller/SitesSearchController;Landroid/os/Message;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/sites/search/controller/SitesSearchController;->handleMessage(Landroid/os/Message;)V

    return-void
.end method

.method private handleBookmarkEditSuccess(Ljava/lang/Object;)V
    .locals 4

    check-cast p1, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/search/controller/SitesSearchController;->mEditBookmarkItem:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getId()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getId()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/search/controller/SitesSearchController;->mDialogHelper:Lcom/sec/android/app/sbrowser/sites/bookmark/utils/EditFolderDialogHelper;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/sites/bookmark/utils/EditFolderDialogHelper;->isEditFolderSelected()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/sites/search/controller/SitesSearchController;->mEditBookmarkItem:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/search/controller/SitesSearchController;->mDialogHelper:Lcom/sec/android/app/sbrowser/sites/bookmark/utils/EditFolderDialogHelper;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sites/bookmark/utils/EditFolderDialogHelper;->dismissDialog()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/search/controller/SitesSearchController;->mDialogHelper:Lcom/sec/android/app/sbrowser/sites/bookmark/utils/EditFolderDialogHelper;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/sites/bookmark/utils/EditFolderDialogHelper;->getEditFolderDialog()Lm/k;

    move-result-object v0

    if-eqz v0, :cond_2

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/sites/search/controller/SitesSearchController;->mEditBookmarkItem:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/search/controller/SitesSearchController;->mDialogHelper:Lcom/sec/android/app/sbrowser/sites/bookmark/utils/EditFolderDialogHelper;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getTitle()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/sites/bookmark/utils/EditFolderDialogHelper;->setFolderText(Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private handleMessage(Landroid/os/Message;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/search/controller/SitesSearchController;->mActivityStatus:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$ActivityStatus;

    sget-object v1, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$ActivityStatus;->FINISHED:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$ActivityStatus;

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$Messages;->values()[Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$Messages;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->what:I

    aget-object v0, v0, v1

    sget-object v1, Lcom/sec/android/app/sbrowser/sites/search/controller/SitesSearchController$4;->$SwitchMap$com$sec$android$app$sbrowser$common$constants$sites$BookmarkConstants$Messages:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    goto :goto_0

    :cond_1
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/util/List;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/sites/search/controller/SitesSearchController;->mChildrenList:Ljava/util/List;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sites/search/controller/SitesSearchController;->createFolder()V

    goto :goto_0

    :cond_2
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/util/List;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/sites/search/controller/SitesSearchController;->mFolderChildrenList:Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/sites/search/controller/SitesSearchController;->onCreateFolderInParent(Ljava/util/List;)V

    iput-boolean v1, p0, Lcom/sec/android/app/sbrowser/sites/search/controller/SitesSearchController;->mIsFolderRightClick:Z

    :goto_0
    return-void
.end method


# virtual methods
.method public callNotifyDataSetChanged()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/search/controller/SitesSearchController;->mSitesSearchView:Lcom/sec/android/app/sbrowser/sites/search/model/SitesSearchViewDelegate;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/sites/search/model/SitesSearchViewDelegate;->callNotifyDataSetChanged()V

    return-void
.end method

.method public createFolder()V
    .locals 7

    new-instance v6, Lcom/sec/android/app/sbrowser/sites/bookmark/utils/CreateBookmarkFolderAlertUtil;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/sites/search/controller/SitesSearchController;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/sites/search/controller/SitesSearchController;->mChildrenList:Ljava/util/List;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/sites/search/controller/SitesSearchController;->mCurrentParent:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/sites/search/controller/SitesSearchController;->mModel:Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModel;

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/sites/search/controller/SitesSearchController;->mBookmarkListListener:Lcom/sec/android/app/sbrowser/sites/bookmark/utils/CreateBookmarkFolderAlertUtil$BookmarkListListener;

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/sbrowser/sites/bookmark/utils/CreateBookmarkFolderAlertUtil;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModel;Lcom/sec/android/app/sbrowser/sites/bookmark/utils/CreateBookmarkFolderAlertUtil$BookmarkListListener;)V

    iput-object v6, p0, Lcom/sec/android/app/sbrowser/sites/search/controller/SitesSearchController;->mCreateBookmarkFolderDialog:Lcom/sec/android/app/sbrowser/sites/bookmark/utils/CreateBookmarkFolderAlertUtil;

    const/4 p0, 0x0

    invoke-virtual {v6, p0, p0}, Lcom/sec/android/app/sbrowser/sites/bookmark/utils/CreateBookmarkFolderAlertUtil;->showCreateFolderDialog(ZZ)V

    return-void
.end method

.method public createFolder(Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem;)V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/search/controller/SitesSearchController;->mModel:Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModel;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem;->getId()Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModelBase;->getBookmarkItem(Ljava/lang/Long;)Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/search/controller/SitesSearchController;->mModel:Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModel;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getParentId()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModelBase;->getBookmarkItem(Ljava/lang/Long;)Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/sites/search/controller/SitesSearchController;->mCurrentParent:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/search/controller/SitesSearchController;->mModel:Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModel;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getId()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModel;->getBookmarkChildrenFolder(Ljava/lang/Long;)V

    :cond_1
    return-void
.end method

.method public delete()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/search/controller/SitesSearchController;->mSitesActivityListener:Lcom/sec/android/app/sbrowser/common/model/sites/SitesActivityListener;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/common/model/sites/SitesActivityListener;->onSearchDelete()V

    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/search/controller/SitesSearchController;->mSitesSearchView:Lcom/sec/android/app/sbrowser/sites/search/model/SitesSearchViewDelegate;

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/sites/search/model/SitesSearchViewDelegate;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public editBookmarkFolder(Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/search/controller/SitesSearchController;->mModel:Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModel;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem;->getId()Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModelBase;->getBookmarkItem(Ljava/lang/Long;)Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/sites/search/controller/SitesSearchController;->mEditBookmarkItem:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/search/controller/SitesSearchController;->mDialogHelper:Lcom/sec/android/app/sbrowser/sites/bookmark/utils/EditFolderDialogHelper;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/sites/bookmark/utils/EditFolderDialogHelper;->showEditFolderAlertDialog(Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/search/controller/SitesSearchController;->mSitesSearchView:Lcom/sec/android/app/sbrowser/sites/search/model/SitesSearchViewDelegate;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/sites/search/model/SitesSearchViewDelegate;->exitSearchActionMode()V

    :cond_0
    return-void
.end method

.method public exitSearchActionMode()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/search/controller/SitesSearchController;->mSitesSearchView:Lcom/sec/android/app/sbrowser/sites/search/model/SitesSearchViewDelegate;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/sites/search/model/SitesSearchViewDelegate;->exitSearchActionMode()V

    return-void
.end method

.method public findFolderChildren(Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/search/controller/SitesSearchController;->mModel:Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModel;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem;->getId()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModel;->getBookmarkChildrenCurrentFolder(Ljava/lang/Long;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/search/controller/SitesSearchController;->mModel:Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModel;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem;->getId()Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModelBase;->getBookmarkItem(Ljava/lang/Long;)Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/sites/search/controller/SitesSearchController;->mSelectedItem:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

    return-void
.end method

.method public getBookmarkMap()Lcom/google/common/collect/I;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/I;"
        }
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/search/controller/SitesSearchController;->mSitesActivityDelegate:Lcom/sec/android/app/sbrowser/common/model/sites/SitesActivityDelegate;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/common/model/sites/SitesActivityDelegate;->getBookmarkMap()Lcom/google/common/collect/I;

    move-result-object p0

    return-object p0
.end method

.method public getCurrentTabInformativeTitle()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/search/controller/SitesSearchController;->mSitesSearchView:Lcom/sec/android/app/sbrowser/sites/search/model/SitesSearchViewDelegate;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/sites/search/model/SitesSearchViewDelegate;->getCurrentTabInformativeTitle()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getSearchResultList()Ljava/util/concurrent/CopyOnWriteArrayList;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/search/controller/SitesSearchController;->mSitesActivityDelegate:Lcom/sec/android/app/sbrowser/common/model/sites/SitesActivityDelegate;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/common/model/sites/SitesActivityDelegate;->getSearchResultList()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object p0

    return-object p0
.end method

.method public getUrlForShare()Ljava/lang/String;
    .locals 23

    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/sites/search/controller/SitesSearchController;->getSearchResultList()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v0, ""

    return-object v0

    :cond_0
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem;

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v2, v3}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    :cond_3
    :goto_1
    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_9

    invoke-virtual {v2}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem;

    if-nez v3, :cond_4

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_4
    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem;->getBookmarkType()Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$BookmarkType;

    move-result-object v4

    sget-object v5, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$BookmarkType;->FOLDER:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$BookmarkType;

    if-ne v4, v5, :cond_7

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/sites/search/controller/SitesSearchController;->getBookmarkMap()Lcom/google/common/collect/I;

    move-result-object v4

    if-nez v4, :cond_5

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/sites/search/controller/SitesSearchController;->getBookmarkMap()Lcom/google/common/collect/I;

    move-result-object v4

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem;->getId()Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v4, v3}, Lcom/google/common/collect/I;->get(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

    invoke-virtual {v4}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getType()Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$BookmarkType;

    move-result-object v5

    sget-object v6, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$BookmarkType;->FOLDER:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$BookmarkType;

    if-ne v5, v6, :cond_6

    new-instance v5, Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem;

    invoke-virtual {v4}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getId()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    sget-object v9, Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem$TYPE;->BOOKMARK:Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem$TYPE;

    invoke-virtual {v4}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getTitle()Ljava/lang/String;

    move-result-object v10

    iget-object v7, v0, Lcom/sec/android/app/sbrowser/sites/search/controller/SitesSearchController;->mContext:Landroid/content/Context;

    check-cast v7, Landroid/app/Activity;

    invoke-static {v7}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkStringUtil;->getBookmarkRootPath(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v4}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->isEditable()Z

    move-result v13

    iget-object v4, v0, Lcom/sec/android/app/sbrowser/sites/search/controller/SitesSearchController;->mContext:Landroid/content/Context;

    check-cast v4, Landroid/app/Activity;

    invoke-static {v4}, Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;->isSecretModeEnabled(Landroid/app/Activity;)Z

    move-result v14

    const/4 v11, 0x0

    move-object v7, v5

    invoke-direct/range {v7 .. v14}, Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem;-><init>(Ljava/lang/Long;Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem$TYPE;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    invoke-virtual {v5, v6}, Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem;->setBookmarkType(Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$BookmarkType;)V

    goto :goto_3

    :cond_6
    new-instance v5, Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem;

    invoke-virtual {v4}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getId()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    sget-object v17, Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem$TYPE;->BOOKMARK:Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem$TYPE;

    invoke-virtual {v4}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getTitle()Ljava/lang/String;

    move-result-object v18

    invoke-virtual {v4}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getUrl()Ljava/lang/String;

    move-result-object v19

    invoke-virtual {v4}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->isEditable()Z

    move-result v21

    iget-object v4, v0, Lcom/sec/android/app/sbrowser/sites/search/controller/SitesSearchController;->mContext:Landroid/content/Context;

    check-cast v4, Landroid/app/Activity;

    invoke-static {v4}, Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;->isSecretModeEnabled(Landroid/app/Activity;)Z

    move-result v22

    const/16 v20, 0x0

    move-object v15, v5

    invoke-direct/range {v15 .. v22}, Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem;-><init>(Ljava/lang/Long;Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem$TYPE;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    sget-object v4, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$BookmarkType;->URL:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$BookmarkType;

    invoke-virtual {v5, v4}, Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem;->setBookmarkType(Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$BookmarkType;)V

    :goto_3
    invoke-virtual {v2, v5}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_7
    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem;->getUrl()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const-string v5, "\n"

    if-eqz v4, :cond_8

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    :cond_8
    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    :cond_9
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isFolderContainBookmark(J)Z
    .locals 6

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sites/search/controller/SitesSearchController;->getBookmarkMap()Lcom/google/common/collect/I;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sites/search/controller/SitesSearchController;->getBookmarkMap()Lcom/google/common/collect/I;

    move-result-object v0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/google/common/collect/I;->get(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getType()Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$BookmarkType;

    move-result-object v0

    sget-object v2, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$BookmarkType;->URL:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$BookmarkType;

    const/4 v3, 0x1

    if-ne v0, v2, :cond_2

    return v3

    :cond_2
    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getId()J

    move-result-wide v4

    invoke-virtual {p0, v4, v5}, Lcom/sec/android/app/sbrowser/sites/search/controller/SitesSearchController;->isFolderContainBookmark(J)Z

    move-result p2

    if-eqz p2, :cond_1

    return v3

    :cond_3
    return v1
.end method

.method public isShowingActionMode()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/search/controller/SitesSearchController;->mSitesSearchView:Lcom/sec/android/app/sbrowser/sites/search/model/SitesSearchViewDelegate;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/sites/search/model/SitesSearchViewDelegate;->isShowingActionMode()Z

    move-result p0

    return p0
.end method

.method public onAppBarHeightChanged(I)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/search/controller/SitesSearchController;->mSitesSearchView:Lcom/sec/android/app/sbrowser/sites/search/model/SitesSearchViewDelegate;

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/sites/search/model/SitesSearchViewDelegate;->onAppBarHeightChanged(I)V

    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 2

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/sites/search/controller/SitesSearchController;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/search/controller/SitesSearchController;->mSitesSearchView:Lcom/sec/android/app/sbrowser/sites/search/model/SitesSearchViewDelegate;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/sites/search/controller/SitesSearchController;->mSitesActivityListener:Lcom/sec/android/app/sbrowser/common/model/sites/SitesActivityListener;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/search/controller/SitesSearchController;->mSitesActivityDelegate:Lcom/sec/android/app/sbrowser/common/model/sites/SitesActivityDelegate;

    invoke-interface {v0, p1, v1, p0}, Lcom/sec/android/app/sbrowser/sites/search/model/SitesSearchViewDelegate;->onAttach(Landroid/content/Context;Lcom/sec/android/app/sbrowser/common/model/sites/SitesActivityListener;Lcom/sec/android/app/sbrowser/common/model/sites/SitesActivityDelegate;)V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/search/controller/SitesSearchController;->mSitesSearchView:Lcom/sec/android/app/sbrowser/sites/search/model/SitesSearchViewDelegate;

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/sites/search/model/SitesSearchViewDelegate;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public onCreateFolderInParent(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;",
            ">;)V"
        }
    .end annotation

    new-instance v6, Lcom/sec/android/app/sbrowser/sites/bookmark/utils/CreateBookmarkFolderAlertUtil;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/sites/search/controller/SitesSearchController;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/sites/search/controller/SitesSearchController;->mSelectedItem:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/sites/search/controller/SitesSearchController;->mModel:Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModel;

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/sites/search/controller/SitesSearchController;->mBookmarkListListener:Lcom/sec/android/app/sbrowser/sites/bookmark/utils/CreateBookmarkFolderAlertUtil$BookmarkListListener;

    move-object v0, v6

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/sbrowser/sites/bookmark/utils/CreateBookmarkFolderAlertUtil;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModel;Lcom/sec/android/app/sbrowser/sites/bookmark/utils/CreateBookmarkFolderAlertUtil$BookmarkListListener;)V

    iput-object v6, p0, Lcom/sec/android/app/sbrowser/sites/search/controller/SitesSearchController;->mCreateBookmarkFolderDialog:Lcom/sec/android/app/sbrowser/sites/bookmark/utils/CreateBookmarkFolderAlertUtil;

    const/4 p0, 0x0

    invoke-virtual {v6, p0, p0}, Lcom/sec/android/app/sbrowser/sites/bookmark/utils/CreateBookmarkFolderAlertUtil;->showCreateFolderDialog(ZZ)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    new-instance v0, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModel;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/sites/search/controller/SitesSearchController;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/sites/search/controller/SitesSearchController;->mModelListener:Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModelListener;

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModel;-><init>(Landroid/content/Context;Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModelListener;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/sites/search/controller/SitesSearchController;->mModel:Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModel;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/sites/search/controller/SitesSearchController;->mContext:Landroid/content/Context;

    check-cast v1, Landroid/app/Activity;

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModelHelper;->getBookmarkContentUri(Landroid/app/Activity;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModelBase;->setUri(Landroid/net/Uri;)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/sites/BookmarkNotifier;->getBookmarkNotifier()Lcom/sec/android/app/sbrowser/common/sites/BookmarkNotifier;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/sites/search/controller/SitesSearchController;->mBookmarkDbListener:Lcom/sec/android/app/sbrowser/common/sites/BookmarkNotifier$BookmarkDbListener;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/common/sites/BookmarkNotifier;->registerBookmarkListener(Lcom/sec/android/app/sbrowser/common/sites/BookmarkNotifier$BookmarkDbListener;)V

    new-instance v0, Lcom/sec/android/app/sbrowser/sites/bookmark/utils/EditFolderDialogHelper;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/sites/search/controller/SitesSearchController;->mContext:Landroid/content/Context;

    check-cast v1, Landroid/app/Activity;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/sites/search/controller/SitesSearchController;->mModel:Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModel;

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/sbrowser/sites/bookmark/utils/EditFolderDialogHelper;-><init>(Landroid/app/Activity;Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModel;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/sites/search/controller/SitesSearchController;->mDialogHelper:Lcom/sec/android/app/sbrowser/sites/bookmark/utils/EditFolderDialogHelper;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/search/controller/SitesSearchController;->mSitesSearchView:Lcom/sec/android/app/sbrowser/sites/search/model/SitesSearchViewDelegate;

    invoke-interface {p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/sites/search/model/SitesSearchViewDelegate;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public onDeleteButtonClicked()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/search/controller/SitesSearchController;->mSitesSearchView:Lcom/sec/android/app/sbrowser/sites/search/model/SitesSearchViewDelegate;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/sites/search/model/SitesSearchViewDelegate;->onDeleteButtonClicked()V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/search/controller/SitesSearchController;->mSitesSearchView:Lcom/sec/android/app/sbrowser/sites/search/model/SitesSearchViewDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/sites/search/model/SitesSearchViewDelegate;->onDestroy()V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/sites/BookmarkNotifier;->getBookmarkNotifier()Lcom/sec/android/app/sbrowser/common/sites/BookmarkNotifier;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/sites/search/controller/SitesSearchController;->mBookmarkDbListener:Lcom/sec/android/app/sbrowser/common/sites/BookmarkNotifier$BookmarkDbListener;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/common/sites/BookmarkNotifier;->unregisterBookmarkListener(Lcom/sec/android/app/sbrowser/common/sites/BookmarkNotifier$BookmarkDbListener;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/sites/search/controller/SitesSearchController;->mModel:Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModel;

    return-void
.end method

.method public onDialogDismiss()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/search/controller/SitesSearchController;->mSitesActivityListener:Lcom/sec/android/app/sbrowser/common/model/sites/SitesActivityListener;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/common/model/sites/SitesActivityListener;->onDialogDismiss()V

    return-void
.end method

.method public onResume()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/search/controller/SitesSearchController;->mSitesSearchView:Lcom/sec/android/app/sbrowser/sites/search/model/SitesSearchViewDelegate;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/sites/search/model/SitesSearchViewDelegate;->onResume()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/search/controller/SitesSearchController;->mSitesSearchView:Lcom/sec/android/app/sbrowser/sites/search/model/SitesSearchViewDelegate;

    invoke-interface {p0, p1, p2}, Lcom/sec/android/app/sbrowser/sites/search/model/SitesSearchViewDelegate;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    return-void
.end method

.method public openBookmarkItem(Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem;)V
    .locals 8

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/search/controller/SitesSearchController;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-static {v0}, Lw2/F;->c(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    sget-object v2, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants;->PREF_SFINDER_BOOKMARK_UNSET:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    const-string v5, "perf_show bookmark_sfinder"

    invoke-interface {v1, v5, v3, v4}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    sget-object v6, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants;->PREF_SFINDER_BOOKMARK_SET:Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    cmp-long v3, v3, v6

    if-nez v3, :cond_0

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-interface {v1, v5, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem;->getUrl()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/search/controller/SitesSearchController;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void

    :cond_0
    new-instance p0, Landroid/content/Intent;

    invoke-direct {p0}, Landroid/content/Intent;-><init>()V

    const-string v1, "url"

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem;->getUrl()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/16 p1, 0x6e

    invoke-virtual {v0, p1, p0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public openBookmarkItemInNewWindow(Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem;)V
    .locals 1

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem;->getUrl()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/sites/provider/EManualUtil;->isEmanualUrl(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/sites/provider/EManualUtil;->convertEmanualUrlforDex(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;->getInstance()Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;

    move-result-object v0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/search/controller/SitesSearchController;->mContext:Landroid/content/Context;

    check-cast p0, Landroid/app/Activity;

    invoke-virtual {v0, p0, p1}, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;->openInNewWindow(Landroid/app/Activity;Ljava/lang/String;)V

    return-void
.end method

.method public openEditBookmarkActivity()Z
    .locals 5

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sites/search/controller/SitesSearchController;->getSearchResultList()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return v2

    :cond_0
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_3

    new-instance v0, Landroid/content/Intent;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/sites/search/controller/SitesSearchController;->mContext:Landroid/content/Context;

    const-class v4, Lcom/sec/android/app/sbrowser/sites/bookmark/view/add_bookmark/AddBookmarkActivity;

    invoke-direct {v0, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v3, "title"

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "url"

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem;->getUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "bookmark_id"

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem;->getId()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const-string v1, "bookmarked"

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/search/controller/SitesSearchController;->mContext:Landroid/content/Context;

    check-cast p0, Landroid/app/Activity;

    const/16 v1, 0x300

    const/16 v4, 0xc

    invoke-static {p0, v1, v2, v0, v4}, Lcom/sec/android/app/sbrowser/common/utils/LargeScreenUtil;->startActivityForResult(Landroid/app/Activity;IZLandroid/content/Intent;I)V

    return v3

    :cond_3
    return v2
.end method

.method public openHistoryItem(Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem;)V
    .locals 2

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/search/controller/SitesSearchController;->mContext:Landroid/content/Context;

    check-cast p0, Landroid/app/Activity;

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "HistorySelectedUrl"

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem;->getUrl()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/16 p1, 0x64

    invoke-virtual {p0, p1, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public openInNewWindow(Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem;Z)V
    .locals 1

    invoke-static {}, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;->getInstance()Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;

    move-result-object v0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/search/controller/SitesSearchController;->mContext:Landroid/content/Context;

    check-cast p0, Landroid/app/Activity;

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem;->getContentUri()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem;->getUrl()Ljava/lang/String;

    move-result-object p1

    :goto_0
    invoke-virtual {v0, p0, p1}, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;->openInNewWindow(Landroid/app/Activity;Ljava/lang/String;)V

    return-void
.end method

.method public processSearchData(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/search/controller/SitesSearchController;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/search/controller/SitesSearchController;->mDialogHelper:Lcom/sec/android/app/sbrowser/sites/bookmark/utils/EditFolderDialogHelper;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/sites/bookmark/utils/EditFolderDialogHelper;->dismissDialog()V

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/search/controller/SitesSearchController;->mSitesSearchView:Lcom/sec/android/app/sbrowser/sites/search/model/SitesSearchViewDelegate;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/search/controller/SitesSearchController;->mSitesActivityListener:Lcom/sec/android/app/sbrowser/common/model/sites/SitesActivityListener;

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/common/model/sites/SitesActivityListener;->processSearchData(Ljava/lang/String;)Z

    move-result p0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    invoke-interface {v0, p0, p1}, Lcom/sec/android/app/sbrowser/sites/search/model/SitesSearchViewDelegate;->processSearchData(ZZ)V

    return-void
.end method

.method public requestFocus()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/search/controller/SitesSearchController;->mSitesSearchView:Lcom/sec/android/app/sbrowser/sites/search/model/SitesSearchViewDelegate;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/sites/search/model/SitesSearchViewDelegate;->requestFocus()Z

    move-result p0

    return p0
.end method

.method public setActionModeTitleAlpha(F)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/search/controller/SitesSearchController;->mSitesSearchView:Lcom/sec/android/app/sbrowser/sites/search/model/SitesSearchViewDelegate;

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/sites/search/model/SitesSearchViewDelegate;->setActionModeTitleAlpha(F)V

    return-void
.end method

.method public setSceneAnimation(Lcom/sec/android/app/sbrowser/sites/model/SitesTransitionListener;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/search/controller/SitesSearchController;->mSitesSearchView:Lcom/sec/android/app/sbrowser/sites/search/model/SitesSearchViewDelegate;

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/sites/search/model/SitesSearchViewDelegate;->setSceneAnimation(Lcom/sec/android/app/sbrowser/sites/model/SitesTransitionListener;)V

    return-void
.end method

.method public setSitesSearchView(Lcom/sec/android/app/sbrowser/sites/search/model/SitesSearchViewDelegate;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/sites/search/controller/SitesSearchController;->mSitesSearchView:Lcom/sec/android/app/sbrowser/sites/search/model/SitesSearchViewDelegate;

    return-void
.end method

.method public share(Ljava/lang/String;)Landroid/content/Intent;
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SEND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "text/plain"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "android.intent.extra.TEXT"

    invoke-virtual {p1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    new-instance p1, Lcom/sec/android/app/sbrowser/utils/ShareHelper$IntentBuilder;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/sites/search/controller/SitesSearchController;->mContext:Landroid/content/Context;

    invoke-direct {p1, v1}, Lcom/sec/android/app/sbrowser/utils/ShareHelper$IntentBuilder;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/sec/android/app/sbrowser/utils/ShareHelper$IntentBuilder;->chooserIntent(Landroid/content/Intent;Ljava/lang/String;)Lcom/sec/android/app/sbrowser/utils/ShareHelper$IntentBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/utils/ShareHelper$IntentBuilder;->bringToFront()Lcom/sec/android/app/sbrowser/utils/ShareHelper$IntentBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/utils/ShareHelper$IntentBuilder;->build()Landroid/content/Intent;

    move-result-object p1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/search/controller/SitesSearchController;->mContext:Landroid/content/Context;

    check-cast p0, Landroid/app/Activity;

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/common/utils/LargeScreenUtil;->startActivityShare(Landroid/app/Activity;Landroid/content/Intent;)V

    return-object v0
.end method

.method public showSearchKeywordListView()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/search/controller/SitesSearchController;->mSitesSearchView:Lcom/sec/android/app/sbrowser/sites/search/model/SitesSearchViewDelegate;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/sites/search/model/SitesSearchViewDelegate;->showSearchKeywordListView()V

    return-void
.end method

.method public stopScrollOnClear()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/search/controller/SitesSearchController;->mSitesSearchView:Lcom/sec/android/app/sbrowser/sites/search/model/SitesSearchViewDelegate;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/sites/search/model/SitesSearchViewDelegate;->stopScrollOnClear()V

    return-void
.end method
