.class final Lcom/sec/android/app/sbrowser/authentication/AuthenticatorImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/authentication/Authenticator;


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private final mAuthenticationContext:Lcom/sec/android/app/sbrowser/authentication/AuthenticationContext;

.field private mAuthenticationDeviceStatus:Lcom/sec/android/app/sbrowser/authentication/AuthenticationDeviceStatus;

.field private mAuthenticatorStarter:Lcom/sec/android/app/sbrowser/authentication/AuthenticatorStarter;

.field private mOption:Lcom/sec/android/app/sbrowser/authentication/Authenticator$Option;

.field private mRegistrationFactory:Lcom/sec/android/app/sbrowser/authentication/RegistrationFactory;

.field private mWindowInsetCallback:Lcom/sec/terrace/TerraceDeferredIMEWindowInsetApplicationCallback;


# direct methods
.method private constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/sec/android/app/sbrowser/authentication/AuthenticationContext;

    invoke-direct {v0}, Lcom/sec/android/app/sbrowser/authentication/AuthenticationContext;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/authentication/AuthenticatorImpl;->mAuthenticationContext:Lcom/sec/android/app/sbrowser/authentication/AuthenticationContext;

    new-instance v0, Lcom/sec/android/app/sbrowser/authentication/AuthenticationDeviceStatus;

    invoke-direct {v0}, Lcom/sec/android/app/sbrowser/authentication/AuthenticationDeviceStatus;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/authentication/AuthenticatorImpl;->mAuthenticationDeviceStatus:Lcom/sec/android/app/sbrowser/authentication/AuthenticationDeviceStatus;

    new-instance v0, Lcom/sec/android/app/sbrowser/authentication/AuthenticatorStarter;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/authentication/AuthenticatorImpl;->mAuthenticationDeviceStatus:Lcom/sec/android/app/sbrowser/authentication/AuthenticationDeviceStatus;

    invoke-direct {v0, v1}, Lcom/sec/android/app/sbrowser/authentication/AuthenticatorStarter;-><init>(Lcom/sec/android/app/sbrowser/authentication/AuthenticationDeviceStatus;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/authentication/AuthenticatorImpl;->mAuthenticatorStarter:Lcom/sec/android/app/sbrowser/authentication/AuthenticatorStarter;

    new-instance v0, Lcom/sec/android/app/sbrowser/authentication/RegistrationFactory;

    invoke-direct {v0}, Lcom/sec/android/app/sbrowser/authentication/RegistrationFactory;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/authentication/AuthenticatorImpl;->mRegistrationFactory:Lcom/sec/android/app/sbrowser/authentication/RegistrationFactory;

    new-instance v0, Lcom/sec/terrace/TerraceDeferredIMEWindowInsetApplicationCallback;

    new-instance v1, Lcom/sec/android/app/sbrowser/authentication/g;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p0}, Lcom/sec/android/app/sbrowser/authentication/g;-><init>(ILjava/lang/Object;)V

    invoke-direct {v0, v1}, Lcom/sec/terrace/TerraceDeferredIMEWindowInsetApplicationCallback;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/authentication/AuthenticatorImpl;->mWindowInsetCallback:Lcom/sec/terrace/TerraceDeferredIMEWindowInsetApplicationCallback;

    return-void
.end method

