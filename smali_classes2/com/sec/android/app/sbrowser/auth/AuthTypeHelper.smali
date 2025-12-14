.class Lcom/sec/android/app/sbrowser/auth/AuthTypeHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mActivityProvider:Lcom/sec/android/app/sbrowser/auth/util/ActivityProvider;

.field private mIsFaceRegistered:Z

.field private mIsFingerprintRegistered:Z

.field private mIsIntelligentRegistered:Z

.field private mIsIrisRegistered:Z

.field private mSettings:Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/auth/util/ActivityProvider;)V
    .locals 0
    .param p1    # Lcom/sec/android/app/sbrowser/auth/util/ActivityProvider;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/auth/AuthTypeHelper;->mActivityProvider:Lcom/sec/android/app/sbrowser/auth/util/ActivityProvider;

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;->getInstance()Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/auth/AuthTypeHelper;->mSettings:Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;

    return-void
.end method

.method private exitMultiWindowModeIfRequired(I)V
    .locals 2

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/auth/AuthTypeHelper;->mActivityProvider:Lcom/sec/android/app/sbrowser/auth/util/ActivityProvider;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/auth/util/ActivityProvider;->getActivity()Landroid/app/Activity;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/device/ActivityUtil;->isValid(Landroid/app/Activity;)Z

    move-result v0

    const-string v1, "AuthTypeHelper"

    if-nez v0, :cond_0

    const-string p0, "exitMultiWindowModeIfRequired there is no valid activity"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/device/DesktopModeUtils;->isDesktopMode(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->isInMultiWindowMode(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/common/ui/utils/AuthDisplayUtils;->exitMultiWindowMode(Landroid/app/Activity;I)Z

    move-result p0

    if-nez p0, :cond_2

    const-string p0, "Failed to make fullscreen, finish this activity"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void
.end method

.method private isAuthAltered(I)Z
    .locals 1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/auth/AuthTypeHelper;->mSettings:Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;->isFingerprintAuthAltered()Z

    move-result p0

    goto :goto_0

    :cond_0
    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/auth/AuthTypeHelper;->mSettings:Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;->isIrisAuthAltered()Z

    move-result p0

    goto :goto_0

    :cond_1
    const/16 v0, 0x8

    if-ne p1, v0, :cond_2

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/auth/AuthTypeHelper;->mSettings:Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;->isFaceAuthAltered()Z

    move-result p0

    goto :goto_0

    :cond_2
    const/16 v0, 0x10

    if-ne p1, v0, :cond_3

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/auth/AuthTypeHelper;->mSettings:Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;->isIntelligentAuthAltered()Z

    move-result p0

    goto :goto_0

    :cond_3
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isAuthRegistered(I)Z
    .locals 2

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->supportBiometricsWithNonSamsungDevice()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x2

    if-ne p0, v0, :cond_1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/utils/BioUtil;->isFingerprintRegistered()Z

    move-result p0

    return p0

    :cond_1
    const/4 v0, 0x4

    if-ne p0, v0, :cond_2

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/utils/BioUtil;->isIrisRegistered()Z

    move-result p0

    return p0

    :cond_2
    const/16 v0, 0x8

    if-ne p0, v0, :cond_3

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/utils/BioUtil;->isFaceRegistered()Z

    move-result p0

    return p0

    :cond_3
    const/16 v0, 0x10

    if-ne p0, v0, :cond_4

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/utils/BioUtil;->isIntelligentRegistered()Z

    move-result p0

    return p0

    :cond_4
    return v1
.end method

.method private isAuthRegisteredWithCached(I)Z
    .locals 1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/auth/AuthTypeHelper;->mIsFingerprintRegistered:Z

    goto :goto_0

    :cond_0
    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/auth/AuthTypeHelper;->mIsIrisRegistered:Z

    goto :goto_0

    :cond_1
    const/16 v0, 0x8

    if-ne p1, v0, :cond_2

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/auth/AuthTypeHelper;->mIsFaceRegistered:Z

    goto :goto_0

    :cond_2
    const/16 v0, 0x10

    if-ne p1, v0, :cond_3

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/auth/AuthTypeHelper;->mIsIntelligentRegistered:Z

    goto :goto_0

    :cond_3
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isAuthSupported(I)Z
    .locals 2

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->supportBiometricsWithNonSamsungDevice()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x2

    if-ne p0, v0, :cond_1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/utils/BioUtil;->isFingerprintSupported()Z

    move-result p0

    return p0

    :cond_1
    const/4 v0, 0x4

    if-ne p0, v0, :cond_2

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/utils/BioUtil;->isIrisSupported()Z

    move-result p0

    return p0

    :cond_2
    const/16 v0, 0x8

    if-ne p0, v0, :cond_3

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/utils/BioUtil;->isFaceSupported()Z

    move-result p0

    return p0

    :cond_3
    const/16 v0, 0x10

    if-ne p0, v0, :cond_4

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/utils/BioUtil;->isIntelligentScanSupported()Z

    move-result p0

    return p0

    :cond_4
    return v1
.end method

.method private isCoverOpened()Z
    .locals 5

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/auth/AuthTypeHelper;->mActivityProvider:Lcom/sec/android/app/sbrowser/auth/util/ActivityProvider;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/auth/util/ActivityProvider;->getActivity()Landroid/app/Activity;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/device/ActivityUtil;->isValid(Landroid/app/Activity;)Z

    move-result v0

    const/4 v1, 0x1

    const-string v2, "AuthTypeHelper"

    if-nez v0, :cond_0

    const-string p0, "isCoverOpened there is no valid activity"

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/device/DesktopModeUtils;->isDesktopMode(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_2

    :try_start_0
    const-string v0, "cover"

    invoke-static {v0}, Lcom/sec/sbrowser/spl/wrapper/MajoServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/sbrowser/spl/wrapper/ICoverManager;->asInterface(Landroid/os/IBinder;)Lcom/sec/sbrowser/spl/wrapper/ICoverManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/sbrowser/spl/wrapper/ICoverManager;->getCoverSwitchState()Z

    move-result v0
    :try_end_0
    .catch Lcom/sec/sbrowser/spl/util/FallbackException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Failed to bind ICoverManager: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v3, v2}, Landroidx/recyclerview/widget/P;->B(Lcom/sec/sbrowser/spl/util/FallbackException;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    move v0, v1

    :goto_0
    if-nez v0, :cond_1

    const-string v3, "Intelligent scan disabled because Cover is closed in DEX mode"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const v2, 0x7f140f80

    invoke-static {p0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    :cond_1
    move v1, v0

    :cond_2
    return v1
.end method

.method private isMobileKeyboardConnected()Z
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/auth/AuthTypeHelper;->mActivityProvider:Lcom/sec/android/app/sbrowser/auth/util/ActivityProvider;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/auth/util/ActivityProvider;->getActivity()Landroid/app/Activity;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/device/ActivityUtil;->isValid(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string p0, "AuthTypeHelper"

    const-string v0, "isMobileKeyboardConnected there is no valid activity"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0

    :cond_0
    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/utils/ImeUtil;->isMobileKeyboardConnected(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method private setAuthEnabled(IZ)V
    .locals 1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/auth/AuthTypeHelper;->mSettings:Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;

    invoke-virtual {p0, p2}, Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;->setFingerprintAuthEnabled(Z)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/auth/AuthTypeHelper;->mSettings:Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;

    invoke-virtual {p0, p2}, Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;->setIrisAuthEnabled(Z)V

    goto :goto_0

    :cond_1
    const/16 v0, 0x8

    if-ne p1, v0, :cond_2

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/auth/AuthTypeHelper;->mSettings:Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;

    invoke-virtual {p0, p2}, Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;->setFaceAuthEnabled(Z)V

    goto :goto_0

    :cond_2
    const/16 v0, 0x10

    if-ne p1, v0, :cond_3

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/auth/AuthTypeHelper;->mSettings:Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;

    invoke-virtual {p0, p2}, Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;->setIntelligentAuthEnabled(Z)V

    :cond_3
    :goto_0
    return-void
.end method

.method private setAuthType(I)V
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/auth/AuthTypeHelper;->mSettings:Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;->setAuthTypeToPassword()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/auth/AuthTypeHelper;->mSettings:Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;->setAuthTypeToFingerprint()V

    goto :goto_0

    :cond_1
    const/4 v0, 0x4

    if-ne p1, v0, :cond_2

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/auth/AuthTypeHelper;->mSettings:Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;->setAuthTypeToIris()V

    goto :goto_0

    :cond_2
    const/16 v0, 0x8

    if-ne p1, v0, :cond_3

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/auth/AuthTypeHelper;->mSettings:Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;->setAuthTypeToFace()V

    goto :goto_0

    :cond_3
    const/16 v0, 0x10

    if-ne p1, v0, :cond_4

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/auth/AuthTypeHelper;->mSettings:Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;->setAuthTypeToIntelligent()V

    :cond_4
    :goto_0
    return-void
.end method

.method private updateAndGetAuthType(I)I
    .locals 3

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/auth/AuthTypeHelper;->isAuthRegisteredWithCached(I)Z

    move-result v0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/auth/AuthTypeHelper;->isAuthAltered(I)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    :goto_0
    move p1, v2

    goto :goto_1

    :cond_0
    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    const-string v0, "AuthTypeHelper"

    const-string v1, "biometrics are not registered!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v2}, Lcom/sec/android/app/sbrowser/auth/AuthTypeHelper;->setAuthType(I)V

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sec/android/app/sbrowser/auth/AuthTypeHelper;->setAuthEnabled(IZ)V

    goto :goto_0

    :goto_1
    return p1
.end method

.method private updateAndGetAuthTypeWithFingerprint(I)I
    .locals 6

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/auth/AuthTypeHelper;->mActivityProvider:Lcom/sec/android/app/sbrowser/auth/util/ActivityProvider;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/auth/util/ActivityProvider;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/device/ActivityUtil;->isValid(Landroid/app/Activity;)Z

    move-result v1

    const-string v2, "AuthTypeHelper"

    const/4 v3, 0x2

    if-eqz v1, :cond_0

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/device/DesktopModeUtils;->isDesktopMode(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->supportInDisplayFingerprintSensor()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "multi auth is not supported in dex mode"

    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_0
    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/auth/AuthTypeHelper;->isAuthRegisteredWithCached(I)Z

    move-result v0

    invoke-direct {p0, v3}, Lcom/sec/android/app/sbrowser/auth/AuthTypeHelper;->isAuthAltered(I)Z

    move-result v1

    const/4 v4, 0x1

    if-nez v1, :cond_6

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/auth/AuthTypeHelper;->isAuthAltered(I)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    iget-boolean v1, p0, Lcom/sec/android/app/sbrowser/auth/AuthTypeHelper;->mIsFingerprintRegistered:Z

    if-eqz v1, :cond_3

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/auth/AuthTypeHelper;->isMobileKeyboardConnected()Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_1

    :cond_2
    or-int/lit8 p1, p1, 0x2

    goto :goto_1

    :cond_3
    const/4 v5, 0x0

    if-eqz v0, :cond_4

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/auth/AuthTypeHelper;->setAuthType(I)V

    invoke-direct {p0, v3, v5}, Lcom/sec/android/app/sbrowser/auth/AuthTypeHelper;->setAuthEnabled(IZ)V

    goto :goto_1

    :cond_4
    if-eqz v1, :cond_5

    const-string v0, "iris is not registered!"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v3}, Lcom/sec/android/app/sbrowser/auth/AuthTypeHelper;->setAuthType(I)V

    invoke-direct {p0, p1, v5}, Lcom/sec/android/app/sbrowser/auth/AuthTypeHelper;->setAuthEnabled(IZ)V

    move p1, v3

    goto :goto_1

    :cond_5
    const-string v0, "biometrics are not registered!"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v4}, Lcom/sec/android/app/sbrowser/auth/AuthTypeHelper;->setAuthType(I)V

    invoke-direct {p0, v3, v5}, Lcom/sec/android/app/sbrowser/auth/AuthTypeHelper;->setAuthEnabled(IZ)V

    invoke-direct {p0, p1, v5}, Lcom/sec/android/app/sbrowser/auth/AuthTypeHelper;->setAuthEnabled(IZ)V

    :cond_6
    :goto_0
    move p1, v4

    :goto_1
    return p1
.end method


# virtual methods
.method public hasBiometricAuth()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/auth/AuthTypeHelper;->mSettings:Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;->hasBiometricAuth()Z

    move-result p0

    return p0
.end method

.method public shouldUseAuth()Z
    .locals 2

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->supportBiometricsWithNonSamsungDevice()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/auth/AuthTypeHelper;->mSettings:Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;->isBiometricsEnabledForGED()Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/auth/AuthTypeHelper;->mSettings:Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;->isAuthNone()Z

    move-result p0

    xor-int/2addr p0, v1

    return p0
.end method

.method public updateAndGetAuthType()I
    .locals 7

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->supportBiometricsWithNonSamsungDevice()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/auth/AuthTypeHelper;->mSettings:Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;->isBiometricsEnabledForGED()Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 v1, 0x20

    :cond_0
    return v1

    :cond_1
    const/16 v0, 0x8

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/auth/AuthTypeHelper;->isAuthRegistered(I)Z

    move-result v2

    iput-boolean v2, p0, Lcom/sec/android/app/sbrowser/auth/AuthTypeHelper;->mIsFaceRegistered:Z

    const/4 v2, 0x4

    invoke-static {v2}, Lcom/sec/android/app/sbrowser/auth/AuthTypeHelper;->isAuthRegistered(I)Z

    move-result v3

    iput-boolean v3, p0, Lcom/sec/android/app/sbrowser/auth/AuthTypeHelper;->mIsIrisRegistered:Z

    const/4 v3, 0x2

    invoke-static {v3}, Lcom/sec/android/app/sbrowser/auth/AuthTypeHelper;->isAuthRegistered(I)Z

    move-result v4

    iput-boolean v4, p0, Lcom/sec/android/app/sbrowser/auth/AuthTypeHelper;->mIsFingerprintRegistered:Z

    const/16 v4, 0x10

    invoke-static {v4}, Lcom/sec/android/app/sbrowser/auth/AuthTypeHelper;->isAuthRegistered(I)Z

    move-result v5

    iput-boolean v5, p0, Lcom/sec/android/app/sbrowser/auth/AuthTypeHelper;->mIsIntelligentRegistered:Z

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/auth/AuthTypeHelper;->mSettings:Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;

    invoke-virtual {v5}, Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;->updateAlteredBiometrics()V

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/auth/AuthTypeHelper;->mSettings:Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;

    invoke-virtual {v5}, Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;->isBiometricsAuthLocked()Z

    move-result v5

    if-eqz v5, :cond_2

    goto/16 :goto_0

    :cond_2
    iget-object v5, p0, Lcom/sec/android/app/sbrowser/auth/AuthTypeHelper;->mSettings:Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;

    invoke-virtual {v5}, Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;->isIntelligentFingerprintAuth()Z

    move-result v5

    const v6, 0x7f140ff7

    if-eqz v5, :cond_4

    invoke-direct {p0, v6}, Lcom/sec/android/app/sbrowser/auth/AuthTypeHelper;->exitMultiWindowModeIfRequired(I)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/auth/AuthTypeHelper;->isCoverOpened()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-direct {p0, v4}, Lcom/sec/android/app/sbrowser/auth/AuthTypeHelper;->updateAndGetAuthTypeWithFingerprint(I)I

    move-result v1

    goto/16 :goto_0

    :cond_3
    invoke-direct {p0, v3}, Lcom/sec/android/app/sbrowser/auth/AuthTypeHelper;->updateAndGetAuthType(I)I

    move-result v1

    goto/16 :goto_0

    :cond_4
    iget-object v5, p0, Lcom/sec/android/app/sbrowser/auth/AuthTypeHelper;->mSettings:Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;

    invoke-virtual {v5}, Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;->isIntelligentAuth()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-direct {p0, v6}, Lcom/sec/android/app/sbrowser/auth/AuthTypeHelper;->exitMultiWindowModeIfRequired(I)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/auth/AuthTypeHelper;->isCoverOpened()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-direct {p0, v4}, Lcom/sec/android/app/sbrowser/auth/AuthTypeHelper;->updateAndGetAuthType(I)I

    move-result v1

    goto/16 :goto_0

    :cond_5
    iget-object v4, p0, Lcom/sec/android/app/sbrowser/auth/AuthTypeHelper;->mSettings:Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;

    invoke-virtual {v4}, Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;->isIrisFingerprintAuth()Z

    move-result v4

    const v5, 0x7f140ff8

    if-eqz v4, :cond_7

    invoke-direct {p0, v5}, Lcom/sec/android/app/sbrowser/auth/AuthTypeHelper;->exitMultiWindowModeIfRequired(I)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/auth/AuthTypeHelper;->isCoverOpened()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-direct {p0, v2}, Lcom/sec/android/app/sbrowser/auth/AuthTypeHelper;->updateAndGetAuthTypeWithFingerprint(I)I

    move-result v1

    goto :goto_0

    :cond_6
    invoke-direct {p0, v3}, Lcom/sec/android/app/sbrowser/auth/AuthTypeHelper;->updateAndGetAuthType(I)I

    move-result v1

    goto :goto_0

    :cond_7
    iget-object v4, p0, Lcom/sec/android/app/sbrowser/auth/AuthTypeHelper;->mSettings:Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;

    invoke-virtual {v4}, Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;->isIrisAuth()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-direct {p0, v5}, Lcom/sec/android/app/sbrowser/auth/AuthTypeHelper;->exitMultiWindowModeIfRequired(I)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/auth/AuthTypeHelper;->isCoverOpened()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-direct {p0, v2}, Lcom/sec/android/app/sbrowser/auth/AuthTypeHelper;->updateAndGetAuthType(I)I

    move-result v1

    goto :goto_0

    :cond_8
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/auth/AuthTypeHelper;->mSettings:Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;->isFaceFingerprintAuth()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/auth/AuthTypeHelper;->isCoverOpened()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/auth/AuthTypeHelper;->updateAndGetAuthTypeWithFingerprint(I)I

    move-result v1

    goto :goto_0

    :cond_9
    invoke-direct {p0, v3}, Lcom/sec/android/app/sbrowser/auth/AuthTypeHelper;->updateAndGetAuthType(I)I

    move-result v1

    goto :goto_0

    :cond_a
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/auth/AuthTypeHelper;->mSettings:Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;->isFaceAuth()Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/auth/AuthTypeHelper;->isCoverOpened()Z

    move-result v2

    if-eqz v2, :cond_c

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/auth/AuthTypeHelper;->updateAndGetAuthType(I)I

    move-result v1

    goto :goto_0

    :cond_b
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/auth/AuthTypeHelper;->mSettings:Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;->isFingerprintAuth()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-direct {p0, v3}, Lcom/sec/android/app/sbrowser/auth/AuthTypeHelper;->updateAndGetAuthType(I)I

    move-result v1

    :cond_c
    :goto_0
    return v1
.end method
