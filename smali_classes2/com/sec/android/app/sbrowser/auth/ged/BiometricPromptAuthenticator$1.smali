.class Lcom/sec/android/app/sbrowser/auth/ged/BiometricPromptAuthenticator$1;
.super Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/auth/ged/BiometricPromptAuthenticator;->startAuth(Lcom/sec/android/app/sbrowser/auth/AuthParam;Lcom/sec/android/app/sbrowser/auth/AuthListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/auth/ged/BiometricPromptAuthenticator;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/auth/ged/BiometricPromptAuthenticator;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/auth/ged/BiometricPromptAuthenticator$1;->this$0:Lcom/sec/android/app/sbrowser/auth/ged/BiometricPromptAuthenticator;

    invoke-direct {p0}, Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAuthenticationError(ILjava/lang/CharSequence;)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onAuthenticationError errorCode:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BiometricPromptAuthenticator"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "onAuthenticationError errorString:"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/auth/ged/BiometricPromptAuthenticator$1;->this$0:Lcom/sec/android/app/sbrowser/auth/ged/BiometricPromptAuthenticator;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/auth/ged/BiometricPromptAuthenticator;->b(Lcom/sec/android/app/sbrowser/auth/ged/BiometricPromptAuthenticator;)Lcom/sec/android/app/sbrowser/auth/AuthListener;

    move-result-object v0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/auth/ged/BiometricPromptAuthenticator$1;->this$0:Lcom/sec/android/app/sbrowser/auth/ged/BiometricPromptAuthenticator;

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/auth/ged/BiometricPromptAuthenticator;->c(Lcom/sec/android/app/sbrowser/auth/ged/BiometricPromptAuthenticator;I)I

    move-result p0

    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string p1, ""

    :goto_0
    invoke-interface {v0, p0, p1}, Lcom/sec/android/app/sbrowser/auth/AuthListener;->onAuthError(ILjava/lang/String;)V

    return-void
.end method

.method public onAuthenticationFailed()V
    .locals 2

    const-string v0, "BiometricPromptAuthenticator"

    const-string v1, "onAuthenticationFailed"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/auth/ged/BiometricPromptAuthenticator$1;->this$0:Lcom/sec/android/app/sbrowser/auth/ged/BiometricPromptAuthenticator;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/auth/ged/BiometricPromptAuthenticator;->b(Lcom/sec/android/app/sbrowser/auth/ged/BiometricPromptAuthenticator;)Lcom/sec/android/app/sbrowser/auth/AuthListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/auth/AuthListener;->onAuthFail()V

    return-void
.end method

.method public onAuthenticationHelp(ILjava/lang/CharSequence;)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onAuthenticationHelp helpCode:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BiometricPromptAuthenticator"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "onAuthenticationHelp helpString:"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/auth/ged/BiometricPromptAuthenticator$1;->this$0:Lcom/sec/android/app/sbrowser/auth/ged/BiometricPromptAuthenticator;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/auth/ged/BiometricPromptAuthenticator;->b(Lcom/sec/android/app/sbrowser/auth/ged/BiometricPromptAuthenticator;)Lcom/sec/android/app/sbrowser/auth/AuthListener;

    move-result-object p0

    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_0
    const-string p2, ""

    :goto_0
    invoke-interface {p0, p1, p2}, Lcom/sec/android/app/sbrowser/auth/AuthListener;->onAuthError(ILjava/lang/String;)V

    return-void
.end method

.method public onAuthenticationSucceeded(Landroid/hardware/biometrics/BiometricPrompt$AuthenticationResult;)V
    .locals 1

    const-string p1, "BiometricPromptAuthenticator"

    const-string v0, "onAuthenticationSucceeded"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/auth/ged/BiometricPromptAuthenticator$1;->this$0:Lcom/sec/android/app/sbrowser/auth/ged/BiometricPromptAuthenticator;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/auth/ged/BiometricPromptAuthenticator;->b(Lcom/sec/android/app/sbrowser/auth/ged/BiometricPromptAuthenticator;)Lcom/sec/android/app/sbrowser/auth/AuthListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/auth/AuthListener;->onAuthSuccess()V

    return-void
.end method
