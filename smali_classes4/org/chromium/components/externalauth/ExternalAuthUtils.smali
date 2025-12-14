.class public Lorg/chromium/components/externalauth/ExternalAuthUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field public static final FLAG_SHOULD_BE_GOOGLE_SIGNED:I = 0x1

.field public static final FLAG_SHOULD_BE_SYSTEM:I = 0x2

.field private static sInstance:Lorg/chromium/components/externalauth/ExternalAuthUtils;


# instance fields
.field private final mGoogleDelegate:Lorg/chromium/components/externalauth/ExternalAuthGoogleDelegate;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/chromium/components/externalauth/ExternalAuthUtils;

    invoke-direct {v0}, Lorg/chromium/components/externalauth/ExternalAuthUtils;-><init>()V

    sput-object v0, Lorg/chromium/components/externalauth/ExternalAuthUtils;->sInstance:Lorg/chromium/components/externalauth/ExternalAuthUtils;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-class v0, Lorg/chromium/components/externalauth/ExternalAuthGoogleDelegate;

    invoke-static {v0}, Lorg/chromium/base/ServiceLoaderUtil;->maybeCreate(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/components/externalauth/ExternalAuthGoogleDelegate;

    iput-object v0, p0, Lorg/chromium/components/externalauth/ExternalAuthUtils;->mGoogleDelegate:Lorg/chromium/components/externalauth/ExternalAuthGoogleDelegate;

    return-void
.end method

.method public static getInstance()Lorg/chromium/components/externalauth/ExternalAuthUtils;
    .locals 1

    sget-object v0, Lorg/chromium/components/externalauth/ExternalAuthUtils;->sInstance:Lorg/chromium/components/externalauth/ExternalAuthUtils;

    return-object v0
.end method


# virtual methods
.method public canUseGooglePlayServices()Z
    .locals 1

    new-instance v0, Lorg/chromium/components/externalauth/UserRecoverableErrorHandler$Silent;

    invoke-direct {v0}, Lorg/chromium/components/externalauth/UserRecoverableErrorHandler$Silent;-><init>()V

    invoke-virtual {p0, v0}, Lorg/chromium/components/externalauth/ExternalAuthUtils;->canUseGooglePlayServices(Lorg/chromium/components/externalauth/UserRecoverableErrorHandler;)Z

    move-result p0

    return p0
.end method

.method public canUseGooglePlayServices(Lorg/chromium/components/externalauth/UserRecoverableErrorHandler;)Z
    .locals 5

    invoke-static {}, Lorg/chromium/base/ContextUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/chromium/components/externalauth/ExternalAuthUtils;->checkGooglePlayServicesAvailable(Landroid/content/Context;)I

    move-result v1

    if-nez v1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    invoke-virtual {p0, v1}, Lorg/chromium/components/externalauth/ExternalAuthUtils;->describeError(I)Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "ExternalAuthUtils"

    const-string v4, "Unable to use Google Play Services: %s"

    invoke-static {v3, v4, v2}, Lorg/chromium/base/Log;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0, v1}, Lorg/chromium/components/externalauth/ExternalAuthUtils;->isUserRecoverableError(I)Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v2, Lorg/chromium/components/externalauth/ExternalAuthUtils$1;

    invoke-direct {v2, p0, p1, v0, v1}, Lorg/chromium/components/externalauth/ExternalAuthUtils$1;-><init>(Lorg/chromium/components/externalauth/ExternalAuthUtils;Lorg/chromium/components/externalauth/UserRecoverableErrorHandler;Landroid/content/Context;I)V

    const/4 p0, 0x7

    invoke-static {p0, v2}, Lorg/chromium/base/task/PostTask;->runOrPostTask(ILjava/lang/Runnable;)V

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public checkGooglePlayServicesAvailable(Landroid/content/Context;)I
    .locals 1

    invoke-static {}, Lorg/chromium/base/StrictModeContext;->allowDiskWrites()Lorg/chromium/base/StrictModeContext;

    move-result-object p0

    :try_start_0
    const-string v0, "checkGooglePlayServicesAvailable"

    invoke-static {v0}, Lorg/chromium/base/TraceEvent;->scoped(Ljava/lang/String;)Lorg/chromium/base/TraceEvent;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-static {p1}, Lorg/chromium/gms/ChromiumPlayServicesAvailability;->getGooglePlayServicesConnectionResult(Landroid/content/Context;)I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v0, :cond_0

    :try_start_2
    invoke-virtual {v0}, Lorg/chromium/base/TraceEvent;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_0
    :goto_0
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lorg/chromium/base/StrictModeContext;->close()V

    :cond_1
    return p1

    :catchall_1
    move-exception p1

    if-eqz v0, :cond_2

    :try_start_3
    invoke-virtual {v0}, Lorg/chromium/base/TraceEvent;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_1

    :catchall_2
    move-exception v0

    :try_start_4
    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_1
    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :goto_2
    if-eqz p0, :cond_3

    :try_start_5
    invoke-virtual {p0}, Lorg/chromium/base/StrictModeContext;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    goto :goto_3

    :catchall_3
    move-exception p0

    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3
    :goto_3
    throw p1
.end method

.method public describeError(I)Ljava/lang/String;
    .locals 0

    sget-object p0, La5/b;->c:Ljava/lang/Object;

    sget p0, La5/f;->e:I

    invoke-static {p1}, Lcom/google/android/gms/common/ConnectionResult;->b(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public isSystemBuild(Landroid/content/pm/PackageManager;Ljava/lang/String;)Z
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "WrongConstant"
        }
    .end annotation

    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    const-string p0, "ExternalAuthUtils"

    const/4 v0, 0x0

    const/4 v1, 0x1

    :try_start_0
    invoke-virtual {p1, p2, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    iget p1, p1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/2addr p1, v1

    if-eqz p1, :cond_0

    return v1

    :cond_0
    new-instance p1, Ljava/lang/SecurityException;

    invoke-direct {p1}, Ljava/lang/SecurityException;-><init>()V

    throw p1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "Caller with package name "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " is not in the system build"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :catch_1
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "Package with name "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " not found"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method public isUserRecoverableError(I)Z
    .locals 1

    sget-object p0, La5/b;->c:Ljava/lang/Object;

    sget p0, La5/f;->e:I

    const/4 p0, 0x1

    if-eq p1, p0, :cond_0

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    const/16 v0, 0x9

    if-eq p1, v0, :cond_0

    const/4 p0, 0x0

    :cond_0
    return p0
.end method
