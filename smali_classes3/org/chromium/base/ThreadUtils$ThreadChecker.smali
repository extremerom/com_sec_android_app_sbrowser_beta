.class public Lorg/chromium/base/ThreadUtils$ThreadChecker;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/base/ThreadUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ThreadChecker"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private mThread:Ljava/lang/Thread;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0}, Lorg/chromium/base/ThreadUtils$ThreadChecker;->resetThreadId()V

    return-void
.end method

.method private assertOnValidThreadHelper(Z)V
    .locals 1

    sget-boolean v0, Lorg/chromium/build/BuildConfig;->ENABLE_ASSERTS:Z

    if-eqz v0, :cond_1

    invoke-static {}, Lorg/chromium/base/ThreadUtils;->b()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object p0, p0, Lorg/chromium/base/ThreadUtils$ThreadChecker;->mThread:Ljava/lang/Thread;

    if-eq v0, p0, :cond_1

    if-eqz p1, :cond_0

    invoke-static {}, Lorg/chromium/base/ThreadUtils;->a()Ljava/lang/Thread;

    move-result-object p0

    if-ne v0, p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->getUiThreadLooper()Landroid/os/Looper;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    nop

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public assertOnValidOrInstrumentationThread()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/chromium/base/ThreadUtils$ThreadChecker;->assertOnValidThreadHelper(Z)V

    return-void
.end method

.method public assertOnValidThread()V
    .locals 1

    sget-boolean v0, Lorg/chromium/build/BuildConfig;->S_TERRACE_SUPPORT:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/chromium/base/ThreadUtils$ThreadChecker;->assertOnValidThreadHelper(Z)V

    return-void
.end method

.method public resetThreadId()V
    .locals 1

    sget-boolean v0, Lorg/chromium/build/BuildConfig;->ENABLE_ASSERTS:Z

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/base/ThreadUtils$ThreadChecker;->mThread:Ljava/lang/Thread;

    :cond_0
    return-void
.end method
