.class Lcom/sec/android/app/sbrowser/hide_status_bar/HideStatusBarWindowInset;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/hide_status_bar/HideStatusBar;


# annotations
.annotation build Landroidx/annotation/RequiresApi;
.end annotation


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mCancellationSignal:Landroid/os/CancellationSignal;

.field private mDelegate:Lcom/sec/android/app/sbrowser/common/model/main/MainActivityDelegate;

.field private mHideStatusBarControllerDelegate:Lcom/sec/android/app/sbrowser/hide_status_bar/HideStatusBarControllerDelegate;

.field private mHidestatusBarWindowFlag:Lcom/sec/android/app/sbrowser/hide_status_bar/HideStatusBarWindowFlag;

.field private mInsetsController:Landroid/view/WindowInsetsAnimationController;

.field private mIsRunning:Z

.field private mLastImeBottom:I

.field private mLastSoftInputMode:I

.field private mStatusBarTopInset:I

.field private mWindowInsetsAnimationControlListener:Landroid/view/WindowInsetsAnimationControlListener;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/hide_status_bar/HideStatusBarControllerDelegate;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/sec/android/app/sbrowser/hide_status_bar/HideStatusBarWindowFlag;

    invoke-direct {v0}, Lcom/sec/android/app/sbrowser/hide_status_bar/HideStatusBarWindowFlag;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/hide_status_bar/HideStatusBarWindowInset;->mHidestatusBarWindowFlag:Lcom/sec/android/app/sbrowser/hide_status_bar/HideStatusBarWindowFlag;

    new-instance v0, Lcom/sec/android/app/sbrowser/hide_status_bar/HideStatusBarWindowInset$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/hide_status_bar/HideStatusBarWindowInset$1;-><init>(Lcom/sec/android/app/sbrowser/hide_status_bar/HideStatusBarWindowInset;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/hide_status_bar/HideStatusBarWindowInset;->mWindowInsetsAnimationControlListener:Landroid/view/WindowInsetsAnimationControlListener;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/hide_status_bar/HideStatusBarWindowInset;->mHideStatusBarControllerDelegate:Lcom/sec/android/app/sbrowser/hide_status_bar/HideStatusBarControllerDelegate;

    return-void
.end method

.method public static bridge synthetic a(Lcom/sec/android/app/sbrowser/hide_status_bar/HideStatusBarWindowInset;)Landroid/os/CancellationSignal;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/hide_status_bar/HideStatusBarWindowInset;->mCancellationSignal:Landroid/os/CancellationSignal;

    return-object p0
.end method

.method private adjustResize(Landroid/view/WindowInsets;)V
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/hide_status_bar/HideStatusBarWindowInset;->mActivity:Landroid/app/Activity;

    if-eqz v0, :cond_3

    if-eqz p1, :cond_3

    iget-boolean v1, p0, Lcom/sec/android/app/sbrowser/hide_status_bar/HideStatusBarWindowInset;->mIsRunning:Z

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-static {}, Lf1/E;->b()I

    move-result v1

    invoke-static {p1, v1}, Lf1/y0;->f(Landroid/view/WindowInsets;I)Landroid/graphics/Insets;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/hide_status_bar/HideStatusBarWindowInset;->mActivity:Landroid/app/Activity;

    invoke-direct {p0, v2}, Lcom/sec/android/app/sbrowser/hide_status_bar/HideStatusBarWindowInset;->isNeedToResize(Landroid/app/Activity;)Z

    move-result p0

    const-string v2, "HideStatusBarWindowInset"

    const/4 v3, 0x0

    if-eqz p0, :cond_2

    iget p0, v1, Landroid/graphics/Insets;->bottom:I

    if-eqz p0, :cond_2

    const-string p0, "resized by ime"

    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lf1/E;->x()I

    move-result p0

    invoke-static {p1, p0}, Lf1/y0;->f(Landroid/view/WindowInsets;I)Landroid/graphics/Insets;

    move-result-object p0

    iget p1, v1, Landroid/graphics/Insets;->bottom:I

    iget p0, p0, Landroid/graphics/Insets;->bottom:I

    sub-int/2addr p1, p0

    invoke-virtual {v0, v3, v3, v3, p1}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_0

    :cond_2
    const-string p0, "not resized"

    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0, v3, v3, v3, v3}, Landroid/view/View;->setPadding(IIII)V

    :cond_3
    :goto_0
    return-void
