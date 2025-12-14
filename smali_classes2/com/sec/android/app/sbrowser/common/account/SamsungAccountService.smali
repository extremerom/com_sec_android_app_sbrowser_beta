.class public Lcom/sec/android/app/sbrowser/common/account/SamsungAccountService;
.super Landroid/app/Service;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/common/account/SamsungAccountService$SAAccessTokenCallback;,
        Lcom/sec/android/app/sbrowser/common/account/SamsungAccountService$SamsungAccountTask;
    }
.end annotation


# static fields
.field private static final mTaskQueue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lcom/sec/android/app/sbrowser/common/account/SamsungAccountService$SamsungAccountTask;",
            ">;"
        }
    .end annotation
.end field

.field private static sCallback:Lcom/sec/android/app/sbrowser/common/account/SamsungAccountService$SAAccessTokenCallback; = null

.field private static sExpiredAccessToken:Ljava/lang/String; = null
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private static sInProgress:Z = false

.field private static sIsRequiredConsent:Z

.field private static final sLock:Ljava/lang/Object;


# instance fields
.field private final mISaCallback:Lb8/b;

.field private mISaService:Lb8/e;

.field private mRegistrationCode:Ljava/lang/String;

.field mServiceConnection:Landroid/content/ServiceConnection;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/sec/android/app/sbrowser/common/account/SamsungAccountService;->sLock:Ljava/lang/Object;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, Lcom/sec/android/app/sbrowser/common/account/SamsungAccountService;->mTaskQueue:Ljava/util/Queue;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    new-instance v0, Lcom/sec/android/app/sbrowser/common/account/SamsungAccountService$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/common/account/SamsungAccountService$1;-><init>(Lcom/sec/android/app/sbrowser/common/account/SamsungAccountService;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/common/account/SamsungAccountService;->mServiceConnection:Landroid/content/ServiceConnection;

    new-instance v0, Lcom/sec/android/app/sbrowser/common/account/SamsungAccountService$2;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/common/account/SamsungAccountService$2;-><init>(Lcom/sec/android/app/sbrowser/common/account/SamsungAccountService;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/common/account/SamsungAccountService;->mISaCallback:Lb8/b;

    return-void
.end method

.method public static bridge synthetic a(Lcom/sec/android/app/sbrowser/common/account/SamsungAccountService;)Lb8/b;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/account/SamsungAccountService;->mISaCallback:Lb8/b;

    return-object p0
.end method

.method public static bridge synthetic b(Lcom/sec/android/app/sbrowser/common/account/SamsungAccountService;)Lb8/e;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/account/SamsungAccountService;->mISaService:Lb8/e;

    return-object p0
.end method

.method public static bridge synthetic c(Lcom/sec/android/app/sbrowser/common/account/SamsungAccountService;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/account/SamsungAccountService;->mRegistrationCode:Ljava/lang/String;

    return-object p0
.end method

.method public static bridge synthetic d(Lcom/sec/android/app/sbrowser/common/account/SamsungAccountService;Lb8/e;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/common/account/SamsungAccountService;->mISaService:Lb8/e;

    return-void
.end method

.method public static bridge synthetic e(Lcom/sec/android/app/sbrowser/common/account/SamsungAccountService;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/common/account/SamsungAccountService;->mRegistrationCode:Ljava/lang/String;

    return-void
.end method

.method private static executeRemainedTask()V
    .locals 7

    const-string v0, "[AIDL] sInProgress --> "

    const-string v1, "[AIDL] start task from queue ["

    const-string v2, "SamsungAccountService"

    const-string v3, "[AIDL] executeRemainedTask"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v2, Lcom/sec/android/app/sbrowser/common/account/SamsungAccountService;->sLock:Ljava/lang/Object;

    monitor-enter v2

    const/4 v3, 0x0

    :try_start_0
    sput-object v3, Lcom/sec/android/app/sbrowser/common/account/SamsungAccountService;->sCallback:Lcom/sec/android/app/sbrowser/common/account/SamsungAccountService$SAAccessTokenCallback;

    sget-object v3, Lcom/sec/android/app/sbrowser/common/account/SamsungAccountService;->mTaskQueue:Ljava/util/Queue;

    invoke-interface {v3}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/android/app/sbrowser/common/account/SamsungAccountService$SamsungAccountTask;

    if-nez v4, :cond_0

    const-string v0, "SamsungAccountService"

    const-string v1, "[AIDL] executeRemainedTask - no more task. finish"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    sput-boolean v0, Lcom/sec/android/app/sbrowser/common/account/SamsungAccountService;->sInProgress:Z

    monitor-exit v2

    return-void

    :catchall_0
    move-exception v0

    goto :goto_0

    :cond_0
    iget-object v5, v4, Lcom/sec/android/app/sbrowser/common/account/SamsungAccountService$SamsungAccountTask;->mCallback:Lcom/sec/android/app/sbrowser/common/account/SamsungAccountService$SAAccessTokenCallback;

    sput-object v5, Lcom/sec/android/app/sbrowser/common/account/SamsungAccountService;->sCallback:Lcom/sec/android/app/sbrowser/common/account/SamsungAccountService$SAAccessTokenCallback;

    iget-boolean v6, v4, Lcom/sec/android/app/sbrowser/common/account/SamsungAccountService$SamsungAccountTask;->mIsReqConsent:Z

    sput-boolean v6, Lcom/sec/android/app/sbrowser/common/account/SamsungAccountService;->sIsRequiredConsent:Z

    iget-object v4, v4, Lcom/sec/android/app/sbrowser/common/account/SamsungAccountService$SamsungAccountTask;->mExpiredToken:Ljava/lang/String;

    sput-object v4, Lcom/sec/android/app/sbrowser/common/account/SamsungAccountService;->sExpiredAccessToken:Ljava/lang/String;

    invoke-static {v5}, Lcom/sec/android/app/sbrowser/common/account/SamsungAccountService;->startService(Lcom/sec/android/app/sbrowser/common/account/SamsungAccountService$SAAccessTokenCallback;)Z

    move-result v4

    sput-boolean v4, Lcom/sec/android/app/sbrowser/common/account/SamsungAccountService;->sInProgress:Z

    const-string v4, "SamsungAccountService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v3}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "SamsungAccountService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v0, Lcom/sec/android/app/sbrowser/common/account/SamsungAccountService;->sInProgress:Z

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v2

    return-void

    :goto_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static bridge synthetic f(Lcom/sec/android/app/sbrowser/common/account/SamsungAccountService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sec/android/app/sbrowser/common/account/SamsungAccountService;->responseCallback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic g(Lcom/sec/android/app/sbrowser/common/account/SamsungAccountService;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/common/account/SamsungAccountService;->responseCallbackWithNoAccountError()V

    return-void
.end method

.method public static declared-synchronized getAccessToken(Lcom/sec/android/app/sbrowser/common/account/SamsungAccountService$SAAccessTokenCallback;Z)V
    .locals 2

    const-class v0, Lcom/sec/android/app/sbrowser/common/account/SamsungAccountService;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    invoke-static {p0, p1, v1}, Lcom/sec/android/app/sbrowser/common/account/SamsungAccountService;->getAccessToken(Lcom/sec/android/app/sbrowser/common/account/SamsungAccountService$SAAccessTokenCallback;ZLjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public static getAccessToken(Lcom/sec/android/app/sbrowser/common/account/SamsungAccountService$SAAccessTokenCallback;ZLjava/lang/String;)V
    .locals 4
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const-string v0, "sInProgress --> "

    const-string v1, "[AIDL] service is in progress, so add ["

    const-string v2, "SamsungAccountService"

    const-string v3, "[AIDL] getAccessToken"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v2, Lcom/sec/android/app/sbrowser/common/account/SamsungAccountService;->sLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    sget-boolean v3, Lcom/sec/android/app/sbrowser/common/account/SamsungAccountService;->sInProgress:Z

    if-eqz v3, :cond_0

    sget-object v0, Lcom/sec/android/app/sbrowser/common/account/SamsungAccountService;->mTaskQueue:Ljava/util/Queue;

    new-instance v3, Lcom/sec/android/app/sbrowser/common/account/SamsungAccountService$SamsungAccountTask;

    invoke-direct {v3, p0, p1, p2}, Lcom/sec/android/app/sbrowser/common/account/SamsungAccountService$SamsungAccountTask;-><init>(Lcom/sec/android/app/sbrowser/common/account/SamsungAccountService$SAAccessTokenCallback;ZLjava/lang/String;)V

    invoke-interface {v0, v3}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    const-string p0, "SamsungAccountService"

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "]"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    sput-object p0, Lcom/sec/android/app/sbrowser/common/account/SamsungAccountService;->sCallback:Lcom/sec/android/app/sbrowser/common/account/SamsungAccountService$SAAccessTokenCallback;

    sput-boolean p1, Lcom/sec/android/app/sbrowser/common/account/SamsungAccountService;->sIsRequiredConsent:Z

    sput-object p2, Lcom/sec/android/app/sbrowser/common/account/SamsungAccountService;->sExpiredAccessToken:Ljava/lang/String;

    const-string p0, "SamsungAccountService"

    const-string p1, "[AIDL] service is not in progress, start task"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object p0, Lcom/sec/android/app/sbrowser/common/account/SamsungAccountService;->sCallback:Lcom/sec/android/app/sbrowser/common/account/SamsungAccountService$SAAccessTokenCallback;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/account/SamsungAccountService;->startService(Lcom/sec/android/app/sbrowser/common/account/SamsungAccountService$SAAccessTokenCallback;)Z

    move-result p0

    sput-boolean p0, Lcom/sec/android/app/sbrowser/common/account/SamsungAccountService;->sInProgress:Z

    const-string p0, "SamsungAccountService"

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean p2, Lcom/sec/android/app/sbrowser/common/account/SamsungAccountService;->sInProgress:Z

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    monitor-exit v2

    return-void

    :goto_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static bridge synthetic h(Lcom/sec/android/app/sbrowser/common/account/SamsungAccountService;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/common/account/SamsungAccountService;->responseCallbackWithTokenExpiredError()V

    return-void
.end method

.method public static bridge synthetic i(Lcom/sec/android/app/sbrowser/common/account/SamsungAccountService;ZLandroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sec/android/app/sbrowser/common/account/SamsungAccountService;->responseConsentListCallback(ZLandroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic j()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/sec/android/app/sbrowser/common/account/SamsungAccountService;->sExpiredAccessToken:Ljava/lang/String;

    return-object v0
.end method

.method public static bridge synthetic k()Z
    .locals 1

    sget-boolean v0, Lcom/sec/android/app/sbrowser/common/account/SamsungAccountService;->sIsRequiredConsent:Z

    return v0
.end method

.method private responseCallback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/sec/android/app/sbrowser/common/account/SamsungAccountService;->sCallback:Lcom/sec/android/app/sbrowser/common/account/SamsungAccountService$SAAccessTokenCallback;

    if-nez v0, :cond_0

    const-string p1, "SamsungAccountService"

    const-string p2, "[AIDL] SAAccessTokenCallback null !!!!!!"

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/app/Service;->stopSelf()V

    return-void

    :cond_0
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/sec/android/app/sbrowser/common/account/SamsungAccountService$SAAccessTokenCallback;->onAccessTokenAcquired(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/common/account/SamsungAccountService;->stopProcess()V

    return-void
.end method

.method private responseCallbackWithNoAccountError()V
    .locals 2

    sget-object v0, Lcom/sec/android/app/sbrowser/common/account/SamsungAccountService;->sCallback:Lcom/sec/android/app/sbrowser/common/account/SamsungAccountService$SAAccessTokenCallback;

    if-nez v0, :cond_0

    const-string v0, "SamsungAccountService"

    const-string v1, "[AIDL] SAAccessTokenCallback null !!!!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/app/Service;->stopSelf()V

    return-void

    :cond_0
    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/account/SamsungAccountService$SAAccessTokenCallback;->onNoAccountError()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/common/account/SamsungAccountService;->stopProcess()V

    return-void
.end method

.method private responseCallbackWithTokenExpiredError()V
    .locals 2

    sget-object v0, Lcom/sec/android/app/sbrowser/common/account/SamsungAccountService;->sCallback:Lcom/sec/android/app/sbrowser/common/account/SamsungAccountService$SAAccessTokenCallback;

    if-nez v0, :cond_0

    const-string v0, "SamsungAccountService"

    const-string v1, "[AIDL] SAAccessTokenCallback null !!!!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/app/Service;->stopSelf()V

    return-void

    :cond_0
    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/account/SamsungAccountService$SAAccessTokenCallback;->onAuthTokenExpiredError()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/common/account/SamsungAccountService;->stopProcess()V

    return-void
.end method

.method private responseConsentListCallback(ZLandroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/sec/android/app/sbrowser/common/account/SamsungAccountService;->sCallback:Lcom/sec/android/app/sbrowser/common/account/SamsungAccountService$SAAccessTokenCallback;

    if-nez v0, :cond_0

    const-string p1, "SamsungAccountService"

    const-string p2, "[AIDL] SAAccessTokenCallback null !!!!!!"

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/app/Service;->stopSelf()V

    return-void

    :cond_0
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/sec/android/app/sbrowser/common/account/SamsungAccountService$SAAccessTokenCallback;->onConsentListReceived(ZLandroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/common/account/SamsungAccountService;->stopProcess()V

    return-void
.end method

.method private static startService(Lcom/sec/android/app/sbrowser/common/account/SamsungAccountService$SAAccessTokenCallback;)Z
    .locals 3

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/application/ApplicationStatus;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/sec/android/app/sbrowser/common/account/SamsungAccountService;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    :try_start_0
    invoke-virtual {v0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[AIDL] failed to start service : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SamsungAccountService"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "failed to start service"

    invoke-interface {p0, v0}, Lcom/sec/android/app/sbrowser/common/account/SamsungAccountService$SAAccessTokenCallback;->onError(Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method private stopProcess()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/account/SamsungAccountService;->mISaService:Lb8/e;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/account/SamsungAccountService;->mRegistrationCode:Ljava/lang/String;

    if-eqz v0, :cond_0

    :try_start_0
    const-string v0, "SamsungAccountService"

    const-string v1, "[AIDL] unregister Callback"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/account/SamsungAccountService;->mISaService:Lb8/e;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/account/SamsungAccountService;->mRegistrationCode:Ljava/lang/String;

    check-cast v0, Lb8/c;

    invoke-virtual {v0, v1}, Lb8/c;->y0(Ljava/lang/String;)Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/common/account/SamsungAccountService;->mRegistrationCode:Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    invoke-virtual {p0}, Landroid/app/Service;->stopSelf()V

    :cond_0
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method public onCreate()V
    .locals 3

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    const-string v0, "SamsungAccountService"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.msc.action.samsungaccount.REQUEST_SERVICE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "com.osp.app.signin"

    const-string v2, "com.msc.sa.service.RequestService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/account/SamsungAccountService;->mServiceConnection:Landroid/content/ServiceConnection;

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    return-void
.end method

.method public onDestroy()V
    .locals 2

    const-string v0, "SamsungAccountService"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/account/SamsungAccountService;->mServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/common/account/SamsungAccountService;->mServiceConnection:Landroid/content/ServiceConnection;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/common/account/SamsungAccountService;->mISaService:Lb8/e;

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/account/SamsungAccountService;->executeRemainedTask()V

    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 0

    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result p0

    return p0
.end method

.method public requestRequiredConsent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    const-string v0, "SamsungAccountService"

    const-string v1, "RequestRequiredConsent called"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/NetDeviceUtils;->getNetworkCountryCodeISO3()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v1, p2

    :cond_0
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "client_id"

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/account/SamsungAccountUtil;->getSamsungAccountClientId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Locale;->getISO3Language()Ljava/lang/String;

    move-result-object v3

    const-string v4, "language"

    invoke-virtual {v2, v4, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "region"

    invoke-virtual {v2, v3, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "application_region"

    invoke-virtual {v2, p2, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "access_token"

    invoke-virtual {v2, p2, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/common/account/SamsungAccountService;->mISaService:Lb8/e;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/account/SamsungAccountService;->mRegistrationCode:Ljava/lang/String;

    check-cast p1, Lb8/c;

    invoke-virtual {p1, v2, p0}, Lb8/c;->x0(Landroid/os/Bundle;Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Exception : "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method
