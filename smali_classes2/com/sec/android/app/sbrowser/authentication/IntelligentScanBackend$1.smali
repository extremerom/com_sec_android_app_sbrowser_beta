.class Lcom/sec/android/app/sbrowser/authentication/IntelligentScanBackend$1;
.super Lcom/sec/sbrowser/spl/wrapper/SemBiometricsManager$SemAuthenticationCallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/authentication/IntelligentScanBackend;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/authentication/IntelligentScanBackend;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/authentication/IntelligentScanBackend;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/authentication/IntelligentScanBackend$1;->this$0:Lcom/sec/android/app/sbrowser/authentication/IntelligentScanBackend;

    invoke-direct {p0}, Lcom/sec/sbrowser/spl/wrapper/SemBiometricsManager$SemAuthenticationCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAuthenticationError(ILjava/lang/CharSequence;)V
    .locals 2

    :try_start_0
    sget-object v0, Lcom/sec/sbrowser/spl/wrapper/SemBiometricsManager;->ERROR_TIMEOUT:Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

    invoke-virtual {v0}, Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;->get()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne p1, v0, :cond_0

    const/16 v0, 0x12d

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/sec/sbrowser/spl/wrapper/SemBiometricsManager;->ERROR_CANCELED:Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

    invoke-virtual {v0}, Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;->get()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0
    :try_end_0
    .catch Lcom/sec/sbrowser/spl/util/FallbackException; {:try_start_0 .. :try_end_0} :catch_0

    if-ne p1, v0, :cond_1

    const/16 v0, 0x12f

    goto :goto_0

    :cond_1
    const/16 v0, 0x12e

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    :goto_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/authentication/IntelligentScanBackend$1;->this$0:Lcom/sec/android/app/sbrowser/authentication/IntelligentScanBackend;

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

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/authentication/IntelligentScanBackend$1;->this$0:Lcom/sec/android/app/sbrowser/authentication/IntelligentScanBackend;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/authentication/Backend;->mListener:Lcom/sec/android/app/sbrowser/authentication/AuthenticationListener;

    new-instance v0, Lcom/sec/android/app/sbrowser/authentication/AuthenticationFailedReason;

    const/16 v1, 0x12c

    invoke-direct {v0, v1}, Lcom/sec/android/app/sbrowser/authentication/AuthenticationFailedReason;-><init>(I)V

    invoke-interface {p0, v0}, Lcom/sec/android/app/sbrowser/authentication/AuthenticationListener;->onFailed(Lcom/sec/android/app/sbrowser/authentication/AuthenticationFailedReason;)Z

    return-void
.end method

.method public onAuthenticationHelp(ILjava/lang/CharSequence;)V
    .locals 0

    return-void
.end method

.method public onAuthenticationSucceeded(Lcom/sec/sbrowser/spl/wrapper/SemBiometricsManager$SemAuthenticationResult;)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/authentication/IntelligentScanBackend$1;->this$0:Lcom/sec/android/app/sbrowser/authentication/IntelligentScanBackend;

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/authentication/Backend;->mListener:Lcom/sec/android/app/sbrowser/authentication/AuthenticationListener;

    sget-object v1, Lcom/sec/android/app/sbrowser/authentication/Authenticator$Type;->IRIS:Lcom/sec/android/app/sbrowser/authentication/Authenticator$Type;

    invoke-virtual {p1}, Lcom/sec/sbrowser/spl/wrapper/SemBiometricsManager$SemAuthenticationResult;->getCryptoObject()Lcom/sec/sbrowser/spl/wrapper/SemBiometricsManager$SemCryptoObject;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/sbrowser/spl/wrapper/SemBiometricsManager$SemCryptoObject;->getFidoResultData()[B

    move-result-object p1

    invoke-interface {v0, v1, p1}, Lcom/sec/android/app/sbrowser/authentication/AuthenticationListener;->onSucceeded(Lcom/sec/android/app/sbrowser/authentication/Authenticator$Type;[B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/authentication/IntelligentScanBackend$1;->this$0:Lcom/sec/android/app/sbrowser/authentication/IntelligentScanBackend;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/authentication/Backend;->mListener:Lcom/sec/android/app/sbrowser/authentication/AuthenticationListener;

    new-instance p1, Lcom/sec/android/app/sbrowser/authentication/AuthenticationFailedReason;

    const/16 v0, 0x12e

    invoke-direct {p1, v0}, Lcom/sec/android/app/sbrowser/authentication/AuthenticationFailedReason;-><init>(I)V

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/authentication/AuthenticationListener;->onFailed(Lcom/sec/android/app/sbrowser/authentication/AuthenticationFailedReason;)Z

    :goto_0
    return-void
.end method
