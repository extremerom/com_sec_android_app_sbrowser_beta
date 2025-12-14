.class Lcom/sec/android/app/sbrowser/authentication/SEPIrisBackend$1;
.super Lcom/sec/sbrowser/spl/wrapper/SemIrisManager$SemAuthenticationCallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/authentication/SEPIrisBackend;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/authentication/SEPIrisBackend;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/authentication/SEPIrisBackend;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/authentication/SEPIrisBackend$1;->this$0:Lcom/sec/android/app/sbrowser/authentication/SEPIrisBackend;

    invoke-direct {p0}, Lcom/sec/sbrowser/spl/wrapper/SemIrisManager$SemAuthenticationCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAuthenticationError(ILjava/lang/CharSequence;)V
    .locals 2

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/authentication/SEPIrisBackend$1;->this$0:Lcom/sec/android/app/sbrowser/authentication/SEPIrisBackend;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/authentication/Backend;->mListener:Lcom/sec/android/app/sbrowser/authentication/AuthenticationListener;

    new-instance v0, Lcom/sec/android/app/sbrowser/authentication/AuthenticationFailedReason;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const/16 v1, 0xcb

    invoke-direct {v0, v1, p1, p2}, Lcom/sec/android/app/sbrowser/authentication/AuthenticationFailedReason;-><init>(IILjava/lang/String;)V

    invoke-interface {p0, v0}, Lcom/sec/android/app/sbrowser/authentication/AuthenticationListener;->onFailed(Lcom/sec/android/app/sbrowser/authentication/AuthenticationFailedReason;)Z

    return-void
.end method

.method public onAuthenticationFailed()V
    .locals 2

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/authentication/SEPIrisBackend$1;->this$0:Lcom/sec/android/app/sbrowser/authentication/SEPIrisBackend;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/authentication/Backend;->mListener:Lcom/sec/android/app/sbrowser/authentication/AuthenticationListener;

    new-instance v0, Lcom/sec/android/app/sbrowser/authentication/AuthenticationFailedReason;

    const/16 v1, 0xc8

    invoke-direct {v0, v1}, Lcom/sec/android/app/sbrowser/authentication/AuthenticationFailedReason;-><init>(I)V

    invoke-interface {p0, v0}, Lcom/sec/android/app/sbrowser/authentication/AuthenticationListener;->onFailed(Lcom/sec/android/app/sbrowser/authentication/AuthenticationFailedReason;)Z

    return-void
.end method

.method public onAuthenticationHelp(ILjava/lang/CharSequence;)V
    .locals 0

    return-void
.end method

.method public onAuthenticationSucceeded(Lcom/sec/sbrowser/spl/wrapper/SemIrisManager$SemAuthenticationResult;)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/authentication/SEPIrisBackend$1;->this$0:Lcom/sec/android/app/sbrowser/authentication/SEPIrisBackend;

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/authentication/Backend;->mListener:Lcom/sec/android/app/sbrowser/authentication/AuthenticationListener;

    sget-object v1, Lcom/sec/android/app/sbrowser/authentication/Authenticator$Type;->IRIS:Lcom/sec/android/app/sbrowser/authentication/Authenticator$Type;

    invoke-virtual {p1}, Lcom/sec/sbrowser/spl/wrapper/SemIrisManager$SemAuthenticationResult;->getCryptoObject()Lcom/sec/sbrowser/spl/wrapper/SemIrisManager$SemCryptoObject;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/sbrowser/spl/wrapper/SemIrisManager$SemCryptoObject;->getFidoResultData()[B

    move-result-object p1

    invoke-interface {v0, v1, p1}, Lcom/sec/android/app/sbrowser/authentication/AuthenticationListener;->onSucceeded(Lcom/sec/android/app/sbrowser/authentication/Authenticator$Type;[B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/authentication/SEPIrisBackend$1;->this$0:Lcom/sec/android/app/sbrowser/authentication/SEPIrisBackend;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/authentication/Backend;->mListener:Lcom/sec/android/app/sbrowser/authentication/AuthenticationListener;

    new-instance p1, Lcom/sec/android/app/sbrowser/authentication/AuthenticationFailedReason;

    const/16 v0, 0xcb

    invoke-direct {p1, v0}, Lcom/sec/android/app/sbrowser/authentication/AuthenticationFailedReason;-><init>(I)V

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/authentication/AuthenticationListener;->onFailed(Lcom/sec/android/app/sbrowser/authentication/AuthenticationFailedReason;)Z

    :goto_0
    return-void
.end method
