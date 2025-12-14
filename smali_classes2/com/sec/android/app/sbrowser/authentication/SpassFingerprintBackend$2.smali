.class Lcom/sec/android/app/sbrowser/authentication/SpassFingerprintBackend$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Handler$Callback;


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
.method public handleMessage(Landroid/os/Message;)Z
    .locals 2

    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v1, 0x2

    if-eq p1, v1, :cond_1

    const/4 v1, 0x3

    if-eq p1, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/authentication/SpassFingerprintBackend$2;->this$0:Lcom/sec/android/app/sbrowser/authentication/SpassFingerprintBackend;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/authentication/Backend;->mListener:Lcom/sec/android/app/sbrowser/authentication/AuthenticationListener;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/authentication/AuthenticationListener;->onResetErrorMessage()V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/authentication/SpassFingerprintBackend$2;->this$0:Lcom/sec/android/app/sbrowser/authentication/SpassFingerprintBackend;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/authentication/SpassFingerprintBackend;->d(Lcom/sec/android/app/sbrowser/authentication/SpassFingerprintBackend;)V

    goto :goto_0

    :cond_2
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/authentication/SpassFingerprintBackend$2;->this$0:Lcom/sec/android/app/sbrowser/authentication/SpassFingerprintBackend;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/authentication/SpassFingerprintBackend;->c(Lcom/sec/android/app/sbrowser/authentication/SpassFingerprintBackend;)V

    :goto_0
    return v0
.end method
