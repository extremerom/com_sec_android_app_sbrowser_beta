.class public Lcom/sec/android/app/sbrowser/common/flexmode/FlexModeManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/common/flexmode/FlexModeManager$LayoutStateChangeCallback;,
        Lcom/sec/android/app/sbrowser/common/flexmode/FlexModeManager$DeviceStateChangeCallback;,
        Lcom/sec/android/app/sbrowser/common/flexmode/FlexModeManager$DeviceStateCallback;
    }
.end annotation


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mDeviceStateCallback:Lcom/sec/android/app/sbrowser/common/flexmode/FlexModeManager$DeviceStateCallback;

.field private mDeviceStateChangeCallback:Lcom/sec/android/app/sbrowser/common/flexmode/FlexModeManager$DeviceStateChangeCallback;

.field private mExecutor:Ljava/util/concurrent/Executor;

.field private mIsRegistered:Z

.field private mIsVisibleActivity:Z

.field private mLayoutStateChangeCallback:Lcom/sec/android/app/sbrowser/common/flexmode/FlexModeManager$LayoutStateChangeCallback;

.field private mWindowManager:Landroidx/window/WindowManager;

.field private mWindowManagerHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/sec/android/app/sbrowser/common/flexmode/FlexModeManager$DeviceStateCallback;)V
    .locals 2
    .param p2    # Lcom/sec/android/app/sbrowser/common/flexmode/FlexModeManager$DeviceStateCallback;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/common/flexmode/FlexModeManager;->mIsVisibleActivity:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/common/flexmode/FlexModeManager;->mIsRegistered:Z

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/common/flexmode/FlexModeManager;->mWindowManagerHandler:Landroid/os/Handler;

    new-instance v0, Lcom/sec/android/app/sbrowser/common/flexmode/a;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/common/flexmode/a;-><init>(Lcom/sec/android/app/sbrowser/common/flexmode/FlexModeManager;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/common/flexmode/FlexModeManager;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v0, Lcom/sec/android/app/sbrowser/common/flexmode/FlexModeManager$LayoutStateChangeCallback;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/common/flexmode/FlexModeManager$LayoutStateChangeCallback;-><init>(Lcom/sec/android/app/sbrowser/common/flexmode/FlexModeManager;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/common/flexmode/FlexModeManager;->mLayoutStateChangeCallback:Lcom/sec/android/app/sbrowser/common/flexmode/FlexModeManager$LayoutStateChangeCallback;

    new-instance v0, Lcom/sec/android/app/sbrowser/common/flexmode/FlexModeManager$DeviceStateChangeCallback;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/common/flexmode/FlexModeManager$DeviceStateChangeCallback;-><init>(Lcom/sec/android/app/sbrowser/common/flexmode/FlexModeManager;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/common/flexmode/FlexModeManager;->mDeviceStateChangeCallback:Lcom/sec/android/app/sbrowser/common/flexmode/FlexModeManager$DeviceStateChangeCallback;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/common/flexmode/FlexModeManager;->mActivity:Landroid/app/Activity;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/common/flexmode/FlexModeManager;->mDeviceStateCallback:Lcom/sec/android/app/sbrowser/common/flexmode/FlexModeManager$DeviceStateCallback;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/flexmode/FlexModeManager;->createWindowManager()V

    return-void
.end method

.method public static synthetic a(Lcom/sec/android/app/sbrowser/common/flexmode/FlexModeManager;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/common/flexmode/FlexModeManager;->lambda$new$0(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$new$0(Ljava/lang/Runnable;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/flexmode/FlexModeManager;->mWindowManagerHandler:Landroid/os/Handler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method public createWindowManager()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/flexmode/FlexModeManager;->mWindowManager:Landroidx/window/WindowManager;

    if-nez v0, :cond_0

    new-instance v0, Landroidx/window/WindowManager;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/flexmode/FlexModeManager;->mActivity:Landroid/app/Activity;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroidx/window/WindowManager;-><init>(Landroid/content/Context;Landroidx/window/WindowBackend;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/common/flexmode/FlexModeManager;->mWindowManager:Landroidx/window/WindowManager;

    :cond_0
    return-void
.end method

.method public onConfigurationChanged()V
    .locals 3

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, LG6/e;

    const/16 v2, 0x18

    invoke-direct {v1, v2, p0}, LG6/e;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onDestroy()V
    .locals 2

    const-string v0, "FlexModeManager"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/flexmode/FlexModeManager;->unregisterWindowManagerCallbacks()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/common/flexmode/FlexModeManager;->mLayoutStateChangeCallback:Lcom/sec/android/app/sbrowser/common/flexmode/FlexModeManager$LayoutStateChangeCallback;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/common/flexmode/FlexModeManager;->mDeviceStateChangeCallback:Lcom/sec/android/app/sbrowser/common/flexmode/FlexModeManager$DeviceStateChangeCallback;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/flexmode/FlexModeManager;->mWindowManagerHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/common/flexmode/FlexModeManager;->mWindowManagerHandler:Landroid/os/Handler;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/common/flexmode/FlexModeManager;->mExecutor:Ljava/util/concurrent/Executor;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/common/flexmode/FlexModeManager;->mActivity:Landroid/app/Activity;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/common/flexmode/FlexModeManager;->mDeviceStateCallback:Lcom/sec/android/app/sbrowser/common/flexmode/FlexModeManager$DeviceStateCallback;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/common/flexmode/FlexModeManager;->mWindowManager:Landroidx/window/WindowManager;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/common/flexmode/FlexModeManager;->mIsRegistered:Z

    return-void
.end method

.method public onFlexModeChanged()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/flexmode/FlexModeManager;->mWindowManager:Landroidx/window/WindowManager;

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/common/flexmode/FlexModeManager;->mIsRegistered:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/flexmode/FlexModeManager;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isChangingConfigurations()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/common/flexmode/FlexModeManager;->mIsVisibleActivity:Z

    if-nez v0, :cond_2

    return-void

    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/flexmode/FlexModeManager;->updateState()V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/flexmode/FlexModeManager;->mDeviceStateCallback:Lcom/sec/android/app/sbrowser/common/flexmode/FlexModeManager$DeviceStateCallback;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/common/flexmode/FlexModeManager$DeviceStateCallback;->onDeviceStateChanged()V

    :cond_3
    :goto_0
    return-void
.end method

.method public onPause()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/common/flexmode/FlexModeManager;->mIsVisibleActivity:Z

    return-void
.end method

.method public onResume()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/common/flexmode/FlexModeManager;->mIsVisibleActivity:Z

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/flexmode/FlexModeManager;->mWindowManager:Landroidx/window/WindowManager;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/common/flexmode/FlexModeManager;->mIsRegistered:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/flexmode/FlexModeManager;->onFlexModeChanged()V

    :cond_0
    return-void
.end method

.method public registerWindowManagerCallbacks()V
    .locals 3

    const-string v0, "FlexModeManager"

    const-string v1, "registerWindowManagerCallbacks"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/flexmode/FlexModeManager;->mWindowManager:Landroidx/window/WindowManager;

    if-eqz v0, :cond_1

    iget-boolean v1, p0, Lcom/sec/android/app/sbrowser/common/flexmode/FlexModeManager;->mIsRegistered:Z

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/flexmode/FlexModeManager;->mExecutor:Ljava/util/concurrent/Executor;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/common/flexmode/FlexModeManager;->mDeviceStateChangeCallback:Lcom/sec/android/app/sbrowser/common/flexmode/FlexModeManager$DeviceStateChangeCallback;

    invoke-virtual {v0, v1, v2}, Landroidx/window/WindowManager;->registerDeviceStateChangeCallback(Ljava/util/concurrent/Executor;Le1/a;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/flexmode/FlexModeManager;->mWindowManager:Landroidx/window/WindowManager;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/flexmode/FlexModeManager;->mExecutor:Ljava/util/concurrent/Executor;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/common/flexmode/FlexModeManager;->mLayoutStateChangeCallback:Lcom/sec/android/app/sbrowser/common/flexmode/FlexModeManager$LayoutStateChangeCallback;

    invoke-virtual {v0, v1, v2}, Landroidx/window/WindowManager;->registerLayoutChangeCallback(Ljava/util/concurrent/Executor;Le1/a;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/common/flexmode/FlexModeManager;->mIsRegistered:Z

    :cond_1
    :goto_0
    return-void
.end method

.method public setTestWindowManager(Landroidx/window/WindowManager;)V
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/common/flexmode/FlexModeManager;->mWindowManager:Landroidx/window/WindowManager;

    return-void
.end method

.method public unregisterWindowManagerCallbacks()V
    .locals 2

    const-string v0, "FlexModeManager"

    const-string v1, "unregisterWindowManagerCallbacks"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/flexmode/FlexModeManager;->mWindowManager:Landroidx/window/WindowManager;

    if-eqz v0, :cond_1

    iget-boolean v1, p0, Lcom/sec/android/app/sbrowser/common/flexmode/FlexModeManager;->mIsRegistered:Z

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/flexmode/FlexModeManager;->mDeviceStateChangeCallback:Lcom/sec/android/app/sbrowser/common/flexmode/FlexModeManager$DeviceStateChangeCallback;

    invoke-virtual {v0, v1}, Landroidx/window/WindowManager;->unregisterDeviceStateChangeCallback(Le1/a;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/flexmode/FlexModeManager;->mWindowManager:Landroidx/window/WindowManager;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/flexmode/FlexModeManager;->mLayoutStateChangeCallback:Lcom/sec/android/app/sbrowser/common/flexmode/FlexModeManager$LayoutStateChangeCallback;

    invoke-virtual {v0, v1}, Landroidx/window/WindowManager;->unregisterLayoutChangeCallback(Le1/a;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/common/flexmode/FlexModeManager;->mIsRegistered:Z

    :cond_1
    :goto_0
    return-void
.end method

.method public updateState()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/flexmode/FlexModeManager;->mWindowManager:Landroidx/window/WindowManager;

    invoke-virtual {v0}, Landroidx/window/WindowManager;->getWindowLayoutInfo()Landroidx/window/WindowLayoutInfo;

    move-result-object v0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/flexmode/FlexModeManager;->mWindowManager:Landroidx/window/WindowManager;

    invoke-virtual {p0}, Landroidx/window/WindowManager;->getDeviceState()Landroidx/window/DeviceState;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/window/DeviceState;->getPosture()I

    move-result p0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/flexmode/FlexModeUtil;->setDevicePosture(I)V

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/flexmode/FlexModeUtil;->updateDisplayFeature(Landroidx/window/WindowLayoutInfo;)V

    return-void
.end method
