.class Lcom/sec/android/app/sbrowser/authentication/AuthenticationContext;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mCallback:Lcom/sec/android/app/sbrowser/authentication/Authenticator$Callback;

.field private mOption:Lcom/sec/android/app/sbrowser/authentication/Authenticator$Option;

.field private mResult:Lcom/sec/android/app/sbrowser/authentication/Authenticator$Result;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private clearContext()V
    .locals 2

    const-string v0, "AuthenticationContext"

    const-string v1, "Clearing context for Authenticator"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/authentication/AuthenticationContext;->mOption:Lcom/sec/android/app/sbrowser/authentication/Authenticator$Option;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/authentication/AuthenticationContext;->mCallback:Lcom/sec/android/app/sbrowser/authentication/Authenticator$Callback;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/authentication/AuthenticationContext;->mResult:Lcom/sec/android/app/sbrowser/authentication/Authenticator$Result;

    return-void
.end method


# virtual methods
.method public getOption()Lcom/sec/android/app/sbrowser/authentication/Authenticator$Option;
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/authentication/AuthenticationContext;->isRunning()Z

    move-result v0

    invoke-static {v0}, Lcom/sec/terrace/base/AssertUtil;->assertTrue(Z)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/authentication/AuthenticationContext;->mOption:Lcom/sec/android/app/sbrowser/authentication/Authenticator$Option;

    return-object p0
.end method

.method public handleCallback()V
    .locals 2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/authentication/AuthenticationContext;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/authentication/AuthenticationContext;->mResult:Lcom/sec/android/app/sbrowser/authentication/Authenticator$Result;

    if-nez v0, :cond_1

    new-instance v0, Lcom/sec/android/app/sbrowser/authentication/Authenticator$Result;

    invoke-direct {v0}, Lcom/sec/android/app/sbrowser/authentication/Authenticator$Result;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/authentication/AuthenticationContext;->mResult:Lcom/sec/android/app/sbrowser/authentication/Authenticator$Result;

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/authentication/AuthenticationContext;->mCallback:Lcom/sec/android/app/sbrowser/authentication/Authenticator$Callback;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/authentication/AuthenticationContext;->mResult:Lcom/sec/android/app/sbrowser/authentication/Authenticator$Result;

    invoke-interface {v0, v1}, Lcom/sec/android/app/sbrowser/authentication/Authenticator$Callback;->onResult(Lcom/sec/android/app/sbrowser/authentication/Authenticator$Result;)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/authentication/AuthenticationContext;->clearContext()V

    return-void
.end method

.method public isRunning()Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/authentication/AuthenticationContext;->mOption:Lcom/sec/android/app/sbrowser/authentication/Authenticator$Option;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/authentication/AuthenticationContext;->mCallback:Lcom/sec/android/app/sbrowser/authentication/Authenticator$Callback;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public makePendingResult(Lcom/sec/android/app/sbrowser/authentication/Authenticator$Type;[B)V
    .locals 3

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/authentication/AuthenticationContext;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/sec/android/app/sbrowser/authentication/Authenticator$Result;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/authentication/AuthenticationContext;->getOption()Lcom/sec/android/app/sbrowser/authentication/Authenticator$Option;

    move-result-object v1

    iget-object v1, v1, Lcom/sec/android/app/sbrowser/authentication/Authenticator$Option;->nonce:[B

    const/4 v2, 0x1

    invoke-direct {v0, p1, v2, v1, p2}, Lcom/sec/android/app/sbrowser/authentication/Authenticator$Result;-><init>(Lcom/sec/android/app/sbrowser/authentication/Authenticator$Type;Z[B[B)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/authentication/AuthenticationContext;->mResult:Lcom/sec/android/app/sbrowser/authentication/Authenticator$Result;

    return-void
.end method

.method public setContext(Lcom/sec/android/app/sbrowser/authentication/Authenticator$Option;Lcom/sec/android/app/sbrowser/authentication/Authenticator$Callback;)V
    .locals 2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/authentication/AuthenticationContext;->isRunning()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/sec/terrace/base/AssertUtil;->assertTrue(Z)V

    const-string v0, "AuthenticationContext"

    if-nez p2, :cond_0

    const-string p0, "Callback is null"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-string v1, "Setting context for Authenticator"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/authentication/AuthenticationContext;->mOption:Lcom/sec/android/app/sbrowser/authentication/Authenticator$Option;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/authentication/AuthenticationContext;->mCallback:Lcom/sec/android/app/sbrowser/authentication/Authenticator$Callback;

    return-void
.end method
