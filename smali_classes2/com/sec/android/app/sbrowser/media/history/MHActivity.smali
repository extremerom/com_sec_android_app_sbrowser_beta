.class public Lcom/sec/android/app/sbrowser/media/history/MHActivity;
.super Lcom/sec/android/app/sbrowser/common/BaseActivity;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "[MM]MHActivity"


# instance fields
.field private mController:Lcom/sec/android/app/sbrowser/media/history/controller/MHController;

.field private mLayoutDirection:I

.field private mLayoutMargin:I

.field private mLocaleReceiver:Landroid/content/BroadcastReceiver;

.field private mOnLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

.field private mParentActivityId:Ljava/lang/String;

.field private mSavedInstanceState:Landroid/os/Bundle;

.field private mSitesWindowObserver:Lcom/sec/android/app/sbrowser/common/sites/SitesWindowObserver;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/common/BaseActivity;-><init>()V

    return-void
.end method

.method public static synthetic g(Lcom/sec/android/app/sbrowser/media/history/MHActivity;Landroid/view/View;IIIIIIII)V
    .locals 0

    invoke-direct/range {p0 .. p9}, Lcom/sec/android/app/sbrowser/media/history/MHActivity;->lambda$setLayoutChangeListener$0(Landroid/view/View;IIIIIIII)V

    return-void
.end method

.method public static bridge synthetic h(Lcom/sec/android/app/sbrowser/media/history/MHActivity;)Lcom/sec/android/app/sbrowser/media/history/controller/MHController;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/history/MHActivity;->mController:Lcom/sec/android/app/sbrowser/media/history/controller/MHController;

    return-object p0
.end method

.method public static bridge synthetic i()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/sec/android/app/sbrowser/media/history/MHActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private synthetic lambda$setLayoutChangeListener$0(Landroid/view/View;IIIIIIII)V
    .locals 0

    if-ne p2, p6, :cond_0

    if-ne p4, p8, :cond_0

    return-void

    :cond_0
    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->updateLayoutMargin(Landroid/content/Context;)I

    move-result p1

    iput p1, p0, Lcom/sec/android/app/sbrowser/media/history/MHActivity;->mLayoutMargin:I

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->needMargin(Landroid/content/Context;)Z

    move-result p1

    xor-int/lit8 p2, p1, 0x1

    if-nez p1, :cond_1

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->getPhoneMargins(Landroid/content/Context;)I

    move-result p1

    iput p1, p0, Lcom/sec/android/app/sbrowser/media/history/MHActivity;->mLayoutMargin:I

    :cond_1
    invoke-direct {p0, p2}, Lcom/sec/android/app/sbrowser/media/history/MHActivity;->setLayoutMargin(Z)V

    return-void
.end method

