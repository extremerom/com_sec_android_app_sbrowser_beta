.class public final Lcom/sec/android/app/sbrowser/wallpaper/data/CategoryWallpaperPagingSource;
.super Lv2/g1;
.source "SourceFile"


# annotations
.annotation build Landroidx/compose/runtime/internal/StabilityInferred;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lv2/g1;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0008\u0007\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B\u0017\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\u0008\u0010\tJ*\u0010\r\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u000c2\u000c\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00020\u00020\nH\u0096@\u00a2\u0006\u0004\u0008\r\u0010\u000eJ%\u0010\u0011\u001a\u0004\u0018\u00010\u00022\u0012\u0010\u0010\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u000fH\u0016\u00a2\u0006\u0004\u0008\u0011\u0010\u0012R\u0014\u0010\u0005\u001a\u00020\u00048\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0005\u0010\u0013R\u0014\u0010\u0007\u001a\u00020\u00068\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0007\u0010\u0014\u00a8\u0006\u0015"
    }
    d2 = {
        "Lcom/sec/android/app/sbrowser/wallpaper/data/CategoryWallpaperPagingSource;",
        "Lv2/g1;",
        "",
        "Lcom/sec/android/app/sbrowser/wallpaper/data/CategoryThumbnailData;",
        "Lcom/sec/android/app/sbrowser/wallpaper/data/FeaturedWallpaperClient;",
        "client",
        "",
        "category",
        "<init>",
        "(Lcom/sec/android/app/sbrowser/wallpaper/data/FeaturedWallpaperClient;Ljava/lang/String;)V",
        "Lv2/c1;",
        "params",
        "Lv2/f1;",
        "load",
        "(Lv2/c1;Lib/c;)Ljava/lang/Object;",
        "Lv2/h1;",
        "state",
        "getRefreshKey",
        "(Lv2/h1;)Ljava/lang/Integer;",
        "Lcom/sec/android/app/sbrowser/wallpaper/data/FeaturedWallpaperClient;",
        "Ljava/lang/String;",
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


# instance fields
.field private final category:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final client:Lcom/sec/android/app/sbrowser/wallpaper/data/FeaturedWallpaperClient;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/wallpaper/data/FeaturedWallpaperClient;Ljava/lang/String;)V
    .locals 1
    .param p1    # Lcom/sec/android/app/sbrowser/wallpaper/data/FeaturedWallpaperClient;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "client"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "category"

    invoke-static {p2, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lv2/g1;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/wallpaper/data/CategoryWallpaperPagingSource;->client:Lcom/sec/android/app/sbrowser/wallpaper/data/FeaturedWallpaperClient;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/wallpaper/data/CategoryWallpaperPagingSource;->category:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getRefreshKey(Lv2/h1;)Ljava/lang/Integer;
    .locals 4
    .param p1    # Lv2/h1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lv2/h1;",
            ")",
            "Ljava/lang/Integer;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string p0, "state"

    invoke-static {p1, p0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x0

    iget-object v0, p1, Lv2/h1;->b:Ljava/lang/Integer;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p1, Lv2/h1;->a:Ljava/util/List;

    move-object v2, v1

    check-cast v2, Ljava/lang/Iterable;

    instance-of v3, v2, Ljava/util/Collection;

    if-eqz v3, :cond_0

    move-object v3, v2

    check-cast v3, Ljava/util/Collection;

    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_1

    :cond_0
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lv2/e1;

    iget-object v3, v3, Lv2/e1;->a:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    iget p1, p1, Lv2/h1;->d:I

    sub-int/2addr v0, p1

    const/4 p1, 0x0

    :goto_0
    invoke-static {v1}, Lfb/o;->f(Ljava/util/List;)I

    move-result v2

    if-ge p1, v2, :cond_2

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lv2/e1;

    iget-object v2, v2, Lv2/e1;->a:Ljava/util/List;

    invoke-static {v2}, Lfb/o;->f(Ljava/util/List;)I

    move-result v2

    if-le v0, v2, :cond_2

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lv2/e1;

    iget-object v2, v2, Lv2/e1;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v0, v2

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_2
    if-gez v0, :cond_3

    invoke-static {v1}, Lfb/n;->C(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lv2/e1;

    goto :goto_2

    :cond_3
    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lv2/e1;

    goto :goto_2

    :cond_4
    :goto_1
    move-object p1, p0

    :goto_2
    if-eqz p1, :cond_5

    iget-object v0, p1, Lv2/e1;->c:Ljava/lang/Integer;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    :goto_3
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    goto :goto_4

    :cond_5
    if-eqz p1, :cond_6

    iget-object p1, p1, Lv2/e1;->b:Ljava/lang/Integer;

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    add-int/lit8 p0, p0, 0x1

    goto :goto_3

    :cond_6
    :goto_4
    return-object p0
.end method

.method public bridge synthetic getRefreshKey(Lv2/h1;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/wallpaper/data/CategoryWallpaperPagingSource;->getRefreshKey(Lv2/h1;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public load(Lv2/c1;Lib/c;)Ljava/lang/Object;
    .locals 11
    .param p1    # Lv2/c1;
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
            "Lv2/c1;",
            "Lib/c<",
            "-",
            "Lv2/f1;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    instance-of v0, p2, Lcom/sec/android/app/sbrowser/wallpaper/data/CategoryWallpaperPagingSource$load$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/sec/android/app/sbrowser/wallpaper/data/CategoryWallpaperPagingSource$load$1;

    iget v1, v0, Lcom/sec/android/app/sbrowser/wallpaper/data/CategoryWallpaperPagingSource$load$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/sec/android/app/sbrowser/wallpaper/data/CategoryWallpaperPagingSource$load$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/sec/android/app/sbrowser/wallpaper/data/CategoryWallpaperPagingSource$load$1;

    invoke-direct {v0, p0, p2}, Lcom/sec/android/app/sbrowser/wallpaper/data/CategoryWallpaperPagingSource$load$1;-><init>(Lcom/sec/android/app/sbrowser/wallpaper/data/CategoryWallpaperPagingSource;Lib/c;)V

    :goto_0
    iget-object p2, v0, Lcom/sec/android/app/sbrowser/wallpaper/data/CategoryWallpaperPagingSource$load$1;->result:Ljava/lang/Object;

    sget-object v1, Ljb/a;->COROUTINE_SUSPENDED:Ljb/a;

    iget v2, v0, Lcom/sec/android/app/sbrowser/wallpaper/data/CategoryWallpaperPagingSource$load$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget p0, v0, Lcom/sec/android/app/sbrowser/wallpaper/data/CategoryWallpaperPagingSource$load$1;->I$0:I

    :try_start_0
    invoke-static {p2}, LG5/A2;->f(Ljava/lang/Object;)V

    check-cast p2, Ldb/m;

    iget-object p1, p2, Ldb/m;->a:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p0

    goto/16 :goto_5

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {p2}, LG5/A2;->f(Ljava/lang/Object;)V

    invoke-virtual {p1}, Lv2/c1;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    goto :goto_1

    :cond_3
    const/4 p1, 0x0

    :goto_1
    :try_start_1
    iget-object p2, p0, Lcom/sec/android/app/sbrowser/wallpaper/data/CategoryWallpaperPagingSource;->client:Lcom/sec/android/app/sbrowser/wallpaper/data/FeaturedWallpaperClient;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/wallpaper/data/CategoryWallpaperPagingSource;->category:Ljava/lang/String;

    iput p1, v0, Lcom/sec/android/app/sbrowser/wallpaper/data/CategoryWallpaperPagingSource$load$1;->I$0:I

    iput v3, v0, Lcom/sec/android/app/sbrowser/wallpaper/data/CategoryWallpaperPagingSource$load$1;->label:I

    invoke-virtual {p2, p0, p1, v0}, Lcom/sec/android/app/sbrowser/wallpaper/data/FeaturedWallpaperClient;->fetchCategoryWallpapersUrl-0E7RQCE(Ljava/lang/String;ILib/c;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_4

    return-object v1

    :cond_4
    move v10, p1

    move-object p1, p0

    move p0, v10

    :goto_2
    instance-of p2, p1, Ldb/l;

    if-nez p2, :cond_7

    check-cast p1, Ldb/j;

    iget-object p1, p1, Ldb/j;->b:Ljava/lang/Object;

    move-object v5, p1

    check-cast v5, Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result p1

    const/4 p2, 0x0

    if-eqz p1, :cond_5

    move-object v7, p2

    goto :goto_3

    :cond_5
    add-int/lit8 p1, p0, 0x1

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p1}, Ljava/lang/Integer;-><init>(I)V

    move-object v7, v0

    :goto_3
    if-nez p0, :cond_6

    move-object v6, p2

    goto :goto_4

    :cond_6
    sub-int/2addr p0, v3

    new-instance p1, Ljava/lang/Integer;

    invoke-direct {p1, p0}, Ljava/lang/Integer;-><init>(I)V

    move-object v6, p1

    :goto_4
    new-instance p0, Lv2/e1;

    const/high16 v8, -0x80000000

    const/high16 v9, -0x80000000

    move-object v4, p0

    invoke-direct/range {v4 .. v9}, Lv2/e1;-><init>(Ljava/util/List;Ljava/lang/Integer;Ljava/lang/Integer;II)V

    return-object p0

    :cond_7
    invoke-static {p1}, Ldb/m;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-eqz p0, :cond_8

    new-instance p1, Lv2/d1;

    invoke-direct {p1, p0}, Lv2/d1;-><init>(Ljava/lang/Throwable;)V

    return-object p1

    :cond_8
    new-instance p0, Lv2/d1;

    new-instance p1, Ljava/lang/Exception;

    const-string p2, "Unreachable path"

    invoke-direct {p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lv2/d1;-><init>(Ljava/lang/Throwable;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_6

    :goto_5
    new-instance p1, Lv2/d1;

    invoke-direct {p1, p0}, Lv2/d1;-><init>(Ljava/lang/Throwable;)V

    move-object p0, p1

    :goto_6
    return-object p0
.end method
