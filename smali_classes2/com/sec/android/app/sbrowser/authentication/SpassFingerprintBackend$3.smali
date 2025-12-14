.class Lcom/sec/android/app/sbrowser/authentication/SpassFingerprintBackend$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/sdk/pass/SpassFingerprint$IdentifyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/authentication/SpassFingerprintBackend;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/authentication/SpassFingerprintBackend;


# virtual methods
.method public onCompleted()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/authentication/SpassFingerprintBackend$3;->this$0:Lcom/sec/android/app/sbrowser/authentication/SpassFingerprintBackend;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/authentication/SpassFingerprintBackend;->a(Lcom/sec/android/app/sbrowser/authentication/SpassFingerprintBackend;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/authentication/SpassFingerprintBackend$3;->this$0:Lcom/sec/android/app/sbrowser/authentication/SpassFingerprintBackend;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/authentication/SpassFingerprintBackend;->e(Lcom/sec/android/app/sbrowser/authentication/SpassFingerprintBackend;)V

    :cond_0
    return-void
.end method

.method public onFinished(I)V
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    const/16 v1, 0x8

    if-eq p1, v1, :cond_1

    const/16 v1, 0xc

    if-eq p1, v1, :cond_0

    const/16 v1, 0x64

    if-eq p1, v1, :cond_2

    goto :goto_0

    :cond_0
    const/16 v1, 0x66

    :goto_0
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/authentication/SpassFingerprintBackend$3;->this$0:Lcom/sec/android/app/sbrowser/authentication/SpassFingerprintBackend;

    iget-object v0, p1, Lcom/sec/android/app/sbrowser/authentication/Backend;->mListener:Lcom/sec/android/app/sbrowser/authentication/AuthenticationListener;

    new-instance v2, Lcom/sec/android/app/sbrowser/authentication/AuthenticationFailedReason;

    invoke-direct {v2, v1}, Lcom/sec/android/app/sbrowser/authentication/AuthenticationFailedReason;-><init>(I)V

    invoke-interface {v0, v2}, Lcom/sec/android/app/sbrowser/authentication/AuthenticationListener;->onFailed(Lcom/sec/android/app/sbrowser/authentication/AuthenticationFailedReason;)Z

    move-result v0

    invoke-static {p1, v0}, Lcom/sec/android/app/sbrowser/authentication/SpassFingerprintBackend;->b(Lcom/sec/android/app/sbrowser/authentication/SpassFingerprintBackend;Z)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/authentication/SpassFingerprintBackend$3;->this$0:Lcom/sec/android/app/sbrowser/authentication/SpassFingerprintBackend;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/authentication/SpassFingerprintBackend;->f(Lcom/sec/android/app/sbrowser/authentication/SpassFingerprintBackend;)V

    return-void

    :cond_1
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/authentication/SpassFingerprintBackend$3;->this$0:Lcom/sec/android/app/sbrowser/authentication/SpassFingerprintBackend;

    invoke-static {p0, v0}, Lcom/sec/android/app/sbrowser/authentication/SpassFingerprintBackend;->b(Lcom/sec/android/app/sbrowser/authentication/SpassFingerprintBackend;Z)V

    return-void

    :cond_2
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/authentication/SpassFingerprintBackend$3;->this$0:Lcom/sec/android/app/sbrowser/authentication/SpassFingerprintBackend;

    iget-object p1, p1, Lcom/sec/android/app/sbrowser/authentication/Backend;->mListener:Lcom/sec/android/app/sbrowser/authentication/AuthenticationListener;

    sget-object v1, Lcom/sec/android/app/sbrowser/authentication/Authenticator$Type;->FINGERPRINT:Lcom/sec/android/app/sbrowser/authentication/Authenticator$Type;

    const/4 v2, 0x0

    invoke-interface {p1, v1, v2}, Lcom/sec/android/app/sbrowser/authentication/AuthenticationListener;->onSucceeded(Lcom/sec/android/app/sbrowser/authentication/Authenticator$Type;[B)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/authentication/SpassFingerprintBackend$3;->this$0:Lcom/sec/android/app/sbrowser/authentication/SpassFingerprintBackend;

    invoke-static {p0, v0}, Lcom/sec/android/app/sbrowser/authentication/SpassFingerprintBackend;->b(Lcom/sec/android/app/sbrowser/authentication/SpassFingerprintBackend;Z)V

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
