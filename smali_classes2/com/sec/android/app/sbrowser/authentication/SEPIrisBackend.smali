.class Lcom/sec/android/app/sbrowser/authentication/SEPIrisBackend;
.super Lcom/sec/android/app/sbrowser/authentication/Backend;
.source "SourceFile"


# instance fields
.field private mAuthenticationCallback:Lcom/sec/sbrowser/spl/wrapper/SemIrisManager$SemAuthenticationCallback;

.field private mCancellationSignalForIris:Landroid/os/CancellationSignal;

.field private mHasLayoutChanged:Z

.field private mIrisManager:Lcom/sec/sbrowser/spl/wrapper/SemIrisManager;

.field private mPreview:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/widget/ImageView;)V
    .locals 2

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/authentication/Backend;-><init>()V

    new-instance v0, Lcom/sec/android/app/sbrowser/authentication/SEPIrisBackend$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/authentication/SEPIrisBackend$1;-><init>(Lcom/sec/android/app/sbrowser/authentication/SEPIrisBackend;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/authentication/SEPIrisBackend;->mAuthenticationCallback:Lcom/sec/sbrowser/spl/wrapper/SemIrisManager$SemAuthenticationCallback;

    invoke-static {}, Lcom/sec/terrace/TerraceApplicationStatus;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    :try_start_0
    invoke-static {v0}, Lcom/sec/sbrowser/spl/wrapper/SemIrisManager;->getInstance(Landroid/content/Context;)Lcom/sec/sbrowser/spl/wrapper/SemIrisManager;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/authentication/SEPIrisBackend;->mIrisManager:Lcom/sec/sbrowser/spl/wrapper/SemIrisManager;
    :try_end_0
    .catch Lcom/sec/sbrowser/spl/util/FallbackException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v0, "SEPIrisBackend"

    const-string v1, "SemIrisManager.getInstance() failed"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    iput-object p1, p0, Lcom/sec/android/app/sbrowser/authentication/SEPIrisBackend;->mPreview:Landroid/widget/ImageView;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/authentication/SEPIrisBackend;->mHasLayoutChanged:Z

    return-void
.end method

.method public static bridge synthetic a(Lcom/sec/android/app/sbrowser/authentication/SEPIrisBackend;)Landroid/widget/ImageView;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/authentication/SEPIrisBackend;->mPreview:Landroid/widget/ImageView;

    return-object p0
.end method

.method private authenticateInternal()V
    .locals 7

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/authentication/SEPIrisBackend;->canUseIris()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/sec/android/app/sbrowser/authentication/Authenticator;->get()Lcom/sec/android/app/sbrowser/authentication/Authenticator;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/authentication/Authenticator;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    new-instance v0, Landroid/os/CancellationSignal;

    invoke-direct {v0}, Landroid/os/CancellationSignal;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/authentication/SEPIrisBackend;->mCancellationSignalForIris:Landroid/os/CancellationSignal;

    new-instance v2, Lcom/sec/sbrowser/spl/wrapper/SemIrisManager$SemCryptoObject;

    invoke-static {}, Lcom/sec/android/app/sbrowser/authentication/Authenticator;->get()Lcom/sec/android/app/sbrowser/authentication/Authenticator;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/authentication/Authenticator;->getNonce()[B

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {v2, v1, v0}, Lcom/sec/sbrowser/spl/wrapper/SemIrisManager$SemCryptoObject;-><init>(Ljava/security/Signature;[B)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/authentication/SEPIrisBackend;->mIrisManager:Lcom/sec/sbrowser/spl/wrapper/SemIrisManager;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/authentication/SEPIrisBackend;->mCancellationSignalForIris:Landroid/os/CancellationSignal;

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/authentication/SEPIrisBackend;->mAuthenticationCallback:Lcom/sec/sbrowser/spl/wrapper/SemIrisManager$SemAuthenticationCallback;

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/authentication/SEPIrisBackend;->mPreview:Landroid/widget/ImageView;

    const/4 v5, 0x0

    invoke-virtual/range {v1 .. v6}, Lcom/sec/sbrowser/spl/wrapper/SemIrisManager;->authenticate(Lcom/sec/sbrowser/spl/wrapper/SemIrisManager$SemCryptoObject;Landroid/os/CancellationSignal;Lcom/sec/sbrowser/spl/wrapper/SemIrisManager$SemAuthenticationCallback;Landroid/os/Handler;Landroid/view/View;)V
    :try_end_0
    .catch Lcom/sec/sbrowser/spl/util/FallbackException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/authentication/Backend;->mListener:Lcom/sec/android/app/sbrowser/authentication/AuthenticationListener;

    new-instance v0, Lcom/sec/android/app/sbrowser/authentication/AuthenticationFailedReason;

    const/16 v1, 0xcb

    invoke-direct {v0, v1}, Lcom/sec/android/app/sbrowser/authentication/AuthenticationFailedReason;-><init>(I)V

    invoke-interface {p0, v0}, Lcom/sec/android/app/sbrowser/authentication/AuthenticationListener;->onFailed(Lcom/sec/android/app/sbrowser/authentication/AuthenticationFailedReason;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method public static bridge synthetic b(Lcom/sec/android/app/sbrowser/authentication/SEPIrisBackend;)V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/authentication/SEPIrisBackend;->mHasLayoutChanged:Z

    return-void
.end method

.method public static bridge synthetic c(Lcom/sec/android/app/sbrowser/authentication/SEPIrisBackend;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/authentication/SEPIrisBackend;->authenticateInternal()V

    return-void
.end method

.method private canUseIris()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/authentication/SEPIrisBackend;->mIrisManager:Lcom/sec/sbrowser/spl/wrapper/SemIrisManager;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public authenticate()V
    .locals 2

    invoke-static {}, Lcom/sec/terrace/TerraceApplicationStatus;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->isFlipClosed(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/authentication/SEPIrisBackend;->mHasLayoutChanged:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/authentication/SEPIrisBackend;->mPreview:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/sbrowser/authentication/SEPIrisBackend$2;

    invoke-direct {v1, p0}, Lcom/sec/android/app/sbrowser/authentication/SEPIrisBackend$2;-><init>(Lcom/sec/android/app/sbrowser/authentication/SEPIrisBackend;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/authentication/SEPIrisBackend;->authenticateInternal()V

    :goto_0
    return-void
.end method

.method public cancelAuthentication()V
    .locals 1

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/authentication/SEPIrisBackend;->canUseIris()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/authentication/SEPIrisBackend;->mCancellationSignalForIris:Landroid/os/CancellationSignal;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/CancellationSignal;->cancel()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/authentication/SEPIrisBackend;->mCancellationSignalForIris:Landroid/os/CancellationSignal;

    :cond_0
    return-void
.end method
