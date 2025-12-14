.class public Lcom/sec/android/app/sbrowser/auth/password/PasswordAuthenticator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/auth/Authenticator;


# instance fields
.field private mListener:Lcom/sec/android/app/sbrowser/auth/AuthListener;

.field private mLockModel:Lcom/sec/android/app/sbrowser/auth/LockModel;

.field private mSecretModeManager:Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;->getInstance(Landroid/app/Activity;)Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/auth/password/PasswordAuthenticator;->mSecretModeManager:Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;

    sget-object p1, Lcom/sec/android/app/sbrowser/auth/AuthListener;->EMPTY:Lcom/sec/android/app/sbrowser/auth/AuthListener;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/auth/password/PasswordAuthenticator;->mListener:Lcom/sec/android/app/sbrowser/auth/AuthListener;

    new-instance p1, Lcom/sec/android/app/sbrowser/auth/LockModel;

    invoke-direct {p1}, Lcom/sec/android/app/sbrowser/auth/LockModel;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/auth/password/PasswordAuthenticator;->mLockModel:Lcom/sec/android/app/sbrowser/auth/LockModel;

    return-void
.end method


# virtual methods
.method public cancelAuth()V
    .locals 1

    sget-object v0, Lcom/sec/android/app/sbrowser/auth/AuthListener;->EMPTY:Lcom/sec/android/app/sbrowser/auth/AuthListener;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/auth/password/PasswordAuthenticator;->mListener:Lcom/sec/android/app/sbrowser/auth/AuthListener;

    return-void
.end method

.method public startAuth(Lcom/sec/android/app/sbrowser/auth/AuthParam;Lcom/sec/android/app/sbrowser/auth/AuthListener;)V
    .locals 2

    const-string v0, "PasswordAuthenticator"

    const-string v1, "Start Authenticate"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/auth/password/PasswordAuthenticator;->mListener:Lcom/sec/android/app/sbrowser/auth/AuthListener;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/auth/AuthParam;->getPassword()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Lcom/sec/android/app/sbrowser/auth/password/PasswordValidator;

    invoke-direct {p2}, Lcom/sec/android/app/sbrowser/auth/password/PasswordValidator;-><init>()V

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/auth/password/PasswordValidator;->getPasswordMinLength()I

    move-result p2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v0, p2, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/auth/password/PasswordAuthenticator;->mListener:Lcom/sec/android/app/sbrowser/auth/AuthListener;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/auth/AuthListener;->onAuthFail()V

    return-void

    :cond_0
    iget-object p2, p0, Lcom/sec/android/app/sbrowser/auth/password/PasswordAuthenticator;->mSecretModeManager:Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;

    invoke-virtual {p2, p1}, Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;->checkPassword(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/auth/password/PasswordAuthenticator;->mListener:Lcom/sec/android/app/sbrowser/auth/AuthListener;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/auth/AuthListener;->onAuthSuccess()V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/auth/password/PasswordAuthenticator;->mLockModel:Lcom/sec/android/app/sbrowser/auth/LockModel;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/auth/LockModel;->getLockoutAttemptDeadline()J

    move-result-wide p1

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-eqz v0, :cond_2

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/auth/password/PasswordAuthenticator;->mListener:Lcom/sec/android/app/sbrowser/auth/AuthListener;

    invoke-interface {p0, p1, p2}, Lcom/sec/android/app/sbrowser/auth/AuthListener;->onAuthLockout(J)V

    goto :goto_0

    :cond_2
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/auth/password/PasswordAuthenticator;->mListener:Lcom/sec/android/app/sbrowser/auth/AuthListener;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/auth/AuthListener;->onAuthFail()V

    :goto_0
    return-void
.end method
