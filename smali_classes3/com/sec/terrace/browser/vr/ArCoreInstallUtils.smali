.class public Lcom/sec/terrace/browser/vr/ArCoreInstallUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/terrace/browser/vr/ArCoreInstallUtils$InstallRequest;,
        Lcom/sec/terrace/browser/vr/ArCoreInstallUtils$ArInstallHelperNative;
    }
.end annotation

.annotation runtime Lorg/jni_zero/JNINamespace;
.end annotation


# static fields
.field private static sArCoreInstance:Lcom/sec/terrace/browser/vr/ArCoreShim;

.field private static sInstallRequest:Lcom/sec/terrace/browser/vr/ArCoreInstallUtils$InstallRequest;


# instance fields
.field private mNativeArCoreInstallUtils:J


# direct methods
.method private constructor <init>(J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/sec/terrace/browser/vr/ArCoreInstallUtils;->mNativeArCoreInstallUtils:J

    return-void
.end method

.method public static bridge synthetic a(Lcom/sec/terrace/browser/vr/ArCoreInstallUtils;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/terrace/browser/vr/ArCoreInstallUtils;->onArCoreRequestInstallReturned()V

    return-void
.end method

.method private static create(J)Lcom/sec/terrace/browser/vr/ArCoreInstallUtils;
    .locals 1
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    new-instance v0, Lcom/sec/terrace/browser/vr/ArCoreInstallUtils;

    invoke-direct {v0, p0, p1}, Lcom/sec/terrace/browser/vr/ArCoreInstallUtils;-><init>(J)V

    return-object v0
.end method

.method private getActivity(Lorg/chromium/content_public/browser/WebContents;)Landroid/app/Activity;
    .locals 0

    const/4 p0, 0x0

    if-nez p1, :cond_0

    return-object p0

    :cond_0
    invoke-interface {p1}, Lorg/chromium/content_public/browser/WebContents;->getTopLevelNativeWindow()Lorg/chromium/ui/base/WindowAndroid;

    move-result-object p1

    if-nez p1, :cond_1

    return-object p0

    :cond_1
    invoke-virtual {p1}, Lorg/chromium/ui/base/WindowAndroid;->getActivity()Ljava/lang/ref/WeakReference;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/Activity;

    return-object p0
.end method

.method private static getArCoreInstallStatus()I
    .locals 3
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    :try_start_0
    invoke-static {}, Lcom/sec/terrace/browser/vr/ArCoreInstallUtils;->getArCoreShimInstance()Lcom/sec/terrace/browser/vr/ArCoreShim;

    move-result-object v0

    invoke-static {}, Lorg/chromium/base/ContextUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/sec/terrace/browser/vr/ArCoreShim;->checkAvailability(Landroid/content/Context;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    const-string v1, "ARCore availability check failed with error: %s"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "ArCoreInstallUtils"

    invoke-static {v2, v1, v0}, Lorg/chromium/base/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v0, 0x6

    return v0
.end method

.method private static getArCoreShimInstance()Lcom/sec/terrace/browser/vr/ArCoreShim;
    .locals 2

    sget-object v0, Lcom/sec/terrace/browser/vr/ArCoreInstallUtils;->sArCoreInstance:Lcom/sec/terrace/browser/vr/ArCoreShim;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    :try_start_0
    const-class v0, Lcom/sec/terrace/browser/vr/ArCoreShimImpl;

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/terrace/browser/vr/ArCoreShim;

    sput-object v0, Lcom/sec/terrace/browser/vr/ArCoreInstallUtils;->sArCoreInstance:Lcom/sec/terrace/browser/vr/ArCoreShim;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_1

    :catch_2
    move-exception v0

    goto :goto_2

    :goto_0
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :goto_1
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :goto_2
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private maybeNotifyNativeOnRequestInstallSupportedArCoreResult(Z)V
    .locals 4

    iget-wide v0, p0, Lcom/sec/terrace/browser/vr/ArCoreInstallUtils;->mNativeArCoreInstallUtils:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/sec/terrace/browser/vr/ArCoreInstallUtilsJni;->get()Lcom/sec/terrace/browser/vr/ArCoreInstallUtils$ArInstallHelperNative;

    move-result-object v0

    iget-wide v1, p0, Lcom/sec/terrace/browser/vr/ArCoreInstallUtils;->mNativeArCoreInstallUtils:J

    invoke-interface {v0, v1, v2, p1}, Lcom/sec/terrace/browser/vr/ArCoreInstallUtils$ArInstallHelperNative;->onRequestInstallSupportedArCoreResult(JZ)V

    :cond_0
    return-void
.end method

.method private onArCoreRequestInstallReturned()V
    .locals 2

    invoke-static {}, Lcom/sec/terrace/browser/vr/ArCoreInstallUtils;->getArCoreInstallStatus()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-direct {p0, v1}, Lcom/sec/terrace/browser/vr/ArCoreInstallUtils;->maybeNotifyNativeOnRequestInstallSupportedArCoreResult(Z)V

    sget-object p0, Lcom/sec/terrace/browser/vr/ArCoreInstallUtils;->sInstallRequest:Lcom/sec/terrace/browser/vr/ArCoreInstallUtils$InstallRequest;

    invoke-virtual {p0}, Lcom/sec/terrace/browser/vr/ArCoreInstallUtils$InstallRequest;->dispose()V

    const/4 p0, 0x0

    sput-object p0, Lcom/sec/terrace/browser/vr/ArCoreInstallUtils;->sInstallRequest:Lcom/sec/terrace/browser/vr/ArCoreInstallUtils$InstallRequest;

    return-void
.end method

.method private onNativeDestroy()V
    .locals 2
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sec/terrace/browser/vr/ArCoreInstallUtils;->mNativeArCoreInstallUtils:J

    sget-object p0, Lcom/sec/terrace/browser/vr/ArCoreInstallUtils;->sInstallRequest:Lcom/sec/terrace/browser/vr/ArCoreInstallUtils$InstallRequest;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/sec/terrace/browser/vr/ArCoreInstallUtils$InstallRequest;->dispose()V

    const/4 p0, 0x0

    sput-object p0, Lcom/sec/terrace/browser/vr/ArCoreInstallUtils;->sInstallRequest:Lcom/sec/terrace/browser/vr/ArCoreInstallUtils$InstallRequest;

    :cond_0
    return-void
.end method

.method private requestInstallSupportedArCore(Lorg/chromium/content_public/browser/WebContents;)V
    .locals 4
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    invoke-direct {p0, p1}, Lcom/sec/terrace/browser/vr/ArCoreInstallUtils;->getActivity(Lorg/chromium/content_public/browser/WebContents;)Landroid/app/Activity;

    move-result-object p1

    const-string v0, "ArCoreInstallUtils"

    const/4 v1, 0x0

    if-nez p1, :cond_0

    const-string p1, "Could not get Activity"

    invoke-static {v0, p1}, Lorg/chromium/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v1}, Lcom/sec/terrace/browser/vr/ArCoreInstallUtils;->maybeNotifyNativeOnRequestInstallSupportedArCoreResult(Z)V

    return-void

    :cond_0
    :try_start_0
    invoke-static {}, Lcom/sec/terrace/browser/vr/ArCoreInstallUtils;->getArCoreShimInstance()Lcom/sec/terrace/browser/vr/ArCoreShim;

    move-result-object v2

    const/4 v3, 0x1

    invoke-interface {v2, p1, v3}, Lcom/sec/terrace/browser/vr/ArCoreShim;->requestInstall(Landroid/app/Activity;Z)I

    move-result v2

    if-ne v2, v3, :cond_1

    new-instance v2, Lcom/sec/terrace/browser/vr/ArCoreInstallUtils$InstallRequest;

    invoke-direct {v2, p0, p1}, Lcom/sec/terrace/browser/vr/ArCoreInstallUtils$InstallRequest;-><init>(Lcom/sec/terrace/browser/vr/ArCoreInstallUtils;Landroid/app/Activity;)V

    sput-object v2, Lcom/sec/terrace/browser/vr/ArCoreInstallUtils;->sInstallRequest:Lcom/sec/terrace/browser/vr/ArCoreInstallUtils$InstallRequest;

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_0

    :cond_1
    if-nez v2, :cond_2

    invoke-direct {p0, v3}, Lcom/sec/terrace/browser/vr/ArCoreInstallUtils;->maybeNotifyNativeOnRequestInstallSupportedArCoreResult(Z)V
    :try_end_0
    .catch Lcom/sec/terrace/browser/vr/ArCoreShim$UnavailableDeviceNotCompatibleException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/sec/terrace/browser/vr/ArCoreShim$UnavailableUserDeclinedInstallationException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    :catch_1
    invoke-direct {p0, v1}, Lcom/sec/terrace/browser/vr/ArCoreInstallUtils;->maybeNotifyNativeOnRequestInstallSupportedArCoreResult(Z)V

    goto :goto_1

    :goto_0
    const/4 v2, 0x0

    sput-object v2, Lcom/sec/terrace/browser/vr/ArCoreInstallUtils;->sInstallRequest:Lcom/sec/terrace/browser/vr/ArCoreInstallUtils$InstallRequest;

    const-string v2, "ARCore installation request failed with exception: %s"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, v2, p1}, Lorg/chromium/base/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0, v1}, Lcom/sec/terrace/browser/vr/ArCoreInstallUtils;->maybeNotifyNativeOnRequestInstallSupportedArCoreResult(Z)V

    :cond_2
    :goto_1
    return-void
.end method

.method private static shouldRequestInstallSupportedArCore()Z
    .locals 2
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    invoke-static {}, Lcom/sec/terrace/browser/vr/ArCoreInstallUtils;->getArCoreInstallStatus()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method
