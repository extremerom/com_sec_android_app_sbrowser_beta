.class public Lcom/sec/android/app/sbrowser/auth/face/FaceAuthenticator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/auth/Authenticator;


# instance fields
.field private mAuthCallback:Lcom/sec/sbrowser/spl/wrapper/SemBioFaceManager$SemAuthenticationCallback;

.field private mAuthCancelSignal:Landroid/os/CancellationSignal;

.field private mBioFaceManager:Lcom/sec/sbrowser/spl/wrapper/SemBioFaceManager;

.field private mListener:Lcom/sec/android/app/sbrowser/auth/AuthListener;

.field private mLockModel:Lcom/sec/android/app/sbrowser/auth/LockModel;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/sec/android/app/sbrowser/auth/AuthListener;->EMPTY:Lcom/sec/android/app/sbrowser/auth/AuthListener;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/auth/face/FaceAuthenticator;->mListener:Lcom/sec/android/app/sbrowser/auth/AuthListener;

    new-instance v0, Lcom/sec/android/app/sbrowser/auth/LockModel;

    invoke-direct {v0}, Lcom/sec/android/app/sbrowser/auth/LockModel;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/auth/face/FaceAuthenticator;->mLockModel:Lcom/sec/android/app/sbrowser/auth/LockModel;

    invoke-static {}, Lcom/sec/terrace/TerraceApplicationStatus;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    :try_start_0
    invoke-static {v0}, Lcom/sec/sbrowser/spl/wrapper/SemBioFaceManager;->getInstance(Landroid/content/Context;)Lcom/sec/sbrowser/spl/wrapper/SemBioFaceManager;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/auth/face/FaceAuthenticator;->mBioFaceManager:Lcom/sec/sbrowser/spl/wrapper/SemBioFaceManager;
    :try_end_0
    .catch Lcom/sec/sbrowser/spl/util/FallbackException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v0, "FaceAuthenticator"

    const-string v1, "SemBioFaceManager::getInstance reflect failed"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    new-instance v0, Lcom/sec/android/app/sbrowser/auth/face/FaceAuthenticator$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/auth/face/FaceAuthenticator$1;-><init>(Lcom/sec/android/app/sbrowser/auth/face/FaceAuthenticator;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/auth/face/FaceAuthenticator;->mAuthCallback:Lcom/sec/sbrowser/spl/wrapper/SemBioFaceManager$SemAuthenticationCallback;

    return-void
.end method

.method public static bridge synthetic a(Lcom/sec/android/app/sbrowser/auth/face/FaceAuthenticator;)Lcom/sec/android/app/sbrowser/auth/AuthListener;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/auth/face/FaceAuthenticator;->mListener:Lcom/sec/android/app/sbrowser/auth/AuthListener;

    return-object p0
.end method

.method public static bridge synthetic b(Lcom/sec/android/app/sbrowser/auth/face/FaceAuthenticator;)Lcom/sec/android/app/sbrowser/auth/LockModel;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/auth/face/FaceAuthenticator;->mLockModel:Lcom/sec/android/app/sbrowser/auth/LockModel;

    return-object p0
.end method


# virtual methods
.method public cancelAuth()V
    .locals 1

    sget-object v0, Lcom/sec/android/app/sbrowser/auth/AuthListener;->EMPTY:Lcom/sec/android/app/sbrowser/auth/AuthListener;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/auth/face/FaceAuthenticator;->mListener:Lcom/sec/android/app/sbrowser/auth/AuthListener;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/auth/face/FaceAuthenticator;->mAuthCancelSignal:Landroid/os/CancellationSignal;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/CancellationSignal;->isCanceled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/auth/face/FaceAuthenticator;->mAuthCancelSignal:Landroid/os/CancellationSignal;

    invoke-virtual {v0}, Landroid/os/CancellationSignal;->cancel()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/auth/face/FaceAuthenticator;->mAuthCancelSignal:Landroid/os/CancellationSignal;

    return-void
.end method

.method public startAuth(Lcom/sec/android/app/sbrowser/auth/AuthParam;Lcom/sec/android/app/sbrowser/auth/AuthListener;)V
    .locals 6

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/auth/face/FaceAuthenticator;->mListener:Lcom/sec/android/app/sbrowser/auth/AuthListener;

    new-instance v2, Landroid/os/CancellationSignal;

    invoke-direct {v2}, Landroid/os/CancellationSignal;-><init>()V

    iput-object v2, p0, Lcom/sec/android/app/sbrowser/auth/face/FaceAuthenticator;->mAuthCancelSignal:Landroid/os/CancellationSignal;

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/auth/face/FaceAuthenticator;->mBioFaceManager:Lcom/sec/sbrowser/spl/wrapper/SemBioFaceManager;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/auth/face/FaceAuthenticator;->mAuthCallback:Lcom/sec/sbrowser/spl/wrapper/SemBioFaceManager$SemAuthenticationCallback;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v1, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/sec/sbrowser/spl/wrapper/SemBioFaceManager;->authenticate(Lcom/sec/sbrowser/spl/wrapper/SemBioFaceManager$SemCryptoObject;Landroid/os/CancellationSignal;Lcom/sec/sbrowser/spl/wrapper/SemBioFaceManager$SemAuthenticationCallback;Landroid/os/Handler;Landroid/view/View;)V
    :try_end_0
    .catch Lcom/sec/sbrowser/spl/util/FallbackException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "SemBioFaceManager authenticate call : "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string p2, "FaceAuthenticator"

    invoke-static {p0, p1, p2}, Landroidx/recyclerview/widget/P;->B(Lcom/sec/sbrowser/spl/util/FallbackException;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
