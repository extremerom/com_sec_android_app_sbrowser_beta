.class Lcom/sec/android/app/sbrowser/authentication/AuthenticatorStarter;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final AUTHENTICATOR_TABLE:Ljava/util/EnumMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumMap<",
            "Lcom/sec/android/app/sbrowser/authentication/Authenticator$Type;",
            "Ljava/lang/Class<",
            "+",
            "Lcom/sec/android/app/sbrowser/authentication/AuthenticationActivity;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mAuthenticationDeviceStatus:Lcom/sec/android/app/sbrowser/authentication/AuthenticationDeviceStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lcom/sec/android/app/sbrowser/authentication/Authenticator$Type;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lcom/sec/android/app/sbrowser/authentication/AuthenticatorStarter;->AUTHENTICATOR_TABLE:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/sbrowser/authentication/Authenticator$Type;->FINGERPRINT:Lcom/sec/android/app/sbrowser/authentication/Authenticator$Type;

    const-class v2, Lcom/sec/android/app/sbrowser/authentication/AuthenticationFingerprintActivity;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/sec/android/app/sbrowser/authentication/Authenticator$Type;->IRIS:Lcom/sec/android/app/sbrowser/authentication/Authenticator$Type;

    const-class v2, Lcom/sec/android/app/sbrowser/authentication/AuthenticationIrisActivity;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/sec/android/app/sbrowser/authentication/Authenticator$Type;->INTELLIGENT_SCAN:Lcom/sec/android/app/sbrowser/authentication/Authenticator$Type;

    const-class v2, Lcom/sec/android/app/sbrowser/authentication/AuthenticationIntelligentScanActivity;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/sec/android/app/sbrowser/authentication/Authenticator$Type;->BIOMETRICS:Lcom/sec/android/app/sbrowser/authentication/Authenticator$Type;

    const-class v2, Lcom/sec/android/app/sbrowser/authentication/AuthenticationBiometricsActivity;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/sec/android/app/sbrowser/authentication/Authenticator$Type;->INTELLIGENT_SCAN_MULTI:Lcom/sec/android/app/sbrowser/authentication/Authenticator$Type;

    const-class v2, Lcom/sec/android/app/sbrowser/authentication/AuthenticationIntelligentScanMultiActivity;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/sec/android/app/sbrowser/authentication/AuthenticationDeviceStatus;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/authentication/AuthenticatorStarter;->mAuthenticationDeviceStatus:Lcom/sec/android/app/sbrowser/authentication/AuthenticationDeviceStatus;

    return-void
.end method

.method private getActivityOrApplicationContext()Landroid/content/Context;
    .locals 0

    invoke-static {}, Lcom/sec/terrace/TerraceApplicationStatus;->getLastTrackedFocusedActivity()Landroid/app/Activity;

    move-result-object p0

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    invoke-static {}, Lcom/sec/terrace/TerraceApplicationStatus;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    return-object p0
.end method

.method private showErrorToast(I)V
    .locals 1

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/authentication/AuthenticatorStarter;->getActivityOrApplicationContext()Landroid/content/Context;

    move-result-object p0

    if-nez p0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method private validateRequestConditions(Lcom/sec/android/app/sbrowser/authentication/Authenticator$Type;)Z
    .locals 4

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/authentication/AuthenticatorStarter;->isIrisBasedAuthenticator(Lcom/sec/android/app/sbrowser/authentication/Authenticator$Type;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/authentication/AuthenticatorStarter;->mAuthenticationDeviceStatus:Lcom/sec/android/app/sbrowser/authentication/AuthenticationDeviceStatus;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/authentication/AuthenticationDeviceStatus;->isCoverClosed()Z

    move-result v0

    const/4 v2, 0x0

    const v3, 0x7f140f81

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/authentication/AuthenticatorStarter;->mAuthenticationDeviceStatus:Lcom/sec/android/app/sbrowser/authentication/AuthenticationDeviceStatus;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/authentication/AuthenticationDeviceStatus;->isDesktopMode()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, v3}, Lcom/sec/android/app/sbrowser/authentication/AuthenticatorStarter;->showErrorToast(I)V

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/authentication/AuthenticatorStarter;->isMultipleAuthenticator(Lcom/sec/android/app/sbrowser/authentication/Authenticator$Type;)Z

    move-result p0

    return p0

    :cond_1
    return v2

    :cond_2
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/authentication/AuthenticatorStarter;->mAuthenticationDeviceStatus:Lcom/sec/android/app/sbrowser/authentication/AuthenticationDeviceStatus;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/authentication/AuthenticationDeviceStatus;->isStandaloneDesktopMode()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-direct {p0, v3}, Lcom/sec/android/app/sbrowser/authentication/AuthenticatorStarter;->showErrorToast(I)V

    return v2

    :cond_3
    return v1
