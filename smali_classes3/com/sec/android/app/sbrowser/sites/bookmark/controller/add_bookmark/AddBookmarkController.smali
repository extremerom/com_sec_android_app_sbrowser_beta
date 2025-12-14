.class public Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController$AddBookmarkHandler;
    }
.end annotation


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mActivityStatus:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$ActivityStatus;

.field private mAddBookmarkModel:Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModel;

.field private mAddBookmarkView:Lcom/sec/android/app/sbrowser/sites/bookmark/model/add_bookmark/AddBookmarkViewDelegate;

.field private mBookmarkDbListener:Lcom/sec/android/app/sbrowser/common/sites/BookmarkNotifier$BookmarkDbListener;

.field private mCurrentItem:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

.field private mDoneButtonSelected:Z

.field private mFolderPathHashMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Long;",
            "Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;",
            ">;"
        }
    .end annotation
.end field

.field private mFolderPathLastItem:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

.field private final mHandler:Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController$AddBookmarkHandler;

.field private mId:J

.field private mInitialParentId:J

.field private mIsEdit:Z

.field private mIsLaunchedFromOtherApp:Z

.field private mLocale:Ljava/lang/String;

.field private mParentId:J

.field private mParentItem:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

.field private mRoot:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

.field private mRootItem:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

.field private mSelectFolderLayoutClicked:Z

.field private mSharedPreferences:Landroid/content/SharedPreferences;

.field private mUrl:Ljava/lang/String;

