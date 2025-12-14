.class Lcom/sec/android/app/sbrowser/authentication/CameraIrisBackend;
.super Lcom/sec/android/app/sbrowser/authentication/Backend;
.source "SourceFile"


# instance fields
.field private mAuthenticationCallback:Lcom/samsung/android/camera/sdk/iris/SIrisManager$AuthenticationCallback;

.field private mCancellationSignalForIris:Landroid/os/CancellationSignal;

.field private mHasLayoutChanged:Z

.field private mPreview:Landroid/widget/ImageView;

.field private mSIris:Lcom/samsung/android/camera/sdk/iris/SIris;

.field private mSIrisManager:Lcom/samsung/android/camera/sdk/iris/SIrisManager;


# direct methods
.method public static bridge synthetic a(Lcom/sec/android/app/sbrowser/authentication/CameraIrisBackend;)Landroid/widget/ImageView;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/authentication/CameraIrisBackend;->mPreview:Landroid/widget/ImageView;

    return-object p0
.end method

.method private authenticateInternal()V
    .locals 8

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/authentication/CameraIrisBackend;->canUseIris()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/sec/android/app/sbrowser/authentication/Authenticator;->get()Lcom/sec/android/app/sbrowser/authentication/Authenticator;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/authentication/Authenticator;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/os/CancellationSignal;

    invoke-direct {v0}, Landroid/os/CancellationSignal;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/authentication/CameraIrisBackend;->mCancellationSignalForIris:Landroid/os/CancellationSignal;

    new-instance v2, Lcom/samsung/android/camera/sdk/iris/SIrisManager$CryptoObject;

    invoke-static {}, Lcom/sec/android/app/sbrowser/authentication/Authenticator;->get()Lcom/sec/android/app/sbrowser/authentication/Authenticator;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/authentication/Authenticator;->getNonce()[B

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {v2, v1, v0}, Lcom/samsung/android/camera/sdk/iris/SIrisManager$CryptoObject;-><init>(Ljava/security/Signature;[B)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/authentication/CameraIrisBackend;->mSIrisManager:Lcom/samsung/android/camera/sdk/iris/SIrisManager;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/authentication/CameraIrisBackend;->mCancellationSignalForIris:Landroid/os/CancellationSignal;

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/authentication/CameraIrisBackend;->mAuthenticationCallback:Lcom/samsung/android/camera/sdk/iris/SIrisManager$AuthenticationCallback;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/sec/android/app/sbrowser/authentication/CameraIrisBackend;->mPreview:Landroid/widget/ImageView;

    const/4 v4, 0x0

    invoke-virtual/range {v1 .. v7}, Lcom/samsung/android/camera/sdk/iris/SIrisManager;->authenticate(Lcom/samsung/android/camera/sdk/iris/SIrisManager$CryptoObject;Landroid/os/CancellationSignal;ILcom/samsung/android/camera/sdk/iris/SIrisManager$AuthenticationCallback;Landroid/os/Handler;Landroid/view/View;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static bridge synthetic b(Lcom/sec/android/app/sbrowser/authentication/CameraIrisBackend;)V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/authentication/CameraIrisBackend;->mHasLayoutChanged:Z

    return-void
.end method

.method public static bridge synthetic c(Lcom/sec/android/app/sbrowser/authentication/CameraIrisBackend;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/authentication/CameraIrisBackend;->authenticateInternal()V

    return-void
.end method

.method private canUseIris()Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/authentication/CameraIrisBackend;->mSIris:Lcom/samsung/android/camera/sdk/iris/SIris;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/authentication/CameraIrisBackend;->mSIrisManager:Lcom/samsung/android/camera/sdk/iris/SIrisManager;

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
    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/authentication/CameraIrisBackend;->mHasLayoutChanged:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/authentication/CameraIrisBackend;->mPreview:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/sbrowser/authentication/CameraIrisBackend$2;

    invoke-direct {v1, p0}, Lcom/sec/android/app/sbrowser/authentication/CameraIrisBackend$2;-><init>(Lcom/sec/android/app/sbrowser/authentication/CameraIrisBackend;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/authentication/CameraIrisBackend;->authenticateInternal()V

    :goto_0
    return-void
.end method

.method public cancelAuthentication()V
    .locals 1

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/authentication/CameraIrisBackend;->canUseIris()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/authentication/CameraIrisBackend;->mCancellationSignalForIris:Landroid/os/CancellationSignal;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/CancellationSignal;->cancel()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/authentication/CameraIrisBackend;->mCancellationSignalForIris:Landroid/os/CancellationSignal;

    :cond_0
    return-void
.end method
