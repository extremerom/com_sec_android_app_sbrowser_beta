.class public Lcom/sec/android/app/sbrowser/omnibox/SearchEngineButton;
.super Lcom/sec/android/app/sbrowser/omnibox/LocationBarButton;
.source "SourceFile"


# instance fields
.field private mSearchEngineButtonLayout:Landroid/widget/LinearLayout;

.field private mSearchEngineController:Lcom/sec/android/app/sbrowser/searchengine/SearchEngineController;

.field private mSearchEngineIcon:Landroid/widget/ImageView;

.field private mSearchEngineSpinner:Landroidx/appcompat/widget/AppCompatImageView;

.field private mSearchEngineSpinnerColor:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/sec/android/app/sbrowser/omnibox/LocationBarInterface;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButton;-><init>(Landroid/content/Context;Lcom/sec/android/app/sbrowser/omnibox/LocationBarInterface;)V

    return-void
.end method

.method public static synthetic a(Lcom/sec/android/app/sbrowser/omnibox/SearchEngineButton;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/omnibox/SearchEngineButton;->lambda$onSearchEngineButtonClick$1()V

    return-void
.end method

.method public static synthetic b(Lcom/sec/android/app/sbrowser/omnibox/SearchEngineButton;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/omnibox/SearchEngineButton;->lambda$lazyInflateSearchEngineButton$0(Landroid/view/View;)V

    return-void
.end method

.method public static bridge synthetic c(Lcom/sec/android/app/sbrowser/omnibox/SearchEngineButton;)Landroid/widget/LinearLayout;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/omnibox/SearchEngineButton;->mSearchEngineButtonLayout:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method public static bridge synthetic d(Lcom/sec/android/app/sbrowser/omnibox/SearchEngineButton;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/omnibox/SearchEngineButton;->setSearchEngineDescription(Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic e(Lcom/sec/android/app/sbrowser/omnibox/SearchEngineButton;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/omnibox/SearchEngineButton;->updateSearchEngineButtonIcon(Ljava/lang/String;)V

    return-void
.end method

.method private getSearchEngineButtonTag()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/omnibox/SearchEngineButton;->mSearchEngineButtonLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method private synthetic lambda$lazyInflateSearchEngineButton$0(Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButton;->isEditMode()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/omnibox/SearchEngineButton;->onSearchEngineButtonClick()V

    return-void
.end method

.method private synthetic lambda$onSearchEngineButtonClick$1()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/omnibox/SearchEngineButton;->mSearchEngineController:Lcom/sec/android/app/sbrowser/searchengine/SearchEngineController;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/omnibox/SearchEngineButton;->mSearchEngineButtonLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/sbrowser/searchengine/SearchEngineController;->showSearchEnginePopup(Landroid/view/View;)V

    return-void
.end method

.method private lazyInflateSearchEngineButton()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButton;->mParent:Landroid/view/View;

    const v1, 0x7f0b0a86

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/omnibox/SearchEngineButton;->mSearchEngineButtonLayout:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButton;->mParent:Landroid/view/View;

    const v1, 0x7f0b0a88

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/omnibox/SearchEngineButton;->mSearchEngineIcon:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButton;->mParent:Landroid/view/View;

    const v1, 0x7f0b0a8d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatImageView;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/omnibox/SearchEngineButton;->mSearchEngineSpinner:Landroidx/appcompat/widget/AppCompatImageView;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/omnibox/SearchEngineButton;->mSearchEngineButtonLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButton;->mDelegate:Lcom/sec/android/app/sbrowser/omnibox/LocationBarInterface;

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/omnibox/LocationBarInterface;->getSearchEngineKeyListener()Landroid/view/View$OnKeyListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/omnibox/SearchEngineButton;->mSearchEngineButtonLayout:Landroid/widget/LinearLayout;

    new-instance v1, LK6/a;

    const/16 v2, 0x14

    invoke-direct {v1, v2, p0}, LK6/a;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/omnibox/SearchEngineButton;->updateButtonColor()V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/omnibox/SearchEngineButton;->initSearchEnginePopup()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/omnibox/SearchEngineButton;->mSearchEngineController:Lcom/sec/android/app/sbrowser/searchengine/SearchEngineController;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/searchengine/SearchEngineController;->getCurrentSearchEngine()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/omnibox/SearchEngineButton;->setSearchEngineDescription(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/omnibox/SearchEngineButton;->setSearchEngineButtonImage(Ljava/lang/String;)V

    return-void
.end method

.method private setSearchEngineButtonImage(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/omnibox/SearchEngineButton;->mSearchEngineController:Lcom/sec/android/app/sbrowser/searchengine/SearchEngineController;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/omnibox/SearchEngineButton;->mSearchEngineButtonLayout:Landroid/widget/LinearLayout;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/omnibox/SearchEngineButton;->mSearchEngineIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v1, p0, p1}, Lcom/sec/android/app/sbrowser/searchengine/SearchEngineController;->setSearchEngineButtonImage(Landroid/view/View;Landroid/widget/ImageView;Ljava/lang/String;)V

    return-void
.end method

.method private setSearchEngineDescription(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/omnibox/SearchEngineButton;->mSearchEngineController:Lcom/sec/android/app/sbrowser/searchengine/SearchEngineController;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/omnibox/SearchEngineButton;->mSearchEngineButtonLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0, p1}, Lcom/sec/android/app/sbrowser/searchengine/SearchEngineController;->setSearchEngineDescription(Landroid/view/View;Ljava/lang/String;)V

    return-void
.end method

.method private updateSearchEngineButtonIcon(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/omnibox/SearchEngineButton;->setSearchEngineButtonImage(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public clearFocus()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/omnibox/SearchEngineButton;->mSearchEngineButtonLayout:Landroid/widget/LinearLayout;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->clearFocus()V

    :cond_0
    return-void
.end method

.method public destroy()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/omnibox/SearchEngineButton;->mSearchEngineController:Lcom/sec/android/app/sbrowser/searchengine/SearchEngineController;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/searchengine/SearchEngineController;->destroy()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/omnibox/SearchEngineButton;->mSearchEngineController:Lcom/sec/android/app/sbrowser/searchengine/SearchEngineController;

    :cond_0
    return-void
.end method

.method public getCurrentSearchEngine()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/omnibox/SearchEngineButton;->mSearchEngineController:Lcom/sec/android/app/sbrowser/searchengine/SearchEngineController;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/searchengine/SearchEngineController;->getCurrentSearchEngine()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getLayout()Landroid/widget/LinearLayout;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/omnibox/SearchEngineButton;->mSearchEngineButtonLayout:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method public getSearchEngineColor()I
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButton;->mTabDelegate:Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;->getCurrentTheme()Lcom/sec/android/app/sbrowser/common/model/theme/BrowserTheme;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    move v3, v1

    :goto_0
    if-eqz v3, :cond_1

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/model/theme/BrowserTheme;->isLightTheme()Z

    move-result v0

    if-eqz v0, :cond_1

    move v1, v2

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButton;->mTabDelegate:Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;->getReaderThemeColor()I

    move-result v0

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButton;->mTabDelegate:Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;

    invoke-interface {v2}, Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;->isHighContrastModeEnabled()Z

    move-result v2

    if-nez v2, :cond_8

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButton;->mTabDelegate:Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;

    invoke-interface {v2}, Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;->isNightModeEnabled()Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButton;->isSecretModeEnabled()Z

    move-result v2

    if-eqz v2, :cond_3

    const p0, 0x7f060d63

    return p0

    :cond_3
    const/4 v2, 0x2

    if-ne v0, v2, :cond_4

    const p0, 0x7f060d61

    return p0

    :cond_4
    const/4 v2, 0x3

    if-ne v0, v2, :cond_5

    const p0, 0x7f060d62

    return p0

    :cond_5
    const v0, 0x7f06098e

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButton;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->isFocusLayoutType(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_6

    return v0

    :cond_6
    if-eqz v3, :cond_7

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButton;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->isFocusLayoutType(Landroid/content/Context;)Z

    move-result p0

    if-nez p0, :cond_7

    const p0, 0x7f06098f

    return p0

    :cond_7
    return v0

    :cond_8
    :goto_1
    const p0, 0x7f060d60

    return p0
.end method

.method public hasFocus()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/omnibox/SearchEngineButton;->mSearchEngineButtonLayout:Landroid/widget/LinearLayout;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->hasFocus()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public hideSearchEngineList()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/omnibox/SearchEngineButton;->mSearchEngineController:Lcom/sec/android/app/sbrowser/searchengine/SearchEngineController;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/searchengine/SearchEngineController;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/omnibox/SearchEngineButton;->mSearchEngineController:Lcom/sec/android/app/sbrowser/searchengine/SearchEngineController;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/searchengine/SearchEngineController;->dismissPopup()V

    :cond_0
    return-void
.end method

.method public initSearchEnginePopup()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/omnibox/SearchEngineButton;->mSearchEngineController:Lcom/sec/android/app/sbrowser/searchengine/SearchEngineController;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sec/android/app/sbrowser/searchengine/SearchEngineController;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButton;->mContext:Landroid/content/Context;

    check-cast v1, Landroid/app/Activity;

    new-instance v2, Lcom/sec/android/app/sbrowser/omnibox/SearchEngineButton$1;

    invoke-direct {v2, p0}, Lcom/sec/android/app/sbrowser/omnibox/SearchEngineButton$1;-><init>(Lcom/sec/android/app/sbrowser/omnibox/SearchEngineButton;)V

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/sbrowser/searchengine/SearchEngineController;-><init>(Landroid/app/Activity;Lcom/sec/android/app/sbrowser/searchengine/SearchEngineController$Listener;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/omnibox/SearchEngineButton;->mSearchEngineController:Lcom/sec/android/app/sbrowser/searchengine/SearchEngineController;

    sget-object p0, Lcom/sec/android/app/sbrowser/searchengine/SearchEngineConstant$LaunchType;->MAIN_VIEW:Lcom/sec/android/app/sbrowser/searchengine/SearchEngineConstant$LaunchType;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/sbrowser/searchengine/SearchEngineController;->setLaunchType(Lcom/sec/android/app/sbrowser/searchengine/SearchEngineConstant$LaunchType;)V

    :cond_0
    return-void
.end method

.method public isVisible()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/omnibox/SearchEngineButton;->mSearchEngineButtonLayout:Landroid/widget/LinearLayout;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public lazyInflateIfNeeded()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/omnibox/SearchEngineButton;->mSearchEngineButtonLayout:Landroid/widget/LinearLayout;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/omnibox/SearchEngineButton;->lazyInflateSearchEngineButton()V

    :cond_0
    return-void
.end method

.method public onConfigurationChanged()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/omnibox/SearchEngineButton;->mSearchEngineController:Lcom/sec/android/app/sbrowser/searchengine/SearchEngineController;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/searchengine/SearchEngineController;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButton;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->isPhoneLandscapeOrTablet(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButton;->mDelegate:Lcom/sec/android/app/sbrowser/omnibox/LocationBarInterface;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/omnibox/LocationBarInterface;->dismissSearchWindow()V

    :cond_0
    return-void
.end method

.method public onSearchEngineButtonClick()V
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/omnibox/SearchEngineButton;->mSearchEngineController:Lcom/sec/android/app/sbrowser/searchengine/SearchEngineController;

    invoke-static {v0}, Lcom/sec/terrace/base/AssertUtil;->assertNotNull(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/omnibox/SearchEngineButton;->mSearchEngineController:Lcom/sec/android/app/sbrowser/searchengine/SearchEngineController;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/searchengine/SearchEngineController;->retrySearchEnginePopulate()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButton;->mDelegate:Lcom/sec/android/app/sbrowser/omnibox/LocationBarInterface;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/omnibox/LocationBarInterface;->dismissSearchWindow()V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButton;->getScreenID()Ljava/lang/String;

    move-result-object v0

    const-string v1, "2031"

    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButton;->mDelegate:Lcom/sec/android/app/sbrowser/omnibox/LocationBarInterface;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/omnibox/LocationBarInterface;->hideKeyboard()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButton;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->isInMultiWindowMode(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButton;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->isFocusLayoutType(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/omnibox/SearchEngineButton;->mSearchEngineController:Lcom/sec/android/app/sbrowser/searchengine/SearchEngineController;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/omnibox/SearchEngineButton;->mSearchEngineButtonLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/sbrowser/searchengine/SearchEngineController;->showSearchEnginePopup(Landroid/view/View;)V

    goto :goto_2

    :cond_1
    :goto_0
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/sec/android/app/sbrowser/download/b;

    const/16 v2, 0xb

    invoke-direct {v1, v2, p0}, Lcom/sec/android/app/sbrowser/download/b;-><init>(ILjava/lang/Object;)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;->isNewGuiSupported()Z

    move-result p0

    if-eqz p0, :cond_2

    const-wide/16 v2, 0x12c

    goto :goto_1

    :cond_2
    const-wide/16 v2, 0x96

    :goto_1
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_2
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButton;->mContext:Landroid/content/Context;

    check-cast p1, Landroid/app/Activity;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->isInMultiWindowMode(Landroid/app/Activity;)Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButton;->isEditMode()Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/omnibox/SearchEngineButton;->getSearchEngineButtonTag()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/omnibox/SearchEngineButton;->mSearchEngineController:Lcom/sec/android/app/sbrowser/searchengine/SearchEngineController;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/searchengine/SearchEngineController;->setSearchEngineToNative(Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public restoreNativeSearchEngineAsPreferenceValue()Z
    .locals 4

    new-instance v0, Lcom/sec/android/app/sbrowser/searchengine/SettingSearchEngineHelper;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButton;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/sec/android/app/sbrowser/searchengine/SettingSearchEngineHelper;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/searchengine/SettingSearchEngineHelper;->getCurrentSearchEngine()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    return v3

    :cond_0
    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/searchengine/SettingSearchEngineHelper;->setSearchEngineToNative(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/omnibox/SearchEngineButton;->mSearchEngineController:Lcom/sec/android/app/sbrowser/searchengine/SearchEngineController;

    if-eqz p0, :cond_1

    invoke-virtual {p0, v1}, Lcom/sec/android/app/sbrowser/searchengine/SearchEngineController;->updateSearchEngineButtonIcon(Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0

    :cond_1
    return v3
.end method

.method public setButtonResource()V
    .locals 0

    return-void
.end method

.method public setSearchEngineButtonVisibility(I)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/omnibox/SearchEngineButton;->mSearchEngineButtonLayout:Landroid/widget/LinearLayout;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/omnibox/SearchEngineButton;->lazyInflateSearchEngineButton()V

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/omnibox/SearchEngineButton;->mSearchEngineButtonLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public updateButtonColor()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/omnibox/SearchEngineButton;->mSearchEngineSpinner:Landroidx/appcompat/widget/AppCompatImageView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lcom/sec/android/app/sbrowser/omnibox/SearchEngineButton;->mSearchEngineSpinnerColor:I

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/omnibox/SearchEngineButton;->getSearchEngineColor()I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/sbrowser/omnibox/SearchEngineButton;->mSearchEngineSpinnerColor:I

    if-ne v0, v1, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/omnibox/SearchEngineButton;->mSearchEngineSpinner:Landroidx/appcompat/widget/AppCompatImageView;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButton;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->getColor(I)I

    move-result v1

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/omnibox/SearchEngineButton;->mSearchEngineButtonLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButton;->isDarkBackground()Z

    move-result p0

    if-eqz p0, :cond_2

    const p0, 0x7f08039e

    goto :goto_0

    :cond_2
    const p0, 0x7f0803a1

    :goto_0
    invoke-virtual {v0, p0}, Landroid/view/View;->setBackgroundResource(I)V

    return-void
.end method

.method public updateSearchEnginesFavicon()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/omnibox/SearchEngineButton;->mSearchEngineController:Lcom/sec/android/app/sbrowser/searchengine/SearchEngineController;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/searchengine/SearchEngineController;->updateSearchEnginesFavicon()V

    :cond_0
    return-void
.end method
