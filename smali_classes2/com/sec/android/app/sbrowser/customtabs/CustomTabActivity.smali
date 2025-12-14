.class public Lcom/sec/android/app/sbrowser/customtabs/CustomTabActivity;
.super Lcom/sec/android/app/sbrowser/customtabs/BaseCustomTabActivity;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/tab/TabLayout;
.implements Lcom/sec/android/app/sbrowser/customtabs/CustomTabEventListener;
.implements Lcom/sec/android/app/sbrowser/customtabs/content/CustomTabActivityTabProvider;
.implements Lcom/sec/android/app/sbrowser/common/utils/FullScreenManager$FullScreenActionOverrider;
.implements Lcom/sec/android/app/sbrowser/common/logging/SALogging$ISALoggingDelegate;
.implements Lcom/sec/android/app/sbrowser/media/common/IMediaParentImpl;
.implements Lcom/sec/android/app/sbrowser/common/lifecycle/ActivityLifecycleDispatcher;
.implements Lcom/sec/android/app/sbrowser/customtabs/features/articial_intelligence/CustomTabAiDelegate;
.implements Lcom/sec/android/app/sbrowser/common/artificial_intelligence/model/IReadAloudSupplier;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/customtabs/CustomTabActivity$TalkBackObserver;
    }
.end annotation


# static fields
.field private static sActiveContentHandler:Lcom/sec/android/app/sbrowser/customtabs/CustomTabContentHandler;


# instance fields
.field private final mActivityTabObservers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sec/android/app/sbrowser/customtabs/CustomTabTabObserver;",
            ">;"
        }
    .end annotation
.end field

.field private final mBookmarkDbListener:Lcom/sec/android/app/sbrowser/common/sites/BookmarkNotifier$BookmarkDbListener;

.field private final mConfigurationChangedObservers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sec/android/app/sbrowser/common/lifecycle/ConfigurationChangedObserver;",
            ">;"
        }
    .end annotation
.end field

.field private mCoordinatorView:Landroid/view/View;

.field private mCustomTabAI:Lcom/sec/android/app/sbrowser/customtabs/features/articial_intelligence/CustomTabArtificialIntelligence;

.field private mCustomTabContentHandler:Lcom/sec/android/app/sbrowser/customtabs/CustomTabContentHandler;

.field private mDestroyed:Z

.field private final mDownloadCompleteBroadcastReceiver:Lcom/sec/android/app/sbrowser/download/completed_info/DownloadCompleteBroadcastReceiver;

.field private mPrevDarkMode:Z

.field private final mPreviousTabManager:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack<",
            "Lcom/sec/android/app/sbrowser/customtabs/SCustomTab;",
            ">;"
        }
    .end annotation
.end field

.field private mSCustomTab:Lcom/sec/android/app/sbrowser/customtabs/SCustomTab;

.field private mSession:LH/y;

.field private final mTabDelegate:Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;

.field private mTabHolder:Landroid/widget/FrameLayout;

.field private mTalkBackObserver:Lcom/sec/android/app/sbrowser/customtabs/CustomTabActivity$TalkBackObserver;