.method public static synthetic a(Lcom/sec/android/app/sbrowser/authentication/AuthenticatorImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/authentication/AuthenticatorImpl;->lambda$new$0()V

    return-void
.end method

.method public static synthetic b()Lcom/sec/android/app/sbrowser/authentication/AuthenticatorImpl;
    .locals 1

    new-instance v0, Lcom/sec/android/app/sbrowser/authentication/AuthenticatorImpl;

    invoke-direct {v0}, Lcom/sec/android/app/sbrowser/authentication/AuthenticatorImpl;-><init>()V

    return-object v0
.end method

.method public static get()Lcom/sec/android/app/sbrowser/authentication/AuthenticatorImpl;
    .locals 2

    new-instance v0, Lcom/sec/android/app/sbrowser/authentication/f;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    const-class v1, Lcom/sec/android/app/sbrowser/authentication/AuthenticatorImpl;

    invoke-static {v1, v0}, Lcom/sec/android/app/sbrowser/common/singleton/SingletonFactory;->getOrCreate(Ljava/lang/Class;Lcom/sec/android/app/sbrowser/common/function/Supplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/authentication/AuthenticatorImpl;

    return-object v0
.end method

.method private isFingerprintDisabled()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/authentication/AuthenticatorImpl;->mAuthenticationDeviceStatus:Lcom/sec/android/app/sbrowser/authentication/AuthenticationDeviceStatus;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/authentication/AuthenticationDeviceStatus;->isFingerprintDisabled()Z

    move-result p0

    return p0
.end method

.method private isIrisDisabled()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/authentication/AuthenticatorImpl;->mAuthenticationDeviceStatus:Lcom/sec/android/app/sbrowser/authentication/AuthenticationDeviceStatus;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/authentication/AuthenticationDeviceStatus;->isIrisDisabled()Z

    move-result p0

    return p0
.end method

.method private synthetic lambda$new$0()V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/authentication/AuthenticatorImpl;->startAuthentication()V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/authentication/AuthenticatorImpl;->mWindowInsetCallback:Lcom/sec/terrace/TerraceDeferredIMEWindowInsetApplicationCallback;

    invoke-virtual {p0}, Lcom/sec/terrace/TerraceDeferredIMEWindowInsetApplicationCallback;->detach()V

    return-void
.end method

.method private register(Lcom/sec/android/app/sbrowser/authentication/Authenticator$Option;Lcom/sec/android/app/sbrowser/common/model/authentication/Registration$Callback;)V
    .locals 2

    const-string v0, "AuthenticatorImpl"

    const-string v1, "Register a authenticator"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p1, Lcom/sec/android/app/sbrowser/authentication/Authenticator$Option;->type:Lcom/sec/android/app/sbrowser/authentication/Authenticator$Type;

    sget-object v1, Lcom/sec/android/app/sbrowser/authentication/Authenticator$Type;->AUTO:Lcom/sec/android/app/sbrowser/authentication/Authenticator$Type;

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/authentication/AuthenticatorImpl;->selectMoreSecureAuthenticatorType()Lcom/sec/android/app/sbrowser/authentication/Authenticator$Type;

    move-result-object v0

    iput-object v0, p1, Lcom/sec/android/app/sbrowser/authentication/Authenticator$Option;->type:Lcom/sec/android/app/sbrowser/authentication/Authenticator$Type;

    :cond_0
    iget-object p1, p1, Lcom/sec/android/app/sbrowser/authentication/Authenticator$Option;->type:Lcom/sec/android/app/sbrowser/authentication/Authenticator$Type;

    sget-object v0, Lcom/sec/android/app/sbrowser/authentication/Authenticator$Type;->FINGERPRINT:Lcom/sec/android/app/sbrowser/authentication/Authenticator$Type;

    if-eq p1, v0, :cond_1

    sget-object v0, Lcom/sec/android/app/sbrowser/authentication/Authenticator$Type;->IRIS:Lcom/sec/android/app/sbrowser/authentication/Authenticator$Type;

    if-eq p1, v0, :cond_1

    return-void

    :cond_1
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/authentication/AuthenticatorImpl;->mRegistrationFactory:Lcom/sec/android/app/sbrowser/authentication/RegistrationFactory;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/authentication/RegistrationFactory;->create(Lcom/sec/android/app/sbrowser/authentication/Authenticator$Type;)Lcom/sec/android/app/sbrowser/common/model/authentication/Registration;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/sec/android/app/sbrowser/common/model/authentication/Registration;->run(Lcom/sec/android/app/sbrowser/common/model/authentication/Registration$Callback;)V

    return-void
.end method

.method private setAuthenticationDeviceStatus(Lcom/sec/android/app/sbrowser/authentication/AuthenticationDeviceStatus;)V
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/authentication/AuthenticatorImpl;->mAuthenticationDeviceStatus:Lcom/sec/android/app/sbrowser/authentication/AuthenticationDeviceStatus;

    return-void
.end method

.method private setAuthenticatorStarter(Lcom/sec/android/app/sbrowser/authentication/AuthenticatorStarter;)V
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/authentication/AuthenticatorImpl;->mAuthenticatorStarter:Lcom/sec/android/app/sbrowser/authentication/AuthenticatorStarter;

    return-void
.end method

.method private setRegistrationFactory(Lcom/sec/android/app/sbrowser/authentication/RegistrationFactory;)V
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/authentication/AuthenticatorImpl;->mRegistrationFactory:Lcom/sec/android/app/sbrowser/authentication/RegistrationFactory;

    return-void
.end method

.method private startAuthentication()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/authentication/AuthenticatorImpl;->mAuthenticatorStarter:Lcom/sec/android/app/sbrowser/authentication/AuthenticatorStarter;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/authentication/AuthenticatorImpl;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/authentication/AuthenticatorStarter;->setActivity(Landroid/app/Activity;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/authentication/AuthenticatorImpl;->mAuthenticatorStarter:Lcom/sec/android/app/sbrowser/authentication/AuthenticatorStarter;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/authentication/AuthenticatorImpl;->mOption:Lcom/sec/android/app/sbrowser/authentication/Authenticator$Option;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/authentication/Authenticator$Option;->type:Lcom/sec/android/app/sbrowser/authentication/Authenticator$Type;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/sbrowser/authentication/AuthenticatorStarter;->requestAuthentication(Lcom/sec/android/app/sbrowser/authentication/Authenticator$Type;)V

    return-void
.end method


# virtual methods
.method public authenticate(Lcom/sec/android/app/sbrowser/authentication/Authenticator$Option;Lcom/sec/android/app/sbrowser/authentication/Authenticator$Callback;)V
    .locals 3

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/authentication/AuthenticatorImpl;->mOption:Lcom/sec/android/app/sbrowser/authentication/Authenticator$Option;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/authentication/AuthenticatorImpl;->isRunning()Z

    move-result v0

    const-string v1, "AuthenticatorImpl"

    if-eqz v0, :cond_0

    const-string p0, "Authenticator is already running"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p1, Lcom/sec/android/app/sbrowser/authentication/Authenticator$Option;->type:Lcom/sec/android/app/sbrowser/authentication/Authenticator$Type;

    sget-object v2, Lcom/sec/android/app/sbrowser/authentication/Authenticator$Type;->AUTO:Lcom/sec/android/app/sbrowser/authentication/Authenticator$Type;

    if-ne v0, v2, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/authentication/AuthenticatorImpl;->selectAuthenticatorType()Lcom/sec/android/app/sbrowser/authentication/Authenticator$Type;

    move-result-object v0

    iput-object v0, p1, Lcom/sec/android/app/sbrowser/authentication/Authenticator$Option;->type:Lcom/sec/android/app/sbrowser/authentication/Authenticator$Type;

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/authentication/AuthenticatorImpl;->mAuthenticationContext:Lcom/sec/android/app/sbrowser/authentication/AuthenticationContext;

    invoke-virtual {v0, p1, p2}, Lcom/sec/android/app/sbrowser/authentication/AuthenticationContext;->setContext(Lcom/sec/android/app/sbrowser/authentication/Authenticator$Option;Lcom/sec/android/app/sbrowser/authentication/Authenticator$Callback;)V

    iget-object p1, p1, Lcom/sec/android/app/sbrowser/authentication/Authenticator$Option;->type:Lcom/sec/android/app/sbrowser/authentication/Authenticator$Type;

    sget-object p2, Lcom/sec/android/app/sbrowser/authentication/Authenticator$Type;->UNKNOWN:Lcom/sec/android/app/sbrowser/authentication/Authenticator$Type;

    if-ne p1, p2, :cond_2

    const-string p1, "Type is unknown"

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/authentication/AuthenticatorImpl;->handleCallback()V

    return-void

    :cond_2
    sget-object p2, Lcom/sec/android/app/sbrowser/authentication/Authenticator$Type;->PPP:Lcom/sec/android/app/sbrowser/authentication/Authenticator$Type;

    if-ne p1, p2, :cond_3

    invoke-static {}, Lcom/sec/android/app/sbrowser/authentication/SamsungPass3PAuthenticator;->authenticate()V

    return-void

    :cond_3
    invoke-static {}, Lcom/sec/terrace/TerraceHelper;->getInstance()Lcom/sec/terrace/TerraceHelper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/terrace/TerraceHelper;->getCurrentTerraceActivity()Lcom/sec/terrace/TerraceActivity;

    move-result-object p1

    if-nez p1, :cond_4

    return-void

    :cond_4
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1e

    if-lt p2, v0, :cond_6

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/utils/ImeUtil;->isKeyboardShowing(Landroid/app/Activity;)Z

    move-result p2

    if-eqz p2, :cond_6

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->isInMultiWindowMode(Landroid/app/Activity;)Z

    move-result p2

    if-eqz p2, :cond_5

    goto :goto_0

    :cond_5
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/authentication/AuthenticatorImpl;->mWindowInsetCallback:Lcom/sec/terrace/TerraceDeferredIMEWindowInsetApplicationCallback;

    invoke-virtual {p0}, Lcom/sec/terrace/TerraceDeferredIMEWindowInsetApplicationCallback;->attach()V

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/utils/ImeUtil;->hideKeyboardNonDeprecatedForBOS(Landroid/view/View;)Z

    return-void

    :cond_6
    :goto_0
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/authentication/AuthenticatorImpl;->startAuthentication()V

    return-void
.end method

.method public canUseFingerprint()Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/authentication/AuthenticatorImpl;->mAuthenticationDeviceStatus:Lcom/sec/android/app/sbrowser/authentication/AuthenticationDeviceStatus;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/authentication/AuthenticationDeviceStatus;->isFingerprintSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/authentication/AuthenticatorImpl;->mAuthenticationDeviceStatus:Lcom/sec/android/app/sbrowser/authentication/AuthenticationDeviceStatus;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/authentication/AuthenticationDeviceStatus;->isFingerprintRegistered()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public canUseFingerprintAndIris()Z
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/authentication/AuthenticatorImpl;->canUseFingerprint()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/authentication/AuthenticatorImpl;->canUseIris()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public canUseFingerprintOrIris()Z
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/authentication/AuthenticatorImpl;->canUseFingerprint()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/authentication/AuthenticatorImpl;->canUseIris()Z

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

.method public canUseIntelligentScan()Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/authentication/AuthenticatorImpl;->mAuthenticationDeviceStatus:Lcom/sec/android/app/sbrowser/authentication/AuthenticationDeviceStatus;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/authentication/AuthenticationDeviceStatus;->isIntelligentScanSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/authentication/AuthenticatorImpl;->mAuthenticationDeviceStatus:Lcom/sec/android/app/sbrowser/authentication/AuthenticationDeviceStatus;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/authentication/AuthenticationDeviceStatus;->isIntelligentScanRegistered()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public canUseIris()Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/authentication/AuthenticatorImpl;->mAuthenticationDeviceStatus:Lcom/sec/android/app/sbrowser/authentication/AuthenticationDeviceStatus;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/authentication/AuthenticationDeviceStatus;->isIrisSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/authentication/AuthenticatorImpl;->mAuthenticationDeviceStatus:Lcom/sec/android/app/sbrowser/authentication/AuthenticationDeviceStatus;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/authentication/AuthenticationDeviceStatus;->isIrisRegistered()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public enableSamsungPass()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/authentication/AuthenticatorImpl;->mAuthenticationContext:Lcom/sec/android/app/sbrowser/authentication/AuthenticationContext;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/authentication/AuthenticationContext;->getOption()Lcom/sec/android/app/sbrowser/authentication/Authenticator$Option;

    move-result-object p0

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/authentication/Authenticator$Option;->enableSamsungPass:Z

    return p0
.end method

.method public getNonce()[B
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/authentication/AuthenticatorImpl;->mAuthenticationContext:Lcom/sec/android/app/sbrowser/authentication/AuthenticationContext;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/authentication/AuthenticationContext;->getOption()Lcom/sec/android/app/sbrowser/authentication/Authenticator$Option;

    move-result-object p0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/authentication/Authenticator$Option;->nonce:[B

    return-object p0
.end method

.method public handleCallback()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/authentication/AuthenticatorImpl;->mAuthenticationContext:Lcom/sec/android/app/sbrowser/authentication/AuthenticationContext;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/authentication/AuthenticationContext;->handleCallback()V

    return-void
.end method

.method public hasDisabledBiometrics()Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/authentication/AuthenticatorImpl;->mAuthenticationDeviceStatus:Lcom/sec/android/app/sbrowser/authentication/AuthenticationDeviceStatus;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/authentication/AuthenticationDeviceStatus;->isFingerprintDisabled()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/authentication/AuthenticatorImpl;->mAuthenticationDeviceStatus:Lcom/sec/android/app/sbrowser/authentication/AuthenticationDeviceStatus;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/authentication/AuthenticationDeviceStatus;->isIrisDisabled()Z

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

.method public isBiometricsSupported()Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/authentication/AuthenticatorImpl;->mAuthenticationDeviceStatus:Lcom/sec/android/app/sbrowser/authentication/AuthenticationDeviceStatus;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/authentication/AuthenticationDeviceStatus;->isFingerprintSupported()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/authentication/AuthenticatorImpl;->mAuthenticationDeviceStatus:Lcom/sec/android/app/sbrowser/authentication/AuthenticationDeviceStatus;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/authentication/AuthenticationDeviceStatus;->isIrisSupported()Z

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

.method public isFingerprintSupported()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/authentication/AuthenticatorImpl;->mAuthenticationDeviceStatus:Lcom/sec/android/app/sbrowser/authentication/AuthenticationDeviceStatus;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/authentication/AuthenticationDeviceStatus;->isFingerprintSupported()Z

    move-result p0

    return p0
.end method

.method public isIrisSupported()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/authentication/AuthenticatorImpl;->mAuthenticationDeviceStatus:Lcom/sec/android/app/sbrowser/authentication/AuthenticationDeviceStatus;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/authentication/AuthenticationDeviceStatus;->isIrisSupported()Z

    move-result p0

    return p0
.end method

.method public isRunning()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/authentication/AuthenticatorImpl;->mAuthenticationContext:Lcom/sec/android/app/sbrowser/authentication/AuthenticationContext;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/authentication/AuthenticationContext;->isRunning()Z

    move-result p0

    return p0
.end method

.method public makePendingResult(Lcom/sec/android/app/sbrowser/authentication/Authenticator$Type;[B)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/authentication/AuthenticatorImpl;->mAuthenticationContext:Lcom/sec/android/app/sbrowser/authentication/AuthenticationContext;

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/authentication/AuthenticationContext;->makePendingResult(Lcom/sec/android/app/sbrowser/authentication/Authenticator$Type;[B)V

    return-void
.end method

.method public register(Lcom/sec/android/app/sbrowser/common/model/authentication/Registration$Callback;)V
    .locals 1

    invoke-static {}, Lcom/sec/android/app/sbrowser/authentication/Authenticator;->createOption()Lcom/sec/android/app/sbrowser/authentication/Authenticator$Option;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/sec/android/app/sbrowser/authentication/AuthenticatorImpl;->register(Lcom/sec/android/app/sbrowser/authentication/Authenticator$Option;Lcom/sec/android/app/sbrowser/common/model/authentication/Registration$Callback;)V

    return-void
.end method

.method public registerFingerprint(Lcom/sec/android/app/sbrowser/common/model/authentication/Registration$Callback;)V
    .locals 2

    new-instance v0, Lcom/sec/android/app/sbrowser/authentication/Authenticator$Option;

    sget-object v1, Lcom/sec/android/app/sbrowser/authentication/Authenticator$Type;->FINGERPRINT:Lcom/sec/android/app/sbrowser/authentication/Authenticator$Type;

    invoke-direct {v0, v1}, Lcom/sec/android/app/sbrowser/authentication/Authenticator$Option;-><init>(Lcom/sec/android/app/sbrowser/authentication/Authenticator$Type;)V

    invoke-direct {p0, v0, p1}, Lcom/sec/android/app/sbrowser/authentication/AuthenticatorImpl;->register(Lcom/sec/android/app/sbrowser/authentication/Authenticator$Option;Lcom/sec/android/app/sbrowser/common/model/authentication/Registration$Callback;)V

    return-void
.end method

.method public selectAuthenticatorType()Lcom/sec/android/app/sbrowser/authentication/Authenticator$Type;
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/authentication/AuthenticatorImpl;->canUseIntelligentScan()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/authentication/AuthenticatorImpl;->canUseFingerprint()Z

    move-result p0

    if-eqz p0, :cond_0

    sget-object p0, Lcom/sec/android/app/sbrowser/authentication/Authenticator$Type;->INTELLIGENT_SCAN_MULTI:Lcom/sec/android/app/sbrowser/authentication/Authenticator$Type;

    return-object p0

    :cond_0
    sget-object p0, Lcom/sec/android/app/sbrowser/authentication/Authenticator$Type;->INTELLIGENT_SCAN:Lcom/sec/android/app/sbrowser/authentication/Authenticator$Type;

    return-object p0

    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/authentication/AuthenticatorImpl;->canUseFingerprintAndIris()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object p0, Lcom/sec/android/app/sbrowser/authentication/Authenticator$Type;->BIOMETRICS:Lcom/sec/android/app/sbrowser/authentication/Authenticator$Type;

    return-object p0

    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/authentication/AuthenticatorImpl;->canUseIris()Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object p0, Lcom/sec/android/app/sbrowser/authentication/Authenticator$Type;->IRIS:Lcom/sec/android/app/sbrowser/authentication/Authenticator$Type;

    return-object p0

    :cond_3
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/authentication/AuthenticatorImpl;->canUseFingerprint()Z

    move-result p0

    if-eqz p0, :cond_4

    sget-object p0, Lcom/sec/android/app/sbrowser/authentication/Authenticator$Type;->FINGERPRINT:Lcom/sec/android/app/sbrowser/authentication/Authenticator$Type;

    return-object p0

    :cond_4
    sget-object p0, Lcom/sec/android/app/sbrowser/authentication/Authenticator$Type;->UNKNOWN:Lcom/sec/android/app/sbrowser/authentication/Authenticator$Type;

    return-object p0
.end method

.method public selectMoreSecureAuthenticatorType()Lcom/sec/android/app/sbrowser/authentication/Authenticator$Type;
    .locals 1

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/authentication/AuthenticatorImpl;->isIrisDisabled()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p0, Lcom/sec/android/app/sbrowser/authentication/Authenticator$Type;->IRIS:Lcom/sec/android/app/sbrowser/authentication/Authenticator$Type;

    return-object p0

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/authentication/AuthenticatorImpl;->isFingerprintDisabled()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object p0, Lcom/sec/android/app/sbrowser/authentication/Authenticator$Type;->FINGERPRINT:Lcom/sec/android/app/sbrowser/authentication/Authenticator$Type;

    return-object p0

    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/authentication/AuthenticatorImpl;->isIrisSupported()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object p0, Lcom/sec/android/app/sbrowser/authentication/Authenticator$Type;->IRIS:Lcom/sec/android/app/sbrowser/authentication/Authenticator$Type;

    return-object p0

    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/authentication/AuthenticatorImpl;->isFingerprintSupported()Z

    move-result p0

    if-eqz p0, :cond_3

    sget-object p0, Lcom/sec/android/app/sbrowser/authentication/Authenticator$Type;->FINGERPRINT:Lcom/sec/android/app/sbrowser/authentication/Authenticator$Type;

    return-object p0

    :cond_3
    sget-object p0, Lcom/sec/android/app/sbrowser/authentication/Authenticator$Type;->UNKNOWN:Lcom/sec/android/app/sbrowser/authentication/Authenticator$Type;

    return-object p0
.end method

.method public setActivity(Landroid/app/Activity;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/authentication/AuthenticatorImpl;->mActivity:Landroid/app/Activity;

    return-void
.end method
