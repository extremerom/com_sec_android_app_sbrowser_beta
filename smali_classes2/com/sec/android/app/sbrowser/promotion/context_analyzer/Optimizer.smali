.class Lcom/sec/android/app/sbrowser/promotion/context_analyzer/Optimizer;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mIsRunning:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/promotion/context_analyzer/Optimizer;->mIsRunning:Z

    return-void
.end method

.method public static synthetic a(Lcom/sec/android/app/sbrowser/promotion/context_analyzer/Optimizer;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/promotion/context_analyzer/Optimizer;->lambda$run$0()V

    return-void
.end method

.method private isBusy()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/promotion/context_analyzer/Optimizer;->mIsRunning:Z

    return p0
.end method

.method private synthetic lambda$run$0()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/promotion/context_analyzer/Optimizer;->mIsRunning:Z

    return-void
.end method


# virtual methods
.method public run()Z
    .locals 5

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/promotion/context_analyzer/Optimizer;->isBusy()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/promotion/context_analyzer/Optimizer;->mIsRunning:Z

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    new-instance v2, Lcom/sec/android/app/sbrowser/promotion/context_analyzer/b;

    invoke-direct {v2, p0}, Lcom/sec/android/app/sbrowser/promotion/context_analyzer/b;-><init>(Lcom/sec/android/app/sbrowser/promotion/context_analyzer/Optimizer;)V

    const-wide/16 v3, 0x3e8

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return v0
.end method
