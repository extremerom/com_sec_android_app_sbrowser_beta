.class public final Lcom/sec/android/app/sbrowser/search_window/model/data_lake/client/DataLakeClient;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/compose/runtime/internal/StabilityInferred;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/search_window/model/data_lake/client/DataLakeClient$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0007\u0018\u0000 \u00102\u00020\u0001:\u0001\u0010B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u000f\u0010\u0005\u001a\u00020\u0004H\u0002\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J&\u0010\u000f\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\u000b2\u0006\u0010\u0008\u001a\u00020\u00072\u0006\u0010\n\u001a\u00020\tH\u0086@\u00a2\u0006\u0004\u0008\r\u0010\u000e\u00a8\u0006\u0011"
    }
    d2 = {
        "Lcom/sec/android/app/sbrowser/search_window/model/data_lake/client/DataLakeClient;",
        "",
        "<init>",
        "()V",
        "Lcom/sec/android/app/sbrowser/search_window/model/data_lake/client/DataLakeApiService;",
        "getApiClientService",
        "()Lcom/sec/android/app/sbrowser/search_window/model/data_lake/client/DataLakeApiService;",
        "",
        "query",
        "",
        "size",
        "Ldb/m;",
        "Lcom/sec/android/app/sbrowser/search_window/model/data_lake/DataLakeResponse;",
        "getSites-0E7RQCE",
        "(Ljava/lang/String;ILib/c;)Ljava/lang/Object;",
        "getSites",
        "Companion",
        "SBrowser_highendBetaGlobal64Release"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final Companion:Lcom/sec/android/app/sbrowser/search_window/model/data_lake/client/DataLakeClient$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/sec/android/app/sbrowser/search_window/model/data_lake/client/DataLakeClient$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/sec/android/app/sbrowser/search_window/model/data_lake/client/DataLakeClient$Companion;-><init>(Ltb/f;)V

    sput-object v0, Lcom/sec/android/app/sbrowser/search_window/model/data_lake/client/DataLakeClient;->Companion:Lcom/sec/android/app/sbrowser/search_window/model/data_lake/client/DataLakeClient$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final getApiClientService()Lcom/sec/android/app/sbrowser/search_window/model/data_lake/client/DataLakeApiService;
    .locals 0

    sget-object p0, Lcom/sec/android/app/sbrowser/search_window/model/data_lake/client/DataLakeApi;->INSTANCE:Lcom/sec/android/app/sbrowser/search_window/model/data_lake/client/DataLakeApi;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/search_window/model/data_lake/client/DataLakeApi;->getRetrofitService()Lcom/sec/android/app/sbrowser/search_window/model/data_lake/client/DataLakeApiService;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final getSites-0E7RQCE(Ljava/lang/String;ILib/c;)Ljava/lang/Object;
    .locals 11
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lib/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Lib/c<",
            "-",
            "Ldb/m;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    instance-of v0, p3, Lcom/sec/android/app/sbrowser/search_window/model/data_lake/client/DataLakeClient$getSites$1;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Lcom/sec/android/app/sbrowser/search_window/model/data_lake/client/DataLakeClient$getSites$1;

    iget v1, v0, Lcom/sec/android/app/sbrowser/search_window/model/data_lake/client/DataLakeClient$getSites$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/sec/android/app/sbrowser/search_window/model/data_lake/client/DataLakeClient$getSites$1;->label:I

    :goto_0
    move-object v7, v0

    goto :goto_1

    :cond_0
    new-instance v0, Lcom/sec/android/app/sbrowser/search_window/model/data_lake/client/DataLakeClient$getSites$1;

    invoke-direct {v0, p0, p3}, Lcom/sec/android/app/sbrowser/search_window/model/data_lake/client/DataLakeClient$getSites$1;-><init>(Lcom/sec/android/app/sbrowser/search_window/model/data_lake/client/DataLakeClient;Lib/c;)V

    goto :goto_0

    :goto_1
    iget-object p3, v7, Lcom/sec/android/app/sbrowser/search_window/model/data_lake/client/DataLakeClient$getSites$1;->result:Ljava/lang/Object;

    sget-object v0, Ljb/a;->COROUTINE_SUSPENDED:Ljb/a;

    iget v1, v7, Lcom/sec/android/app/sbrowser/search_window/model/data_lake/client/DataLakeClient$getSites$1;->label:I

    const/4 v2, 0x1

    const-string v10, "DataLakeClient"

    if-eqz v1, :cond_2

    if-ne v1, v2, :cond_1

    :try_start_0
    invoke-static {p3}, LG5/A2;->f(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p0

    goto :goto_3

    :catch_0
    move-exception p0

    goto :goto_4

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {p3}, LG5/A2;->f(Ljava/lang/Object;)V

    const-string p3, "getSites()"

    invoke-static {v10, p3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_1
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/search_window/model/data_lake/client/DataLakeClient;->getApiClientService()Lcom/sec/android/app/sbrowser/search_window/model/data_lake/client/DataLakeApiService;

    move-result-object v1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/CountryUtil;->getCountryIso()Ljava/lang/String;

    move-result-object p0

    const-string p3, "getCountryIso(...)"

    invoke-static {p0, p3}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iput v2, v7, Lcom/sec/android/app/sbrowser/search_window/model/data_lake/client/DataLakeClient$getSites$1;->label:I

    const/16 v8, 0xc

    const/4 v9, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v2, p0

    move-object v3, p1

    move v6, p2

    invoke-static/range {v1 .. v9}, Lcom/sec/android/app/sbrowser/search_window/model/data_lake/client/DataLakeApiService$DefaultImpls;->getSites$default(Lcom/sec/android/app/sbrowser/search_window/model/data_lake/client/DataLakeApiService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILib/c;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    if-ne p3, v0, :cond_3

    return-object v0

    :cond_3
    :goto_2
    check-cast p3, Lretrofit2/Response;
    :try_end_1
    .catch Ljava/util/concurrent/CancellationException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {p3}, Lretrofit2/Response;->isSuccessful()Z

    move-result p0

    if-eqz p0, :cond_5

    invoke-virtual {p3}, Lretrofit2/Response;->code()I

    move-result p0

    const/16 p1, 0xc8

    if-ne p0, p1, :cond_5

    invoke-virtual {p3}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/sbrowser/search_window/model/data_lake/DataLakeResponse;

    if-eqz p0, :cond_4

    return-object p0

    :cond_4
    new-instance p0, Ljava/lang/Exception;

    const-string p1, "body is empty"

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, LG5/A2;->c(Ljava/lang/Throwable;)Ldb/l;

    move-result-object p0

    return-object p0

    :cond_5
    new-instance p0, Ljava/lang/Exception;

    invoke-virtual {p3}, Lretrofit2/Response;->message()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, LG5/A2;->c(Ljava/lang/Throwable;)Ldb/l;

    move-result-object p0

    return-object p0

    :goto_3
    const-string p1, "Failed to get sites"

    invoke-static {v10, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-static {p0}, LG5/A2;->c(Ljava/lang/Throwable;)Ldb/l;

    move-result-object p0

    return-object p0

    :goto_4
    const-string p1, "Cancel getSites()"

    invoke-static {v10, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    throw p0
.end method
