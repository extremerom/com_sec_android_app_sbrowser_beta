.class public Lorg/chromium/base/MemoryPressureListener;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/base/MemoryPressureListener$Natives;
    }
.end annotation

.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static sCallbacks:Lorg/chromium/base/ObserverList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/chromium/base/ObserverList<",
            "Lorg/chromium/base/memory/MemoryPressureCallback;",
            ">;"
        }
    .end annotation
.end field

.field private static sSelfFreezeCallbacks:Lorg/chromium/base/ObserverList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/chromium/base/ObserverList<",
            "Lorg/chromium/base/memory/SelfFreezeCallback;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile sSelfFreezeHandler:Landroid/os/Handler;


# direct methods
.method public static synthetic a(I)V
    .locals 0

    invoke-static {p0}, Lorg/chromium/base/MemoryPressureListener;->lambda$addNativeCallback$0(I)V

    return-void
.end method

.method public static addCallback(Lorg/chromium/base/memory/MemoryPressureCallback;)V
    .locals 1

    invoke-static {}, Lorg/chromium/base/ThreadUtils;->assertOnUiThread()V

    sget-object v0, Lorg/chromium/base/MemoryPressureListener;->sCallbacks:Lorg/chromium/base/ObserverList;

    if-nez v0, :cond_0

    new-instance v0, Lorg/chromium/base/ObserverList;

    invoke-direct {v0}, Lorg/chromium/base/ObserverList;-><init>()V

    sput-object v0, Lorg/chromium/base/MemoryPressureListener;->sCallbacks:Lorg/chromium/base/ObserverList;

    :cond_0
    sget-object v0, Lorg/chromium/base/MemoryPressureListener;->sCallbacks:Lorg/chromium/base/ObserverList;

    invoke-virtual {v0, p0}, Lorg/chromium/base/ObserverList;->addObserver(Ljava/lang/Object;)Z

    return-void
.end method

.method private static addNativeCallback()V
    .locals 1
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    invoke-static {}, Lorg/chromium/base/ThreadUtils;->assertOnUiThread()V

    new-instance v0, Lorg/chromium/base/c;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    invoke-static {v0}, Lorg/chromium/base/MemoryPressureListener;->addCallback(Lorg/chromium/base/memory/MemoryPressureCallback;)V

    return-void
.end method

.method public static addSelfFreezeCallback(Lorg/chromium/base/memory/SelfFreezeCallback;)V
    .locals 1

    sget-object v0, Lorg/chromium/base/MemoryPressureListener;->sSelfFreezeCallbacks:Lorg/chromium/base/ObserverList;

    if-nez v0, :cond_0

    new-instance v0, Lorg/chromium/base/ObserverList;

    invoke-direct {v0}, Lorg/chromium/base/ObserverList;-><init>()V

    sput-object v0, Lorg/chromium/base/MemoryPressureListener;->sSelfFreezeCallbacks:Lorg/chromium/base/ObserverList;

    :cond_0
    sget-object v0, Lorg/chromium/base/MemoryPressureListener;->sSelfFreezeCallbacks:Lorg/chromium/base/ObserverList;

    invoke-virtual {v0, p0}, Lorg/chromium/base/ObserverList;->addObserver(Ljava/lang/Object;)Z

    sget-object p0, Lorg/chromium/base/MemoryPressureListener;->sSelfFreezeHandler:Landroid/os/Handler;

    if-nez p0, :cond_1

    new-instance p0, Landroid/os/Handler;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    sput-object p0, Lorg/chromium/base/MemoryPressureListener;->sSelfFreezeHandler:Landroid/os/Handler;

    :cond_1
    return-void
.end method

.method public static synthetic b()V
    .locals 0

    invoke-static {}, Lorg/chromium/base/MemoryPressureListener;->lambda$notifySelfFreeze$1()V

    return-void
.end method

.method public static handleDebugIntent(Landroid/app/Activity;Ljava/lang/String;)Z
    .locals 1

    invoke-static {}, Lorg/chromium/base/ThreadUtils;->assertOnUiThread()V

    const-string v0, "org.chromium.base.ACTION_LOW_MEMORY"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lorg/chromium/base/MemoryPressureListener;->simulateLowMemoryPressureSignal(Landroid/app/Activity;)V

    goto :goto_0

    :cond_0
    const-string v0, "org.chromium.base.ACTION_TRIM_MEMORY"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 p1, 0x50

    invoke-static {p0, p1}, Lorg/chromium/base/MemoryPressureListener;->simulateTrimMemoryPressureSignal(Landroid/app/Activity;I)V

    goto :goto_0

    :cond_1
    const-string v0, "org.chromium.base.ACTION_TRIM_MEMORY_RUNNING_CRITICAL"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 p1, 0xf

    invoke-static {p0, p1}, Lorg/chromium/base/MemoryPressureListener;->simulateTrimMemoryPressureSignal(Landroid/app/Activity;I)V

    goto :goto_0

    :cond_2
    const-string v0, "org.chromium.base.ACTION_TRIM_MEMORY_MODERATE"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    const/16 p1, 0x3c

    invoke-static {p0, p1}, Lorg/chromium/base/MemoryPressureListener;->simulateTrimMemoryPressureSignal(Landroid/app/Activity;I)V

    :goto_0
    const/4 p0, 0x1

    return p0

    :cond_3
    const/4 p0, 0x0

    return p0
