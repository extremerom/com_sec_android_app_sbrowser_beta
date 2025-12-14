.class public Lcom/sec/android/app/sbrowser/main_view/MainViewBookmark;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/main_view/MainViewBookmark$MVBookmarkHandler;
    }
.end annotation


# instance fields
.field private final mActivity:Landroid/app/Activity;

.field private mActivityStatus:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$ActivityStatus;

.field private mBookmarkBarHelper:Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;

.field private final mBookmarkDbListener:Lcom/sec/android/app/sbrowser/common/sites/BookmarkListener;

.field private final mBookmarkListenerAction:Lcom/sec/android/app/sbrowser/common/model/sites/BookmarkListenerAction;

.field private final mBookmarkModel:Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModel;

.field private mBookmarkSnackBar:LH6/o;

.field private final mBookmarks:Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/Bookmarks;

.field private mBroadcastReceiver:Lcom/sec/android/app/sbrowser/sites/bookmark/wearable_sync/BookmarkWearableBroadcastReceiver;

.field private final mContext:Landroid/content/Context;

.field private final mHandler:Lcom/sec/android/app/sbrowser/main_view/MainViewBookmark$MVBookmarkHandler;

.field private mIsActionClicked:Z

.field private mMainViewInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

.field private final mToolbar:Lcom/sec/android/app/sbrowser/toolbar/Toolbar;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;Lcom/sec/android/app/sbrowser/main_view/main_interface/NewTabHandler;)V
    .locals 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/sec/android/app/sbrowser/main_view/MainViewBookmark$MVBookmarkHandler;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewBookmark$MVBookmarkHandler;-><init>(Lcom/sec/android/app/sbrowser/main_view/MainViewBookmark;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewBookmark;->mHandler:Lcom/sec/android/app/sbrowser/main_view/MainViewBookmark$MVBookmarkHandler;

    sget-object v0, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$ActivityStatus;->FOREGROUND:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$ActivityStatus;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewBookmark;->mActivityStatus:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$ActivityStatus;

    new-instance v0, Lcom/sec/android/app/sbrowser/main_view/a;

    const/4 v1, 0x7

    invoke-direct {v0, v1, p0}, Lcom/sec/android/app/sbrowser/main_view/a;-><init>(ILjava/lang/Object;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewBookmark;->mBookmarkListenerAction:Lcom/sec/android/app/sbrowser/common/model/sites/BookmarkListenerAction;

    new-instance v1, Lcom/sec/android/app/sbrowser/common/sites/BookmarkListener;

    invoke-direct {v1, v0}, Lcom/sec/android/app/sbrowser/common/sites/BookmarkListener;-><init>(Lcom/sec/android/app/sbrowser/common/model/sites/BookmarkListenerAction;)V

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewBookmark;->mBookmarkDbListener:Lcom/sec/android/app/sbrowser/common/sites/BookmarkListener;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewBookmark;->mContext:Landroid/content/Context;

    move-object v0, p1

    check-cast v0, Landroid/app/Activity;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewBookmark;->mActivity:Landroid/app/Activity;

    invoke-interface {p2}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->getToolbar()Lcom/sec/android/app/sbrowser/toolbar/Toolbar;

    move-result-object v4

    iput-object v4, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewBookmark;->mToolbar:Lcom/sec/android/app/sbrowser/toolbar/Toolbar;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewBookmark;->mMainViewInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    new-instance p2, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/Bookmarks;

    invoke-direct {p2, v0}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/Bookmarks;-><init>(Landroid/app/Activity;)V

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewBookmark;->mBookmarks:Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/Bookmarks;

    new-instance v5, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModel;

    new-instance p2, Lcom/sec/android/app/sbrowser/main_view/MainViewBookmark$1;

    invoke-direct {p2, p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewBookmark$1;-><init>(Lcom/sec/android/app/sbrowser/main_view/MainViewBookmark;)V

    invoke-direct {v5, p1, p2}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModel;-><init>(Landroid/content/Context;Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModelListener;)V

    iput-object v5, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewBookmark;->mBookmarkModel:Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModel;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModelHelper;->getBookmarkContentUri(Landroid/app/Activity;)Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {v5, p2}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModelBase;->setUri(Landroid/net/Uri;)V

    invoke-virtual {v5, v0}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModel;->setRootId(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewBookmark;->registerWearableBroadcastReceiver()V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/sites/BookmarkNotifier;->getBookmarkNotifier()Lcom/sec/android/app/sbrowser/common/sites/BookmarkNotifier;

    move-result-object p2

    invoke-virtual {p2, v1}, Lcom/sec/android/app/sbrowser/common/sites/BookmarkNotifier;->registerBookmarkListener(Lcom/sec/android/app/sbrowser/common/sites/BookmarkNotifier$BookmarkDbListener;)V

    new-instance p2, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewBookmark;->mMainViewInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    move-object v2, p2

    move-object v3, p1

    move-object v7, p3

    invoke-direct/range {v2 .. v7}, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;-><init>(Landroid/content/Context;Lcom/sec/android/app/sbrowser/toolbar/Toolbar;Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModel;Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;Lcom/sec/android/app/sbrowser/main_view/main_interface/NewTabHandler;)V

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewBookmark;->mBookmarkBarHelper:Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;

    return-void
.end method

.method public static synthetic a(Lcom/sec/android/app/sbrowser/main_view/MainViewBookmark;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/main_view/MainViewBookmark;->lambda$notifyBookmarkChanged$4(Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic b(Lcom/sec/android/app/sbrowser/main_view/MainViewBookmark;Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/main_view/MainViewBookmark;->lambda$showBookmarkSnackBar$1(Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;Landroid/view/View;)V

    return-void
.end method

.method private bookmarkAddSuccess(Ljava/lang/Object;)V
    .locals 5

    instance-of v0, p1, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkAddInfo;

    if-eqz v0, :cond_2

    move-object v0, p1

    check-cast v0, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkAddInfo;

    iget v1, v0, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkAddInfo;->from:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    :cond_0
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v2, Lcom/sec/android/app/sbrowser/main_view/D;

    const/4 v3, 0x3

    invoke-direct {v2, p0, p1, v3}, Lcom/sec/android/app/sbrowser/main_view/D;-><init>(Lcom/sec/android/app/sbrowser/main_view/MainViewBookmark;Ljava/lang/Object;I)V

    iget-boolean p1, v0, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkAddInfo;->isCrossApp:Z

    if-eqz p1, :cond_1

    const-wide/16 v3, 0x3e8

    goto :goto_0

    :cond_1
    const-wide/16 v3, 0x12c

    :goto_0
    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_2
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewBookmark;->updateBookmarkInfoWithTabs()V

    return-void
.end method

.method public static synthetic c(Lcom/sec/android/app/sbrowser/main_view/MainViewBookmark;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/main_view/MainViewBookmark;->lambda$bookmarkAddSuccess$6(Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic d(Lcom/sec/android/app/sbrowser/main_view/MainViewBookmark;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/main_view/MainViewBookmark;->lambda$notifyBookmarkChanged$3(Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic e(Lcom/sec/android/app/sbrowser/main_view/MainViewBookmark;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/main_view/MainViewBookmark;->lambda$showFolderRenamedToast$5(Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic f()V
    .locals 0

    invoke-static {}, Lcom/sec/android/app/sbrowser/main_view/MainViewBookmark;->lambda$notifyBookmarkChanged$2()V

    return-void
.end method

.method public static synthetic g(Lcom/sec/android/app/sbrowser/main_view/MainViewBookmark;Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$Messages;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/main_view/MainViewBookmark;->lambda$new$0(Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$Messages;Ljava/lang/Object;)V

    return-void
.end method

.method private static getBookmarkRoot(Landroid/content/Context;)Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;
    .locals 0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkQueryUtil;->getBookmarkRoot(Landroid/content/Context;)Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

    move-result-object p0

    return-object p0
.end method

.method private getCurrentTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewBookmark;->mMainViewInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->getCurrentTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic h(Lcom/sec/android/app/sbrowser/main_view/MainViewBookmark;)Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$ActivityStatus;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewBookmark;->mActivityStatus:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$ActivityStatus;

    return-object p0
.end method

.method private handleMessage(Landroid/os/Message;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewBookmark;->mActivityStatus:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$ActivityStatus;

    sget-object v1, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$ActivityStatus;->FINISHED:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$ActivityStatus;

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$Messages;->values()[Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$Messages;

    move-result-object v0

    iget p1, p1, Landroid/os/Message;->what:I

    aget-object p1, v0, p1

    sget-object v0, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$Messages;->BOOKMARK_DUPLICATE_FOLDER:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$Messages;

    if-ne p1, v0, :cond_1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewBookmark;->mBookmarkBarHelper:Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;->handleMessage()V

    :cond_1
    return-void
.end method

.method public static bridge synthetic i(Lcom/sec/android/app/sbrowser/main_view/MainViewBookmark;)Lcom/sec/android/app/sbrowser/main_view/MainViewBookmark$MVBookmarkHandler;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewBookmark;->mHandler:Lcom/sec/android/app/sbrowser/main_view/MainViewBookmark$MVBookmarkHandler;

    return-object p0
.end method

.method private isSecretModeEnabled()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewBookmark;->mMainViewInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->isSecretModeEnabled()Z

    move-result p0

    return p0
.end method

.method private isValidTab(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewBookmark;->mMainViewInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->isValidTab(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic j(Lcom/sec/android/app/sbrowser/main_view/MainViewBookmark;)Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewBookmark;->mMainViewInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    return-object p0
.end method

.method public static bridge synthetic k(Lcom/sec/android/app/sbrowser/main_view/MainViewBookmark;)Lcom/sec/android/app/sbrowser/toolbar/Toolbar;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewBookmark;->mToolbar:Lcom/sec/android/app/sbrowser/toolbar/Toolbar;

    return-object p0
.end method

.method public static bridge synthetic l(Lcom/sec/android/app/sbrowser/main_view/MainViewBookmark;LH6/o;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewBookmark;->mBookmarkSnackBar:LH6/o;

    return-void
.end method

.method private synthetic lambda$bookmarkAddSuccess$6(Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/main_view/MainViewBookmark;->showResult(Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic lambda$new$0(Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$Messages;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/main_view/MainViewBookmark;->notifyBookmarkChanged(Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$Messages;Ljava/lang/Object;)V

    return-void
.end method

.method private static synthetic lambda$notifyBookmarkChanged$2()V
    .locals 2

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/application/ApplicationStatus;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/widget/BookmarkAppWidgetProvider;->updateAllWidgetInstances(Landroid/content/Context;)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/application/ApplicationStatus;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcom/sec/android/app/sbrowser/widget/BookmarkAppWidgetProvider;

    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/widget/BookmarkAppWidgetProvider;->previewAppWidget(Landroid/content/Context;Ljava/lang/Class;)V

    return-void
.end method

.method private synthetic lambda$notifyBookmarkChanged$3(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewBookmark;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->hasWindowFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/main_view/MainViewBookmark;->showMoveFolderSnackBar(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$notifyBookmarkChanged$4(Ljava/lang/Object;)V
    .locals 2

    invoke-static {}, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;->getInstance()Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewBookmark;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;->isFocusedInstance(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    check-cast p1, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkDeleteInfo;

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/main_view/MainViewBookmark;->showMultiBookmarkDeletedSnackBar(Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkDeleteInfo;)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$showBookmarkSnackBar$1(Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;Landroid/view/View;)V
    .locals 1

    iget-boolean p2, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewBookmark;->mIsActionClicked:Z

    if-eqz p2, :cond_0

    const-string p0, "si__MainViewBookmark"

    const-string p1, "multiple action clicked"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 p2, 0x1

    iput-boolean p2, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewBookmark;->mIsActionClicked:Z

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewBookmark;->mContext:Landroid/content/Context;

    invoke-static {p2, p1}, Lcom/sec/android/app/sbrowser/common/sites/AddBookmarkUtil;->getBookmarkIntent(Landroid/content/Context;Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;)Landroid/content/Intent;

    move-result-object p1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewBookmark;->mActivity:Landroid/app/Activity;

    const p2, 0x7f0b004f

    const/16 v0, 0x80

    invoke-static {p0, p2, p1, v0}, Lcom/sec/android/app/sbrowser/common/utils/LargeScreenUtil;->startActivityForResult(Landroid/app/Activity;ILandroid/content/Intent;I)V

    const-string p0, "2000"

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLogWithoutScreenID(Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$showFolderRenamedToast$5(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewBookmark;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->hasWindowFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    instance-of v0, p1, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getType()Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$BookmarkType;

    move-result-object p1

    sget-object v0, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$BookmarkType;->FOLDER:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$BookmarkType;

    if-ne p1, v0, :cond_0

    const p1, 0x7f14055e

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/main_view/MainViewBookmark;->showBookmarkToast(I)V

    :cond_0
    return-void
.end method

.method public static bridge synthetic m(Lcom/sec/android/app/sbrowser/main_view/MainViewBookmark;)Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewBookmark;->getCurrentTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic n(Lcom/sec/android/app/sbrowser/main_view/MainViewBookmark;Landroid/os/Message;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/main_view/MainViewBookmark;->handleMessage(Landroid/os/Message;)V

    return-void
.end method

.method private notifyBookmarkChanged(Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$Messages;Ljava/lang/Object;)V
    .locals 5

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewBookmark;->dismissBookmarkBarDialogs()V

    sget-object v0, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$Messages;->BOOKMARK_SYNC_COMPLETED:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$Messages;

    if-eq p1, v0, :cond_0

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/sec/android/app/sbrowser/main_view/Y;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lcom/sec/android/app/sbrowser/main_view/Y;-><init>(I)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewBookmark;->getCurrentTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/main_view/MainViewBookmark;->isValidTab(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)Z

    move-result v1

    if-nez v1, :cond_1

    return-void

    :cond_1
    sget-object v1, Lcom/sec/android/app/sbrowser/main_view/MainViewBookmark$4;->$SwitchMap$com$sec$android$app$sbrowser$common$constants$sites$BookmarkConstants$Messages:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const-wide/16 v2, 0x12c

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getUrl()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->updateIsBookmarked(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewBookmark;->getBookmarkBarContainer()Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarContainer;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewBookmark;->getBookmarkBarContainer()Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarContainer;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarContainer;->notifyVisibilityChanged()V

    goto :goto_0

    :pswitch_1
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/sec/android/app/sbrowser/main_view/D;

    const/4 v4, 0x1

    invoke-direct {v1, p0, p2, v4}, Lcom/sec/android/app/sbrowser/main_view/D;-><init>(Lcom/sec/android/app/sbrowser/main_view/MainViewBookmark;Ljava/lang/Object;I)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :pswitch_2
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewBookmark;->updateBookmarkInfoWithTabs()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewBookmark;->mToolbar:Lcom/sec/android/app/sbrowser/toolbar/Toolbar;

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewBookmark;->mToolbar:Lcom/sec/android/app/sbrowser/toolbar/Toolbar;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/main_view/MainViewBookmark;->showFolderRenamedToast(Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$Messages;Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewBookmark;->mBookmarkBarHelper:Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;->dismissCreateFolderDialog()V

    goto :goto_0

    :pswitch_3
    invoke-direct {p0, p2}, Lcom/sec/android/app/sbrowser/main_view/MainViewBookmark;->showBookmarkMovedToFolderSnackBar(Ljava/lang/Object;)V

    goto :goto_0

    :pswitch_4
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    new-instance v0, Lcom/sec/android/app/sbrowser/main_view/D;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p2, v1}, Lcom/sec/android/app/sbrowser/main_view/D;-><init>(Lcom/sec/android/app/sbrowser/main_view/MainViewBookmark;Ljava/lang/Object;I)V

    invoke-virtual {p1, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :pswitch_5
    invoke-direct {p0, p2}, Lcom/sec/android/app/sbrowser/main_view/MainViewBookmark;->bookmarkAddSuccess(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewBookmark;->mBookmarkBarHelper:Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;->dismissCreateFolderDialog()V

    :cond_2
    :goto_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewBookmark;->mToolbar:Lcom/sec/android/app/sbrowser/toolbar/Toolbar;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/Toolbar;->getLocationBar()Lcom/sec/android/app/sbrowser/omnibox/LocationBar;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/omnibox/LocationBar;->notifyBookmarkStatusChanged()V

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method private showBookmarkMovedToFolderSnackBar(Ljava/lang/Object;)V
    .locals 3

    const-string v0, "si__MainViewBookmark"

    if-nez p1, :cond_0

    const-string p0, "failed to show snack bar : no property value"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/utils/Objects;->uncheckedCast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkBarMoveInfo;

    iget v1, p1, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkBarMoveInfo;->activityId:I

    invoke-direct {p0, v1}, Lcom/sec/android/app/sbrowser/main_view/MainViewBookmark;->showInThisInstance(I)Z

    move-result v1

    if-nez v1, :cond_1

    const-string p0, "failed to show snack bar : not for this instance"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    sget-object v0, Lcom/sec/android/app/sbrowser/main_view/MainViewBookmark$4;->$SwitchMap$com$sec$android$app$sbrowser$common$constants$sites$BookmarkBarMoveInfo$MovedType:[I

    iget-object v1, p1, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkBarMoveInfo;->movedType:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkBarMoveInfo$MovedType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 p1, 0x0

    goto :goto_0

    :cond_2
    iget-object v0, p1, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkBarMoveInfo;->success:Ljava/util/ArrayList;

    iget-object p1, p1, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkBarMoveInfo;->parentID:Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-direct {p0, v0, v1, v2}, Lcom/sec/android/app/sbrowser/main_view/MainViewBookmark;->showMoveToFolderSnackBar(Ljava/util/ArrayList;J)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_3
    iget-object p1, p1, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkBarMoveInfo;->success:Ljava/util/ArrayList;

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/main_view/MainViewBookmark;->showMoveToEndSnackBar(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object p1

    :goto_0
    if-eqz p1, :cond_4

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewBookmark;->mMainViewInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->getView()Landroid/view/View;

    move-result-object p0

    const/4 v0, -0x1

    const/4 v1, 0x0

    invoke-static {p0, p1, v1, v0}, LH6/o;->i(Landroid/view/View;Ljava/lang/CharSequence;II)LH6/o;

    move-result-object p0

    invoke-virtual {p0}, LH6/o;->l()V

    :cond_4
    return-void
.end method

.method private showBookmarkSnackBar(Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;)V
    .locals 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "WrongConstant"
        }
    .end annotation

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewBookmark;->mBookmarkSnackBar:LH6/o;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v2, 0x3

    invoke-virtual {v0, v2}, LH6/m;->b(I)V

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewBookmark;->mBookmarkSnackBar:LH6/o;

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewBookmark;->getCurrentTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object v0

    if-nez v0, :cond_1

    const-string p0, "si__MainViewBookmark"

    const-string p1, "showBookmarkSnackBar, currentTab == null"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewBookmark;->mMainViewInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->isMainViewShowing()Z

    move-result v0

    if-nez v0, :cond_2

    return-void

    :cond_2
    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getParentId()J

    move-result-wide v2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewBookmark;->mActivity:Landroid/app/Activity;

    invoke-static {v2, v3, v0}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkQueryUtil;->getBookmarkItemById(JLandroid/app/Activity;)Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

    move-result-object v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getSYNC4()Ljava/lang/String;

    move-result-object v1

    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewBookmark;->mActivity:Landroid/app/Activity;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getParentId()J

    move-result-wide v2

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getParentName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v0, v2, v3, v4}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkStringUtil;->getBookmarkParentName(Ljava/lang/String;Landroid/content/Context;JLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewBookmark;->getCurrentTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewBookmark;->getCurrentTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isIncognito()Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewBookmark;->mActivity:Landroid/app/Activity;

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/main_view/MainViewBookmark;->getBookmarkRoot(Landroid/content/Context;)Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getId()J

    move-result-wide v1

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getParentId()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-nez v1, :cond_4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewBookmark;->mActivity:Landroid/app/Activity;

    const v1, 0x7f1410fc

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_4
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewBookmark;->mActivity:Landroid/app/Activity;

    const v2, 0x7f14024b

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_5
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewBookmark;->mActivity:Landroid/app/Activity;

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/main_view/MainViewBookmark;->getBookmarkRoot(Landroid/content/Context;)Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getId()J

    move-result-wide v1

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getParentId()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-nez v1, :cond_6

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewBookmark;->mActivity:Landroid/app/Activity;

    const v1, 0x7f1410ff

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_6
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewBookmark;->mActivity:Landroid/app/Activity;

    const v2, 0x7f14024c

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewBookmark;->mIsActionClicked:Z

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewBookmark;->mMainViewInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    invoke-interface {v2}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->getView()Landroid/view/View;

    move-result-object v2

    invoke-static {v2, v0, v1, v1}, LH6/o;->i(Landroid/view/View;Ljava/lang/CharSequence;II)LH6/o;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/sbrowser/main_view/E;

    invoke-direct {v1, p0, p1}, Lcom/sec/android/app/sbrowser/main_view/E;-><init>(Lcom/sec/android/app/sbrowser/main_view/MainViewBookmark;Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;)V

    const p1, 0x7f140f46

    invoke-virtual {v0, p1, v1}, LH6/o;->j(ILandroid/view/View$OnClickListener;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewBookmark;->mBookmarkSnackBar:LH6/o;

    invoke-virtual {v0}, LH6/o;->l()V

    return-void
.end method

.method private showBookmarkToast(I)V
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewBookmark;->mMainViewInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->getView()Landroid/view/View;

    move-result-object p0

    const/4 v0, -0x1

    invoke-static {p1, v0, p0}, LH6/o;->h(IILandroid/view/View;)LH6/o;

    move-result-object p0

    invoke-virtual {p0}, LH6/o;->l()V

    return-void
.end method

.method private showFolderRenamedToast(Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$Messages;Ljava/lang/Object;)V
    .locals 3

    sget-object v0, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$Messages;->BOOKMARK_EDIT_SUCCESS:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$Messages;

    if-ne p1, v0, :cond_0

    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    new-instance v0, Lcom/sec/android/app/sbrowser/main_view/D;

    const/4 v1, 0x2

    invoke-direct {v0, p0, p2, v1}, Lcom/sec/android/app/sbrowser/main_view/D;-><init>(Lcom/sec/android/app/sbrowser/main_view/MainViewBookmark;Ljava/lang/Object;I)V

    const-wide/16 v1, 0x12c

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method private showInThisInstance(I)Z
    .locals 1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_1

    invoke-static {}, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;->getInstance()Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;

    move-result-object v0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewBookmark;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;->getInstanceId(Landroid/app/Activity;)I

    move-result p0

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0

    :cond_1
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewBookmark;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->hasWindowFocus()Z

    move-result p0

    return p0
.end method

.method private showMoveToEndSnackBar(Ljava/util/ArrayList;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Long;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const/4 v0, 0x0

    const-string v1, "si__MainViewBookmark"

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ge v2, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewBookmark;->mActivity:Landroid/app/Activity;

    invoke-static {v2, v3, p1}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkQueryUtil;->getBookmarkItemById(JLandroid/app/Activity;)Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

    move-result-object p1

    if-nez p1, :cond_1

    const-string p0, "failed to get snack bar message : no bookmark item"

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_1
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewBookmark;->mActivity:Landroid/app/Activity;

    const v0, 0x7f14024e

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getTitle()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/utils/decoder/StringUtils;->naturalizeText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    :goto_0
    const-string p0, "failed to get snack bar message : no moved id list"

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method private showMoveToFolderSnackBar(Ljava/util/ArrayList;J)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Long;",
            ">;J)",
            "Ljava/lang/String;"
        }
    .end annotation

    const/4 v0, 0x0

    const-string v1, "si__MainViewBookmark"

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x3

    if-ge v2, v3, :cond_0

    goto :goto_1

    :cond_0
    const/4 v2, 0x2

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewBookmark;->mActivity:Landroid/app/Activity;

    invoke-static {v2, v3, p1}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkQueryUtil;->getBookmarkItemById(JLandroid/app/Activity;)Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

    move-result-object p1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewBookmark;->mActivity:Landroid/app/Activity;

    invoke-static {p2, p3, v2}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkQueryUtil;->getBookmarkItemById(JLandroid/app/Activity;)Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

    move-result-object p2

    if-eqz p1, :cond_3

    if-nez p2, :cond_1

    goto :goto_0

    :cond_1
    iget-object p3, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewBookmark;->mActivity:Landroid/app/Activity;

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getId()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getGUID()Ljava/lang/String;

    move-result-object p2

    invoke-static {p3, v0, v1, p2}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkStringUtil;->getUpdatedStrings(Landroid/content/Context;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getTitle()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p3

    const/16 v0, 0x3c

    if-lt p3, v0, :cond_2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v0, 0x0

    const/16 v1, 0x3b

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "..."

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_2
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewBookmark;->mActivity:Landroid/app/Activity;

    const p3, 0x7f14024f

    invoke-virtual {p0, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/utils/decoder/StringUtils;->naturalizeText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3
    :goto_0
    const-string p0, "failed to get snack bar message : no bookmark item"

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_4
    :goto_1
    const-string p0, "failed to get snack bar message : no moved list"

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method private showMultiBookmarkDeletedSnackBar(Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkDeleteInfo;)V
    .locals 2

    iget v0, p1, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkDeleteInfo;->activityId:I

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/main_view/MainViewBookmark;->showInThisInstance(I)Z

    move-result v0

    if-nez v0, :cond_0

    const-string p0, "si__MainViewBookmark"

    const-string p1, "failed to show snack bar : not for this instance"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    new-instance v0, Lcom/sec/android/app/sbrowser/main_view/MainViewBookmark$2;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewBookmark$2;-><init>(Lcom/sec/android/app/sbrowser/main_view/MainViewBookmark;)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewBookmark;->mActivity:Landroid/app/Activity;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewBookmark;->mBookmarkSnackBar:LH6/o;

    invoke-static {p1, v1, p0, v0}, Lcom/sec/android/app/sbrowser/sites/bookmark/utils/ShowBookmarkUtil;->showBookmarkDeletedSnackbar(Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkDeleteInfo;Landroid/app/Activity;LH6/o;Lcom/sec/android/app/sbrowser/common/model/sites/DeleteBookmarkSnackbarDelegate;)V

    return-void
.end method

.method private showResult(Ljava/lang/Object;)V
    .locals 4

    check-cast p1, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkAddInfo;

    iget v0, p1, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkAddInfo;->activityId:I

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/main_view/MainViewBookmark;->showInThisInstance(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p1, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkAddInfo;->from:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    :cond_0
    iget-object p1, p1, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkAddInfo;->item:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getId()J

    move-result-wide v0

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewBookmark;->mActivity:Landroid/app/Activity;

    invoke-static {v2}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkQueryUtil;->getBookmarkBarId(Landroid/app/Activity;)J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getType()Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$BookmarkType;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$BookmarkType;->FOLDER:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$BookmarkType;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewBookmark;->mActivity:Landroid/app/Activity;

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkUtil;->showSuccessToast(Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;Landroid/app/Activity;Z)V

    goto :goto_0

    :cond_1
    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/main_view/MainViewBookmark;->showBookmarkSnackBar(Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;)V

    :cond_2
    :goto_0
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewBookmark;->startBookmarkAddedAnimation()V

    :cond_3
    return-void
.end method

.method private startBookmarkAddedAnimation()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewBookmark;->mToolbar:Lcom/sec/android/app/sbrowser/toolbar/Toolbar;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/toolbar/Toolbar;->getLocationBar()Lcom/sec/android/app/sbrowser/omnibox/LocationBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout;->getStarButtonAddBookmarkAnimator()Landroid/animation/Animator;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/sbrowser/main_view/MainViewBookmark$3;

    invoke-direct {v1, p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewBookmark$3;-><init>(Lcom/sec/android/app/sbrowser/main_view/MainViewBookmark;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    return-void
.end method

.method private updateBookmarkInfoWithTabs()V
    .locals 2

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewBookmark;->getCurrentTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewBookmark;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/common/device/TabletDeviceUtils;->isTablet(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewBookmark;->mMainViewInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->getTabManager()Lcom/sec/android/app/sbrowser/tab_manager/TabManager;

    move-result-object v0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewBookmark;->isSecretModeEnabled()Z

    move-result p0

    invoke-virtual {v0, p0}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->updateIsBookmarked(Z)V

    goto :goto_0

    :cond_0
    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getUrl()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->updateIsBookmarked(Ljava/lang/String;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public addBookmarkBar()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewBookmark;->mMainViewInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->savePageUtilityCheck()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewBookmark;->mMainViewInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->finishEditMode()V

    const v0, 0x7f140648

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/main_view/MainViewBookmark;->showBookmarkToast(I)V

    return-void

    :cond_0
    sget-object v0, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/Bookmarks$AddBookmarkAction;->ADD_BOOKMARK_BAR:Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/Bookmarks$AddBookmarkAction;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/main_view/MainViewBookmark;->runBookmarkAction(Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/Bookmarks$AddBookmarkAction;)V

    return-void
.end method

.method public applySecretModeStatus(Z)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewBookmark;->mBookmarkBarHelper:Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;->applySecretModeStatus(Z)V

    return-void
.end method

.method public applySecureDataUnlockedStatus()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewBookmark;->mBookmarkBarHelper:Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;->applySecureDataUnlockedStatus()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewBookmark;->getCurrentTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object v0

    if-nez v0, :cond_0

    const-string p0, "si__MainViewBookmark"

    const-string v0, "applySecureDataUnlockedStatus, currentTab == null"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewBookmark;->updateBookmarkInfoWithTabs()V

    return-void
.end method

.method public dismissBookmarkBarDialogs()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewBookmark;->mBookmarkBarHelper:Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;->dismissBookmarkBarDialogs()V

    return-void
.end method

.method public dismissBookmarkBarPopup()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewBookmark;->mBookmarkBarHelper:Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;->dismissBookmarkBarPopup()V

    return-void
.end method

.method public dismissCreateFolderDialog()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewBookmark;->mBookmarkBarHelper:Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;->dismissCreateFolderDialog()V

    return-void
.end method

.method public dismissEditBookmarkSnackBarIfNeeded()V
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewBookmark;->mBookmarkSnackBar:LH6/o;

    if-eqz p0, :cond_0

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, LH6/m;->b(I)V

    :cond_0
    return-void
.end method

.method public dismissPopup()V
    .locals 0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewBookmark;->dismissCreateFolderDialog()V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewBookmark;->dismissBookmarkBarDialogs()V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewBookmark;->dismissBookmarkBarPopup()V

    return-void
.end method

.method public enableAddBookmarkButton(Z)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewBookmark;->mBookmarkBarHelper:Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;->enableAddBookmarkButton(Z)V

    return-void
.end method

.method public getBookmarkBarContainer()Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarContainer;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewBookmark;->mMainViewInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->getBookmarkBarContainer()Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarContainer;

    move-result-object p0

    return-object p0
.end method

.method public getBookmarkBarDelegate()Lcom/sec/android/app/sbrowser/bookmark_bar/model/BookmarkBarContainerDelegate;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewBookmark;->mBookmarkBarHelper:Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;->getBookmarkBarDelegate()Lcom/sec/android/app/sbrowser/bookmark_bar/model/BookmarkBarContainerDelegate;

    move-result-object p0

    return-object p0
.end method

.method public getBookmarkBarEmptyListener()Lcom/sec/android/app/sbrowser/bookmark_bar/model/BookmarkBarEmptyListener;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewBookmark;->mBookmarkBarHelper:Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;->getBookmarkBarEmptyListener()Lcom/sec/android/app/sbrowser/bookmark_bar/model/BookmarkBarEmptyListener;

    move-result-object p0

    return-object p0
.end method

.method public getBookmarkBarListener()Lcom/sec/android/app/sbrowser/bookmark_bar/model/BookmarkBarListener;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewBookmark;->mBookmarkBarHelper:Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;->getBookmarkBarListener()Lcom/sec/android/app/sbrowser/bookmark_bar/model/BookmarkBarListener;

    move-result-object p0

    return-object p0
.end method

.method public init()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewBookmark;->mBookmarkBarHelper:Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;->dismissDialogIfShowing()V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewBookmark;->unregisterListener()V

    return-void
.end method

.method public onDestroy()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewBookmark;->mBookmarkBarHelper:Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;->onDestroy()V

    return-void
.end method

.method public onResume()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewBookmark;->mBookmarkBarHelper:Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;->onResume()V

    return-void
.end method

.method public onStop()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewBookmark;->mBookmarkBarHelper:Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;->onStop()V

    return-void
.end method

.method public registerWearableBroadcastReceiver()V
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewBookmark;->mBroadcastReceiver:Lcom/sec/android/app/sbrowser/sites/bookmark/wearable_sync/BookmarkWearableBroadcastReceiver;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sec/android/app/sbrowser/sites/bookmark/wearable_sync/BookmarkWearableBroadcastReceiver;

    invoke-direct {v0}, Lcom/sec/android/app/sbrowser/sites/bookmark/wearable_sync/BookmarkWearableBroadcastReceiver;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewBookmark;->mBroadcastReceiver:Lcom/sec/android/app/sbrowser/sites/bookmark/wearable_sync/BookmarkWearableBroadcastReceiver;

    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.sec.android.app.sbrowser.beta.bookmark.BOOKMARK_ADDED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.sec.android.app.sbrowser.beta.bookmark.BOOKMARK_UPDATED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.sec.android.app.sbrowser.beta.bookmark.BOOKMARK_DELETED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewBookmark;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewBookmark;->mBroadcastReceiver:Lcom/sec/android/app/sbrowser/sites/bookmark/wearable_sync/BookmarkWearableBroadcastReceiver;

    const-string v2, "com.sec.android.app.sbrowser.beta.permission.WEARABLE_PERMISSION"

    const/4 v3, 0x0

    invoke-static {v1, p0, v0, v2, v3}, Lcom/sec/android/app/sbrowser/common/device/ContextUtils;->registerExportedBroadcastReceiver(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    return-void
.end method

.method public runBookmarkAction(Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/Bookmarks$AddBookmarkAction;)V
    .locals 4

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewBookmark;->getCurrentTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object v0

    const-string v1, "si__MainViewBookmark"

    if-nez v0, :cond_0

    const-string p0, "current tab is null"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Bookmark Added, Title : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/android/app/sbrowser/common/device/EngLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewBookmark;->mActivity:Landroid/app/Activity;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v1, v0, p1}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/Bookmarks;->bookmarkAction(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/Bookmarks$AddBookmarkAction;)V

    return-void
.end method

.method public setBookmarkBarFolderController(Landroid/app/Activity;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewBookmark;->mBookmarkBarHelper:Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;->setBookmarkBarFolderController(Landroid/app/Activity;)V

    return-void
.end method

.method public setBookmarkBarInterface(Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewBookmark;->mMainViewInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->getBookmarkBarContainer()Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarContainer;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewBookmark;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/main_view/MainViewBookmark;->setBookmarkBarFolderController(Landroid/app/Activity;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewBookmark;->mMainViewInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->getBookmarkBarContainer()Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarContainer;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewBookmark;->getBookmarkBarDelegate()Lcom/sec/android/app/sbrowser/bookmark_bar/model/BookmarkBarContainerDelegate;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarContainer;->setDelegate(Lcom/sec/android/app/sbrowser/bookmark_bar/model/BookmarkBarContainerDelegate;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewBookmark;->mMainViewInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->getBookmarkBarContainer()Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarContainer;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewBookmark;->getBookmarkBarListener()Lcom/sec/android/app/sbrowser/bookmark_bar/model/BookmarkBarListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarContainer;->setListener(Lcom/sec/android/app/sbrowser/bookmark_bar/model/BookmarkBarListener;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewBookmark;->mMainViewInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->getBookmarkBarContainer()Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarContainer;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewBookmark;->getBookmarkBarEmptyListener()Lcom/sec/android/app/sbrowser/bookmark_bar/model/BookmarkBarEmptyListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarContainer;->setEmptyListener(Lcom/sec/android/app/sbrowser/bookmark_bar/model/BookmarkBarEmptyListener;)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewBookmark;->getBookmarkBarDelegate()Lcom/sec/android/app/sbrowser/bookmark_bar/model/BookmarkBarContainerDelegate;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;->setBookmarkBarDelegate(Lcom/sec/android/app/sbrowser/bookmark_bar/model/BookmarkBarContainerDelegate;)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewBookmark;->getBookmarkBarListener()Lcom/sec/android/app/sbrowser/bookmark_bar/model/BookmarkBarListener;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;->setBookmarkBarListener(Lcom/sec/android/app/sbrowser/bookmark_bar/model/BookmarkBarListener;)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewBookmark;->getBookmarkBarEmptyListener()Lcom/sec/android/app/sbrowser/bookmark_bar/model/BookmarkBarEmptyListener;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;->setBookmarkBarEmptyListener(Lcom/sec/android/app/sbrowser/bookmark_bar/model/BookmarkBarEmptyListener;)V

    :cond_0
    return-void
.end method

.method public showMoveFolderSnackBar(Ljava/lang/Object;)V
    .locals 4

    const-string v0, "si__MainViewBookmark"

    if-nez p1, :cond_0

    const-string p0, "failed to show snack bar : no property value"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/utils/Objects;->uncheckedCast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkMoveInfo;

    iget v1, p1, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkMoveInfo;->activityId:I

    invoke-direct {p0, v1}, Lcom/sec/android/app/sbrowser/main_view/MainViewBookmark;->showInThisInstance(I)Z

    move-result v1

    if-nez v1, :cond_1

    const-string p0, "failed to show snack bar : not for this instance"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    iget v0, p1, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkMoveInfo;->activityId:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    return-void

    :cond_2
    iget-object v0, p1, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkMoveInfo;->success:Ljava/util/ArrayList;

    iget-object p1, p1, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkMoveInfo;->parentID:Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-direct {p0, v0, v2, v3}, Lcom/sec/android/app/sbrowser/main_view/MainViewBookmark;->showMoveToFolderSnackBar(Ljava/util/ArrayList;J)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_3

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewBookmark;->mMainViewInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->getView()Landroid/view/View;

    move-result-object p0

    invoke-static {p0, p1, v1, v1}, LH6/o;->i(Landroid/view/View;Ljava/lang/CharSequence;II)LH6/o;

    move-result-object p0

    invoke-virtual {p0}, LH6/o;->l()V

    :cond_3
    return-void
.end method

.method public unRegisterWearableBroadcastReceiver()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewBookmark;->mBroadcastReceiver:Lcom/sec/android/app/sbrowser/sites/bookmark/wearable_sync/BookmarkWearableBroadcastReceiver;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewBookmark;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewBookmark;->mBroadcastReceiver:Lcom/sec/android/app/sbrowser/sites/bookmark/wearable_sync/BookmarkWearableBroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewBookmark;->mBroadcastReceiver:Lcom/sec/android/app/sbrowser/sites/bookmark/wearable_sync/BookmarkWearableBroadcastReceiver;

    return-void
.end method

.method public unregisterListener()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewBookmark;->mBookmarkDbListener:Lcom/sec/android/app/sbrowser/common/sites/BookmarkListener;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/sites/BookmarkNotifier;->getBookmarkNotifier()Lcom/sec/android/app/sbrowser/common/sites/BookmarkNotifier;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewBookmark;->mBookmarkDbListener:Lcom/sec/android/app/sbrowser/common/sites/BookmarkListener;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/common/sites/BookmarkNotifier;->unregisterBookmarkListener(Lcom/sec/android/app/sbrowser/common/sites/BookmarkNotifier$BookmarkDbListener;)V

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewBookmark;->unRegisterWearableBroadcastReceiver()V

    sget-object v0, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$ActivityStatus;->FINISHED:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$ActivityStatus;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewBookmark;->mActivityStatus:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$ActivityStatus;

    return-void
.end method

.method public updateTouchIcon(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewBookmark;->mBookmarks:Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/Bookmarks;

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/Bookmarks;->updateTouchIcon(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
