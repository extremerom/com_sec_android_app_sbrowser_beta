.class Lcom/sec/android/app/sbrowser/authentication/IntelligentScanBackend;
.super Lcom/sec/android/app/sbrowser/authentication/Backend;
.source "SourceFile"


# instance fields
.field private mAuthenticationCallback:Lcom/sec/sbrowser/spl/wrapper/SemBiometricsManager$SemAuthenticationCallback;

.field private mBiometricsManager:Lcom/sec/sbrowser/spl/wrapper/SemBiometricsManager;

.field private mCancellationSignalForIntelligentScan:Landroid/os/CancellationSignal;

.field private mPreview:Landroid/widget/ImageView;

.field private mPreviewBundle:Landroid/os/Bundle;


# direct methods
.method public constructor <init>(Landroid/widget/ImageView;)V
    .locals 1

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/authentication/Backend;-><init>()V

    new-instance v0, Lcom/sec/android/app/sbrowser/authentication/IntelligentScanBackend$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/authentication/IntelligentScanBackend$1;-><init>(Lcom/sec/android/app/sbrowser/authentication/IntelligentScanBackend;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/authentication/IntelligentScanBackend;->mAuthenticationCallback:Lcom/sec/sbrowser/spl/wrapper/SemBiometricsManager$SemAuthenticationCallback;

    invoke-static {}, Lcom/sec/terrace/TerraceApplicationStatus;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    :try_start_0
    invoke-static {v0}, Lcom/sec/sbrowser/spl/wrapper/SemBiometricsManager;->getInstance(Landroid/content/Context;)Lcom/sec/sbrowser/spl/wrapper/SemBiometricsManager;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/authentication/IntelligentScanBackend;->mBiometricsManager:Lcom/sec/sbrowser/spl/wrapper/SemBiometricsManager;
    :try_end_0
    .catch Lcom/sec/sbrowser/spl/util/FallbackException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    iput-object p1, p0, Lcom/sec/android/app/sbrowser/authentication/IntelligentScanBackend;->mPreview:Landroid/widget/ImageView;

    return-void
.end method

.method public static bridge synthetic a(Lcom/sec/android/app/sbrowser/authentication/IntelligentScanBackend;)Landroid/widget/ImageView;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/authentication/IntelligentScanBackend;->mPreview:Landroid/widget/ImageView;

    return-object p0
.end method

.method private authenticateInternal()V
    .locals 9

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/authentication/IntelligentScanBackend;->mBiometricsManager:Lcom/sec/sbrowser/spl/wrapper/SemBiometricsManager;

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

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/authentication/IntelligentScanBackend;->mCancellationSignalForIntelligentScan:Landroid/os/CancellationSignal;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/authentication/IntelligentScanBackend;->mPreview:Landroid/widget/ImageView;

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/authentication/IntelligentScanBackend;->getPreviewBundle(Landroid/view/View;)Landroid/os/Bundle;

    move-result-object v8

    invoke-static {}, Lcom/sec/sbrowser/spl/wrapper/MajoUserHandle;->myUserId()I

    move-result v7

    new-instance v3, Lcom/sec/sbrowser/spl/wrapper/SemBiometricsManager$SemCryptoObject;

    invoke-static {}, Lcom/sec/android/app/sbrowser/authentication/Authenticator;->get()Lcom/sec/android/app/sbrowser/authentication/Authenticator;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/authentication/Authenticator;->getNonce()[B

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {v3, v1, v0}, Lcom/sec/sbrowser/spl/wrapper/SemBiometricsManager$SemCryptoObject;-><init>(Ljava/security/Signature;[B)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/authentication/IntelligentScanBackend;->mBiometricsManager:Lcom/sec/sbrowser/spl/wrapper/SemBiometricsManager;

    sget v2, Lcom/sec/sbrowser/spl/wrapper/SemBiometricsManager;->TYPE_STRONG_SECURITY:I

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/authentication/IntelligentScanBackend;->mCancellationSignalForIntelligentScan:Landroid/os/CancellationSignal;

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/authentication/IntelligentScanBackend;->mAuthenticationCallback:Lcom/sec/sbrowser/spl/wrapper/SemBiometricsManager$SemAuthenticationCallback;

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v8}, Lcom/sec/sbrowser/spl/wrapper/SemBiometricsManager;->authenticate(ILcom/sec/sbrowser/spl/wrapper/SemBiometricsManager$SemCryptoObject;Landroid/os/CancellationSignal;Lcom/sec/sbrowser/spl/wrapper/SemBiometricsManager$SemAuthenticationCallback;Landroid/os/Handler;ILandroid/os/Bundle;)V
    :try_end_0
    .catch Lcom/sec/sbrowser/spl/util/FallbackException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    :goto_0
    return-void
.end method

.method public static bridge synthetic b(Lcom/sec/android/app/sbrowser/authentication/IntelligentScanBackend;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/authentication/IntelligentScanBackend;->authenticateInternal()V

    return-void
.end method

.method private getPreviewBundle(Landroid/view/View;)Landroid/os/Bundle;
    .locals 5

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/authentication/IntelligentScanBackend;->mPreviewBundle:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/authentication/IntelligentScanBackend;->mPreviewBundle:Landroid/os/Bundle;

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DesktopModeUtils;->isDesktopMode()Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "preview"

    if-eqz v0, :cond_1

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/authentication/IntelligentScanBackend;->mPreviewBundle:Landroid/os/Bundle;

    invoke-virtual {p1, v2, v1}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/authentication/IntelligentScanBackend;->mPreviewBundle:Landroid/os/Bundle;

    return-object p0

    :cond_1
    const/4 v0, 0x2

    new-array v0, v0, [I

    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationInWindow([I)V

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/authentication/IntelligentScanBackend;->mPreviewBundle:Landroid/os/Bundle;

    const/4 v4, 0x1

    invoke-virtual {v3, v2, v4}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/authentication/IntelligentScanBackend;->mPreviewBundle:Landroid/os/Bundle;

    const-string v3, "x"

    aget v1, v0, v1

    invoke-virtual {v2, v3, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/authentication/IntelligentScanBackend;->mPreviewBundle:Landroid/os/Bundle;

    const-string v2, "y"

    aget v0, v0, v4

    invoke-virtual {v1, v2, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/authentication/IntelligentScanBackend;->mPreviewBundle:Landroid/os/Bundle;

    const-string v1, "width"

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/authentication/IntelligentScanBackend;->mPreviewBundle:Landroid/os/Bundle;

    const-string v1, "height"

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/authentication/IntelligentScanBackend;->mPreviewBundle:Landroid/os/Bundle;

    const-string v1, "windowToken"

    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBinder(Ljava/lang/String;Landroid/os/IBinder;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/authentication/IntelligentScanBackend;->mPreviewBundle:Landroid/os/Bundle;

    return-object p0
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
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DesktopModeUtils;->isDesktopMode()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/authentication/IntelligentScanBackend;->authenticateInternal()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/authentication/IntelligentScanBackend;->mPreviewBundle:Landroid/os/Bundle;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/authentication/IntelligentScanBackend;->mPreview:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/sbrowser/authentication/IntelligentScanBackend$2;

    invoke-direct {v1, p0}, Lcom/sec/android/app/sbrowser/authentication/IntelligentScanBackend$2;-><init>(Lcom/sec/android/app/sbrowser/authentication/IntelligentScanBackend;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/authentication/IntelligentScanBackend;->authenticateInternal()V

    :goto_0
    return-void
.end method

.method public cancelAuthentication()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/authentication/IntelligentScanBackend;->mCancellationSignalForIntelligentScan:Landroid/os/CancellationSignal;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/CancellationSignal;->isCanceled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/authentication/IntelligentScanBackend;->mCancellationSignalForIntelligentScan:Landroid/os/CancellationSignal;

    invoke-virtual {v0}, Landroid/os/CancellationSignal;->cancel()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/authentication/IntelligentScanBackend;->mCancellationSignalForIntelligentScan:Landroid/os/CancellationSignal;

    :cond_0
    return-void
.end method
