.class public abstract Lcom/sec/android/app/sbrowser/common/livedata/JavaScriptAdapterLifecycleOwner;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/J;
.implements Landroidx/lifecycle/I;


# instance fields
.field private final mLifecycleRegistry:Landroidx/lifecycle/L;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroidx/lifecycle/L;

    invoke-direct {v0, p0}, Landroidx/lifecycle/L;-><init>(Landroidx/lifecycle/J;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/common/livedata/JavaScriptAdapterLifecycleOwner;->mLifecycleRegistry:Landroidx/lifecycle/L;

    sget-object p0, Landroidx/lifecycle/C;->CREATED:Landroidx/lifecycle/C;

    invoke-virtual {v0, p0}, Landroidx/lifecycle/L;->g(Landroidx/lifecycle/C;)V

    return-void
.end method

.method public static synthetic a(Lcom/sec/android/app/sbrowser/common/livedata/JavaScriptAdapterLifecycleOwner;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/common/livedata/JavaScriptAdapterLifecycleOwner;->lambda$onTabAttached$0()V

    return-void
.end method

.method private lambda$onTabAttached$0()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/livedata/JavaScriptAdapterLifecycleOwner;->mLifecycleRegistry:Landroidx/lifecycle/L;

    iget-object v1, v0, Landroidx/lifecycle/L;->d:Landroidx/lifecycle/C;

    sget-object v2, Landroidx/lifecycle/C;->DESTROYED:Landroidx/lifecycle/C;

    if-ne v1, v2, :cond_0

    return-void

    :cond_0
    sget-object v1, Landroidx/lifecycle/C;->RESUMED:Landroidx/lifecycle/C;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/L;->g(Landroidx/lifecycle/C;)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/livedata/JavaScriptAdapterLifecycleOwner;->onLifecycleReady()V

    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/livedata/JavaScriptAdapterLifecycleOwner;->mLifecycleRegistry:Landroidx/lifecycle/L;

    sget-object v0, Landroidx/lifecycle/C;->DESTROYED:Landroidx/lifecycle/C;

    invoke-virtual {p0, v0}, Landroidx/lifecycle/L;->g(Landroidx/lifecycle/C;)V

    return-void
.end method

.method public getLifecycle()Landroidx/lifecycle/D;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/livedata/JavaScriptAdapterLifecycleOwner;->mLifecycleRegistry:Landroidx/lifecycle/L;

    return-object p0
.end method

.method public onLifecycleReady()V
    .locals 0

    return-void
.end method

.method public onTabAttached(Z)V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/livedata/JavaScriptAdapterLifecycleOwner;->mLifecycleRegistry:Landroidx/lifecycle/L;

    sget-object v1, Landroidx/lifecycle/C;->STARTED:Landroidx/lifecycle/C;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/L;->g(Landroidx/lifecycle/C;)V

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, LG6/e;

    const/16 v2, 0x19

    invoke-direct {v1, v2, p0}, LG6/e;-><init>(ILjava/lang/Object;)V

    if-eqz p1, :cond_0

    const-wide/16 p0, 0x1f4

    goto :goto_0

    :cond_0
    const-wide/16 p0, 0x0

    :goto_0
    invoke-virtual {v0, v1, p0, p1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public onTabDetached()V
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/livedata/JavaScriptAdapterLifecycleOwner;->mLifecycleRegistry:Landroidx/lifecycle/L;

    sget-object v0, Landroidx/lifecycle/C;->DESTROYED:Landroidx/lifecycle/C;

    invoke-virtual {p0, v0}, Landroidx/lifecycle/L;->g(Landroidx/lifecycle/C;)V

    return-void
.end method
