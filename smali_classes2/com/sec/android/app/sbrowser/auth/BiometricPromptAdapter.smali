.class public Lcom/sec/android/app/sbrowser/auth/BiometricPromptAdapter;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mSecretModeManager:Lcom/sec/android/app/sbrowser/common/model/SecretModeManagerDelegate;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/sec/android/app/sbrowser/common/model/SecretModeManagerDelegate;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/auth/BiometricPromptAdapter;->mActivity:Landroid/app/Activity;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/auth/BiometricPromptAdapter;->mSecretModeManager:Lcom/sec/android/app/sbrowser/common/model/SecretModeManagerDelegate;

    return-void
.end method

.method public static synthetic a(Lcom/sec/android/app/sbrowser/auth/BiometricPromptAdapter;Lcom/sec/android/app/sbrowser/auth/AuthCallback;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/auth/BiometricPromptAdapter;->lambda$show$0(Lcom/sec/android/app/sbrowser/auth/AuthCallback;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static bridge synthetic b(Lcom/sec/android/app/sbrowser/auth/BiometricPromptAdapter;)Lcom/sec/android/app/sbrowser/common/model/SecretModeManagerDelegate;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/auth/BiometricPromptAdapter;->mSecretModeManager:Lcom/sec/android/app/sbrowser/common/model/SecretModeManagerDelegate;

    return-object p0
.end method

.method public static bridge synthetic c(Lcom/sec/android/app/sbrowser/auth/BiometricPromptAdapter;Lcom/sec/android/app/sbrowser/auth/AuthCallback;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/auth/BiometricPromptAdapter;->notifyAuthResult(Lcom/sec/android/app/sbrowser/auth/AuthCallback;Z)V

    return-void
.end method

.method private getType(I)I
    .locals 4

    and-int/lit8 p0, p1, 0x10

    const/16 v0, 0x10

    const-string v1, "BiometricPromptAdapter"

    const/4 v2, 0x1

    if-ne p0, v0, :cond_0

    :try_start_0
    sget-object p0, Lcom/sec/sbrowser/spl/wrapper/MajoBiometricPrompt;->SEM_TYPE_DEVICE_CUSTOM_SCAN:Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

    invoke-virtual {p0}, Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;->get()Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    goto :goto_1

    :catch_0
    move-exception p0

    goto :goto_0

    :cond_0
    and-int/lit8 p0, p1, 0x4

    const/4 v0, 0x4

    if-ne p0, v0, :cond_1

    sget-object p0, Lcom/sec/sbrowser/spl/wrapper/MajoBiometricPrompt;->SEM_TYPE_IRIS:Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

    invoke-virtual {p0}, Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;->get()Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    goto :goto_1

    :cond_1
    and-int/lit8 p0, p1, 0x2

    const/4 v0, 0x2

    if-ne p0, v0, :cond_2

    sget-object p0, Lcom/sec/sbrowser/spl/wrapper/MajoBiometricPrompt;->SEM_TYPE_FINGERPRINT:Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

    invoke-virtual {p0}, Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;->get()Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v2
    :try_end_0
    .catch Lcom/sec/sbrowser/spl/util/FallbackException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "getType() failed: "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_1
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "getType auth type : "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "getType converted type : "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v2
.end method

.method private synthetic lambda$show$0(Lcom/sec/android/app/sbrowser/auth/AuthCallback;Landroid/content/DialogInterface;I)V
    .locals 0

    const-string p2, "BiometricPromptAdapter"

    const-string p3, "Cancel button is clicked"

    invoke-static {p2, p3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p2, 0x0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/auth/BiometricPromptAdapter;->notifyAuthResult(Lcom/sec/android/app/sbrowser/auth/AuthCallback;Z)V

    return-void
.end method

.method private notifyAuthResult(Lcom/sec/android/app/sbrowser/auth/AuthCallback;Z)V
    .locals 0

    if-nez p1, :cond_0

    const-string p0, "BiometricPromptAdapter"

    const-string p1, "notifyAuthResult callback is null"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-interface {p1, p2}, Lcom/sec/android/app/sbrowser/auth/AuthCallback;->onAuthResult(Z)V

    return-void
.end method


# virtual methods
.method public show(ILcom/sec/android/app/sbrowser/auth/AuthCallback;)V
    .locals 5

    :try_start_0
    new-instance v0, Landroid/hardware/biometrics/BiometricPrompt$Builder;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/auth/BiometricPromptAdapter;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/hardware/biometrics/BiometricPrompt$Builder;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/auth/BiometricPromptAdapter;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f1400ef

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/hardware/biometrics/BiometricPrompt$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/hardware/biometrics/BiometricPrompt$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/auth/BiometricPromptAdapter;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f140220

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/hardware/biometrics/BiometricPrompt$Builder;->setDescription(Ljava/lang/CharSequence;)Landroid/hardware/biometrics/BiometricPrompt$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/auth/BiometricPromptAdapter;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f1402ac

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/auth/BiometricPromptAdapter;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v2

    new-instance v3, Lcom/sec/android/app/sbrowser/auth/f;

    const/4 v4, 0x1

    invoke-direct {v3, v4, p0, p2}, Lcom/sec/android/app/sbrowser/auth/f;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/biometrics/BiometricPrompt$Builder;->setNegativeButton(Ljava/lang/CharSequence;Ljava/util/concurrent/Executor;Landroid/content/DialogInterface$OnClickListener;)Landroid/hardware/biometrics/BiometricPrompt$Builder;

    move-result-object v0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/auth/BiometricPromptAdapter;->getType(I)I

    move-result p1

    invoke-static {v0, p1}, Lcom/sec/sbrowser/spl/wrapper/MajoBiometricPrompt;->semSetBiometricType(Landroid/hardware/biometrics/BiometricPrompt$Builder;I)Landroid/hardware/biometrics/BiometricPrompt$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/hardware/biometrics/BiometricPrompt$Builder;->build()Landroid/hardware/biometrics/BiometricPrompt;

    move-result-object p1

    new-instance v0, Landroid/os/CancellationSignal;

    invoke-direct {v0}, Landroid/os/CancellationSignal;-><init>()V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/auth/BiometricPromptAdapter;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v1

    new-instance v2, Lcom/sec/android/app/sbrowser/auth/BiometricPromptAdapter$1;

    invoke-direct {v2, p0, p2}, Lcom/sec/android/app/sbrowser/auth/BiometricPromptAdapter$1;-><init>(Lcom/sec/android/app/sbrowser/auth/BiometricPromptAdapter;Lcom/sec/android/app/sbrowser/auth/AuthCallback;)V

    invoke-virtual {p1, v0, v1, v2}, Landroid/hardware/biometrics/BiometricPrompt;->authenticate(Landroid/os/CancellationSignal;Ljava/util/concurrent/Executor;Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;)V
    :try_end_0
    .catch Lcom/sec/sbrowser/spl/util/FallbackException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p1, "BiometricPromptAdapter"

    const-string v0, "BiometricPromptBuilder reflect failed"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    invoke-direct {p0, p2, p1}, Lcom/sec/android/app/sbrowser/auth/BiometricPromptAdapter;->notifyAuthResult(Lcom/sec/android/app/sbrowser/auth/AuthCallback;Z)V

    :goto_0
    return-void
.end method
