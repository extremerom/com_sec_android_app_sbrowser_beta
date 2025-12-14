.class Lcom/sec/android/app/sbrowser/authentication/SEPFingerprintBackend$3;
.super Lcom/sec/sbrowser/spl/wrapper/SemFingerprintManager$SemAuthenticationCallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/authentication/SEPFingerprintBackend;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/authentication/SEPFingerprintBackend;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/authentication/SEPFingerprintBackend;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/authentication/SEPFingerprintBackend$3;->this$0:Lcom/sec/android/app/sbrowser/authentication/SEPFingerprintBackend;

    invoke-direct {p0}, Lcom/sec/sbrowser/spl/wrapper/SemFingerprintManager$SemAuthenticationCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAuthenticationError(ILjava/lang/CharSequence;)V
    .locals 5

    const-string v0, "SEPFingerprintBackend"

    const/4 v1, 0x0

    :try_start_0
    sget-object v2, Lcom/sec/sbrowser/spl/wrapper/SemFingerprintManager;->FINGERPRINT_ERROR_TIMEOUT:Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

    invoke-virtual {v2}, Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;->get()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne p1, v2, :cond_0

    const/16 v0, 0x65

    goto/16 :goto_3

    :cond_0
    sget-object v2, Lcom/sec/sbrowser/spl/wrapper/SemFingerprintManager;->FINGERPRINT_ERROR_CANCELED:Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

    invoke-virtual {v2}, Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;->get()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/16 v3, 0x6a

    if-ne p1, v2, :cond_2

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/authentication/SEPFingerprintBackend$3;->this$0:Lcom/sec/android/app/sbrowser/authentication/SEPFingerprintBackend;

    invoke-static {v2}, Lcom/sec/android/app/sbrowser/authentication/SEPFingerprintBackend;->a(Lcom/sec/android/app/sbrowser/authentication/SEPFingerprintBackend;)Landroid/os/CancellationSignal;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/authentication/SEPFingerprintBackend$3;->this$0:Lcom/sec/android/app/sbrowser/authentication/SEPFingerprintBackend;

    invoke-static {v2}, Lcom/sec/android/app/sbrowser/authentication/SEPFingerprintBackend;->a(Lcom/sec/android/app/sbrowser/authentication/SEPFingerprintBackend;)Landroid/os/CancellationSignal;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/CancellationSignal;->isCanceled()Z

    move-result v2
    :try_end_0
    .catch Lcom/sec/sbrowser/spl/util/FallbackException; {:try_start_0 .. :try_end_0} :catch_1

    if-nez v2, :cond_1

    :try_start_1
    const-string v1, "FINGERPRINT_ERROR_CANCELLED from framework side"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Lcom/sec/sbrowser/spl/util/FallbackException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_2

    :catch_0
    move-exception v1

    goto/16 :goto_1

    :catch_1
    move-exception v2

    move v3, v1

    move-object v1, v2

    goto :goto_1

    :cond_1
    :try_start_2
    const-string v2, "FINGERPRINT_ERROR_CANCELLED from app side"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    sget-object v2, Lcom/sec/sbrowser/spl/wrapper/SemFingerprintManager;->FINGERPRINT_ERROR_USER_CANCELED:Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

    invoke-virtual {v2}, Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;->get()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne p1, v2, :cond_4

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/authentication/SEPFingerprintBackend$3;->this$0:Lcom/sec/android/app/sbrowser/authentication/SEPFingerprintBackend;

    invoke-static {v2}, Lcom/sec/android/app/sbrowser/authentication/SEPFingerprintBackend;->a(Lcom/sec/android/app/sbrowser/authentication/SEPFingerprintBackend;)Landroid/os/CancellationSignal;

    move-result-object v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/authentication/SEPFingerprintBackend$3;->this$0:Lcom/sec/android/app/sbrowser/authentication/SEPFingerprintBackend;

    invoke-static {v2}, Lcom/sec/android/app/sbrowser/authentication/SEPFingerprintBackend;->a(Lcom/sec/android/app/sbrowser/authentication/SEPFingerprintBackend;)Landroid/os/CancellationSignal;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/CancellationSignal;->isCanceled()Z

    move-result v2
    :try_end_2
    .catch Lcom/sec/sbrowser/spl/util/FallbackException; {:try_start_2 .. :try_end_2} :catch_1

    if-nez v2, :cond_3

    :try_start_3
    const-string v1, "FINGERPRINT_ERROR_USER_CANCELLED from framework side"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Lcom/sec/sbrowser/spl/util/FallbackException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_2

    :cond_3
    :try_start_4
    const-string v2, "FINGERPRINT_ERROR_USER_CANCELLED from app side"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_4
    sget-object v2, Lcom/sec/sbrowser/spl/wrapper/SemFingerprintManager;->FINGERPRINT_ERROR_LOCKOUT:Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

    invoke-virtual {v2}, Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;->get()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne p1, v2, :cond_6

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x21

    if-gt v2, v3, :cond_5

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/authentication/SEPFingerprintBackend$3;->onAuthenticationFailed()V

    :cond_5
    const/16 v1, 0x68

    const-string v2, "FINGERPRINT_ERROR_LOCKOUT from framework side"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    move v0, v1

    goto :goto_3

    :cond_6
    sget-object v2, Lcom/sec/sbrowser/spl/wrapper/SemFingerprintManager;->FINGERPRINT_ERROR_LOCKOUT_PERMANENT:Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

    invoke-virtual {v2}, Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;->get()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne p1, v1, :cond_7

    const/16 v1, 0x6b

    const-string v2, "FINGERPRINT_ERROR_LOCKOUT_PERMANENT from framework side"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Lcom/sec/sbrowser/spl/util/FallbackException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    :cond_7
    const/16 v0, 0x67

    goto :goto_3

    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "onAuthenticationError():"

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v2, v0}, Landroidx/recyclerview/widget/P;->B(Lcom/sec/sbrowser/spl/util/FallbackException;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :goto_2
    move v0, v3

    :goto_3
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/authentication/SEPFingerprintBackend$3;->this$0:Lcom/sec/android/app/sbrowser/authentication/SEPFingerprintBackend;

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

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/authentication/SEPFingerprintBackend$3;->this$0:Lcom/sec/android/app/sbrowser/authentication/SEPFingerprintBackend;

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/authentication/Backend;->mListener:Lcom/sec/android/app/sbrowser/authentication/AuthenticationListener;

    new-instance v1, Lcom/sec/android/app/sbrowser/authentication/AuthenticationFailedReason;

    const/16 v2, 0x64

    invoke-direct {v1, v2}, Lcom/sec/android/app/sbrowser/authentication/AuthenticationFailedReason;-><init>(I)V

    invoke-interface {v0, v1}, Lcom/sec/android/app/sbrowser/authentication/AuthenticationListener;->onFailed(Lcom/sec/android/app/sbrowser/authentication/AuthenticationFailedReason;)Z

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/authentication/SEPFingerprintBackend$3;->this$0:Lcom/sec/android/app/sbrowser/authentication/SEPFingerprintBackend;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/authentication/SEPFingerprintBackend;->b(Lcom/sec/android/app/sbrowser/authentication/SEPFingerprintBackend;)V

    return-void
.end method

.method public onAuthenticationHelp(ILjava/lang/CharSequence;)V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/authentication/SEPFingerprintBackend$3;->this$0:Lcom/sec/android/app/sbrowser/authentication/SEPFingerprintBackend;

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/authentication/Backend;->mListener:Lcom/sec/android/app/sbrowser/authentication/AuthenticationListener;

    new-instance v1, Lcom/sec/android/app/sbrowser/authentication/AuthenticationFailedReason;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const/16 v2, 0x69

    invoke-direct {v1, v2, p1, p2}, Lcom/sec/android/app/sbrowser/authentication/AuthenticationFailedReason;-><init>(IILjava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/sec/android/app/sbrowser/authentication/AuthenticationListener;->onFailed(Lcom/sec/android/app/sbrowser/authentication/AuthenticationFailedReason;)Z

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/authentication/SEPFingerprintBackend$3;->this$0:Lcom/sec/android/app/sbrowser/authentication/SEPFingerprintBackend;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/authentication/SEPFingerprintBackend;->b(Lcom/sec/android/app/sbrowser/authentication/SEPFingerprintBackend;)V

    return-void
.end method

.method public onAuthenticationSucceeded(Lcom/sec/sbrowser/spl/wrapper/SemFingerprintManager$SemAuthenticationResult;)V
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/authentication/SEPFingerprintBackend$3;->this$0:Lcom/sec/android/app/sbrowser/authentication/SEPFingerprintBackend;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/authentication/Backend;->mListener:Lcom/sec/android/app/sbrowser/authentication/AuthenticationListener;

    sget-object p1, Lcom/sec/android/app/sbrowser/authentication/Authenticator$Type;->FINGERPRINT:Lcom/sec/android/app/sbrowser/authentication/Authenticator$Type;

    const/4 v0, 0x0

    invoke-interface {p0, p1, v0}, Lcom/sec/android/app/sbrowser/authentication/AuthenticationListener;->onSucceeded(Lcom/sec/android/app/sbrowser/authentication/Authenticator$Type;[B)V

    return-void
.end method
