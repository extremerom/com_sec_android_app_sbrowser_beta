.class abstract Lcom/sec/android/app/sbrowser/hide_status_bar/HideStatusBarControllerBase;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/hide_status_bar/HideStatusBarControllerDelegate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/hide_status_bar/HideStatusBarControllerBase$HideStatusBarStatus;
    }
.end annotation


# instance fields
.field mHideStatusBar:Lcom/sec/android/app/sbrowser/hide_status_bar/HideStatusBar;

.field private mIsDestroyed:Z

.field private mStatusMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/sec/android/app/sbrowser/hide_status_bar/HideStatusBarControllerBase$HideStatusBarStatus;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/hide_status_bar/HideStatusBarControllerBase;->mIsDestroyed:Z

    return-void
.end method

.method private isFullScreenMode(Landroid/app/Activity;)Z
    .locals 0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/hide_status_bar/HideStatusBarControllerBase;->getMainActivityDelegate(Landroid/app/Activity;)Lcom/sec/android/app/sbrowser/common/model/main/MainActivityDelegate;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/common/model/main/MainActivityDelegate;->isFullScreenMode()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private setHideStatusBar(Landroid/app/Activity;Z)V
    .locals 4

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v2

    const-string v3, "HideStatusBarControllerBase"

    if-eqz p2, :cond_3

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/hide_status_bar/HideStatusBarControllerBase;->isMainViewShowing(Landroid/app/Activity;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p2, 0x0

    invoke-virtual {v0, p2}, Landroid/view/Window;->setStatusBarColor(I)V

    :cond_0
    const-string p2, "hide status bar is enabled"

    invoke-static {v3, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    or-int/lit16 p2, v2, 0x1500

    invoke-virtual {v1, p2}, Landroid/view/View;->setSystemUiVisibility(I)V

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->setShowTransientBarsBySwipe(Landroid/app/Activity;)V

    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    const v0, 0x1020002

    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    iget p2, p2, Landroid/graphics/Rect;->top:I

    if-eqz p2, :cond_1

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    if-eqz p2, :cond_1

    const-string v0, "recompute view attributes"

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {p2, v1}, Landroid/view/ViewParent;->recomputeViewAttributes(Landroid/view/View;)V

    :cond_1
    iget-object p2, p0, Lcom/sec/android/app/sbrowser/hide_status_bar/HideStatusBarControllerBase;->mHideStatusBar:Lcom/sec/android/app/sbrowser/hide_status_bar/HideStatusBar;

    if-eqz p2, :cond_2

    invoke-static {}, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;->getInstance()Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;->isFocusedInstance(Landroid/app/Activity;)Z

    move-result p2

    if-eqz p2, :cond_2

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/hide_status_bar/HideStatusBarControllerBase;->mHideStatusBar:Lcom/sec/android/app/sbrowser/hide_status_bar/HideStatusBar;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/hide_status_bar/HideStatusBarControllerBase;->getMainActivityDelegate(Landroid/app/Activity;)Lcom/sec/android/app/sbrowser/common/model/main/MainActivityDelegate;

    move-result-object v0

    invoke-interface {p2, p1, v0}, Lcom/sec/android/app/sbrowser/hide_status_bar/HideStatusBar;->runHideStatusBar(Landroid/app/Activity;Lcom/sec/android/app/sbrowser/common/model/main/MainActivityDelegate;)V

    :cond_2
    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/hide_status_bar/HideStatusBarControllerBase;->updateStatusbarVisiblity(Landroid/app/Activity;)V

    goto :goto_0

    :cond_3
    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/hide_status_bar/HideStatusBarControllerBase;->isFullScreenMode(Landroid/app/Activity;)Z

    move-result p2

    if-eqz p2, :cond_4

    const-string p0, "fullscreen mode: skip to clear flags"

    invoke-static {v3, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_4
    const-string p2, "hide status bar is disabled"

    invoke-static {v3, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    and-int/lit16 p2, v2, -0x405

    invoke-virtual {v1, p2}, Landroid/view/View;->setSystemUiVisibility(I)V

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/hide_status_bar/HideStatusBarControllerBase;->mHideStatusBar:Lcom/sec/android/app/sbrowser/hide_status_bar/HideStatusBar;

    if-eqz p2, :cond_5

    invoke-interface {p2, p1}, Lcom/sec/android/app/sbrowser/hide_status_bar/HideStatusBar;->stopHideStatusBar(Landroid/app/Activity;)V

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/hide_status_bar/HideStatusBarControllerBase;->isTurnedOn(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_5

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/hide_status_bar/HideStatusBarControllerBase;->mHideStatusBar:Lcom/sec/android/app/sbrowser/hide_status_bar/HideStatusBar;

    :cond_5
    :goto_0
    return-void
.end method


# virtual methods
.method public getCurrentStatus(Landroid/app/Activity;)Lcom/sec/android/app/sbrowser/hide_status_bar/HideStatusBarControllerBase$HideStatusBarStatus;
    .locals 3

    invoke-static {}, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;->getInstance()Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;->getInstanceId(Landroid/app/Activity;)I

    move-result p1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/hide_status_bar/HideStatusBarControllerBase;->mStatusMap:Ljava/util/Map;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/hide_status_bar/HideStatusBarControllerBase;->mStatusMap:Ljava/util/Map;

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/hide_status_bar/HideStatusBarControllerBase;->mStatusMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/hide_status_bar/HideStatusBarControllerBase;->mStatusMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/sec/android/app/sbrowser/hide_status_bar/HideStatusBarControllerBase$HideStatusBarStatus;

    invoke-direct {v2}, Lcom/sec/android/app/sbrowser/hide_status_bar/HideStatusBarControllerBase$HideStatusBarStatus;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/hide_status_bar/HideStatusBarControllerBase;->mStatusMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/sbrowser/hide_status_bar/HideStatusBarControllerBase$HideStatusBarStatus;

    return-object p0
.end method

.method public getMainActivityDelegate(Landroid/app/Activity;)Lcom/sec/android/app/sbrowser/common/model/main/MainActivityDelegate;
    .locals 0

    instance-of p0, p1, Lcom/sec/android/app/sbrowser/common/model/main/MainActivityDelegate;

    if-eqz p0, :cond_0

    check-cast p1, Lcom/sec/android/app/sbrowser/common/model/main/MainActivityDelegate;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public abstract initialize(Landroid/app/Activity;)V
.end method

.method public isEnabled(Landroid/app/Activity;)Z
    .locals 2

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/hide_status_bar/HideStatusBarControllerBase;->isTurnedOn(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/hide_status_bar/HideStatusBarControllerBase;->mIsDestroyed:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->isHideCutoutCameraTurnedOn(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p0, "HideStatusBarControllerBase"

    const-string p1, "Hide cutout camera is turned on"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_1
    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/hide_status_bar/HideStatusBarControllerBase;->getCurrentStatus(Landroid/app/Activity;)Lcom/sec/android/app/sbrowser/hide_status_bar/HideStatusBarControllerBase$HideStatusBarStatus;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/hide_status_bar/HideStatusBarControllerBase$HideStatusBarStatus;->isEnabled(Landroid/app/Activity;)Z

    move-result p0

    return p0

    :cond_2
    :goto_0
    return v1
.end method

.method public isFinOnPageRunning(Landroid/app/Activity;)Z
    .locals 0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/hide_status_bar/HideStatusBarControllerBase;->getMainActivityDelegate(Landroid/app/Activity;)Lcom/sec/android/app/sbrowser/common/model/main/MainActivityDelegate;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/common/model/main/MainActivityDelegate;->isFindOnPageRunning()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isMainViewShowing(Landroid/app/Activity;)Z
    .locals 0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/hide_status_bar/HideStatusBarControllerBase;->getMainActivityDelegate(Landroid/app/Activity;)Lcom/sec/android/app/sbrowser/common/model/main/MainActivityDelegate;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/common/model/main/MainActivityDelegate;->isMainViewShowing()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public abstract isStatusBarHidden(Landroid/app/Activity;)Z
.end method

.method public abstract isTurnedOn(Landroid/content/Context;)Z
.end method

.method public abstract needToAddTopMargin(Landroid/app/Activity;)Z
.end method

.method public onApplyWindowInsets(Landroid/view/WindowInsets;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/hide_status_bar/HideStatusBarControllerBase;->mHideStatusBar:Lcom/sec/android/app/sbrowser/hide_status_bar/HideStatusBar;

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/hide_status_bar/HideStatusBar;->onApplyWindowInsets(Landroid/view/WindowInsets;)V

    return-void
.end method

.method public onDestroy(Landroid/app/Activity;)V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/hide_status_bar/HideStatusBarControllerBase;->mIsDestroyed:Z

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/hide_status_bar/HideStatusBarControllerBase;->mHideStatusBar:Lcom/sec/android/app/sbrowser/hide_status_bar/HideStatusBar;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/sec/android/app/sbrowser/hide_status_bar/HideStatusBar;->stopHideStatusBar(Landroid/app/Activity;)V

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/hide_status_bar/HideStatusBarControllerBase;->mHideStatusBar:Lcom/sec/android/app/sbrowser/hide_status_bar/HideStatusBar;

    :cond_0
    iput-object v1, p0, Lcom/sec/android/app/sbrowser/hide_status_bar/HideStatusBarControllerBase;->mStatusMap:Ljava/util/Map;

    return-void
.end method

.method public onPause(Landroid/app/Activity;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/hide_status_bar/HideStatusBarControllerBase;->mHideStatusBar:Lcom/sec/android/app/sbrowser/hide_status_bar/HideStatusBar;

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/hide_status_bar/HideStatusBarControllerBase;->isEnabled(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/hide_status_bar/HideStatusBarControllerBase;->mHideStatusBar:Lcom/sec/android/app/sbrowser/hide_status_bar/HideStatusBar;

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/hide_status_bar/HideStatusBar;->pauseHideStatusBar(Landroid/app/Activity;)V

    :cond_0
    return-void
.end method

.method public abstract onToolbarOffsetChanged(Landroid/app/Activity;F)V
.end method

.method public setStatusBarVisibility(Landroid/app/Activity;Z)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/hide_status_bar/HideStatusBarControllerBase;->mHideStatusBar:Lcom/sec/android/app/sbrowser/hide_status_bar/HideStatusBar;

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-interface {p0, p1, p2}, Lcom/sec/android/app/sbrowser/hide_status_bar/HideStatusBar;->updateStatusbarVisiblity(Landroid/app/Activity;Z)V

    return-void
.end method

.method public updateCutOutMarginsVisibility(Landroid/app/Activity;Landroid/widget/LinearLayout;Z)V
    .locals 0

    if-eqz p3, :cond_0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/hide_status_bar/HideStatusBarControllerBase;->updateHideStatusBar(Landroid/app/Activity;)V

    :cond_0
    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/hide_status_bar/HideStatusBarControllerBase;->needToAddTopMargin(Landroid/app/Activity;)Z

    move-result p0

    const-string p1, "HideStatusBarControllerBase"

    if-eqz p0, :cond_1

    const-string p0, "updateCutOutMarginsVisibility: VISIBLE"

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    invoke-static {p2}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->getStatusBarHeightIgnoringVisibility(Landroid/view/View;)I

    move-result p1

    iput p1, p0, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/4 p0, 0x0

    invoke-virtual {p2, p0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_1
    const-string p0, "updateCutOutMarginsVisibility: GONE"

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p0, 0x8

    invoke-virtual {p2, p0}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public updateHideStatusBar(Landroid/app/Activity;)V
    .locals 2

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/hide_status_bar/HideStatusBarControllerBase;->isTurnedOn(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/hide_status_bar/HideStatusBarControllerBase;->mHideStatusBar:Lcom/sec/android/app/sbrowser/hide_status_bar/HideStatusBar;

    if-nez v0, :cond_1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_0

    new-instance v0, Lcom/sec/android/app/sbrowser/hide_status_bar/HideStatusBarWindowInset;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/hide_status_bar/HideStatusBarWindowInset;-><init>(Lcom/sec/android/app/sbrowser/hide_status_bar/HideStatusBarControllerDelegate;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/hide_status_bar/HideStatusBarControllerBase;->mHideStatusBar:Lcom/sec/android/app/sbrowser/hide_status_bar/HideStatusBar;

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/sec/android/app/sbrowser/hide_status_bar/HideStatusBarWindowFlag;

    invoke-direct {v0}, Lcom/sec/android/app/sbrowser/hide_status_bar/HideStatusBarWindowFlag;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/hide_status_bar/HideStatusBarControllerBase;->mHideStatusBar:Lcom/sec/android/app/sbrowser/hide_status_bar/HideStatusBar;

    :cond_1
    :goto_0
    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/hide_status_bar/HideStatusBarControllerBase;->isEnabled(Landroid/app/Activity;)Z

    move-result v0

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lcom/sec/android/app/sbrowser/hide_status_bar/HideStatusBarControllerBase;->updateLayoutCutOutMode(Landroid/view/Window;Z)V

    invoke-direct {p0, p1, v0}, Lcom/sec/android/app/sbrowser/hide_status_bar/HideStatusBarControllerBase;->setHideStatusBar(Landroid/app/Activity;Z)V

    return-void
.end method

.method public updateLayoutCutOutMode(Landroid/view/Window;Z)V
    .locals 2

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;->isNewGuiEnabled()Z

    move-result p0

    if-eqz p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p0

    const-string v0, "HideStatusBarControllerBase"

    if-eqz p2, :cond_1

    iget p2, p0, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    const/4 v1, 0x1

    if-eq p2, v1, :cond_2

    const-string p2, "set cutout mode to short edges"

    invoke-static {v0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput v1, p0, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    invoke-virtual {p1, p0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    goto :goto_0

    :cond_1
    iget p2, p0, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    if-eqz p2, :cond_2

    const-string p2, "set cutout mode to default"

    invoke-static {v0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p2, 0x0

    iput p2, p0, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    invoke-virtual {p1, p0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public updateStatusbarVisiblity(Landroid/app/Activity;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/hide_status_bar/HideStatusBarControllerBase;->mHideStatusBar:Lcom/sec/android/app/sbrowser/hide_status_bar/HideStatusBar;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/hide_status_bar/HideStatusBarControllerBase;->isStatusBarHidden(Landroid/app/Activity;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    invoke-interface {v0, p1, p0}, Lcom/sec/android/app/sbrowser/hide_status_bar/HideStatusBar;->updateStatusbarVisiblity(Landroid/app/Activity;Z)V

    return-void
.end method
