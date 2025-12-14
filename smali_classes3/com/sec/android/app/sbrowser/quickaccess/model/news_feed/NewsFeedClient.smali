.class public final Lcom/sec/android/app/sbrowser/quickaccess/model/news_feed/NewsFeedClient;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/compose/runtime/internal/StabilityInferred;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/quickaccess/model/news_feed/NewsFeedClient$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0008\u0007\u0018\u0000 \u00132\u00020\u0001:\u0001\u0013B\u0011\u0012\u0008\u0008\u0002\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u001e\u0010\u000b\u001a\u0010\u0012\u000c\u0012\n\u0012\u0004\u0012\u00020\u0008\u0018\u00010\u00070\u0006H\u0086@\u00a2\u0006\u0004\u0008\t\u0010\nJ$\u0010\u0010\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\r0\u00070\u00062\u0006\u0010\u000c\u001a\u00020\u0008H\u0086@\u00a2\u0006\u0004\u0008\u000e\u0010\u000fR\u0014\u0010\u0011\u001a\u00020\u00028\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0011\u0010\u0012\u00a8\u0006\u0014"
    }
    d2 = {
        "Lcom/sec/android/app/sbrowser/quickaccess/model/news_feed/NewsFeedClient;",
        "",
        "Lcom/sec/android/app/sbrowser/quickaccess/model/news_feed/NewsFeedApiService;",
        "apiService",
        "<init>",
        "(Lcom/sec/android/app/sbrowser/quickaccess/model/news_feed/NewsFeedApiService;)V",
        "Ldb/m;",
        "",
        "",
        "fetchCategories-IoAF18A",
        "(Lib/c;)Ljava/lang/Object;",
        "fetchCategories",
        "category",
        "Lcom/sec/android/app/sbrowser/quickaccess/model/news_feed/NewsFeedItemDto;",
        "fetchNewsItems-gIAlu-s",
        "(Ljava/lang/String;Lib/c;)Ljava/lang/Object;",
        "fetchNewsItems",
        "newsFeedApiClientService",
        "Lcom/sec/android/app/sbrowser/quickaccess/model/news_feed/NewsFeedApiService;",
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
.field public static final $stable:I

.field public static final Companion:Lcom/sec/android/app/sbrowser/quickaccess/model/news_feed/NewsFeedClient$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final newsFeedApiClientService:Lcom/sec/android/app/sbrowser/quickaccess/model/news_feed/NewsFeedApiService;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/sec/android/app/sbrowser/quickaccess/model/news_feed/NewsFeedClient$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/sec/android/app/sbrowser/quickaccess/model/news_feed/NewsFeedClient$Companion;-><init>(Ltb/f;)V

    sput-object v0, Lcom/sec/android/app/sbrowser/quickaccess/model/news_feed/NewsFeedClient;->Companion:Lcom/sec/android/app/sbrowser/quickaccess/model/news_feed/NewsFeedClient$Companion;

    const/16 v0, 0x8

    sput v0, Lcom/sec/android/app/sbrowser/quickaccess/model/news_feed/NewsFeedClient;->$stable:I

    return-void
.end method

.method public constructor <init>(Lcom/sec/android/app/sbrowser/quickaccess/model/news_feed/NewsFeedApiService;)V
    .locals 1
    .param p1    # Lcom/sec/android/app/sbrowser/quickaccess/model/news_feed/NewsFeedApiService;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "apiService"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/news_feed/NewsFeedClient;->newsFeedApiClientService:Lcom/sec/android/app/sbrowser/quickaccess/model/news_feed/NewsFeedApiService;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/sec/android/app/sbrowser/quickaccess/model/news_feed/NewsFeedApiService;ILtb/f;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    sget-object p1, Lcom/sec/android/app/sbrowser/quickaccess/model/news_feed/NewsFeedRetrofitInstance;->INSTANCE:Lcom/sec/android/app/sbrowser/quickaccess/model/news_feed/NewsFeedRetrofitInstance;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/quickaccess/model/news_feed/NewsFeedRetrofitInstance;->getRetrofitService()Lcom/sec/android/app/sbrowser/quickaccess/model/news_feed/NewsFeedApiService;

    move-result-object p1

    :cond_0
    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/model/news_feed/NewsFeedClient;-><init>(Lcom/sec/android/app/sbrowser/quickaccess/model/news_feed/NewsFeedApiService;)V

    return-void
.end method


# virtual methods
.method public final fetchCategories-IoAF18A(Lib/c;)Ljava/lang/Object;
    .locals 6
    .param p1    # Lib/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lib/c<",
            "-",
            "Ldb/m;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string v0, "fetchCategories country: "

    instance-of v1, p1, Lcom/sec/android/app/sbrowser/quickaccess/model/news_feed/NewsFeedClient$fetchCategories$1;

    if-eqz v1, :cond_0

    move-object v1, p1

    check-cast v1, Lcom/sec/android/app/sbrowser/quickaccess/model/news_feed/NewsFeedClient$fetchCategories$1;

    iget v2, v1, Lcom/sec/android/app/sbrowser/quickaccess/model/news_feed/NewsFeedClient$fetchCategories$1;->label:I

    const/high16 v3, -0x80000000

    and-int v4, v2, v3

    if-eqz v4, :cond_0

    sub-int/2addr v2, v3

    iput v2, v1, Lcom/sec/android/app/sbrowser/quickaccess/model/news_feed/NewsFeedClient$fetchCategories$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/sec/android/app/sbrowser/quickaccess/model/news_feed/NewsFeedClient$fetchCategories$1;

    invoke-direct {v1, p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/model/news_feed/NewsFeedClient$fetchCategories$1;-><init>(Lcom/sec/android/app/sbrowser/quickaccess/model/news_feed/NewsFeedClient;Lib/c;)V

    :goto_0
    iget-object p1, v1, Lcom/sec/android/app/sbrowser/quickaccess/model/news_feed/NewsFeedClient$fetchCategories$1;->result:Ljava/lang/Object;

    sget-object v2, Ljb/a;->COROUTINE_SUSPENDED:Ljb/a;

    iget v3, v1, Lcom/sec/android/app/sbrowser/quickaccess/model/news_feed/NewsFeedClient$fetchCategories$1;->label:I

    const-string v4, "NewsFeedClient"

    const/4 v5, 0x1

    if-eqz v3, :cond_2

    if-ne v3, v5, :cond_1

    :try_start_0
    invoke-static {p1}, LG5/A2;->f(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {p1}, LG5/A2;->f(Ljava/lang/Object;)V

    :try_start_1
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/CountryUtil;->getCountryIso()Ljava/lang/String;

    move-result-object p1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/news_feed/NewsFeedClient;->newsFeedApiClientService:Lcom/sec/android/app/sbrowser/quickaccess/model/news_feed/NewsFeedApiService;

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/CountryUtil;->getCountryIso()Ljava/lang/String;

    move-result-object p1

    const-string v0, "getCountryIso(...)"

    invoke-static {p1, v0}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "toLowerCase(...)"

    invoke-static {p1, v0}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iput v5, v1, Lcom/sec/android/app/sbrowser/quickaccess/model/news_feed/NewsFeedClient$fetchCategories$1;->label:I

    invoke-interface {p0, p1, v1}, Lcom/sec/android/app/sbrowser/quickaccess/model/news_feed/NewsFeedApiService;->getCategoriesList(Ljava/lang/String;Lib/c;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v2, :cond_3

    return-object v2

    :cond_3
    :goto_1
    check-cast p1, Lretrofit2/Response;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {p1}, Lretrofit2/Response;->isSuccessful()Z

    move-result p0

    if-eqz p0, :cond_5

    invoke-virtual {p1}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/sbrowser/quickaccess/model/news_feed/NewsFeedCategoriesResponse;

    if-eqz p0, :cond_4

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/quickaccess/model/news_feed/NewsFeedCategoriesResponse;->getNameList()Ljava/util/List;

    move-result-object p0

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

    invoke-virtual {p1}, Lretrofit2/Response;->message()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, LG5/A2;->c(Ljava/lang/Throwable;)Ldb/l;

    move-result-object p0

    return-object p0

    :goto_2
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Failed to get news feed categories url: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0}, LG5/A2;->c(Ljava/lang/Throwable;)Ldb/l;

    move-result-object p0

    return-object p0
.end method

.method public final fetchNewsItems-gIAlu-s(Ljava/lang/String;Lib/c;)Ljava/lang/Object;
    .locals 6
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lib/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lib/c<",
            "-",
            "Ldb/m;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    instance-of v0, p2, Lcom/sec/android/app/sbrowser/quickaccess/model/news_feed/NewsFeedClient$fetchNewsItems$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/sec/android/app/sbrowser/quickaccess/model/news_feed/NewsFeedClient$fetchNewsItems$1;

    iget v1, v0, Lcom/sec/android/app/sbrowser/quickaccess/model/news_feed/NewsFeedClient$fetchNewsItems$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/sec/android/app/sbrowser/quickaccess/model/news_feed/NewsFeedClient$fetchNewsItems$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/sec/android/app/sbrowser/quickaccess/model/news_feed/NewsFeedClient$fetchNewsItems$1;

    invoke-direct {v0, p0, p2}, Lcom/sec/android/app/sbrowser/quickaccess/model/news_feed/NewsFeedClient$fetchNewsItems$1;-><init>(Lcom/sec/android/app/sbrowser/quickaccess/model/news_feed/NewsFeedClient;Lib/c;)V

    :goto_0
    iget-object p2, v0, Lcom/sec/android/app/sbrowser/quickaccess/model/news_feed/NewsFeedClient$fetchNewsItems$1;->result:Ljava/lang/Object;

    sget-object v1, Ljb/a;->COROUTINE_SUSPENDED:Ljb/a;

    iget v2, v0, Lcom/sec/android/app/sbrowser/quickaccess/model/news_feed/NewsFeedClient$fetchNewsItems$1;->label:I

    const-string v3, "fetchNewsItem category: "

    const/4 v4, 0x1

    const-string v5, "NewsFeedClient"

    if-eqz v2, :cond_2

    if-ne v2, v4, :cond_1

    iget-object p0, v0, Lcom/sec/android/app/sbrowser/quickaccess/model/news_feed/NewsFeedClient$fetchNewsItems$1;->L$0:Ljava/lang/Object;

    move-object p1, p0

    check-cast p1, Ljava/lang/String;

    :try_start_0
    invoke-static {p2}, LG5/A2;->f(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    goto/16 :goto_2

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {p2}, LG5/A2;->f(Ljava/lang/Object;)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " fetch started"

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v5, p2}, Lcom/sec/android/app/sbrowser/common/device/EngLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_1
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/news_feed/NewsFeedClient;->newsFeedApiClientService:Lcom/sec/android/app/sbrowser/quickaccess/model/news_feed/NewsFeedApiService;

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/CountryUtil;->getCountryIso()Ljava/lang/String;

    move-result-object p2

    const-string v2, "getCountryIso(...)"

    invoke-static {p2, v2}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p2, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p2

    const-string v2, "toLowerCase(...)"

    invoke-static {p2, v2}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, v0, Lcom/sec/android/app/sbrowser/quickaccess/model/news_feed/NewsFeedClient$fetchNewsItems$1;->L$0:Ljava/lang/Object;

    iput v4, v0, Lcom/sec/android/app/sbrowser/quickaccess/model/news_feed/NewsFeedClient$fetchNewsItems$1;->label:I

    invoke-interface {p0, p2, p1, v0}, Lcom/sec/android/app/sbrowser/quickaccess/model/news_feed/NewsFeedApiService;->getNewsItems(Ljava/lang/String;Ljava/lang/String;Lib/c;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    check-cast p2, Lretrofit2/Response;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " response: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v5, p0}, Lcom/sec/android/app/sbrowser/common/device/EngLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p2}, Lretrofit2/Response;->isSuccessful()Z

    move-result p0

    if-eqz p0, :cond_5

    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

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

    invoke-virtual {p2}, Lretrofit2/Response;->message()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, LG5/A2;->c(Ljava/lang/Throwable;)Ldb/l;

    move-result-object p0

    return-object p0

    :goto_2
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Failed to get news items: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v5, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0}, LG5/A2;->c(Ljava/lang/Throwable;)Ldb/l;

    move-result-object p0

    return-object p0
.end method