.end method

.method public static bridge synthetic b(Lcom/sec/android/app/sbrowser/hide_status_bar/HideStatusBarWindowInset;)Landroid/view/WindowInsetsAnimationController;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/hide_status_bar/HideStatusBarWindowInset;->mInsetsController:Landroid/view/WindowInsetsAnimationController;

    return-object p0
.end method

.method public static bridge synthetic c(Lcom/sec/android/app/sbrowser/hide_status_bar/HideStatusBarWindowInset;)I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/sbrowser/hide_status_bar/HideStatusBarWindowInset;->mStatusBarTopInset:I

    return p0
.end method

.method private controlWindowInsetAnimaion(Landroid/app/Activity;)V
    .locals 5

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/hide_status_bar/HideStatusBarWindowInset;->mInsetsController:Landroid/view/WindowInsetsAnimationController;

    if-nez v0, :cond_0

    const-string v0, "HideStatusBarWindowInset"

    const-string v1, "start to control window insets"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    invoke-static {p1}, Lf1/E;->h(Landroid/view/View;)Landroid/view/WindowInsetsController;

    move-result-object p1

    new-instance v1, Landroid/os/CancellationSignal;

    invoke-direct {v1}, Landroid/os/CancellationSignal;-><init>()V

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/hide_status_bar/HideStatusBarWindowInset;->mCancellationSignal:Landroid/os/CancellationSignal;

    if-eqz p1, :cond_0

    :try_start_0
    invoke-static {}, Lf1/E;->s()I

    move-result v1

    new-instance v2, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v2}, Landroid/view/animation/LinearInterpolator;-><init>()V

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/hide_status_bar/HideStatusBarWindowInset;->mCancellationSignal:Landroid/os/CancellationSignal;

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/hide_status_bar/HideStatusBarWindowInset;->mWindowInsetsAnimationControlListener:Landroid/view/WindowInsetsAnimationControlListener;

    invoke-static {p1, v1, v2, v3, v4}, Lcom/samsung/android/sdk/aisuggestion/helper/a;->w(Landroid/view/WindowInsetsController;ILandroid/view/animation/LinearInterpolator;Landroid/os/CancellationSignal;Landroid/view/WindowInsetsAnimationControlListener;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "controlWindowInsetsAnimation failed! - "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/hide_status_bar/HideStatusBarWindowInset;->mCancellationSignal:Landroid/os/CancellationSignal;

    :cond_0
    :goto_0
    return-void
.end method

.method public static bridge synthetic d(Lcom/sec/android/app/sbrowser/hide_status_bar/HideStatusBarWindowInset;)V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/hide_status_bar/HideStatusBarWindowInset;->mCancellationSignal:Landroid/os/CancellationSignal;

    return-void
.end method

.method public static bridge synthetic e(Lcom/sec/android/app/sbrowser/hide_status_bar/HideStatusBarWindowInset;Landroid/view/WindowInsetsAnimationController;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/hide_status_bar/HideStatusBarWindowInset;->mInsetsController:Landroid/view/WindowInsetsAnimationController;

    return-void
.end method

.method public static bridge synthetic f(Lcom/sec/android/app/sbrowser/hide_status_bar/HideStatusBarWindowInset;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/hide_status_bar/HideStatusBarWindowInset;->resetWindowInsetsController()V

    return-void
.end method

.method private isNeedToResize(Landroid/app/Activity;)Z
    .locals 1

    invoke-static {}, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;->getInstance()Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;->isFocusedInstance(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    iget p1, p1, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    const/16 v0, 0x10

    if-ne p1, v0, :cond_1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/hide_status_bar/HideStatusBarWindowInset;->mDelegate:Lcom/sec/android/app/sbrowser/common/model/main/MainActivityDelegate;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/common/model/main/MainActivityDelegate;->isNeedToResizeWindow()Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private resetWindowInsetsController()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/hide_status_bar/HideStatusBarWindowInset;->mInsetsController:Landroid/view/WindowInsetsAnimationController;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/hide_status_bar/HideStatusBarWindowInset;->mCancellationSignal:Landroid/os/CancellationSignal;

    return-void
.end method

.method private setStatusBarTopInset(Landroid/app/Activity;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/sec/android/app/sbrowser/hide_status_bar/HideStatusBarWindowInset;->setStatusBarTopInset(Landroid/app/Activity;IZ)V

    return-void
.end method

.method private setStatusBarTopInset(Landroid/app/Activity;IZ)V
    .locals 0

    if-nez p3, :cond_0

    iget p3, p0, Lcom/sec/android/app/sbrowser/hide_status_bar/HideStatusBarWindowInset;->mStatusBarTopInset:I

    if-ne p3, p2, :cond_0

    return-void

    :cond_0
    iput p2, p0, Lcom/sec/android/app/sbrowser/hide_status_bar/HideStatusBarWindowInset;->mStatusBarTopInset:I

    iget-object p3, p0, Lcom/sec/android/app/sbrowser/hide_status_bar/HideStatusBarWindowInset;->mInsetsController:Landroid/view/WindowInsetsAnimationController;

    if-eqz p3, :cond_1

    invoke-static {p3}, Lcom/samsung/android/sdk/aisuggestion/helper/a;->y(Landroid/view/WindowInsetsAnimationController;)Z

    move-result p3

    if-eqz p3, :cond_1

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/hide_status_bar/HideStatusBarWindowInset;->resetWindowInsetsController()V

    :cond_1
    iget-object p3, p0, Lcom/sec/android/app/sbrowser/hide_status_bar/HideStatusBarWindowInset;->mInsetsController:Landroid/view/WindowInsetsAnimationController;

    if-nez p3, :cond_2

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/hide_status_bar/HideStatusBarWindowInset;->controlWindowInsetAnimaion(Landroid/app/Activity;)V

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    invoke-static {p0, p2, p0, p0}, Landroid/graphics/Insets;->of(IIII)Landroid/graphics/Insets;

    move-result-object p0

    invoke-static {p3, p0}, Lcom/samsung/android/sdk/aisuggestion/helper/a;->u(Landroid/view/WindowInsetsAnimationController;Landroid/graphics/Insets;)V

    :goto_0
    return-void
.end method

.method private toolbarOffsetToStatusBarOffset(F)I
    .locals 1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->getStatusBarHeight()I

    move-result p0

    int-to-float v0, p0

    add-float/2addr v0, p1

    float-to-int p1, v0

    if-le p1, p0, :cond_0

    goto :goto_0

    :cond_0
    if-gez p1, :cond_1

    const/4 p0, 0x0

    goto :goto_0

    :cond_1
    move p0, p1

    :goto_0
    return p0
.end method


# virtual methods
.method public onApplyWindowInsets(Landroid/view/WindowInsets;)V
    .locals 5

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/hide_status_bar/HideStatusBarWindowInset;->mActivity:Landroid/app/Activity;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-static {}, Lf1/E;->b()I

    move-result v1

    invoke-static {p1, v1}, Lf1/y0;->f(Landroid/view/WindowInsets;I)Landroid/graphics/Insets;

    move-result-object v1

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    iget v3, p0, Lcom/sec/android/app/sbrowser/hide_status_bar/HideStatusBarWindowInset;->mLastImeBottom:I

    iget v4, v1, Landroid/graphics/Insets;->bottom:I

    if-ne v3, v4, :cond_2

    iget v3, p0, Lcom/sec/android/app/sbrowser/hide_status_bar/HideStatusBarWindowInset;->mLastSoftInputMode:I

    if-eq v3, v2, :cond_3

    :cond_2
    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/hide_status_bar/HideStatusBarWindowInset;->adjustResize(Landroid/view/WindowInsets;)V

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    iget p1, v1, Landroid/graphics/Insets;->bottom:I

    iput p1, p0, Lcom/sec/android/app/sbrowser/hide_status_bar/HideStatusBarWindowInset;->mLastImeBottom:I

    iput v2, p0, Lcom/sec/android/app/sbrowser/hide_status_bar/HideStatusBarWindowInset;->mLastSoftInputMode:I

    :cond_3
    return-void
.end method

.method public onToolbarOffsetChanged(Landroid/app/Activity;F)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/hide_status_bar/HideStatusBarWindowInset;->mActivity:Landroid/app/Activity;

    if-nez v0, :cond_1

    instance-of v0, p1, Lcom/sec/android/app/sbrowser/common/model/main/MainActivityDelegate;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/sec/android/app/sbrowser/common/model/main/MainActivityDelegate;

    invoke-virtual {p0, p1, v0}, Lcom/sec/android/app/sbrowser/hide_status_bar/HideStatusBarWindowInset;->runHideStatusBar(Landroid/app/Activity;Lcom/sec/android/app/sbrowser/common/model/main/MainActivityDelegate;)V

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    :goto_0
    invoke-direct {p0, p2}, Lcom/sec/android/app/sbrowser/hide_status_bar/HideStatusBarWindowInset;->toolbarOffsetToStatusBarOffset(F)I

    move-result p2

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/hide_status_bar/HideStatusBarWindowInset;->setStatusBarTopInset(Landroid/app/Activity;I)V

    return-void
.end method

.method public pauseHideStatusBar(Landroid/app/Activity;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/hide_status_bar/HideStatusBarWindowInset;->mActivity:Landroid/app/Activity;

    if-ne v0, p1, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/hide_status_bar/HideStatusBarWindowInset;->resetWindowInsetsController()V

    :cond_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;->getInstance()Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;->isFocusedInstance(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/sec/android/app/sbrowser/hide_status_bar/HideStatusBarWindowInset;->mStatusBarTopInset:I

    if-nez v0, :cond_2

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->isFocusLayoutType(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const-string v0, "HideStatusBarWindowInset"

    const-string v1, "pause HideStatusBar"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/sec/android/app/sbrowser/hide_status_bar/HideStatusBarWindowInset;->updateStatusbarVisiblity(Landroid/app/Activity;Z)V

    :cond_2
    :goto_0
    return-void
.end method

.method public runHideStatusBar(Landroid/app/Activity;Lcom/sec/android/app/sbrowser/common/model/main/MainActivityDelegate;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/hide_status_bar/HideStatusBarWindowInset;->mActivity:Landroid/app/Activity;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/hide_status_bar/HideStatusBarWindowInset;->mDelegate:Lcom/sec/android/app/sbrowser/common/model/main/MainActivityDelegate;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/hide_status_bar/HideStatusBarWindowInset;->mIsRunning:Z

    return-void
.end method

.method public stopHideStatusBar(Landroid/app/Activity;)V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/hide_status_bar/HideStatusBarWindowInset;->mIsRunning:Z

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0, v0, v0, v0}, Landroid/view/View;->setPadding(IIII)V

    instance-of v0, p1, Lcom/sec/android/app/sbrowser/common/model/main/MainActivityDelegate;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/sec/android/app/sbrowser/common/model/main/MainActivityDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/main/MainActivityDelegate;->isFullScreenForDisplayCutoutMode()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/sec/android/app/sbrowser/hide_status_bar/HideStatusBarWindowInset;->updateStatusbarVisiblity(Landroid/app/Activity;Z)V

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/hide_status_bar/HideStatusBarWindowInset;->resetWindowInsetsController()V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/hide_status_bar/HideStatusBarWindowInset;->mActivity:Landroid/app/Activity;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/hide_status_bar/HideStatusBarWindowInset;->mDelegate:Lcom/sec/android/app/sbrowser/common/model/main/MainActivityDelegate;

    return-void
.end method

.method public updateStatusbarVisiblity(Landroid/app/Activity;Z)V
    .locals 2

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lf1/E;->h(Landroid/view/View;)Landroid/view/WindowInsetsController;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p2, :cond_1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->getStatusBarHeight()I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/sbrowser/hide_status_bar/HideStatusBarWindowInset;->mStatusBarTopInset:I

    invoke-static {}, Lf1/E;->s()I

    move-result v1

    invoke-static {v0, v1}, Lf1/E;->o(Landroid/view/WindowInsetsController;I)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    iput v1, p0, Lcom/sec/android/app/sbrowser/hide_status_bar/HideStatusBarWindowInset;->mStatusBarTopInset:I

    invoke-static {}, Lf1/E;->s()I

    move-result v1

    invoke-static {v0, v1}, Lf1/E;->v(Landroid/view/WindowInsetsController;I)V

    :goto_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/hide_status_bar/HideStatusBarWindowInset;->mHidestatusBarWindowFlag:Lcom/sec/android/app/sbrowser/hide_status_bar/HideStatusBarWindowFlag;

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/hide_status_bar/HideStatusBarWindowFlag;->updateStatusbarVisiblity(Landroid/app/Activity;Z)V

    return-void
.end method