.end method

.method public static isTrimMemoryBackgroundCritical()Z
    .locals 1

    invoke-static {}, Lorg/chromium/base/library_loader/LibraryLoader;->getInstance()Lorg/chromium/base/library_loader/LibraryLoader;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/base/library_loader/LibraryLoader;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-static {}, Lorg/chromium/base/MemoryPressureListenerJni;->get()Lorg/chromium/base/MemoryPressureListener$Natives;

    move-result-object v0

    invoke-interface {v0}, Lorg/chromium/base/MemoryPressureListener$Natives;->isTrimMemoryBackgroundCritical()Z

    move-result v0

    return v0
.end method

.method private static synthetic lambda$addNativeCallback$0(I)V
    .locals 1

    invoke-static {}, Lorg/chromium/base/MemoryPressureListenerJni;->get()Lorg/chromium/base/MemoryPressureListener$Natives;

    move-result-object v0

    invoke-interface {v0, p0}, Lorg/chromium/base/MemoryPressureListener$Natives;->onMemoryPressure(I)V

    return-void
.end method

.method private static synthetic lambda$notifySelfFreeze$1()V
    .locals 2

    sget-object v0, Lorg/chromium/base/MemoryPressureListener;->sSelfFreezeCallbacks:Lorg/chromium/base/ObserverList;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lorg/chromium/base/ObserverList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/chromium/base/memory/SelfFreezeCallback;

    invoke-interface {v1}, Lorg/chromium/base/memory/SelfFreezeCallback;->onSelfFreeze()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static notifyMemoryPressure(I)V
    .locals 2

    invoke-static {}, Lorg/chromium/base/ThreadUtils;->assertOnUiThread()V

    sget-object v0, Lorg/chromium/base/MemoryPressureListener;->sCallbacks:Lorg/chromium/base/ObserverList;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lorg/chromium/base/ObserverList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/chromium/base/memory/MemoryPressureCallback;

    invoke-interface {v1, p0}, Lorg/chromium/base/memory/MemoryPressureCallback;->onPressure(I)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static notifySelfFreeze()V
    .locals 3

    invoke-static {}, Lorg/chromium/base/ThreadUtils;->assertOnUiThread()V

    sget-object v0, Lorg/chromium/base/MemoryPressureListener;->sSelfFreezeHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    sget-object v0, Lorg/chromium/base/MemoryPressureListener;->sSelfFreezeHandler:Landroid/os/Handler;

    new-instance v1, Lorg/chromium/base/f;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Lorg/chromium/base/f;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public static onPreFreeze()V
    .locals 1

    invoke-static {}, Lorg/chromium/base/library_loader/LibraryLoader;->getInstance()Lorg/chromium/base/library_loader/LibraryLoader;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/base/library_loader/LibraryLoader;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lorg/chromium/base/MemoryPressureListenerJni;->get()Lorg/chromium/base/MemoryPressureListener$Natives;

    move-result-object v0

    invoke-interface {v0}, Lorg/chromium/base/MemoryPressureListener$Natives;->onPreFreeze()V

    return-void
.end method

.method public static removeCallback(Lorg/chromium/base/memory/MemoryPressureCallback;)V
    .locals 1

    invoke-static {}, Lorg/chromium/base/ThreadUtils;->assertOnUiThread()V

    sget-object v0, Lorg/chromium/base/MemoryPressureListener;->sCallbacks:Lorg/chromium/base/ObserverList;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0, p0}, Lorg/chromium/base/ObserverList;->removeObserver(Ljava/lang/Object;)Z

    return-void
.end method

.method public static removeSelfFreezeCallback(Lorg/chromium/base/memory/SelfFreezeCallback;)V
    .locals 1

    sget-object v0, Lorg/chromium/base/MemoryPressureListener;->sSelfFreezeCallbacks:Lorg/chromium/base/ObserverList;

    invoke-static {v0}, Lorg/chromium/build/NullUtil;->assumeNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/base/ObserverList;

    invoke-virtual {v0, p0}, Lorg/chromium/base/ObserverList;->removeObserver(Ljava/lang/Object;)Z

    return-void
.end method

.method private static simulateLowMemoryPressureSignal(Landroid/app/Activity;)V
    .locals 1

    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->onLowMemory()V

    invoke-virtual {p0}, Landroid/app/Activity;->onLowMemory()V

    return-void
.end method

.method private static simulateTrimMemoryPressureSignal(Landroid/app/Activity;I)V
    .locals 1

    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/Application;->onTrimMemory(I)V

    invoke-virtual {p0, p1}, Landroid/app/Activity;->onTrimMemory(I)V

    return-void
.end method
