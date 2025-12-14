.class Lcom/sec/android/app/sbrowser/auth/FakePasswordAuthenticator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/auth/Authenticator;


# instance fields
.field private mAuthenticator:Lcom/sec/android/app/sbrowser/auth/Authenticator;

.field private mLockModel:Lcom/sec/android/app/sbrowser/auth/LockModel;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/auth/Authenticator;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/auth/FakePasswordAuthenticator;->mAuthenticator:Lcom/sec/android/app/sbrowser/auth/Authenticator;

    new-instance p1, Lcom/sec/android/app/sbrowser/auth/LockModel;

    invoke-direct {p1}, Lcom/sec/android/app/sbrowser/auth/LockModel;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/auth/FakePasswordAuthenticator;->mLockModel:Lcom/sec/android/app/sbrowser/auth/LockModel;

    return-void
.end method

.method private checkPassword(Ljava/lang/String;)Z
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p0

    const/4 p1, 0x4

    if-lt p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private handlePassword(Lcom/sec/android/app/sbrowser/auth/AuthParam;Lcom/sec/android/app/sbrowser/auth/AuthListener;)Z
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/auth/AuthParam;->getPassword()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string p1, ""

    :goto_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/auth/FakePasswordAuthenticator;->checkPassword(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/auth/FakePasswordAuthenticator;->mLockModel:Lcom/sec/android/app/sbrowser/auth/LockModel;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/auth/LockModel;->resetIncorrectAttempts()V

    invoke-interface {p2}, Lcom/sec/android/app/sbrowser/auth/AuthListener;->onAuthSuccess()V

    goto :goto_1

    :cond_2
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/auth/FakePasswordAuthenticator;->mLockModel:Lcom/sec/android/app/sbrowser/auth/LockModel;

    invoke-virtual {p0, p2}, Lcom/sec/android/app/sbrowser/auth/LockModel;->increaseIncorrectAttempts(Lcom/sec/android/app/sbrowser/auth/AuthListener;)V

    :goto_1
    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public cancelAuth()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/auth/FakePasswordAuthenticator;->mAuthenticator:Lcom/sec/android/app/sbrowser/auth/Authenticator;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/auth/Authenticator;->cancelAuth()V

    return-void
.end method

.method public startAuth(Lcom/sec/android/app/sbrowser/auth/AuthParam;Lcom/sec/android/app/sbrowser/auth/AuthListener;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/auth/FakePasswordAuthenticator;->handlePassword(Lcom/sec/android/app/sbrowser/auth/AuthParam;Lcom/sec/android/app/sbrowser/auth/AuthListener;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/auth/FakePasswordAuthenticator;->mAuthenticator:Lcom/sec/android/app/sbrowser/auth/Authenticator;

    invoke-interface {p0, p1, p2}, Lcom/sec/android/app/sbrowser/auth/Authenticator;->startAuth(Lcom/sec/android/app/sbrowser/auth/AuthParam;Lcom/sec/android/app/sbrowser/auth/AuthListener;)V

    return-void
.end method
