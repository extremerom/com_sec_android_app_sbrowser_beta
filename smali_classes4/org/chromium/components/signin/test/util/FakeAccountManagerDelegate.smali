.class public Lorg/chromium/components/signin/test/util/FakeAccountManagerDelegate;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/components/signin/AccountManagerDelegate;


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final mAccounts:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lorg/chromium/components/signin/test/util/AccountHolder;",
            ">;"
        }
    .end annotation
.end field

.field private mObserver:Lorg/chromium/components/signin/AccountsChangeObserver;


# direct methods
.method public static synthetic a(I)[Landroid/accounts/Account;
    .locals 0

    invoke-static {p0}, Lorg/chromium/components/signin/test/util/FakeAccountManagerDelegate;->lambda$getAccountsSynchronous$1(I)[Landroid/accounts/Account;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Ljava/lang/String;Lorg/chromium/components/signin/test/util/AccountHolder;)Z
    .locals 0

    invoke-static {p0, p1}, Lorg/chromium/components/signin/test/util/FakeAccountManagerDelegate;->lambda$tryGetAccountHolder$2(Ljava/lang/String;Lorg/chromium/components/signin/test/util/AccountHolder;)Z

    move-result p0

    return p0
.end method

.method public static synthetic c(Lorg/chromium/components/signin/test/util/AccountHolder;)Landroid/accounts/Account;
    .locals 0

    invoke-static {p0}, Lorg/chromium/components/signin/test/util/FakeAccountManagerDelegate;->lambda$getAccountsSynchronous$0(Lorg/chromium/components/signin/test/util/AccountHolder;)Landroid/accounts/Account;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$getAccountsSynchronous$0(Lorg/chromium/components/signin/test/util/AccountHolder;)Landroid/accounts/Account;
    .locals 0

    invoke-virtual {p0}, Lorg/chromium/components/signin/test/util/AccountHolder;->getAccount()Landroid/accounts/Account;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$getAccountsSynchronous$1(I)[Landroid/accounts/Account;
    .locals 0

    new-array p0, p0, [Landroid/accounts/Account;

    return-object p0
.end method

.method private static synthetic lambda$tryGetAccountHolder$2(Ljava/lang/String;Lorg/chromium/components/signin/test/util/AccountHolder;)Z
    .locals 0

    invoke-virtual {p1}, Lorg/chromium/components/signin/test/util/AccountHolder;->getAccountInfo()Lorg/chromium/components/signin/base/AccountInfo;

    move-result-object p1

    invoke-virtual {p1}, Lorg/chromium/components/signin/base/CoreAccountInfo;->getEmail()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private tryGetAccountHolder(Ljava/lang/String;)Lorg/chromium/components/signin/test/util/AccountHolder;
    .locals 3
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lorg/chromium/components/signin/test/util/FakeAccountManagerDelegate;->mAccounts:Ljava/util/Set;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lorg/chromium/components/signin/test/util/FakeAccountManagerDelegate;->mAccounts:Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v1, Lba/b;

    const/16 v2, 0x8

    invoke-direct {v1, v2, p1}, Lba/b;-><init>(ILjava/lang/Object;)V

    invoke-interface {p0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/chromium/components/signin/test/util/AccountHolder;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method


# virtual methods
.method public attachAccountsChangeObserver(Lorg/chromium/components/signin/AccountsChangeObserver;)V
    .locals 0

    iput-object p1, p0, Lorg/chromium/components/signin/test/util/FakeAccountManagerDelegate;->mObserver:Lorg/chromium/components/signin/AccountsChangeObserver;

    return-void
.end method

.method public getAccessToken(Landroid/accounts/Account;Ljava/lang/String;)Lorg/chromium/components/signin/AccessTokenData;
    .locals 1

    iget-object v0, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-direct {p0, v0}, Lorg/chromium/components/signin/test/util/FakeAccountManagerDelegate;->tryGetAccountHolder(Ljava/lang/String;)Lorg/chromium/components/signin/test/util/AccountHolder;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0, p2}, Lorg/chromium/components/signin/test/util/AccountHolder;->getAccessTokenOrGenerateNew(Ljava/lang/String;)Lorg/chromium/components/signin/AccessTokenData;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Lorg/chromium/components/signin/AuthException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Cannot get auth token for unknown account \'"

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "\'"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    invoke-direct {p0, p2, p1}, Lorg/chromium/components/signin/AuthException;-><init>(ZLjava/lang/String;)V

    throw p0
.end method

.method public getAccountGaiaId(Ljava/lang/String;)Lorg/chromium/components/signin/base/GaiaId;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    invoke-direct {p0, p1}, Lorg/chromium/components/signin/test/util/FakeAccountManagerDelegate;->tryGetAccountHolder(Ljava/lang/String;)Lorg/chromium/components/signin/test/util/AccountHolder;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lorg/chromium/components/signin/test/util/AccountHolder;->getAccountInfo()Lorg/chromium/components/signin/base/AccountInfo;

    move-result-object p0

    invoke-virtual {p0}, Lorg/chromium/components/signin/base/CoreAccountInfo;->getGaiaId()Lorg/chromium/components/signin/base/GaiaId;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public getAccountsSynchronous()[Landroid/accounts/Account;
    .locals 3

    iget-object v0, p0, Lorg/chromium/components/signin/test/util/FakeAccountManagerDelegate;->mAccounts:Ljava/util/Set;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lorg/chromium/components/signin/test/util/FakeAccountManagerDelegate;->mAccounts:Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v1, La9/b;

    const/16 v2, 0x17

    invoke-direct {v1, v2}, La9/b;-><init>(I)V

    invoke-interface {p0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v1, Lorg/chromium/components/signin/test/util/a;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    invoke-interface {p0, v1}, Ljava/util/stream/Stream;->toArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Landroid/accounts/Account;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public hasCapability(Landroid/accounts/Account;Ljava/lang/String;)I
    .locals 0

    invoke-virtual {p0, p1, p2}, Lorg/chromium/components/signin/test/util/FakeAccountManagerDelegate;->hasFeature(Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x2

    :goto_0
    return p0
.end method

.method public hasFeature(Landroid/accounts/Account;Ljava/lang/String;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public invalidateAccessToken(Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_2

    iget-object v0, p0, Lorg/chromium/components/signin/test/util/FakeAccountManagerDelegate;->mAccounts:Ljava/util/Set;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lorg/chromium/components/signin/test/util/FakeAccountManagerDelegate;->mAccounts:Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/chromium/components/signin/test/util/AccountHolder;

    invoke-virtual {v1, p1}, Lorg/chromium/components/signin/test/util/AccountHolder;->removeAccessToken(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_1
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "AuthToken can not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
