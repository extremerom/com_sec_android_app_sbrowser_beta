.class Lcom/sec/android/app/sbrowser/auth/fingerprint/DeprecatedFingerprintAuthenticator$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/sdk/pass/SpassFingerprint$IdentifyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/auth/fingerprint/DeprecatedFingerprintAuthenticator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/auth/fingerprint/DeprecatedFingerprintAuthenticator;


# virtual methods
.method public onCompleted()V
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/auth/fingerprint/DeprecatedFingerprintAuthenticator$1;->this$0:Lcom/sec/android/app/sbrowser/auth/fingerprint/DeprecatedFingerprintAuthenticator;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/auth/fingerprint/DeprecatedFingerprintAuthenticator;->a(Lcom/sec/android/app/sbrowser/auth/fingerprint/DeprecatedFingerprintAuthenticator;)J

    move-result-wide v0

    const-wide/16 v2, 0x10

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/auth/fingerprint/DeprecatedFingerprintAuthenticator$1;->this$0:Lcom/sec/android/app/sbrowser/auth/fingerprint/DeprecatedFingerprintAuthenticator;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/auth/fingerprint/DeprecatedFingerprintAuthenticator;->a(Lcom/sec/android/app/sbrowser/auth/fingerprint/DeprecatedFingerprintAuthenticator;)J

    move-result-wide v0

    const-wide/16 v2, 0xc

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/auth/fingerprint/DeprecatedFingerprintAuthenticator$1;->this$0:Lcom/sec/android/app/sbrowser/auth/fingerprint/DeprecatedFingerprintAuthenticator;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/auth/fingerprint/DeprecatedFingerprintAuthenticator;->b(Lcom/sec/android/app/sbrowser/auth/fingerprint/DeprecatedFingerprintAuthenticator;)Lcom/sec/android/app/sbrowser/auth/AuthListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/auth/AuthListener;->onAuthRetry()V

    :cond_1
    return-void
.end method

