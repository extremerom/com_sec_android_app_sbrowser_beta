.class public Lcom/sec/android/app/sbrowser/customtabs/features/ImmersiveModeController;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final mActivity:Landroid/app/Activity;

.field private final mHandler:Landroid/os/Handler;

.field private mInImmersiveMode:Z

.field private mIsImmersiveModeSticky:Z

.field private final mUpdateImmersiveFlagsRunnable:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/customtabs/features/ImmersiveModeController;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/sec/android/app/sbrowser/tab_sync/o;

    const/16 v1, 0xd

    invoke-direct {v0, v1, p0}, Lcom/sec/android/app/sbrowser/tab_sync/o;-><init>(ILjava/lang/Object;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/customtabs/features/ImmersiveModeController;->mUpdateImmersiveFlagsRunnable:Ljava/lang/Runnable;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/customtabs/features/ImmersiveModeController;->mActivity:Landroid/app/Activity;

    return-void
.end method

.method public static synthetic a(Lcom/sec/android/app/sbrowser/customtabs/features/ImmersiveModeController;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/customtabs/features/ImmersiveModeController;->lambda$enterImmersiveMode$0(I)V

    return-void
.end method

.method public static synthetic b(Lcom/sec/android/app/sbrowser/customtabs/features/ImmersiveModeController;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/customtabs/features/ImmersiveModeController;->updateImmersiveFlags()V

    return-void
.end method

.method private synthetic lambda$enterImmersiveMode$0(I)V
    .locals 0

    const/16 p1, 0xbb8

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/customtabs/features/ImmersiveModeController;->postSetImmersiveFlags(I)V

    return-void
.end method

.method private postSetImmersiveFlags(I)V
    .locals 3

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/customtabs/features/ImmersiveModeController;->mInImmersiveMode:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/customtabs/features/ImmersiveModeController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/customtabs/features/ImmersiveModeController;->mUpdateImmersiveFlagsRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/customtabs/features/ImmersiveModeController;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/customtabs/features/ImmersiveModeController;->mUpdateImmersiveFlagsRunnable:Ljava/lang/Runnable;

    int-to-long v1, p1

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private updateImmersiveFlags()V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/customtabs/features/ImmersiveModeController;->updateImmersiveFlagsOnAndroid11()V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/customtabs/features/ImmersiveModeController;->updateImmersiveFlagsOnAndroidNot11()V

    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/customtabs/features/ImmersiveModeController;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/customtabs/features/ImmersiveModeController;->mInImmersiveMode:Z

    xor-int/lit8 p0, p0, 0x1

    invoke-static {v0, p0}, LG5/W2;->c(Landroid/view/Window;Z)V

    return-void
.end method

.method private updateImmersiveFlagsOnAndroid11()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/customtabs/features/ImmersiveModeController;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v1

    iget-boolean v2, p0, Lcom/sec/android/app/sbrowser/customtabs/features/ImmersiveModeController;->mIsImmersiveModeSticky:Z

    if-eqz v2, :cond_0

    const/16 v2, 0x1707

    goto :goto_0

    :cond_0
    const/16 v2, 0xf07

    :goto_0
    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/customtabs/features/ImmersiveModeController;->mInImmersiveMode:Z

    if-eqz p0, :cond_1

    or-int p0, v1, v2

    goto :goto_1

    :cond_1
    not-int p0, v2

    and-int/2addr p0, v1

    :goto_1
    if-eq v1, p0, :cond_2

    invoke-virtual {v0, p0}, Landroid/view/View;->setSystemUiVisibility(I)V

    :cond_2
    return-void
.end method

.method private updateImmersiveFlagsOnAndroidNot11()V
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/customtabs/features/ImmersiveModeController;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    new-instance v2, LI3/c;

    invoke-direct {v2, v1}, LI3/c;-><init>(Landroid/view/View;)V

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x23

    if-lt v1, v3, :cond_0

    new-instance v1, Lf1/A0;

    invoke-direct {v1, v0, v2}, Lf1/z0;-><init>(Landroid/view/Window;LI3/c;)V

    goto :goto_0

    :cond_0
    const/16 v3, 0x1e

    if-lt v1, v3, :cond_1

    new-instance v1, Lf1/z0;

    invoke-direct {v1, v0, v2}, Lf1/z0;-><init>(Landroid/view/Window;LI3/c;)V

    goto :goto_0

    :cond_1
    new-instance v1, Lf1/x0;

    invoke-direct {v1, v0, v2}, Lf1/x0;-><init>(Landroid/view/Window;LI3/c;)V

    :goto_0
    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/customtabs/features/ImmersiveModeController;->mIsImmersiveModeSticky:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x2

    invoke-virtual {v1, v0}, LG5/Y2;->g(I)V

    goto :goto_1

    :cond_2
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, LG5/Y2;->g(I)V

    :goto_1
    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/customtabs/features/ImmersiveModeController;->mInImmersiveMode:Z

    const/4 v0, 0x7

    if-eqz p0, :cond_3

    invoke-virtual {v1, v0}, LG5/Y2;->d(I)V

    goto :goto_2

    :cond_3
    invoke-virtual {v1, v0}, LG5/Y2;->h(I)V

    :goto_2
    return-void
.end method


# virtual methods
.method public enterImmersiveMode(IZ)V
    .locals 2

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/customtabs/features/ImmersiveModeController;->mInImmersiveMode:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/customtabs/features/ImmersiveModeController;->mInImmersiveMode:Z

    iput-boolean p2, p0, Lcom/sec/android/app/sbrowser/customtabs/features/ImmersiveModeController;->mIsImmersiveModeSticky:Z

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/customtabs/features/ImmersiveModeController;->mActivity:Landroid/app/Activity;

    invoke-virtual {p2}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    new-instance v1, Lna/a;

    invoke-direct {v1, p0}, Lna/a;-><init>(Lcom/sec/android/app/sbrowser/customtabs/features/ImmersiveModeController;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnSystemUiVisibilityChangeListener(Landroid/view/View$OnSystemUiVisibilityChangeListener;)V

    invoke-virtual {p2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p2

    iput p1, p2, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/customtabs/features/ImmersiveModeController;->postSetImmersiveFlags(I)V

    return-void
.end method

.method public exitImmersiveMode()V
    .locals 2

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/customtabs/features/ImmersiveModeController;->mInImmersiveMode:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/customtabs/features/ImmersiveModeController;->mInImmersiveMode:Z

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/customtabs/features/ImmersiveModeController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/customtabs/features/ImmersiveModeController;->mUpdateImmersiveFlagsRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/customtabs/features/ImmersiveModeController;->updateImmersiveFlags()V

    return-void
.end method