.field private mViewListener:Lcom/sec/android/app/sbrowser/sites/bookmark/model/add_bookmark/AddBookmarkViewListener;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/sec/android/app/sbrowser/sites/bookmark/model/add_bookmark/AddBookmarkViewDelegate;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;->mRoot:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

    sget-object v1, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants;->INVALID_BOOKMARK_ID:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;->mId:J

    sget-object v1, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$ActivityStatus;->FOREGROUND:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$ActivityStatus;

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;->mActivityStatus:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$ActivityStatus;

    sget-object v1, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$BookmarkSyncID;->MY_DEVICE:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$BookmarkSyncID;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$BookmarkSyncID;->getNumVal()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;->mInitialParentId:J

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;->mLocale:Ljava/lang/String;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;->mFolderPathHashMap:Ljava/util/HashMap;

    new-instance v0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController$AddBookmarkHandler;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController$AddBookmarkHandler;-><init>(Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;->mHandler:Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController$AddBookmarkHandler;

    new-instance v0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController$3;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController$3;-><init>(Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;->mBookmarkDbListener:Lcom/sec/android/app/sbrowser/common/sites/BookmarkNotifier$BookmarkDbListener;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;->mActivity:Landroid/app/Activity;

    new-instance v0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController$1;-><init>(Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;)V

    new-instance v1, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModel;

    invoke-direct {v1, p1, v0}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModel;-><init>(Landroid/content/Context;Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModelListener;)V

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;->mAddBookmarkModel:Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModel;

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;->mActivity:Landroid/app/Activity;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModelHelper;->getBookmarkContentUri(Landroid/app/Activity;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModelBase;->setUri(Landroid/net/Uri;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;->mAddBookmarkModel:Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModel;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModel;->hasPCSyncedBookmarks()Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkPCSyncInfo;

    move-result-object p1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/sites/BookmarkRootIDManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/sbrowser/common/sites/BookmarkRootIDManager;

    move-result-object v0

    iget v1, p1, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkPCSyncInfo;->mPCBookmarkCount:I

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;->mActivity:Landroid/app/Activity;

    invoke-static {v2}, Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;->isSecretModeEnabled(Landroid/app/Activity;)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/sbrowser/common/sites/BookmarkRootIDManager;->setPCBookmarkCount(IZ)V

    iget-object p1, p1, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkPCSyncInfo;->mPCSyncList:Ljava/util/List;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/common/sites/BookmarkRootIDManager;->setPCFolderId(Ljava/util/List;)V

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;->mAddBookmarkView:Lcom/sec/android/app/sbrowser/sites/bookmark/model/add_bookmark/AddBookmarkViewDelegate;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;->getViewListener()Lcom/sec/android/app/sbrowser/sites/bookmark/model/add_bookmark/AddBookmarkViewListener;

    move-result-object p0

    invoke-interface {p2, p0}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/add_bookmark/AddBookmarkViewDelegate;->setListener(Lcom/sec/android/app/sbrowser/sites/bookmark/model/add_bookmark/AddBookmarkViewListener;)V

    return-void
.end method

.method public static bridge synthetic A(Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;->handleDoneButton(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic B(Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;->handleEditParentSuccess(Ljava/lang/Object;)V

    return-void
.end method

.method public static bridge synthetic C(Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;Landroid/os/Message;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;->handleMessage(Landroid/os/Message;)V

    return-void
.end method

.method public static synthetic a(Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;->lambda$handleDoneButton$0()V

    return-void
.end method

.method public static bridge synthetic b(Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;)Landroid/app/Activity;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;->mActivity:Landroid/app/Activity;

    return-object p0
.end method

.method public static bridge synthetic c(Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;)Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$ActivityStatus;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;->mActivityStatus:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$ActivityStatus;

    return-object p0
.end method

.method public static bridge synthetic d(Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;)Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModel;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;->mAddBookmarkModel:Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModel;

    return-object p0
.end method

.method public static bridge synthetic e(Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;)Lcom/sec/android/app/sbrowser/sites/bookmark/model/add_bookmark/AddBookmarkViewDelegate;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;->mAddBookmarkView:Lcom/sec/android/app/sbrowser/sites/bookmark/model/add_bookmark/AddBookmarkViewDelegate;

    return-object p0
.end method

.method public static bridge synthetic f(Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;)Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;->mCurrentItem:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

    return-object p0
.end method

.method public static bridge synthetic g(Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;->mDoneButtonSelected:Z

    return p0
.end method

.method private getFolderPath(Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;)Ljava/lang/String;
    .locals 7

    const-string v0, ""

    :goto_0
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getId()J

    move-result-wide v1

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;->mRoot:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getId()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getType()Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$BookmarkType;

    move-result-object v1

    sget-object v2, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$BookmarkType;->URL:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$BookmarkType;

    if-eq v1, v2, :cond_1

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getSYNC4()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getId()J

    move-result-wide v3

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getTitle()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v2, v3, v4, v5}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkStringUtil;->getBookmarkParentName(Ljava/lang/String;Landroid/content/Context;JLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getId()J

    move-result-wide v3

    sget-object v5, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$BookmarkSyncID;->SAMSUNG:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$BookmarkSyncID;

    invoke-virtual {v5}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$BookmarkSyncID;->getNumVal()J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-eqz v3, :cond_0

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f140284

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_1
    invoke-static {v2, v1, v0}, Lt/b;->j(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;->mAddBookmarkModel:Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModel;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getParentId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModelBase;->getBookmarkItem(Ljava/lang/Long;)Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

    move-result-object p1

    goto :goto_0

    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;->mActivity:Landroid/app/Activity;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;->isSecretModeEnabled(Landroid/app/Activity;)Z

    move-result p0

    if-eqz p0, :cond_3

    const p0, 0x7f140260

    goto :goto_2

    :cond_3
    const p0, 0x7f14027f

    :goto_2
    invoke-virtual {v1, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getUpdatedStrings(JLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;->mActivity:Landroid/app/Activity;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-static {p0, p1, p3, p4}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkStringUtil;->getUpdatedStrings(Landroid/content/Context;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getViewListener()Lcom/sec/android/app/sbrowser/sites/bookmark/model/add_bookmark/AddBookmarkViewListener;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;->mViewListener:Lcom/sec/android/app/sbrowser/sites/bookmark/model/add_bookmark/AddBookmarkViewListener;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController$2;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController$2;-><init>(Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;->mViewListener:Lcom/sec/android/app/sbrowser/sites/bookmark/model/add_bookmark/AddBookmarkViewListener;

    return-object v0
.end method

.method public static bridge synthetic h(Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;)Ljava/util/HashMap;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;->mFolderPathHashMap:Ljava/util/HashMap;

    return-object p0
.end method

.method private handleBookmarkAddSuccess(Ljava/lang/Object;)V
    .locals 5

    check-cast p1, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkAddInfo;

    iget-object v0, p1, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkAddInfo;->item:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

    iget p1, p1, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkAddInfo;->activityId:I

    invoke-direct {p0, v0, p1}, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;->noNeedToUpdateBookmark(Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;I)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    iget-boolean p1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;->mDoneButtonSelected:Z

    if-eqz p1, :cond_3

    iget-boolean p1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;->mIsLaunchedFromOtherApp:Z

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;->mActivity:Landroid/app/Activity;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;->isSecretModeEnabled(Landroid/app/Activity;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;->mActivity:Landroid/app/Activity;

    const v0, 0x7f1410fc

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;->mActivity:Landroid/app/Activity;

    const v0, 0x7f1410fe

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;->mActivity:Landroid/app/Activity;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :cond_2
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto/16 :goto_1

    :cond_3
    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getUrl()Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;->mUrl:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_4

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getUrl()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;->mUrl:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_4

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getUrl()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "http://"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;->mUrl:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_4

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getUrl()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;->mUrl:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_5

    :cond_4
    iput-object v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;->mCurrentItem:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getParentId()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;->mParentId:J

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;->mAddBookmarkView:Lcom/sec/android/app/sbrowser/sites/bookmark/model/add_bookmark/AddBookmarkViewDelegate;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;->mCurrentItem:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getParentId()J

    move-result-wide v0

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;->mCurrentItem:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getParentName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;->mCurrentItem:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getParentGUID()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;->getUpdatedStrings(JLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;->mCurrentItem:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

    invoke-direct {p0, v1}, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;->getFolderPath(Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/add_bookmark/AddBookmarkViewDelegate;->updateParentDetails(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;->mAddBookmarkView:Lcom/sec/android/app/sbrowser/sites/bookmark/model/add_bookmark/AddBookmarkViewDelegate;

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/add_bookmark/AddBookmarkViewDelegate;->setBookmarkUrlEditable(Z)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;->mAddBookmarkView:Lcom/sec/android/app/sbrowser/sites/bookmark/model/add_bookmark/AddBookmarkViewDelegate;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;->mCurrentItem:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getId()J

    move-result-wide v0

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;->mCurrentItem:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getTitle()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;->mCurrentItem:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getGUID()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;->getUpdatedStrings(JLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;->mCurrentItem:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getUrl()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, v0, p0}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/add_bookmark/AddBookmarkViewDelegate;->setBookmarkTitle(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    :goto_1
    return-void
.end method

.method private handleBookmarkDeleteSuccess(Ljava/lang/Object;)V
    .locals 10

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/utils/Objects;->uncheckedCast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_3

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;->mCurrentItem:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

    const/4 v5, 0x0

    if-eqz v4, :cond_0

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getId()J

    move-result-wide v6

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;->mCurrentItem:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

    invoke-virtual {v4}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getId()J

    move-result-wide v8

    cmp-long v4, v6, v8

    if-nez v4, :cond_0

    iput-object v5, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;->mCurrentItem:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    :cond_0
    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getId()J

    move-result-wide v3

    iget-wide v6, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;->mParentId:J

    cmp-long v3, v3, v6

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;->mAddBookmarkModel:Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModel;

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModelBase;->getBookmarkItem(Ljava/lang/Long;)Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

    move-result-object v3

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    iput-object v5, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;->mCurrentItem:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;->mRoot:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getId()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;->mParentId:J

    iput-object v5, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;->mParentItem:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;->mAddBookmarkView:Lcom/sec/android/app/sbrowser/sites/bookmark/model/add_bookmark/AddBookmarkViewDelegate;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;->mRoot:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getId()J

    move-result-wide v2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;->mRoot:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getTitle()Ljava/lang/String;

    move-result-object v0

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;->mRoot:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

    invoke-virtual {v4}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getGUID()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v2, v3, v0, v4}, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;->getUpdatedStrings(JLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;->mRoot:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

    invoke-direct {p0, v2}, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;->getFolderPath(Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v0, v2}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/add_bookmark/AddBookmarkViewDelegate;->updateParentDetails(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;->mAddBookmarkView:Lcom/sec/android/app/sbrowser/sites/bookmark/model/add_bookmark/AddBookmarkViewDelegate;

    invoke-interface {p0, v1}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/add_bookmark/AddBookmarkViewDelegate;->setBookmarkUrlEditable(Z)V

    :cond_3
    return-void
.end method

.method private handleBookmarkEditSuccess(Ljava/lang/Object;)V
    .locals 7

    check-cast p1, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

    if-eqz p1, :cond_7

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getType()Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$BookmarkType;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$BookmarkType;->FOLDER:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$BookmarkType;

    if-ne v0, v1, :cond_0

    goto/16 :goto_1

    :cond_0
    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;->mDoneButtonSelected:Z

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;->mActivity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object p1

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/utils/ImeUtil;->hideKeyboard(Landroid/view/View;)Z

    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-string v0, "edit_bookmark_success"

    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;->mActivity:Landroid/app/Activity;

    const/16 v1, 0x80

    invoke-virtual {v0, v1, p1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto/16 :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getType()Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$BookmarkType;

    move-result-object v0

    sget-object v3, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$BookmarkType;->URL:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$BookmarkType;

    if-ne v0, v3, :cond_5

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getUrl()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;->mUrl:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getUrl()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;->mUrl:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getUrl()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "http://"

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;->mUrl:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getUrl()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;->mUrl:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;->mCurrentItem:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getParentId()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getParentId()J

    move-result-wide v3

    cmp-long v0, v0, v3

    if-eqz v0, :cond_3

    return-void

    :cond_3
    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->isPrivate()Z

    move-result v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;->mActivity:Landroid/app/Activity;

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;->isSecretModeEnabled(Landroid/app/Activity;)Z

    move-result v1

    if-eq v0, v1, :cond_4

    return-void

    :cond_4
    iput-object p1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;->mCurrentItem:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getParentId()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;->mParentId:J

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;->mAddBookmarkView:Lcom/sec/android/app/sbrowser/sites/bookmark/model/add_bookmark/AddBookmarkViewDelegate;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;->mCurrentItem:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getParentId()J

    move-result-wide v0

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;->mCurrentItem:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getParentName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;->mCurrentItem:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

    invoke-virtual {v4}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getParentGUID()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v0, v1, v3, v4}, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;->getUpdatedStrings(JLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;->mCurrentItem:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

    invoke-direct {p0, v1}, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;->getFolderPath(Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/add_bookmark/AddBookmarkViewDelegate;->updateParentDetails(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;->mAddBookmarkView:Lcom/sec/android/app/sbrowser/sites/bookmark/model/add_bookmark/AddBookmarkViewDelegate;

    invoke-interface {p1, v2}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/add_bookmark/AddBookmarkViewDelegate;->setBookmarkUrlEditable(Z)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;->mAddBookmarkView:Lcom/sec/android/app/sbrowser/sites/bookmark/model/add_bookmark/AddBookmarkViewDelegate;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;->mCurrentItem:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getId()J

    move-result-wide v0

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;->mCurrentItem:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getTitle()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;->mCurrentItem:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getGUID()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;->getUpdatedStrings(JLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;->mCurrentItem:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getUrl()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, v0, p0}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/add_bookmark/AddBookmarkViewDelegate;->setBookmarkTitle(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getType()Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$BookmarkType;

    move-result-object v0

    if-ne v0, v1, :cond_6

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getId()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;->mParentId:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;->mAddBookmarkView:Lcom/sec/android/app/sbrowser/sites/bookmark/model/add_bookmark/AddBookmarkViewDelegate;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getId()J

    move-result-wide v1

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getGUID()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;->getUpdatedStrings(JLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;->getFolderPath(Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, v1, p0}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/add_bookmark/AddBookmarkViewDelegate;->updateParentDetails(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    :goto_0
    return-void

    :cond_7
    :goto_1
    if-eqz p1, :cond_8

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;->mFolderPathHashMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getId()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getId()J

    move-result-wide v0

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;->mFolderPathLastItem:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getId()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_8

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;->mFolderPathLastItem:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;->mCurrentItem:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->setParentName(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;->mAddBookmarkView:Lcom/sec/android/app/sbrowser/sites/bookmark/model/add_bookmark/AddBookmarkViewDelegate;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;->getFolderPath(Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, v1, p0}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/add_bookmark/AddBookmarkViewDelegate;->updateParentDetails(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_8
    if-eqz p1, :cond_9

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;->mFolderPathHashMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getId()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getId()J

    move-result-wide v0

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;->mFolderPathLastItem:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getId()J

    move-result-wide v2

    cmp-long p1, v0, v2

    if-eqz p1, :cond_9

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;->mAddBookmarkView:Lcom/sec/android/app/sbrowser/sites/bookmark/model/add_bookmark/AddBookmarkViewDelegate;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;->mFolderPathLastItem:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;->getFolderPath(Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/add_bookmark/AddBookmarkViewDelegate;->updateFolderPathDetails(Ljava/lang/String;)V

    :cond_9
    :goto_2
    return-void
.end method

.method private handleDoneButton(Ljava/lang/String;Ljava/lang/String;)V
    .locals 15

    move-object v0, p0

    move-object/from16 v5, p2

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_8

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_8

    const-string v1, " "

    move-object/from16 v6, p1

    invoke-virtual {v6, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_4

    :cond_0
    iget-boolean v1, v0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;->mDoneButtonSelected:Z

    if-nez v1, :cond_7

    iget-boolean v1, v0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;->mSelectFolderLayoutClicked:Z

    if-eqz v1, :cond_1

    goto/16 :goto_3

    :cond_1
    const/4 v13, 0x1

    iput-boolean v13, v0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;->mDoneButtonSelected:Z

    iget-object v1, v0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/common/utils/ImeUtil;->hideKeyboard(Landroid/view/View;)Z

    iget-object v1, v0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;->mCurrentItem:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    iget-object v1, v0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;->mParentItem:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

    if-eqz v1, :cond_3

    iget-object v1, v0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;->mCurrentItem:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static/range {p1 .. p1}, Lcom/sec/android/app/sbrowser/common/utils/Surl;->getSurl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, v0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;->mCurrentItem:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, v0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;->mCurrentItem:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getParentId()J

    move-result-wide v3

    iget-object v1, v0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;->mParentItem:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getId()J

    move-result-wide v7

    cmp-long v1, v3, v7

    if-nez v1, :cond_2

    iget-object v1, v0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;->mActivity:Landroid/app/Activity;

    const v3, 0x7f1404b0

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/sec/android/app/sbrowser/common/utils/SnackbarUtil;->make(Landroid/app/Activity;Ljava/lang/CharSequence;)LH6/o;

    move-result-object v1

    invoke-virtual {v1}, LH6/o;->l()V

    iput-boolean v2, v0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;->mDoneButtonSelected:Z

    return-void

    :cond_2
    new-instance v13, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

    iget-object v1, v0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;->mCurrentItem:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getId()J

    move-result-wide v2

    sget-object v4, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$BookmarkType;->URL:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$BookmarkType;

    iget-object v1, v0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;->mParentItem:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getId()J

    move-result-wide v7

    iget-object v1, v0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;->mParentItem:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getAccountType()Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$AccountType;

    move-result-object v10

    iget-object v1, v0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;->mCurrentItem:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getTime()J

    move-result-wide v11

    const/4 v9, 0x1

    move-object v1, v13

    move-object/from16 v5, p2

    move-object/from16 v6, p1

    invoke-direct/range {v1 .. v12}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;-><init>(JLcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$BookmarkType;Ljava/lang/String;Ljava/lang/String;JZLcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$AccountType;J)V

    goto :goto_0

    :cond_3
    iget-object v1, v0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;->mCurrentItem:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static/range {p1 .. p1}, Lcom/sec/android/app/sbrowser/common/utils/Surl;->getSurl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, v0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;->mCurrentItem:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    new-instance v2, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/a;

    const/4 v3, 0x1

    invoke-direct {v2, v3, p0}, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/a;-><init>(ILjava/lang/Object;)V

    const-wide/16 v3, 0x12c

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :cond_4
    new-instance v13, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

    iget-object v1, v0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;->mCurrentItem:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getId()J

    move-result-wide v2

    sget-object v4, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$BookmarkType;->URL:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$BookmarkType;

    iget-object v1, v0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;->mCurrentItem:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getParentId()J

    move-result-wide v7

    iget-object v1, v0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;->mCurrentItem:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getAccountType()Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$AccountType;

    move-result-object v10

    iget-object v1, v0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;->mCurrentItem:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getTime()J

    move-result-wide v11

    const/4 v9, 0x1

    move-object v1, v13

    move-object/from16 v5, p2

    move-object/from16 v6, p1

    invoke-direct/range {v1 .. v12}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;-><init>(JLcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$BookmarkType;Ljava/lang/String;Ljava/lang/String;JZLcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$AccountType;J)V

    :goto_0
    iget-object v1, v0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;->mAddBookmarkModel:Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModel;

    invoke-virtual {v1, v13}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModelBase;->editBookmark(Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;)V

    goto :goto_2

    :cond_5
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/utils/IconFetcher;->getInstance()Lcom/sec/android/app/sbrowser/common/utils/IconFetcher;

    move-result-object v1

    invoke-static/range {p1 .. p1}, Lcom/sec/android/app/sbrowser/common/utils/Surl;->getSurl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/sbrowser/common/utils/IconFetcher;->requestIcon(Ljava/lang/String;Landroid/os/Handler;)V

    iget-object v1, v0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;->mParentItem:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

    if-eqz v1, :cond_6

    new-instance v14, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

    sget-object v1, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants;->INVALID_BOOKMARK_ID:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    sget-object v4, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$BookmarkType;->URL:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$BookmarkType;

    iget-object v1, v0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;->mParentItem:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getId()J

    move-result-wide v7

    iget-object v1, v0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;->mParentItem:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getAccountType()Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$AccountType;

    move-result-object v10

    const-wide/16 v11, 0x0

    const/4 v9, 0x1

    move-object v1, v14

    move-object/from16 v5, p2

    move-object/from16 v6, p1

    invoke-direct/range {v1 .. v12}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;-><init>(JLcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$BookmarkType;Ljava/lang/String;Ljava/lang/String;JZLcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$AccountType;J)V

    goto :goto_1

    :cond_6
    new-instance v14, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

    sget-object v1, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants;->INVALID_BOOKMARK_ID:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    sget-object v4, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$BookmarkType;->URL:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$BookmarkType;

    iget-object v1, v0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;->mRootItem:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getId()J

    move-result-wide v7

    iget-object v1, v0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;->mRootItem:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getAccountType()Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$AccountType;

    move-result-object v10

    const-wide/16 v11, 0x0

    const/4 v9, 0x1

    move-object v1, v14

    move-object/from16 v5, p2

    move-object/from16 v6, p1

    invoke-direct/range {v1 .. v12}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;-><init>(JLcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$BookmarkType;Ljava/lang/String;Ljava/lang/String;JZLcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$AccountType;J)V

    :goto_1
    iget-object v1, v0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;->mAddBookmarkModel:Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModel;

    invoke-virtual {v1, v14, v13}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModelBase;->addBookmark(Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;Z)V

    :goto_2
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;->saveLocation()V

    :cond_7
    :goto_3
    return-void

    :cond_8
    :goto_4
    iget-object v1, v0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;->mAddBookmarkView:Lcom/sec/android/app/sbrowser/sites/bookmark/model/add_bookmark/AddBookmarkViewDelegate;

    iget-boolean v3, v0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;->mIsEdit:Z

    invoke-interface {v1, v3}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/add_bookmark/AddBookmarkViewDelegate;->setErrorBasedOnScenario(Z)V

    iput-boolean v2, v0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;->mDoneButtonSelected:Z

    return-void
.end method

.method private handleEditParentSuccess(Ljava/lang/Object;)V
    .locals 6

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/utils/Objects;->uncheckedCast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;->mDoneButtonSelected:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v2, "edit_bookmark_success"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;->mActivity:Landroid/app/Activity;

    const/16 v3, 0x80

    invoke-virtual {v2, v3, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    const-string v0, "3017"

    const-string v2, "3"

    const-string v3, "302"

    invoke-static {v3, v0, v2}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/utils/ImeUtil;->hideKeyboard(Landroid/view/View;)Z

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;->mCurrentItem:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

    if-eqz v0, :cond_2

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getId()J

    move-result-wide v2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;->mCurrentItem:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getId()J

    move-result-wide v4

    cmp-long v0, v2, v4

    if-nez v0, :cond_2

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;->mCurrentItem:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getParentId()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;->mParentId:J

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;->mAddBookmarkView:Lcom/sec/android/app/sbrowser/sites/bookmark/model/add_bookmark/AddBookmarkViewDelegate;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;->mCurrentItem:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getId()J

    move-result-wide v0

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;->mCurrentItem:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getTitle()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;->mCurrentItem:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getGUID()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;->getUpdatedStrings(JLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;->mCurrentItem:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/add_bookmark/AddBookmarkViewDelegate;->setBookmarkTitle(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_2
    return-void
.end method

.method private handleMessage(Landroid/os/Message;)V
    .locals 5

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;->mActivityStatus:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$ActivityStatus;

    sget-object v1, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$ActivityStatus;->FINISHED:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$ActivityStatus;

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$Messages;->values()[Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$Messages;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->what:I

    aget-object v0, v0, v1

    sget-object v1, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController$4;->$SwitchMap$com$sec$android$app$sbrowser$common$constants$sites$BookmarkConstants$Messages:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x0

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_1

    :pswitch_0
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "bookmark add failed "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "AddBookmarkController"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v2, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;->mDoneButtonSelected:Z

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;->mActivity:Landroid/app/Activity;

    const p1, 0x1020002

    const v0, 0x7f140061

    const/4 v1, -0x1

    invoke-static {p0, p1, v0, v1}, Lcom/sec/android/app/sbrowser/autofill/password/k;->q(Landroid/app/Activity;III)V

    goto/16 :goto_1

    :pswitch_1
    iput-boolean v2, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;->mDoneButtonSelected:Z

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;->mActivity:Landroid/app/Activity;

    const p1, 0x7f1404b0

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/common/utils/SnackbarUtil;->make(Landroid/app/Activity;Ljava/lang/CharSequence;)LH6/o;

    move-result-object p0

    invoke-virtual {p0}, LH6/o;->l()V

    goto/16 :goto_1

    :pswitch_2
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;->mParentItem:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getId()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;->mParentId:J

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;->mAddBookmarkView:Lcom/sec/android/app/sbrowser/sites/bookmark/model/add_bookmark/AddBookmarkViewDelegate;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;->mParentItem:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getId()J

    move-result-wide v0

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;->mParentItem:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getTitle()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;->mParentItem:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getGUID()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;->getUpdatedStrings(JLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;->mParentItem:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

    invoke-direct {p0, v1}, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;->getFolderPath(Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, v0, p0}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/add_bookmark/AddBookmarkViewDelegate;->updateParentDetails(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_1
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;->mRoot:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getId()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;->mParentId:J

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;->mAddBookmarkView:Lcom/sec/android/app/sbrowser/sites/bookmark/model/add_bookmark/AddBookmarkViewDelegate;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;->mRoot:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getId()J

    move-result-wide v0

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;->mRoot:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getTitle()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;->mRoot:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getGUID()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;->getUpdatedStrings(JLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;->mRoot:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

    invoke-direct {p0, v1}, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;->getFolderPath(Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, v0, p0}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/add_bookmark/AddBookmarkViewDelegate;->updateParentDetails(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :pswitch_3
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;->mCurrentItem:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getParentId()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;->mParentId:J

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;->mIsEdit:Z

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;->mAddBookmarkView:Lcom/sec/android/app/sbrowser/sites/bookmark/model/add_bookmark/AddBookmarkViewDelegate;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;->mCurrentItem:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getParentName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;->mCurrentItem:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

    invoke-virtual {v4}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getParentGUID()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v0, v1, v3, v4}, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;->getUpdatedStrings(JLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;->mCurrentItem:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

    invoke-direct {p0, v1}, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;->getFolderPath(Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v0, v1}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/add_bookmark/AddBookmarkViewDelegate;->updateParentDetails(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;->mCurrentItem:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getType()Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$BookmarkType;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$BookmarkType;->URL:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$BookmarkType;

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;->mAddBookmarkModel:Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModel;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;->mCurrentItem:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getParentId()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModelBase;->getBookmarkItem(Ljava/lang/Long;)Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

    move-result-object v0

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;->mCurrentItem:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

    :goto_0
    iput-object v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;->mFolderPathLastItem:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;->mFolderPathHashMap:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;->mCurrentItem:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;->updateFolderPathHashMap(Ljava/util/HashMap;Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;->mCurrentItem:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getParentId()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;->mInitialParentId:J

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;->mAddBookmarkView:Lcom/sec/android/app/sbrowser/sites/bookmark/model/add_bookmark/AddBookmarkViewDelegate;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;->mCurrentItem:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getId()J

    move-result-wide v1

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;->mCurrentItem:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getTitle()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;->mCurrentItem:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

    invoke-virtual {v4}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getGUID()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;->getUpdatedStrings(JLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;->mCurrentItem:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/add_bookmark/AddBookmarkViewDelegate;->setBookmarkTitle(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;->mAddBookmarkView:Lcom/sec/android/app/sbrowser/sites/bookmark/model/add_bookmark/AddBookmarkViewDelegate;

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/add_bookmark/AddBookmarkViewDelegate;->setBookmarkUrlEditable(Z)V

    :cond_3
    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static bridge synthetic i(Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;)Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController$AddBookmarkHandler;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;->mHandler:Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController$AddBookmarkHandler;

    return-object p0
.end method

.method public static bridge synthetic j(Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;)J
    .locals 2

    iget-wide v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;->mInitialParentId:J

    return-wide v0
.end method

.method public static bridge synthetic k(Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;->mIsEdit:Z

    return p0
.end method

.method public static bridge synthetic l(Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;)J
    .locals 2

    iget-wide v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;->mParentId:J

    return-wide v0
.end method

.method private synthetic lambda$handleDoneButton$0()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public static bridge synthetic m(Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;)Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;->mParentItem:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

    return-object p0
.end method

.method public static bridge synthetic n(Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;)Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;->mRoot:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

    return-object p0
.end method

.method private noNeedToUpdateBookmark(Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;I)Z
    .locals 2

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getType()Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$BookmarkType;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$BookmarkType;->FOLDER:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$BookmarkType;

    if-eq v0, v1, :cond_2

    invoke-static {}, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;->getInstance()Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;->getInstanceId(Landroid/app/Activity;)I

    move-result v0

    if-eq v0, p2, :cond_0

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;->mActivity:Landroid/app/Activity;

    invoke-static {p2}, Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;->isSecretModeEnabled(Landroid/app/Activity;)Z

    move-result p2

    if-nez p2, :cond_2

    :cond_0
    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->isPrivate()Z

    move-result p1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;->mActivity:Landroid/app/Activity;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;->isSecretModeEnabled(Landroid/app/Activity;)Z

    move-result p0

    if-eq p1, p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return p0

    :cond_2
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public static bridge synthetic o(Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;)Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;->mRootItem:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

    return-object p0
.end method

.method public static bridge synthetic p(Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;->mSelectFolderLayoutClicked:Z

    return p0
.end method

.method public static bridge synthetic q(Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;)V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;->mCurrentItem:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

    return-void
.end method

.method public static bridge synthetic r(Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;)V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;->mIsEdit:Z

    return-void
.end method

.method public static bridge synthetic s(Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;J)V
    .locals 0

    iput-wide p1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;->mParentId:J

    return-void
.end method

.method private saveLocation()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;->mSharedPreferences:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;->mParentItem:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;->isSecretModeEnabled(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;->mParentItem:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getId()J

    move-result-wide v1

    const-string p0, "pref_add_bookmark_folder_secret"

    invoke-interface {v0, p0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;->mParentItem:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getId()J

    move-result-wide v1

    const-string p0, "pref_add_bookmark_folder"

    invoke-interface {v0, p0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_1
    :goto_0
    return-void
.end method

.method public static bridge synthetic t(Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;)V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;->mParentItem:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

    return-void
.end method

.method public static bridge synthetic u(Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;->mSelectFolderLayoutClicked:Z

    return-void
.end method

.method public static bridge synthetic v(Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;->getFolderPath(Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic w(Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;JLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;->getUpdatedStrings(JLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic x(Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;->handleBookmarkAddSuccess(Ljava/lang/Object;)V

    return-void
.end method

.method public static bridge synthetic y(Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;->handleBookmarkDeleteSuccess(Ljava/lang/Object;)V

    return-void
.end method

.method public static bridge synthetic z(Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;->handleBookmarkEditSuccess(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public finishActivity()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;->mActivityStatus:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$ActivityStatus;

    sget-object v1, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$ActivityStatus;->FINISHED:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$ActivityStatus;

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    iput-object v1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;->mActivityStatus:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$ActivityStatus;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/utils/ImeUtil;->hideKeyboard(Landroid/view/View;)Z

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;->mAddBookmarkModel:Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModel;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModelBase;->unRegisterListener()V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;->mAddBookmarkView:Lcom/sec/android/app/sbrowser/sites/bookmark/model/add_bookmark/AddBookmarkViewDelegate;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/add_bookmark/AddBookmarkViewDelegate;->finish()V

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    const/16 v0, 0xb

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;->mSelectFolderLayoutClicked:Z

    const/4 p1, -0x1

    if-eq p2, p1, :cond_1

    return-void

    :cond_1
    const-string p1, "BookmarkItem"

    invoke-virtual {p3, p1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getId()J

    move-result-wide p2

    iget-wide v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;->mParentId:J

    cmp-long p2, p2, v0

    if-eqz p2, :cond_2

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;->mParentItem:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;->mAddBookmarkView:Lcom/sec/android/app/sbrowser/sites/bookmark/model/add_bookmark/AddBookmarkViewDelegate;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getId()J

    move-result-wide v0

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;->mParentItem:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getTitle()Ljava/lang/String;

    move-result-object p1

    iget-object p3, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;->mParentItem:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

    invoke-virtual {p3}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getGUID()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p0, v0, v1, p1, p3}, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;->getUpdatedStrings(JLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object p3, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;->mParentItem:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

    invoke-direct {p0, p3}, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;->getFolderPath(Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;)Ljava/lang/String;

    move-result-object p3

    invoke-interface {p2, p1, p3}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/add_bookmark/AddBookmarkViewDelegate;->updateParentDetails(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;->mParentItem:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getId()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;->mParentId:J

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;->mParentItem:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;->mFolderPathLastItem:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;->mFolderPathHashMap:Ljava/util/HashMap;

    invoke-virtual {p0, p2, p1}, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;->updateFolderPathHashMap(Ljava/util/HashMap;Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onBackPressed()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;->mAddBookmarkView:Lcom/sec/android/app/sbrowser/sites/bookmark/model/add_bookmark/AddBookmarkViewDelegate;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/add_bookmark/AddBookmarkViewDelegate;->onBackPressed()V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 5

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;->mLocale:Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/utils/LocaleUtils;->getDisplayLanguage(Landroid/content/res/Configuration;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;->mLocale:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;->mAddBookmarkView:Lcom/sec/android/app/sbrowser/sites/bookmark/model/add_bookmark/AddBookmarkViewDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/add_bookmark/AddBookmarkViewDelegate;->handleLanguageChange()V

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;->mIsEdit:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;->mAddBookmarkModel:Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModel;

    iget-wide v1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;->mParentId:J

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModelBase;->getBookmarkParent(J)V

    iget-wide v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;->mParentId:J

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;->mAddBookmarkModel:Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModel;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModelBase;->getRootNodeId()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;->mAddBookmarkView:Lcom/sec/android/app/sbrowser/sites/bookmark/model/add_bookmark/AddBookmarkViewDelegate;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;->mRoot:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getId()J

    move-result-wide v1

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;->mRoot:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getTitle()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;->mRoot:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

    invoke-virtual {v4}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getGUID()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;->getUpdatedStrings(JLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;->mRoot:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

    invoke-direct {p0, v2}, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;->getFolderPath(Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/add_bookmark/AddBookmarkViewDelegate;->updateParentDetails(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;->mAddBookmarkModel:Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModel;

    iget-wide v1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;->mId:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModelBase;->getBookmarkItemForBookmarkID(Ljava/lang/Long;)V

    :cond_1
    :goto_0
    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/utils/LocaleUtils;->getDisplayLanguage(Landroid/content/res/Configuration;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;->mLocale:Ljava/lang/String;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;->mAddBookmarkView:Lcom/sec/android/app/sbrowser/sites/bookmark/model/add_bookmark/AddBookmarkViewDelegate;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/add_bookmark/AddBookmarkViewDelegate;->onConfigurationChanged()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 8

    invoke-static {}, Lcom/sec/terrace/TerraceHelper;->getInstance()Lcom/sec/terrace/TerraceHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/sec/terrace/TerraceHelper;->initializeSync(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;->mAddBookmarkModel:Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModel;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModelBase;->getBookmarkRoot()Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;->mRoot:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;->mActivity:Landroid/app/Activity;

    invoke-static {v2}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModelHelper;->getBookmarkContentUri(Landroid/app/Activity;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Context;->grantUriPermission(Ljava/lang/String;Landroid/net/Uri;I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;->mAddBookmarkModel:Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModel;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModelBase;->getBookmarkRoot()Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;->mRootItem:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/sites/BookmarkNotifier;->getBookmarkNotifier()Lcom/sec/android/app/sbrowser/common/sites/BookmarkNotifier;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;->mBookmarkDbListener:Lcom/sec/android/app/sbrowser/common/sites/BookmarkNotifier$BookmarkDbListener;

    invoke-virtual {v1, v2}, Lcom/sec/android/app/sbrowser/common/sites/BookmarkNotifier;->registerBookmarkListener(Lcom/sec/android/app/sbrowser/common/sites/BookmarkNotifier$BookmarkDbListener;)V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;->mIsEdit:Z

    const/4 v2, 0x1

    const-string v3, "title"

    const-string v4, "url"

    if-nez p1, :cond_4

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;->mUrl:Ljava/lang/String;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;->mUrl:Ljava/lang/String;

    :cond_0
    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    :cond_1
    sget-object v3, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants;->INVALID_BOOKMARK_ID:Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-string v6, "bookmark_id"

    invoke-virtual {v0, v6, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;->mId:J

    const-string v4, "parent_id"

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-virtual {v0, v4, v5, v6}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v4

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    cmp-long v3, v4, v6

    if-eqz v3, :cond_2

    iput-wide v4, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;->mParentId:J

    move v3, v2

    goto :goto_0

    :cond_2
    move v3, v1

    :goto_0
    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    if-eqz v4, :cond_3

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "bookmarked"

    invoke-virtual {v4, v5, v1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;->mIsEdit:Z

    :cond_3
    move v1, v3

    goto :goto_1

    :cond_4
    invoke-virtual {p1, v4}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;->mUrl:Ljava/lang/String;

    invoke-virtual {p1, v3}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "bookmark_object"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;->mCurrentItem:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

    move-object p1, v3

    :goto_1
    iget-boolean v3, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;->mIsEdit:Z

    if-nez v3, :cond_5

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;->mActivity:Landroid/app/Activity;

    invoke-static {v3}, Lcom/sec/android/app/sbrowser/common/device/TabletDeviceUtils;->isTablet(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/utils/LargeScreenUtil;->supportPopOverOptions()Z

    move-result v3

    if-nez v3, :cond_5

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Landroid/view/Window;->addFlags(I)V

    :cond_5
    if-eqz p1, :cond_6

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_7

    :cond_6
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;->mUrl:Ljava/lang/String;

    :cond_7
    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_8

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v3, "android.intent.action.INSERT"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    iput-boolean v2, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;->mIsLaunchedFromOtherApp:Z

    :cond_8
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;->mAddBookmarkView:Lcom/sec/android/app/sbrowser/sites/bookmark/model/add_bookmark/AddBookmarkViewDelegate;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;->mUrl:Ljava/lang/String;

    invoke-interface {v0, v2, p1}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/add_bookmark/AddBookmarkViewDelegate;->configureAndShowView(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;->mAddBookmarkView:Lcom/sec/android/app/sbrowser/sites/bookmark/model/add_bookmark/AddBookmarkViewDelegate;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;->mRoot:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getId()J

    move-result-wide v2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;->mRoot:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getTitle()Ljava/lang/String;

    move-result-object v0

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;->mRoot:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

    invoke-virtual {v4}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getGUID()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v2, v3, v0, v4}, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;->getUpdatedStrings(JLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;->mRoot:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

    invoke-direct {p0, v2}, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;->getFolderPath(Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v0, v2}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/add_bookmark/AddBookmarkViewDelegate;->updateParentDetails(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;->mUrl:Ljava/lang/String;

    if-eqz p1, :cond_9

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/utils/IconFetcher;->getInstance()Lcom/sec/android/app/sbrowser/common/utils/IconFetcher;

    move-result-object p1

    if-eqz p1, :cond_9

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;->mUrl:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2}, Lcom/sec/android/app/sbrowser/common/utils/IconFetcher;->requestIcon(Ljava/lang/String;Landroid/os/Handler;)V

    :cond_9
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;->mActivity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lw2/F;->c(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;->mSharedPreferences:Landroid/content/SharedPreferences;

    iget-wide v2, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;->mId:J

    sget-object p1, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants;->INVALID_BOOKMARK_ID:Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long p1, v2, v4

    if-eqz p1, :cond_a

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;->mAddBookmarkModel:Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModel;

    iget-wide v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;->mId:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModelBase;->getBookmarkItemForBookmarkID(Ljava/lang/Long;)V

    goto :goto_3

    :cond_a
    if-nez v1, :cond_c

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;->mActivity:Landroid/app/Activity;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;->isSecretModeEnabled(Landroid/app/Activity;)Z

    move-result p1

    if-eqz p1, :cond_b

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;->mSharedPreferences:Landroid/content/SharedPreferences;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;->mRootItem:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getId()J

    move-result-wide v0

    const-string v2, "pref_add_bookmark_folder_secret"

    invoke-interface {p1, v2, v0, v1}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;->mParentId:J

    goto :goto_2

    :cond_b
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;->mSharedPreferences:Landroid/content/SharedPreferences;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;->mRootItem:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getId()J

    move-result-wide v0

    const-string v2, "pref_add_bookmark_folder"

    invoke-interface {p1, v2, v0, v1}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;->mParentId:J

    :goto_2
    iget-wide v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;->mParentId:J

    sget-object p1, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$BookmarkSyncID;->MY_DEVICE:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$BookmarkSyncID;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$BookmarkSyncID;->getNumVal()J

    move-result-wide v2

    cmp-long p1, v0, v2

    if-nez p1, :cond_c

    sget-object p1, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$BookmarkSyncID;->SAMSUNG:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$BookmarkSyncID;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$BookmarkSyncID;->getNumVal()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;->mParentId:J

    :cond_c
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;->mAddBookmarkModel:Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModel;

    iget-wide v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;->mParentId:J

    invoke-virtual {p1, v0, v1}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModelBase;->getBookmarkParent(J)V

    :goto_3
    iget-wide v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;->mParentId:J

    iput-wide v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;->mInitialParentId:J

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;->mAddBookmarkView:Lcom/sec/android/app/sbrowser/sites/bookmark/model/add_bookmark/AddBookmarkViewDelegate;

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/add_bookmark/AddBookmarkViewDelegate;->onCreateOptionsMenu(Landroid/view/Menu;)V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    sget-object v0, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$ActivityStatus;->FINISHED:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$ActivityStatus;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;->mActivityStatus:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$ActivityStatus;

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/sites/BookmarkNotifier;->getBookmarkNotifier()Lcom/sec/android/app/sbrowser/common/sites/BookmarkNotifier;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;->mBookmarkDbListener:Lcom/sec/android/app/sbrowser/common/sites/BookmarkNotifier$BookmarkDbListener;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/common/sites/BookmarkNotifier;->unregisterBookmarkListener(Lcom/sec/android/app/sbrowser/common/sites/BookmarkNotifier$BookmarkDbListener;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;->mAddBookmarkModel:Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModel;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModelBase;->unRegisterListener()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;->mAddBookmarkView:Lcom/sec/android/app/sbrowser/sites/bookmark/model/add_bookmark/AddBookmarkViewDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/add_bookmark/AddBookmarkViewDelegate;->onDestroy()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;->mAddBookmarkView:Lcom/sec/android/app/sbrowser/sites/bookmark/model/add_bookmark/AddBookmarkViewDelegate;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;->mAddBookmarkModel:Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModel;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;->mViewListener:Lcom/sec/android/app/sbrowser/sites/bookmark/model/add_bookmark/AddBookmarkViewListener;

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;->mAddBookmarkView:Lcom/sec/android/app/sbrowser/sites/bookmark/model/add_bookmark/AddBookmarkViewDelegate;

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/add_bookmark/AddBookmarkViewDelegate;->onOptionsItemSelected(Landroid/view/MenuItem;)V

    return-void
.end method

.method public onPause()V
    .locals 1

    sget-object v0, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$ActivityStatus;->BACKGROUND:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$ActivityStatus;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;->mActivityStatus:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$ActivityStatus;

    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;->mAddBookmarkView:Lcom/sec/android/app/sbrowser/sites/bookmark/model/add_bookmark/AddBookmarkViewDelegate;

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/add_bookmark/AddBookmarkViewDelegate;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    return-void
.end method

.method public onResume()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/terrace/base/TerraceApiCompatibilityUtils;->getLocale(Landroid/content/res/Configuration;)Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getDisplayLanguage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;->mLocale:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;->mSelectFolderLayoutClicked:Z

    sget-object v0, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$ActivityStatus;->FOREGROUND:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$ActivityStatus;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;->mActivityStatus:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$ActivityStatus;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;->mAddBookmarkView:Lcom/sec/android/app/sbrowser/sites/bookmark/model/add_bookmark/AddBookmarkViewDelegate;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/add_bookmark/AddBookmarkViewDelegate;->onResume()V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;->mActivity:Landroid/app/Activity;

    const v1, 0x7f0b009c

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatEditText;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;->mActivity:Landroid/app/Activity;

    const v2, 0x7f0b0098

    invoke-virtual {v1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/appcompat/widget/AppCompatEditText;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "url"

    invoke-virtual {p1, v2, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "title"

    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    const-string v0, "bookmark_object"

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;->mCurrentItem:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    return-void
.end method

.method public updateFolderPathHashMap(Ljava/util/HashMap;Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;)V
    .locals 4

    invoke-virtual {p1}, Ljava/util/HashMap;->clear()V

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getId()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    :goto_0
    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getId()J

    move-result-wide v0

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;->mRoot:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getId()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;->mAddBookmarkModel:Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModel;

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getParentId()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModelBase;->getBookmarkItem(Ljava/lang/Long;)Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getId()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-void
.end method
