.class Lcom/sec/android/app/sbrowser/trans_bar/TransBarHandler;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mClient:Lcom/sec/android/app/sbrowser/trans_bar/TransBarHandlerClient;

.field private mGoneRunnable:Ljava/lang/Runnable;

.field private mLoadingRunnable:Ljava/lang/Runnable;

.field private mShowRunnable:Ljava/lang/Runnable;

.field private mTransBarHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/sec/android/app/sbrowser/trans_bar/TransBarHandlerClient;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarHandler$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarHandler$1;-><init>(Lcom/sec/android/app/sbrowser/trans_bar/TransBarHandler;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarHandler;->mLoadingRunnable:Ljava/lang/Runnable;

    new-instance v0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarHandler$2;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarHandler$2;-><init>(Lcom/sec/android/app/sbrowser/trans_bar/TransBarHandler;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarHandler;->mGoneRunnable:Ljava/lang/Runnable;

    new-instance v0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarHandler$3;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarHandler$3;-><init>(Lcom/sec/android/app/sbrowser/trans_bar/TransBarHandler;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarHandler;->mShowRunnable:Ljava/lang/Runnable;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarHandler;->mClient:Lcom/sec/android/app/sbrowser/trans_bar/TransBarHandlerClient;

    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {v0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarHandler;->mTransBarHandler:Landroid/os/Handler;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarHandler;->mClient:Lcom/sec/android/app/sbrowser/trans_bar/TransBarHandlerClient;

    return-void
.end method

.method public static bridge synthetic a(Lcom/sec/android/app/sbrowser/trans_bar/TransBarHandler;)Lcom/sec/android/app/sbrowser/trans_bar/TransBarHandlerClient;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarHandler;->mClient:Lcom/sec/android/app/sbrowser/trans_bar/TransBarHandlerClient;

    return-object p0
.end method


# virtual methods
.method public clearGoneCallback()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarHandler;->mTransBarHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarHandler;->mGoneRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarHandler;->mTransBarHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarHandler;->mGoneRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public clearShowCallback()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarHandler;->mTransBarHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarHandler;->mShowRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarHandler;->mTransBarHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarHandler;->mShowRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public hasShowCallbacks()Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarHandler;->mTransBarHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarHandler;->mShowRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public onTranslateIfNeeded()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarHandler;->mTransBarHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarHandler;->mLoadingRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarHandler;->mTransBarHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarHandler;->mLoadingRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method public runGoneCallbackDelayed()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarHandler;->mTransBarHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarHandler;->mGoneRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0x258

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method public runShowCallbackDelayed()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarHandler;->mTransBarHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarHandler;->mShowRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarHandler;->mTransBarHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarHandler;->mShowRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0x12c

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    return-void
.end method
