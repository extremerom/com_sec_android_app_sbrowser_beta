.class public Lorg/chromium/components/signin/SystemAccountManagerDelegate;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/components/signin/AccountManagerDelegate;


# annotations
.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final mAccountManager:Landroid/accounts/AccountManager;

.field private mObserver:Lorg/chromium/components/signin/AccountsChangeObserver;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-static {}, Lorg/chromium/base/ContextUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/chromium/components/signin/SystemAccountManagerDelegate;-><init>(Landroid/accounts/AccountManager;)V

    return-void
.end method

.method public constructor <init>(Landroid/accounts/AccountManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/chromium/components/signin/SystemAccountManagerDelegate;->mAccountManager:Landroid/accounts/AccountManager;

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/chromium/components/signin/SystemAccountManagerDelegate;->mObserver:Lorg/chromium/components/signin/AccountsChangeObserver;

    return-void
.end method

.method public static bridge synthetic a(Lorg/chromium/components/signin/SystemAccountManagerDelegate;)Lorg/chromium/components/signin/AccountsChangeObserver;
    .locals 0

    iget-object p0, p0, Lorg/chromium/components/signin/SystemAccountManagerDelegate;->mObserver:Lorg/chromium/components/signin/AccountsChangeObserver;

    return-object p0
.end method


# virtual methods
.method public attachAccountsChangeObserver(Lorg/chromium/components/signin/AccountsChangeObserver;)V
    .locals 3

    iput-object p1, p0, Lorg/chromium/components/signin/SystemAccountManagerDelegate;->mObserver:Lorg/chromium/components/signin/AccountsChangeObserver;

    invoke-static {}, Lorg/chromium/base/ContextUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    new-instance v0, Lorg/chromium/components/signin/SystemAccountManagerDelegate$1;

    invoke-direct {v0, p0}, Lorg/chromium/components/signin/SystemAccountManagerDelegate$1;-><init>(Lorg/chromium/components/signin/SystemAccountManagerDelegate;)V

    new-instance p0, Landroid/content/IntentFilter;

    invoke-direct {p0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.accounts.LOGIN_ACCOUNTS_CHANGED"

    invoke-virtual {p0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-static {p1, v0, p0}, Lorg/chromium/base/ContextUtils;->registerProtectedBroadcastReceiver(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance p0, Landroid/content/IntentFilter;

    invoke-direct {p0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual {p0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "package"

    invoke-virtual {p0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    const-string v1, "com.google.android.gms"

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Landroid/content/IntentFilter;->addDataPath(Ljava/lang/String;I)V

    invoke-static {p1, v0, p0}, Lorg/chromium/base/ContextUtils;->registerProtectedBroadcastReceiver(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public getAccessToken(Landroid/accounts/Account;Ljava/lang/String;)Lorg/chromium/components/signin/AccessTokenData;
    .locals 2
    .annotation build Lorg/chromium/build/annotations/NullUnmarked;
    .end annotation

    invoke-static {}, Lorg/chromium/base/ThreadUtils;->assertOnBackgroundThread()V

    :try_start_0
    new-instance p0, Lorg/chromium/components/signin/AccessTokenData;

    invoke-static {}, Lorg/chromium/base/ContextUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1, p2}, LT4/b;->c(Landroid/content/Context;Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/chromium/components/signin/AccessTokenData;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch LT4/a; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p0

    goto :goto_1

    :goto_0
    new-instance p1, Lorg/chromium/components/signin/AuthException;

    const/4 p2, 0x1

    invoke-direct {p1, p2, p0}, Lorg/chromium/components/signin/AuthException;-><init>(ZLjava/lang/Exception;)V

    throw p1

    :goto_1
    new-instance p1, Lorg/chromium/components/signin/AuthException;

    const-string v0, "Error while getting token for scope \'"

    const-string v1, "\'"

    invoke-static {v0, p2, v1}, LV0/c;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    invoke-direct {p1, v0, p2, p0}, Lorg/chromium/components/signin/AuthException;-><init>(ZLjava/lang/String;Ljava/lang/Exception;)V

    throw p1
.end method

.method public getAccountGaiaId(Ljava/lang/String;)Lorg/chromium/components/signin/base/GaiaId;
    .locals 1

    :try_start_0
    new-instance p0, Lorg/chromium/components/signin/base/GaiaId;

    invoke-static {}, Lorg/chromium/base/ContextUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, LT4/b;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/chromium/components/signin/base/GaiaId;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch LT4/a; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    const-string p1, "Auth"

    const-string v0, "SystemAccountManagerDelegate.getAccountGaiaId"

    invoke-static {p1, v0, p0}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public getAccountsSynchronous()[Landroid/accounts/Account;
    .locals 4

    invoke-virtual {p0}, Lorg/chromium/components/signin/SystemAccountManagerDelegate;->isGooglePlayServicesAvailable()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lorg/chromium/components/signin/SystemAccountManagerDelegate;->hasGetAccountsPermission()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-object p0, p0, Lorg/chromium/components/signin/SystemAccountManagerDelegate;->mAccountManager:Landroid/accounts/AccountManager;

    const-string v2, "com.google"

    invoke-virtual {p0, v2}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object p0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sub-long/2addr v2, v0

    const-string v0, "Signin.AndroidGetAccountsTime_AccountManager"

    invoke-static {v0, v2, v3}, Lorg/chromium/base/metrics/RecordHistogram;->recordTimesHistogram(Ljava/lang/String;J)V

    return-object p0

    :cond_0
    const/4 p0, 0x0

    new-array p0, p0, [Landroid/accounts/Account;

    return-object p0

    :cond_1
    new-instance p0, Lorg/chromium/components/signin/AccountManagerDelegateException;

    const-string v0, "Can\'t use Google Play Services"

    invoke-direct {p0, v0}, Lorg/chromium/components/signin/AccountManagerDelegateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public hasCapability(Landroid/accounts/Account;Ljava/lang/String;)I
    .locals 0

    const/16 p0, 0xf

    const/16 p1, 0x15

    const-string p2, "Signin.AccountCapabilities.GetFromSystemLibraryResult"

    invoke-static {p2, p0, p1}, Lorg/chromium/base/metrics/RecordHistogram;->recordEnumeratedHistogram(Ljava/lang/String;II)V

    const/4 p0, 0x0

    return p0
.end method

.method public hasFeature(Landroid/accounts/Account;Ljava/lang/String;)Z
    .locals 0

    filled-new-array {p2}, [Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lorg/chromium/components/signin/SystemAccountManagerDelegate;->hasFeatures(Landroid/accounts/Account;[Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public hasFeatures(Landroid/accounts/Account;[Ljava/lang/String;)Z
    .locals 1

    invoke-virtual {p0}, Lorg/chromium/components/signin/SystemAccountManagerDelegate;->hasGetAccountsPermission()Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object p0, p0, Lorg/chromium/components/signin/SystemAccountManagerDelegate;->mAccountManager:Landroid/accounts/AccountManager;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, v0}, Landroid/accounts/AccountManager;->hasFeatures(Landroid/accounts/Account;[Ljava/lang/String;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    move-result-object p0

    invoke-interface {p0}, Landroid/accounts/AccountManagerFuture;->getResult()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0
    :try_end_0
    .catch Landroid/accounts/AuthenticatorException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/accounts/OperationCanceledException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    const-string p1, "Auth"

    const-string p2, "Error while checking features: "

    invoke-static {p1, p2, p0}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public hasGetAccountsPermission()Z
    .locals 3

    invoke-static {}, Lorg/chromium/base/ContextUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    const-string v2, "android.permission.GET_ACCOUNTS"

    invoke-static {p0, v2, v0, v1}, Lorg/chromium/base/ApiCompatibilityUtils;->checkPermission(Landroid/content/Context;Ljava/lang/String;II)I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public invalidateAccessToken(Ljava/lang/String;)V
    .locals 1

    :try_start_0
    invoke-static {}, Lorg/chromium/base/ContextUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, p1}, LT4/b;->a(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catch LT4/a; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p0

    goto :goto_1

    :goto_0
    new-instance p1, Lorg/chromium/components/signin/AuthException;

    const/4 v0, 0x1

    invoke-direct {p1, v0, p0}, Lorg/chromium/components/signin/AuthException;-><init>(ZLjava/lang/Exception;)V

    throw p1

    :goto_1
    new-instance p1, Lorg/chromium/components/signin/AuthException;

    const/4 v0, 0x0

    invoke-direct {p1, v0, p0}, Lorg/chromium/components/signin/AuthException;-><init>(ZLjava/lang/Exception;)V

    throw p1
.end method

.method public isGooglePlayServicesAvailable()Z
    .locals 0

    invoke-static {}, Lorg/chromium/components/externalauth/ExternalAuthUtils;->getInstance()Lorg/chromium/components/externalauth/ExternalAuthUtils;

    move-result-object p0

    invoke-virtual {p0}, Lorg/chromium/components/externalauth/ExternalAuthUtils;->canUseGooglePlayServices()Z

    move-result p0

    return p0
.end method
