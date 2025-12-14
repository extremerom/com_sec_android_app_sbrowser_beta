.class public Lorg/chromium/components/signin/test/util/AccountHolder;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final mAccessTokens:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/chromium/components/signin/AccessTokenData;",
            ">;"
        }
    .end annotation
.end field

.field private mAccountInfo:Lorg/chromium/components/signin/base/AccountInfo;


# direct methods
.method public static synthetic a(Ljava/lang/String;)Lorg/chromium/components/signin/AccessTokenData;
    .locals 0

    invoke-static {p0}, Lorg/chromium/components/signin/test/util/AccountHolder;->lambda$getAccessTokenOrGenerateNew$0(Ljava/lang/String;)Lorg/chromium/components/signin/AccessTokenData;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$getAccessTokenOrGenerateNew$0(Ljava/lang/String;)Lorg/chromium/components/signin/AccessTokenData;
    .locals 1

    new-instance p0, Lorg/chromium/components/signin/AccessTokenData;

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/chromium/components/signin/AccessTokenData;-><init>(Ljava/lang/String;)V

    return-object p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Lorg/chromium/components/signin/test/util/AccountHolder;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lorg/chromium/components/signin/test/util/AccountHolder;->mAccountInfo:Lorg/chromium/components/signin/base/AccountInfo;

    check-cast p1, Lorg/chromium/components/signin/test/util/AccountHolder;

    iget-object p1, p1, Lorg/chromium/components/signin/test/util/AccountHolder;->mAccountInfo:Lorg/chromium/components/signin/base/AccountInfo;

    invoke-virtual {p0, p1}, Lorg/chromium/components/signin/base/CoreAccountInfo;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public getAccessTokenOrGenerateNew(Ljava/lang/String;)Lorg/chromium/components/signin/AccessTokenData;
    .locals 2
    .annotation build Landroidx/annotation/AnyThread;
    .end annotation

    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Lorg/chromium/components/signin/test/util/AccountHolder;->mAccessTokens:Ljava/util/Map;

    new-instance v0, La9/b;

    const/16 v1, 0x16

    invoke-direct {v0, v1}, La9/b;-><init>(I)V

    invoke-interface {p0, p1, v0}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/chromium/components/signin/AccessTokenData;

    return-object p0
.end method

.method public getAccount()Landroid/accounts/Account;
    .locals 0

    iget-object p0, p0, Lorg/chromium/components/signin/test/util/AccountHolder;->mAccountInfo:Lorg/chromium/components/signin/base/AccountInfo;

    invoke-static {p0}, Lorg/chromium/components/signin/base/CoreAccountInfo;->getAndroidAccountFrom(Lorg/chromium/components/signin/base/CoreAccountInfo;)Landroid/accounts/Account;

    move-result-object p0

    return-object p0
.end method

.method public getAccountInfo()Lorg/chromium/components/signin/base/AccountInfo;
    .locals 0

    iget-object p0, p0, Lorg/chromium/components/signin/test/util/AccountHolder;->mAccountInfo:Lorg/chromium/components/signin/base/AccountInfo;

    return-object p0
.end method

.method public hashCode()I
    .locals 0

    iget-object p0, p0, Lorg/chromium/components/signin/test/util/AccountHolder;->mAccountInfo:Lorg/chromium/components/signin/base/AccountInfo;

    invoke-virtual {p0}, Lorg/chromium/components/signin/base/CoreAccountInfo;->hashCode()I

    move-result p0

    return p0
.end method

.method public removeAccessToken(Ljava/lang/String;)Z
    .locals 4

    iget-object v0, p0, Lorg/chromium/components/signin/test/util/AccountHolder;->mAccessTokens:Ljava/util/Map;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lorg/chromium/components/signin/test/util/AccountHolder;->mAccessTokens:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/chromium/components/signin/AccessTokenData;

    invoke-virtual {v3}, Lorg/chromium/components/signin/AccessTokenData;->getToken()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_2

    monitor-exit v0

    const/4 p0, 0x0

    return p0

    :cond_2
    iget-object p0, p0, Lorg/chromium/components/signin/test/util/AccountHolder;->mAccessTokens:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v0

    const/4 p0, 0x1

    return p0

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
