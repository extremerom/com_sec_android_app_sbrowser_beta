.class public Lcom/sec/android/app/sbrowser/auth/ged/BiometricPromptAuthenticator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/auth/Authenticator;


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mAuthCancelSignal:Landroid/os/CancellationSignal;

.field private mListener:Lcom/sec/android/app/sbrowser/auth/AuthListener;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/auth/ged/BiometricPromptAuthenticator;->mActivity:Landroid/app/Activity;

    sget-object p1, Lcom/sec/android/app/sbrowser/auth/AuthListener;->EMPTY:Lcom/sec/android/app/sbrowser/auth/AuthListener;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/auth/ged/BiometricPromptAuthenticator;->mListener:Lcom/sec/android/app/sbrowser/auth/AuthListener;

    return-void
.end method

.method public static synthetic a(Lcom/sec/android/app/sbrowser/auth/ged/BiometricPromptAuthenticator;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/auth/ged/BiometricPromptAuthenticator;->lambda$startAuth$0(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static bridge synthetic b(Lcom/sec/android/app/sbrowser/auth/ged/BiometricPromptAuthenticator;)Lcom/sec/android/app/sbrowser/auth/AuthListener;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/auth/ged/BiometricPromptAuthenticator;->mListener:Lcom/sec/android/app/sbrowser/auth/AuthListener;

    return-object p0
.end method

.method public static bridge synthetic c(Lcom/sec/android/app/sbrowser/auth/ged/BiometricPromptAuthenticator;I)I
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/auth/ged/BiometricPromptAuthenticator;->toAuthError(I)I

    move-result p0

    return p0
.end method

.method private getNegativeButtonText()Ljava/lang/CharSequence;
    .locals 1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;->getInstance()Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;->isAuthNone()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f1402ac

    goto :goto_0

    :cond_0
    const v0, 0x7f140e16

    :goto_0
    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/auth/ged/BiometricPromptAuthenticator;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method private getText(I)Ljava/lang/CharSequence;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/auth/ged/BiometricPromptAuthenticator;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$startAuth$0(Landroid/content/DialogInterface;I)V
    .locals 0

    const-string p1, "BiometricPromptAuthenticator"

    const-string p2, "Use password button is clicked"

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/auth/ged/BiometricPromptAuthenticator;->mListener:Lcom/sec/android/app/sbrowser/auth/AuthListener;

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;->getInstance()Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;->isAuthNone()Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0x12e

    goto :goto_0

    :cond_0
    const/16 p1, 0x12f

    :goto_0
    const-string p2, ""

    invoke-interface {p0, p1, p2}, Lcom/sec/android/app/sbrowser/auth/AuthListener;->onAuthError(ILjava/lang/String;)V

    return-void
.end method

.method private toAuthError(I)I
    .locals 0

    const/4 p0, 0x1

    if-eq p1, p0, :cond_2

    const/4 p0, 0x5

    if-eq p1, p0, :cond_1

    const/4 p0, 0x7

    if-eq p1, p0, :cond_0

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const/16 p1, 0x12e

    goto :goto_0

    :cond_0
    const/16 p1, 0x12c

    goto :goto_0

    :cond_1
    const/16 p1, 0x12d

    goto :goto_0

    :cond_2
    :pswitch_1
    const/16 p1, 0x12f

    :goto_0
    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public cancelAuth()V
    .locals 2

    const-string v0, "BiometricPromptAuthenticator"

    const-string v1, "Cancel Authenticate"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/sec/android/app/sbrowser/auth/AuthListener;->EMPTY:Lcom/sec/android/app/sbrowser/auth/AuthListener;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/auth/ged/BiometricPromptAuthenticator;->mListener:Lcom/sec/android/app/sbrowser/auth/AuthListener;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/auth/ged/BiometricPromptAuthenticator;->mAuthCancelSignal:Landroid/os/CancellationSignal;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/CancellationSignal;->isCanceled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/auth/ged/BiometricPromptAuthenticator;->mAuthCancelSignal:Landroid/os/CancellationSignal;

    invoke-virtual {v0}, Landroid/os/CancellationSignal;->cancel()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/auth/ged/BiometricPromptAuthenticator;->mAuthCancelSignal:Landroid/os/CancellationSignal;

    return-void
.end method

.method public startAuth(Lcom/sec/android/app/sbrowser/auth/AuthParam;Lcom/sec/android/app/sbrowser/auth/AuthListener;)V
    .locals 3

    const-string p1, "BiometricPromptAuthenticator"

    const-string v0, "Start Authenticate"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/auth/ged/BiometricPromptAuthenticator;->mListener:Lcom/sec/android/app/sbrowser/auth/AuthListener;

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/auth/ged/BiometricPromptAuthenticator;->mActivity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object p1

    new-instance p2, Landroid/hardware/biometrics/BiometricPrompt$Builder;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/auth/ged/BiometricPromptAuthenticator;->mActivity:Landroid/app/Activity;

    invoke-direct {p2, v0}, Landroid/hardware/biometrics/BiometricPrompt$Builder;-><init>(Landroid/content/Context;)V

    const v0, 0x7f1400ef

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/auth/ged/BiometricPromptAuthenticator;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/hardware/biometrics/BiometricPrompt$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/hardware/biometrics/BiometricPrompt$Builder;

    move-result-object p2

    const v0, 0x7f140220

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/auth/ged/BiometricPromptAuthenticator;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/hardware/biometrics/BiometricPrompt$Builder;->setDescription(Ljava/lang/CharSequence;)Landroid/hardware/biometrics/BiometricPrompt$Builder;

    move-result-object p2

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/auth/ged/BiometricPromptAuthenticator;->getNegativeButtonText()Ljava/lang/CharSequence;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/sbrowser/appshortcut/b;

    const/4 v2, 0x1

    invoke-direct {v1, v2, p0}, Lcom/sec/android/app/sbrowser/appshortcut/b;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p2, v0, p1, v1}, Landroid/hardware/biometrics/BiometricPrompt$Builder;->setNegativeButton(Ljava/lang/CharSequence;Ljava/util/concurrent/Executor;Landroid/content/DialogInterface$OnClickListener;)Landroid/hardware/biometrics/BiometricPrompt$Builder;

    move-result-object p2

    invoke-virtual {p2}, Landroid/hardware/biometrics/BiometricPrompt$Builder;->build()Landroid/hardware/biometrics/BiometricPrompt;

    move-result-object p2

    new-instance v0, Landroid/os/CancellationSignal;

    invoke-direct {v0}, Landroid/os/CancellationSignal;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/auth/ged/BiometricPromptAuthenticator;->mAuthCancelSignal:Landroid/os/CancellationSignal;

    new-instance v1, Lcom/sec/android/app/sbrowser/auth/ged/BiometricPromptAuthenticator$1;

    invoke-direct {v1, p0}, Lcom/sec/android/app/sbrowser/auth/ged/BiometricPromptAuthenticator$1;-><init>(Lcom/sec/android/app/sbrowser/auth/ged/BiometricPromptAuthenticator;)V

    invoke-virtual {p2, v0, p1, v1}, Landroid/hardware/biometrics/BiometricPrompt;->authenticate(Landroid/os/CancellationSignal;Ljava/util/concurrent/Executor;Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;)V

    return-void
.end method
