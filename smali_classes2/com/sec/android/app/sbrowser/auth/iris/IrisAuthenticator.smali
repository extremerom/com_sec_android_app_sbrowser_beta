.class public Lcom/sec/android/app/sbrowser/auth/iris/IrisAuthenticator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/auth/Authenticator;


# instance fields
.field private mAuthCallback:Lcom/sec/sbrowser/spl/wrapper/SemIrisManager$SemAuthenticationCallback;

.field private mAuthCancelSignal:Landroid/os/CancellationSignal;

.field private mIrisManager:Lcom/sec/sbrowser/spl/wrapper/SemIrisManager;

.field private mListener:Lcom/sec/android/app/sbrowser/auth/AuthListener;

.field private mLockModel:Lcom/sec/android/app/sbrowser/auth/LockModel;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/sec/android/app/sbrowser/auth/AuthListener;->EMPTY:Lcom/sec/android/app/sbrowser/auth/AuthListener;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/auth/iris/IrisAuthenticator;->mListener:Lcom/sec/android/app/sbrowser/auth/AuthListener;

    new-instance v0, Lcom/sec/android/app/sbrowser/auth/LockModel;

    invoke-direct {v0}, Lcom/sec/android/app/sbrowser/auth/LockModel;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/auth/iris/IrisAuthenticator;->mLockModel:Lcom/sec/android/app/sbrowser/auth/LockModel;

    invoke-static {}, Lcom/sec/terrace/TerraceApplicationStatus;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    :try_start_0
    invoke-static {v0}, Lcom/sec/sbrowser/spl/wrapper/SemIrisManager;->getInstance(Landroid/content/Context;)Lcom/sec/sbrowser/spl/wrapper/SemIrisManager;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/auth/iris/IrisAuthenticator;->mIrisManager:Lcom/sec/sbrowser/spl/wrapper/SemIrisManager;
    :try_end_0
    .catch Lcom/sec/sbrowser/spl/util/FallbackException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v0, "IrisAuthenticator"

    const-string v1, "SemIrisManager reflect failed"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    new-instance v0, Lcom/sec/android/app/sbrowser/auth/iris/IrisAuthenticator$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/auth/iris/IrisAuthenticator$1;-><init>(Lcom/sec/android/app/sbrowser/auth/iris/IrisAuthenticator;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/auth/iris/IrisAuthenticator;->mAuthCallback:Lcom/sec/sbrowser/spl/wrapper/SemIrisManager$SemAuthenticationCallback;

    return-void
.end method

.method public static bridge synthetic a(Lcom/sec/android/app/sbrowser/auth/iris/IrisAuthenticator;)Lcom/sec/android/app/sbrowser/auth/AuthListener;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/auth/iris/IrisAuthenticator;->mListener:Lcom/sec/android/app/sbrowser/auth/AuthListener;

    return-object p0
.end method

.method public static bridge synthetic b(Lcom/sec/android/app/sbrowser/auth/iris/IrisAuthenticator;)Lcom/sec/android/app/sbrowser/auth/LockModel;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/auth/iris/IrisAuthenticator;->mLockModel:Lcom/sec/android/app/sbrowser/auth/LockModel;

    return-object p0
.end method


# virtual methods
.method public cancelAuth()V
    .locals 2

    const-string v0, "Cancel Authenticate"

    const-string v1, "IrisAuthenticator"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/sec/android/app/sbrowser/auth/AuthListener;->EMPTY:Lcom/sec/android/app/sbrowser/auth/AuthListener;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/auth/iris/IrisAuthenticator;->mListener:Lcom/sec/android/app/sbrowser/auth/AuthListener;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/auth/iris/IrisAuthenticator;->mAuthCancelSignal:Landroid/os/CancellationSignal;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/CancellationSignal;->isCanceled()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Cancel Iris"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/auth/iris/IrisAuthenticator;->mAuthCancelSignal:Landroid/os/CancellationSignal;

    invoke-virtual {v0}, Landroid/os/CancellationSignal;->cancel()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/auth/iris/IrisAuthenticator;->mAuthCancelSignal:Landroid/os/CancellationSignal;

    :cond_0
    return-void
.end method

.method public startAuth(Lcom/sec/android/app/sbrowser/auth/AuthParam;Lcom/sec/android/app/sbrowser/auth/AuthListener;)V
    .locals 8

    const-string v0, "Start Authenticate"

    const-string v1, "IrisAuthenticator"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/auth/iris/IrisAuthenticator;->mListener:Lcom/sec/android/app/sbrowser/auth/AuthListener;

    :try_start_0
    new-instance v4, Landroid/os/CancellationSignal;

    invoke-direct {v4}, Landroid/os/CancellationSignal;-><init>()V

    iput-object v4, p0, Lcom/sec/android/app/sbrowser/auth/iris/IrisAuthenticator;->mAuthCancelSignal:Landroid/os/CancellationSignal;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/auth/iris/IrisAuthenticator;->mIrisManager:Lcom/sec/sbrowser/spl/wrapper/SemIrisManager;

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/auth/iris/IrisAuthenticator;->mAuthCallback:Lcom/sec/sbrowser/spl/wrapper/SemIrisManager$SemAuthenticationCallback;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/auth/AuthParam;->getPreview()Landroid/view/View;

    move-result-object p0

    :goto_0
    move-object v7, p0

    goto :goto_1

    :catch_0
    move-exception p0

    goto :goto_2

    :cond_0
    const/4 p0, 0x0

    goto :goto_0

    :goto_1
    const/4 v3, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v2 .. v7}, Lcom/sec/sbrowser/spl/wrapper/SemIrisManager;->authenticate(Lcom/sec/sbrowser/spl/wrapper/SemIrisManager$SemCryptoObject;Landroid/os/CancellationSignal;Lcom/sec/sbrowser/spl/wrapper/SemIrisManager$SemAuthenticationCallback;Landroid/os/Handler;Landroid/view/View;)V
    :try_end_0
    .catch Lcom/sec/sbrowser/spl/util/FallbackException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :goto_2
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "SemIrisManager authenticate call : "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, p1, v1}, Landroidx/recyclerview/widget/P;->B(Lcom/sec/sbrowser/spl/util/FallbackException;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :goto_3
    return-void
.end method
