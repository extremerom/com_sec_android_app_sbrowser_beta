.class public Lcom/sec/android/app/sbrowser/auth/intelligent/IntelligentAuthenticator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/auth/Authenticator;


# instance fields
.field private mAuthCallback:Lcom/sec/sbrowser/spl/wrapper/SemBiometricsManager$SemAuthenticationCallback;

.field private mAuthCancelSignal:Landroid/os/CancellationSignal;

.field private mBiometricsManager:Lcom/sec/sbrowser/spl/wrapper/SemBiometricsManager;

.field private mListener:Lcom/sec/android/app/sbrowser/auth/AuthListener;

.field private mLockModel:Lcom/sec/android/app/sbrowser/auth/LockModel;


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/sec/android/app/sbrowser/auth/AuthListener;->EMPTY:Lcom/sec/android/app/sbrowser/auth/AuthListener;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/auth/intelligent/IntelligentAuthenticator;->mListener:Lcom/sec/android/app/sbrowser/auth/AuthListener;

    new-instance v0, Lcom/sec/android/app/sbrowser/auth/LockModel;

    invoke-direct {v0}, Lcom/sec/android/app/sbrowser/auth/LockModel;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/auth/intelligent/IntelligentAuthenticator;->mLockModel:Lcom/sec/android/app/sbrowser/auth/LockModel;

    invoke-static {}, Lcom/sec/terrace/TerraceApplicationStatus;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/camera/sdk/iris/SIrisManager;->getSIrisManager(Landroid/content/Context;)Lcom/samsung/android/camera/sdk/iris/SIrisManager;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/samsung/android/camera/sdk/iris/SIrisManager;->enableIRImageCallback(Z)V

    :cond_0
    :try_start_0
    invoke-static {v0}, Lcom/sec/sbrowser/spl/wrapper/SemBiometricsManager;->getInstance(Landroid/content/Context;)Lcom/sec/sbrowser/spl/wrapper/SemBiometricsManager;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/auth/intelligent/IntelligentAuthenticator;->mBiometricsManager:Lcom/sec/sbrowser/spl/wrapper/SemBiometricsManager;
    :try_end_0
    .catch Lcom/sec/sbrowser/spl/util/FallbackException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v0, "IntelligentAuthenticator"

    const-string v1, "SemBiometricsManager reflect failed"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    new-instance v0, Lcom/sec/android/app/sbrowser/auth/intelligent/IntelligentAuthenticator$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/auth/intelligent/IntelligentAuthenticator$1;-><init>(Lcom/sec/android/app/sbrowser/auth/intelligent/IntelligentAuthenticator;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/auth/intelligent/IntelligentAuthenticator;->mAuthCallback:Lcom/sec/sbrowser/spl/wrapper/SemBiometricsManager$SemAuthenticationCallback;

    return-void
.end method

.method public static bridge synthetic a(Lcom/sec/android/app/sbrowser/auth/intelligent/IntelligentAuthenticator;)Lcom/sec/android/app/sbrowser/auth/AuthListener;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/auth/intelligent/IntelligentAuthenticator;->mListener:Lcom/sec/android/app/sbrowser/auth/AuthListener;

    return-object p0
.end method

.method private authenticateStrong(Landroid/os/Bundle;)V
    .locals 10

    const-string v0, "authenticateStrong"

    const-string v1, "IntelligentAuthenticator"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/auth/intelligent/IntelligentAuthenticator;->mBiometricsManager:Lcom/sec/sbrowser/spl/wrapper/SemBiometricsManager;

    if-nez v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    new-instance v0, Landroid/os/CancellationSignal;

    invoke-direct {v0}, Landroid/os/CancellationSignal;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/auth/intelligent/IntelligentAuthenticator;->mAuthCancelSignal:Landroid/os/CancellationSignal;

    sget v3, Lcom/sec/sbrowser/spl/wrapper/SemBiometricsManager;->TYPE_STRONG_SECURITY:I

    invoke-static {}, Lcom/sec/sbrowser/spl/wrapper/MajoUserHandle;->myUserId()I

    move-result v8

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/auth/intelligent/IntelligentAuthenticator;->mBiometricsManager:Lcom/sec/sbrowser/spl/wrapper/SemBiometricsManager;

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/auth/intelligent/IntelligentAuthenticator;->mAuthCancelSignal:Landroid/os/CancellationSignal;

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/auth/intelligent/IntelligentAuthenticator;->mAuthCallback:Lcom/sec/sbrowser/spl/wrapper/SemBiometricsManager$SemAuthenticationCallback;

    const/4 v7, 0x0

    const/4 v4, 0x0

    move-object v9, p1

    invoke-virtual/range {v2 .. v9}, Lcom/sec/sbrowser/spl/wrapper/SemBiometricsManager;->authenticate(ILcom/sec/sbrowser/spl/wrapper/SemBiometricsManager$SemCryptoObject;Landroid/os/CancellationSignal;Lcom/sec/sbrowser/spl/wrapper/SemBiometricsManager$SemAuthenticationCallback;Landroid/os/Handler;ILandroid/os/Bundle;)V
    :try_end_0
    .catch Lcom/sec/sbrowser/spl/util/FallbackException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "SemBiometrics strong-authenticate call : "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, p1, v1}, Landroidx/recyclerview/widget/P;->B(Lcom/sec/sbrowser/spl/util/FallbackException;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public static bridge synthetic b(Lcom/sec/android/app/sbrowser/auth/intelligent/IntelligentAuthenticator;)Lcom/sec/android/app/sbrowser/auth/LockModel;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/auth/intelligent/IntelligentAuthenticator;->mLockModel:Lcom/sec/android/app/sbrowser/auth/LockModel;

    return-object p0
.end method


# virtual methods
.method public cancelAuth()V
    .locals 1

    sget-object v0, Lcom/sec/android/app/sbrowser/auth/AuthListener;->EMPTY:Lcom/sec/android/app/sbrowser/auth/AuthListener;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/auth/intelligent/IntelligentAuthenticator;->mListener:Lcom/sec/android/app/sbrowser/auth/AuthListener;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/auth/intelligent/IntelligentAuthenticator;->mAuthCancelSignal:Landroid/os/CancellationSignal;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/CancellationSignal;->isCanceled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/auth/intelligent/IntelligentAuthenticator;->mAuthCancelSignal:Landroid/os/CancellationSignal;

    invoke-virtual {v0}, Landroid/os/CancellationSignal;->cancel()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/auth/intelligent/IntelligentAuthenticator;->mAuthCancelSignal:Landroid/os/CancellationSignal;

    return-void
.end method

.method public startAuth(Lcom/sec/android/app/sbrowser/auth/AuthParam;Lcom/sec/android/app/sbrowser/auth/AuthListener;)V
    .locals 0

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/auth/intelligent/IntelligentAuthenticator;->mListener:Lcom/sec/android/app/sbrowser/auth/AuthListener;

    new-instance p2, Landroid/os/CancellationSignal;

    invoke-direct {p2}, Landroid/os/CancellationSignal;-><init>()V

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/auth/intelligent/IntelligentAuthenticator;->mAuthCancelSignal:Landroid/os/CancellationSignal;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/auth/AuthParam;->getPreviewBundle()Landroid/os/Bundle;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/auth/intelligent/IntelligentAuthenticator;->authenticateStrong(Landroid/os/Bundle;)V

    return-void
.end method
