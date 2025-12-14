.class Lcom/sec/android/app/sbrowser/authentication/CameraIrisBackend$1;
.super Lcom/samsung/android/camera/sdk/iris/SIrisManager$AuthenticationCallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/authentication/CameraIrisBackend;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/authentication/CameraIrisBackend;


# virtual methods
.method public onAuthenticationError(ILjava/lang/CharSequence;)V
    .locals 2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/16 v0, 0x9

    if-eq p1, v0, :cond_1

    const/16 v0, 0xc

    if-eq p1, v0, :cond_0

    const/16 v0, 0xcb

    goto :goto_0

    :cond_0
    const/16 v0, 0xca

    goto :goto_0

    :cond_1
    const/16 v0, 0xc9

    :goto_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/authentication/CameraIrisBackend$1;->this$0:Lcom/sec/android/app/sbrowser/authentication/CameraIrisBackend;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/authentication/Backend;->mListener:Lcom/sec/android/app/sbrowser/authentication/AuthenticationListener;

    new-instance v1, Lcom/sec/android/app/sbrowser/authentication/AuthenticationFailedReason;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {v1, v0, p1, p2}, Lcom/sec/android/app/sbrowser/authentication/AuthenticationFailedReason;-><init>(IILjava/lang/String;)V

    invoke-interface {p0, v1}, Lcom/sec/android/app/sbrowser/authentication/AuthenticationListener;->onFailed(Lcom/sec/android/app/sbrowser/authentication/AuthenticationFailedReason;)Z

    return-void
.end method

.method public onAuthenticationFailed()V
    .locals 2

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/authentication/CameraIrisBackend$1;->this$0:Lcom/sec/android/app/sbrowser/authentication/CameraIrisBackend;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/authentication/Backend;->mListener:Lcom/sec/android/app/sbrowser/authentication/AuthenticationListener;

    new-instance v0, Lcom/sec/android/app/sbrowser/authentication/AuthenticationFailedReason;

    const/16 v1, 0xc8

    invoke-direct {v0, v1}, Lcom/sec/android/app/sbrowser/authentication/AuthenticationFailedReason;-><init>(I)V

    invoke-interface {p0, v0}, Lcom/sec/android/app/sbrowser/authentication/AuthenticationListener;->onFailed(Lcom/sec/android/app/sbrowser/authentication/AuthenticationFailedReason;)Z

    return-void
.end method

.method public onAuthenticationSucceeded(Lcom/samsung/android/camera/sdk/iris/SIrisManager$AuthenticationResult;)V
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/authentication/CameraIrisBackend$1;->this$0:Lcom/sec/android/app/sbrowser/authentication/CameraIrisBackend;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/authentication/Backend;->mListener:Lcom/sec/android/app/sbrowser/authentication/AuthenticationListener;

    sget-object v0, Lcom/sec/android/app/sbrowser/authentication/Authenticator$Type;->IRIS:Lcom/sec/android/app/sbrowser/authentication/Authenticator$Type;

    invoke-virtual {p1}, Lcom/samsung/android/camera/sdk/iris/SIrisManager$AuthenticationResult;->getCryptoObject()Lcom/samsung/android/camera/sdk/iris/SIrisManager$CryptoObject;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/camera/sdk/iris/SIrisManager$CryptoObject;->getFidoResultData()[B

    move-result-object p1

    invoke-interface {p0, v0, p1}, Lcom/sec/android/app/sbrowser/authentication/AuthenticationListener;->onSucceeded(Lcom/sec/android/app/sbrowser/authentication/Authenticator$Type;[B)V

    return-void
.end method
