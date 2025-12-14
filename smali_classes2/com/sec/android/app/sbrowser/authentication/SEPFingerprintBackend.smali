.class Lcom/sec/android/app/sbrowser/authentication/SEPFingerprintBackend;
.super Lcom/sec/android/app/sbrowser/authentication/Backend;
.source "SourceFile"


# instance fields
.field private mAuthenticationCallback:Lcom/sec/sbrowser/spl/wrapper/SemFingerprintManager$SemAuthenticationCallback;

.field private mCancelSignal:Landroid/os/CancellationSignal;

.field private mManager:Lcom/sec/sbrowser/spl/wrapper/SemFingerprintManager;

.field private mScheduler:Landroid/os/Handler;

.field private mTimeoutTimer:Landroid/os/CountDownTimer;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 8
    .param p1    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/authentication/Backend;-><init>()V

    new-instance v0, Landroid/os/Handler;

    new-instance v1, Lcom/sec/android/app/sbrowser/authentication/SEPFingerprintBackend$1;

    invoke-direct {v1, p0}, Lcom/sec/android/app/sbrowser/authentication/SEPFingerprintBackend$1;-><init>(Lcom/sec/android/app/sbrowser/authentication/SEPFingerprintBackend;)V

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/authentication/SEPFingerprintBackend;->mScheduler:Landroid/os/Handler;

    new-instance v0, Lcom/sec/android/app/sbrowser/authentication/SEPFingerprintBackend$2;

    const-wide/32 v4, 0xea60

    const-wide/32 v6, 0xea60

    move-object v2, v0

    move-object v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/sec/android/app/sbrowser/authentication/SEPFingerprintBackend$2;-><init>(Lcom/sec/android/app/sbrowser/authentication/SEPFingerprintBackend;JJ)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/authentication/SEPFingerprintBackend;->mTimeoutTimer:Landroid/os/CountDownTimer;

    new-instance v0, Lcom/sec/android/app/sbrowser/authentication/SEPFingerprintBackend$3;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/authentication/SEPFingerprintBackend$3;-><init>(Lcom/sec/android/app/sbrowser/authentication/SEPFingerprintBackend;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/authentication/SEPFingerprintBackend;->mAuthenticationCallback:Lcom/sec/sbrowser/spl/wrapper/SemFingerprintManager$SemAuthenticationCallback;

    :try_start_0
    invoke-static {p1}, Lcom/sec/sbrowser/spl/wrapper/SemFingerprintManager;->createInstance(Landroid/content/Context;)Lcom/sec/sbrowser/spl/wrapper/SemFingerprintManager;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/authentication/SEPFingerprintBackend;->mManager:Lcom/sec/sbrowser/spl/wrapper/SemFingerprintManager;
    :try_end_0
    .catch Lcom/sec/sbrowser/spl/util/FallbackException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "SEPFingerprintBackend():"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "SEPFingerprintBackend"

    invoke-static {p0, p1, v0}, Landroidx/recyclerview/widget/P;->B(Lcom/sec/sbrowser/spl/util/FallbackException;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public static bridge synthetic a(Lcom/sec/android/app/sbrowser/authentication/SEPFingerprintBackend;)Landroid/os/CancellationSignal;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/authentication/SEPFingerprintBackend;->mCancelSignal:Landroid/os/CancellationSignal;

    return-object p0
.end method

.method public static bridge synthetic b(Lcom/sec/android/app/sbrowser/authentication/SEPFingerprintBackend;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/authentication/SEPFingerprintBackend;->triggerResetMessageEvent()V

    return-void
.end method

.method private triggerResetMessageEvent()V
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/authentication/SEPFingerprintBackend;->mScheduler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/authentication/SEPFingerprintBackend;->mScheduler:Landroid/os/Handler;

    const-wide/16 v2, 0x640

    invoke-virtual {p0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method


# virtual methods
.method public authenticate()V
    .locals 8

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/authentication/SEPFingerprintBackend;->mManager:Lcom/sec/sbrowser/spl/wrapper/SemFingerprintManager;

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Landroid/os/CancellationSignal;

    invoke-direct {v0}, Landroid/os/CancellationSignal;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/authentication/SEPFingerprintBackend;->mCancelSignal:Landroid/os/CancellationSignal;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/authentication/SEPFingerprintBackend;->mTimeoutTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/authentication/SEPFingerprintBackend;->mTimeoutTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    :try_start_0
    invoke-static {}, Lcom/sec/sbrowser/spl/wrapper/MajoUserHandle;->myUserId()I

    move-result v6

    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DesktopModeUtils;->isDesktopMode()Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/sec/sbrowser/spl/wrapper/SemFingerprintManager;->EXTRA_KEY_PRIVILEGED_FLAG:Lcom/sec/sbrowser/spl/util/ReflectField$S$StaticFinal;

    invoke-virtual {v0}, Lcom/sec/sbrowser/spl/util/ReflectField$S$StaticFinal;->get()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/sec/sbrowser/spl/wrapper/SemFingerprintManager;->PRIVILEGED_FLAG_HIDE_AUTHENTICATION_GUIDE_LAYER:Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

    invoke-virtual {v1}, Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;->get()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v7, v0, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_1
    sget-object v0, Lcom/sec/sbrowser/spl/wrapper/SemFingerprintManager;->EXTRA_KEY_PRIVILEGED_FLAG:Lcom/sec/sbrowser/spl/util/ReflectField$S$StaticFinal;

    invoke-virtual {v0}, Lcom/sec/sbrowser/spl/util/ReflectField$S$StaticFinal;->get()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/sec/sbrowser/spl/wrapper/SemFingerprintManager;->PRIVILEGED_FLAG_ALLOW_BACKGROUND:Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

    invoke-virtual {v1}, Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;->get()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v7, v0, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    :goto_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1f

    if-le v0, v1, :cond_2

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;->isDarkModeEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/sec/terrace/TerraceApplicationStatus;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0609c0

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0609bf

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/sec/sbrowser/spl/wrapper/SemFingerprintManager;->EXTRA_KEY_ICON_COLOR:Lcom/sec/sbrowser/spl/util/ReflectField$S$StaticFinal;

    invoke-virtual {v2}, Lcom/sec/sbrowser/spl/util/ReflectField$S$StaticFinal;->get()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/sec/sbrowser/spl/wrapper/SemFingerprintManager;->EXTRA_KEY_ICON_CONTAINER_COLOR:Lcom/sec/sbrowser/spl/util/ReflectField$S$StaticFinal;

    invoke-virtual {v1}, Lcom/sec/sbrowser/spl/util/ReflectField$S$StaticFinal;->get()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/authentication/SEPFingerprintBackend;->mManager:Lcom/sec/sbrowser/spl/wrapper/SemFingerprintManager;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/authentication/SEPFingerprintBackend;->mCancelSignal:Landroid/os/CancellationSignal;

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/authentication/SEPFingerprintBackend;->mAuthenticationCallback:Lcom/sec/sbrowser/spl/wrapper/SemFingerprintManager$SemAuthenticationCallback;

    const/4 v5, 0x0

    const/4 v2, 0x0

    invoke-virtual/range {v1 .. v7}, Lcom/sec/sbrowser/spl/wrapper/SemFingerprintManager;->authenticate(Lcom/sec/sbrowser/spl/wrapper/SemFingerprintManager$SemCryptoObject;Landroid/os/CancellationSignal;Lcom/sec/sbrowser/spl/wrapper/SemFingerprintManager$SemAuthenticationCallback;Landroid/os/Handler;ILandroid/os/Bundle;)V
    :try_end_0
    .catch Lcom/sec/sbrowser/spl/util/FallbackException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "authenticate():"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "SEPFingerprintBackend"

    invoke-static {p0, v0, v1}, Landroidx/recyclerview/widget/P;->B(Lcom/sec/sbrowser/spl/util/FallbackException;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :goto_2
    return-void
.end method

.method public cancelAuthentication()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/authentication/SEPFingerprintBackend;->mCancelSignal:Landroid/os/CancellationSignal;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/CancellationSignal;->cancel()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/authentication/SEPFingerprintBackend;->mCancelSignal:Landroid/os/CancellationSignal;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/authentication/SEPFingerprintBackend;->mTimeoutTimer:Landroid/os/CountDownTimer;

    invoke-virtual {p0}, Landroid/os/CountDownTimer;->cancel()V

    :cond_0
    return-void
.end method