.end method


# virtual methods
.method public isIrisBasedAuthenticator(Lcom/sec/android/app/sbrowser/authentication/Authenticator$Type;)Z
    .locals 1

    sget-object v0, Lcom/sec/android/app/sbrowser/authentication/Authenticator$Type;->IRIS:Lcom/sec/android/app/sbrowser/authentication/Authenticator$Type;

    if-eq p1, v0, :cond_1

    sget-object v0, Lcom/sec/android/app/sbrowser/authentication/Authenticator$Type;->INTELLIGENT_SCAN:Lcom/sec/android/app/sbrowser/authentication/Authenticator$Type;

    if-eq p1, v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/authentication/AuthenticatorStarter;->isMultipleAuthenticator(Lcom/sec/android/app/sbrowser/authentication/Authenticator$Type;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public isMultipleAuthenticator(Lcom/sec/android/app/sbrowser/authentication/Authenticator$Type;)Z
    .locals 0

    sget-object p0, Lcom/sec/android/app/sbrowser/authentication/Authenticator$Type;->BIOMETRICS:Lcom/sec/android/app/sbrowser/authentication/Authenticator$Type;

    if-eq p1, p0, :cond_1

    sget-object p0, Lcom/sec/android/app/sbrowser/authentication/Authenticator$Type;->INTELLIGENT_SCAN_MULTI:Lcom/sec/android/app/sbrowser/authentication/Authenticator$Type;

    if-ne p1, p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public requestAuthentication(Lcom/sec/android/app/sbrowser/authentication/Authenticator$Type;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/authentication/AuthenticatorStarter;->validateRequestConditions(Lcom/sec/android/app/sbrowser/authentication/Authenticator$Type;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/sec/android/app/sbrowser/authentication/Authenticator;->get()Lcom/sec/android/app/sbrowser/authentication/Authenticator;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/authentication/Authenticator;->handleCallback()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/authentication/AuthenticatorStarter;->mAuthenticationDeviceStatus:Lcom/sec/android/app/sbrowser/authentication/AuthenticationDeviceStatus;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/authentication/AuthenticationDeviceStatus;->canSupportNonSamsungDevice()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/authentication/AuthenticatorStarter;->showBiometricPrompt()V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/authentication/AuthenticatorStarter;->mAuthenticationDeviceStatus:Lcom/sec/android/app/sbrowser/authentication/AuthenticationDeviceStatus;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/authentication/AuthenticationDeviceStatus;->canSupportMultiWindowMode()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/sec/terrace/TerraceApplicationStatus;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/provider/Settings;->canDrawOverlays(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/authentication/AuthenticatorStarter;->showBiometricDialog(Lcom/sec/android/app/sbrowser/authentication/Authenticator$Type;)V

    goto :goto_0

    :cond_2
    const p1, 0x7f1404bc

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/authentication/AuthenticatorStarter;->showErrorToast(I)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/authentication/Authenticator;->get()Lcom/sec/android/app/sbrowser/authentication/Authenticator;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/authentication/Authenticator;->handleCallback()V

    :goto_0
    return-void

    :cond_3
    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/authentication/AuthenticatorStarter;->startAuthenticationActivity(Lcom/sec/android/app/sbrowser/authentication/Authenticator$Type;)V

    return-void
.end method

.method public setActivity(Landroid/app/Activity;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/authentication/AuthenticatorStarter;->mActivity:Landroid/app/Activity;

    return-void
.end method

.method public showBiometricDialog(Lcom/sec/android/app/sbrowser/authentication/Authenticator$Type;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "showBiometricDialog type:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AuthenticatorStarter"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/sec/android/app/sbrowser/authentication/AuthenticatorStarter$1;->$SwitchMap$com$sec$android$app$sbrowser$authentication$Authenticator$Type:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    const/4 p0, 0x2

    if-eq v0, p0, :cond_3

    const/4 p0, 0x3

    if-eq v0, p0, :cond_2

    const/4 p0, 0x4

    if-eq v0, p0, :cond_1

    const/4 p0, 0x5

    if-ne v0, p0, :cond_0

    new-instance p0, Lcom/sec/android/app/sbrowser/authentication/AuthenticationIntelligentScanMultiAlert;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/authentication/AuthenticationIntelligentScanMultiAlert;-><init>()V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/authentication/AuthenticationAlert;->show()V

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unexpected value: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Lcom/sec/android/app/sbrowser/authentication/AuthenticationIntelligentScanAlert;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/authentication/AuthenticationIntelligentScanAlert;-><init>()V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/authentication/AuthenticationAlert;->show()V

    goto :goto_0

    :cond_2
    new-instance p0, Lcom/sec/android/app/sbrowser/authentication/AuthenticationBiometricsAlert;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/authentication/AuthenticationBiometricsAlert;-><init>()V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/authentication/AuthenticationAlert;->show()V

    goto :goto_0

    :cond_3
    new-instance p0, Lcom/sec/android/app/sbrowser/authentication/AuthenticationIrisAlert;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/authentication/AuthenticationIrisAlert;-><init>()V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/authentication/AuthenticationAlert;->show()V

    goto :goto_0

    :cond_4
    new-instance p1, Lcom/sec/android/app/sbrowser/authentication/AuthenticationFingerprintAlert;

    invoke-direct {p1}, Lcom/sec/android/app/sbrowser/authentication/AuthenticationFingerprintAlert;-><init>()V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/authentication/AuthenticatorStarter;->mActivity:Landroid/app/Activity;

    invoke-virtual {p1, p0}, Lcom/sec/android/app/sbrowser/authentication/AuthenticationAlert;->setActivity(Landroid/app/Activity;)V

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/authentication/AuthenticationAlert;->show()V

    :goto_0
    return-void
.end method

.method public showBiometricPrompt()V
    .locals 1

    :try_start_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/authentication/BiometricPromptController;->getInstance()Lcom/sec/android/app/sbrowser/authentication/BiometricPromptController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/authentication/BiometricPromptController;->authenticate()V
    :try_end_0
    .catch Lcom/sec/sbrowser/spl/util/FallbackException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "AuthenticatorStarter"

    const-string v0, "showBiometricPrompt() failed"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public startAuthenticationActivity(Lcom/sec/android/app/sbrowser/authentication/Authenticator$Type;)V
    .locals 1

    sget-object v0, Lcom/sec/android/app/sbrowser/authentication/AuthenticatorStarter;->AUTHENTICATOR_TABLE:Ljava/util/EnumMap;

    invoke-virtual {v0, p1}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Class;

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/authentication/AuthenticatorStarter;->getActivityOrApplicationContext()Landroid/content/Context;

    move-result-object p0

    if-nez p0, :cond_1

    return-void

    :cond_1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p0, p1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    instance-of p1, p0, Landroid/app/Activity;

    if-nez p1, :cond_2

    const/high16 p1, 0x10000000

    invoke-virtual {v0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :cond_2
    invoke-static {p0, v0}, Lcom/sec/android/app/sbrowser/common/utils/LargeScreenUtil;->startNonPopOverActivity(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method
