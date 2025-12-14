.class final Lcom/sec/android/app/sbrowser/wallpaper/data/QuickAccessWallpaperRepository$fetchFeaturedCategoriesWithThumbnails$1;
.super Lkb/i;
.source "SourceFile"

# interfaces
.implements Lsb/n;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/wallpaper/data/QuickAccessWallpaperRepository;->fetchFeaturedCategoriesWithThumbnails()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkb/i;",
        "Lsb/n;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n\u00a2\u0006\u0004\u0008\u0002\u0010\u0003"
    }
    d2 = {
        "LNc/B;",
        "Ldb/r;",
        "<anonymous>",
        "(LNc/B;)V"
    }
    k = 0x3
    mv = {
        0x2,
        0x0,
        0x0
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.sec.android.app.sbrowser.wallpaper.data.QuickAccessWallpaperRepository$fetchFeaturedCategoriesWithThumbnails$1"
    f = "QuickAccessWallpaperRepository.kt"
    l = {
        0x5d
    }
    m = "invokeSuspend"
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
.end annotation


# instance fields
.field label:I

.field final synthetic this$0:Lcom/sec/android/app/sbrowser/wallpaper/data/QuickAccessWallpaperRepository;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/wallpaper/data/QuickAccessWallpaperRepository;Lib/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/android/app/sbrowser/wallpaper/data/QuickAccessWallpaperRepository;",
            "Lib/c<",
            "-",
            "Lcom/sec/android/app/sbrowser/wallpaper/data/QuickAccessWallpaperRepository$fetchFeaturedCategoriesWithThumbnails$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/wallpaper/data/QuickAccessWallpaperRepository$fetchFeaturedCategoriesWithThumbnails$1;->this$0:Lcom/sec/android/app/sbrowser/wallpaper/data/QuickAccessWallpaperRepository;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkb/i;-><init>(ILib/c;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lib/c;)Lib/c;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lib/c<",
            "*>;)",
            "Lib/c<",
            "Ldb/r;",
            ">;"
        }
    .end annotation

    new-instance p1, Lcom/sec/android/app/sbrowser/wallpaper/data/QuickAccessWallpaperRepository$fetchFeaturedCategoriesWithThumbnails$1;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/wallpaper/data/QuickAccessWallpaperRepository$fetchFeaturedCategoriesWithThumbnails$1;->this$0:Lcom/sec/android/app/sbrowser/wallpaper/data/QuickAccessWallpaperRepository;

    invoke-direct {p1, p0, p2}, Lcom/sec/android/app/sbrowser/wallpaper/data/QuickAccessWallpaperRepository$fetchFeaturedCategoriesWithThumbnails$1;-><init>(Lcom/sec/android/app/sbrowser/wallpaper/data/QuickAccessWallpaperRepository;Lib/c;)V

    return-object p1
.end method

