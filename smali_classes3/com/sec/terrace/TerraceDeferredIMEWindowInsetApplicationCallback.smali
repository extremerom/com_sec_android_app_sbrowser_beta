.class public Lcom/sec/terrace/TerraceDeferredIMEWindowInsetApplicationCallback;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/ui/InsetObserver$WindowInsetsAnimationListener;


# instance fields
.field private mCurrentAnimation:Lf1/l0;

.field private mInsetObserver:Lorg/chromium/ui/InsetObserver;

.field private final mOnUpdateCallback:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Ljava/lang/Runnable;)V
    .locals 0
    .param p1    # Ljava/lang/Runnable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/terrace/TerraceDeferredIMEWindowInsetApplicationCallback;->mOnUpdateCallback:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public attach()V
    .locals 2

    invoke-static {}, Lcom/sec/terrace/TerraceHelper;->getInstance()Lcom/sec/terrace/TerraceHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/terrace/TerraceHelper;->getCurrentTerraceActivity()Lcom/sec/terrace/TerraceActivity;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/sec/terrace/TerraceActivity;->getWindowAndroid()Lorg/chromium/ui/base/WindowAndroid;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {v0}, Lorg/chromium/ui/base/WindowAndroid;->isDestroyed()Z

    move-result v1

    if-eqz v1, :cond_2

    return-void

    :cond_2
    invoke-virtual {v0}, Lorg/chromium/ui/base/WindowAndroid;->getInsetObserver()Lorg/chromium/ui/InsetObserver;

    move-result-object v0

    if-nez v0, :cond_3

    const-string p0, "TerraceDeferredIMEWindowInset"

    const-string v0, "DeferredIMEWindowInsetApplicationCallback can only be used in activities with an InsetObserverView"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_3
    iput-object v0, p0, Lcom/sec/terrace/TerraceDeferredIMEWindowInsetApplicationCallback;->mInsetObserver:Lorg/chromium/ui/InsetObserver;

    invoke-virtual {v0, p0}, Lorg/chromium/ui/InsetObserver;->addWindowInsetsAnimationListener(Lorg/chromium/ui/InsetObserver$WindowInsetsAnimationListener;)V

    :cond_4
    :goto_0
    return-void
.end method

.method public detach()V
    .locals 1

    iget-object v0, p0, Lcom/sec/terrace/TerraceDeferredIMEWindowInsetApplicationCallback;->mInsetObserver:Lorg/chromium/ui/InsetObserver;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Lorg/chromium/ui/InsetObserver;->removeWindowInsetsAnimationListener(Lorg/chromium/ui/InsetObserver$WindowInsetsAnimationListener;)V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/terrace/TerraceDeferredIMEWindowInsetApplicationCallback;->mInsetObserver:Lorg/chromium/ui/InsetObserver;

    return-void
.end method

.method public onEnd(Lf1/l0;)V
    .locals 1
    .param p1    # Lf1/l0;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p1, Lf1/l0;->a:Lf1/k0;

    invoke-virtual {v0}, Lf1/k0;->c()I

    move-result v0

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/terrace/TerraceDeferredIMEWindowInsetApplicationCallback;->mCurrentAnimation:Lf1/l0;

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/sec/terrace/TerraceDeferredIMEWindowInsetApplicationCallback;->mOnUpdateCallback:Ljava/lang/Runnable;

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onPrepare(Lf1/l0;)V
    .locals 1
    .param p1    # Lf1/l0;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p1, Lf1/l0;->a:Lf1/k0;

    invoke-virtual {v0}, Lf1/k0;->c()I

    move-result v0

    and-int/lit8 v0, v0, 0x8

    if-nez v0, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Lcom/sec/terrace/TerraceDeferredIMEWindowInsetApplicationCallback;->mCurrentAnimation:Lf1/l0;

    return-void
.end method

.method public onProgress(Lf1/w0;Ljava/util/List;)V
    .locals 0
    .param p1    # Lf1/w0;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lf1/w0;",
            "Ljava/util/List<",
            "Lf1/l0;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public onStart(Lf1/l0;Lf1/c0;)V
    .locals 0
    .param p1    # Lf1/l0;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lf1/c0;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    return-void
.end method
