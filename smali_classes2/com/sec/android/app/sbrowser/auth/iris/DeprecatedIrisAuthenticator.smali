.class public Lcom/sec/android/app/sbrowser/auth/iris/DeprecatedIrisAuthenticator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/auth/Authenticator;


# instance fields
.field private mAuthCallback:Lcom/samsung/android/camera/sdk/iris/SIrisManager$AuthenticationCallback;

.field private mAuthCancelSignal:Landroid/os/CancellationSignal;

.field private mListener:Lcom/sec/android/app/sbrowser/auth/AuthListener;

.field private mLockModel:Lcom/sec/android/app/sbrowser/auth/LockModel;

.field private mSIrisManager:Lcom/samsung/android/camera/sdk/iris/SIrisManager;


# direct methods
.method public constructor <init>()V
    .locals 6

    const-string v0, "DeprecatedIrisAuthenticator"

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Lcom/sec/android/app/sbrowser/auth/iris/DeprecatedIrisAuthenticator$1;

    invoke-direct {v1, p0}, Lcom/sec/android/app/sbrowser/auth/iris/DeprecatedIrisAuthenticator$1;-><init>(Lcom/sec/android/app/sbrowser/auth/iris/DeprecatedIrisAuthenticator;)V

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/auth/iris/DeprecatedIrisAuthenticator;->mAuthCallback:Lcom/samsung/android/camera/sdk/iris/SIrisManager$AuthenticationCallback;

    sget-object v1, Lcom/sec/android/app/sbrowser/auth/AuthListener;->EMPTY:Lcom/sec/android/app/sbrowser/auth/AuthListener;

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/auth/iris/DeprecatedIrisAuthenticator;->mListener:Lcom/sec/android/app/sbrowser/auth/AuthListener;

    new-instance v1, Lcom/sec/android/app/sbrowser/auth/LockModel;

    invoke-direct {v1}, Lcom/sec/android/app/sbrowser/auth/LockModel;-><init>()V

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/auth/iris/DeprecatedIrisAuthenticator;->mLockModel:Lcom/sec/android/app/sbrowser/auth/LockModel;

    invoke-static {}, Lcom/sec/terrace/TerraceApplicationStatus;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/camera/sdk/iris/SIris;

    invoke-direct {v2}, Lcom/samsung/android/camera/sdk/iris/SIris;-><init>()V

    :try_start_0
    invoke-virtual {v2, v1}, Lcom/samsung/android/camera/sdk/iris/SIris;->initialize(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/samsung/android/sdk/SsdkUnsupportedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v3, "SIris Service is not supported in the device"

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_1
    move-exception v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Exception : "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/samsung/android/camera/sdk/iris/SIris;->isFeatureEnabled(I)Z

    move-result v2

    if-nez v2, :cond_0

    const-string p0, "Iris hardware is not detected."

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-static {v1}, Lcom/samsung/android/camera/sdk/iris/SIrisManager;->getSIrisManager(Landroid/content/Context;)Lcom/samsung/android/camera/sdk/iris/SIrisManager;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/auth/iris/DeprecatedIrisAuthenticator;->mSIrisManager:Lcom/samsung/android/camera/sdk/iris/SIrisManager;

    if-nez v1, :cond_1

    const-string p0, "mSIrisManager is null"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    :try_start_1
    invoke-virtual {v1}, Lcom/samsung/android/camera/sdk/iris/SIrisManager;->hasEnrolledIrises()Z

    move-result v1

    if-nez v1, :cond_2

    const-string p0, "There are no enrolled irises."

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_2

    return-void

    :catch_2
    move-exception p0

    goto :goto_1

    :cond_2
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/auth/iris/DeprecatedIrisAuthenticator;->mSIrisManager:Lcom/samsung/android/camera/sdk/iris/SIrisManager;

    invoke-virtual {p0, v3}, Lcom/samsung/android/camera/sdk/iris/SIrisManager;->enableIRImageCallback(Z)V

    return-void

    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Not allowed permission: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static bridge synthetic a(Lcom/sec/android/app/sbrowser/auth/iris/DeprecatedIrisAuthenticator;)Lcom/sec/android/app/sbrowser/auth/AuthListener;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/auth/iris/DeprecatedIrisAuthenticator;->mListener:Lcom/sec/android/app/sbrowser/auth/AuthListener;

    return-object p0
.end method

.method public static bridge synthetic b(Lcom/sec/android/app/sbrowser/auth/iris/DeprecatedIrisAuthenticator;)Lcom/sec/android/app/sbrowser/auth/LockModel;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/auth/iris/DeprecatedIrisAuthenticator;->mLockModel:Lcom/sec/android/app/sbrowser/auth/LockModel;

    return-object p0
.end method


# virtual methods
.method public cancelAuth()V
    .locals 2

    const-string v0, "Cancel Authenticate"

    const-string v1, "DeprecatedIrisAuthenticator"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/sec/android/app/sbrowser/auth/AuthListener;->EMPTY:Lcom/sec/android/app/sbrowser/auth/AuthListener;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/auth/iris/DeprecatedIrisAuthenticator;->mListener:Lcom/sec/android/app/sbrowser/auth/AuthListener;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/auth/iris/DeprecatedIrisAuthenticator;->mAuthCancelSignal:Landroid/os/CancellationSignal;

    if-eqz v0, :cond_0

    const-string v0, "Cancel Iris"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/auth/iris/DeprecatedIrisAuthenticator;->mAuthCancelSignal:Landroid/os/CancellationSignal;

    invoke-virtual {v0}, Landroid/os/CancellationSignal;->cancel()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/auth/iris/DeprecatedIrisAuthenticator;->mAuthCancelSignal:Landroid/os/CancellationSignal;

    :cond_0
    return-void
.end method

.method public startAuth(Lcom/sec/android/app/sbrowser/auth/AuthParam;Lcom/sec/android/app/sbrowser/auth/AuthListener;)V
    .locals 9

    const-string v0, "DeprecatedIrisAuthenticator"

    const-string v1, "Start Authenticate"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/auth/iris/DeprecatedIrisAuthenticator;->mListener:Lcom/sec/android/app/sbrowser/auth/AuthListener;

    new-instance v4, Landroid/os/CancellationSignal;

    invoke-direct {v4}, Landroid/os/CancellationSignal;-><init>()V

    iput-object v4, p0, Lcom/sec/android/app/sbrowser/auth/iris/DeprecatedIrisAuthenticator;->mAuthCancelSignal:Landroid/os/CancellationSignal;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/auth/iris/DeprecatedIrisAuthenticator;->mSIrisManager:Lcom/samsung/android/camera/sdk/iris/SIrisManager;

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/auth/iris/DeprecatedIrisAuthenticator;->mAuthCallback:Lcom/samsung/android/camera/sdk/iris/SIrisManager$AuthenticationCallback;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/auth/AuthParam;->getPreview()Landroid/view/View;

    move-result-object p0

    :goto_0
    move-object v8, p0

    goto :goto_1

    :cond_0
    const/4 p0, 0x0

    goto :goto_0

    :goto_1
    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v8}, Lcom/samsung/android/camera/sdk/iris/SIrisManager;->authenticate(Lcom/samsung/android/camera/sdk/iris/SIrisManager$CryptoObject;Landroid/os/CancellationSignal;ILcom/samsung/android/camera/sdk/iris/SIrisManager$AuthenticationCallback;Landroid/os/Handler;Landroid/view/View;)V

    return-void
.end method
