.class public Lcom/sec/android/app/sbrowser/sites/Sites;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/sites/common/search/SitesSearchHandler$SitesSearchObserver;
.implements Lcom/sec/android/app/sbrowser/common/logging/SALogging$ISALoggingDelegate;
.implements Lc6/e;
.implements Lcom/sec/android/app/sbrowser/sites/SitesDelegate;
.implements Lcom/sec/android/app/sbrowser/common/sync/SyncStateNotifier$SyncStateObserver;


# static fields
.field private static sShowBookmarksController:Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;


# instance fields
.field private mBookmarkPage:Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/BookmarkPage;

.field private mConfirmDialog:Lcom/sec/android/app/sbrowser/sites/SitesConfirmDeleteDialog;

.field private mContainer:Landroid/widget/FrameLayout;

.field private mContext:Landroid/content/Context;

.field public mIsInActionMode:Z

.field private mIsInMultiWindowMode:Z

.field private mIsMyPlacesWidget:Z

.field private mLayoutDirection:I

.field private mLayoutMargin:I

.field private mNoLayoutStatus:Landroid/util/SparseBooleanArray;

.field private mOnLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

.field private mPrevOrientation:I

.field private mSearchView:Landroid/view/View;

.field private mSelectedSitesPage:I

.field private mSharedPreferences:Landroid/content/SharedPreferences;

.field private mSitesActivityDelegate:Lcom/sec/android/app/sbrowser/common/model/sites/SitesActivityDelegate;

.field private mSitesActivityListener:Lcom/sec/android/app/sbrowser/common/model/sites/SitesActivityListener;

.field private mSitesHelper:Lcom/sec/android/app/sbrowser/sites/SitesHelper;

.field private mSitesLayout:Landroid/widget/FrameLayout;

.field private mSitesPage:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/sec/android/app/sbrowser/sites/SitesPage;",
            ">;"
        }
    .end annotation
.end field

.field private mSitesSearch:Lcom/sec/android/app/sbrowser/sites/SitesSearch;

.field private mSitesSearchFragment:Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchFragment;

.field private mSitesWindowObserver:Lcom/sec/android/app/sbrowser/common/sites/SitesWindowObserver;