.field private mTaskDescriptionHelper:Lcom/sec/android/app/sbrowser/customtabs/CustomTabTaskDescriptionHelper;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/customtabs/BaseCustomTabActivity;-><init>()V

    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabActivity;->mPreviousTabManager:Ljava/util/Stack;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabActivity;->mActivityTabObservers:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabActivity;->mConfigurationChangedObservers:Ljava/util/List;

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;->isDarkModeEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabActivity;->mPrevDarkMode:Z

    new-instance v0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabActivity$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabActivity$1;-><init>(Lcom/sec/android/app/sbrowser/customtabs/CustomTabActivity;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabActivity;->mTabDelegate:Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;

    new-instance v0, Lcom/sec/android/app/sbrowser/download/completed_info/DownloadCompleteBroadcastReceiver;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/download/completed_info/DownloadCompleteBroadcastReceiver;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabActivity;->mDownloadCompleteBroadcastReceiver:Lcom/sec/android/app/sbrowser/download/completed_info/DownloadCompleteBroadcastReceiver;

    new-instance v0, Lcom/sec/android/app/sbrowser/customtabs/h;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabActivity;->mBookmarkDbListener:Lcom/sec/android/app/sbrowser/common/sites/BookmarkNotifier$BookmarkDbListener;

    return-void
.end method

.method public static synthetic A(Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$Messages;Ljava/lang/Object;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabActivity;->lambda$new$1(Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$Messages;Ljava/lang/Object;)V

    return-void
.end method

.method public static bridge synthetic B(Lcom/sec/android/app/sbrowser/customtabs/CustomTabActivity;)Lcom/sec/android/app/sbrowser/customtabs/SCustomTab;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabActivity;->mSCustomTab:Lcom/sec/android/app/sbrowser/customtabs/SCustomTab;

    return-object p0
.end method

.method public static bridge synthetic C(Lcom/sec/android/app/sbrowser/customtabs/CustomTabActivity;)LH/y;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabActivity;->mSession:LH/y;

    return-object p0
.end method

.method private addTabObservers(Lcom/sec/android/app/sbrowser/tab/Tab;Ljava/util/Iterator;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/android/app/sbrowser/tab/Tab;",
            "Ljava/util/Iterator<",
            "+",
            "Lcom/sec/android/app/sbrowser/customtabs/CustomTabTabObserver;",
            ">;)V"
        }
    .end annotation

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/sbrowser/tab/TabObserver;

    invoke-virtual {p1, p0}, Lcom/sec/android/app/sbrowser/tab/Tab;->addObserver(Lcom/sec/android/app/sbrowser/tab/TabObserver;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private createTrustedWebActivityUi()Lcom/sec/android/app/sbrowser/customtabs/TrustedWebActivityCoordinator;
    .locals 5

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/customtabs/BaseCustomTabActivity;->mIntentDataProvider:Lcom/sec/terrace/browser/browserservices/intents/TerraceBrowserServicesIntentDataProvider;

    invoke-virtual {v0}, Lcom/sec/terrace/browser/browserservices/intents/TerraceBrowserServicesIntentDataProvider;->isTrustedWebActivity()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v0, Lcom/sec/android/app/sbrowser/customtabs/TrustedWebActivityCoordinator;

    new-instance v1, Lcom/sec/android/app/sbrowser/customtabs/CustomTabActivity$2;

    invoke-direct {v1, p0}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabActivity$2;-><init>(Lcom/sec/android/app/sbrowser/customtabs/CustomTabActivity;)V

    new-instance v2, Lcom/sec/android/app/sbrowser/customtabs/ClientAppDataRecorder;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    new-instance v4, Lcom/sec/android/app/sbrowser/customtabs/ClientAppDataRegister;

    invoke-direct {v4}, Lcom/sec/android/app/sbrowser/customtabs/ClientAppDataRegister;-><init>()V

    invoke-direct {v2, v3, v4}, Lcom/sec/android/app/sbrowser/customtabs/ClientAppDataRecorder;-><init>(Landroid/content/pm/PackageManager;Lcom/sec/android/app/sbrowser/customtabs/ClientAppDataRegister;)V

    new-instance v3, Lcom/sec/terrace/browser/browserservices/TerraceInstalledWebappRegistrar;

    invoke-static {}, Lcom/sec/terrace/browser/browserservices/permissiondelegation/TerracePermissionUpdater;->get()Lcom/sec/terrace/browser/browserservices/permissiondelegation/TerracePermissionUpdater;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/sec/terrace/browser/browserservices/TerraceInstalledWebappRegistrar;-><init>(Lcom/sec/terrace/browser/browserservices/permissiondelegation/TerracePermissionUpdater;)V

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/sec/android/app/sbrowser/customtabs/TrustedWebActivityCoordinator;-><init>(Landroid/app/Activity;Lcom/sec/android/app/sbrowser/customtabs/TrustedWebActivityCoordinator$Delegate;Lcom/sec/android/app/sbrowser/customtabs/ClientAppDataRecorder;Lcom/sec/terrace/browser/browserservices/TerraceInstalledWebappRegistrar;)V

    return-object v0
.end method

.method private dispatchConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabActivity;->mConfigurationChangedObservers:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/common/lifecycle/ConfigurationChangedObserver;

    invoke-interface {v0, p1}, Lcom/sec/android/app/sbrowser/common/lifecycle/ConfigurationChangedObserver;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private getCustomTabContentHandler()Lcom/sec/android/app/sbrowser/customtabs/CustomTabContentHandler;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabActivity;->mCustomTabContentHandler:Lcom/sec/android/app/sbrowser/customtabs/CustomTabContentHandler;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabActivity$5;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabActivity$5;-><init>(Lcom/sec/android/app/sbrowser/customtabs/CustomTabActivity;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabActivity;->mCustomTabContentHandler:Lcom/sec/android/app/sbrowser/customtabs/CustomTabContentHandler;

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabActivity;->mCustomTabContentHandler:Lcom/sec/android/app/sbrowser/customtabs/CustomTabContentHandler;

    return-object p0
.end method

.method private static synthetic lambda$new$0(Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;)V
    .locals 5

    invoke-static {}, Lcom/sec/terrace/TerraceHelper;->getInstance()Lcom/sec/terrace/TerraceHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/terrace/TerraceHelper;->getCurrentTerraceActivity()Lcom/sec/terrace/TerraceActivity;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getId()J

    move-result-wide v1

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkQueryUtil;->getBookmarkBarId(Landroid/app/Activity;)J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    invoke-static {v0, v1, p0}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/Bookmarks;->getStringAddBookmarkSuccess(Landroid/content/Context;ZLcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/sec/android/app/sbrowser/common/utils/SnackbarUtil;->make(Landroid/app/Activity;Ljava/lang/CharSequence;)LH6/o;

    move-result-object p0

    invoke-virtual {p0}, LH6/o;->l()V

    :cond_1
    :goto_0
    return-void
.end method

.method private static synthetic lambda$new$1(Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$Messages;Ljava/lang/Object;)V
    .locals 4

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$Messages;->getValue()I

    move-result p0

    sget-object v0, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$Messages;->BOOKMARK_ADD_SUCCESS:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$Messages;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$Messages;->getValue()I

    move-result v0

    if-ne p0, v0, :cond_3

    check-cast p1, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkAddInfo;

    iget-object p0, p1, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkAddInfo;->item:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;->getInstance()Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;->size()I

    move-result p1

    const/4 v0, 0x1

    if-le p1, v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/sec/android/app/sbrowser/customtabs/a;

    const/4 v2, 0x2

    invoke-direct {v1, v2, p0}, Lcom/sec/android/app/sbrowser/customtabs/a;-><init>(ILjava/lang/Object;)V

    if-eqz v0, :cond_2

    const-wide/16 v2, 0x12c

    goto :goto_1

    :cond_2
    const-wide/16 v2, 0x0

    :goto_1
    invoke-virtual {p1, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_3
    return-void
.end method

.method private synthetic lambda$onConfigurationChanged$2()V
    .locals 2

    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;->isDarkModeEnabled()Z

    move-result v0

    iget-boolean v1, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabActivity;->mPrevDarkMode:Z

    if-eq v1, v0, :cond_1

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabActivity;->mPrevDarkMode:Z

    invoke-virtual {p0}, Lm/n;->closeOptionsMenu()V

    const-string v0, "si__CustomTabActivity"

    const-string v1, "[NIGHTMODE] recreate MainActivity"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/app/Activity;->recreate()V

    :cond_1
    :goto_0
    return-void
.end method

.method private openNewTab(Lcom/sec/terrace/Terrace;Z)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabActivity;->mSCustomTab:Lcom/sec/android/app/sbrowser/customtabs/SCustomTab;

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/sec/android/app/sbrowser/customtabs/SCustomTab;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/customtabs/SCustomTab;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p0, p1}, Lcom/sec/android/app/sbrowser/customtabs/SCustomTab;->initializeTab(Landroid/content/Context;Lcom/sec/terrace/Terrace;)V

    invoke-virtual {v0, p0}, Lcom/sec/android/app/sbrowser/customtabs/SCustomTab;->setTabLayout(Lcom/sec/android/app/sbrowser/tab/TabLayout;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabActivity;->mTabHolder:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabActivity;->mSCustomTab:Lcom/sec/android/app/sbrowser/customtabs/SCustomTab;

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabActivity;->mSCustomTab:Lcom/sec/android/app/sbrowser/customtabs/SCustomTab;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/customtabs/SCustomTab;->hide()V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabActivity;->mSCustomTab:Lcom/sec/android/app/sbrowser/customtabs/SCustomTab;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/customtabs/SCustomTab;->getUrl()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabActivity;->mSCustomTab:Lcom/sec/android/app/sbrowser/customtabs/SCustomTab;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/customtabs/SCustomTab;->getTab()Lcom/sec/android/app/sbrowser/tab/Tab;

    move-result-object p1

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabActivity;->mActivityTabObservers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabActivity;->removeTabObservers(Lcom/sec/android/app/sbrowser/tab/Tab;Ljava/util/Iterator;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabActivity;->mPreviousTabManager:Ljava/util/Stack;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabActivity;->mSCustomTab:Lcom/sec/android/app/sbrowser/customtabs/SCustomTab;

    invoke-virtual {p1, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    if-eqz p2, :cond_2

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabActivity;->mPreviousTabManager:Ljava/util/Stack;

    invoke-virtual {p1}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabActivity;->mPreviousTabManager:Ljava/util/Stack;

    invoke-virtual {p1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sec/android/app/sbrowser/customtabs/SCustomTab;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/customtabs/SCustomTab;->close()V

    :cond_2
    iput-object v0, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabActivity;->mSCustomTab:Lcom/sec/android/app/sbrowser/customtabs/SCustomTab;

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabActivity;->mTabHolder:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabActivity;->mSCustomTab:Lcom/sec/android/app/sbrowser/customtabs/SCustomTab;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/customtabs/SCustomTab;->getTab()Lcom/sec/android/app/sbrowser/tab/Tab;

    move-result-object p1

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabActivity;->mActivityTabObservers:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabActivity;->addTabObservers(Lcom/sec/android/app/sbrowser/tab/Tab;Ljava/util/Iterator;)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabActivity;->onCurrentTabChanged()V

    return-void
.end method

.method private removeTabObservers(Lcom/sec/android/app/sbrowser/tab/Tab;Ljava/util/Iterator;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/android/app/sbrowser/tab/Tab;",
            "Ljava/util/Iterator<",
            "+",
            "Lcom/sec/android/app/sbrowser/customtabs/CustomTabTabObserver;",
            ">;)V"
        }
    .end annotation

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/sbrowser/tab/TabObserver;

    invoke-virtual {p1, p0}, Lcom/sec/android/app/sbrowser/tab/Tab;->removeObserver(Lcom/sec/android/app/sbrowser/tab/TabObserver;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static setActiveContentHandler(Lcom/sec/android/app/sbrowser/customtabs/CustomTabContentHandler;)V
    .locals 0

    sput-object p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabActivity;->sActiveContentHandler:Lcom/sec/android/app/sbrowser/customtabs/CustomTabContentHandler;

    return-void
.end method

.method private setPreviousTab()V
    .locals 2

    const-string v0, "si__CustomTabActivity"

    const-string v1, "setPreviousTab()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabActivity;->mPreviousTabManager:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/customtabs/SCustomTab;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabActivity;->mSCustomTab:Lcom/sec/android/app/sbrowser/customtabs/SCustomTab;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabActivity;->mTabHolder:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabActivity;->mSCustomTab:Lcom/sec/android/app/sbrowser/customtabs/SCustomTab;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/customtabs/SCustomTab;->getTab()Lcom/sec/android/app/sbrowser/tab/Tab;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabActivity;->mActivityTabObservers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabActivity;->addTabObservers(Lcom/sec/android/app/sbrowser/tab/Tab;Ljava/util/Iterator;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabActivity;->mSCustomTab:Lcom/sec/android/app/sbrowser/customtabs/SCustomTab;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/customtabs/SCustomTab;->show()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/customtabs/BaseCustomTabActivity;->mRootUiCoordinator:Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;->onUpdateUrl()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/customtabs/BaseCustomTabActivity;->mRootUiCoordinator:Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;->onUpdateTitle()V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabActivity;->onCurrentTabChanged()V

    return-void
.end method

.method public static updateCustomButton(LH/y;ILandroid/graphics/Bitmap;Ljava/lang/String;)Z
    .locals 1

    invoke-static {}, Lcom/sec/terrace/base/TerraceThreadUtils;->assertOnUiThread()V

    sget-object v0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabActivity;->sActiveContentHandler:Lcom/sec/android/app/sbrowser/customtabs/CustomTabContentHandler;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabContentHandler;->getSession()LH/y;

    move-result-object v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabActivity;->sActiveContentHandler:Lcom/sec/android/app/sbrowser/customtabs/CustomTabContentHandler;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabContentHandler;->getSession()LH/y;

    move-result-object v0

    invoke-virtual {v0, p0}, LH/y;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabActivity;->sActiveContentHandler:Lcom/sec/android/app/sbrowser/customtabs/CustomTabContentHandler;

    invoke-interface {p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabContentHandler;->updateCustomButton(ILandroid/graphics/Bitmap;Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public static updateRemoteViews(LH/y;Landroid/widget/RemoteViews;[ILandroid/app/PendingIntent;)Z
    .locals 1

    invoke-static {}, Lcom/sec/terrace/base/TerraceThreadUtils;->assertOnUiThread()V

    sget-object v0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabActivity;->sActiveContentHandler:Lcom/sec/android/app/sbrowser/customtabs/CustomTabContentHandler;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabContentHandler;->getSession()LH/y;

    move-result-object v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabActivity;->sActiveContentHandler:Lcom/sec/android/app/sbrowser/customtabs/CustomTabContentHandler;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabContentHandler;->getSession()LH/y;

    move-result-object v0

    invoke-virtual {v0, p0}, LH/y;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabActivity;->sActiveContentHandler:Lcom/sec/android/app/sbrowser/customtabs/CustomTabContentHandler;

    invoke-interface {p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabContentHandler;->updateRemoteViews(Landroid/widget/RemoteViews;[ILandroid/app/PendingIntent;)Z

    move-result p0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic y(Lcom/sec/android/app/sbrowser/customtabs/CustomTabActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabActivity;->lambda$onConfigurationChanged$2()V

    return-void
.end method

.method public static synthetic z(Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;)V
    .locals 0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabActivity;->lambda$new$0(Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;)V

    return-void
.end method


# virtual methods
.method public buildIntentDataProvider(Landroid/content/Intent;I)Lcom/sec/terrace/browser/browserservices/intents/TerraceBrowserServicesIntentDataProvider;
    .locals 1

    new-instance v0, Lcom/sec/android/app/sbrowser/customtabs/SCustomTabIntentDataProvider;

    invoke-direct {v0, p1, p0, p2}, Lcom/sec/android/app/sbrowser/customtabs/SCustomTabIntentDataProvider;-><init>(Landroid/content/Intent;Landroid/content/Context;I)V

    return-object v0
.end method

.method public closeBlankTabForDownload([Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabActivity;->getCurrentTab()Lcom/sec/android/app/sbrowser/customtabs/SCustomTab;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/customtabs/SCustomTab;->isInitialNavigation()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabActivity;->closeTab()V

    :cond_0
    return-void
.end method

.method public closeTab()V
    .locals 2

    const-string v0, "si__CustomTabActivity"

    const-string v1, "closeTab()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabActivity;->mPreviousTabManager:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabActivity;->mSCustomTab:Lcom/sec/android/app/sbrowser/customtabs/SCustomTab;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/customtabs/SCustomTab;->getTab()Lcom/sec/android/app/sbrowser/tab/Tab;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabActivity;->mActivityTabObservers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabActivity;->removeTabObservers(Lcom/sec/android/app/sbrowser/tab/Tab;Ljava/util/Iterator;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabActivity;->mTabHolder:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabActivity;->mSCustomTab:Lcom/sec/android/app/sbrowser/customtabs/SCustomTab;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabActivity;->mSCustomTab:Lcom/sec/android/app/sbrowser/customtabs/SCustomTab;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/customtabs/SCustomTab;->close()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabActivity;->setPreviousTab()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabActivity;->finishAndClose()V

    :goto_0
    return-void
.end method

.method public createIntentToBringToFront(Ljava/lang/String;I)Landroid/content/Intent;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/customtabs/BaseCustomTabActivity;->mRootUiCoordinator:Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;->handleKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    invoke-super {p0, p1}, Lm/n;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public finishAndClose()V
    .locals 0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/customtabs/BaseCustomTabActivity;->handleFinishAndClose()V

    return-void
.end method

.method public getActiveTab()Lcom/sec/android/app/sbrowser/tab/Tab;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabActivity;->mSCustomTab:Lcom/sec/android/app/sbrowser/customtabs/SCustomTab;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/customtabs/SCustomTab;->getTab()Lcom/sec/android/app/sbrowser/tab/Tab;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public getBottomMargin()I
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/customtabs/BaseCustomTabActivity;->mRootUiCoordinator:Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;->getBottomMargin()I

    move-result p0

    return p0
.end method

.method public getCoordinatorLayout()Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabActivity;->mCoordinatorView:Landroid/view/View;

    return-object p0
.end method

.method public getCoordinatorView()Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabActivity;->mCoordinatorView:Landroid/view/View;

    return-object p0
.end method

.method public getCurrentTab()Lcom/sec/android/app/sbrowser/customtabs/SCustomTab;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabActivity;->mSCustomTab:Lcom/sec/android/app/sbrowser/customtabs/SCustomTab;

    return-object p0
.end method

.method public getCurrentTabId()I
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabActivity;->getCurrentTab()Lcom/sec/android/app/sbrowser/customtabs/SCustomTab;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/customtabs/SCustomTab;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/customtabs/SCustomTab;->getTabId()I

    move-result p0

    return p0

    :cond_1
    :goto_0
    const/4 p0, -0x1

    return p0
.end method

.method public getCurrentTitle()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabActivity;->getCurrentTab()Lcom/sec/android/app/sbrowser/customtabs/SCustomTab;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/customtabs/SCustomTab;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/customtabs/SCustomTab;->getTitle()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    const-string p0, ""

    return-object p0
.end method

.method public getCurrentUrl()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabActivity;->getCurrentTab()Lcom/sec/android/app/sbrowser/customtabs/SCustomTab;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/customtabs/SCustomTab;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/customtabs/SCustomTab;->getUrl()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    const-string p0, ""

    return-object p0
.end method

.method public getCustomTabAI()Lcom/sec/android/app/sbrowser/customtabs/features/articial_intelligence/CustomTabArtificialIntelligence;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabActivity;->mCustomTabAI:Lcom/sec/android/app/sbrowser/customtabs/features/articial_intelligence/CustomTabArtificialIntelligence;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sec/android/app/sbrowser/customtabs/features/articial_intelligence/CustomTabArtificialIntelligence;

    invoke-direct {v0, p0, p0, p0}, Lcom/sec/android/app/sbrowser/customtabs/features/articial_intelligence/CustomTabArtificialIntelligence;-><init>(Landroid/content/Context;Lcom/sec/android/app/sbrowser/customtabs/features/articial_intelligence/CustomTabAiDelegate;Lcom/sec/android/app/sbrowser/common/artificial_intelligence/model/IReadAloudSupplier;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabActivity;->mCustomTabAI:Lcom/sec/android/app/sbrowser/customtabs/features/articial_intelligence/CustomTabArtificialIntelligence;

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabActivity;->mCustomTabAI:Lcom/sec/android/app/sbrowser/customtabs/features/articial_intelligence/CustomTabArtificialIntelligence;

    return-object p0
.end method

.method public getInfoBarService()Lcom/sec/android/app/sbrowser/infobars/InfoBarService;
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabActivity;->getCurrentTab()Lcom/sec/android/app/sbrowser/customtabs/SCustomTab;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/customtabs/SCustomTab;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/customtabs/SCustomTab;->getInfoBarService()Lcom/sec/android/app/sbrowser/infobars/InfoBarService;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getIntentDataProvider()Lcom/sec/android/app/sbrowser/customtabs/CustomTabIntentDataProvider;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/customtabs/BaseCustomTabActivity;->mIntentDataProvider:Lcom/sec/terrace/browser/browserservices/intents/TerraceBrowserServicesIntentDataProvider;

    check-cast p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabIntentDataProvider;

    return-object p0
.end method

.method public bridge synthetic getIntentDataProvider()Lcom/sec/terrace/browser/browserservices/intents/TerraceBrowserServicesIntentDataProvider;
    .locals 0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabActivity;->getIntentDataProvider()Lcom/sec/android/app/sbrowser/customtabs/CustomTabIntentDataProvider;

    move-result-object p0

    return-object p0
.end method

.method public getJavascriptDelegate()Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/JavascriptDelegate;
    .locals 0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabActivity;->getCurrentTab()Lcom/sec/android/app/sbrowser/customtabs/SCustomTab;

    move-result-object p0

    return-object p0
.end method

.method public getReadAloudSupplierMode()Ljava/lang/String;
    .locals 0

    const-string p0, "AI Brief"

    return-object p0
.end method

.method public getReadAloudSupplierType()I
    .locals 0

    const/4 p0, 0x2

    return p0
.end method

.method public getRenderView()Landroid/widget/FrameLayout;
    .locals 0

    invoke-super {p0}, Lcom/sec/terrace/TerraceActivity;->getRenderView()Landroid/widget/FrameLayout;

    move-result-object p0

    return-object p0
.end method

.method public getRootUiCoordinator()Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/customtabs/BaseCustomTabActivity;->mRootUiCoordinator:Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;

    return-object p0
.end method

.method public getSaLoggingDelegate()Lcom/sec/android/app/sbrowser/common/logging/SALogging$ISALoggingDelegate;
    .locals 0

    return-object p0
.end method

.method public getScreenID()Ljava/lang/String;
    .locals 0

    const-string p0, "900"

    return-object p0
.end method

.method public getTab()Lcom/sec/android/app/sbrowser/tab/Tab;
    .locals 0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabActivity;->getActiveTab()Lcom/sec/android/app/sbrowser/tab/Tab;

    move-result-object p0

    return-object p0
.end method

.method public getTerrace()Lcom/sec/terrace/Terrace;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabActivity;->mSCustomTab:Lcom/sec/android/app/sbrowser/customtabs/SCustomTab;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/customtabs/SCustomTab;->getTerrace()Lcom/sec/terrace/Terrace;

    move-result-object p0

    return-object p0
.end method

.method public getTopMargin()I
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/customtabs/BaseCustomTabActivity;->mRootUiCoordinator:Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;->getTopMargin()I

    move-result p0

    return p0
.end method

.method public getView()Landroid/view/View;
    .locals 0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabActivity;->getCoordinatorLayout()Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public getVisibleBottomMargin()I
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/customtabs/BaseCustomTabActivity;->mRootUiCoordinator:Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;->getVisibleTopMargin()I

    move-result p0

    return p0
.end method

.method public getVisibleTopMargin()I
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/customtabs/BaseCustomTabActivity;->mRootUiCoordinator:Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;->getVisibleTopMargin()I

    move-result p0

    return p0
.end method

.method public hideReadAloudToolbar(ZZ)V
    .locals 0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabActivity;->getCustomTabAI()Lcom/sec/android/app/sbrowser/customtabs/features/articial_intelligence/CustomTabArtificialIntelligence;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/customtabs/features/articial_intelligence/CustomTabArtificialIntelligence;->getReadAloudController()Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudController;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudController;->hideReadAloudToolbar(ZZ)V

    return-void
.end method

.method public isActivityFinishingOrDestroyed()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabActivity;->mDestroyed:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

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

.method public isCurrentTabAvailable()Z
    .locals 0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabActivity;->getCurrentTab()Lcom/sec/android/app/sbrowser/customtabs/SCustomTab;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/customtabs/SCustomTab;->isClosed()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isCurrentTabLoading()Z
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabActivity;->getCurrentTab()Lcom/sec/android/app/sbrowser/customtabs/SCustomTab;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/customtabs/SCustomTab;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/customtabs/SCustomTab;->isLoading()Z

    move-result p0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public isFindOnPageRunning()Z
    .locals 0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabActivity;->getRootUiCoordinator()Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;->isFindOnPageRunning()Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public isReadAloudAvailable()Z
    .locals 0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabActivity;->getCustomTabAI()Lcom/sec/android/app/sbrowser/customtabs/features/articial_intelligence/CustomTabArtificialIntelligence;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/customtabs/features/articial_intelligence/CustomTabArtificialIntelligence;->shouldIncludeReadAloud()Z

    move-result p0

    return p0
.end method

.method public isValidTab(I)Z
    .locals 0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabActivity;->getCurrentTab()Lcom/sec/android/app/sbrowser/customtabs/SCustomTab;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/customtabs/SCustomTab;->isClosed()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isWebContentsVisible()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabActivity;->mSCustomTab:Lcom/sec/android/app/sbrowser/customtabs/SCustomTab;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/customtabs/SCustomTab;->isClosed()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public loadUrl(Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabActivity;->getCurrentTab()Lcom/sec/android/app/sbrowser/customtabs/SCustomTab;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/customtabs/SCustomTab;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/customtabs/SCustomTab;->loadUrl(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Lcom/sec/terrace/TerraceActivity;->onActivityResult(IILandroid/content/Intent;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/customtabs/BaseCustomTabActivity;->mRootUiCoordinator:Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;

    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method public onBitmapCompositedLayersConsumeEvent(Landroid/view/MotionEvent;Lcom/sec/terrace/content/browser/TerraceBitmapLayer$BitmapLayer;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/customtabs/BaseCustomTabActivity;->mRootUiCoordinator:Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;->onBitmapCompositedLayersConsumeEvent(Landroid/view/MotionEvent;Lcom/sec/terrace/content/browser/TerraceBitmapLayer$BitmapLayer;)V

    return-void
.end method

.method public onCloseTab()V
    .locals 0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabActivity;->closeTab()V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/sec/terrace/TerraceActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabActivity;->dispatchConfigurationChanged(Landroid/content/res/Configuration;)V

    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabActivity;->updateFullscreenStatus(I)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabActivity;->getCustomTabAI()Lcom/sec/android/app/sbrowser/customtabs/features/articial_intelligence/CustomTabArtificialIntelligence;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/customtabs/features/articial_intelligence/CustomTabArtificialIntelligence;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v0, Lcom/sec/android/app/sbrowser/customtabs/a;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0}, Lcom/sec/android/app/sbrowser/customtabs/a;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onContentHeightChanged()V
    .locals 0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabActivity;->getCustomTabAI()Lcom/sec/android/app/sbrowser/customtabs/features/articial_intelligence/CustomTabArtificialIntelligence;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/customtabs/features/articial_intelligence/CustomTabArtificialIntelligence;->onContentHeightChanged()V

    return-void
.end method

.method public onContentViewSizeChanged()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/customtabs/BaseCustomTabActivity;->mRootUiCoordinator:Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;->onContentViewSizeChanged()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/sec/android/app/sbrowser/tab/TabActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroidx/activity/p;->getOnBackPressedDispatcher()Landroidx/activity/A;

    move-result-object p1

    new-instance v0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabActivity$3;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabActivity$3;-><init>(Lcom/sec/android/app/sbrowser/customtabs/CustomTabActivity;Z)V

    invoke-virtual {p1, p0, v0}, Landroidx/activity/A;->a(Landroidx/lifecycle/J;Landroidx/activity/u;)V

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x24

    if-ge p1, v0, :cond_0

    return-void

    :cond_0
    new-instance p1, Lcom/sec/android/app/sbrowser/customtabs/CustomTabActivity$4;

    invoke-direct {p1, p0}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabActivity$4;-><init>(Lcom/sec/android/app/sbrowser/customtabs/CustomTabActivity;)V

    const v0, 0x1020002

    invoke-virtual {p0, v0}, Lm/n;->findViewById(I)Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/view/View;->setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V

    return-void
.end method

.method public onCreateTerraceForNewContents(Lcom/sec/terrace/Terrace;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabActivity;->openNewTab(Lcom/sec/terrace/Terrace;Z)V

    return-void
.end method

.method public onCurrentTabChanged()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab/TabActivity;->mStylusWritingCoordinator:Lcom/sec/android/app/sbrowser/stylushandwriting/StylusWritingCoordinator;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabActivity;->getTerrace()Lcom/sec/terrace/Terrace;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Lcom/sec/android/app/sbrowser/stylushandwriting/StylusWritingCoordinator;->onCurrentTabChanged(Lcom/sec/terrace/Terrace;Lcom/sec/terrace/TerraceActivity;)V

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabActivity;->mActivityTabObservers:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabTabObserver;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabTabObserver;->onObservingDifferentTab()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onDestroy()V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabActivity;->mDestroyed:Z

    invoke-static {}, Lcom/sec/android/app/sbrowser/download/DownloadHandler;->getInstance()Lcom/sec/android/app/sbrowser/download/DownloadHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/download/DownloadHandler;->destroyDialogIfExisted()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabActivity;->mTalkBackObserver:Lcom/sec/android/app/sbrowser/customtabs/CustomTabActivity$TalkBackObserver;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabActivity;->mTalkBackObserver:Lcom/sec/android/app/sbrowser/customtabs/CustomTabActivity$TalkBackObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/customtabs/BaseCustomTabActivity;->mRootUiCoordinator:Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;->onDestroy()V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabActivity;->getCustomTabAI()Lcom/sec/android/app/sbrowser/customtabs/features/articial_intelligence/CustomTabArtificialIntelligence;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/customtabs/features/articial_intelligence/CustomTabArtificialIntelligence;->onDestroy()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabActivity;->mSCustomTab:Lcom/sec/android/app/sbrowser/customtabs/SCustomTab;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/customtabs/SCustomTab;->getTab()Lcom/sec/android/app/sbrowser/tab/Tab;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabActivity;->mActivityTabObservers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabActivity;->removeTabObservers(Lcom/sec/android/app/sbrowser/tab/Tab;Ljava/util/Iterator;)V

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabActivity;->mTabHolder:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabActivity;->mSCustomTab:Lcom/sec/android/app/sbrowser/customtabs/SCustomTab;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v0, "si__CustomTabActivity"

    const-string v1, "ViewGroup has no children to remove"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabActivity;->mSCustomTab:Lcom/sec/android/app/sbrowser/customtabs/SCustomTab;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/customtabs/SCustomTab;->close()V

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabActivity;->mTaskDescriptionHelper:Lcom/sec/android/app/sbrowser/customtabs/CustomTabTaskDescriptionHelper;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabTaskDescriptionHelper;->onDestroy()V

    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabActivity;->mPreviousTabManager:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabActivity;->mPreviousTabManager:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/customtabs/SCustomTab;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/customtabs/SCustomTab;->close()V

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabActivity;->mConfigurationChangedObservers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabActivity;->mSCustomTab:Lcom/sec/android/app/sbrowser/customtabs/SCustomTab;

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/WakeLockManager;->getInstance()Lcom/sec/android/app/sbrowser/common/device/WakeLockManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/device/WakeLockManager;->clear()V

    invoke-super {p0}, Lcom/sec/android/app/sbrowser/tab/TabActivity;->onDestroy()V

    return-void
.end method

.method public onDidEnableBitmapCompositionForLayer(Lcom/sec/terrace/content/browser/TerraceBitmapLayer$BitmapLayer;ZZ)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/customtabs/BaseCustomTabActivity;->mRootUiCoordinator:Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;

    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;->onDidEnableBitmapCompositionForLayer(Lcom/sec/terrace/content/browser/TerraceBitmapLayer$BitmapLayer;ZZ)V

    return-void
.end method

.method public onDidNavigateMainFrame()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/customtabs/BaseCustomTabActivity;->mRootUiCoordinator:Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;->onDidNavigateMainFrame()V

    return-void
.end method

.method public onFindOnPage(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/customtabs/BaseCustomTabActivity;->mRootUiCoordinator:Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;->onFindOnPage(Ljava/lang/String;)V

    return-void
.end method

.method public onFindResult(Lcom/sec/terrace/browser/findinpage/TerraceFindNotificationDetails;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/customtabs/BaseCustomTabActivity;->mRootUiCoordinator:Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;->onFindResult(Lcom/sec/terrace/browser/findinpage/TerraceFindNotificationDetails;)V

    return-void
.end method

.method public onLoadFailed(ILjava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/customtabs/BaseCustomTabActivity;->mRootUiCoordinator:Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;->onLoadFailed()V

    return-void
.end method

.method public onLoadFinished(Ljava/lang/String;)V
    .locals 0

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/customtabs/BaseCustomTabActivity;->mRootUiCoordinator:Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;->onLoadFinished()V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabActivity;->getIntentDataProvider()Lcom/sec/android/app/sbrowser/customtabs/CustomTabIntentDataProvider;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabIntentDataProvider;->isExtraLaunchWithReadArticlesAloud()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabActivity;->getCustomTabAI()Lcom/sec/android/app/sbrowser/customtabs/features/articial_intelligence/CustomTabArtificialIntelligence;

    move-result-object p1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabActivity;->getCurrentTab()Lcom/sec/android/app/sbrowser/customtabs/SCustomTab;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/customtabs/SCustomTab;->getTabId()I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/sec/android/app/sbrowser/customtabs/features/articial_intelligence/CustomTabArtificialIntelligence;->onLoadFinished(I)V

    :cond_0
    return-void
.end method

.method public onLoadProgressChanged(D)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/customtabs/BaseCustomTabActivity;->mRootUiCoordinator:Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;->onLoadProgressChanged(D)V

    return-void
.end method

.method public onLoadStarted(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/customtabs/BaseCustomTabActivity;->mRootUiCoordinator:Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;->onLoadStarted()V

    return-void
.end method

.method public onMultiWindowModeChanged(Z)V
    .locals 0

    invoke-super {p0, p1}, Landroidx/activity/p;->onMultiWindowModeChanged(Z)V

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/sec/terrace/TerraceActivity;->getActiveTerrace()Lcom/sec/terrace/Terrace;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/sec/terrace/TerraceActivity;->getActiveTerrace()Lcom/sec/terrace/Terrace;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/terrace/Terrace;->isFullscreenForTabOrPending()Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/media/common/MediaUtils;->setNavBarVisibility(Landroid/app/Activity;Z)V

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/media/common/MediaUtils;->setNavBarTranslucent(Landroid/app/Activity;Z)V

    :cond_0
    return-void
.end method

.method public onNativeInitializationSuccess()V
    .locals 7

    invoke-super {p0}, Lcom/sec/android/app/sbrowser/customtabs/BaseCustomTabActivity;->onNativeInitializationSuccess()V

    const-string v0, "enable-top-controls-ui-composition"

    invoke-static {v0}, Lcom/sec/terrace/TerraceCommandLine;->appendSwitch(Ljava/lang/String;)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DebugSettings;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DebugSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/device/DebugSettings;->isContentBlockerSupported()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/sec/android/app/sbrowser/blockers/content_block/ContentBlockManager;->getInstance()Lcom/sec/android/app/sbrowser/blockers/content_block/ContentBlockManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/blockers/content_block/ContentBlockManager;->isContentBlockerRunning()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/sec/terrace/TerraceHelper;->getInstance()Lcom/sec/terrace/TerraceHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/terrace/TerraceHelper;->getCurrentTerraceActivity()Lcom/sec/terrace/TerraceActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/sec/android/app/sbrowser/blockers/content_block/ContentBlockManager;->getInstance()Lcom/sec/android/app/sbrowser/blockers/content_block/ContentBlockManager;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/sec/android/app/sbrowser/blockers/content_block/ContentBlockManager;->initialize(Landroid/content/Context;Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;)V

    :cond_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;->initialize()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabActivity;->getCustomTabContentHandler()Lcom/sec/android/app/sbrowser/customtabs/CustomTabContentHandler;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabActivity;->setActiveContentHandler(Lcom/sec/android/app/sbrowser/customtabs/CustomTabContentHandler;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabActivity;->mTabHolder:Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabActivity;->getRenderView()Landroid/widget/FrameLayout;

    move-result-object v2

    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v4, -0x1

    invoke-direct {v3, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Lcom/sec/android/app/sbrowser/customtabs/SCustomTab;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/customtabs/SCustomTab;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabActivity;->mSCustomTab:Lcom/sec/android/app/sbrowser/customtabs/SCustomTab;

    invoke-virtual {v0, p0, v1}, Lcom/sec/android/app/sbrowser/customtabs/SCustomTab;->initializeTab(Landroid/content/Context;Lcom/sec/terrace/Terrace;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabActivity;->mSCustomTab:Lcom/sec/android/app/sbrowser/customtabs/SCustomTab;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/sbrowser/customtabs/SCustomTab;->setTabLayout(Lcom/sec/android/app/sbrowser/tab/TabLayout;)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabsConnection;->getInstance()Lcom/sec/android/app/sbrowser/customtabs/CustomTabsConnection;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/customtabs/BaseCustomTabActivity;->mIntentDataProvider:Lcom/sec/terrace/browser/browserservices/intents/TerraceBrowserServicesIntentDataProvider;

    invoke-virtual {v1}, Lcom/sec/terrace/browser/browserservices/intents/TerraceBrowserServicesIntentDataProvider;->getSession()LH/y;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabActivity;->getTerrace()Lcom/sec/terrace/Terrace;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabsConnection;->resetPostMessageHandlerForSession(LH/y;Lcom/sec/terrace/Terrace;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab/TabActivity;->mStylusWritingCoordinator:Lcom/sec/android/app/sbrowser/stylushandwriting/StylusWritingCoordinator;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabActivity;->getTerrace()Lcom/sec/terrace/Terrace;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Lcom/sec/android/app/sbrowser/stylushandwriting/StylusWritingCoordinator;->onCurrentTabChanged(Lcom/sec/terrace/Terrace;Lcom/sec/terrace/TerraceActivity;)V

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabActivity;->mTabHolder:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabActivity;->mSCustomTab:Lcom/sec/android/app/sbrowser/customtabs/SCustomTab;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/net/HttpRequestHeaderHandler;->initialize(Landroid/content/Context;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabActivity;->mSCustomTab:Lcom/sec/android/app/sbrowser/customtabs/SCustomTab;

    invoke-virtual {v1, v0}, Lcom/sec/android/app/sbrowser/customtabs/SCustomTab;->updateIntent(Landroid/content/Intent;)V

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/externalnav/SBrowserIntentHandler;->getReferrerUrlIncludingExtraHeaders(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_4

    const-string v1, "android.intent.extra.REFERRER"

    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/common/utils/SBrowserIntentUtils;->safeGetParcelableExtra(Landroid/content/Intent;Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    if-eqz v1, :cond_3

    const-string v3, "org.chromium.chrome.browser.referrer_id"

    invoke-static {v0, v3, v2}, Lcom/sec/android/app/sbrowser/common/utils/SBrowserIntentUtils;->safeGetIntExtra(Landroid/content/Intent;Ljava/lang/String;I)I

    move-result v3

    invoke-static {v3}, Lcom/sec/android/app/sbrowser/externalnav/SBrowserIntentHandler;->getPendingReferrerUrl(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_2
    move-object v1, v3

    goto :goto_0

    :cond_3
    const-string v1, "android.intent.extra.REFERRER_NAME"

    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/common/utils/SBrowserIntentUtils;->safeGetStringExtra(Landroid/content/Intent;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_4
    :goto_0
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/externalnav/SBrowserIntentHandler;->getUrlFromIntent(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/sec/android/app/sbrowser/externalnav/IntentWithRequestMetadataHandler;->getInstance()Lcom/sec/android/app/sbrowser/externalnav/IntentWithRequestMetadataHandler;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/sec/android/app/sbrowser/externalnav/IntentWithRequestMetadataHandler;->getRequestMetadataAndClear(Landroid/content/Intent;)Lcom/sec/android/app/sbrowser/externalnav/IntentWithRequestMetadataHandler$RequestMetadata;

    move-result-object v4

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabActivity;->getIntentDataProvider()Lcom/sec/android/app/sbrowser/customtabs/CustomTabIntentDataProvider;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabIntentDataProvider;->isExtraLaunchWithReadArticlesAloud()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabActivity;->getCustomTabAI()Lcom/sec/android/app/sbrowser/customtabs/features/articial_intelligence/CustomTabArtificialIntelligence;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabActivity;->mSCustomTab:Lcom/sec/android/app/sbrowser/customtabs/SCustomTab;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/customtabs/SCustomTab;->getTabId()I

    move-result v1

    invoke-virtual {v0, v1, v3}, Lcom/sec/android/app/sbrowser/customtabs/features/articial_intelligence/CustomTabArtificialIntelligence;->launchReadArticlesAloudByExternal(ILjava/lang/String;)V

    goto :goto_1

    :cond_5
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabActivity;->getIntentDataProvider()Lcom/sec/android/app/sbrowser/customtabs/CustomTabIntentDataProvider;

    move-result-object v5

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabActivity;->getTerrace()Lcom/sec/terrace/Terrace;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabIntentDataProvider;->isPostShareTarget(Lcom/sec/terrace/Terrace;)Z

    move-result v5

    if-nez v5, :cond_7

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabActivity;->mSCustomTab:Lcom/sec/android/app/sbrowser/customtabs/SCustomTab;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/externalnav/SBrowserIntentHandler;->getExtraHeadersFromIntent(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    if-eqz v4, :cond_6

    invoke-virtual {v4}, Lcom/sec/android/app/sbrowser/externalnav/IntentWithRequestMetadataHandler$RequestMetadata;->hasUserGesture()Z

    move-result v4

    if-eqz v4, :cond_6

    const/4 v2, 0x1

    :cond_6
    invoke-virtual {v5, v3, v0, v2, v1}, Lcom/sec/android/app/sbrowser/customtabs/SCustomTab;->loadUrl(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    :cond_7
    :goto_1
    invoke-virtual {p0}, Lm/n;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabActivity;->updateFullscreenStatus(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/customtabs/BaseCustomTabActivity;->mTwaCoordinator:Lcom/sec/android/app/sbrowser/customtabs/TrustedWebActivityCoordinator;

    if-eqz v0, :cond_8

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabActivity;->mSCustomTab:Lcom/sec/android/app/sbrowser/customtabs/SCustomTab;

    invoke-virtual {v0, v3, v1}, Lcom/sec/android/app/sbrowser/customtabs/TrustedWebActivityCoordinator;->attemptVerificationForInitialUrl(Ljava/lang/String;Lcom/sec/android/app/sbrowser/customtabs/SCustomTab;)V

    :cond_8
    new-instance v0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabTaskDescriptionHelper;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabActivity;->getIntentDataProvider()Lcom/sec/android/app/sbrowser/customtabs/CustomTabIntentDataProvider;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabTaskDescriptionHelper;-><init>(Lcom/sec/android/app/sbrowser/customtabs/CustomTabActivity;Lcom/sec/terrace/browser/browserservices/intents/TerraceBrowserServicesIntentDataProvider;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabActivity;->mTaskDescriptionHelper:Lcom/sec/android/app/sbrowser/customtabs/CustomTabTaskDescriptionHelper;

    new-instance v0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabActivity$TalkBackObserver;

    invoke-direct {v0, p0, p0}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabActivity$TalkBackObserver;-><init>(Lcom/sec/android/app/sbrowser/customtabs/CustomTabActivity;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabActivity;->mTalkBackObserver:Lcom/sec/android/app/sbrowser/customtabs/CustomTabActivity$TalkBackObserver;

    return-void
.end method

.method public onOffsetsForFullscreenChanged(FF)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/customtabs/BaseCustomTabActivity;->mRootUiCoordinator:Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;->onOffsetsForFullscreenChanged(FF)V

    return-void
.end method

.method public onPause()V
    .locals 1

    invoke-super {p0}, Lcom/sec/terrace/TerraceActivity;->onPause()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/customtabs/BaseCustomTabActivity;->mRootUiCoordinator:Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;->onPause()V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabActivity;->getCustomTabAI()Lcom/sec/android/app/sbrowser/customtabs/features/articial_intelligence/CustomTabArtificialIntelligence;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/customtabs/features/articial_intelligence/CustomTabArtificialIntelligence;->onPause()V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/sites/BookmarkNotifier;->getBookmarkNotifier()Lcom/sec/android/app/sbrowser/common/sites/BookmarkNotifier;

    move-result-object v0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabActivity;->mBookmarkDbListener:Lcom/sec/android/app/sbrowser/common/sites/BookmarkNotifier$BookmarkDbListener;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/sbrowser/common/sites/BookmarkNotifier;->unregisterBookmarkListener(Lcom/sec/android/app/sbrowser/common/sites/BookmarkNotifier$BookmarkDbListener;)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/samsungpass/SamsungPass;->getInstance()Lcom/sec/android/app/sbrowser/samsungpass/SamsungPass;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/samsungpass/SamsungPass;->onPause()V

    return-void
.end method

.method public onPostInflation()V
    .locals 4

    invoke-super {p0}, Lcom/sec/android/app/sbrowser/customtabs/BaseCustomTabActivity;->onPostInflation()V

    new-instance v0, Lcom/sec/android/app/sbrowser/customtabs/ExternalModuleInitializer;

    invoke-direct {v0}, Lcom/sec/android/app/sbrowser/customtabs/ExternalModuleInitializer;-><init>()V

    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/customtabs/ExternalModuleInitializer;->onPostInflation(Landroid/app/Application;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/customtabs/BaseCustomTabActivity;->mRootUiCoordinator:Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;->onPostInflationStartup()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/customtabs/BaseCustomTabActivity;->mRootUiCoordinator:Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;->initializeToolbar()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/customtabs/BaseCustomTabActivity;->mIntentDataProvider:Lcom/sec/terrace/browser/browserservices/intents/TerraceBrowserServicesIntentDataProvider;

    invoke-virtual {v0}, Lcom/sec/terrace/browser/browserservices/intents/TerraceBrowserServicesIntentDataProvider;->getClientPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "0238"

    const-wide/16 v2, -0x1

    invoke-static {p0, v1, v0, v2, v3}, Lcom/sec/android/app/sbrowser/common/logging/AppLogging;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/customtabs/BaseCustomTabActivity;->mTwaCoordinator:Lcom/sec/android/app/sbrowser/customtabs/TrustedWebActivityCoordinator;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/customtabs/TrustedWebActivityCoordinator;->onPostInflationStartUp()V

    :cond_0
    return-void
.end method

.method public onPreInflation()V
    .locals 2

    invoke-super {p0}, Lcom/sec/android/app/sbrowser/customtabs/BaseCustomTabActivity;->onPreInflation()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/customtabs/BaseCustomTabActivity;->mIntentDataProvider:Lcom/sec/terrace/browser/browserservices/intents/TerraceBrowserServicesIntentDataProvider;

    invoke-virtual {v0}, Lcom/sec/terrace/browser/browserservices/intents/TerraceBrowserServicesIntentDataProvider;->getSession()LH/y;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabActivity;->mSession:LH/y;

    new-instance v0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;-><init>(Lcom/sec/android/app/sbrowser/customtabs/CustomTabActivity;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/customtabs/BaseCustomTabActivity;->mRootUiCoordinator:Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;->onPreInflationStartup()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabActivity;->createTrustedWebActivityUi()Lcom/sec/android/app/sbrowser/customtabs/TrustedWebActivityCoordinator;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/customtabs/BaseCustomTabActivity;->mTwaCoordinator:Lcom/sec/android/app/sbrowser/customtabs/TrustedWebActivityCoordinator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/customtabs/TrustedWebActivityCoordinator;->onPreInflationStartUp()V

    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/customtabs/BaseCustomTabActivity;->mIntentDataProvider:Lcom/sec/terrace/browser/browserservices/intents/TerraceBrowserServicesIntentDataProvider;

    invoke-static {v0, v1, p0}, Lcom/sec/android/app/sbrowser/customtabs/features/CustomTabNavigationBarController;->update(Landroid/view/Window;Lcom/sec/terrace/browser/browserservices/intents/TerraceBrowserServicesIntentDataProvider;Landroid/content/Context;)V

    return-void
.end method

.method public onReadAloudToolbarMaximized()V
    .locals 0

    return-void
.end method

.method public onReadAloudToolbarMinimized()V
    .locals 0

    return-void
.end method

.method public onResume()V
    .locals 1

    invoke-super {p0}, Lcom/sec/android/app/sbrowser/tab/TabActivity;->onResume()V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabActivity;->getScreenID()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;)V

    invoke-virtual {p0}, Lm/n;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabActivity;->updateFullscreenStatus(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabActivity;->mSCustomTab:Lcom/sec/android/app/sbrowser/customtabs/SCustomTab;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/customtabs/SCustomTab;->show()V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/customtabs/BaseCustomTabActivity;->mRootUiCoordinator:Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;->onResume()V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabActivity;->getCustomTabAI()Lcom/sec/android/app/sbrowser/customtabs/features/articial_intelligence/CustomTabArtificialIntelligence;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/customtabs/features/articial_intelligence/CustomTabArtificialIntelligence;->onResume()V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/sites/BookmarkNotifier;->getBookmarkNotifier()Lcom/sec/android/app/sbrowser/common/sites/BookmarkNotifier;

    move-result-object v0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabActivity;->mBookmarkDbListener:Lcom/sec/android/app/sbrowser/common/sites/BookmarkNotifier$BookmarkDbListener;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/sbrowser/common/sites/BookmarkNotifier;->registerBookmarkListener(Lcom/sec/android/app/sbrowser/common/sites/BookmarkNotifier$BookmarkDbListener;)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/samsungpass/SamsungPass;->getInstance()Lcom/sec/android/app/sbrowser/samsungpass/SamsungPass;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/samsungpass/SamsungPass;->onResume()V

    return-void
.end method

.method public onStart()V
    .locals 3

    invoke-super {p0}, Lcom/sec/terrace/TerraceActivity;->onStart()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabActivity;->mSCustomTab:Lcom/sec/android/app/sbrowser/customtabs/SCustomTab;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/customtabs/SCustomTab;->getTab()Lcom/sec/android/app/sbrowser/tab/Tab;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabActivity;->mSCustomTab:Lcom/sec/android/app/sbrowser/customtabs/SCustomTab;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/customtabs/SCustomTab;->getTab()Lcom/sec/android/app/sbrowser/tab/Tab;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/tab/Tab;->getWasRenderProcessGone()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "si__CustomTabActivity"

    const-string v1, "show hidden custom tab"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabActivity;->mSCustomTab:Lcom/sec/android/app/sbrowser/customtabs/SCustomTab;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/customtabs/SCustomTab;->show()V

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabActivity;->getCustomTabContentHandler()Lcom/sec/android/app/sbrowser/customtabs/CustomTabContentHandler;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabActivity;->setActiveContentHandler(Lcom/sec/android/app/sbrowser/customtabs/CustomTabContentHandler;)V

    :cond_1
    invoke-static {}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabsConnection;->getInstance()Lcom/sec/android/app/sbrowser/customtabs/CustomTabsConnection;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/customtabs/BaseCustomTabActivity;->mIntentDataProvider:Lcom/sec/terrace/browser/browserservices/intents/TerraceBrowserServicesIntentDataProvider;

    invoke-virtual {v1}, Lcom/sec/terrace/browser/browserservices/intents/TerraceBrowserServicesIntentDataProvider;->getSession()LH/y;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/customtabs/BaseCustomTabActivity;->mIntentDataProvider:Lcom/sec/terrace/browser/browserservices/intents/TerraceBrowserServicesIntentDataProvider;

    invoke-virtual {v2}, Lcom/sec/terrace/browser/browserservices/intents/TerraceBrowserServicesIntentDataProvider;->getKeepAliveServiceIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabsConnection;->keepAliveForSession(LH/y;Landroid/content/Intent;)Z

    invoke-static {p0}, Ll2/b;->a(Landroid/content/Context;)Ll2/b;

    move-result-object v0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabActivity;->mDownloadCompleteBroadcastReceiver:Lcom/sec/android/app/sbrowser/download/completed_info/DownloadCompleteBroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "download_complete_popup"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0, v1}, Ll2/b;->b(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    return-void
.end method

.method public onStop()V
    .locals 2

    invoke-super {p0}, Lcom/sec/android/app/sbrowser/tab/TabActivity;->onStop()V

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabActivity;->setActiveContentHandler(Lcom/sec/android/app/sbrowser/customtabs/CustomTabContentHandler;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabActivity;->mSCustomTab:Lcom/sec/android/app/sbrowser/customtabs/SCustomTab;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/customtabs/SCustomTab;->hide()V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/customtabs/BaseCustomTabActivity;->mRootUiCoordinator:Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;->onStop()V

    invoke-static {}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabsConnection;->getInstance()Lcom/sec/android/app/sbrowser/customtabs/CustomTabsConnection;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/customtabs/BaseCustomTabActivity;->mIntentDataProvider:Lcom/sec/terrace/browser/browserservices/intents/TerraceBrowserServicesIntentDataProvider;

    invoke-virtual {v1}, Lcom/sec/terrace/browser/browserservices/intents/TerraceBrowserServicesIntentDataProvider;->getSession()LH/y;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabsConnection;->dontKeepAliveForSession(LH/y;)V

    invoke-static {p0}, Ll2/b;->a(Landroid/content/Context;)Ll2/b;

    move-result-object v0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabActivity;->mDownloadCompleteBroadcastReceiver:Lcom/sec/android/app/sbrowser/download/completed_info/DownloadCompleteBroadcastReceiver;

    invoke-virtual {v0, p0}, Ll2/b;->d(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public onSwipeBottom()V
    .locals 2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabActivity;->finishAndClose()V

    const v0, 0x7f010001

    const v1, 0x7f010002

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->overridePendingTransition(II)V

    return-void
.end method

.method public onTabHidden()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/customtabs/BaseCustomTabActivity;->mRootUiCoordinator:Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;->onTabHidden()V

    return-void
.end method

.method public onTabShown()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/customtabs/BaseCustomTabActivity;->mRootUiCoordinator:Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;->onTabShown()V

    return-void
.end method

.method public onTakeFocus(Z)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/customtabs/BaseCustomTabActivity;->mRootUiCoordinator:Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;->onTakeFocus(Z)V

    return-void
.end method

.method public onThemeColorChanged(I)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/customtabs/BaseCustomTabActivity;->mRootUiCoordinator:Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;->onThemeColorChanged()V

    return-void
.end method

.method public onToggleFullscreenModeForTab(Z)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/customtabs/BaseCustomTabActivity;->mRootUiCoordinator:Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;->onToggleFullscreenModeForTab(Z)V

    return-void
.end method

.method public onTrimMemory(I)V
    .locals 2

    const-string v0, "onTrimMemory With LEVEL: "

    const-string v1, "si__CustomTabActivity"

    invoke-static {p1, v0, v1}, Landroidx/recyclerview/widget/P;->i(ILjava/lang/String;Ljava/lang/String;)V

    invoke-super {p0, p1}, Landroidx/activity/p;->onTrimMemory(I)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x22

    if-gt v0, v1, :cond_0

    const/16 v0, 0xa

    if-lt p1, v0, :cond_0

    const/16 v0, 0xf

    if-gt p1, v0, :cond_0

    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabActivity;->mPreviousTabManager:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabActivity;->mPreviousTabManager:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/customtabs/SCustomTab;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/customtabs/SCustomTab;->close()V

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabsConnection;->onTrimMemory(I)V

    return-void
.end method

.method public onUiModeChanged(Z)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/customtabs/BaseCustomTabActivity;->mRootUiCoordinator:Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;->onUiModeChanged(Z)V

    return-void
.end method

.method public onUpdateTitle(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/customtabs/BaseCustomTabActivity;->mRootUiCoordinator:Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;->onUpdateTitle()V

    return-void
.end method

.method public onUpdateUrl(Ljava/lang/String;)V
    .locals 0

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/customtabs/BaseCustomTabActivity;->mRootUiCoordinator:Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;->onUpdateUrl()V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabActivity;->getCustomTabAI()Lcom/sec/android/app/sbrowser/customtabs/features/articial_intelligence/CustomTabArtificialIntelligence;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/customtabs/features/articial_intelligence/CustomTabArtificialIntelligence;->notifyCurrentUrlChanged()V

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/customtabs/BaseCustomTabActivity;->mRootUiCoordinator:Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;->onWindowFocusChanged(Z)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabActivity;->getCustomTabAI()Lcom/sec/android/app/sbrowser/customtabs/features/articial_intelligence/CustomTabArtificialIntelligence;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/customtabs/features/articial_intelligence/CustomTabArtificialIntelligence;->onWindowFocusChanged()V

    return-void
.end method

.method public register(Landroidx/lifecycle/I;)V
    .locals 1

    instance-of v0, p1, Lcom/sec/android/app/sbrowser/common/lifecycle/ConfigurationChangedObserver;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabActivity;->mConfigurationChangedObservers:Ljava/util/List;

    check-cast p1, Lcom/sec/android/app/sbrowser/common/lifecycle/ConfigurationChangedObserver;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public registerActivityTabObserver(Lcom/sec/android/app/sbrowser/customtabs/CustomTabTabObserver;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabActivity;->mActivityTabObservers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabActivity;->getTab()Lcom/sec/android/app/sbrowser/tab/Tab;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/tab/Tab;->addObserver(Lcom/sec/android/app/sbrowser/tab/TabObserver;)V

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabTabObserver;->onAttachedToInitialTab()V

    :cond_0
    return-void
.end method

.method public requestUpdateReadAloudToolbar(Z)V
    .locals 0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabActivity;->getCustomTabAI()Lcom/sec/android/app/sbrowser/customtabs/features/articial_intelligence/CustomTabArtificialIntelligence;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/customtabs/features/articial_intelligence/CustomTabArtificialIntelligence;->requestUpdateReadAloudToolbar(Z)V

    return-void
.end method

.method public restoreReadAloudToolbar()V
    .locals 0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabActivity;->getCustomTabAI()Lcom/sec/android/app/sbrowser/customtabs/features/articial_intelligence/CustomTabArtificialIntelligence;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/customtabs/features/articial_intelligence/CustomTabArtificialIntelligence;->getReadAloudController()Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudController;->showReadAloudToolbar()V

    return-void
.end method

.method public setContentView()V
    .locals 1

    const v0, 0x7f0e01bb

    invoke-virtual {p0, v0}, Lm/n;->setContentView(I)V

    const v0, 0x7f0b0394

    invoke-virtual {p0, v0}, Lm/n;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabActivity;->mCoordinatorView:Landroid/view/View;

    const v0, 0x7f0b0399

    invoke-virtual {p0, v0}, Lm/n;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabActivity;->mTabHolder:Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabActivity;->getIntentDataProvider()Lcom/sec/android/app/sbrowser/customtabs/CustomTabIntentDataProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabIntentDataProvider;->isExtraLaunchWithReadArticlesAloud()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabActivity;->getCustomTabAI()Lcom/sec/android/app/sbrowser/customtabs/features/articial_intelligence/CustomTabArtificialIntelligence;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/customtabs/features/articial_intelligence/CustomTabArtificialIntelligence;->onAttachedToWindow()V

    :cond_0
    return-void
.end method

.method public shouldIgnoreExternalIntentHandlers(Ljava/lang/String;)Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/customtabs/BaseCustomTabActivity;->mTwaCoordinator:Lcom/sec/android/app/sbrowser/customtabs/TrustedWebActivityCoordinator;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/customtabs/TrustedWebActivityCoordinator;->isValidOrigin(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public shouldOverrideFullscreenAction()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public showParent(I)V
    .locals 1

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    if-nez p1, :cond_0

    const-string p0, "si__CustomTabActivity"

    const-string p1, "showParent : getApplicationContext is null"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-string v0, "activity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/ActivityManager;

    invoke-virtual {p0}, Landroid/app/Activity;->getTaskId()I

    move-result p0

    const/4 v0, 0x1

    invoke-virtual {p1, p0, v0}, Landroid/app/ActivityManager;->moveTaskToFront(II)V

    return-void
.end method

.method public unregisterActivityTabObserver(Lcom/sec/android/app/sbrowser/customtabs/CustomTabTabObserver;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabActivity;->mActivityTabObservers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabActivity;->getTab()Lcom/sec/android/app/sbrowser/tab/Tab;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/tab/Tab;->removeObserver(Lcom/sec/android/app/sbrowser/tab/TabObserver;)V

    :cond_0
    return-void
.end method

.method public updateFullscreenStatus(I)V
    .locals 5

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabActivity;->mSCustomTab:Lcom/sec/android/app/sbrowser/customtabs/SCustomTab;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/customtabs/SCustomTab;->getTerrace()Lcom/sec/terrace/Terrace;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabActivity;->mSCustomTab:Lcom/sec/android/app/sbrowser/customtabs/SCustomTab;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/customtabs/SCustomTab;->getTerrace()Lcom/sec/terrace/Terrace;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/terrace/Terrace;->isFullscreenForTabOrPending()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabActivity;->getIntentDataProvider()Lcom/sec/android/app/sbrowser/customtabs/CustomTabIntentDataProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabIntentDataProvider;->getExtraFullScreenMode()I

    move-result v0

    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    and-int/lit8 v2, v0, 0x1

    if-nez v2, :cond_3

    :cond_1
    const/4 v2, 0x2

    if-ne p1, v2, :cond_2

    and-int/lit8 v2, v0, 0x2

    if-eqz v2, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :cond_3
    :goto_0
    const-string v2, "updateFullscreenStatus(), fullScreenMode : "

    const-string v3, ", orientation : "

    const-string v4, ", enabled : "

    invoke-static {v0, p1, v2, v3, v4}, Lcom/sec/android/app/sbrowser/autofill/password/k;->l(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "si__CustomTabActivity"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-static {p0, v1}, Lcom/sec/android/app/sbrowser/common/utils/WindowUtil;->setFullScreen(Landroid/view/Window;Z)V

    return-void
.end method