.method public final invoke(LNc/B;Lib/c;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LNc/B;",
            "Lib/c<",
            "-",
            "Ldb/r;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/wallpaper/data/QuickAccessWallpaperRepository$fetchFeaturedCategoriesWithThumbnails$1;->create(Ljava/lang/Object;Lib/c;)Lib/c;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/sbrowser/wallpaper/data/QuickAccessWallpaperRepository$fetchFeaturedCategoriesWithThumbnails$1;

    sget-object p1, Ldb/r;->a:Ldb/r;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/wallpaper/data/QuickAccessWallpaperRepository$fetchFeaturedCategoriesWithThumbnails$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, LNc/B;

    check-cast p2, Lib/c;

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/wallpaper/data/QuickAccessWallpaperRepository$fetchFeaturedCategoriesWithThumbnails$1;->invoke(LNc/B;Lib/c;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    sget-object v0, Ljb/a;->COROUTINE_SUSPENDED:Ljb/a;

    iget v1, p0, Lcom/sec/android/app/sbrowser/wallpaper/data/QuickAccessWallpaperRepository$fetchFeaturedCategoriesWithThumbnails$1;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, LG5/A2;->f(Ljava/lang/Object;)V

    check-cast p1, Ldb/m;

    iget-object p1, p1, Ldb/m;->a:Ljava/lang/Object;

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-static {p1}, LG5/A2;->f(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/wallpaper/data/QuickAccessWallpaperRepository$fetchFeaturedCategoriesWithThumbnails$1;->this$0:Lcom/sec/android/app/sbrowser/wallpaper/data/QuickAccessWallpaperRepository;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/wallpaper/data/QuickAccessWallpaperRepository;->access$getWallpaperClient(Lcom/sec/android/app/sbrowser/wallpaper/data/QuickAccessWallpaperRepository;)Lcom/sec/android/app/sbrowser/wallpaper/data/FeaturedWallpaperClient;

    move-result-object p1

    iput v2, p0, Lcom/sec/android/app/sbrowser/wallpaper/data/QuickAccessWallpaperRepository$fetchFeaturedCategoriesWithThumbnails$1;->label:I

    invoke-virtual {p1, p0}, Lcom/sec/android/app/sbrowser/wallpaper/data/FeaturedWallpaperClient;->fetchFeaturedCategories-IoAF18A(Lib/c;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/wallpaper/data/QuickAccessWallpaperRepository$fetchFeaturedCategoriesWithThumbnails$1;->this$0:Lcom/sec/android/app/sbrowser/wallpaper/data/QuickAccessWallpaperRepository;

    instance-of v1, p1, Ldb/l;

    const-string v2, "QuickAccessWallpaperRepository"

    if-nez v1, :cond_4

    move-object v1, p1

    check-cast v1, Lcom/sec/android/app/sbrowser/wallpaper/data/FeaturedCategoriesResponse;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "response: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v1, :cond_4

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/wallpaper/data/QuickAccessWallpaperRepository;->access$get_featuredCategoriesThumbnailListLiveData$p(Lcom/sec/android/app/sbrowser/wallpaper/data/QuickAccessWallpaperRepository;)Landroidx/lifecycle/X;

    move-result-object v0

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/wallpaper/data/FeaturedCategoriesResponse;->getCategories()Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    new-instance v3, Ljava/util/ArrayList;

    const/16 v4, 0xa

    invoke-static {v1, v4}, Lfb/p;->m(Ljava/lang/Iterable;I)I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/android/app/sbrowser/wallpaper/data/FeaturedCategoriesDto;

    new-instance v5, Lcom/sec/android/app/sbrowser/wallpaper/data/CategoryThumbnailData;

    invoke-virtual {v4}, Lcom/sec/android/app/sbrowser/wallpaper/data/FeaturedCategoriesDto;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4}, Lcom/sec/android/app/sbrowser/wallpaper/data/FeaturedCategoriesDto;->getThumbnailUrl()Ljava/lang/String;

    move-result-object v4

    const/4 v7, 0x0

    invoke-direct {v5, v6, v4, v7}, Lcom/sec/android/app/sbrowser/wallpaper/data/CategoryThumbnailData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    new-instance v1, Lcom/sec/android/app/sbrowser/wallpaper/data/CategoryCardViewListData;

    const-string v4, "Featured"

    invoke-direct {v1, v4, v3}, Lcom/sec/android/app/sbrowser/wallpaper/data/CategoryCardViewListData;-><init>(Ljava/lang/String;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Landroidx/lifecycle/X;->postValue(Ljava/lang/Object;)V

    :cond_4
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/wallpaper/data/QuickAccessWallpaperRepository$fetchFeaturedCategoriesWithThumbnails$1;->this$0:Lcom/sec/android/app/sbrowser/wallpaper/data/QuickAccessWallpaperRepository;

    invoke-static {p1}, Ldb/m;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p1

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "fetchCategoriesAndThumbnail response failed: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/wallpaper/data/QuickAccessWallpaperRepository;->access$get_featuredCategoriesDownloadStatusLiveData$p(Lcom/sec/android/app/sbrowser/wallpaper/data/QuickAccessWallpaperRepository;)Lcom/sec/android/app/sbrowser/common/livedata/AutoClearLiveData;

    move-result-object p0

    const-string p1, "fail"

    invoke-virtual {p0, p1}, Landroidx/lifecycle/X;->postValue(Ljava/lang/Object;)V

    :cond_5
    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0
.end method
