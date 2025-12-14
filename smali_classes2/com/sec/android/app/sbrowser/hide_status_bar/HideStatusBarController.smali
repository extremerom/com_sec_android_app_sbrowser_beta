.class public Lcom/sec/android/app/sbrowser/hide_status_bar/HideStatusBarController;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static sInstance:Lcom/sec/android/app/sbrowser/hide_status_bar/HideStatusBarController;


# instance fields
.field private mController:Lcom/sec/android/app/sbrowser/hide_status_bar/HideStatusBarControllerBase;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/sec/android/app/sbrowser/hide_status_bar/HideStatusBarController;
    .locals 2

    const-class v0, Lcom/sec/android/app/sbrowser/hide_status_bar/HideStatusBarController;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/sec/android/app/sbrowser/hide_status_bar/HideStatusBarController;->sInstance:Lcom/sec/android/app/sbrowser/hide_status_bar/HideStatusBarController;

    if-nez v1, :cond_0

    new-instance v1, Lcom/sec/android/app/sbrowser/hide_status_bar/HideStatusBarController;

    invoke-direct {v1}, Lcom/sec/android/app/sbrowser/hide_status_bar/HideStatusBarController;-><init>()V

    sput-object v1, Lcom/sec/android/app/sbrowser/hide_status_bar/HideStatusBarController;->sInstance:Lcom/sec/android/app/sbrowser/hide_status_bar/HideStatusBarController;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    sget-object v1, Lcom/sec/android/app/sbrowser/hide_status_bar/HideStatusBarController;->sInstance:Lcom/sec/android/app/sbrowser/hide_status_bar/HideStatusBarController;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private setController(Landroid/app/Activity;Lcom/sec/android/app/sbrowser/hide_status_bar/HideStatusBarControllerBase;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/hide_status_bar/HideStatusBarController;->mController:Lcom/sec/android/app/sbrowser/hide_status_bar/HideStatusBarControllerBase;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/hide_status_bar/HideStatusBarControllerBase;->onDestroy(Landroid/app/Activity;)V

    :cond_0
    iput-object p2, p0, Lcom/sec/android/app/sbrowser/hide_status_bar/HideStatusBarController;->mController:Lcom/sec/android/app/sbrowser/hide_status_bar/HideStatusBarControllerBase;

    return-void
.end method


# virtual methods
.method public hasLayoutFullscreenFlag(Landroid/app/Activity;)Z
    .locals 1

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/hide_status_bar/HideStatusBarController;->isEnabled(Landroid/app/Activity;)Z

    move-result p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    if-nez p0, :cond_1

    return v0

    :cond_1
    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->getSystemUiVisibility()I

    move-result p0

    const/16 p1, 0x400

    and-int/2addr p0, p1

    if-ne p0, p1, :cond_2

    const/4 v0, 0x1

    :cond_2
    return v0
.end method

.method public initialize(Landroid/app/Activity;)V
    .locals 1

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->isSupportHideStatusBar(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->isFocusLayoutType(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/hide_status_bar/HideStatusBarController;->mController:Lcom/sec/android/app/sbrowser/hide_status_bar/HideStatusBarControllerBase;

    instance-of v0, v0, Lcom/sec/android/app/sbrowser/hide_status_bar/HideStatusBarControllerDefault;

    if-nez v0, :cond_2

    new-instance v0, Lcom/sec/android/app/sbrowser/hide_status_bar/HideStatusBarControllerDefault;

    invoke-direct {v0}, Lcom/sec/android/app/sbrowser/hide_status_bar/HideStatusBarControllerDefault;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/sec/android/app/sbrowser/hide_status_bar/HideStatusBarController;->setController(Landroid/app/Activity;Lcom/sec/android/app/sbrowser/hide_status_bar/HideStatusBarControllerBase;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/hide_status_bar/HideStatusBarController;->mController:Lcom/sec/android/app/sbrowser/hide_status_bar/HideStatusBarControllerBase;

    instance-of v0, v0, Lcom/sec/android/app/sbrowser/hide_status_bar/HideStatusBarControllerFocus;

    if-nez v0, :cond_2

    new-instance v0, Lcom/sec/android/app/sbrowser/hide_status_bar/HideStatusBarControllerFocus;

    invoke-direct {v0}, Lcom/sec/android/app/sbrowser/hide_status_bar/HideStatusBarControllerFocus;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/sec/android/app/sbrowser/hide_status_bar/HideStatusBarController;->setController(Landroid/app/Activity;Lcom/sec/android/app/sbrowser/hide_status_bar/HideStatusBarControllerBase;)V

    :cond_2
    :goto_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/hide_status_bar/HideStatusBarController;->mController:Lcom/sec/android/app/sbrowser/hide_status_bar/HideStatusBarControllerBase;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/hide_status_bar/HideStatusBarControllerBase;->initialize(Landroid/app/Activity;)V

    return-void
.end method

.method public isEnabled(Landroid/app/Activity;)Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/hide_status_bar/HideStatusBarController;->mController:Lcom/sec/android/app/sbrowser/hide_status_bar/HideStatusBarControllerBase;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/hide_status_bar/HideStatusBarControllerBase;->isEnabled(Landroid/app/Activity;)Z

    move-result p0

    return p0
.end method

.method public isStatusBarHidden(Landroid/app/Activity;)Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/hide_status_bar/HideStatusBarController;->mController:Lcom/sec/android/app/sbrowser/hide_status_bar/HideStatusBarControllerBase;

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/hide_status_bar/HideStatusBarController;->isTurnedOn(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->isHideCutoutCameraTurnedOn(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 p0, 0x0

    return p0

    :cond_2
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/hide_status_bar/HideStatusBarController;->mController:Lcom/sec/android/app/sbrowser/hide_status_bar/HideStatusBarControllerBase;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/hide_status_bar/HideStatusBarControllerBase;->isStatusBarHidden(Landroid/app/Activity;)Z

    move-result p0

    return p0
.end method

.method public isTurnedOn(Landroid/content/Context;)Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/hide_status_bar/HideStatusBarController;->mController:Lcom/sec/android/app/sbrowser/hide_status_bar/HideStatusBarControllerBase;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/hide_status_bar/HideStatusBarControllerBase;->isTurnedOn(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method public onApplyWindowInsets(Landroid/app/Activity;Landroid/view/WindowInsets;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/hide_status_bar/HideStatusBarController;->mController:Lcom/sec/android/app/sbrowser/hide_status_bar/HideStatusBarControllerBase;

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/hide_status_bar/HideStatusBarController;->isEnabled(Landroid/app/Activity;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/hide_status_bar/HideStatusBarController;->mController:Lcom/sec/android/app/sbrowser/hide_status_bar/HideStatusBarControllerBase;

    invoke-virtual {p0, p2}, Lcom/sec/android/app/sbrowser/hide_status_bar/HideStatusBarControllerBase;->onApplyWindowInsets(Landroid/view/WindowInsets;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onLayoutModeChanged(Landroid/app/Activity;)V
    .locals 1

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/hide_status_bar/HideStatusBarController;->initialize(Landroid/app/Activity;)V

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/hide_status_bar/HideStatusBarController;->updateHideStatusBar(Landroid/app/Activity;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/hide_status_bar/HideStatusBarController;->mController:Lcom/sec/android/app/sbrowser/hide_status_bar/HideStatusBarControllerBase;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/hide_status_bar/HideStatusBarControllerBase;->isTurnedOn(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/hide_status_bar/HideStatusBarController;->mController:Lcom/sec/android/app/sbrowser/hide_status_bar/HideStatusBarControllerBase;

    move-object v0, p1

    check-cast v0, Lcom/sec/android/app/sbrowser/common/model/main/MainActivityDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/main/MainActivityDelegate;->isFullScreenForDisplayCutoutMode()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/sec/android/app/sbrowser/hide_status_bar/HideStatusBarControllerBase;->setStatusBarVisibility(Landroid/app/Activity;Z)V

    :cond_0
    return-void
.end method

.method public onPause(Landroid/app/Activity;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/hide_status_bar/HideStatusBarController;->mController:Lcom/sec/android/app/sbrowser/hide_status_bar/HideStatusBarControllerBase;

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/hide_status_bar/HideStatusBarControllerBase;->onPause(Landroid/app/Activity;)V

    return-void
.end method

.method public onToolbarOffsetChanged(Landroid/app/Activity;F)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/hide_status_bar/HideStatusBarController;->mController:Lcom/sec/android/app/sbrowser/hide_status_bar/HideStatusBarControllerBase;

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/hide_status_bar/HideStatusBarController;->isTurnedOn(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/hide_status_bar/HideStatusBarController;->mController:Lcom/sec/android/app/sbrowser/hide_status_bar/HideStatusBarControllerBase;

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/hide_status_bar/HideStatusBarControllerBase;->onToolbarOffsetChanged(Landroid/app/Activity;F)V

    :cond_1
    :goto_0
    return-void
.end method

.method public updateCutOutMarginsVisibility(Landroid/app/Activity;Landroid/widget/LinearLayout;Z)V
    .locals 0

    if-nez p2, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/hide_status_bar/HideStatusBarController;->mController:Lcom/sec/android/app/sbrowser/hide_status_bar/HideStatusBarControllerBase;

    if-nez p0, :cond_1

    const/16 p0, 0x8

    invoke-virtual {p2, p0}, Landroid/view/View;->setVisibility(I)V

    return-void

    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/hide_status_bar/HideStatusBarControllerBase;->updateCutOutMarginsVisibility(Landroid/app/Activity;Landroid/widget/LinearLayout;Z)V

    return-void
.end method

.method public updateHideStatusBar(Landroid/app/Activity;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/hide_status_bar/HideStatusBarController;->mController:Lcom/sec/android/app/sbrowser/hide_status_bar/HideStatusBarControllerBase;

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/hide_status_bar/HideStatusBarControllerBase;->updateHideStatusBar(Landroid/app/Activity;)V

    return-void
.end method
