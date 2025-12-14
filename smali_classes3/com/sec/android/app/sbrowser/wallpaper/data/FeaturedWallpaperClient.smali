.class public final Lcom/sec/android/app/sbrowser/wallpaper/data/FeaturedWallpaperClient;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/compose/runtime/internal/StabilityInferred;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/wallpaper/data/FeaturedWallpaperClient$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000D\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0007\u0018\u0000 \u00192\u00020\u0001:\u0001\u0019B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u000f\u0010\u0005\u001a\u00020\u0004H\u0002\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\u0018\u0010\u000b\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00080\u0007H\u0086@\u00a2\u0006\u0004\u0008\t\u0010\nJ \u0010\u0011\u001a\u0008\u0012\u0004\u0012\u00020\u000e0\u00072\u0008\u0010\r\u001a\u0004\u0018\u00010\u000cH\u0086@\u00a2\u0006\u0004\u0008\u000f\u0010\u0010J<\u0010\u0011\u001a\u001a\u0012\u0016\u0012\u0014\u0012\u0004\u0012\u00020\u0012\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00160\u00150\u00140\u00072\u0008\u0010\r\u001a\u0004\u0018\u00010\u000c2\u0008\u0008\u0002\u0010\u0013\u001a\u00020\u0012H\u0086@\u00a2\u0006\u0004\u0008\u0017\u0010\u0018\u00a8\u0006\u001a"
    }
    d2 = {
        "Lcom/sec/android/app/sbrowser/wallpaper/data/FeaturedWallpaperClient;",
        "",
        "<init>",
        "()V",
        "Lcom/sec/android/app/sbrowser/wallpaper/data/FeaturedWallpaperUrlApiService;",
        "getApiClientServiceForFeaturedWallpaperUrl",
        "()Lcom/sec/android/app/sbrowser/wallpaper/data/FeaturedWallpaperUrlApiService;",
        "Ldb/m;",
        "Lcom/sec/android/app/sbrowser/wallpaper/data/FeaturedCategoriesResponse;",
        "fetchFeaturedCategories-IoAF18A",
        "(Lib/c;)Ljava/lang/Object;",
        "fetchFeaturedCategories",
        "",
        "category",
        "Lcom/sec/android/app/sbrowser/wallpaper/data/CategoryWallpapersUrlResponse;",
        "fetchCategoryWallpapersUrl-gIAlu-s",
        "(Ljava/lang/String;Lib/c;)Ljava/lang/Object;",
        "fetchCategoryWallpapersUrl",
        "",
        "page",
        "Ldb/j;",
        "",
        "Lcom/sec/android/app/sbrowser/wallpaper/data/CategoryThumbnailData;",
        "fetchCategoryWallpapersUrl-0E7RQCE",
        "(Ljava/lang/String;ILib/c;)Ljava/lang/Object;",
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

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
.end annotation


# static fields
.field public static final Companion:Lcom/sec/android/app/sbrowser/wallpaper/data/FeaturedWallpaperClient$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/sec/android/app/sbrowser/wallpaper/data/FeaturedWallpaperClient$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/sec/android/app/sbrowser/wallpaper/data/FeaturedWallpaperClient$Companion;-><init>(Ltb/f;)V

    sput-object v0, Lcom/sec/android/app/sbrowser/wallpaper/data/FeaturedWallpaperClient;->Companion:Lcom/sec/android/app/sbrowser/wallpaper/data/FeaturedWallpaperClient$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final getApiClientServiceForFeaturedWallpaperUrl()Lcom/sec/android/app/sbrowser/wallpaper/data/FeaturedWallpaperUrlApiService;
    .locals 0

    sget-object p0, Lcom/sec/android/app/sbrowser/wallpaper/data/WallpaperUrlApi;->INSTANCE:Lcom/sec/android/app/sbrowser/wallpaper/data/WallpaperUrlApi;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/wallpaper/data/WallpaperUrlApi;->getRetrofitService()Lcom/sec/android/app/sbrowser/wallpaper/data/FeaturedWallpaperUrlApiService;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final fetchCategoryWallpapersUrl-0E7RQCE(Ljava/lang/String;ILib/c;)Ljava/lang/Object;
    .locals 8
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
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

    instance-of v0, p3, Lcom/sec/android/app/sbrowser/wallpaper/data/FeaturedWallpaperClient$fetchCategoryWallpapersUrl$3;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Lcom/sec/android/app/sbrowser/wallpaper/data/FeaturedWallpaperClient$fetchCategoryWallpapersUrl$3;

    iget v1, v0, Lcom/sec/android/app/sbrowser/wallpaper/data/FeaturedWallpaperClient$fetchCategoryWallpapersUrl$3;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/sec/android/app/sbrowser/wallpaper/data/FeaturedWallpaperClient$fetchCategoryWallpapersUrl$3;->label:I

    :goto_0
    move-object v5, v0

    goto :goto_1

    :cond_0
    new-instance v0, Lcom/sec/android/app/sbrowser/wallpaper/data/FeaturedWallpaperClient$fetchCategoryWallpapersUrl$3;

    invoke-direct {v0, p0, p3}, Lcom/sec/android/app/sbrowser/wallpaper/data/FeaturedWallpaperClient$fetchCategoryWallpapersUrl$3;-><init>(Lcom/sec/android/app/sbrowser/wallpaper/data/FeaturedWallpaperClient;Lib/c;)V

    goto :goto_0

    :goto_1
    iget-object p3, v5, Lcom/sec/android/app/sbrowser/wallpaper/data/FeaturedWallpaperClient$fetchCategoryWallpapersUrl$3;->result:Ljava/lang/Object;

    sget-object v0, Ljb/a;->COROUTINE_SUSPENDED:Ljb/a;

    iget v1, v5, Lcom/sec/android/app/sbrowser/wallpaper/data/FeaturedWallpaperClient$fetchCategoryWallpapersUrl$3;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    if-ne v1, v2, :cond_1

    iget-object p0, v5, Lcom/sec/android/app/sbrowser/wallpaper/data/FeaturedWallpaperClient$fetchCategoryWallpapersUrl$3;->L$0:Ljava/lang/Object;

    move-object p1, p0

    check-cast p1, Ljava/lang/String;

    :try_start_0
    invoke-static {p3}, LG5/A2;->f(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p0

    goto/16 :goto_4

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {p3}, LG5/A2;->f(Ljava/lang/Object;)V

    :try_start_1
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/wallpaper/data/FeaturedWallpaperClient;->getApiClientServiceForFeaturedWallpaperUrl()Lcom/sec/android/app/sbrowser/wallpaper/data/FeaturedWallpaperUrlApiService;

    move-result-object v1

    iput-object p1, v5, Lcom/sec/android/app/sbrowser/wallpaper/data/FeaturedWallpaperClient$fetchCategoryWallpapersUrl$3;->L$0:Ljava/lang/Object;

    iput v2, v5, Lcom/sec/android/app/sbrowser/wallpaper/data/FeaturedWallpaperClient$fetchCategoryWallpapersUrl$3;->label:I

    const/4 v6, 0x4

    const/4 v7, 0x0

    const/4 v4, 0x0

    move-object v2, p1

    move v3, p2

    invoke-static/range {v1 .. v7}, Lcom/sec/android/app/sbrowser/wallpaper/data/FeaturedWallpaperUrlApiService$DefaultImpls;->getCategoryWallpapersUrl$default(Lcom/sec/android/app/sbrowser/wallpaper/data/FeaturedWallpaperUrlApiService;Ljava/lang/String;IILib/c;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    if-ne p3, v0, :cond_3

    return-object v0

    :cond_3
    :goto_2
    check-cast p3, Lretrofit2/Response;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {p3}, Lretrofit2/Response;->isSuccessful()Z

    move-result p0

    if-eqz p0, :cond_6

    invoke-virtual {p3}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/sbrowser/wallpaper/data/CategoryWallpapersUrlResponse;

    if-eqz p0, :cond_5

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/wallpaper/data/CategoryWallpapersUrlResponse;->getContent()Ljava/util/List;

    move-result-object p2

    check-cast p2, Ljava/lang/Iterable;

    new-instance p3, Ljava/util/ArrayList;

    const/16 v0, 0xa

    invoke-static {p2, v0}, Lfb/p;->m(Ljava/lang/Iterable;I)I

    move-result v0

    invoke-direct {p3, v0}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_3
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/wallpaper/data/WallpapersUrlDto;

    new-instance v1, Lcom/sec/android/app/sbrowser/wallpaper/data/CategoryThumbnailData;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/wallpaper/data/WallpapersUrlDto;->getThumbnailUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/wallpaper/data/WallpapersUrlDto;->getWallpaperUrl()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, p1, v2, v0}, Lcom/sec/android/app/sbrowser/wallpaper/data/CategoryThumbnailData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_4
    invoke-static {p3}, Lfb/n;->i0(Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/wallpaper/data/CategoryWallpapersUrlResponse;->getTotalElements()I

    move-result p0

    new-instance p2, Ljava/lang/Integer;

    invoke-direct {p2, p0}, Ljava/lang/Integer;-><init>(I)V

    new-instance p0, Ldb/j;

    invoke-direct {p0, p2, p1}, Ldb/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0

    :cond_5
    new-instance p0, Ljava/lang/Exception;

    const-string p1, "body is empty"

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, LG5/A2;->c(Ljava/lang/Throwable;)Ldb/l;

    move-result-object p0

    return-object p0

    :cond_6
    new-instance p0, Ljava/lang/Exception;

    invoke-virtual {p3}, Lretrofit2/Response;->message()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, LG5/A2;->c(Ljava/lang/Throwable;)Ldb/l;

    move-result-object p0

    return-object p0

    :goto_4
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Failed to get wallpaper url: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "FeaturedWallpaperClient"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0}, LG5/A2;->c(Ljava/lang/Throwable;)Ldb/l;

    move-result-object p0

    return-object p0
.end method

.method public final fetchCategoryWallpapersUrl-gIAlu-s(Ljava/lang/String;Lib/c;)Ljava/lang/Object;
    .locals 8
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
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

    instance-of v0, p2, Lcom/sec/android/app/sbrowser/wallpaper/data/FeaturedWallpaperClient$fetchCategoryWallpapersUrl$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/sec/android/app/sbrowser/wallpaper/data/FeaturedWallpaperClient$fetchCategoryWallpapersUrl$1;

    iget v1, v0, Lcom/sec/android/app/sbrowser/wallpaper/data/FeaturedWallpaperClient$fetchCategoryWallpapersUrl$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/sec/android/app/sbrowser/wallpaper/data/FeaturedWallpaperClient$fetchCategoryWallpapersUrl$1;->label:I

    :goto_0
    move-object v5, v0

    goto :goto_1

    :cond_0
    new-instance v0, Lcom/sec/android/app/sbrowser/wallpaper/data/FeaturedWallpaperClient$fetchCategoryWallpapersUrl$1;

    invoke-direct {v0, p0, p2}, Lcom/sec/android/app/sbrowser/wallpaper/data/FeaturedWallpaperClient$fetchCategoryWallpapersUrl$1;-><init>(Lcom/sec/android/app/sbrowser/wallpaper/data/FeaturedWallpaperClient;Lib/c;)V

    goto :goto_0

    :goto_1
    iget-object p2, v5, Lcom/sec/android/app/sbrowser/wallpaper/data/FeaturedWallpaperClient$fetchCategoryWallpapersUrl$1;->result:Ljava/lang/Object;

    sget-object v0, Ljb/a;->COROUTINE_SUSPENDED:Ljb/a;

    iget v1, v5, Lcom/sec/android/app/sbrowser/wallpaper/data/FeaturedWallpaperClient$fetchCategoryWallpapersUrl$1;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    if-ne v1, v2, :cond_1

    :try_start_0
    invoke-static {p2}, LG5/A2;->f(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p0

    goto :goto_3

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {p2}, LG5/A2;->f(Ljava/lang/Object;)V

    :try_start_1
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/wallpaper/data/FeaturedWallpaperClient;->getApiClientServiceForFeaturedWallpaperUrl()Lcom/sec/android/app/sbrowser/wallpaper/data/FeaturedWallpaperUrlApiService;

    move-result-object v1

    iput v2, v5, Lcom/sec/android/app/sbrowser/wallpaper/data/FeaturedWallpaperClient$fetchCategoryWallpapersUrl$1;->label:I

    const/4 v6, 0x6

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v2, p1

    invoke-static/range {v1 .. v7}, Lcom/sec/android/app/sbrowser/wallpaper/data/FeaturedWallpaperUrlApiService$DefaultImpls;->getCategoryWallpapersUrl$default(Lcom/sec/android/app/sbrowser/wallpaper/data/FeaturedWallpaperUrlApiService;Ljava/lang/String;IILib/c;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v0, :cond_3

    return-object v0

    :cond_3
    :goto_2
    check-cast p2, Lretrofit2/Response;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {p2}, Lretrofit2/Response;->isSuccessful()Z

    move-result p0

    if-eqz p0, :cond_5

    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/sbrowser/wallpaper/data/CategoryWallpapersUrlResponse;

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

    :goto_3
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Failed to get wallpaper url: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "FeaturedWallpaperClient"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0}, LG5/A2;->c(Ljava/lang/Throwable;)Ldb/l;

    move-result-object p0

    return-object p0
.end method

.method public final fetchFeaturedCategories-IoAF18A(Lib/c;)Ljava/lang/Object;
    .locals 4
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

    instance-of v0, p1, Lcom/sec/android/app/sbrowser/wallpaper/data/FeaturedWallpaperClient$fetchFeaturedCategories$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/sec/android/app/sbrowser/wallpaper/data/FeaturedWallpaperClient$fetchFeaturedCategories$1;

    iget v1, v0, Lcom/sec/android/app/sbrowser/wallpaper/data/FeaturedWallpaperClient$fetchFeaturedCategories$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/sec/android/app/sbrowser/wallpaper/data/FeaturedWallpaperClient$fetchFeaturedCategories$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/sec/android/app/sbrowser/wallpaper/data/FeaturedWallpaperClient$fetchFeaturedCategories$1;

    invoke-direct {v0, p0, p1}, Lcom/sec/android/app/sbrowser/wallpaper/data/FeaturedWallpaperClient$fetchFeaturedCategories$1;-><init>(Lcom/sec/android/app/sbrowser/wallpaper/data/FeaturedWallpaperClient;Lib/c;)V

    :goto_0
    iget-object p1, v0, Lcom/sec/android/app/sbrowser/wallpaper/data/FeaturedWallpaperClient$fetchFeaturedCategories$1;->result:Ljava/lang/Object;

    sget-object v1, Ljb/a;->COROUTINE_SUSPENDED:Ljb/a;

    iget v2, v0, Lcom/sec/android/app/sbrowser/wallpaper/data/FeaturedWallpaperClient$fetchFeaturedCategories$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

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
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/wallpaper/data/FeaturedWallpaperClient;->getApiClientServiceForFeaturedWallpaperUrl()Lcom/sec/android/app/sbrowser/wallpaper/data/FeaturedWallpaperUrlApiService;

    move-result-object p0

    iput v3, v0, Lcom/sec/android/app/sbrowser/wallpaper/data/FeaturedWallpaperClient$fetchFeaturedCategories$1;->label:I

    invoke-interface {p0, v0}, Lcom/sec/android/app/sbrowser/wallpaper/data/FeaturedWallpaperUrlApiService;->getFeaturedCategories(Lib/c;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_3

    return-object v1

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

    check-cast p0, Lcom/sec/android/app/sbrowser/wallpaper/data/FeaturedCategoriesResponse;

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

    invoke-virtual {p1}, Lretrofit2/Response;->message()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, LG5/A2;->c(Ljava/lang/Throwable;)Ldb/l;

    move-result-object p0

    return-object p0

    :goto_2
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Failed to get featured wallpaper categories url: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "FeaturedWallpaperClient"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0}, LG5/A2;->c(Ljava/lang/Throwable;)Ldb/l;

    move-result-object p0

    return-object p0
.end method
