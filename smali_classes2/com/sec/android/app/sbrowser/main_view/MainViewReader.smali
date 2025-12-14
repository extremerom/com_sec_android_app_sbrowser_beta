.class public Lcom/sec/android/app/sbrowser/main_view/MainViewReader;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/reader/feature/animation/ReaderAnimationListener;
.implements Lcom/sec/android/app/sbrowser/reader/feature/option/ReaderOptionListener;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mMainViewInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

.field private mReaderAnimationHandler:Lcom/sec/android/app/sbrowser/reader/feature/animation/ReaderAnimationHandler;

.field private mReaderOptionHandler:Lcom/sec/android/app/sbrowser/reader/feature/option/ReaderOptionHandler;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewReader;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewReader;->mMainViewInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    return-void
.end method

.method public static synthetic a(Lcom/sec/android/app/sbrowser/main_view/MainViewReader;Ljava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/main_view/MainViewReader;->lambda$onThemeColorChanged$0(Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic b(Lcom/sec/android/app/sbrowser/main_view/MainViewReader;ZLandroid/graphics/Bitmap;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/main_view/MainViewReader;->lambda$onReaderButtonClicked$2(ZLandroid/graphics/Bitmap;)V

    return-void
.end method

.method public static synthetic c(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)V
    .locals 0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewReader;->lambda$onConfigurationChanged$1(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)V

    return-void
.end method

.method private createReaderBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 3
    .param p1    # Landroid/graphics/Bitmap;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_2

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewReader;->mMainViewInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->getCurrentTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/sec/android/app/sbrowser/main_view/MainViewReader;->isInvalidTab(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)Z

    move-result v2

    if-eqz v2, :cond_1

    return-object v0

    :cond_1
    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getTopMargin()I

    move-result v0

    if-gtz v0, :cond_3

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getBottomMargin()I

    move-result v0

    if-lez v0, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object p0

    const/4 v0, 0x1

    invoke-virtual {p1, p0, v0}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object p0

    goto :goto_1

    :cond_3
    :goto_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewReader;->mMainViewInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getTopMargin()I

    move-result v0

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getBottomMargin()I

    move-result v1

    invoke-interface {p0, p1, v0, v1}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->getFullScreenBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object p0

    :goto_1
    return-object p0

    :cond_4
    :goto_2
    return-object v0
.end method

.method private createReaderOptionHandler()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewReader;->mReaderOptionHandler:Lcom/sec/android/app/sbrowser/reader/feature/option/ReaderOptionHandler;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sec/android/app/sbrowser/reader/feature/option/ReaderOptionHandler;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewReader;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p0}, Lcom/sec/android/app/sbrowser/reader/feature/option/ReaderOptionHandler;-><init>(Landroid/content/Context;Lcom/sec/android/app/sbrowser/reader/feature/option/ReaderOptionListener;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewReader;->mReaderOptionHandler:Lcom/sec/android/app/sbrowser/reader/feature/option/ReaderOptionHandler;

    :cond_0
    return-void
.end method

.method private destroyReaderOptionHandler()V
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewReader;->hideReaderOptionPopup()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewReader;->mReaderOptionHandler:Lcom/sec/android/app/sbrowser/reader/feature/option/ReaderOptionHandler;

    return-void
.end method

.method private getReaderAnimatorHandler()Lcom/sec/android/app/sbrowser/reader/feature/animation/ReaderAnimationHandler;
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewReader;->mReaderAnimationHandler:Lcom/sec/android/app/sbrowser/reader/feature/animation/ReaderAnimationHandler;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sec/android/app/sbrowser/reader/feature/animation/ReaderAnimationHandler;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewReader;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewReader;->mMainViewInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    invoke-interface {v2}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->getContentLayout()Landroid/widget/FrameLayout;

    move-result-object v2

    invoke-direct {v0, v1, v2, p0}, Lcom/sec/android/app/sbrowser/reader/feature/animation/ReaderAnimationHandler;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/sec/android/app/sbrowser/reader/feature/animation/ReaderAnimationListener;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewReader;->mReaderAnimationHandler:Lcom/sec/android/app/sbrowser/reader/feature/animation/ReaderAnimationHandler;

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewReader;->mReaderAnimationHandler:Lcom/sec/android/app/sbrowser/reader/feature/animation/ReaderAnimationHandler;

    return-object p0
.end method

.method private handleReaderAnimation(Z)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewReader;->startReaderAnimation()V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewReader;->stopReaderAnimation()V

    :goto_0
    return-void
.end method

.method private isInvalidTab(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)Z
    .locals 0

    if-eqz p1, :cond_1

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isClosed()Z

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

.method private isReaderModeNotAvailable()Z
    .locals 3

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getInstance()Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->isReaderModeSupported()Z

    move-result v0

    const/4 v1, 0x1

    const-string v2, "si__MainViewReader"

    if-nez v0, :cond_0

    const-string p0, "[isReaderModeAvailable] reader mode is not supported"

    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getInstance()Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->isJavascriptEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "[isReaderModeAvailable] javascript is disabled"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewReader;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewReader;->mMainViewInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->getView()Landroid/view/View;

    move-result-object p0

    const v2, 0x7f140bc3

    invoke-static {v0, p0, v2}, Lcom/sec/android/app/sbrowser/common/utils/SnackbarUtil;->show(Landroid/content/Context;Landroid/view/View;I)V

    return v1

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewReader;->mReaderAnimationHandler:Lcom/sec/android/app/sbrowser/reader/feature/animation/ReaderAnimationHandler;

    if-eqz v0, :cond_2

    const-string p0, "[isReaderModeAvailable] previous animation is not finished"

    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewReader;->mMainViewInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->getCurrentTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/main_view/MainViewReader;->isInvalidTab(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)Z

    move-result p0

    if-eqz p0, :cond_3

    const-string p0, "[isReaderModeAvailable] current tab is invalid"

    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_3
    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isSplitMode()Z

    move-result p0

    if-eqz p0, :cond_4

    const-string p0, "[isReaderModeAvailable] current tab is isSplitMode"

    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_4
    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isReaderPage()Z

    move-result p0

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isArticleAvailable()Z

    move-result v0

    if-nez v0, :cond_5

    if-nez p0, :cond_5

    const-string p0, "[isReaderModeAvailable] cannot extract article from current page"

    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_5
    const/4 p0, 0x0

    return p0
.end method

.method private isReaderOptionPopupShowing()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewReader;->mReaderOptionHandler:Lcom/sec/android/app/sbrowser/reader/feature/option/ReaderOptionHandler;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/reader/feature/option/ReaderOptionHandler;->isReaderOptionPopupShowing()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static synthetic lambda$onConfigurationChanged$1(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)V
    .locals 1

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isReaderPage()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getReaderTab()Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;

    move-result-object p0

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->applyReaderFontScale(Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback;)V

    return-void
.end method

.method private synthetic lambda$onReaderButtonClicked$2(ZLandroid/graphics/Bitmap;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[onReaderButtonClicked] "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    const-string v1, "disable"

    goto :goto_0

    :cond_0
    const-string v1, "enable"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " reader mode, bitmap : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "si__MainViewReader"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewReader;->getReaderAnimatorHandler()Lcom/sec/android/app/sbrowser/reader/feature/animation/ReaderAnimationHandler;

    move-result-object v0

    invoke-direct {p0, p2}, Lcom/sec/android/app/sbrowser/main_view/MainViewReader;->createReaderBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p0

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {v0, p0, p1}, Lcom/sec/android/app/sbrowser/reader/feature/animation/ReaderAnimationHandler;->prepareAnimation(Landroid/graphics/Bitmap;Z)V

    return-void
.end method

.method private synthetic lambda$onThemeColorChanged$0(Ljava/lang/Boolean;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewReader;->mMainViewInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->notifyThemeChanged()V

    return-void
.end method

.method private sendSALoggingForReaderButton(Z)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewReader;->mMainViewInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->isSecretModeEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "2127"

    goto :goto_0

    :cond_0
    const-string v0, "2250"

    :goto_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewReader;->mMainViewInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->getSaLoggingDelegate()Lcom/sec/android/app/sbrowser/common/logging/SALogging$ISALoggingDelegate;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/common/logging/SALogging$ISALoggingDelegate;->getScreenID()Ljava/lang/String;

    move-result-object p0

    if-eqz p1, :cond_1

    const-string p1, "On"

    goto :goto_1

    :cond_1
    const-string p1, "Off"

    :goto_1
    invoke-static {p0, v0, p1}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private startReaderAnimation()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewReader;->mReaderAnimationHandler:Lcom/sec/android/app/sbrowser/reader/feature/animation/ReaderAnimationHandler;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "si__MainViewReader"

    const-string v1, "[startReaderAnimation]"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewReader;->mReaderAnimationHandler:Lcom/sec/android/app/sbrowser/reader/feature/animation/ReaderAnimationHandler;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/reader/feature/animation/ReaderAnimationHandler;->startAnimation()V

    return-void
.end method

.method private stopReaderAnimation()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewReader;->mReaderAnimationHandler:Lcom/sec/android/app/sbrowser/reader/feature/animation/ReaderAnimationHandler;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "si__MainViewReader"

    const-string v1, "[stopReaderAnimation]"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewReader;->mReaderAnimationHandler:Lcom/sec/android/app/sbrowser/reader/feature/animation/ReaderAnimationHandler;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/reader/feature/animation/ReaderAnimationHandler;->clearAnimation()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewReader;->mReaderAnimationHandler:Lcom/sec/android/app/sbrowser/reader/feature/animation/ReaderAnimationHandler;

    return-void
.end method


# virtual methods
.method public hideReaderOptionPopup()V
    .locals 1

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewReader;->isReaderOptionPopupShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewReader;->mReaderOptionHandler:Lcom/sec/android/app/sbrowser/reader/feature/option/ReaderOptionHandler;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/reader/feature/option/ReaderOptionHandler;->hideReaderOptionPopup()V

    :cond_0
    return-void
.end method

.method public notifyFontScaleChanged()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewReader;->mReaderOptionHandler:Lcom/sec/android/app/sbrowser/reader/feature/option/ReaderOptionHandler;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/reader/feature/option/ReaderOptionHandler;->notifyFontScaleChanged()V

    :cond_0
    return-void
.end method

.method public notifyReaderStatusChanged(ZZ)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[notifyReaderStatusChanged] - isReaderPage : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", needAnimation : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "si__MainViewReader"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewReader;->createReaderOptionHandler()V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewReader;->mContext:Landroid/content/Context;

    check-cast p1, Landroid/app/Activity;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/device/DesktopModeUtils;->isDesktopMode(Landroid/app/Activity;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewReader;->mMainViewInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->getCurrentTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getReaderTab()Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getReaderTab()Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;

    move-result-object p1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewReader;->mMainViewInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->getToolbar()Lcom/sec/android/app/sbrowser/toolbar/Toolbar;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->setZoomInfoBarAnchorView(Landroid/view/View;)V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewReader;->destroyReaderOptionHandler()V

    :cond_1
    :goto_0
    invoke-direct {p0, p2}, Lcom/sec/android/app/sbrowser/main_view/MainViewReader;->handleReaderAnimation(Z)V

    return-void
.end method

.method public notifyReaderThemeChanged()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewReader;->mReaderOptionHandler:Lcom/sec/android/app/sbrowser/reader/feature/option/ReaderOptionHandler;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/reader/feature/option/ReaderOptionHandler;->notifyReaderThemeChanged()V

    :cond_0
    return-void
.end method

.method public onAnimationClear()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewReader;->mMainViewInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->getCurrentTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;->getTab()Lcom/sec/android/app/sbrowser/tab/Tab;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isReaderView()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;->getTab()Lcom/sec/android/app/sbrowser/tab/Tab;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/tab/Tab;->hide()V

    goto :goto_0

    :cond_1
    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;->getTab()Lcom/sec/android/app/sbrowser/tab/Tab;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/tab/Tab;->show()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewReader;->mMainViewInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->onReaderAnimationCleared(Z)V

    :goto_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewReader;->mMainViewInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->getHideToolbarManager()Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;->onReaderAnimationEnd()V

    :cond_2
    :goto_1
    return-void
.end method

.method public onAnimationEnd()V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewReader;->stopReaderAnimation()V

    return-void
.end method

.method public onAnimationReady(Z)V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewReader;->mMainViewInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->getCurrentTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/main_view/MainViewReader;->isInvalidTab(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewReader;->mMainViewInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->isTransBarContainerShowing()Z

    move-result p0

    const/4 v1, 0x1

    xor-int/2addr p0, v1

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->hideVideoAssistant()V

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->destroySelectedText()V

    const/4 v2, 0x0

    invoke-interface {v0, p1, v2, v1, p0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->setReaderPageEnabled(ZZZZ)V

    return-void
.end method

.method public onAnimationStart()V
    .locals 0

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewReader;->mReaderOptionHandler:Lcom/sec/android/app/sbrowser/reader/feature/option/ReaderOptionHandler;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/reader/feature/option/ReaderOptionHandler;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewReader;->mMainViewInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->getCurrentTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object p0

    if-eqz p0, :cond_2

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isReaderPage()Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    new-instance v0, Lcom/sec/android/app/sbrowser/main_view/J;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/sbrowser/main_view/J;-><init>(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;I)V

    const-wide/16 v1, 0x1f4

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_2
    :goto_0
    return-void
.end method

.method public onDestroy()V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewReader;->stopReaderAnimation()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewReader;->destroyReaderOptionHandler()V

    return-void
.end method

.method public onFontScaleChanged()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewReader;->mReaderOptionHandler:Lcom/sec/android/app/sbrowser/reader/feature/option/ReaderOptionHandler;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewReader;->mMainViewInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->getCurrentTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object p0

    if-eqz p0, :cond_2

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isReaderPage()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getReaderTab()Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;

    move-result-object p0

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->applyReaderFontScale(Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onReaderButtonClicked()V
    .locals 8

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewReader;->isReaderModeNotAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewReader;->mMainViewInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->getCurrentTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/sec/android/app/sbrowser/main_view/MainViewReader;->isInvalidTab(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    invoke-interface {v3}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isReaderPage()Z

    move-result v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewReader;->mMainViewInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->getToolbar()Lcom/sec/android/app/sbrowser/toolbar/Toolbar;

    move-result-object v1

    if-nez v0, :cond_2

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/toolbar/Toolbar;->isTransBarContainerShowing()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/toolbar/Toolbar;->getTransBarContainer()Lcom/sec/android/app/sbrowser/trans_bar/TransBarContainer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarContainer;->clearTranslate()V

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/toolbar/Toolbar;->disableSplitSwitcher()V

    :cond_2
    xor-int/lit8 v2, v0, 0x1

    invoke-direct {p0, v2}, Lcom/sec/android/app/sbrowser/main_view/MainViewReader;->sendSALoggingForReaderButton(Z)V

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/toolbar/Toolbar;->getLocationBar()Lcom/sec/android/app/sbrowser/omnibox/LocationBar;

    move-result-object v4

    if-eqz v4, :cond_3

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/toolbar/Toolbar;->getLocationBar()Lcom/sec/android/app/sbrowser/omnibox/LocationBar;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/sec/android/app/sbrowser/omnibox/LocationBar;->updateReaderProgressStatus(Z)V

    :cond_3
    const-string v1, "si__MainViewReader"

    const-string v2, "[onReaderButtonClicked] request bitmap for reader animation"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewReader;->mMainViewInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->getBitmapHandler()Lcom/sec/android/app/sbrowser/main_view/main_interface/BitmapHandler;

    move-result-object v1

    new-instance v4, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/G;

    const/4 v2, 0x3

    invoke-direct {v4, v2, p0, v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/G;-><init>(ILjava/lang/Object;Z)V

    const/4 v7, 0x1

    const/4 v2, 0x1

    const-wide/16 v5, 0x1388

    invoke-interface/range {v1 .. v7}, Lcom/sec/android/app/sbrowser/main_view/main_interface/BitmapHandler;->captureTabAsync(ILcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback;JI)V

    return-void
.end method

.method public onReaderOptionButtonClicked(Landroid/view/View;)V
    .locals 3
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewReader;->mReaderOptionHandler:Lcom/sec/android/app/sbrowser/reader/feature/option/ReaderOptionHandler;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewReader;->mMainViewInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->getCurrentTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/main_view/MainViewReader;->isInvalidTab(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isReaderPage()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewReader;->isReaderOptionPopupShowing()Z

    move-result v0

    const-string v1, "[onReaderOptionButtonClicked] isPopupShowing : "

    const-string v2, "si__MainViewReader"

    invoke-static {v1, v2, v0}, Landroidx/recyclerview/widget/P;->w(Ljava/lang/String;Ljava/lang/String;Z)V

    if-eqz v0, :cond_2

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewReader;->mReaderOptionHandler:Lcom/sec/android/app/sbrowser/reader/feature/option/ReaderOptionHandler;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/reader/feature/option/ReaderOptionHandler;->hideReaderOptionPopup()V

    goto :goto_0

    :cond_2
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewReader;->mReaderOptionHandler:Lcom/sec/android/app/sbrowser/reader/feature/option/ReaderOptionHandler;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/reader/feature/option/ReaderOptionHandler;->showReaderOptionPopup(Landroid/view/View;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public onThemeColorChanged()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewReader;->mReaderOptionHandler:Lcom/sec/android/app/sbrowser/reader/feature/option/ReaderOptionHandler;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewReader;->mMainViewInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->getCurrentTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isReaderPage()Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getReaderTab()Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/sbrowser/main_view/L;

    const/4 v2, 0x2

    invoke-direct {v1, v2, p0}, Lcom/sec/android/app/sbrowser/main_view/L;-><init>(ILjava/lang/Object;)V

    invoke-interface {v0, v1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->applyReaderThemeColor(Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewReader;->mMainViewInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->getMainViewAi()Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/ArtificialIntelligenceDelegate;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/ArtificialIntelligenceDelegate;->getSummarizeController()Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/ISummarizeController;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/ISummarizeController;->updateSummarizeViewColorsForReaderMode()V

    :cond_2
    :goto_0
    return-void
.end method
