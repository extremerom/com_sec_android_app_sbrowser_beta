.class Lcom/sec/android/app/sbrowser/authentication/GoogleFingerprintBackend$3;
.super Landroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/authentication/GoogleFingerprintBackend;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/authentication/GoogleFingerprintBackend;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/authentication/GoogleFingerprintBackend;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/authentication/GoogleFingerprintBackend$3;->this$0:Lcom/sec/android/app/sbrowser/authentication/GoogleFingerprintBackend;

    invoke-direct {p0}, Landroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAuthenticationError(ILjava/lang/CharSequence;)V
    .locals 2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_3

    const/4 v0, 0x5

    if-eq p1, v0, :cond_2

    const/4 v0, 0x7

    if-eq p1, v0, :cond_1

    const/16 v0, 0x9

    if-eq p1, v0, :cond_0

    const/16 v0, 0x67

    goto :goto_0

    :cond_0
    const/16 v0, 0x6b

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/authentication/GoogleFingerprintBackend$3;->onAuthenticationFailed()V

    const/16 v0, 0x68

    goto :goto_0

    :cond_2
    const/16 v0, 0x6a

    goto :goto_0

    :cond_3
    const/16 v0, 0x65

    :goto_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/authentication/GoogleFingerprintBackend$3;->this$0:Lcom/sec/android/app/sbrowser/authentication/GoogleFingerprintBackend;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/authentication/Backend;->mListener:Lcom/sec/android/app/sbrowser/authentication/AuthenticationListener;

    new-instance v1, Lcom/sec/android/app/sbrowser/authentication/AuthenticationFailedReason;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {v1, v0, p1, p2}, Lcom/sec/android/app/sbrowser/authentication/AuthenticationFailedReason;-><init>(IILjava/lang/String;)V

    invoke-interface {p0, v1}, Lcom/sec/android/app/sbrowser/authentication/AuthenticationListener;->onFailed(Lcom/sec/android/app/sbrowser/authentication/AuthenticationFailedReason;)Z

    return-void
.end method

.method public onAuthenticationFailed()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/authentication/GoogleFingerprintBackend$3;->this$0:Lcom/sec/android/app/sbrowser/authentication/GoogleFingerprintBackend;

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/authentication/Backend;->mListener:Lcom/sec/android/app/sbrowser/authentication/AuthenticationListener;

    new-instance v1, Lcom/sec/android/app/sbrowser/authentication/AuthenticationFailedReason;

    const/16 v2, 0x64

    invoke-direct {v1, v2}, Lcom/sec/android/app/sbrowser/authentication/AuthenticationFailedReason;-><init>(I)V

    invoke-interface {v0, v1}, Lcom/sec/android/app/sbrowser/authentication/AuthenticationListener;->onFailed(Lcom/sec/android/app/sbrowser/authentication/AuthenticationFailedReason;)Z

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/authentication/GoogleFingerprintBackend$3;->this$0:Lcom/sec/android/app/sbrowser/authentication/GoogleFingerprintBackend;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/authentication/GoogleFingerprintBackend;->a(Lcom/sec/android/app/sbrowser/authentication/GoogleFingerprintBackend;)V

    return-void
.end method

.method public onAuthenticationSucceeded(Landroid/hardware/fingerprint/FingerprintManager$AuthenticationResult;)V
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/authentication/GoogleFingerprintBackend$3;->this$0:Lcom/sec/android/app/sbrowser/authentication/GoogleFingerprintBackend;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/authentication/Backend;->mListener:Lcom/sec/android/app/sbrowser/authentication/AuthenticationListener;

    sget-object p1, Lcom/sec/android/app/sbrowser/authentication/Authenticator$Type;->FINGERPRINT:Lcom/sec/android/app/sbrowser/authentication/Authenticator$Type;

    const/4 v0, 0x0

    invoke-interface {p0, p1, v0}, Lcom/sec/android/app/sbrowser/authentication/AuthenticationListener;->onSucceeded(Lcom/sec/android/app/sbrowser/authentication/Authenticator$Type;[B)V

    return-void
.end method
