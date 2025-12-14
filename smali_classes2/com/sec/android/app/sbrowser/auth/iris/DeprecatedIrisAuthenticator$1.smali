.class Lcom/sec/android/app/sbrowser/auth/iris/DeprecatedIrisAuthenticator$1;
.super Lcom/samsung/android/camera/sdk/iris/SIrisManager$AuthenticationCallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/auth/iris/DeprecatedIrisAuthenticator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/auth/iris/DeprecatedIrisAuthenticator;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/auth/iris/DeprecatedIrisAuthenticator;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/auth/iris/DeprecatedIrisAuthenticator$1;->this$0:Lcom/sec/android/app/sbrowser/auth/iris/DeprecatedIrisAuthenticator;

    invoke-direct {p0}, Lcom/samsung/android/camera/sdk/iris/SIrisManager$AuthenticationCallback;-><init>()V

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

    const-string v1, "DeprecatedIrisAuthenticator"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_0
    const-string p2, ""

    :goto_0
    const/4 v0, 0x2

    if-eq p1, v0, :cond_4

    const/16 v0, 0x9

    if-eq p1, v0, :cond_3

    const/16 v0, 0xc

    if-eq p1, v0, :cond_2

    const/16 v0, 0xf

    if-eq p1, v0, :cond_1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/auth/iris/DeprecatedIrisAuthenticator$1;->this$0:Lcom/sec/android/app/sbrowser/auth/iris/DeprecatedIrisAuthenticator;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/auth/iris/DeprecatedIrisAuthenticator;->a(Lcom/sec/android/app/sbrowser/auth/iris/DeprecatedIrisAuthenticator;)Lcom/sec/android/app/sbrowser/auth/AuthListener;

    move-result-object p0

    const/16 p1, 0xcd

    invoke-interface {p0, p1, p2}, Lcom/sec/android/app/sbrowser/auth/AuthListener;->onAuthError(ILjava/lang/String;)V

    goto :goto_1

    :cond_1
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/auth/iris/DeprecatedIrisAuthenticator$1;->this$0:Lcom/sec/android/app/sbrowser/auth/iris/DeprecatedIrisAuthenticator;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/auth/iris/DeprecatedIrisAuthenticator;->a(Lcom/sec/android/app/sbrowser/auth/iris/DeprecatedIrisAuthenticator;)Lcom/sec/android/app/sbrowser/auth/AuthListener;

    move-result-object p0

    const/16 p1, 0xcb

    invoke-interface {p0, p1, p2}, Lcom/sec/android/app/sbrowser/auth/AuthListener;->onAuthError(ILjava/lang/String;)V

    goto :goto_1

    :cond_2
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/auth/iris/DeprecatedIrisAuthenticator$1;->this$0:Lcom/sec/android/app/sbrowser/auth/iris/DeprecatedIrisAuthenticator;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/auth/iris/DeprecatedIrisAuthenticator;->a(Lcom/sec/android/app/sbrowser/auth/iris/DeprecatedIrisAuthenticator;)Lcom/sec/android/app/sbrowser/auth/AuthListener;

    move-result-object p0

    const/16 p1, 0xcc

    invoke-interface {p0, p1, p2}, Lcom/sec/android/app/sbrowser/auth/AuthListener;->onAuthError(ILjava/lang/String;)V

    goto :goto_1

    :cond_3
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/auth/iris/DeprecatedIrisAuthenticator$1;->this$0:Lcom/sec/android/app/sbrowser/auth/iris/DeprecatedIrisAuthenticator;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/auth/iris/DeprecatedIrisAuthenticator;->a(Lcom/sec/android/app/sbrowser/auth/iris/DeprecatedIrisAuthenticator;)Lcom/sec/android/app/sbrowser/auth/AuthListener;

    move-result-object p0

    const/16 p1, 0xca

    invoke-interface {p0, p1, p2}, Lcom/sec/android/app/sbrowser/auth/AuthListener;->onAuthError(ILjava/lang/String;)V

    goto :goto_1

    :cond_4
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/auth/iris/DeprecatedIrisAuthenticator$1;->this$0:Lcom/sec/android/app/sbrowser/auth/iris/DeprecatedIrisAuthenticator;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/auth/iris/DeprecatedIrisAuthenticator;->a(Lcom/sec/android/app/sbrowser/auth/iris/DeprecatedIrisAuthenticator;)Lcom/sec/android/app/sbrowser/auth/AuthListener;

    move-result-object p0

    const/16 p1, 0xc9

    invoke-interface {p0, p1, p2}, Lcom/sec/android/app/sbrowser/auth/AuthListener;->onAuthError(ILjava/lang/String;)V

    :goto_1
    return-void
.end method

.method public onAuthenticationFailed()V
    .locals 2

    const-string v0, "DeprecatedIrisAuthenticator"

    const-string v1, "onAuthenticationFailed"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/auth/iris/DeprecatedIrisAuthenticator$1;->this$0:Lcom/sec/android/app/sbrowser/auth/iris/DeprecatedIrisAuthenticator;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/auth/iris/DeprecatedIrisAuthenticator;->b(Lcom/sec/android/app/sbrowser/auth/iris/DeprecatedIrisAuthenticator;)Lcom/sec/android/app/sbrowser/auth/LockModel;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/auth/iris/DeprecatedIrisAuthenticator$1;->this$0:Lcom/sec/android/app/sbrowser/auth/iris/DeprecatedIrisAuthenticator;

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/auth/iris/DeprecatedIrisAuthenticator;->a(Lcom/sec/android/app/sbrowser/auth/iris/DeprecatedIrisAuthenticator;)Lcom/sec/android/app/sbrowser/auth/AuthListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/auth/LockModel;->increaseIncorrectAttempts(Lcom/sec/android/app/sbrowser/auth/AuthListener;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/auth/iris/DeprecatedIrisAuthenticator$1;->this$0:Lcom/sec/android/app/sbrowser/auth/iris/DeprecatedIrisAuthenticator;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/auth/iris/DeprecatedIrisAuthenticator;->cancelAuth()V

    return-void
.end method

.method public onAuthenticationSucceeded(Lcom/samsung/android/camera/sdk/iris/SIrisManager$AuthenticationResult;)V
    .locals 0

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/auth/iris/DeprecatedIrisAuthenticator$1;->this$0:Lcom/sec/android/app/sbrowser/auth/iris/DeprecatedIrisAuthenticator;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/auth/iris/DeprecatedIrisAuthenticator;->b(Lcom/sec/android/app/sbrowser/auth/iris/DeprecatedIrisAuthenticator;)Lcom/sec/android/app/sbrowser/auth/LockModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/auth/LockModel;->resetIncorrectAttempts()V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/auth/iris/DeprecatedIrisAuthenticator$1;->this$0:Lcom/sec/android/app/sbrowser/auth/iris/DeprecatedIrisAuthenticator;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/auth/iris/DeprecatedIrisAuthenticator;->a(Lcom/sec/android/app/sbrowser/auth/iris/DeprecatedIrisAuthenticator;)Lcom/sec/android/app/sbrowser/auth/AuthListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/auth/AuthListener;->onAuthSuccess()V

    return-void
.end method
