.class public Lcom/sec/android/app/sbrowser/multi_tab/MultiTabController;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/multi_tab/MultiTab;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/multi_tab/MultiTabController$BitmapLoader;
    }
.end annotation


# instance fields
.field protected mActivity:Landroid/app/Activity;

.field private mCallback:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabLaunchCallback;

.field private mIsMultiTabPopBackErrorOccurred:Z

.field private mMultiTabDelegate:Lcom/sec/android/app/sbrowser/multi_tab/MultiTab$MultiTabDelegate;

.field private mMultiTabEventListener:Lcom/sec/android/app/sbrowser/multi_tab/MultiTab$MultiTabEventListener;

.field mMultiTabView:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewKeyImpl;

.field private mMultiTabViewDelegate:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewDelegate;

.field private mTabEventListener:Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabEventListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    check-cast p1, Landroid/app/Activity;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabController;->mActivity:Landroid/app/Activity;

    return-void
.end method

.method public static bridge synthetic a(Lcom/sec/android/app/sbrowser/multi_tab/MultiTabController;)Lcom/sec/android/app/sbrowser/multi_tab/MultiTabLaunchCallback;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabController;->mCallback:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabLaunchCallback;

    return-object p0
.end method

.method public static bridge synthetic b(Lcom/sec/android/app/sbrowser/multi_tab/MultiTabController;)Lcom/sec/android/app/sbrowser/multi_tab/MultiTab$MultiTabDelegate;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabController;->mMultiTabDelegate:Lcom/sec/android/app/sbrowser/multi_tab/MultiTab$MultiTabDelegate;

    return-object p0
.end method

.method private backStackMultiTabFragment()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabController;->mMultiTabView:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewKeyImpl;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "MultiTabController"

    const-string v1, "backStackMultiTabFragment"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabController;->isInstanceStateSaved()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabController;->handleFragmentPopBackError()V

    return-void

    :cond_1
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabController;->getFragmentManager()Landroidx/fragment/app/f0;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/f0;->G()I

    move-result v1

    if-lez v1, :cond_2

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabController;->isFragmentStateSaved()Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "popBackStackImmediate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabController;->getFragmentManager()Landroidx/fragment/app/f0;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/fragment/app/f0;->T()Z

    :cond_2
    return-void
.end method

.method private beginFragmentTransaction()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabController;->mMultiTabView:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewKeyImpl;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabController;->getFragmentManager()Landroidx/fragment/app/f0;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->beginFragmentTransaction(Landroidx/fragment/app/f0;)V

    return-void
.end method

.method public static bridge synthetic c(Lcom/sec/android/app/sbrowser/multi_tab/MultiTabController;)Landroid/graphics/Bitmap;
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabController;->getBottombarBitmap()Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method private cleanAllBitmapCache()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabController;->mMultiTabDelegate:Lcom/sec/android/app/sbrowser/multi_tab/MultiTab$MultiTabDelegate;

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTab$MultiTabDelegate;->clearAllBitmapCache()V

    return-void
.end method

