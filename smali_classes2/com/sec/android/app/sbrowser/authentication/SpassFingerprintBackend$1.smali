.class Lcom/sec/android/app/sbrowser/authentication/SpassFingerprintBackend$1;
.super Landroid/os/CountDownTimer;
.source "SourceFile"


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
.method public onFinish()V
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/authentication/SpassFingerprintBackend$1;->this$0:Lcom/sec/android/app/sbrowser/authentication/SpassFingerprintBackend;

    iget-object v1, v0, Lcom/sec/android/app/sbrowser/authentication/Backend;->mListener:Lcom/sec/android/app/sbrowser/authentication/AuthenticationListener;

    if-eqz v1, :cond_0

    new-instance v2, Lcom/sec/android/app/sbrowser/authentication/AuthenticationFailedReason;

    const/16 v3, 0x65

    invoke-direct {v2, v3}, Lcom/sec/android/app/sbrowser/authentication/AuthenticationFailedReason;-><init>(I)V

    invoke-interface {v1, v2}, Lcom/sec/android/app/sbrowser/authentication/AuthenticationListener;->onFailed(Lcom/sec/android/app/sbrowser/authentication/AuthenticationFailedReason;)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/authentication/SpassFingerprintBackend;->b(Lcom/sec/android/app/sbrowser/authentication/SpassFingerprintBackend;Z)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/authentication/SpassFingerprintBackend$1;->this$0:Lcom/sec/android/app/sbrowser/authentication/SpassFingerprintBackend;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/authentication/SpassFingerprintBackend;->cancelAuthentication()V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/authentication/SpassFingerprintBackend$1;->this$0:Lcom/sec/android/app/sbrowser/authentication/SpassFingerprintBackend;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/authentication/SpassFingerprintBackend;->f(Lcom/sec/android/app/sbrowser/authentication/SpassFingerprintBackend;)V

    :cond_0
    return-void
.end method

.method public onTick(J)V
    .locals 0

    return-void
.end method
