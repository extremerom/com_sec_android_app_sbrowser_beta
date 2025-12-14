.class Lcom/sec/android/app/sbrowser/auth/fingerprint/SamsungFingerprintAuthenticator$1;
.super Lcom/sec/sbrowser/spl/wrapper/SemFingerprintManager$SemAuthenticationCallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/auth/fingerprint/SamsungFingerprintAuthenticator;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/auth/fingerprint/SamsungFingerprintAuthenticator;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/auth/fingerprint/SamsungFingerprintAuthenticator;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/auth/fingerprint/SamsungFingerprintAuthenticator$1;->this$0:Lcom/sec/android/app/sbrowser/auth/fingerprint/SamsungFingerprintAuthenticator;

    invoke-direct {p0}, Lcom/sec/sbrowser/spl/wrapper/SemFingerprintManager$SemAuthenticationCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAuthenticationError(ILjava/lang/CharSequence;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onAuthenticationError : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SamsungFingerprintAuthenticator"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_0
    const-string p2, ""

    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/auth/fingerprint/SamsungFingerprintAuthenticator$1;->this$0:Lcom/sec/android/app/sbrowser/auth/fingerprint/SamsungFingerprintAuthenticator;

    invoke-static {v0, p1}, Lcom/sec/android/app/sbrowser/auth/fingerprint/SamsungFingerprintAuthenticator;->c(Lcom/sec/android/app/sbrowser/auth/fingerprint/SamsungFingerprintAuthenticator;I)I

    move-result p1

    packed-switch p1, :pswitch_data_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/auth/fingerprint/SamsungFingerprintAuthenticator$1;->this$0:Lcom/sec/android/app/sbrowser/auth/fingerprint/SamsungFingerprintAuthenticator;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/auth/fingerprint/SamsungFingerprintAuthenticator;->a(Lcom/sec/android/app/sbrowser/auth/fingerprint/SamsungFingerprintAuthenticator;)Lcom/sec/android/app/sbrowser/auth/AuthListener;

    move-result-object p0

    const/16 p1, 0x6c

    invoke-interface {p0, p1, p2}, Lcom/sec/android/app/sbrowser/auth/AuthListener;->onAuthError(ILjava/lang/String;)V

    goto :goto_2

    :catch_0
    move-exception p0

    goto :goto_1

    :pswitch_0
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/auth/fingerprint/SamsungFingerprintAuthenticator$1;->this$0:Lcom/sec/android/app/sbrowser/auth/fingerprint/SamsungFingerprintAuthenticator;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/auth/fingerprint/SamsungFingerprintAuthenticator;->b(Lcom/sec/android/app/sbrowser/auth/fingerprint/SamsungFingerprintAuthenticator;)Lcom/sec/android/app/sbrowser/auth/LockModel;

    move-result-object p1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/auth/fingerprint/SamsungFingerprintAuthenticator$1;->this$0:Lcom/sec/android/app/sbrowser/auth/fingerprint/SamsungFingerprintAuthenticator;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/auth/fingerprint/SamsungFingerprintAuthenticator;->a(Lcom/sec/android/app/sbrowser/auth/fingerprint/SamsungFingerprintAuthenticator;)Lcom/sec/android/app/sbrowser/auth/AuthListener;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/sec/android/app/sbrowser/auth/LockModel;->adjustIncorrectAttemptsForLockout(Lcom/sec/android/app/sbrowser/auth/AuthListener;)V

    goto :goto_2

    :pswitch_1
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/auth/fingerprint/SamsungFingerprintAuthenticator$1;->this$0:Lcom/sec/android/app/sbrowser/auth/fingerprint/SamsungFingerprintAuthenticator;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/auth/fingerprint/SamsungFingerprintAuthenticator;->a(Lcom/sec/android/app/sbrowser/auth/fingerprint/SamsungFingerprintAuthenticator;)Lcom/sec/android/app/sbrowser/auth/AuthListener;

    move-result-object p0

    const/16 p1, 0x6b

    invoke-interface {p0, p1, p2}, Lcom/sec/android/app/sbrowser/auth/AuthListener;->onAuthError(ILjava/lang/String;)V

    goto :goto_2

    :pswitch_2
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/auth/fingerprint/SamsungFingerprintAuthenticator$1;->this$0:Lcom/sec/android/app/sbrowser/auth/fingerprint/SamsungFingerprintAuthenticator;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/auth/fingerprint/SamsungFingerprintAuthenticator;->a(Lcom/sec/android/app/sbrowser/auth/fingerprint/SamsungFingerprintAuthenticator;)Lcom/sec/android/app/sbrowser/auth/AuthListener;

    move-result-object p0

    const/16 p1, 0x69

    invoke-interface {p0, p1, p2}, Lcom/sec/android/app/sbrowser/auth/AuthListener;->onAuthError(ILjava/lang/String;)V

    goto :goto_2

    :pswitch_3
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/auth/fingerprint/SamsungFingerprintAuthenticator$1;->this$0:Lcom/sec/android/app/sbrowser/auth/fingerprint/SamsungFingerprintAuthenticator;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/auth/fingerprint/SamsungFingerprintAuthenticator;->a(Lcom/sec/android/app/sbrowser/auth/fingerprint/SamsungFingerprintAuthenticator;)Lcom/sec/android/app/sbrowser/auth/AuthListener;

    move-result-object p0

    const/16 p1, 0x68

    invoke-interface {p0, p1, p2}, Lcom/sec/android/app/sbrowser/auth/AuthListener;->onAuthError(ILjava/lang/String;)V

    goto :goto_2

    :pswitch_4
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/auth/fingerprint/SamsungFingerprintAuthenticator$1;->this$0:Lcom/sec/android/app/sbrowser/auth/fingerprint/SamsungFingerprintAuthenticator;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/auth/fingerprint/SamsungFingerprintAuthenticator;->a(Lcom/sec/android/app/sbrowser/auth/fingerprint/SamsungFingerprintAuthenticator;)Lcom/sec/android/app/sbrowser/auth/AuthListener;

    move-result-object p0

    const/16 p1, 0x66

    invoke-interface {p0, p1, p2}, Lcom/sec/android/app/sbrowser/auth/AuthListener;->onAuthError(ILjava/lang/String;)V
    :try_end_0
    .catch Lcom/sec/sbrowser/spl/util/FallbackException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "onAuthenticationError reflect failed : "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, p1, v1}, Landroidx/recyclerview/widget/P;->B(Lcom/sec/sbrowser/spl/util/FallbackException;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :goto_2
    return-void

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onAuthenticationFailed()V
    .locals 2

    const-string v0, "SamsungFingerprintAuthenticator"

    const-string v1, "onAuthenticationFailed"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/auth/fingerprint/SamsungFingerprintAuthenticator$1;->this$0:Lcom/sec/android/app/sbrowser/auth/fingerprint/SamsungFingerprintAuthenticator;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/auth/fingerprint/SamsungFingerprintAuthenticator;->b(Lcom/sec/android/app/sbrowser/auth/fingerprint/SamsungFingerprintAuthenticator;)Lcom/sec/android/app/sbrowser/auth/LockModel;

    move-result-object v0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/auth/fingerprint/SamsungFingerprintAuthenticator$1;->this$0:Lcom/sec/android/app/sbrowser/auth/fingerprint/SamsungFingerprintAuthenticator;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/auth/fingerprint/SamsungFingerprintAuthenticator;->a(Lcom/sec/android/app/sbrowser/auth/fingerprint/SamsungFingerprintAuthenticator;)Lcom/sec/android/app/sbrowser/auth/AuthListener;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/sec/android/app/sbrowser/auth/LockModel;->increaseIncorrectAttempts(Lcom/sec/android/app/sbrowser/auth/AuthListener;)V

    return-void
.end method

.method public onAuthenticationHelp(ILjava/lang/CharSequence;)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onAuthenticationHelp : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SamsungFingerprintAuthenticator"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_0
    const-string p2, ""

    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/auth/fingerprint/SamsungFingerprintAuthenticator$1;->this$0:Lcom/sec/android/app/sbrowser/auth/fingerprint/SamsungFingerprintAuthenticator;

    invoke-static {v0, p1}, Lcom/sec/android/app/sbrowser/auth/fingerprint/SamsungFingerprintAuthenticator;->d(Lcom/sec/android/app/sbrowser/auth/fingerprint/SamsungFingerprintAuthenticator;I)I

    move-result v0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_2

    const/4 v2, 0x2

    if-eq v0, v2, :cond_2

    const/4 v2, 0x3

    if-eq v0, v2, :cond_1

    const/4 v2, 0x4

    if-eq v0, v2, :cond_1

    const/4 v2, 0x5

    if-eq v0, v2, :cond_1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/auth/fingerprint/SamsungFingerprintAuthenticator$1;->this$0:Lcom/sec/android/app/sbrowser/auth/fingerprint/SamsungFingerprintAuthenticator;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/auth/fingerprint/SamsungFingerprintAuthenticator;->a(Lcom/sec/android/app/sbrowser/auth/fingerprint/SamsungFingerprintAuthenticator;)Lcom/sec/android/app/sbrowser/auth/AuthListener;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/sec/android/app/sbrowser/auth/AuthListener;->onAuthError(ILjava/lang/String;)V

    goto :goto_2

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_1
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/auth/fingerprint/SamsungFingerprintAuthenticator$1;->this$0:Lcom/sec/android/app/sbrowser/auth/fingerprint/SamsungFingerprintAuthenticator;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/auth/fingerprint/SamsungFingerprintAuthenticator;->a(Lcom/sec/android/app/sbrowser/auth/fingerprint/SamsungFingerprintAuthenticator;)Lcom/sec/android/app/sbrowser/auth/AuthListener;

    move-result-object p0

    const/16 p1, 0x65

    invoke-interface {p0, p1, p2}, Lcom/sec/android/app/sbrowser/auth/AuthListener;->onAuthError(ILjava/lang/String;)V

    goto :goto_2

    :cond_2
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/auth/fingerprint/SamsungFingerprintAuthenticator$1;->this$0:Lcom/sec/android/app/sbrowser/auth/fingerprint/SamsungFingerprintAuthenticator;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/auth/fingerprint/SamsungFingerprintAuthenticator;->a(Lcom/sec/android/app/sbrowser/auth/fingerprint/SamsungFingerprintAuthenticator;)Lcom/sec/android/app/sbrowser/auth/AuthListener;

    move-result-object p0

    const/16 p1, 0x67

    invoke-interface {p0, p1, p2}, Lcom/sec/android/app/sbrowser/auth/AuthListener;->onAuthError(ILjava/lang/String;)V
    :try_end_0
    .catch Lcom/sec/sbrowser/spl/util/FallbackException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "onAuthenticationHelp reflect failed : "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, p1, v1}, Landroidx/recyclerview/widget/P;->B(Lcom/sec/sbrowser/spl/util/FallbackException;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :goto_2
    return-void
.end method

.method public onAuthenticationSucceeded(Lcom/sec/sbrowser/spl/wrapper/SemFingerprintManager$SemAuthenticationResult;)V
    .locals 1

    const-string p1, "SamsungFingerprintAuthenticator"

    const-string v0, "onAuthenticationSucceeded"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/auth/fingerprint/SamsungFingerprintAuthenticator$1;->this$0:Lcom/sec/android/app/sbrowser/auth/fingerprint/SamsungFingerprintAuthenticator;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/auth/fingerprint/SamsungFingerprintAuthenticator;->b(Lcom/sec/android/app/sbrowser/auth/fingerprint/SamsungFingerprintAuthenticator;)Lcom/sec/android/app/sbrowser/auth/LockModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/auth/LockModel;->resetIncorrectAttempts()V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/auth/fingerprint/SamsungFingerprintAuthenticator$1;->this$0:Lcom/sec/android/app/sbrowser/auth/fingerprint/SamsungFingerprintAuthenticator;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/auth/fingerprint/SamsungFingerprintAuthenticator;->a(Lcom/sec/android/app/sbrowser/auth/fingerprint/SamsungFingerprintAuthenticator;)Lcom/sec/android/app/sbrowser/auth/AuthListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/auth/AuthListener;->onAuthSuccess()V

    return-void
.end method