.field private mTabSelected:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/Intent;Landroid/os/Bundle;)V
    .locals 6

    const-string p3, "Sites"

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/sbrowser/sites/Sites;->mLayoutDirection:I

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/sites/Sites;->mSitesPage:Ljava/util/ArrayList;

    iput v0, p0, Lcom/sec/android/app/sbrowser/sites/Sites;->mSelectedSitesPage:I

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/sites/Sites;->mIsMyPlacesWidget:Z

    new-instance v1, Landroid/util/SparseBooleanArray;

    const/4 v2, 0x3

    invoke-direct {v1, v2}, Landroid/util/SparseBooleanArray;-><init>(I)V

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/sites/Sites;->mNoLayoutStatus:Landroid/util/SparseBooleanArray;

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/sites/Sites;->mIsInActionMode:Z

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/sites/Sites;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/sec/android/app/sbrowser/common/model/sites/SitePages;->BOOKMARKS:Lcom/sec/android/app/sbrowser/common/model/sites/SitePages;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/common/model/sites/SitePages;->getValue()I

    move-result v1

    const-string v2, "tab_index"

    invoke-virtual {p2, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/sbrowser/sites/Sites;->mSelectedSitesPage:I

    new-instance v1, Lcom/sec/android/app/sbrowser/sites/SitesHelper;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/sites/Sites;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/sec/android/app/sbrowser/sites/SitesHelper;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/sites/Sites;->mSitesHelper:Lcom/sec/android/app/sbrowser/sites/SitesHelper;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/sites/Sites;->mContext:Landroid/content/Context;

    move-object v2, v1

    check-cast v2, Landroid/app/Activity;

    check-cast v1, Lcom/sec/android/app/sbrowser/common/model/sites/SitesActivityDelegate;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v3

    iput v3, p0, Lcom/sec/android/app/sbrowser/sites/Sites;->mLayoutDirection:I

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lw2/F;->c(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/sites/Sites;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/sync/SyncStateNotifier;->getInstance()Lcom/sec/android/app/sbrowser/common/sync/SyncStateNotifier;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/sec/android/app/sbrowser/common/sync/SyncStateNotifier;->registerSyncStateObserver(Lcom/sec/android/app/sbrowser/common/sync/SyncStateNotifier$SyncStateObserver;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/Sites;->mSitesHelper:Lcom/sec/android/app/sbrowser/sites/SitesHelper;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/sites/SitesHelper;->isSecretModeEnabled()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;->isDarkModeEnabled()Z

    move-result p1

    if-nez p1, :cond_1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/GEDUtils;->isGED()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {v2}, Lcom/sec/android/app/sbrowser/common/device/TabletDeviceUtils;->isTabletLayout(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    const p1, 0x7f150375

    invoke-virtual {v2, p1}, Landroid/app/Activity;->setTheme(I)V

    goto :goto_0

    :cond_0
    const p1, 0x7f150373

    invoke-virtual {v2, p1}, Landroid/app/Activity;->setTheme(I)V

    :cond_1
    :goto_0
    const p1, 0x7f0e089b

    :try_start_0
    invoke-virtual {v2, p1}, Landroid/app/Activity;->setContentView(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Failed to setContentView : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1, v3, p3}, Landroidx/recyclerview/widget/P;->s(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/Sites;->mSitesHelper:Lcom/sec/android/app/sbrowser/sites/SitesHelper;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/sites/SitesHelper;->finish()V

    :goto_1
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/Sites;->mSitesHelper:Lcom/sec/android/app/sbrowser/sites/SitesHelper;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/sites/SitesHelper;->init()V

    invoke-direct {p0, v2}, Lcom/sec/android/app/sbrowser/sites/Sites;->setLayoutChangeListener(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sites/Sites;->getAppBarLayout()Lcom/google/android/material/appbar/AppBarLayout;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/google/android/material/appbar/AppBarLayout;->addOnOffsetChangedListener(Lc6/e;)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sites/Sites;->getAppBarLayout()Lcom/google/android/material/appbar/AppBarLayout;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setTouchscreenBlocksFocus(Z)V

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    iput p1, p0, Lcom/sec/android/app/sbrowser/sites/Sites;->mPrevOrientation:I

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sites/Sites;->getToolBarTitleView()Landroid/widget/TextView;

    move-result-object p1

    iget v3, p0, Lcom/sec/android/app/sbrowser/sites/Sites;->mTabSelected:I

    invoke-direct {p0, v3}, Lcom/sec/android/app/sbrowser/sites/Sites;->getCurrentTabTitle(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/view/View;->announceForAccessibility(Ljava/lang/CharSequence;)V

    invoke-virtual {v2}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object p1

    const/4 v3, 0x1

    if-eqz p1, :cond_2

    invoke-virtual {v2}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    invoke-virtual {v2}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object p1

    const-string v4, "MWidget"

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/common/model/sites/SitesActivityDelegate;->getMainActivityContextId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    xor-int/2addr v4, v3

    invoke-virtual {p1, v4}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    :cond_2
    invoke-static {v2}, Lcom/sec/android/app/sbrowser/sites/SitesHelper;->setNavigationBarColor(Landroid/app/Activity;)V

    invoke-direct {p0, p2}, Lcom/sec/android/app/sbrowser/sites/Sites;->initializeTabTitle(Landroid/content/Intent;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/Sites;->mSitesHelper:Lcom/sec/android/app/sbrowser/sites/SitesHelper;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/sites/SitesHelper;->setActionButtonTintColorForToolbar()V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/Sites;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/device/TabletDeviceUtils;->isTabletDevice(Landroid/content/Context;)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/Sites;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/device/TabletDeviceUtils;->isTabletLayout(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_2

    :cond_3
    invoke-virtual {v2, v0}, Landroid/app/Activity;->setFinishOnTouchOutside(Z)V

    goto :goto_3

    :cond_4
    :goto_2
    invoke-virtual {v2, v3}, Landroid/app/Activity;->setFinishOnTouchOutside(Z)V

    :goto_3
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/Sites;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/utils/LargeScreenUtil;->supportOldTabletLayout(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_6

    new-instance p1, Lcom/sec/android/app/sbrowser/common/sites/SitesWindowObserver;

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/sites/Sites;->mContext:Landroid/content/Context;

    invoke-direct {p1, p2}, Lcom/sec/android/app/sbrowser/common/sites/SitesWindowObserver;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/sites/Sites;->mSitesWindowObserver:Lcom/sec/android/app/sbrowser/common/sites/SitesWindowObserver;

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/multiwindow/MultiWindowManager;->getInstance()Lcom/sec/android/app/sbrowser/common/multiwindow/MultiWindowManager;

    move-result-object p1

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/sites/Sites;->mContext:Landroid/content/Context;

    check-cast p2, Landroid/app/Activity;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/Sites;->mSitesWindowObserver:Lcom/sec/android/app/sbrowser/common/sites/SitesWindowObserver;

    invoke-virtual {p1, p2, v0}, Lcom/sec/android/app/sbrowser/common/multiwindow/MultiWindowManager;->addObserver(Landroid/app/Activity;Lcom/sec/android/app/sbrowser/common/multiwindow/MultiWindowObserver;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/Sites;->mSitesWindowObserver:Lcom/sec/android/app/sbrowser/common/sites/SitesWindowObserver;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/sites/SitesWindowObserver;->updateWindowLayout()V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/Sites;->mContext:Landroid/content/Context;

    check-cast p1, Landroid/app/Activity;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->isInMultiWindowMode(Landroid/app/Activity;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/sites/Sites;->mIsInMultiWindowMode:Z

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/GEDUtils;->isGED()Z

    move-result p1

    if-nez p1, :cond_6

    invoke-static {v2}, Lcom/sec/android/app/sbrowser/common/device/DesktopModeUtils;->isDesktopMode(Landroid/app/Activity;)Z

    move-result p1

    if-nez p1, :cond_6

    iget-boolean p1, p0, Lcom/sec/android/app/sbrowser/sites/Sites;->mIsInMultiWindowMode:Z

    if-nez p1, :cond_6

    iget p1, p0, Lcom/sec/android/app/sbrowser/sites/Sites;->mLayoutDirection:I

    const/4 p2, -0x1

    if-nez p1, :cond_5

    const p1, 0x7f010110

    invoke-virtual {v2, p1, p2}, Landroid/app/Activity;->overridePendingTransition(II)V

    goto :goto_4

    :cond_5
    const p1, 0x7f01010f

    invoke-virtual {v2, p1, p2}, Landroid/app/Activity;->overridePendingTransition(II)V

    :cond_6
    :goto_4
    const-string p1, "Sites created"

    invoke-static {p3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/common/model/sites/SitesActivityDelegate;->getMainActivityContextId()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_a

    const-string p1, "MainActivity is not present in Background and Sites is launched "

    invoke-static {p3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/application/AppInfo;->isBetaApk()Z

    move-result p1

    if-eqz p1, :cond_8

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->isReplaceSecBrandAsGalaxy()Z

    move-result p1

    if-eqz p1, :cond_7

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/Sites;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f1400d1

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_5

    :cond_7
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/Sites;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f1400d0

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_5

    :cond_8
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->isReplaceSecBrandAsGalaxy()Z

    move-result p1

    if-eqz p1, :cond_9

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/Sites;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f1400d3

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_5

    :cond_9
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/Sites;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f1400cf

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    :goto_5
    new-instance p2, Landroid/app/ActivityManager$TaskDescription;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/Sites;->mContext:Landroid/content/Context;

    const p3, 0x7f060293

    invoke-virtual {p0, p3}, Landroid/content/Context;->getColor(I)I

    move-result p0

    const/4 p3, 0x0

    invoke-direct {p2, p1, p3, p0}, Landroid/app/ActivityManager$TaskDescription;-><init>(Ljava/lang/String;Landroid/graphics/Bitmap;I)V

    invoke-virtual {v2, p2}, Landroid/app/Activity;->setTaskDescription(Landroid/app/ActivityManager$TaskDescription;)V

    :cond_a
    return-void
.end method

.method public static synthetic a(Lcom/sec/android/app/sbrowser/sites/Sites;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/sites/Sites;->lambda$onChanged$6(I)V

    return-void
.end method

.method private addRelevantFragments()V
    .locals 8

    const-string v0, "Sites"

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/sites/Sites;->mContext:Landroid/content/Context;

    check-cast v1, Lm/n;

    const v2, 0x7f0b0b69

    invoke-virtual {v1, v2}, Lm/n;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout;

    iput-object v3, p0, Lcom/sec/android/app/sbrowser/sites/Sites;->mSitesLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v3}, Landroid/view/View;->bringToFront()V

    invoke-virtual {v1}, Landroidx/fragment/app/J;->getSupportFragmentManager()Landroidx/fragment/app/f0;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Landroidx/fragment/app/a;

    invoke-direct {v3, v1}, Landroidx/fragment/app/a;-><init>(Landroidx/fragment/app/f0;)V

    iget v1, p0, Lcom/sec/android/app/sbrowser/sites/Sites;->mSelectedSitesPage:I

    sget-object v4, Lcom/sec/android/app/sbrowser/common/model/sites/SitePages;->BOOKMARKS:Lcom/sec/android/app/sbrowser/common/model/sites/SitePages;

    invoke-virtual {v4}, Lcom/sec/android/app/sbrowser/common/model/sites/SitePages;->getValue()I

    move-result v4

    const-string v5, "sites_fragment_tag"

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-ne v1, v4, :cond_0

    new-instance v1, Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/BookmarkPage;

    sget-object v4, Lcom/sec/android/app/sbrowser/sites/Sites;->sShowBookmarksController:Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;

    invoke-direct {v1, v4}, Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/BookmarkPage;-><init>(Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;)V

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/sites/Sites;->mBookmarkPage:Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/BookmarkPage;

    const/4 v4, 0x0

    sput-object v4, Lcom/sec/android/app/sbrowser/sites/Sites;->sShowBookmarksController:Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/sites/Sites;->mSitesPage:Ljava/util/ArrayList;

    invoke-virtual {v4, v6, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/Sites;->mBookmarkPage:Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/BookmarkPage;

    invoke-virtual {v3, v2, p0, v5, v7}, Landroidx/fragment/app/a;->h(ILandroidx/fragment/app/Fragment;Ljava/lang/String;I)V

    goto :goto_0

    :cond_0
    iget v1, p0, Lcom/sec/android/app/sbrowser/sites/Sites;->mSelectedSitesPage:I

    sget-object v4, Lcom/sec/android/app/sbrowser/common/model/sites/SitePages;->SAVEPAGES:Lcom/sec/android/app/sbrowser/common/model/sites/SitePages;

    invoke-virtual {v4}, Lcom/sec/android/app/sbrowser/common/model/sites/SitePages;->getValue()I

    move-result v4

    if-ne v1, v4, :cond_1

    new-instance v1, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPage;

    invoke-direct {v1}, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPage;-><init>()V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/Sites;->mSitesPage:Ljava/util/ArrayList;

    invoke-virtual {p0, v6, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    invoke-virtual {v3, v2, v1, v5, v7}, Landroidx/fragment/app/a;->h(ILandroidx/fragment/app/Fragment;Ljava/lang/String;I)V

    goto :goto_0

    :cond_1
    new-instance v1, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryPage;

    invoke-direct {v1}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryPage;-><init>()V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/Sites;->mSitesPage:Ljava/util/ArrayList;

    invoke-virtual {p0, v6, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    invoke-virtual {v3, v2, v1, v5, v7}, Landroidx/fragment/app/a;->h(ILandroidx/fragment/app/Fragment;Ljava/lang/String;I)V

    :goto_0
    :try_start_0
    const-string p0, " fragment commit "

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v3}, Landroidx/fragment/app/a;->e()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    const-string p0, " IllegalStateException "

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v3, v7, v7}, Landroidx/fragment/app/a;->f(ZZ)I

    :goto_1
    return-void
.end method

.method public static synthetic b(Lcom/sec/android/app/sbrowser/sites/Sites;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/sites/Sites;->lambda$onSearchOptionSelected$4()V

    return-void
.end method

.method public static synthetic c(Lcom/sec/android/app/sbrowser/sites/Sites;Lcom/google/android/material/appbar/AppBarLayout$Behavior;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/sites/Sites;->lambda$collapseAppbar$0(Lcom/google/android/material/appbar/AppBarLayout$Behavior;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic d(Lcom/sec/android/app/sbrowser/sites/Sites;JJ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sec/android/app/sbrowser/sites/Sites;->lambda$startInsertingSearchData$1(JJ)V

    return-void
.end method

.method public static synthetic e(Lcom/sec/android/app/sbrowser/sites/Sites;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/sites/Sites;->lambda$onSearchOptionSelected$5()V

    return-void
.end method

.method public static synthetic f(Lcom/sec/android/app/sbrowser/sites/Sites;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/sites/Sites;->lambda$onConfigurationChanged$2()V

    return-void
.end method

.method public static synthetic g(Lcom/sec/android/app/sbrowser/sites/Sites;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/sites/Sites;->lambda$onSearchOptionSelected$3()V

    return-void
.end method

.method private getCurrentTabInformativeSubTitle(I)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/Sites;->mSitesPage:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/Sites;->mSitesPage:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/sbrowser/sites/SitesPage;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sites/SitesPage;->getCurrentTabInformativeSubTitle()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private getCurrentTabInformativeTitle(I)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/Sites;->mSitesPage:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sites/Sites;->isSitesSearchViewVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/Sites;->mSitesSearchFragment:Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchFragment;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchFragment;->getCurrentTabInformativeTitle()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/Sites;->mSitesPage:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/sbrowser/sites/SitesPage;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sites/SitesPage;->getCurrentTabInformativeTitle()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    :goto_0
    iget p1, p0, Lcom/sec/android/app/sbrowser/sites/Sites;->mTabSelected:I

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/sites/Sites;->getCurrentTabTitle(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getCurrentTabTitle(I)Ljava/lang/String;
    .locals 3

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/Sites;->mContext:Landroid/content/Context;

    if-nez p1, :cond_0

    sget-object p0, Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem$TYPE;->INVALID:Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem$TYPE;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem$TYPE;->getValue()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    iget v0, p0, Lcom/sec/android/app/sbrowser/sites/Sites;->mSelectedSitesPage:I

    if-eqz v0, :cond_4

    const/4 v1, 0x1

    const v2, 0x7f140dd9

    if-eq v0, v1, :cond_2

    const/4 p0, 0x2

    if-eq v0, p0, :cond_1

    sget-object p0, Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem$TYPE;->INVALID:Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem$TYPE;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem$TYPE;->getValue()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/Sites;->mSitesHelper:Lcom/sec/android/app/sbrowser/sites/SitesHelper;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/sites/SitesHelper;->isSecretModeEnabled()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/Sites;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_3
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/Sites;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f1405ce

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0

    :cond_4
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f14027f

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getDispatchKeyEvent(Landroid/view/KeyEvent;)Ljava/lang/Boolean;
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sites/Sites;->isSitesSearchViewVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/Sites;->mSitesSearchFragment:Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchFragment;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchFragment;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/Sites;->mSitesPage:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/Sites;->mSitesPage:Ljava/util/ArrayList;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/sbrowser/sites/SitesPage;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/sites/SitesPage;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p0

    if-eqz p0, :cond_1

    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static synthetic h(Lcom/sec/android/app/sbrowser/sites/Sites;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/sites/Sites;->notifyAppBarHeightChanged()V

    return-void
.end method

.method private handleAction(Landroid/view/KeyEvent;)Ljava/lang/Boolean;
    .locals 3

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    if-eqz v0, :cond_5

    const/4 v2, 0x1

    if-eq v0, v2, :cond_0

    goto :goto_1

    :cond_0
    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/sites/Sites;->getDispatchKeyEvent(Landroid/view/KeyEvent;)Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_1

    return-object v0

    :cond_1
    const/16 v0, 0x3d

    if-ne v1, v0, :cond_2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sites/Sites;->isSitesSearchViewVisible()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/Sites;->mSitesSearchFragment:Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchFragment;

    if-eqz p0, :cond_7

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchFragment;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :cond_2
    const/4 v0, 0x4

    if-ne v1, v0, :cond_7

    invoke-virtual {p1}, Landroid/view/KeyEvent;->isLongPress()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p1}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_0

    :cond_3
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/Sites;->mSitesPage:Ljava/util/ArrayList;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/sbrowser/sites/SitesPage;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/sites/SitesPage;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :cond_4
    :goto_0
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0

    :cond_5
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isCtrlPressed()Z

    move-result v0

    if-nez v0, :cond_6

    invoke-virtual {p1}, Landroid/view/KeyEvent;->isShiftPressed()Z

    move-result v0

    if-eqz v0, :cond_7

    :cond_6
    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/sites/Sites;->getDispatchKeyEvent(Landroid/view/KeyEvent;)Ljava/lang/Boolean;

    move-result-object p0

    if-eqz p0, :cond_7

    return-object p0

    :cond_7
    :goto_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private handleKeycodeD(Landroid/view/KeyEvent;)Z
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/Sites;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/device/DesktopModeUtils;->isDesktopMode(Landroid/app/Activity;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v2, 0x20

    if-ne v0, v2, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->isCtrlPressed()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sites/Sites;->isSitesSearchViewVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/Sites;->mSitesSearchFragment:Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchFragment;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchFragment;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p0

    return p0

    :cond_1
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/Sites;->mSitesPage:Ljava/util/ArrayList;

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/sbrowser/sites/SitesPage;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/sites/SitesPage;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p0

    return p0

    :cond_2
    return v1
.end method

.method public static bridge synthetic i(Lcom/sec/android/app/sbrowser/sites/Sites;)I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/sbrowser/sites/Sites;->mLayoutMargin:I

    return p0
.end method

.method private initializeTabTitle(Landroid/content/Intent;)V
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_1

    sget-object v1, Lcom/sec/android/app/sbrowser/common/model/sites/SitePages;->BOOKMARKS:Lcom/sec/android/app/sbrowser/common/model/sites/SitePages;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/common/model/sites/SitePages;->getValue()I

    move-result v1

    const-string v2, "tab_index"

    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/sec/android/app/sbrowser/sites/Sites;->mTabSelected:I

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/Sites;->mSitesHelper:Lcom/sec/android/app/sbrowser/sites/SitesHelper;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/sites/SitesHelper;->isSecretModeEnabled()Z

    move-result p1

    if-eqz p1, :cond_0

    iget p1, p0, Lcom/sec/android/app/sbrowser/sites/Sites;->mTabSelected:I

    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    iput v0, p0, Lcom/sec/android/app/sbrowser/sites/Sites;->mTabSelected:I

    :cond_0
    iput v0, p0, Lcom/sec/android/app/sbrowser/sites/Sites;->mTabSelected:I

    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sites/Sites;->getToolBarTitleView()Landroid/widget/TextView;

    move-result-object p1

    iget v1, p0, Lcom/sec/android/app/sbrowser/sites/Sites;->mTabSelected:I

    invoke-direct {p0, v1}, Lcom/sec/android/app/sbrowser/sites/Sites;->getCurrentTabTitle(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/Sites;->mContext:Landroid/content/Context;

    check-cast p1, Landroid/app/Activity;

    iget v1, p0, Lcom/sec/android/app/sbrowser/sites/Sites;->mTabSelected:I

    invoke-direct {p0, v1}, Lcom/sec/android/app/sbrowser/sites/Sites;->getCurrentTabTitle(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sites/Sites;->getToolbar()Landroidx/appcompat/widget/Toolbar;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    move v1, v0

    :goto_0
    if-ge v1, p1, :cond_4

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sites/Sites;->getToolbar()Landroidx/appcompat/widget/Toolbar;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    instance-of v3, v2, Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz v3, :cond_3

    instance-of v3, v2, Lcom/sec/android/app/sbrowser/common/widget/AutoScaleTextView;

    if-eqz v3, :cond_2

    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :cond_2
    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    return-void
.end method

.method public static bridge synthetic j(Lcom/sec/android/app/sbrowser/sites/Sites;)Lcom/sec/android/app/sbrowser/sites/SitesHelper;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/Sites;->mSitesHelper:Lcom/sec/android/app/sbrowser/sites/SitesHelper;

    return-object p0
.end method

.method public static bridge synthetic k(Lcom/sec/android/app/sbrowser/sites/Sites;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/Sites;->mSitesPage:Ljava/util/ArrayList;

    return-object p0
.end method

.method public static bridge synthetic l(Lcom/sec/android/app/sbrowser/sites/Sites;)Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchFragment;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/Sites;->mSitesSearchFragment:Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchFragment;

    return-object p0
.end method

.method private synthetic lambda$collapseAppbar$0(Lcom/google/android/material/appbar/AppBarLayout$Behavior;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p1, p2}, Lc6/r;->v(I)Z

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sites/Sites;->getAppBarLayout()Lcom/google/android/material/appbar/AppBarLayout;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/sites/Sites;->notifyAppBarHeightChanged()V

    return-void
.end method

.method private synthetic lambda$onChanged$6(I)V
    .locals 2

    const-string v0, "onChanged propertyType : "

    const-string v1, "Sites"

    invoke-static {p1, v0, v1}, Landroidx/recyclerview/widget/P;->i(ILjava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x4

    if-eq p1, v0, :cond_3

    const/4 v0, 0x6

    if-eq p1, v0, :cond_2

    const/16 v0, 0x16

    if-eq p1, v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/Sites;->mSitesPage:Ljava/util/ArrayList;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/Sites;->mSitesPage:Ljava/util/ArrayList;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sec/android/app/sbrowser/sites/SitesPage;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/Sites;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {p1, v0}, Lcom/sec/android/app/sbrowser/sites/SitesPage;->updateHistorySearchDataAfterSync(Landroid/app/Activity;)V

    :cond_1
    sget-object p1, Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem$TYPE;->HISTORY:Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem$TYPE;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/sites/Sites;->setSearchDataForSync(Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem$TYPE;)V

    goto :goto_0

    :cond_2
    sget-object p1, Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem$TYPE;->SAVED_PAGE:Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem$TYPE;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/sites/Sites;->setSearchDataForSync(Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem$TYPE;)V

    goto :goto_0

    :cond_3
    sget-object p1, Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem$TYPE;->BOOKMARK:Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem$TYPE;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/sites/Sites;->setSearchDataForSync(Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem$TYPE;)V

    :goto_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sites/Sites;->getSitesSearchItems()V

    :goto_1
    return-void
.end method

.method private synthetic lambda$onConfigurationChanged$2()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/Sites;->mSitesHelper:Lcom/sec/android/app/sbrowser/sites/SitesHelper;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sites/SitesHelper;->setActionButtonTintColorForToolbar()V

    return-void
.end method

.method private synthetic lambda$onSearchOptionSelected$3()V
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sites/Sites;->getSearchFragment()Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchFragment;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sites/Sites;->getSearchEditTextView()Landroid/widget/EditText;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchFragment;->processSearchData(Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$onSearchOptionSelected$4()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/Sites;->mSitesSearch:Lcom/sec/android/app/sbrowser/sites/SitesSearch;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/sites/SitesSearch;->setSearchData()V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sites/Sites;->isSitesSearchViewVisible()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/sec/android/app/sbrowser/sites/a;

    const/4 v1, 0x4

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/sbrowser/sites/a;-><init>(Lcom/sec/android/app/sbrowser/sites/Sites;I)V

    invoke-static {v0}, Lcom/sec/terrace/base/TerraceThreadUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$onSearchOptionSelected$5()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/Sites;->mSitesSearch:Lcom/sec/android/app/sbrowser/sites/SitesSearch;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sites/SitesSearch;->setSearchData()V

    return-void
.end method

.method private synthetic lambda$startInsertingSearchData$1(JJ)V
    .locals 2

    const-string v0, "Sites"

    const-string v1, "Sites Resumed: Sending data to smart search"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/Sites;->mSitesPage:Ljava/util/ArrayList;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/Sites;->mSitesSearch:Lcom/sec/android/app/sbrowser/sites/SitesSearch;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-eqz v0, :cond_2

    cmp-long p1, p3, p1

    if-lez p1, :cond_2

    sget-object p1, Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem$TYPE;->BOOKMARK:Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem$TYPE;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/sites/Sites;->setSearchDataForSync(Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem$TYPE;)V

    sget-object p1, Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem$TYPE;->SAVED_PAGE:Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem$TYPE;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/sites/Sites;->setSearchDataForSync(Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem$TYPE;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/Sites;->mSitesPage:Ljava/util/ArrayList;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/Sites;->mSitesPage:Ljava/util/ArrayList;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sec/android/app/sbrowser/sites/SitesPage;

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/sites/Sites;->mContext:Landroid/content/Context;

    check-cast p2, Landroid/app/Activity;

    invoke-virtual {p1, p2}, Lcom/sec/android/app/sbrowser/sites/SitesPage;->updateHistorySearchDataAfterSync(Landroid/app/Activity;)V

    :cond_1
    sget-object p1, Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem$TYPE;->HISTORY:Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem$TYPE;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/sites/Sites;->setSearchDataForSync(Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem$TYPE;)V

    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sites/Sites;->getSitesSearchItems()V

    :cond_3
    :goto_0
    return-void
.end method

.method public static bridge synthetic m(Lcom/sec/android/app/sbrowser/sites/Sites;)I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/sbrowser/sites/Sites;->mTabSelected:I

    return p0
.end method

.method public static bridge synthetic n(Lcom/sec/android/app/sbrowser/sites/Sites;I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/sbrowser/sites/Sites;->mLayoutMargin:I

    return-void
.end method

.method private notifyAppBarHeightChanged()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/Sites;->mSitesPage:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/Sites;->mSitesHelper:Lcom/sec/android/app/sbrowser/sites/SitesHelper;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/sites/SitesHelper;->getCoordinatorLayout()Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sites/Sites;->getAppBarLayout()Lcom/google/android/material/appbar/AppBarLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v1

    sub-int/2addr v0, v1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onAppBarHeightChanged : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Sites"

    invoke-static {v2, v1}, Lcom/sec/android/app/sbrowser/common/device/EngLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v1, p0, Lcom/sec/android/app/sbrowser/sites/Sites;->mTabSelected:I

    if-ltz v1, :cond_3

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/sites/Sites;->mSitesPage:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt v1, v2, :cond_1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/sites/Sites;->mContext:Landroid/content/Context;

    check-cast v1, Landroid/app/Activity;

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/common/utils/ImeUtil;->isKeyboardTurnedOn(Landroid/app/Activity;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/sites/Sites;->mSitesPage:Ljava/util/ArrayList;

    iget v2, p0, Lcom/sec/android/app/sbrowser/sites/Sites;->mTabSelected:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/sbrowser/sites/SitesPage;

    invoke-virtual {v1, v0}, Lcom/sec/android/app/sbrowser/sites/SitesPage;->onAppBarHeightChanged(I)V

    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sites/Sites;->isSitesSearchViewVisible()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/Sites;->mSitesSearchFragment:Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchFragment;

    if-eqz p0, :cond_3

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchFragment;->onAppBarHeightChanged(I)V

    :cond_3
    :goto_0
    return-void
.end method

.method private notifyAppBarHeightChangedWithDelay()V
    .locals 4

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/sec/android/app/sbrowser/sites/a;

    const/4 v2, 0x2

    invoke-direct {v1, p0, v2}, Lcom/sec/android/app/sbrowser/sites/a;-><init>(Lcom/sec/android/app/sbrowser/sites/Sites;I)V

    const-wide/16 v2, 0xfa

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private onSearchOptionSelected()V
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/Sites;->mSitesSearch:Lcom/sec/android/app/sbrowser/sites/SitesSearch;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    new-instance v0, Lcom/sec/android/app/sbrowser/sites/SitesSearch;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/sites/Sites;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2, p0}, Lcom/sec/android/app/sbrowser/sites/SitesSearch;-><init>(Landroid/content/Context;Lcom/sec/android/app/sbrowser/sites/SitesDelegate;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/sites/Sites;->mSitesSearch:Lcom/sec/android/app/sbrowser/sites/SitesSearch;

    new-instance v0, Ljava/lang/Thread;

    new-instance v2, Lcom/sec/android/app/sbrowser/sites/a;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/sec/android/app/sbrowser/sites/a;-><init>(Lcom/sec/android/app/sbrowser/sites/Sites;I)V

    invoke-direct {v0, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/sites/Sites;->startInsertingSearchData()V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sites/Sites;->isSitesSearchViewVisible()Z

    move-result v2

    if-eqz v2, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sites/Sites;->getAppBarLayout()Lcom/google/android/material/appbar/AppBarLayout;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/material/appbar/AppBarLayout;->setExpanded(Z)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/sites/common/search/SitesSearchHandler;->getInstance()Lcom/sec/android/app/sbrowser/sites/common/search/SitesSearchHandler;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/sec/android/app/sbrowser/sites/common/search/SitesSearchHandler;->addObserver(Lcom/sec/android/app/sbrowser/sites/common/search/SitesSearchHandler$SitesSearchObserver;)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/sites/Sites;->showSearchView()V

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/sec/android/app/sbrowser/sites/a;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lcom/sec/android/app/sbrowser/sites/a;-><init>(Lcom/sec/android/app/sbrowser/sites/Sites;I)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_2
    return-void
.end method

.method private searchOptionSelectedInternal()Z
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/Sites;->mSitesSearch:Lcom/sec/android/app/sbrowser/sites/SitesSearch;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sec/android/app/sbrowser/sites/SitesSearch;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/sites/Sites;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p0}, Lcom/sec/android/app/sbrowser/sites/SitesSearch;-><init>(Landroid/content/Context;Lcom/sec/android/app/sbrowser/sites/SitesDelegate;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/sites/Sites;->mSitesSearch:Lcom/sec/android/app/sbrowser/sites/SitesSearch;

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sites/Sites;->getToolbar()Landroidx/appcompat/widget/Toolbar;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/widget/Toolbar;->getMenu()Landroid/view/Menu;

    move-result-object v0

    const v1, 0x7f0b0b6f

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sites/Sites;->getToolbar()Landroidx/appcompat/widget/Toolbar;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/appcompat/widget/Toolbar;->getMenu()Landroid/view/Menu;

    move-result-object v1

    const v2, 0x7f0b0b8a

    invoke-interface {v1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sites/Sites;->getToolbar()Landroidx/appcompat/widget/Toolbar;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/appcompat/widget/Toolbar;->getMenu()Landroid/view/Menu;

    move-result-object v2

    const v3, 0x7f0b0b78

    invoke-interface {v2, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroid/view/MenuItem;->isVisible()Z

    move-result v0

    if-nez v0, :cond_3

    :cond_1
    if-eqz v1, :cond_2

    invoke-interface {v1}, Landroid/view/MenuItem;->isVisible()Z

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    if-eqz v2, :cond_4

    invoke-interface {v2}, Landroid/view/MenuItem;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/sites/Sites;->onSearchOptionSelected()V

    const/4 p0, 0x1

    return p0

    :cond_4
    const/4 p0, 0x0

    return p0
.end method

.method public static setBookmarkController(Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;)V
    .locals 0

    sput-object p0, Lcom/sec/android/app/sbrowser/sites/Sites;->sShowBookmarksController:Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;

    return-void
.end method

.method private setLayoutChangeListener(Landroid/content/Context;)V
    .locals 1

    new-instance v0, Lcom/sec/android/app/sbrowser/sites/Sites$1;

    invoke-direct {v0, p0, p1}, Lcom/sec/android/app/sbrowser/sites/Sites$1;-><init>(Lcom/sec/android/app/sbrowser/sites/Sites;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/sites/Sites;->mOnLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/Sites;->mContext:Landroid/content/Context;

    check-cast p1, Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/Sites;->mOnLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {p1, p0}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    return-void
.end method

.method private showSearchView()V
    .locals 6

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sites/Sites;->isSitesSearchViewVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/Sites;->mSitesLayout:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_1

    const/high16 v1, 0x60000

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setDescendantFocusability(I)V

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/Sites;->mContext:Landroid/content/Context;

    const-string v1, "Sites"

    if-nez v0, :cond_2

    const-string p0, "[showSearchView] context null"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    check-cast v0, Lm/n;

    invoke-static {}, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;->getInstance()Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;->size()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_3

    invoke-static {}, Lcom/sec/android/app/sbrowser/sites/common/search/SitesSearchHandler;->getInstance()Lcom/sec/android/app/sbrowser/sites/common/search/SitesSearchHandler;

    move-result-object v2

    sget-object v4, Lcom/sec/android/app/sbrowser/sites/common/search/SitesSearchHandler$MESSAGES;->HIDE:Lcom/sec/android/app/sbrowser/sites/common/search/SitesSearchHandler$MESSAGES;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    invoke-static {v2, v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-static {}, Lcom/sec/android/app/sbrowser/sites/common/search/SitesSearchHandler;->getInstance()Lcom/sec/android/app/sbrowser/sites/common/search/SitesSearchHandler;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_3
    const-string v2, "showSearchView()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Lm/n;->invalidateOptionsMenu()V

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    const v2, 0x7f0e0897

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/sites/Sites;->mSearchView:Landroid/view/View;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/sites/Sites;->mSearchView:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v0}, Lm/n;->getSupportActionBar()Lm/b;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sites/Sites;->getToolBarTitleView()Landroid/widget/TextView;

    move-result-object v1

    const/16 v4, 0x8

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v0}, Lm/n;->getSupportActionBar()Lm/b;

    move-result-object v1

    invoke-virtual {v1}, Lm/b;->o()V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sites/Sites;->getToolbar()Landroidx/appcompat/widget/Toolbar;

    move-result-object v1

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/sites/Sites;->mSearchView:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sites/Sites;->getToolbar()Landroidx/appcompat/widget/Toolbar;

    move-result-object v1

    invoke-virtual {v1, v2, v2}, Landroidx/appcompat/widget/Toolbar;->setContentInsetsAbsolute(II)V

    :cond_4
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/sites/Sites;->mSitesSearch:Lcom/sec/android/app/sbrowser/sites/SitesSearch;

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/sites/Sites;->mSearchView:Landroid/view/View;

    invoke-virtual {v1, v4, v2}, Lcom/sec/android/app/sbrowser/sites/SitesSearch;->showSearchView(Landroid/view/View;Z)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/sites/Sites;->mContext:Landroid/content/Context;

    check-cast v1, Landroid/app/Activity;

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/common/utils/ImeUtil;->isAccessoryKeyboardConnected(Landroid/app/Activity;)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/device/DesktopModeUtils;->isDesktopMode(Landroid/app/Activity;)Z

    move-result v1

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/sites/Sites;->mContext:Landroid/content/Context;

    check-cast v1, Landroid/app/Activity;

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/common/utils/ImeUtil;->isKeyboardShowing(Landroid/app/Activity;)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/sites/Sites;->mSitesSearch:Lcom/sec/android/app/sbrowser/sites/SitesSearch;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/sites/SitesSearch;->hideSoftKeyboard()V

    goto :goto_0

    :cond_5
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/sites/Sites;->mSitesSearch:Lcom/sec/android/app/sbrowser/sites/SitesSearch;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/sites/SitesSearch;->showKeyboard()V

    :cond_6
    :goto_0
    new-instance v1, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchFragment;

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/sites/Sites;->mSitesActivityListener:Lcom/sec/android/app/sbrowser/common/model/sites/SitesActivityListener;

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/sites/Sites;->mSitesActivityDelegate:Lcom/sec/android/app/sbrowser/common/model/sites/SitesActivityDelegate;

    invoke-direct {v1, v4, v5}, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchFragment;-><init>(Lcom/sec/android/app/sbrowser/common/model/sites/SitesActivityListener;Lcom/sec/android/app/sbrowser/common/model/sites/SitesActivityDelegate;)V

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/sites/Sites;->mSitesSearchFragment:Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchFragment;

    const v1, 0x7f0b0b70

    invoke-virtual {v0, v1}, Lm/n;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/FrameLayout;

    iput-object v4, p0, Lcom/sec/android/app/sbrowser/sites/Sites;->mContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v4, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/sites/Sites;->mContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/view/View;->bringToFront()V

    invoke-virtual {v0}, Landroidx/fragment/app/J;->getSupportFragmentManager()Landroidx/fragment/app/f0;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Landroidx/fragment/app/a;

    invoke-direct {v2, v0}, Landroidx/fragment/app/a;-><init>(Landroidx/fragment/app/f0;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/Sites;->mSitesSearchFragment:Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchFragment;

    const-string v0, "SitesSearchFragment"

    invoke-virtual {v2, v1, p0, v0, v3}, Landroidx/fragment/app/a;->h(ILandroidx/fragment/app/Fragment;Ljava/lang/String;I)V

    invoke-virtual {v2, v3, v3}, Landroidx/fragment/app/a;->f(ZZ)I

    const-string p0, "313"

    const-string v0, "3122"

    invoke-static {p0, v0}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private startInsertingSearchData()V
    .locals 10

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/Sites;->mContext:Landroid/content/Context;

    const-string v1, "current_sync"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iget v1, p0, Lcom/sec/android/app/sbrowser/sites/Sites;->mSelectedSitesPage:I

    sget-object v3, Lcom/sec/android/app/sbrowser/common/model/sites/SitePages;->BOOKMARKS:Lcom/sec/android/app/sbrowser/common/model/sites/SitePages;

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/common/model/sites/SitePages;->getValue()I

    move-result v3

    if-ne v1, v3, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/sites/Sites;->mContext:Landroid/content/Context;

    const-string v3, "BROWSER"

    invoke-static {v1, v3, v2}, Lcom/sec/android/app/sbrowser/common/sync/SyncUtil;->getLastSyncTime(Landroid/content/Context;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    iget v1, p0, Lcom/sec/android/app/sbrowser/sites/Sites;->mSelectedSitesPage:I

    sget-object v3, Lcom/sec/android/app/sbrowser/common/model/sites/SitePages;->SAVEPAGES:Lcom/sec/android/app/sbrowser/common/model/sites/SitePages;

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/common/model/sites/SitePages;->getValue()I

    move-result v3

    if-ne v1, v3, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/sites/Sites;->mContext:Landroid/content/Context;

    const-string v3, "SBROWSER_SAVEDPAGES"

    invoke-static {v1, v3, v2}, Lcom/sec/android/app/sbrowser/common/sync/SyncUtil;->getLastSyncTime(Landroid/content/Context;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/sites/Sites;->mContext:Landroid/content/Context;

    const-string v3, "SBROWSER_HISTORY"

    invoke-static {v1, v3, v2}, Lcom/sec/android/app/sbrowser/common/sync/SyncUtil;->getLastSyncTime(Landroid/content/Context;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    :goto_0
    const-wide/16 v2, 0x0

    if-eqz v1, :cond_2

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    :goto_1
    move-wide v8, v0

    goto :goto_2

    :cond_2
    const-string v1, "internet_timestamp"

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    goto :goto_1

    :goto_2
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/Sites;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "pref_sites_timestamp"

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    new-instance v0, Lcom/sec/android/app/sbrowser/sites/b;

    move-object v4, v0

    move-object v5, p0

    invoke-direct/range {v4 .. v9}, Lcom/sec/android/app/sbrowser/sites/b;-><init>(Lcom/sec/android/app/sbrowser/sites/Sites;JJ)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSmartSearchThread;->getSmartSearchThread()Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSmartSearchThread;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSmartSearchThread;->runOnWorkerThread(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public clearSitesSearchDeleteStatus()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/Sites;->mSitesSearch:Lcom/sec/android/app/sbrowser/sites/SitesSearch;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sites/SitesSearch;->clearSitesSearchDeleteStatus()V

    return-void
.end method

.method public collapseAppbar()V
    .locals 8

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sites/Sites;->getAppBarLayout()Lcom/google/android/material/appbar/AppBarLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, LR0/d;

    iget-object v0, v0, LR0/d;->a:LR0/c;

    check-cast v0, Lcom/google/android/material/appbar/AppBarLayout$Behavior;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    new-array v2, v1, [I

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v2

    new-instance v3, Landroid/view/animation/PathInterpolator;

    const v4, 0x3dcccccd    # 0.1f

    const/high16 v5, 0x3f800000    # 1.0f

    const v6, 0x3ea8f5c3    # 0.33f

    const/4 v7, 0x0

    invoke-direct {v3, v6, v7, v4, v5}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v3, Lc6/b;

    const/4 v4, 0x1

    invoke-direct {v3, v4, p0, v0}, Lc6/b;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sites/Sites;->getAppBarLayout()Lcom/google/android/material/appbar/AppBarLayout;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/material/appbar/AppBarLayout;->getTotalScrollRange()I

    move-result p0

    neg-int p0, p0

    filled-new-array {v1, p0}, [I

    move-result-object p0

    invoke-virtual {v2, p0}, Landroid/animation/ValueAnimator;->setIntValues([I)V

    const-wide/16 v0, 0x226

    invoke-virtual {v2, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->start()V

    :cond_0
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 6

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/sites/Sites;->mContext:Landroid/content/Context;

    check-cast v2, Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v2

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/sites/Sites;->handleAction(Landroid/view/KeyEvent;)Ljava/lang/Boolean;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    :cond_0
    const/16 v3, 0x20

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eq v1, v3, :cond_8

    const/16 v3, 0x22

    if-eq v1, v3, :cond_7

    const/16 v3, 0x29

    if-eq v1, v3, :cond_6

    const/16 v3, 0x54

    if-eq v1, v3, :cond_5

    const/16 v0, 0x70

    if-eq v1, v0, :cond_8

    const/16 v0, 0x3ee

    if-eq v1, v0, :cond_2

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_1

    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/Sites;->mSitesHelper:Lcom/sec/android/app/sbrowser/sites/SitesHelper;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/sites/SitesHelper;->isFocusedOnTab()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/sec/android/app/sbrowser/sites/Sites;->mSelectedSitesPage:I

    sget-object v1, Lcom/sec/android/app/sbrowser/common/model/sites/SitePages;->BOOKMARKS:Lcom/sec/android/app/sbrowser/common/model/sites/SitePages;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/common/model/sites/SitePages;->getValue()I

    move-result v1

    if-ne v0, v1, :cond_1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/Sites;->mSitesPage:Ljava/util/ArrayList;

    invoke-virtual {p0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/sbrowser/sites/SitesPage;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/sites/SitesPage;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p0

    return p0

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/Sites;->mSitesHelper:Lcom/sec/android/app/sbrowser/sites/SitesHelper;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/sites/SitesHelper;->isFocusedOnBottomBar()Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/Sites;->mSitesPage:Ljava/util/ArrayList;

    invoke-virtual {p0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/sbrowser/sites/SitesPage;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/sites/SitesPage;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p0

    return p0

    :pswitch_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/Sites;->mSitesHelper:Lcom/sec/android/app/sbrowser/sites/SitesHelper;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/sites/SitesHelper;->isFocusedOnToolbar()Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/Sites;->mSitesPage:Ljava/util/ArrayList;

    invoke-virtual {p0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/sbrowser/sites/SitesPage;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/sites/SitesPage;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p0

    return p0

    :pswitch_2
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/Sites;->mSitesHelper:Lcom/sec/android/app/sbrowser/sites/SitesHelper;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/sbrowser/sites/SitesHelper;->isFocusedOnNoItemTab(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/Sites;->mSitesPage:Ljava/util/ArrayList;

    invoke-virtual {p0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/sbrowser/sites/SitesPage;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/sites/SitesPage;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p0

    return p0

    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sites/Sites;->isSitesSearchViewVisible()Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/Sites;->mSitesSearchFragment:Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchFragment;

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchFragment;->isShowingActionMode()Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sites/Sites;->getSearchEditTextView()Landroid/widget/EditText;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->requestFocus()Z

    return v5

    :cond_4
    :goto_0
    return v4

    :cond_5
    iget-boolean v1, p0, Lcom/sec/android/app/sbrowser/sites/Sites;->mIsInActionMode:Z

    if-nez v1, :cond_7

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/sites/Sites;->searchOptionSelectedInternal()Z

    move-result p0

    return p0

    :cond_6
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isCtrlPressed()Z

    move-result v1

    if-eqz v1, :cond_9

    if-ne v0, v4, :cond_9

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/Sites;->mSitesPage:Ljava/util/ArrayList;

    invoke-virtual {p0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/sbrowser/sites/SitesPage;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/sites/SitesPage;->dispatchMoreKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p0

    if-eqz p0, :cond_9

    return v4

    :cond_7
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isCtrlPressed()Z

    move-result p1

    if-eqz p1, :cond_9

    if-ne v0, v4, :cond_9

    iget-boolean p1, p0, Lcom/sec/android/app/sbrowser/sites/Sites;->mIsInActionMode:Z

    if-nez p1, :cond_9

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/Sites;->mSitesPage:Ljava/util/ArrayList;

    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sec/android/app/sbrowser/sites/SitesPage;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/sites/SitesPage;->getDndList()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    invoke-virtual {p1, v5}, Landroidx/recyclerview/widget/RecyclerView;->seslSetCtrlkeyPressed(Z)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/sites/Sites;->searchOptionSelectedInternal()Z

    move-result p0

    return p0

    :cond_8
    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/sites/Sites;->handleKeycodeD(Landroid/view/KeyEvent;)Z

    move-result p0

    if-eqz p0, :cond_9

    return v4

    :cond_9
    :goto_1
    return v5

    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public getAppBarLayout()Lcom/google/android/material/appbar/AppBarLayout;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/Sites;->mSitesHelper:Lcom/sec/android/app/sbrowser/sites/SitesHelper;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sites/SitesHelper;->getAppBarLayout()Lcom/google/android/material/appbar/AppBarLayout;

    move-result-object p0

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

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/Sites;->mSitesSearch:Lcom/sec/android/app/sbrowser/sites/SitesSearch;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sites/SitesSearch;->getBookmarkMap()Lcom/google/common/collect/I;

    move-result-object p0

    return-object p0
.end method

.method public getCurrentTab()I
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/Sites;->mSitesSearch:Lcom/sec/android/app/sbrowser/sites/SitesSearch;

    iget p0, p0, Lcom/sec/android/app/sbrowser/sites/Sites;->mSelectedSitesPage:I

    invoke-virtual {v0, p0}, Lcom/sec/android/app/sbrowser/sites/SitesSearch;->getCurrentTab(I)I

    move-result p0

    return p0
.end method

.method public getScreenID()Ljava/lang/String;
    .locals 2

    iget v0, p0, Lcom/sec/android/app/sbrowser/sites/Sites;->mSelectedSitesPage:I

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/model/sites/SitePages;->getSitePages(I)Lcom/sec/android/app/sbrowser/common/model/sites/SitePages;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/Sites;->mSitesHelper:Lcom/sec/android/app/sbrowser/sites/SitesHelper;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sites/SitesHelper;->isSecretModeEnabled()Z

    move-result p0

    const/4 v1, 0x3

    if-eqz p0, :cond_2

    sget-object p0, Lcom/sec/android/app/sbrowser/sites/Sites$3;->$SwitchMap$com$sec$android$app$sbrowser$common$model$sites$SitePages:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget p0, p0, v0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    if-eq p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string p0, "310"

    return-object p0

    :cond_1
    const-string p0, "305"

    return-object p0

    :cond_2
    sget-object p0, Lcom/sec/android/app/sbrowser/sites/Sites$3;->$SwitchMap$com$sec$android$app$sbrowser$common$model$sites$SitePages:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget p0, p0, v0

    const/4 v0, 0x2

    if-eq p0, v0, :cond_4

    if-eq p0, v1, :cond_3

    goto :goto_0

    :cond_3
    const-string p0, "308"

    return-object p0

    :cond_4
    const-string p0, "306"

    return-object p0

    :cond_5
    :goto_0
    const-string p0, "301"

    return-object p0
.end method

.method public getSearchEditTextView()Landroid/widget/EditText;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/Sites;->mSitesSearch:Lcom/sec/android/app/sbrowser/sites/SitesSearch;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sites/SitesSearch;->getSearchEditTextView()Landroid/widget/EditText;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getSearchFragment()Lcom/sec/android/app/sbrowser/sites/model/SitesSearchFragmentDelegate;
    .locals 0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sites/Sites;->getSearchFragment()Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchFragment;

    move-result-object p0

    return-object p0
.end method

.method public getSearchFragment()Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchFragment;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/Sites;->mSitesSearchFragment:Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchFragment;

    return-object p0
.end method

.method public getSearchText()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/Sites;->mSitesSearch:Lcom/sec/android/app/sbrowser/sites/SitesSearch;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sites/SitesSearch;->getSearchText()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getSearchView()Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/Sites;->mSearchView:Landroid/view/View;

    return-object p0
.end method

.method public getSelectedSitesPage()I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/sbrowser/sites/Sites;->mSelectedSitesPage:I

    return p0
.end method

.method public getSitesPage()Ljava/util/ArrayList;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/sec/android/app/sbrowser/sites/SitesPage;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/Sites;->mSitesPage:Ljava/util/ArrayList;

    return-object p0
.end method

.method public getSitesSearchData()Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSearchBase;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/Sites;->mSitesSearch:Lcom/sec/android/app/sbrowser/sites/SitesSearch;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sites/SitesSearch;->getSitesSearchData()Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSearchBase;

    move-result-object p0

    return-object p0
.end method

.method public getSitesSearchItemMap(Landroid/app/Activity;Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSearchBase;)Ljava/util/LinkedHashMap;
    .locals 1
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

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/Sites;->mSitesPage:Ljava/util/ArrayList;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/sbrowser/sites/SitesPage;

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/sites/SitesPage;->getSitesSearchItemMap(Landroid/app/Activity;Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSearchBase;)Ljava/util/LinkedHashMap;

    move-result-object p0

    return-object p0
.end method

.method public getSitesSearchItems()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/Sites;->mSitesPage:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/Sites;->mSitesSearch:Lcom/sec/android/app/sbrowser/sites/SitesSearch;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/sites/Sites;->mContext:Landroid/content/Context;

    check-cast v1, Landroid/app/Activity;

    iget p0, p0, Lcom/sec/android/app/sbrowser/sites/Sites;->mSelectedSitesPage:I

    invoke-virtual {v0, v1, p0}, Lcom/sec/android/app/sbrowser/sites/SitesSearch;->getSitesSearchItems(Landroid/app/Activity;I)V

    :cond_0
    return-void
.end method

.method public getSitesSearchItems(Landroid/app/Activity;Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSearchBase;)V
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/Sites;->mSitesPage:Ljava/util/ArrayList;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/sbrowser/sites/SitesPage;

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/sites/SitesPage;->getSitesSearchItems(Landroid/app/Activity;Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSearchBase;)V

    return-void
.end method

.method public getToolBarTitleView()Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/Sites;->mSitesHelper:Lcom/sec/android/app/sbrowser/sites/SitesHelper;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sites/SitesHelper;->getToolBarTitleView()Landroid/widget/TextView;

    move-result-object p0

    return-object p0
.end method

.method public getToolbar()Landroidx/appcompat/widget/Toolbar;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/Sites;->mSitesHelper:Lcom/sec/android/app/sbrowser/sites/SitesHelper;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sites/SitesHelper;->getToolbar()Landroidx/appcompat/widget/Toolbar;

    move-result-object p0

    return-object p0
.end method

.method public getToolbarBackButton()Landroid/widget/ImageButton;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/Sites;->mSitesHelper:Lcom/sec/android/app/sbrowser/sites/SitesHelper;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sites/SitesHelper;->getToolbarBackButton()Landroid/widget/ImageButton;

    move-result-object p0

    return-object p0
.end method

.method public hidePreviouslyShowingDialog()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/Sites;->mConfirmDialog:Lcom/sec/android/app/sbrowser/sites/SitesConfirmDeleteDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/fragment/app/u;->dismiss()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/sites/Sites;->mConfirmDialog:Lcom/sec/android/app/sbrowser/sites/SitesConfirmDeleteDialog;

    :cond_0
    return-void
.end method

.method public hideSearchView()V
    .locals 4

    const-string v0, "Sites"

    const-string v1, "hideSearchView()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/Sites;->mContext:Landroid/content/Context;

    check-cast v0, Lm/n;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/sites/Sites;->mSitesLayout:Landroid/widget/FrameLayout;

    if-eqz v1, :cond_0

    const/high16 v2, 0x20000

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setDescendantFocusability(I)V

    :cond_0
    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;)V

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    const/16 v3, 0xc

    invoke-virtual {v1, v3}, Landroid/app/ActionBar;->setDisplayOptions(I)V

    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/sites/Sites;->mSitesSearch:Lcom/sec/android/app/sbrowser/sites/SitesSearch;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/sites/SitesSearch;->hideSearchView()V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/sites/Sites;->mSitesSearchFragment:Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchFragment;

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Landroidx/fragment/app/J;->getSupportFragmentManager()Landroidx/fragment/app/f0;

    move-result-object v0

    invoke-static {v0, v0}, LV0/c;->d(Landroidx/fragment/app/f0;Landroidx/fragment/app/f0;)Landroidx/fragment/app/a;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/sites/Sites;->mSitesSearchFragment:Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchFragment;

    invoke-virtual {v0, v1}, Landroidx/fragment/app/a;->j(Landroidx/fragment/app/Fragment;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v1}, Landroidx/fragment/app/a;->f(ZZ)I

    iput-object v2, p0, Lcom/sec/android/app/sbrowser/sites/Sites;->mSitesSearchFragment:Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchFragment;

    :cond_2
    invoke-static {}, Lcom/sec/android/app/sbrowser/sites/common/search/SitesSearchHandler;->getInstance()Lcom/sec/android/app/sbrowser/sites/common/search/SitesSearchHandler;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sec/android/app/sbrowser/sites/common/search/SitesSearchHandler;->removeObserver(Lcom/sec/android/app/sbrowser/sites/common/search/SitesSearchHandler$SitesSearchObserver;)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/sites/common/search/SitesSearchHandler;->getInstance()Lcom/sec/android/app/sbrowser/sites/common/search/SitesSearchHandler;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sites/Sites;->getToolBarTitleView()Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/Sites;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/sites/Sites;->notifyAppBarHeightChangedWithDelay()V

    return-void
.end method

.method public hideSoftKeyboard()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/Sites;->mSitesSearch:Lcom/sec/android/app/sbrowser/sites/SitesSearch;

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sites/SitesSearch;->hideSoftKeyboard()V

    return-void
.end method

.method public isAppbarExpanded()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/Sites;->mSitesHelper:Lcom/sec/android/app/sbrowser/sites/SitesHelper;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sites/SitesHelper;->isAppbarExpanded()Z

    move-result p0

    return p0
.end method

.method public isFocusedOnToolbar()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/Sites;->mSitesHelper:Lcom/sec/android/app/sbrowser/sites/SitesHelper;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sites/SitesHelper;->isFocusedOnToolbar()Z

    move-result p0

    return p0
.end method

.method public isMyPlacesWidget()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/sites/Sites;->mIsMyPlacesWidget:Z

    return p0
.end method

.method public isSearchDataEmpty()Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/Sites;->mSitesPage:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/Sites;->mSitesPage:Ljava/util/ArrayList;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/sbrowser/sites/SitesPage;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sites/SitesPage;->isItemsEmpty()Z

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    :goto_0
    return p0
.end method

.method public isSitesSearchViewVisible()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/Sites;->mSitesSearch:Lcom/sec/android/app/sbrowser/sites/SitesSearch;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sites/SitesSearch;->isSitesSearchViewVisible()Z

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
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/Sites;->mSitesPage:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/Sites;->mSitesPage:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/sites/SitesPage;

    invoke-virtual {v0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    :cond_0
    const/16 p2, 0x68

    if-ne p1, p2, :cond_1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/Sites;->mSitesSearch:Lcom/sec/android/app/sbrowser/sites/SitesSearch;

    invoke-virtual {p0, p3}, Lcom/sec/android/app/sbrowser/sites/SitesSearch;->onVoiceSearchResult(Landroid/content/Intent;)V

    :cond_1
    return-void
.end method

.method public onBackPressed()Z
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/Sites;->mSitesSearchFragment:Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchFragment;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchFragment;->isShowingActionMode()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/Sites;->mSitesSearchFragment:Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchFragment;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchFragment;->exitSearchActionMode()V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/Sites;->mSitesSearch:Lcom/sec/android/app/sbrowser/sites/SitesSearch;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sites/SitesSearch;->showKeyboard()V

    return v1

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sites/Sites;->isSitesSearchViewVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sites/Sites;->clearSitesSearchDeleteStatus()V

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/Sites;->mSitesSearchFragment:Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchFragment;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchFragment;->callNotifyDataSetChanged()V

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/Sites;->mSearchView:Landroid/view/View;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/Sites;->mSearchView:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/Sites;->mContext:Landroid/content/Context;

    check-cast v0, Lm/n;

    invoke-virtual {v0}, Lm/n;->getSupportActionBar()Lm/b;

    move-result-object v0

    invoke-virtual {v0, v1}, Lm/b;->n(Z)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/Sites;->mContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/Sites;->mSitesPage:Ljava/util/ArrayList;

    const/4 v2, 0x0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/Sites;->mSitesPage:Ljava/util/ArrayList;

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/sbrowser/sites/SitesPage;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sites/SitesPage;->onBackPressed()Z

    move-result p0

    if-eqz p0, :cond_4

    goto :goto_0

    :cond_4
    move v1, v2

    :goto_0
    return v1
.end method

.method public onChange(Lcom/sec/android/app/sbrowser/sites/common/search/SitesSearchHandler$MESSAGES;Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/Sites;->mSitesSearch:Lcom/sec/android/app/sbrowser/sites/SitesSearch;

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/sites/SitesSearch;->onChange(Lcom/sec/android/app/sbrowser/sites/common/search/SitesSearchHandler$MESSAGES;Ljava/lang/Object;)V

    return-void
.end method

.method public onChanged(ILjava/lang/Object;)V
    .locals 1

    new-instance p2, LG6/c;

    const/16 v0, 0xf

    invoke-direct {p2, p1, v0, p0}, LG6/c;-><init>(IILjava/lang/Object;)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSmartSearchThread;->getSmartSearchThread()Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSmartSearchThread;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSmartSearchThread;->runOnWorkerThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 6

    const-string v0, "Sites"

    const-string v1, "[onConfigurationChanged] Sites"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/sites/Sites;->mContext:Landroid/content/Context;

    move-object v2, v1

    check-cast v2, Landroid/app/Activity;

    if-nez v1, :cond_0

    return-void

    :cond_0
    iget v1, p0, Lcom/sec/android/app/sbrowser/sites/Sites;->mPrevOrientation:I

    iget v3, p1, Landroid/content/res/Configuration;->orientation:I

    if-eq v1, v3, :cond_1

    iput v3, p0, Lcom/sec/android/app/sbrowser/sites/Sites;->mPrevOrientation:I

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/sites/Sites;->mSitesHelper:Lcom/sec/android/app/sbrowser/sites/SitesHelper;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/sites/SitesHelper;->applyExtendAppBar()V

    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/sites/Sites;->mSitesHelper:Lcom/sec/android/app/sbrowser/sites/SitesHelper;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/sites/SitesHelper;->resetToolBarTitleViewHeight()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/sites/Sites;->notifyAppBarHeightChangedWithDelay()V

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    new-instance v3, Lcom/sec/android/app/sbrowser/sites/a;

    const/4 v4, 0x3

    invoke-direct {v3, p0, v4}, Lcom/sec/android/app/sbrowser/sites/a;-><init>(Lcom/sec/android/app/sbrowser/sites/Sites;I)V

    const-wide/16 v4, 0x64

    invoke-virtual {v1, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    invoke-static {v2}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->isInMultiWindowMode(Landroid/app/Activity;)Z

    move-result v1

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    invoke-virtual {v2}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v4, 0x0

    invoke-static {v1, v4}, Lcom/sec/android/app/sbrowser/common/utils/WindowUtil;->setFullScreen(Landroid/view/Window;Z)V

    goto :goto_1

    :cond_2
    invoke-static {v2}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->getDisplayCutoutMode(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_4

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1e

    if-lt v1, v4, :cond_3

    goto :goto_0

    :cond_3
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;->isFullScreenEnabled()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {v2}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-static {v1, v3}, Lcom/sec/android/app/sbrowser/common/utils/WindowUtil;->setFullScreen(Landroid/view/Window;Z)V

    goto :goto_1

    :cond_4
    :goto_0
    invoke-virtual {v2}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-static {v2}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->isSetFullScreenInPhoneLandscapeMode(Landroid/content/Context;)Z

    move-result v4

    invoke-static {v1, v4}, Lcom/sec/android/app/sbrowser/common/utils/WindowUtil;->setFullScreen(Landroid/view/Window;Z)V

    :cond_5
    :goto_1
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/sites/Sites;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/common/utils/LargeScreenUtil;->supportOldTabletLayout(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/sites/Sites;->mSitesWindowObserver:Lcom/sec/android/app/sbrowser/common/sites/SitesWindowObserver;

    if-eqz v1, :cond_6

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/common/sites/SitesWindowObserver;->updateWindowLayout()V

    :cond_6
    invoke-virtual {p1}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v1

    iget v4, p0, Lcom/sec/android/app/sbrowser/sites/Sites;->mLayoutDirection:I

    if-eq v1, v4, :cond_8

    invoke-virtual {v2}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    if-eqz v1, :cond_7

    invoke-virtual {v2}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    const v4, 0x7f0807b7

    invoke-virtual {v2, v4}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/ActionBar;->setHomeAsUpIndicator(Landroid/graphics/drawable/Drawable;)V

    :cond_7
    invoke-virtual {p1}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result p1

    iput p1, p0, Lcom/sec/android/app/sbrowser/sites/Sites;->mLayoutDirection:I

    :cond_8
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/Sites;->mConfirmDialog:Lcom/sec/android/app/sbrowser/sites/SitesConfirmDeleteDialog;

    if-eqz p1, :cond_9

    const-string p1, "[onConfigurationChanged] Recreate dialog"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/Sites;->mConfirmDialog:Lcom/sec/android/app/sbrowser/sites/SitesConfirmDeleteDialog;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/sites/SitesConfirmDeleteDialog;->getDialogMessage()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/Sites;->mConfirmDialog:Lcom/sec/android/app/sbrowser/sites/SitesConfirmDeleteDialog;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/sites/SitesConfirmDeleteDialog;->getDialogTitle()Ljava/lang/String;

    move-result-object v0

    if-eqz p1, :cond_9

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_9

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/sites/Sites;->mConfirmDialog:Lcom/sec/android/app/sbrowser/sites/SitesConfirmDeleteDialog;

    iget-object v2, v1, Lcom/sec/android/app/sbrowser/sites/SitesConfirmDeleteDialog;->mDialog:Lm/l;

    if-eqz v2, :cond_9

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/sites/SitesConfirmDeleteDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/sites/Sites;->mConfirmDialog:Lcom/sec/android/app/sbrowser/sites/SitesConfirmDeleteDialog;

    invoke-virtual {v1, v3}, Lcom/sec/android/app/sbrowser/sites/SitesConfirmDeleteDialog;->ignoreDismiss(Z)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/sites/Sites;->mConfirmDialog:Lcom/sec/android/app/sbrowser/sites/SitesConfirmDeleteDialog;

    invoke-virtual {v1}, Landroidx/fragment/app/u;->dismiss()V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/sites/Sites;->mConfirmDialog:Lcom/sec/android/app/sbrowser/sites/SitesConfirmDeleteDialog;

    invoke-virtual {p0, p1, v0}, Lcom/sec/android/app/sbrowser/sites/Sites;->showConfirmDialog(Ljava/lang/String;Ljava/lang/String;)V

    :cond_9
    return-void
.end method

.method public onDestroy()V
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/Sites;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pref_sites_timestamp"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/sync/SyncStateNotifier;->getInstance()Lcom/sec/android/app/sbrowser/common/sync/SyncStateNotifier;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sec/android/app/sbrowser/common/sync/SyncStateNotifier;->unregisterSyncStateObserver(Lcom/sec/android/app/sbrowser/common/sync/SyncStateNotifier$SyncStateObserver;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/Sites;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Landroid/app/Activity;->overridePendingTransition(II)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/Sites;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/utils/LargeScreenUtil;->supportOldTabletLayout(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/multiwindow/MultiWindowManager;->getInstance()Lcom/sec/android/app/sbrowser/common/multiwindow/MultiWindowManager;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/sites/Sites;->mContext:Landroid/content/Context;

    check-cast v1, Landroid/app/Activity;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/sites/Sites;->mSitesWindowObserver:Lcom/sec/android/app/sbrowser/common/sites/SitesWindowObserver;

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/sbrowser/common/multiwindow/MultiWindowManager;->removeObserver(Landroid/app/Activity;Lcom/sec/android/app/sbrowser/common/multiwindow/MultiWindowObserver;)V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/Sites;->mSitesHelper:Lcom/sec/android/app/sbrowser/sites/SitesHelper;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/sites/SitesHelper;->onDestroy()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/Sites;->mOnLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/Sites;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/sites/Sites;->mOnLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {v0, v2}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/sites/Sites;->mOnLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/Sites;->mSitesPage:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/sites/Sites;->mSitesPage:Ljava/util/ArrayList;

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/sites/Sites;->mContext:Landroid/content/Context;

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/sites/Sites;->mSitesSearchFragment:Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchFragment;

    invoke-static {}, Lcom/sec/android/app/sbrowser/sites/common/search/SitesSearchHandler;->getInstance()Lcom/sec/android/app/sbrowser/sites/common/search/SitesSearchHandler;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sec/android/app/sbrowser/sites/common/search/SitesSearchHandler;->removeObserver(Lcom/sec/android/app/sbrowser/sites/common/search/SitesSearchHandler$SitesSearchObserver;)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/sites/common/search/SitesSearchHandler;->getInstance()Lcom/sec/android/app/sbrowser/sites/common/search/SitesSearchHandler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/Sites;->mNoLayoutStatus:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->clear()V

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/sites/Sites;->mNoLayoutStatus:Landroid/util/SparseBooleanArray;

    const-string v0, "Sites"

    const-string v2, "onDestroy - Sites destroyed"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/Sites;->mSitesSearch:Lcom/sec/android/app/sbrowser/sites/SitesSearch;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/sites/SitesSearch;->onDestroy()V

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/sites/Sites;->mSitesSearch:Lcom/sec/android/app/sbrowser/sites/SitesSearch;

    :cond_2
    sget-object v0, Lcom/sec/android/app/sbrowser/sites/Sites;->sShowBookmarksController:Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;

    if-eqz v0, :cond_3

    sput-object v1, Lcom/sec/android/app/sbrowser/sites/Sites;->sShowBookmarksController:Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;

    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/Sites;->mBookmarkPage:Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/BookmarkPage;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/BookmarkPage;->onDestroy()V

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/sites/Sites;->mBookmarkPage:Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/BookmarkPage;

    :cond_4
    iput-object v1, p0, Lcom/sec/android/app/sbrowser/sites/Sites;->mSitesActivityListener:Lcom/sec/android/app/sbrowser/common/model/sites/SitesActivityListener;

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/sites/Sites;->mSitesActivityDelegate:Lcom/sec/android/app/sbrowser/common/model/sites/SitesActivityDelegate;

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/sites/Sites;->mConfirmDialog:Lcom/sec/android/app/sbrowser/sites/SitesConfirmDeleteDialog;

    return-void
.end method

.method public onDialogDismiss()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/Sites;->mSitesPage:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    iget v1, p0, Lcom/sec/android/app/sbrowser/sites/Sites;->mTabSelected:I

    if-ltz v1, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/Sites;->mSitesPage:Ljava/util/ArrayList;

    iget v1, p0, Lcom/sec/android/app/sbrowser/sites/Sites;->mTabSelected:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/Sites;->mSitesPage:Ljava/util/ArrayList;

    iget p0, p0, Lcom/sec/android/app/sbrowser/sites/Sites;->mTabSelected:I

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/sbrowser/sites/SitesPage;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sites/SitesPage;->onDialogDismissed()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onMultiWindowModeChanged(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/sites/Sites;->mIsInMultiWindowMode:Z

    return-void
.end method

.method public onOffsetChanged(Lcom/google/android/material/appbar/AppBarLayout;I)V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/Sites;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    const-string p0, "Sites"

    const-string p1, "[onOffsetChanged] mContext null"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/google/android/material/appbar/AppBarLayout;->getTotalScrollRange()I

    move-result p1

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v0

    int-to-float v0, v0

    int-to-float p1, p1

    div-float/2addr v0, p1

    const/high16 p1, 0x40000000    # 2.0f

    mul-float/2addr p1, v0

    const/high16 v1, 0x3fc00000    # 1.5f

    sub-float/2addr v1, p1

    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x0

    :cond_1
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/sites/Sites;->mSitesHelper:Lcom/sec/android/app/sbrowser/sites/SitesHelper;

    invoke-virtual {v2, p2, v1, v0}, Lcom/sec/android/app/sbrowser/sites/SitesHelper;->onOffsetChanged(IFF)V

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/sites/Sites;->mSitesPage:Ljava/util/ArrayList;

    const/high16 v0, 0x3f800000    # 1.0f

    if-eqz p2, :cond_4

    iget v1, p0, Lcom/sec/android/app/sbrowser/sites/Sites;->mTabSelected:I

    if-ltz v1, :cond_3

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-lt v1, p2, :cond_2

    goto :goto_0

    :cond_2
    iget-object p2, p0, Lcom/sec/android/app/sbrowser/sites/Sites;->mContext:Landroid/content/Context;

    check-cast p2, Landroid/app/Activity;

    invoke-static {p2}, Lcom/sec/android/app/sbrowser/common/utils/ImeUtil;->isKeyboardTurnedOn(Landroid/app/Activity;)Z

    move-result p2

    if-nez p2, :cond_4

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/sites/Sites;->mSitesPage:Ljava/util/ArrayList;

    iget v1, p0, Lcom/sec/android/app/sbrowser/sites/Sites;->mTabSelected:I

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/sec/android/app/sbrowser/sites/SitesPage;

    sub-float v1, p1, v0

    invoke-virtual {p2, v1}, Lcom/sec/android/app/sbrowser/sites/SitesPage;->setActionModeTitleAlpha(F)V

    goto :goto_1

    :cond_3
    :goto_0
    return-void

    :cond_4
    :goto_1
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sites/Sites;->isSitesSearchViewVisible()Z

    move-result p2

    if-eqz p2, :cond_5

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/sites/Sites;->mSitesSearchFragment:Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchFragment;

    if-eqz p2, :cond_5

    sub-float/2addr p1, v0

    invoke-virtual {p2, p1}, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchFragment;->setActionModeTitleAlpha(F)V

    :cond_5
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/sites/Sites;->notifyAppBarHeightChanged()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)V
    .locals 4

    if-eqz p1, :cond_1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f0b0b8a

    if-eq v0, v1, :cond_0

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f0b0b78

    if-eq v0, v1, :cond_0

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f0b0b6f

    if-ne v0, v1, :cond_1

    :cond_0
    const-string v0, "Sites"

    const-string v1, "onOptionsItemSelected for Search"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/sites/Sites;->onSearchOptionSelected()V

    :cond_1
    if-eqz p1, :cond_c

    const v0, 0x102002c

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    if-ne v0, v1, :cond_9

    iget p1, p0, Lcom/sec/android/app/sbrowser/sites/Sites;->mSelectedSitesPage:I

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/model/sites/SitePages;->getSitePages(I)Lcom/sec/android/app/sbrowser/common/model/sites/SitePages;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_8

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/sites/Sites;->mSitesHelper:Lcom/sec/android/app/sbrowser/sites/SitesHelper;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/sites/SitesHelper;->isSecretModeEnabled()Z

    move-result v1

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v1, :cond_4

    sget-object v1, Lcom/sec/android/app/sbrowser/sites/Sites$3;->$SwitchMap$com$sec$android$app$sbrowser$common$model$sites$SitePages:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v1, p1

    if-eq p1, v3, :cond_3

    if-eq p1, v2, :cond_2

    goto :goto_0

    :cond_2
    const-string v0, "3043"

    goto :goto_0

    :cond_3
    const-string v0, "3038"

    goto :goto_0

    :cond_4
    sget-object v1, Lcom/sec/android/app/sbrowser/sites/Sites$3;->$SwitchMap$com$sec$android$app$sbrowser$common$model$sites$SitePages:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v1, p1

    if-eq p1, v3, :cond_7

    if-eq p1, v2, :cond_6

    const/4 v1, 0x3

    if-eq p1, v1, :cond_5

    goto :goto_0

    :cond_5
    const-string v0, "3200"

    goto :goto_0

    :cond_6
    const-string v0, "3100"

    goto :goto_0

    :cond_7
    const-string v0, "3000"

    :cond_8
    :goto_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sites/Sites;->isSitesSearchViewVisible()Z

    move-result p1

    if-eqz p1, :cond_b

    const-string p1, "313"

    const-string v1, "3121"

    invoke-static {p1, v1}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_9
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/Sites;->mSitesHelper:Lcom/sec/android/app/sbrowser/sites/SitesHelper;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/sites/SitesHelper;->isSecretModeEnabled()Z

    move-result v0

    if-eqz v0, :cond_a

    sget-object v0, Lcom/sec/android/app/sbrowser/common/constants/logging/SALoggingConstantsMap;->EVENT_MAP_SECRET_SITES_MORE:Landroid/util/SparseArray;

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Ljava/lang/String;

    goto :goto_1

    :cond_a
    sget-object v0, Lcom/sec/android/app/sbrowser/common/constants/logging/SALoggingConstantsMap;->EVENT_MAP_SITES_MORE:Landroid/util/SparseArray;

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Ljava/lang/String;

    :cond_b
    :goto_1
    if-eqz v0, :cond_c

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sites/Sites;->getScreenID()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v0}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    :cond_c
    return-void
.end method

.method public onPause()V
    .locals 3

    const-string v0, "Sites"

    const-string v1, "onPause - Sites paused"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getInstance()Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;

    move-result-object v0

    iget v1, p0, Lcom/sec/android/app/sbrowser/sites/Sites;->mTabSelected:I

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->setCurrentTabForSiteScreen(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/Sites;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "onPause"

    const-string v2, "ON_PAUSE_CALLED"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sites/Sites;->hideSoftKeyboard()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/Sites;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/GEDUtils;->isGED()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/device/DesktopModeUtils;->isDesktopMode(Landroid/app/Activity;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/sites/Sites;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/common/device/TabletDeviceUtils;->isTabletLayout(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/sec/android/app/sbrowser/sites/Sites;->mIsInMultiWindowMode:Z

    if-nez v1, :cond_1

    iget p0, p0, Lcom/sec/android/app/sbrowser/sites/Sites;->mLayoutDirection:I

    const/4 v1, -0x1

    if-nez p0, :cond_0

    const p0, 0x7f010117

    invoke-virtual {v0, v1, p0}, Landroid/app/Activity;->overridePendingTransition(II)V

    goto :goto_0

    :cond_0
    const p0, 0x7f010116

    invoke-virtual {v0, v1, p0}, Landroid/app/Activity;->overridePendingTransition(II)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onResume()V
    .locals 2

    const-string v0, "Sites"

    const-string v1, "onResume - Sites Resumed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/Sites;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/utils/LargeScreenUtil;->supportOldTabletLayout(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/Sites;->mSitesWindowObserver:Lcom/sec/android/app/sbrowser/common/sites/SitesWindowObserver;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/sites/SitesWindowObserver;->updateWindowLayout()V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/Sites;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v1, "ON_PAUSE_CALLED"

    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/sites/Sites;->addRelevantFragments()V

    :cond_2
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    const-string p0, "tab_index"

    const/4 v0, 0x0

    invoke-virtual {p1, p0, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method public onSearchDelete()V
    .locals 3

    const-string v0, "Sites"

    const-string v1, "onSearchDelete"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/Sites;->mSitesPage:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/sbrowser/sites/SitesPage;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/sites/Sites;->mSitesSearchFragment:Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchFragment;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchFragment;->getSelectedSearchItemList()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/android/app/sbrowser/sites/SitesPage;->onSearchDelete(Ljava/util/concurrent/CopyOnWriteArrayList;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onSecureDataUnlocked()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/Sites;->mSitesPage:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/Sites;->mSitesPage:Ljava/util/ArrayList;

    iget p0, p0, Lcom/sec/android/app/sbrowser/sites/Sites;->mTabSelected:I

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/sbrowser/sites/SitesPage;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sites/SitesPage;->onSecureDataUnlocked()V

    :cond_0
    return-void
.end method

.method public selectAllSearchDelete(Z)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/Sites;->mSitesSearch:Lcom/sec/android/app/sbrowser/sites/SitesSearch;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/sites/SitesSearch;->selectAllSearchDelete(Z)V

    return-void
.end method

.method public setColorForActionBarIcon(ILandroid/view/Menu;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/Sites;->mSitesHelper:Lcom/sec/android/app/sbrowser/sites/SitesHelper;

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/sites/SitesHelper;->setColorForActionBarIcon(ILandroid/view/Menu;)V

    return-void
.end method

.method public setHighlightTextColor(Landroid/widget/EditText;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/Sites;->mSitesHelper:Lcom/sec/android/app/sbrowser/sites/SitesHelper;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/sites/SitesHelper;->setHighlightTextColor(Landroid/widget/EditText;)V

    return-void
.end method

.method public setIsInActionMode(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/sites/Sites;->mIsInActionMode:Z

    return-void
.end method

.method public setNoLayoutStatus(Lcom/sec/android/app/sbrowser/common/model/sites/SitePages;Z)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/Sites;->mNoLayoutStatus:Landroid/util/SparseBooleanArray;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/model/sites/SitePages;->getValue()I

    move-result p1

    invoke-virtual {p0, p1, p2}, Landroid/util/SparseBooleanArray;->append(IZ)V

    return-void
.end method

.method public setOnClickForSearchItem(Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem;)V
    .locals 2

    const-string v0, "Sites"

    const-string v1, "setOnClickForSearchItem"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/Sites;->mSitesPage:Ljava/util/ArrayList;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/sbrowser/sites/SitesPage;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/sites/SitesPage;->setOnClickForSearchItem(Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem;)V

    return-void
.end method

.method public setSearchDataForSync(Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem$TYPE;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/Sites;->mSitesSearch:Lcom/sec/android/app/sbrowser/sites/SitesSearch;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/sites/SitesSearch;->setSearchDataForSync(Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem$TYPE;)V

    :cond_0
    return-void
.end method

.method public setSearchEditText()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/Sites;->mSitesSearch:Lcom/sec/android/app/sbrowser/sites/SitesSearch;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sites/SitesSearch;->setSearchEditText()V

    return-void
.end method

.method public setSitesActivityDelegate(Lcom/sec/android/app/sbrowser/common/model/sites/SitesActivityDelegate;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/sites/Sites;->mSitesActivityDelegate:Lcom/sec/android/app/sbrowser/common/model/sites/SitesActivityDelegate;

    return-void
.end method

.method public setSitesActivityListener(Lcom/sec/android/app/sbrowser/common/model/sites/SitesActivityListener;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/sites/Sites;->mSitesActivityListener:Lcom/sec/android/app/sbrowser/common/model/sites/SitesActivityListener;

    return-void
.end method

.method public setSitesSearchDeleteStatus(Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem$TYPE;Z)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/Sites;->mSitesSearch:Lcom/sec/android/app/sbrowser/sites/SitesSearch;

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/sites/SitesSearch;->setSitesSearchDeleteStatus(Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem$TYPE;Z)V

    return-void
.end method

.method public showConfirmDialog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/Sites;->mConfirmDialog:Lcom/sec/android/app/sbrowser/sites/SitesConfirmDeleteDialog;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sec/android/app/sbrowser/sites/SitesConfirmDeleteDialog;

    invoke-direct {v0}, Lcom/sec/android/app/sbrowser/sites/SitesConfirmDeleteDialog;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/sites/Sites;->mConfirmDialog:Lcom/sec/android/app/sbrowser/sites/SitesConfirmDeleteDialog;

    new-instance v1, Lcom/sec/android/app/sbrowser/sites/Sites$2;

    invoke-direct {v1, p0}, Lcom/sec/android/app/sbrowser/sites/Sites$2;-><init>(Lcom/sec/android/app/sbrowser/sites/Sites;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/sites/SitesConfirmDeleteDialog;->setListener(Lcom/sec/android/app/sbrowser/sites/SitesConfirmDeleteDialog$EventListener;)V

    :cond_0
    const-string v0, "message"

    const-string v1, "title"

    invoke-static {v0, p1, v1, p2}, LB/e;->D(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/sites/Sites;->mConfirmDialog:Lcom/sec/android/app/sbrowser/sites/SitesConfirmDeleteDialog;

    invoke-virtual {p2, p1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/Sites;->mConfirmDialog:Lcom/sec/android/app/sbrowser/sites/SitesConfirmDeleteDialog;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/sites/SitesConfirmDeleteDialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_1

    return-void

    :cond_1
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/Sites;->mConfirmDialog:Lcom/sec/android/app/sbrowser/sites/SitesConfirmDeleteDialog;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/Sites;->mContext:Landroid/content/Context;

    check-cast p0, Landroidx/fragment/app/J;

    invoke-virtual {p1, p0}, Lcom/sec/android/app/sbrowser/sites/SitesConfirmDeleteDialog;->show(Landroidx/fragment/app/J;)V

    return-void
.end method

.method public showKeyboard()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/Sites;->mSitesSearch:Lcom/sec/android/app/sbrowser/sites/SitesSearch;

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sites/SitesSearch;->showKeyboard()V

    return-void
.end method

.method public updateInformativeAppBarInfo()V
    .locals 4

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sites/Sites;->isSitesSearchViewVisible()Z

    move-result v0

    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/sec/android/app/sbrowser/sites/Sites;->getCurrentTabInformativeTitle(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1}, Lcom/sec/android/app/sbrowser/sites/Sites;->getCurrentTabInformativeSubTitle(I)Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/sites/Sites;->mSitesHelper:Lcom/sec/android/app/sbrowser/sites/SitesHelper;

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/sites/Sites;->mIsInActionMode:Z

    invoke-virtual {v3, p0, v0, v2, v1}, Lcom/sec/android/app/sbrowser/sites/SitesHelper;->updateInformativeAppBarInfo(ZZLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method
