.class public final Lorg/chromium/content/browser/LauncherThread;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation

.annotation runtime Lorg/jni_zero/JNINamespace;
.end annotation


# static fields
.field private static sHandler:Landroid/os/Handler;

.field private static final sThread:Lorg/chromium/base/JavaHandlerThread;

.field private static final sThreadHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/chromium/base/JavaHandlerThread;

    const-string v1, "Chrome_ProcessLauncherThread"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/chromium/base/JavaHandlerThread;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/chromium/content/browser/LauncherThread;->sThread:Lorg/chromium/base/JavaHandlerThread;

    invoke-virtual {v0}, Lorg/chromium/base/JavaHandlerThread;->maybeStart()V

    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Lorg/chromium/base/JavaHandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v1, Lorg/chromium/content/browser/LauncherThread;->sThreadHandler:Landroid/os/Handler;

    sput-object v1, Lorg/chromium/content/browser/LauncherThread;->sHandler:Landroid/os/Handler;

    return-void
.end method

.method public static getHandler()Landroid/os/Handler;
    .locals 1

    sget-object v0, Lorg/chromium/content/browser/LauncherThread;->sHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private static getHandlerThread()Lorg/chromium/base/JavaHandlerThread;
    .locals 1
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    sget-object v0, Lorg/chromium/content/browser/LauncherThread;->sThread:Lorg/chromium/base/JavaHandlerThread;

    return-object v0
.end method

.method public static post(Ljava/lang/Runnable;)V
    .locals 1

    sget-object v0, Lorg/chromium/content/browser/LauncherThread;->sHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public static postDelayed(Ljava/lang/Runnable;J)V
    .locals 1

    sget-object v0, Lorg/chromium/content/browser/LauncherThread;->sHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public static removeCallbacks(Ljava/lang/Runnable;)V
    .locals 1

    sget-object v0, Lorg/chromium/content/browser/LauncherThread;->sHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static setCurrentThreadAsLauncherThread()V
    .locals 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    sput-object v0, Lorg/chromium/content/browser/LauncherThread;->sHandler:Landroid/os/Handler;

    return-void
.end method

.method public static setLauncherThreadAsLauncherThread()V
    .locals 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    sget-object v0, Lorg/chromium/content/browser/LauncherThread;->sThreadHandler:Landroid/os/Handler;

    sput-object v0, Lorg/chromium/content/browser/LauncherThread;->sHandler:Landroid/os/Handler;

    return-void
.end method