.method public onFinished(I)V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/auth/fingerprint/DeprecatedFingerprintAuthenticator$1;->this$0:Lcom/sec/android/app/sbrowser/auth/fingerprint/DeprecatedFingerprintAuthenticator;

    int-to-long v1, p1

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/sbrowser/auth/fingerprint/DeprecatedFingerprintAuthenticator;->e(Lcom/sec/android/app/sbrowser/auth/fingerprint/DeprecatedFingerprintAuthenticator;J)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/auth/fingerprint/DeprecatedFingerprintAuthenticator$1;->this$0:Lcom/sec/android/app/sbrowser/auth/fingerprint/DeprecatedFingerprintAuthenticator;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/auth/fingerprint/DeprecatedFingerprintAuthenticator;->d(Lcom/sec/android/app/sbrowser/auth/fingerprint/DeprecatedFingerprintAuthenticator;)Lcom/samsung/android/sdk/pass/SpassFingerprint;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "DeprecatedFingerprintAuthenticator"

    if-eqz p1, :cond_5

    const/4 v1, 0x4

    if-eq p1, v1, :cond_4

    const/16 v1, 0x8

    if-eq p1, v1, :cond_3

    const/16 v1, 0xc

    if-eq p1, v1, :cond_2

    const/16 v1, 0x10

    if-eq p1, v1, :cond_1

    const-string p0, "Authentification status : "

    invoke-static {p1, p0, v0}, Landroidx/recyclerview/widget/P;->i(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string p1, "Authentication auth failed"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/auth/fingerprint/DeprecatedFingerprintAuthenticator$1;->this$0:Lcom/sec/android/app/sbrowser/auth/fingerprint/DeprecatedFingerprintAuthenticator;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/auth/fingerprint/DeprecatedFingerprintAuthenticator;->c(Lcom/sec/android/app/sbrowser/auth/fingerprint/DeprecatedFingerprintAuthenticator;)Lcom/sec/android/app/sbrowser/auth/LockModel;

    move-result-object p1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/auth/fingerprint/DeprecatedFingerprintAuthenticator$1;->this$0:Lcom/sec/android/app/sbrowser/auth/fingerprint/DeprecatedFingerprintAuthenticator;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/auth/fingerprint/DeprecatedFingerprintAuthenticator;->b(Lcom/sec/android/app/sbrowser/auth/fingerprint/DeprecatedFingerprintAuthenticator;)Lcom/sec/android/app/sbrowser/auth/AuthListener;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/sec/android/app/sbrowser/auth/LockModel;->increaseIncorrectAttempts(Lcom/sec/android/app/sbrowser/auth/AuthListener;)V

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/auth/fingerprint/DeprecatedFingerprintAuthenticator$1;->this$0:Lcom/sec/android/app/sbrowser/auth/fingerprint/DeprecatedFingerprintAuthenticator;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/auth/fingerprint/DeprecatedFingerprintAuthenticator;->b(Lcom/sec/android/app/sbrowser/auth/fingerprint/DeprecatedFingerprintAuthenticator;)Lcom/sec/android/app/sbrowser/auth/AuthListener;

    move-result-object p1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/auth/fingerprint/DeprecatedFingerprintAuthenticator$1;->this$0:Lcom/sec/android/app/sbrowser/auth/fingerprint/DeprecatedFingerprintAuthenticator;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/auth/fingerprint/DeprecatedFingerprintAuthenticator;->f(Lcom/sec/android/app/sbrowser/auth/fingerprint/DeprecatedFingerprintAuthenticator;)Ljava/lang/String;

    move-result-object p0

    const/16 v0, 0x65

    invoke-interface {p1, v0, p0}, Lcom/sec/android/app/sbrowser/auth/AuthListener;->onAuthError(ILjava/lang/String;)V

    goto :goto_0

    :cond_3
    const-string p1, "Authentication user cancelled."

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/auth/fingerprint/DeprecatedFingerprintAuthenticator$1;->this$0:Lcom/sec/android/app/sbrowser/auth/fingerprint/DeprecatedFingerprintAuthenticator;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/auth/fingerprint/DeprecatedFingerprintAuthenticator;->b(Lcom/sec/android/app/sbrowser/auth/fingerprint/DeprecatedFingerprintAuthenticator;)Lcom/sec/android/app/sbrowser/auth/AuthListener;

    move-result-object p0

    const/16 p1, 0x68

    const-string v0, ""

    invoke-interface {p0, p1, v0}, Lcom/sec/android/app/sbrowser/auth/AuthListener;->onAuthError(ILjava/lang/String;)V

    goto :goto_0

    :cond_4
    const-string p1, "Authentication time out"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/auth/fingerprint/DeprecatedFingerprintAuthenticator$1;->this$0:Lcom/sec/android/app/sbrowser/auth/fingerprint/DeprecatedFingerprintAuthenticator;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/auth/fingerprint/DeprecatedFingerprintAuthenticator;->b(Lcom/sec/android/app/sbrowser/auth/fingerprint/DeprecatedFingerprintAuthenticator;)Lcom/sec/android/app/sbrowser/auth/AuthListener;

    move-result-object p1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/auth/fingerprint/DeprecatedFingerprintAuthenticator$1;->this$0:Lcom/sec/android/app/sbrowser/auth/fingerprint/DeprecatedFingerprintAuthenticator;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/auth/fingerprint/DeprecatedFingerprintAuthenticator;->f(Lcom/sec/android/app/sbrowser/auth/fingerprint/DeprecatedFingerprintAuthenticator;)Ljava/lang/String;

    move-result-object p0

    const/16 v0, 0x66

    invoke-interface {p1, v0, p0}, Lcom/sec/android/app/sbrowser/auth/AuthListener;->onAuthError(ILjava/lang/String;)V

    goto :goto_0

    :cond_5
    const-string p1, "Authentication Success"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/auth/fingerprint/DeprecatedFingerprintAuthenticator$1;->this$0:Lcom/sec/android/app/sbrowser/auth/fingerprint/DeprecatedFingerprintAuthenticator;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/auth/fingerprint/DeprecatedFingerprintAuthenticator;->c(Lcom/sec/android/app/sbrowser/auth/fingerprint/DeprecatedFingerprintAuthenticator;)Lcom/sec/android/app/sbrowser/auth/LockModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/auth/LockModel;->resetIncorrectAttempts()V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/auth/fingerprint/DeprecatedFingerprintAuthenticator$1;->this$0:Lcom/sec/android/app/sbrowser/auth/fingerprint/DeprecatedFingerprintAuthenticator;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/auth/fingerprint/DeprecatedFingerprintAuthenticator;->b(Lcom/sec/android/app/sbrowser/auth/fingerprint/DeprecatedFingerprintAuthenticator;)Lcom/sec/android/app/sbrowser/auth/AuthListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/auth/AuthListener;->onAuthSuccess()V

    :goto_0
    return-void
.end method

.method public onReady()V
    .locals 0

    return-void
.end method

.method public onStarted()V
    .locals 0

    return-void
.end method