.method private setLayoutChangeListener()V
    .locals 2

    new-instance v0, Lcom/sec/android/app/sbrowser/context_menu/a;

    const/4 v1, 0x2

    invoke-direct {v0, v1, p0}, Lcom/sec/android/app/sbrowser/context_menu/a;-><init>(ILjava/lang/Object;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/media/history/MHActivity;->mOnLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/history/MHActivity;->mOnLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {v0, p0}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    return-void
.end method

.method private setLayoutMargin(Z)V
    .locals 3

    const v0, 0x1020002

    invoke-virtual {p0, v0}, Lm/n;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/device/TabletDeviceUtils;->isTabletDevice(Landroid/content/Context;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_2

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    sget-object p1, Lcom/sec/android/app/sbrowser/media/history/MHActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " standard LayoutMargin for root "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/sec/android/app/sbrowser/media/history/MHActivity;->mLayoutMargin:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    iget p0, p0, Lcom/sec/android/app/sbrowser/media/history/MHActivity;->mLayoutMargin:I

    iput p0, p1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    iput p0, p1, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    invoke-virtual {v0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    :cond_2
    :goto_0
    sget-object p1, Lcom/sec/android/app/sbrowser/media/history/MHActivity;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, " standard LayoutMargin for subview "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/sec/android/app/sbrowser/media/history/MHActivity;->mLayoutMargin:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const p1, 0x7f0b06fe

    invoke-virtual {p0, p1}, Lm/n;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/LinearLayoutCompat;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, LR0/d;

    iget p0, p0, Lcom/sec/android/app/sbrowser/media/history/MHActivity;->mLayoutMargin:I

    iput p0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iput p0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_1
    return-void
.end method

.method private setStatusBarColor()V
    .locals 1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->shouldUseDarkStatusBar()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->setLightStatusBarTheme(Landroid/content/Context;Z)V

    const v0, 0x7f060d8e

    invoke-virtual {p0, v0}, Landroid/content/Context;->getColor(I)I

    move-result v0

    invoke-static {p0, v0}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->setStatusBarColor(Landroid/content/Context;I)V

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;->isDarkModeEnabled()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-static {p0, v0}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->setLightStatusBarTheme(Landroid/content/Context;Z)V

    const v0, 0x7f060234

    invoke-virtual {p0, v0}, Landroid/content/Context;->getColor(I)I

    move-result v0

    invoke-static {p0, v0}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->setStatusBarColor(Landroid/content/Context;I)V

    :goto_0
    return-void
.end method

.method private updateMainView()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/history/MHActivity;->mParentActivityId:Ljava/lang/String;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/media/common/MediaUtils;->getParentActivityById(Ljava/lang/String;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/device/TabletDeviceUtils;->isTabletLayout(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/history/MHActivity;->mSitesWindowObserver:Lcom/sec/android/app/sbrowser/common/sites/SitesWindowObserver;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/sites/SitesWindowObserver;->updateWindowLayout()V

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setFinishOnTouchOutside(Z)V

    :cond_1
    return-void
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/history/MHActivity;->mController:Lcom/sec/android/app/sbrowser/media/history/controller/MHController;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/media/history/controller/MHController;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    invoke-super {p0, p1}, Lm/n;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public finish()V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->finish()V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/history/MHActivity;->mController:Lcom/sec/android/app/sbrowser/media/history/controller/MHController;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/history/controller/MHController;->finish()V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    invoke-super {p0, p1}, Lm/n;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    sget-object p1, Lcom/sec/android/app/sbrowser/media/history/MHActivity;->TAG:Ljava/lang/String;

    const-string v0, "onConfigurationChanged"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->isInMultiWindowMode(Landroid/app/Activity;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/sec/android/app/sbrowser/common/utils/WindowUtil;->setFullScreen(Landroid/view/Window;Z)V

    goto :goto_1

    :cond_0
    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->getDisplayCutoutMode(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_2

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1e

    if-lt p1, v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;->isFullScreenEnabled()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/sec/android/app/sbrowser/common/utils/WindowUtil;->setFullScreen(Landroid/view/Window;Z)V

    goto :goto_1

    :cond_2
    :goto_0
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->isSetFullScreenInPhoneLandscapeMode(Landroid/content/Context;)Z

    move-result v0

    invoke-static {p1, v0}, Lcom/sec/android/app/sbrowser/common/utils/WindowUtil;->setFullScreen(Landroid/view/Window;Z)V

    :cond_3
    :goto_1
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/media/history/MHActivity;->updateMainView()V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/history/MHActivity;->mController:Lcom/sec/android/app/sbrowser/media/history/controller/MHController;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/history/controller/MHController;->onConfigurationChanged()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/sec/android/app/sbrowser/common/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    sget-object v0, Lcom/sec/android/app/sbrowser/media/history/MHActivity;->TAG:Ljava/lang/String;

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const v0, 0x7f0e04b8

    invoke-virtual {p0, v0}, Lm/n;->setContentView(I)V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/media/history/MHActivity;->mSavedInstanceState:Landroid/os/Bundle;

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "SBrowserMainActivityContextId"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/media/history/MHActivity;->mParentActivityId:Ljava/lang/String;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/media/common/MediaUtils;->isValidParentActivityId(Ljava/lang/String;)Z

    move-result p1

    invoke-static {p1}, Lcom/sec/terrace/base/AssertUtil;->assertTrue(Z)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/media/history/MHActivity;->setStatusBarColor()V

    new-instance p1, Lcom/sec/android/app/sbrowser/media/history/controller/MHController;

    invoke-direct {p1, p0}, Lcom/sec/android/app/sbrowser/media/history/controller/MHController;-><init>(Landroid/app/Activity;)V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/media/history/MHActivity;->mController:Lcom/sec/android/app/sbrowser/media/history/controller/MHController;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/media/history/controller/MHController;->onCreate()V

    invoke-virtual {p0}, Lm/n;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result p1

    iput p1, p0, Lcom/sec/android/app/sbrowser/media/history/MHActivity;->mLayoutDirection:I

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/media/history/MHActivity;->setLayoutChangeListener()V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setFinishOnTouchOutside(Z)V

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->setNavigationBarForNightMode(Landroid/content/Context;)V

    new-instance v0, Lcom/sec/android/app/sbrowser/media/history/MHActivity$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/media/history/MHActivity$1;-><init>(Lcom/sec/android/app/sbrowser/media/history/MHActivity;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/media/history/MHActivity;->mLocaleReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.LOCALE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/media/history/MHActivity;->mLocaleReceiver:Landroid/content/BroadcastReceiver;

    const/4 v2, 0x0

    invoke-static {p0, v1, v0, v2, v2}, Lcom/sec/android/app/sbrowser/common/device/ContextUtils;->registerExportedBroadcastReceiver(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/utils/LargeScreenUtil;->supportOldTabletLayout(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/sec/android/app/sbrowser/common/sites/SitesWindowObserver;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/common/sites/SitesWindowObserver;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/media/history/MHActivity;->mSitesWindowObserver:Lcom/sec/android/app/sbrowser/common/sites/SitesWindowObserver;

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/multiwindow/MultiWindowManager;->getInstance()Lcom/sec/android/app/sbrowser/common/multiwindow/MultiWindowManager;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/media/history/MHActivity;->mSitesWindowObserver:Lcom/sec/android/app/sbrowser/common/sites/SitesWindowObserver;

    invoke-virtual {v0, p0, v1}, Lcom/sec/android/app/sbrowser/common/multiwindow/MultiWindowManager;->addObserver(Landroid/app/Activity;Lcom/sec/android/app/sbrowser/common/multiwindow/MultiWindowObserver;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/history/MHActivity;->mSitesWindowObserver:Lcom/sec/android/app/sbrowser/common/sites/SitesWindowObserver;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/sites/SitesWindowObserver;->updateWindowLayout()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/history/MHActivity;->mParentActivityId:Ljava/lang/String;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/media/common/MediaUtils;->getParentActivityById(Ljava/lang/String;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/device/DesktopModeUtils;->isDesktopMode(Landroid/app/Activity;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/media/common/MediaUtils;->isMultiWindow(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/utils/LocalizationUtils;->isLayoutRtl()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f01010f

    goto :goto_0

    :cond_0
    const v0, 0x7f010110

    :goto_0
    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->overridePendingTransition(II)V

    :cond_1
    invoke-virtual {p0}, Landroidx/activity/p;->getOnBackPressedDispatcher()Landroidx/activity/A;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/sbrowser/media/history/MHActivity$2;

    invoke-direct {v1, p0, p1}, Lcom/sec/android/app/sbrowser/media/history/MHActivity$2;-><init>(Lcom/sec/android/app/sbrowser/media/history/MHActivity;Z)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0, v1}, Landroidx/activity/A;->b(Landroidx/activity/u;)Landroidx/activity/z;

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1

    const-string v0, "3216"

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/media/common/MediaSALogging;->videoHistory(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/history/MHActivity;->mController:Lcom/sec/android/app/sbrowser/media/history/controller/MHController;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/media/history/controller/MHController;->onCreateOptionsMenu(Landroid/view/Menu;)V

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result p0

    return p0
.end method

.method public onDestroy()V
    .locals 3

    invoke-super {p0}, Lm/n;->onDestroy()V

    sget-object v0, Lcom/sec/android/app/sbrowser/media/history/MHActivity;->TAG:Ljava/lang/String;

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/history/MHActivity;->mParentActivityId:Ljava/lang/String;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/media/common/MediaUtils;->getParentActivityById(Ljava/lang/String;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/device/TabletDeviceUtils;->isTabletLayout(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/multiwindow/MultiWindowManager;->getInstance()Lcom/sec/android/app/sbrowser/common/multiwindow/MultiWindowManager;

    move-result-object v0

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/media/history/MHActivity;->mSitesWindowObserver:Lcom/sec/android/app/sbrowser/common/sites/SitesWindowObserver;

    invoke-virtual {v0, p0, v2}, Lcom/sec/android/app/sbrowser/common/multiwindow/MultiWindowManager;->removeObserver(Landroid/app/Activity;Lcom/sec/android/app/sbrowser/common/multiwindow/MultiWindowObserver;)V

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/media/history/MHActivity;->mSitesWindowObserver:Lcom/sec/android/app/sbrowser/common/sites/SitesWindowObserver;

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/history/MHActivity;->mOnLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/media/history/MHActivity;->mOnLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {v0, v2}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/media/history/MHActivity;->mOnLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/history/MHActivity;->mLocaleReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_2

    invoke-virtual {p0, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/media/history/MHActivity;->mLocaleReceiver:Landroid/content/BroadcastReceiver;

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/history/MHActivity;->mController:Lcom/sec/android/app/sbrowser/media/history/controller/MHController;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/media/history/controller/MHController;->onDestroy()V

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/media/history/MHActivity;->mController:Lcom/sec/android/app/sbrowser/media/history/controller/MHController;

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/history/MHActivity;->mController:Lcom/sec/android/app/sbrowser/media/history/controller/MHController;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/media/history/controller/MHController;->onOptionsItemSelected(Landroid/view/MenuItem;)V

    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p0

    return p0
.end method

.method public onPause()V
    .locals 2

    invoke-super {p0}, Landroidx/fragment/app/J;->onPause()V

    sget-object v0, Lcom/sec/android/app/sbrowser/media/history/MHActivity;->TAG:Ljava/lang/String;

    const-string v1, "onPause"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/history/MHActivity;->mController:Lcom/sec/android/app/sbrowser/media/history/controller/MHController;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/media/history/controller/MHController;->onPause()V

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/device/DesktopModeUtils;->isDesktopMode(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/device/TabletDeviceUtils;->isTabletLayout(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->isInMultiWindowMode(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_1

    iget v0, p0, Lcom/sec/android/app/sbrowser/media/history/MHActivity;->mLayoutDirection:I

    const/4 v1, -0x1

    if-nez v0, :cond_0

    const v0, 0x7f010117

    invoke-virtual {p0, v1, v0}, Landroid/app/Activity;->overridePendingTransition(II)V

    goto :goto_0

    :cond_0
    const v0, 0x7f010116

    invoke-virtual {p0, v1, v0}, Landroid/app/Activity;->overridePendingTransition(II)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 0

    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result p0

    return p0
.end method

.method public onResume()V
    .locals 2

    invoke-super {p0}, Landroidx/fragment/app/J;->onResume()V

    sget-object v0, Lcom/sec/android/app/sbrowser/media/history/MHActivity;->TAG:Ljava/lang/String;

    const-string v1, "onResume"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/history/MHActivity;->mSavedInstanceState:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/history/MHActivity;->finish()V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/history/MHActivity;->mParentActivityId:Ljava/lang/String;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/media/common/MediaUtils;->isValidParentActivityId(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/history/MHActivity;->finish()V

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/history/MHActivity;->mController:Lcom/sec/android/app/sbrowser/media/history/controller/MHController;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/media/history/controller/MHController;->onResume()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/media/history/MHActivity;->updateMainView()V

    return-void
.end method
