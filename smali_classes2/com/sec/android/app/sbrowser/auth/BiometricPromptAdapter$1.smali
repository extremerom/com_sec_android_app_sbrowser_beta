.class Lcom/sec/android/app/sbrowser/auth/BiometricPromptAdapter$1;
.super Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/auth/BiometricPromptAdapter;->show(ILcom/sec/android/app/sbrowser/auth/AuthCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/auth/BiometricPromptAdapter;

.field final synthetic val$callback:Lcom/sec/android/app/sbrowser/auth/AuthCallback;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/auth/BiometricPromptAdapter;Lcom/sec/android/app/sbrowser/auth/AuthCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/auth/BiometricPromptAdapter$1;->this$0:Lcom/sec/android/app/sbrowser/auth/BiometricPromptAdapter;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/auth/BiometricPromptAdapter$1;->val$callback:Lcom/sec/android/app/sbrowser/auth/AuthCallback;

    invoke-direct {p0}, Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAuthenticationError(ILjava/lang/CharSequence;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onAuthenticationError errorCode:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "BiometricPromptAdapter"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "onAuthenticationError errorString:"

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/auth/BiometricPromptAdapter$1;->this$0:Lcom/sec/android/app/sbrowser/auth/BiometricPromptAdapter;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/auth/BiometricPromptAdapter$1;->val$callback:Lcom/sec/android/app/sbrowser/auth/AuthCallback;

    const/4 p2, 0x0

    invoke-static {p1, p0, p2}, Lcom/sec/android/app/sbrowser/auth/BiometricPromptAdapter;->c(Lcom/sec/android/app/sbrowser/auth/BiometricPromptAdapter;Lcom/sec/android/app/sbrowser/auth/AuthCallback;Z)V

    return-void
.end method

.method public onAuthenticationFailed()V
    .locals 2

    const-string v0, "BiometricPromptAdapter"

    const-string v1, "onAuthenticationFailed"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/auth/BiometricPromptAdapter$1;->this$0:Lcom/sec/android/app/sbrowser/auth/BiometricPromptAdapter;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/auth/BiometricPromptAdapter$1;->val$callback:Lcom/sec/android/app/sbrowser/auth/AuthCallback;

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Lcom/sec/android/app/sbrowser/auth/BiometricPromptAdapter;->c(Lcom/sec/android/app/sbrowser/auth/BiometricPromptAdapter;Lcom/sec/android/app/sbrowser/auth/AuthCallback;Z)V

    return-void
.end method

.method public onAuthenticationHelp(ILjava/lang/CharSequence;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onAuthenticationHelp helpCode:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "BiometricPromptAdapter"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "onAuthenticationHelp helpString:"

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/auth/BiometricPromptAdapter$1;->this$0:Lcom/sec/android/app/sbrowser/auth/BiometricPromptAdapter;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/auth/BiometricPromptAdapter$1;->val$callback:Lcom/sec/android/app/sbrowser/auth/AuthCallback;

    const/4 p2, 0x0

    invoke-static {p1, p0, p2}, Lcom/sec/android/app/sbrowser/auth/BiometricPromptAdapter;->c(Lcom/sec/android/app/sbrowser/auth/BiometricPromptAdapter;Lcom/sec/android/app/sbrowser/auth/AuthCallback;Z)V

    return-void
.end method

.method public onAuthenticationSucceeded(Landroid/hardware/biometrics/BiometricPrompt$AuthenticationResult;)V
    .locals 2

    const-string p1, "BiometricPromptAdapter"

    const-string v0, "onAuthenticationSucceeded"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/auth/BiometricPromptAdapter$1;->this$0:Lcom/sec/android/app/sbrowser/auth/BiometricPromptAdapter;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/auth/BiometricPromptAdapter$1;->val$callback:Lcom/sec/android/app/sbrowser/auth/AuthCallback;

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Lcom/sec/android/app/sbrowser/auth/BiometricPromptAdapter;->c(Lcom/sec/android/app/sbrowser/auth/BiometricPromptAdapter;Lcom/sec/android/app/sbrowser/auth/AuthCallback;Z)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/auth/BiometricPromptAdapter$1;->this$0:Lcom/sec/android/app/sbrowser/auth/BiometricPromptAdapter;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/auth/BiometricPromptAdapter;->b(Lcom/sec/android/app/sbrowser/auth/BiometricPromptAdapter;)Lcom/sec/android/app/sbrowser/common/model/SecretModeManagerDelegate;

    move-result-object p0

    const/4 p1, 0x0

    invoke-interface {p0, v1, p1, p1}, Lcom/sec/android/app/sbrowser/common/model/SecretModeManagerDelegate;->setSecretModeEnabled(ZLandroid/os/Bundle;Ljava/lang/Runnable;)V

    return-void
.end method