.method public static bridge synthetic d(Lcom/sec/android/app/sbrowser/multi_tab/MultiTabController;Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)Landroid/graphics/Bitmap;
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabController;->getFullscreenBitmapFromCache(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic e(Lcom/sec/android/app/sbrowser/multi_tab/MultiTabController;Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;Lcom/sec/android/app/sbrowser/multi_tab/h;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabController;->getFullscreenBitmapFromDiskCache(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback;)V

    return-void
.end method

.method public static bridge synthetic f(Lcom/sec/android/app/sbrowser/multi_tab/MultiTabController;Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)Landroid/graphics/Bitmap;
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabController;->getFullscreenBitmapFromMemCache(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic g(Lcom/sec/android/app/sbrowser/multi_tab/MultiTabController;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabController;->getModeFromOldPref()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getBottombar()Lcom/sec/android/app/sbrowser/toolbar/Bottombar;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabController;->mMultiTabDelegate:Lcom/sec/android/app/sbrowser/multi_tab/MultiTab$MultiTabDelegate;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTab$MultiTabDelegate;->getBottombar()Lcom/sec/android/app/sbrowser/toolbar/Bottombar;

    move-result-object p0

    return-object p0
.end method

.method private getBottombarBitmap()Landroid/graphics/Bitmap;
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabController;->getBottombar()Lcom/sec/android/app/sbrowser/toolbar/Bottombar;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/utils/ViewUtil;->captureBitmap(Landroid/view/View;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method private getFragmentManager()Landroidx/fragment/app/f0;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabController;->mActivity:Landroid/app/Activity;

    check-cast p0, Landroidx/fragment/app/J;

    invoke-virtual {p0}, Landroidx/fragment/app/J;->getSupportFragmentManager()Landroidx/fragment/app/f0;

    move-result-object p0

    return-object p0
.end method

.method private getFullscreenBitmapFromCache(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)Landroid/graphics/Bitmap;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabController;->mMultiTabDelegate:Lcom/sec/android/app/sbrowser/multi_tab/MultiTab$MultiTabDelegate;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTab$MultiTabDelegate;->getFullscreenBitmapFromCache(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method private getFullscreenBitmapFromDiskCache(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;",
            "Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback<",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabController;->mMultiTabDelegate:Lcom/sec/android/app/sbrowser/multi_tab/MultiTab$MultiTabDelegate;

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-interface {p0, p1, p2}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTab$MultiTabDelegate;->getFullscreenBitmapFromDiskCache(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback;)V

    return-void
.end method

.method private getFullscreenBitmapFromMemCache(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)Landroid/graphics/Bitmap;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabController;->mMultiTabDelegate:Lcom/sec/android/app/sbrowser/multi_tab/MultiTab$MultiTabDelegate;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTab$MultiTabDelegate;->getFullscreenBitmapFromMemCache(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method private getModeFromOldPref()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabController;->mActivity:Landroid/app/Activity;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabController;->getMultiTabModeFromOldPref(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getMultiTabModeFromOldPref(Landroid/content/Context;)Ljava/lang/String;
    .locals 7

    invoke-static {p0}, Lw2/F;->c(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f05000c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    const-string v2, "[getMultiTabModeFromOldPref] wasTabletLayout : "

    const-string v3, "MultiTabController"

    invoke-static {v2, v3, v1}, Landroidx/recyclerview/widget/P;->w(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v2, "mode_grid"

    if-eqz v1, :cond_0

    const-string p0, "[getMultiTabModeFromOldPref] tablet layout had only Grid view"

    invoke-static {v3, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    :cond_0
    const/4 v1, 0x0

    const-string v4, "pref_multi_tab_list_mode"

    invoke-interface {v0, v4, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "[getMultiTabModeFromOldPref] isListMode : "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v0, v4}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    const-string v4, "[getMultiTabModeFromOldPref] isListModePrefExist : "

    invoke-static {v4, v3, v0}, Landroidx/recyclerview/widget/P;->w(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v4, "mode_list"

    if-eqz v0, :cond_2

    if-eqz v1, :cond_1

    const-string p0, "[getMultiTabModeFromOldPref] was List view"

    invoke-static {v3, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v4

    :cond_1
    const-string p0, "[getMultiTabModeFromOldPref] was Card view"

    invoke-static {v3, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string p0, "mode_card"

    return-object p0

    :cond_2
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f050005

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[getMultiTabModeFromOldPref] isTabletLayout : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getInstance()Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->isFirstTimeUseListModeOfTabManager()Z

    move-result v0

    const-string v1, "[getMultiTabModeFromOldPref] isFirstTimeUseListModeOfTabManager : "

    invoke-static {v1, v3, v0}, Landroidx/recyclerview/widget/P;->w(Ljava/lang/String;Ljava/lang/String;Z)V

    if-eqz p0, :cond_3

    if-eqz v0, :cond_3

    const-string p0, "[getMultiTabModeFromOldPref] first shown in tablet"

    invoke-static {v3, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    :cond_3
    return-object v4
.end method

.method private getMultiTabViewDelegate()Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewDelegate;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabController;->mMultiTabViewDelegate:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewDelegate;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabController$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabController$1;-><init>(Lcom/sec/android/app/sbrowser/multi_tab/MultiTabController;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabController;->mMultiTabViewDelegate:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewDelegate;

    return-object v0
.end method

.method private getThumbnailBitmapFromCache(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;Z)Landroid/graphics/Bitmap;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabController;->mMultiTabDelegate:Lcom/sec/android/app/sbrowser/multi_tab/MultiTab$MultiTabDelegate;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-interface {p0, p1, p2}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTab$MultiTabDelegate;->getThumbnailBitmapFromCache(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;Z)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method private getThumbnailBitmapFromMemCache(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;Z)Landroid/graphics/Bitmap;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabController;->mMultiTabDelegate:Lcom/sec/android/app/sbrowser/multi_tab/MultiTab$MultiTabDelegate;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-interface {p0, p1, p2}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTab$MultiTabDelegate;->getThumbnailBitmapFromMemCache(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;Z)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method private getToolbar()Lcom/sec/android/app/sbrowser/toolbar/Toolbar;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabController;->mMultiTabDelegate:Lcom/sec/android/app/sbrowser/multi_tab/MultiTab$MultiTabDelegate;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTab$MultiTabDelegate;->getToolbar()Lcom/sec/android/app/sbrowser/toolbar/Toolbar;

    move-result-object p0

    return-object p0
.end method

.method private getToolbarBitmap()Landroid/graphics/Bitmap;
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabController;->getToolbar()Lcom/sec/android/app/sbrowser/toolbar/Toolbar;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/Toolbar;->captureToolbarBitmap()Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method private getToolbarHeight()I
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabController;->getToolbar()Lcom/sec/android/app/sbrowser/toolbar/Toolbar;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/Toolbar;->getVisibleHeight()I

    move-result p0

    return p0
.end method

.method public static bridge synthetic h(Lcom/sec/android/app/sbrowser/multi_tab/MultiTabController;Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;Z)Landroid/graphics/Bitmap;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabController;->getThumbnailBitmapFromCache(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;Z)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method private handleFragmentPopBackError()V
    .locals 2

    const-string v0, "MultiTabController"

    const-string v1, "MultiTab PopBack Error Occurred"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabController;->mMultiTabEventListener:Lcom/sec/android/app/sbrowser/multi_tab/MultiTab$MultiTabEventListener;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabController;->mMultiTabDelegate:Lcom/sec/android/app/sbrowser/multi_tab/MultiTab$MultiTabDelegate;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTab$MultiTabDelegate;->getTabManager()Lcom/sec/android/app/sbrowser/tab_manager/TabManager;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabController;->mIsMultiTabPopBackErrorOccurred:Z

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabController;->mMultiTabDelegate:Lcom/sec/android/app/sbrowser/multi_tab/MultiTab$MultiTabDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTab$MultiTabDelegate;->getTabManager()Lcom/sec/android/app/sbrowser/tab_manager/TabManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->getCurrentTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabController;->isValidTab(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)Z

    move-result p0

    if-eqz p0, :cond_2

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->show()V

    :cond_2
    :goto_0
    return-void
.end method

.method public static bridge synthetic i(Lcom/sec/android/app/sbrowser/multi_tab/MultiTabController;Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;Z)Landroid/graphics/Bitmap;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabController;->getThumbnailBitmapFromMemCache(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;Z)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method private isFragmentStateSaved()Z
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabController;->getFragmentManager()Landroidx/fragment/app/f0;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/fragment/app/f0;->P()Z

    move-result p0

    return p0
.end method

.method private isInstanceStateSaved()Z
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabController;->mMultiTabDelegate:Lcom/sec/android/app/sbrowser/multi_tab/MultiTab$MultiTabDelegate;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabController;->mMultiTabView:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewKeyImpl;

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTab$MultiTabDelegate;->isInstanceStateSaved()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabController;->mMultiTabView:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewKeyImpl;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->isMultiTabOutroAnimating()Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 v1, 0x1

    :cond_1
    :goto_0
    return v1
.end method

.method private isValidTab(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)Z
    .locals 0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isClosed()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static bridge synthetic j(Lcom/sec/android/app/sbrowser/multi_tab/MultiTabController;)Landroid/graphics/Bitmap;
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabController;->getToolbarBitmap()Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic k(Lcom/sec/android/app/sbrowser/multi_tab/MultiTabController;)I
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabController;->getToolbarHeight()I

    move-result p0

    return p0
.end method

.method public static bridge synthetic l(Lcom/sec/android/app/sbrowser/multi_tab/MultiTabController;Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabController;->isValidTab(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic m(Lcom/sec/android/app/sbrowser/multi_tab/MultiTabController;Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabController;->onBitmapReceived(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)V

    return-void
.end method

.method public static bridge synthetic n(Lcom/sec/android/app/sbrowser/multi_tab/MultiTabController;Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabController;->onDidChangeThemeColor(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;I)V

    return-void
.end method

.method public static bridge synthetic o(Lcom/sec/android/app/sbrowser/multi_tab/MultiTabController;Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabController;->onFaviconUpdated(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)V

    return-void
.end method

.method private onBitmapReceived(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)V
    .locals 7

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onBitmapReceived - tab id : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getTabId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MultiTabController"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabController;->isMultiTabShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabController;->mMultiTabView:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewKeyImpl;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->isMultiTabOutroAnimating()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabController;->getThumbnailBitmapFromCache(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;Z)Landroid/graphics/Bitmap;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {p0, p1, v3}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabController;->getThumbnailBitmapFromCache(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;Z)Landroid/graphics/Bitmap;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "bitmap is null : "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-nez v4, :cond_0

    move v0, v3

    :cond_0
    invoke-static {v1, v5, v0}, Lt/b;->z(Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabController;->mMultiTabView:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewKeyImpl;

    invoke-virtual {p0, p1, v2, v4}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->notifyUpdatedBitmap(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    :cond_1
    return-void
.end method

.method private onDidChangeThemeColor(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onDidChangeThemeColor in MultiTab : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getTabId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MultiTabController"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabController;->isMultiTabShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabController;->mMultiTabView:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewKeyImpl;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->isMultiTabOutroAnimating()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabController;->mMultiTabView:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewKeyImpl;

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->notifyUpdatedThemeColor(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;I)V

    :cond_0
    return-void
.end method

.method private onFaviconUpdated(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)V
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabController;->isMultiTabShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabController;->mMultiTabView:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewKeyImpl;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->isMultiTabOutroAnimating()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabController;->mMultiTabView:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewKeyImpl;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->notifyUpdatedFavicon(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)V

    :cond_0
    return-void
.end method

.method private onLoadFinished(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)V
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabController;->isMultiTabShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabController;->mMultiTabView:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewKeyImpl;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->isMultiTabOutroAnimating()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabController;->mMultiTabView:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewKeyImpl;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->notifyUpdatedTitle(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabController;->mMultiTabView:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewKeyImpl;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->notifyUpdatedUrl(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)V

    :cond_0
    return-void
.end method

.method private onTabThumbnailCreated(ILandroid/graphics/Bitmap;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabController;->mMultiTabView:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewKeyImpl;

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabView;->onTabThumbnailCreated(ILandroid/graphics/Bitmap;)V

    return-void
.end method

.method private onTitleUpdated(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method private onToggleFullscreenModeForTab(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;Z)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onToggleFullscreenModeForTab in MultiTab : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getTabId()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "MultiTabController"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabController;->isMultiTabShowing()Z

    move-result p1

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabController;->finishMultiTab()V

    :cond_0
    return-void
.end method

.method private onUrlUpdated(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)V
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabController;->isMultiTabShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabController;->mMultiTabView:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewKeyImpl;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->isMultiTabOutroAnimating()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabController;->mMultiTabView:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewKeyImpl;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->notifyUpdatedUrl(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)V

    :cond_0
    return-void
.end method

.method private onViewDestroy()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabController;->mMultiTabView:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewKeyImpl;

    return-void
.end method

.method public static bridge synthetic p(Lcom/sec/android/app/sbrowser/multi_tab/MultiTabController;Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabController;->onLoadFinished(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)V

    return-void
.end method

.method public static bridge synthetic q(Lcom/sec/android/app/sbrowser/multi_tab/MultiTabController;ILandroid/graphics/Bitmap;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabController;->onTabThumbnailCreated(ILandroid/graphics/Bitmap;)V

    return-void
.end method

.method public static bridge synthetic r(Lcom/sec/android/app/sbrowser/multi_tab/MultiTabController;Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabController;->onTitleUpdated(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;Ljava/lang/String;)V

    return-void
.end method

.method private registerSBrowserTabsCallback()V
    .locals 3

    new-instance v0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabController$2;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabController$2;-><init>(Lcom/sec/android/app/sbrowser/multi_tab/MultiTabController;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabController;->mTabEventListener:Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabEventListener;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabController;->getTabManager()Lcom/sec/android/app/sbrowser/tab_manager/TabManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->getAllTabList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabController;->mTabEventListener:Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabEventListener;

    invoke-interface {v1, v2}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;->addEventListener(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabEventListener;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static bridge synthetic s(Lcom/sec/android/app/sbrowser/multi_tab/MultiTabController;Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabController;->onToggleFullscreenModeForTab(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;Z)V

    return-void
.end method

.method private sendCloseAllLoggingData()V
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabController;->isSecretModeEnabled()Z

    move-result p0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/multi_tab/MultiTabLoggingHelper;->getScreenID(Z)Ljava/lang/String;

    move-result-object v0

    if-eqz p0, :cond_0

    const-string p0, "4111"

    goto :goto_0

    :cond_0
    const-string p0, "4009"

    :goto_0
    invoke-static {v0, p0}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private setThumbnailInView(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback;Landroid/os/Handler;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;",
            "Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback<",
            "Landroid/graphics/Bitmap;",
            ">;",
            "Landroid/os/Handler;",
            ")V"
        }
    .end annotation

    new-instance v0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabController$BitmapLoader;

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabController$BitmapLoader;-><init>(Lcom/sec/android/app/sbrowser/multi_tab/MultiTabController;Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback;Landroid/os/Handler;I)V

    return-void
.end method

.method public static bridge synthetic t(Lcom/sec/android/app/sbrowser/multi_tab/MultiTabController;Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabController;->onUrlUpdated(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)V

    return-void
.end method

.method public static bridge synthetic u(Lcom/sec/android/app/sbrowser/multi_tab/MultiTabController;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabController;->onViewDestroy()V

    return-void
.end method

.method private unregisterSBrowserTabsCallback()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabController;->mTabEventListener:Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabEventListener;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabController;->getTabManager()Lcom/sec/android/app/sbrowser/tab_manager/TabManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->getAllTabList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabController;->mTabEventListener:Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabEventListener;

    invoke-interface {v1, v2}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;->removeEventListener(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabEventListener;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabController;->mTabEventListener:Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabEventListener;

    return-void
.end method

.method public static bridge synthetic v(Lcom/sec/android/app/sbrowser/multi_tab/MultiTabController;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabController;->sendCloseAllLoggingData()V

    return-void
.end method

.method public static bridge synthetic w(Lcom/sec/android/app/sbrowser/multi_tab/MultiTabController;Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback;Landroid/os/Handler;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabController;->setThumbnailInView(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback;Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public applySecretModeStatus(Z)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabController;->mMultiTabView:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewKeyImpl;

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabView;->applySecretModeStatus(Z)V

    return-void
.end method

.method public bringToFront()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabController;->mMultiTabView:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewKeyImpl;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabController;->mMultiTabView:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewKeyImpl;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->bringToFront()V

    :cond_1
    :goto_0
    return-void
.end method

.method public cancelMoveMode()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabController;->mMultiTabView:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewKeyImpl;

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl;->cancelMoveGroup()V

    return-void
.end method

.method public closeAllTabs()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabController;->mMultiTabView:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewKeyImpl;

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabView;->closeAllTab()V

    return-void
.end method

.method public closeGroupList()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabController;->mMultiTabView:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewKeyImpl;

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabView;->closeGroupList()V

    return-void
.end method

.method public createMultiTabView()V
    .locals 1

    new-instance v0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewKeyImpl;

    invoke-direct {v0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewKeyImpl;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabController;->mMultiTabView:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewKeyImpl;

    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabController;->mMultiTabView:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewKeyImpl;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewKeyImpl;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public exitEditMode()V
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabController;->mMultiTabView:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewKeyImpl;

    if-nez p0, :cond_0

    const-string p0, "MultiTabController"

    const-string v0, "[exitEditMode] mMultiTabView is null"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabView;->exitEditMode()V

    return-void
.end method

.method public exitSearchMode()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabController;->mMultiTabView:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewKeyImpl;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl;->exitSearchMode()V

    :cond_0
    return-void
.end method

.method public filterOptionsMenu(Landroid/view/Menu;)V
    .locals 9

    const-string v0, "[filterOptionsMenu]"

    const-string v1, "MultiTabController"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_19

    invoke-interface {p1}, Landroid/view/Menu;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_c

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabController;->mMultiTabView:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewKeyImpl;

    if-nez v0, :cond_1

    const-string p0, "[filterOptionsMenu] null mMultiTabView"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl;->isSyncedTabsMode()Z

    move-result v0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabController;->isSecretModeEnabled()Z

    move-result v1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabController;->mMultiTabView:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewKeyImpl;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->isGroupListShowing()Z

    move-result v2

    const v3, 0x7f0b0c4d

    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v3, :cond_3

    if-nez v1, :cond_2

    if-nez v2, :cond_2

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabController;->mActivity:Landroid/app/Activity;

    invoke-static {v6}, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncUtility;->needToShowTabSyncOption(Landroid/app/Activity;)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DebugSettings;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DebugSettings;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/app/sbrowser/common/device/DebugSettings;->isTabManagerNewGuiEnabled()Z

    move-result v6

    if-nez v6, :cond_2

    move v6, v4

    goto :goto_0

    :cond_2
    move v6, v5

    :goto_0
    invoke-interface {v3, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_3
    const v3, 0x7f0b0deb

    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    if-eqz v3, :cond_5

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabController;->getTabManager()Lcom/sec/android/app/sbrowser/tab_manager/TabManager;

    move-result-object v6

    if-eqz v6, :cond_5

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabController;->isSecretModeEnabled()Z

    move-result v7

    if-nez v7, :cond_4

    invoke-virtual {v6}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->hasClosedTab()Z

    move-result v6

    if-eqz v6, :cond_4

    move v6, v4

    goto :goto_1

    :cond_4
    move v6, v5

    :goto_1
    invoke-interface {v3, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_5
    const v3, 0x7f0b0acd

    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    if-eqz v3, :cond_8

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlUtil;->isParentalControlEnabled()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {v3, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_3

    :cond_6
    if-nez v0, :cond_7

    if-nez v2, :cond_7

    move v6, v4

    goto :goto_2

    :cond_7
    move v6, v5

    :goto_2
    invoke-interface {v3, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_8
    :goto_3
    const v3, 0x7f0b02b9

    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    if-eqz v3, :cond_a

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabController;->mMultiTabDelegate:Lcom/sec/android/app/sbrowser/multi_tab/MultiTab$MultiTabDelegate;

    if-eqz v6, :cond_a

    invoke-interface {v6}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTab$MultiTabDelegate;->getTabManager()Lcom/sec/android/app/sbrowser/tab_manager/TabManager;

    move-result-object v6

    if-eqz v6, :cond_a

    if-nez v0, :cond_9

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabController;->mMultiTabView:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewKeyImpl;

    invoke-virtual {v6}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->hasClosableTabInCurrentOrChildGroup()Z

    move-result v6

    if-eqz v6, :cond_9

    move v6, v4

    goto :goto_4

    :cond_9
    move v6, v5

    :goto_4
    invoke-interface {v3, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_a
    iget-object v3, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabController;->mMultiTabDelegate:Lcom/sec/android/app/sbrowser/multi_tab/MultiTab$MultiTabDelegate;

    if-eqz v3, :cond_b

    invoke-interface {v3}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTab$MultiTabDelegate;->getTabManager()Lcom/sec/android/app/sbrowser/tab_manager/TabManager;

    move-result-object v3

    if-eqz v3, :cond_b

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabController;->mMultiTabDelegate:Lcom/sec/android/app/sbrowser/multi_tab/MultiTab$MultiTabDelegate;

    invoke-interface {v3}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTab$MultiTabDelegate;->getTabManager()Lcom/sec/android/app/sbrowser/tab_manager/TabManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->getUngroupedTabCount()I

    move-result v3

    goto :goto_5

    :cond_b
    move v3, v5

    :goto_5
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/constants/multi_tab/MultiTabConstants;->isGroupFeatureEnabled()Z

    move-result v6

    const v7, 0x7f0b0562

    invoke-interface {p1, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v7

    if-eqz v7, :cond_d

    if-nez v0, :cond_c

    if-eqz v6, :cond_c

    if-nez v1, :cond_c

    if-nez v2, :cond_c

    if-lez v3, :cond_c

    move v8, v4

    goto :goto_6

    :cond_c
    move v8, v5

    :goto_6
    invoke-interface {v7, v8}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_d
    const v7, 0x7f0b00a2

    invoke-interface {p1, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v7

    if-eqz v7, :cond_f

    if-eqz v6, :cond_e

    if-nez v1, :cond_e

    if-eqz v2, :cond_e

    if-lez v3, :cond_e

    move v3, v4

    goto :goto_7

    :cond_e
    move v3, v5

    :goto_7
    invoke-interface {v7, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_f
    const v3, 0x7f0b09eb

    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    if-eqz v3, :cond_11

    if-eqz v6, :cond_10

    if-nez v1, :cond_10

    if-eqz v2, :cond_10

    move v6, v4

    goto :goto_8

    :cond_10
    move v6, v5

    :goto_8
    invoke-interface {v3, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_11
    const v3, 0x7f0b0105

    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    if-eqz v3, :cond_13

    if-nez v0, :cond_12

    if-nez v1, :cond_12

    move v1, v4

    goto :goto_9

    :cond_12
    move v1, v5

    :goto_9
    invoke-interface {v3, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_13
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabController;->mMultiTabView:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewKeyImpl;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->isNoTabsShowing()Z

    move-result p0

    const v1, 0x7f0b048c

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    const v3, 0x7f0b0233

    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    const v6, 0x7f0b09e7

    invoke-interface {p1, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    if-eqz v1, :cond_15

    if-nez p0, :cond_14

    if-nez v0, :cond_14

    move v6, v4

    goto :goto_a

    :cond_14
    move v6, v5

    :goto_a
    invoke-interface {v1, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_15
    if-eqz v3, :cond_17

    if-nez p0, :cond_16

    if-nez v2, :cond_16

    if-nez v0, :cond_16

    goto :goto_b

    :cond_16
    move v4, v5

    :goto_b
    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_17
    if-eqz p1, :cond_18

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_18
    return-void

    :cond_19
    :goto_c
    const-string p0, "[filterOptionsMenu] invalid menu"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public finishMultiTab()V
    .locals 2

    const-string v0, "MultiTabController"

    const-string v1, "finishMultiTab"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabController;->mIsMultiTabPopBackErrorOccurred:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabController;->unregisterSBrowserTabsCallback()V

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabController;->backStackMultiTabFragment()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabController;->cleanAllBitmapCache()V

    return-void
.end method

.method public getMode()Ljava/lang/String;
    .locals 0

    invoke-static {}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabSettings;->getViewType()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getMultiTabNavigationBarState()Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil$NavigationBarState;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabController;->mMultiTabView:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewKeyImpl;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabController;->isMultiTabShowing()Z

    move-result v0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabController;->mMultiTabView:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewKeyImpl;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->getCurrentViewState()Lcom/sec/android/app/sbrowser/common/constants/multi_tab/MultiTabConstants$ViewState;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->getMultiTabNavigationBarState(ZLcom/sec/android/app/sbrowser/common/constants/multi_tab/MultiTabConstants$ViewState;)Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil$NavigationBarState;

    move-result-object p0

    return-object p0
.end method

.method public getTabManager()Lcom/sec/android/app/sbrowser/tab_manager/TabManager;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabController;->mMultiTabDelegate:Lcom/sec/android/app/sbrowser/multi_tab/MultiTab$MultiTabDelegate;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTab$MultiTabDelegate;->getTabManager()Lcom/sec/android/app/sbrowser/tab_manager/TabManager;

    move-result-object p0

    return-object p0
.end method

.method public isEditMode()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabController;->mMultiTabView:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewKeyImpl;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl;->isEditMode()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isGroupListShowing()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabController;->mMultiTabView:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewKeyImpl;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->isGroupListShowing()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isMoveMode()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabController;->mMultiTabView:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewKeyImpl;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl;->isMoveMode()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isMultiTabAnimating()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabController;->mMultiTabView:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewKeyImpl;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->isMultiTabAnimating()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isMultiTabClosing()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabController;->mMultiTabView:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewKeyImpl;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->isMultiTabOutroAnimating()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isMultiTabModeChanging()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabController;->mMultiTabView:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewKeyImpl;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->isMultiTabModeChanging()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isMultiTabPopBackErrorOccurred()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabController;->mIsMultiTabPopBackErrorOccurred:Z

    return p0
.end method

.method public isMultiTabShowing()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabController;->mMultiTabView:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewKeyImpl;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->isMultiTabShowing()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isSearchBarShowing()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabController;->mMultiTabView:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewKeyImpl;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl;->isSearchBarShowing()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isSecretModeEnabled()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabController;->mActivity:Landroid/app/Activity;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;->isSecretModeEnabled(Landroid/app/Activity;)Z

    move-result p0

    return p0
.end method

.method public isTabDragging()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabController;->mMultiTabView:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewKeyImpl;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabView;->isTabDragging()Z

    move-result p0

    return p0
.end method

.method public launchMultiTab(Lcom/sec/android/app/sbrowser/multi_tab/MultiTabLaunchCallback;)V
    .locals 2
    .param p1    # Lcom/sec/android/app/sbrowser/multi_tab/MultiTabLaunchCallback;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[launchMultiTab] callback: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MultiTabController"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabController;->mCallback:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabLaunchCallback;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabController;->createMultiTabView()V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabController;->mMultiTabView:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewKeyImpl;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabController;->mActivity:Landroid/app/Activity;

    invoke-virtual {p1, v0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->setContext(Landroid/content/Context;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabController;->mMultiTabView:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewKeyImpl;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabController;->getMultiTabViewDelegate()Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewDelegate;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->setViewDelegate(Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewDelegate;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabController;->mMultiTabView:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewKeyImpl;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabController;->mMultiTabEventListener:Lcom/sec/android/app/sbrowser/multi_tab/MultiTab$MultiTabEventListener;

    invoke-virtual {p1, v0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->setListener(Lcom/sec/android/app/sbrowser/multi_tab/MultiTab$MultiTabEventListener;)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabController;->beginFragmentTransaction()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabController;->registerSBrowserTabsCallback()V

    return-void
.end method

.method public notifyAllTabsRemoved()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabController;->mMultiTabView:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewKeyImpl;

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->notifyAllTabsRemoved()V

    return-void
.end method

.method public notifyTabAdded(I)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabController;->mMultiTabView:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewKeyImpl;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl;->isNewTabSelected()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabController;->getTabManager()Lcom/sec/android/app/sbrowser/tab_manager/TabManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->getTabById(I)Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabController;->isValidTab(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)Z

    move-result v0

    if-nez v0, :cond_2

    return-void

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabController;->mTabEventListener:Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabEventListener;

    if-nez v0, :cond_3

    return-void

    :cond_3
    invoke-interface {p1, v0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;->addEventListener(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabEventListener;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabController;->mMultiTabView:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewKeyImpl;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabView;->notifyTabAdded(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)V

    return-void
.end method

.method public notifyTabGroupNameChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabController;->mMultiTabView:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewKeyImpl;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabView;->changeGroupName(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabController;->isSearchBarShowing()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabController;->mMultiTabView:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewKeyImpl;

    iget-boolean p1, p1, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl;->mIsEditModeFromSearch:Z

    if-eqz p1, :cond_2

    :cond_1
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabController;->mMultiTabView:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewKeyImpl;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabView;->updateTabDataToSamsungSearch()V

    :cond_2
    return-void
.end method

.method public onCloseTabRequest(I)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabController;->mMultiTabView:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewKeyImpl;

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->onCloseTabRequest(I)V

    return-void
.end method

.method public onMultiTabVoiceRecognizerResult(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabController;->mMultiTabView:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewKeyImpl;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl;->onMultiTabVoiceRecognizerResult(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabController;->mMultiTabView:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewKeyImpl;

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl;->onWindowFocusChanged(Z)V

    return-void
.end method

.method public openNewTab()V
    .locals 2

    const-string v0, "MultiTabController"

    const-string v1, "[openNewTab]"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabController;->mMultiTabView:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewKeyImpl;

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabView;->openNewTab()V

    return-void
.end method

.method public removeSyncedDevice()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabController;->mMultiTabView:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewKeyImpl;

    if-eqz p0, :cond_1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl;->mTabSyncUi:Lcom/sec/android/app/sbrowser/tab_sync/TabSyncActivityUI;

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    check-cast p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView;->removeSyncedDevice()V

    :cond_1
    :goto_0
    return-void
.end method

.method public reopenClosedTab()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabController;->mMultiTabView:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewKeyImpl;

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabView;->reopenClosedTab()V

    return-void
.end method

.method public setDelegate(Lcom/sec/android/app/sbrowser/multi_tab/MultiTab$MultiTabDelegate;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabController;->mMultiTabDelegate:Lcom/sec/android/app/sbrowser/multi_tab/MultiTab$MultiTabDelegate;

    return-void
.end method

.method public setListener(Lcom/sec/android/app/sbrowser/multi_tab/MultiTab$MultiTabEventListener;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabController;->mMultiTabEventListener:Lcom/sec/android/app/sbrowser/multi_tab/MultiTab$MultiTabEventListener;

    return-void
.end method

.method public setMultiTabNewTabSelected(Z)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabController;->mMultiTabView:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewKeyImpl;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl;->setNewTabSelected(Z)V

    :cond_0
    return-void
.end method

.method public shouldShowMenu()Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabController;->mMultiTabView:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewKeyImpl;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->isFirstIntroAnimation()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabController;->mMultiTabView:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewKeyImpl;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->isMultiTabAnimating()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public showNoTabs()V
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabController;->mMultiTabView:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewKeyImpl;

    if-nez p0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabView;->handleNoTabs(Z)V

    return-void
.end method

.method public showReopenClosedTabMenu(Landroid/view/Menu;)V
    .locals 2

    const v0, 0x7f0b0deb

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabController;->getTabManager()Lcom/sec/android/app/sbrowser/tab_manager/TabManager;

    move-result-object v0

    if-eqz p1, :cond_1

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabController;->mMultiTabView:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewKeyImpl;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl;->isSyncedTabsMode()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabController;->isSecretModeEnabled()Z

    move-result p0

    if-nez p0, :cond_0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->hasClosedTab()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-interface {p1, p0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_1
    return-void
.end method

.method public startIntroAnimIfDelayed()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabController;->mMultiTabView:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewKeyImpl;

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabView;->startIntroAnimIfDelayed()V

    return-void
.end method

.method public startOutroAnimation(Z)V
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabController;->mMultiTabView:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewKeyImpl;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabController;->mMultiTabDelegate:Lcom/sec/android/app/sbrowser/multi_tab/MultiTab$MultiTabDelegate;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTab$MultiTabDelegate;->getTabManager()Lcom/sec/android/app/sbrowser/tab_manager/TabManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->getCurrentTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object v1

    new-instance v2, Lcom/sec/android/app/sbrowser/multi_tab/a;

    const/4 v3, 0x1

    invoke-direct {v2, v3, p0}, Lcom/sec/android/app/sbrowser/multi_tab/a;-><init>(ILjava/lang/Object;)V

    const/4 p0, 0x0

    invoke-virtual {v0, p1, v1, p0, v2}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->startOutroAnimation(ZLcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public switchMode(Ljava/lang/String;)V
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabController;->mMultiTabView:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewKeyImpl;

    if-nez p0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl;->switchViewMode(Ljava/lang/String;Z)V

    return-void
.end method

.method public toggleSecretMode()V
    .locals 4

    const-string v0, "[onClickSecretMode]"

    const-string v1, "MultiTabController"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabController;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;->getInstance(Landroid/app/Activity;)Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;->canUseSecretMode()Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_1

    const-string v0, "[onClickSecretMode] cannot use secretmode : Return!"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabController;->mActivity:Landroid/app/Activity;

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlUtil;->isParentalControlEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f140891

    goto :goto_0

    :cond_0
    const v0, 0x7f141090

    :goto_0
    invoke-static {p0, v0, v3}, Lcom/sec/android/app/sbrowser/common/utils/SnackbarUtil;->show(Landroid/app/Activity;II)V

    return-void

    :cond_1
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabController;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, v2, v3}, Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;->migrateDataIfRequired(Landroid/app/Activity;Z)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string p0, "[onClickSecretMode] startSdpMigration : Return!"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabController;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;->toggleSecretMode(Landroid/app/Activity;)V

    new-instance v1, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabController$3;

    invoke-direct {v1, p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabController$3;-><init>(Lcom/sec/android/app/sbrowser/multi_tab/MultiTabController;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;->setAuthListener(Lcom/sec/android/app/sbrowser/common/model/secret_mode/SecretModeAuthListener;)V

    return-void
.end method

.method public updateMultiTabView()V
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabController;->mMultiTabView:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewKeyImpl;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabView;->updateTabs(Z)V

    return-void
.end method
