.class public Lcom/sec/android/app/sbrowser/authentication/SamsungPass3PAuthenticator;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static bridge synthetic a()V
    .locals 0

    invoke-static {}, Lcom/sec/android/app/sbrowser/authentication/SamsungPass3PAuthenticator;->sendResult()V

    return-void
.end method

.method public static authenticate()V
    .locals 4

    invoke-static {}, Lcom/sec/terrace/TerraceApplicationStatus;->getLastTrackedFocusedActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Landroid/hardware/biometrics/BiometricPrompt$Builder;

    invoke-direct {v1, v0}, Landroid/hardware/biometrics/BiometricPrompt$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f1407c8

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/hardware/biometrics/BiometricPrompt$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/hardware/biometrics/BiometricPrompt$Builder;

    move-result-object v1

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f1410b5

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/hardware/biometrics/BiometricPrompt$Builder;->setSubtitle(Ljava/lang/CharSequence;)Landroid/hardware/biometrics/BiometricPrompt$Builder;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/sdk/aisuggestion/helper/a;->i(Landroid/hardware/biometrics/BiometricPrompt$Builder;)Landroid/hardware/biometrics/BiometricPrompt$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/biometrics/BiometricPrompt$Builder;->build()Landroid/hardware/biometrics/BiometricPrompt;

    move-result-object v1

    new-instance v2, Landroid/os/CancellationSignal;

    invoke-direct {v2}, Landroid/os/CancellationSignal;-><init>()V

    new-instance v3, Lcom/sec/android/app/sbrowser/authentication/SamsungPass3PAuthenticator$1;

    invoke-direct {v3}, Lcom/sec/android/app/sbrowser/authentication/SamsungPass3PAuthenticator$1;-><init>()V

    invoke-virtual {v0}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    invoke-virtual {v1, v2, v0, v3}, Landroid/hardware/biometrics/BiometricPrompt;->authenticate(Landroid/os/CancellationSignal;Ljava/util/concurrent/Executor;Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;)V

    return-void
.end method

.method private static sendResult()V
    .locals 1

    invoke-static {}, Lcom/sec/android/app/sbrowser/authentication/Authenticator;->get()Lcom/sec/android/app/sbrowser/authentication/Authenticator;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/authentication/Authenticator;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/authentication/Authenticator;->get()Lcom/sec/android/app/sbrowser/authentication/Authenticator;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/authentication/Authenticator;->handleCallback()V

    return-void
.end method
