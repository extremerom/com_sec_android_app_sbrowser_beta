.class Lcom/sec/android/app/sbrowser/authentication/GoogleFingerprintBackend$2;
.super Landroid/os/CountDownTimer;
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
.method public constructor <init>(Lcom/sec/android/app/sbrowser/authentication/GoogleFingerprintBackend;JJ)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/authentication/GoogleFingerprintBackend$2;->this$0:Lcom/sec/android/app/sbrowser/authentication/GoogleFingerprintBackend;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/authentication/GoogleFingerprintBackend$2;->this$0:Lcom/sec/android/app/sbrowser/authentication/GoogleFingerprintBackend;

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/authentication/Backend;->mListener:Lcom/sec/android/app/sbrowser/authentication/AuthenticationListener;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/sec/android/app/sbrowser/authentication/AuthenticationFailedReason;

    const/16 v2, 0x65

    invoke-direct {v1, v2}, Lcom/sec/android/app/sbrowser/authentication/AuthenticationFailedReason;-><init>(I)V

    invoke-interface {v0, v1}, Lcom/sec/android/app/sbrowser/authentication/AuthenticationListener;->onFailed(Lcom/sec/android/app/sbrowser/authentication/AuthenticationFailedReason;)Z

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/authentication/GoogleFingerprintBackend$2;->this$0:Lcom/sec/android/app/sbrowser/authentication/GoogleFingerprintBackend;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/authentication/GoogleFingerprintBackend;->cancelAuthentication()V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/authentication/GoogleFingerprintBackend$2;->this$0:Lcom/sec/android/app/sbrowser/authentication/GoogleFingerprintBackend;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/authentication/GoogleFingerprintBackend;->a(Lcom/sec/android/app/sbrowser/authentication/GoogleFingerprintBackend;)V

    :cond_0
    return-void
.end method

.method public onTick(J)V
    .locals 0

    return-void
.end method
