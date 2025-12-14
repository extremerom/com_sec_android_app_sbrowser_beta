.class public final Lcom/samsung/android/app/dvs/library/dvsagent/network/NetworkServiceImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/dvs/library/dvsagent/network/NetworkService;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0016J\u0008\u0010\u0007\u001a\u00020\u0008H\u0002\u00a8\u0006\t"
    }
    d2 = {
        "Lcom/samsung/android/app/dvs/library/dvsagent/network/NetworkServiceImpl;",
        "Lcom/samsung/android/app/dvs/library/dvsagent/network/NetworkService;",
        "()V",
        "attestSAK",
        "",
        "context",
        "Landroid/content/Context;",
        "getDvsService",
        "Lcom/samsung/android/app/dvs/library/dvsagent/network/DvsService;",
        "DvsAgent-INTERNAL-1.0.7_debug"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final getDvsService()Lcom/samsung/android/app/dvs/library/dvsagent/network/DvsService;
    .locals 5

    new-instance p0, Lvd/c;

    invoke-direct {p0}, Lvd/c;-><init>()V

    sget-object v0, Lvd/a;->BODY:Lvd/a;

    invoke-virtual {p0, v0}, Lvd/c;->c(Lvd/a;)V

    new-instance v0, LT3/f;

    const/4 v1, 0x5

    invoke-static {v1}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v2

    const-string v3, "newFixedThreadPool(MAX_THREAD_NUMBER)"

    invoke-static {v2, v3}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0}, LT3/f;-><init>()V

    iput-object v2, v0, LT3/f;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iput v1, v0, LT3/f;->a:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    invoke-virtual {v0}, LT3/f;->i()V

    new-instance v1, LB3/c;

    const-wide/16 v2, 0x2710

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-direct {v1, v2, v3, v4}, LB3/c;-><init>(JLjava/util/concurrent/TimeUnit;)V

    new-instance v2, Lhd/H;

    invoke-direct {v2}, Lhd/H;-><init>()V

    invoke-virtual {v2, p0}, Lhd/H;->a(Lhd/C;)V

    iput-object v0, v2, Lhd/H;->a:LT3/f;

    iput-object v1, v2, Lhd/H;->b:LB3/c;

    sget-object p0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v0, 0xa

    invoke-virtual {v2, v0, v1, p0}, Lhd/H;->b(JLjava/util/concurrent/TimeUnit;)V

    const-wide/16 v0, 0x4

    invoke-virtual {v2, v0, v1, p0}, Lhd/H;->d(JLjava/util/concurrent/TimeUnit;)V

    const-wide/16 v0, 0x8

    invoke-virtual {v2, v0, v1, p0}, Lhd/H;->c(JLjava/util/concurrent/TimeUnit;)V

    const/4 p0, 0x1

    iput-boolean p0, v2, Lhd/H;->f:Z

    new-instance p0, Lretrofit2/Retrofit$Builder;

    invoke-direct {p0}, Lretrofit2/Retrofit$Builder;-><init>()V

    const-string v0, "https://dvs-stg.samsungmobile.com"

    invoke-virtual {p0, v0}, Lretrofit2/Retrofit$Builder;->baseUrl(Ljava/lang/String;)Lretrofit2/Retrofit$Builder;

    move-result-object p0

    invoke-static {}, Lretrofit2/converter/gson/GsonConverterFactory;->create()Lretrofit2/converter/gson/GsonConverterFactory;

    move-result-object v0

    invoke-virtual {p0, v0}, Lretrofit2/Retrofit$Builder;->addConverterFactory(Lretrofit2/Converter$Factory;)Lretrofit2/Retrofit$Builder;

    move-result-object p0

    new-instance v0, Lhd/I;

    invoke-direct {v0, v2}, Lhd/I;-><init>(Lhd/H;)V

    invoke-virtual {p0, v0}, Lretrofit2/Retrofit$Builder;->client(Lhd/I;)Lretrofit2/Retrofit$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lretrofit2/Retrofit$Builder;->build()Lretrofit2/Retrofit;

    move-result-object p0

    const-string v0, "Builder()\n            .b\u2026d())\n            .build()"

    invoke-static {p0, v0}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-class v0, Lcom/samsung/android/app/dvs/library/dvsagent/network/DvsService;

    invoke-virtual {p0, v0}, Lretrofit2/Retrofit;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    const-string v0, "retrofit.create(DvsService::class.java)"

    invoke-static {p0, v0}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lcom/samsung/android/app/dvs/library/dvsagent/network/DvsService;

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public attestSAK(Landroid/content/Context;)Ljava/lang/String;
    .locals 5
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/app/dvs/library/dvsagent/utils/SYstemPropertiesUtilsKt;->isSAKSupport()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object p0, Lcom/samsung/android/app/dvs/library/dvsagent/dto/AttestResult;->NO_SAK:Lcom/samsung/android/app/dvs/library/dvsagent/dto/AttestResult;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/app/dvs/library/dvsagent/network/NetworkServiceImpl;->getDvsService()Lcom/samsung/android/app/dvs/library/dvsagent/network/DvsService;

    move-result-object p0

    invoke-static {p1}, Lcom/samsung/android/app/dvs/library/dvsagent/utils/ContextUtilsKt;->getVersionNameByPackageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Lcom/samsung/android/app/dvs/library/dvsagent/utils/SYstemPropertiesUtilsKt;->getModelName()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/samsung/android/app/dvs/library/dvsagent/utils/SYstemPropertiesUtilsKt;->getOSVersion()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, p1, v0, v1}, Lcom/samsung/android/app/dvs/library/dvsagent/network/DvsService;->getNonce(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lretrofit2/Call;

    move-result-object v2

    invoke-interface {v2}, Lretrofit2/Call;->execute()Lretrofit2/Response;

    move-result-object v2

    invoke-virtual {v2}, Lretrofit2/Response;->isSuccessful()Z

    move-result v3

    if-nez v3, :cond_1

    sget-object p0, Lcom/samsung/android/app/dvs/library/dvsagent/dto/AttestResult;->SERVER_ERROR:Lcom/samsung/android/app/dvs/library/dvsagent/dto/AttestResult;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :catch_0
    move-exception p0

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/app/dvs/library/dvsagent/dto/Nonce;

    if-nez v2, :cond_2

    sget-object p0, Lcom/samsung/android/app/dvs/library/dvsagent/dto/AttestResult;->NONCE_ERROR:Lcom/samsung/android/app/dvs/library/dvsagent/dto/AttestResult;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    new-instance v3, Lcom/samsung/android/app/dvs/library/dvsagent/dto/Authentication;

    invoke-direct {v3}, Lcom/samsung/android/app/dvs/library/dvsagent/dto/Authentication;-><init>()V

    new-instance v4, Lcom/samsung/android/app/dvs/library/dvsagent/attest/AttestManager;

    invoke-direct {v4}, Lcom/samsung/android/app/dvs/library/dvsagent/attest/AttestManager;-><init>()V

    invoke-virtual {v4, v2}, Lcom/samsung/android/app/dvs/library/dvsagent/attest/AttestManager;->getCertList(Lcom/samsung/android/app/dvs/library/dvsagent/dto/Nonce;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_3

    sget-object p0, Lcom/samsung/android/app/dvs/library/dvsagent/dto/AttestResult;->NO_SAK:Lcom/samsung/android/app/dvs/library/dvsagent/dto/AttestResult;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3
    new-instance v4, Lcom/samsung/android/app/dvs/library/dvsagent/attest/AttestManager;

    invoke-direct {v4}, Lcom/samsung/android/app/dvs/library/dvsagent/attest/AttestManager;-><init>()V

    invoke-virtual {v4, v2}, Lcom/samsung/android/app/dvs/library/dvsagent/attest/AttestManager;->getCertList(Lcom/samsung/android/app/dvs/library/dvsagent/dto/Nonce;)Ljava/util/List;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/samsung/android/app/dvs/library/dvsagent/dto/Authentication;->setCertList(Ljava/util/List;)V

    invoke-static {}, Lcom/samsung/android/app/dvs/library/dvsagent/utils/SYstemPropertiesUtilsKt;->getKeyType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/samsung/android/app/dvs/library/dvsagent/dto/Authentication;->setCertType(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/samsung/android/app/dvs/library/dvsagent/dto/Nonce;->getNonce()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/samsung/android/app/dvs/library/dvsagent/dto/Authentication;->setNonce(Ljava/lang/String;)V

    invoke-interface {p0, p1, v0, v1, v3}, Lcom/samsung/android/app/dvs/library/dvsagent/network/DvsService;->requestAuthentication(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/app/dvs/library/dvsagent/dto/Authentication;)Lretrofit2/Call;

    move-result-object p0

    invoke-interface {p0}, Lretrofit2/Call;->execute()Lretrofit2/Response;

    move-result-object p0

    invoke-virtual {p0}, Lretrofit2/Response;->isSuccessful()Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-virtual {p0}, Lretrofit2/Response;->headers()Lhd/y;

    move-result-object p0

    const-string p1, "x-session-token"

    invoke-virtual {p0, p1}, Lhd/y;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_4

    return-object p0

    :cond_4
    sget-object p0, Lcom/samsung/android/app/dvs/library/dvsagent/dto/AttestResult;->SERVER_ERROR:Lcom/samsung/android/app/dvs/library/dvsagent/dto/AttestResult;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_5
    sget-object p0, Lcom/samsung/android/app/dvs/library/dvsagent/dto/AttestResult;->ATTEST_FAIL:Lcom/samsung/android/app/dvs/library/dvsagent/dto/AttestResult;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :goto_0
    sget-object p1, Lcom/samsung/android/app/dvs/library/dvsagent/log/LogCompat$Raw;->INSTANCE:Lcom/samsung/android/app/dvs/library/dvsagent/log/LogCompat$Raw;

    invoke-static {p0}, LG5/y2;->d(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/samsung/android/app/dvs/library/dvsagent/log/LogCompat$Raw;->i(Ljava/lang/String;)V

    sget-object p0, Lcom/samsung/android/app/dvs/library/dvsagent/dto/AttestResult;->SOCKET_TIMEOUT:Lcom/samsung/android/app/dvs/library/dvsagent/dto/AttestResult;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
