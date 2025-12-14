.class Lcom/sec/android/app/sbrowser/auth/iris/IrisAuthenticator$1;
.super Lcom/sec/sbrowser/spl/wrapper/SemIrisManager$SemAuthenticationCallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/auth/iris/IrisAuthenticator;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/auth/iris/IrisAuthenticator;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/auth/iris/IrisAuthenticator;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/auth/iris/IrisAuthenticator$1;->this$0:Lcom/sec/android/app/sbrowser/auth/iris/IrisAuthenticator;

    invoke-direct {p0}, Lcom/sec/sbrowser/spl/wrapper/SemIrisManager$SemAuthenticationCallback;-><init>()V

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

    const-string v1, "IrisAuthenticator"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/auth/iris/IrisAuthenticator$1;->this$0:Lcom/sec/android/app/sbrowser/auth/iris/IrisAuthenticator;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/auth/iris/IrisAuthenticator;->a(Lcom/sec/android/app/sbrowser/auth/iris/IrisAuthenticator;)Lcom/sec/android/app/sbrowser/auth/AuthListener;

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

.method public onAuthenticationFailed()V
    .locals 2

    const-string v0, "IrisAuthenticator"

    const-string v1, "onAuthenticationFailed"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/auth/iris/IrisAuthenticator$1;->this$0:Lcom/sec/android/app/sbrowser/auth/iris/IrisAuthenticator;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/auth/iris/IrisAuthenticator;->b(Lcom/sec/android/app/sbrowser/auth/iris/IrisAuthenticator;)Lcom/sec/android/app/sbrowser/auth/LockModel;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/auth/iris/IrisAuthenticator$1;->this$0:Lcom/sec/android/app/sbrowser/auth/iris/IrisAuthenticator;

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/auth/iris/IrisAuthenticator;->a(Lcom/sec/android/app/sbrowser/auth/iris/IrisAuthenticator;)Lcom/sec/android/app/sbrowser/auth/AuthListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/auth/LockModel;->increaseIncorrectAttempts(Lcom/sec/android/app/sbrowser/auth/AuthListener;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/auth/iris/IrisAuthenticator$1;->this$0:Lcom/sec/android/app/sbrowser/auth/iris/IrisAuthenticator;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/auth/iris/IrisAuthenticator;->cancelAuth()V

    return-void
.end method

.method public onAuthenticationHelp(ILjava/lang/CharSequence;)V
    .locals 0

    return-void
.end method

.method public onAuthenticationSucceeded(Lcom/sec/sbrowser/spl/wrapper/SemIrisManager$SemAuthenticationResult;)V
    .locals 1

    const-string p1, "IrisAuthenticator"

    const-string v0, "onAuthenticationSucceeded"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/auth/iris/IrisAuthenticator$1;->this$0:Lcom/sec/android/app/sbrowser/auth/iris/IrisAuthenticator;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/auth/iris/IrisAuthenticator;->b(Lcom/sec/android/app/sbrowser/auth/iris/IrisAuthenticator;)Lcom/sec/android/app/sbrowser/auth/LockModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/auth/LockModel;->resetIncorrectAttempts()V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/auth/iris/IrisAuthenticator$1;->this$0:Lcom/sec/android/app/sbrowser/auth/iris/IrisAuthenticator;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/auth/iris/IrisAuthenticator;->a(Lcom/sec/android/app/sbrowser/auth/iris/IrisAuthenticator;)Lcom/sec/android/app/sbrowser/auth/AuthListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/auth/AuthListener;->onAuthSuccess()V

    return-void
.end method
