.class final Lcom/sec/android/app/sbrowser/wallpaper/data/QuickAccessWallpaperRepository$fetchCategoryCardViewThumbnails$2;
.super Lkb/i;
.source "SourceFile"

# interfaces
.implements Lsb/n;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/wallpaper/data/QuickAccessWallpaperRepository;->fetchCategoryCardViewThumbnails(Lcom/sec/android/app/sbrowser/wallpaper/data/FeaturedCategoriesDto;Lib/c;)Ljava/lang/Object;
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
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0001*\u00020\u0000H\n\u00a2\u0006\u0004\u0008\u0003\u0010\u0004"
    }
    d2 = {
        "LNc/B;",
        "Ldb/m;",
        "Lcom/sec/android/app/sbrowser/wallpaper/data/CategoryWallpapersUrlResponse;",
        "<anonymous>",
        "(LNc/B;)Ldb/m;"
    }
    k = 0x3
    mv = {
        0x2,
        0x0,
        0x0
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.sec.android.app.sbrowser.wallpaper.data.QuickAccessWallpaperRepository$fetchCategoryCardViewThumbnails$2"
    f = "QuickAccessWallpaperRepository.kt"
    l = {
        0x73,
        0x75
    }
    m = "invokeSuspend"
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
.end annotation


# instance fields
.field final synthetic $category:Lcom/sec/android/app/sbrowser/wallpaper/data/FeaturedCategoriesDto;

.field L$0:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/sec/android/app/sbrowser/wallpaper/data/QuickAccessWallpaperRepository;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/wallpaper/data/QuickAccessWallpaperRepository;Lcom/sec/android/app/sbrowser/wallpaper/data/FeaturedCategoriesDto;Lib/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/android/app/sbrowser/wallpaper/data/QuickAccessWallpaperRepository;",
            "Lcom/sec/android/app/sbrowser/wallpaper/data/FeaturedCategoriesDto;",
            "Lib/c<",
            "-",
            "Lcom/sec/android/app/sbrowser/wallpaper/data/QuickAccessWallpaperRepository$fetchCategoryCardViewThumbnails$2;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/wallpaper/data/QuickAccessWallpaperRepository$fetchCategoryCardViewThumbnails$2;->this$0:Lcom/sec/android/app/sbrowser/wallpaper/data/QuickAccessWallpaperRepository;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/wallpaper/data/QuickAccessWallpaperRepository$fetchCategoryCardViewThumbnails$2;->$category:Lcom/sec/android/app/sbrowser/wallpaper/data/FeaturedCategoriesDto;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkb/i;-><init>(ILib/c;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lib/c;)Lib/c;
    .locals 1
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

    new-instance p1, Lcom/sec/android/app/sbrowser/wallpaper/data/QuickAccessWallpaperRepository$fetchCategoryCardViewThumbnails$2;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/wallpaper/data/QuickAccessWallpaperRepository$fetchCategoryCardViewThumbnails$2;->this$0:Lcom/sec/android/app/sbrowser/wallpaper/data/QuickAccessWallpaperRepository;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/wallpaper/data/QuickAccessWallpaperRepository$fetchCategoryCardViewThumbnails$2;->$category:Lcom/sec/android/app/sbrowser/wallpaper/data/FeaturedCategoriesDto;

    invoke-direct {p1, v0, p0, p2}, Lcom/sec/android/app/sbrowser/wallpaper/data/QuickAccessWallpaperRepository$fetchCategoryCardViewThumbnails$2;-><init>(Lcom/sec/android/app/sbrowser/wallpaper/data/QuickAccessWallpaperRepository;Lcom/sec/android/app/sbrowser/wallpaper/data/FeaturedCategoriesDto;Lib/c;)V

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
            "Ldb/m;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/wallpaper/data/QuickAccessWallpaperRepository$fetchCategoryCardViewThumbnails$2;->create(Ljava/lang/Object;Lib/c;)Lib/c;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/sbrowser/wallpaper/data/QuickAccessWallpaperRepository$fetchCategoryCardViewThumbnails$2;

    sget-object p1, Ldb/r;->a:Ldb/r;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/wallpaper/data/QuickAccessWallpaperRepository$fetchCategoryCardViewThumbnails$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, LNc/B;

    check-cast p2, Lib/c;

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/wallpaper/data/QuickAccessWallpaperRepository$fetchCategoryCardViewThumbnails$2;->invoke(LNc/B;Lib/c;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    sget-object v0, Ljb/a;->COROUTINE_SUSPENDED:Ljb/a;

    iget v1, p0, Lcom/sec/android/app/sbrowser/wallpaper/data/QuickAccessWallpaperRepository$fetchCategoryCardViewThumbnails$2;->label:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    if-eq v1, v3, :cond_1

    if-ne v1, v2, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/wallpaper/data/QuickAccessWallpaperRepository$fetchCategoryCardViewThumbnails$2;->L$0:Ljava/lang/Object;

    invoke-static {p1}, LG5/A2;->f(Ljava/lang/Object;)V

    goto/16 :goto_2

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-static {p1}, LG5/A2;->f(Ljava/lang/Object;)V

    check-cast p1, Ldb/m;

    iget-object p1, p1, Ldb/m;->a:Ljava/lang/Object;

    goto :goto_0

    :cond_2
    invoke-static {p1}, LG5/A2;->f(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/wallpaper/data/QuickAccessWallpaperRepository$fetchCategoryCardViewThumbnails$2;->this$0:Lcom/sec/android/app/sbrowser/wallpaper/data/QuickAccessWallpaperRepository;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/wallpaper/data/QuickAccessWallpaperRepository;->access$getWallpaperClient(Lcom/sec/android/app/sbrowser/wallpaper/data/QuickAccessWallpaperRepository;)Lcom/sec/android/app/sbrowser/wallpaper/data/FeaturedWallpaperClient;

    move-result-object p1

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/wallpaper/data/QuickAccessWallpaperRepository$fetchCategoryCardViewThumbnails$2;->$category:Lcom/sec/android/app/sbrowser/wallpaper/data/FeaturedCategoriesDto;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/wallpaper/data/FeaturedCategoriesDto;->getName()Ljava/lang/String;

    move-result-object v1

    iput v3, p0, Lcom/sec/android/app/sbrowser/wallpaper/data/QuickAccessWallpaperRepository$fetchCategoryCardViewThumbnails$2;->label:I

    invoke-virtual {p1, v1, p0}, Lcom/sec/android/app/sbrowser/wallpaper/data/FeaturedWallpaperClient;->fetchCategoryWallpapersUrl-gIAlu-s(Ljava/lang/String;Lib/c;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_3

    return-object v0

    :cond_3
    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/wallpaper/data/QuickAccessWallpaperRepository$fetchCategoryCardViewThumbnails$2;->this$0:Lcom/sec/android/app/sbrowser/wallpaper/data/QuickAccessWallpaperRepository;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/wallpaper/data/QuickAccessWallpaperRepository$fetchCategoryCardViewThumbnails$2;->$category:Lcom/sec/android/app/sbrowser/wallpaper/data/FeaturedCategoriesDto;

    instance-of v4, p1, Ldb/l;

    if-nez v4, :cond_6

    move-object v4, p1

    check-cast v4, Lcom/sec/android/app/sbrowser/wallpaper/data/CategoryWallpapersUrlResponse;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "response: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "QuickAccessWallpaperRepository"

    invoke-static {v6, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/wallpaper/data/QuickAccessWallpaperRepository;->access$get_categoryCardViewThumbnailListLiveData$p(Lcom/sec/android/app/sbrowser/wallpaper/data/QuickAccessWallpaperRepository;)LQc/e0;

    move-result-object v1

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/wallpaper/data/FeaturedCategoriesDto;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4}, Lcom/sec/android/app/sbrowser/wallpaper/data/CategoryWallpapersUrlResponse;->getContent()Ljava/util/List;

    move-result-object v4

    check-cast v4, Ljava/lang/Iterable;

    new-instance v6, Ljava/util/ArrayList;

    const/16 v7, 0xa

    invoke-static {v4, v7}, Lfb/p;->m(Ljava/lang/Iterable;I)I

    move-result v7

    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/sec/android/app/sbrowser/wallpaper/data/WallpapersUrlDto;

    new-instance v8, Lcom/sec/android/app/sbrowser/wallpaper/data/CategoryThumbnailData;

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/wallpaper/data/FeaturedCategoriesDto;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7}, Lcom/sec/android/app/sbrowser/wallpaper/data/WallpapersUrlDto;->getThumbnailUrl()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7}, Lcom/sec/android/app/sbrowser/wallpaper/data/WallpapersUrlDto;->getWallpaperUrl()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v8, v9, v10, v7}, Lcom/sec/android/app/sbrowser/wallpaper/data/CategoryThumbnailData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    new-instance v3, Lcom/sec/android/app/sbrowser/wallpaper/data/CategoryCardViewListData;

    invoke-direct {v3, v5, v6}, Lcom/sec/android/app/sbrowser/wallpaper/data/CategoryCardViewListData;-><init>(Ljava/lang/String;Ljava/util/List;)V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/wallpaper/data/QuickAccessWallpaperRepository$fetchCategoryCardViewThumbnails$2;->L$0:Ljava/lang/Object;

    iput v2, p0, Lcom/sec/android/app/sbrowser/wallpaper/data/QuickAccessWallpaperRepository$fetchCategoryCardViewThumbnails$2;->label:I

    invoke-interface {v1, v3, p0}, LQc/e0;->emit(Ljava/lang/Object;Lib/c;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v0, :cond_5

    return-object v0

    :cond_5
    move-object v0, p1

    :goto_2
    move-object p1, v0

    :cond_6
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/wallpaper/data/QuickAccessWallpaperRepository$fetchCategoryCardViewThumbnails$2;->this$0:Lcom/sec/android/app/sbrowser/wallpaper/data/QuickAccessWallpaperRepository;

    invoke-static {p1}, Ldb/m;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/wallpaper/data/QuickAccessWallpaperRepository;->access$get_categoryWallpaperDownloadStatusLiveData$p(Lcom/sec/android/app/sbrowser/wallpaper/data/QuickAccessWallpaperRepository;)Lcom/sec/android/app/sbrowser/common/livedata/AutoClearLiveData;

    move-result-object p0

    const-string v0, "fail"

    invoke-virtual {p0, v0}, Landroidx/lifecycle/X;->postValue(Ljava/lang/Object;)V

    :cond_7
    new-instance p0, Ldb/m;

    invoke-direct {p0, p1}, Ldb/m;-><init>(Ljava/lang/Object;)V

    return-object p0
.end method
