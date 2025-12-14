.class final Lcom/sec/android/app/sbrowser/wallpaper/presentation/viewmodel/FeaturedWallpaperViewModel$fetchFeaturedCategories$1;
.super Lkb/i;
.source "SourceFile"

# interfaces
.implements Lsb/n;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/wallpaper/presentation/viewmodel/FeaturedWallpaperViewModel;->fetchFeaturedCategories()V
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
    c = "com.sec.android.app.sbrowser.wallpaper.presentation.viewmodel.FeaturedWallpaperViewModel$fetchFeaturedCategories$1"
    f = "FeaturedWallpaperViewModel.kt"
    l = {
        0x5e,
        0x61
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field L$0:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/sec/android/app/sbrowser/wallpaper/presentation/viewmodel/FeaturedWallpaperViewModel;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/wallpaper/presentation/viewmodel/FeaturedWallpaperViewModel;Lib/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/android/app/sbrowser/wallpaper/presentation/viewmodel/FeaturedWallpaperViewModel;",
            "Lib/c<",
            "-",
            "Lcom/sec/android/app/sbrowser/wallpaper/presentation/viewmodel/FeaturedWallpaperViewModel$fetchFeaturedCategories$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/wallpaper/presentation/viewmodel/FeaturedWallpaperViewModel$fetchFeaturedCategories$1;->this$0:Lcom/sec/android/app/sbrowser/wallpaper/presentation/viewmodel/FeaturedWallpaperViewModel;

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

    new-instance p1, Lcom/sec/android/app/sbrowser/wallpaper/presentation/viewmodel/FeaturedWallpaperViewModel$fetchFeaturedCategories$1;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/wallpaper/presentation/viewmodel/FeaturedWallpaperViewModel$fetchFeaturedCategories$1;->this$0:Lcom/sec/android/app/sbrowser/wallpaper/presentation/viewmodel/FeaturedWallpaperViewModel;

    invoke-direct {p1, p0, p2}, Lcom/sec/android/app/sbrowser/wallpaper/presentation/viewmodel/FeaturedWallpaperViewModel$fetchFeaturedCategories$1;-><init>(Lcom/sec/android/app/sbrowser/wallpaper/presentation/viewmodel/FeaturedWallpaperViewModel;Lib/c;)V

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

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/wallpaper/presentation/viewmodel/FeaturedWallpaperViewModel$fetchFeaturedCategories$1;->create(Ljava/lang/Object;Lib/c;)Lib/c;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/sbrowser/wallpaper/presentation/viewmodel/FeaturedWallpaperViewModel$fetchFeaturedCategories$1;

    sget-object p1, Ldb/r;->a:Ldb/r;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/wallpaper/presentation/viewmodel/FeaturedWallpaperViewModel$fetchFeaturedCategories$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, LNc/B;

    check-cast p2, Lib/c;

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/wallpaper/presentation/viewmodel/FeaturedWallpaperViewModel$fetchFeaturedCategories$1;->invoke(LNc/B;Lib/c;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    sget-object v0, Ljb/a;->COROUTINE_SUSPENDED:Ljb/a;

    iget v1, p0, Lcom/sec/android/app/sbrowser/wallpaper/presentation/viewmodel/FeaturedWallpaperViewModel$fetchFeaturedCategories$1;->label:I

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v1, :cond_2

    if-eq v1, v4, :cond_1

    if-ne v1, v3, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/wallpaper/presentation/viewmodel/FeaturedWallpaperViewModel$fetchFeaturedCategories$1;->L$0:Ljava/lang/Object;

    invoke-static {p1}, LG5/A2;->f(Ljava/lang/Object;)V

    goto :goto_1

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

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/wallpaper/presentation/viewmodel/FeaturedWallpaperViewModel$fetchFeaturedCategories$1;->this$0:Lcom/sec/android/app/sbrowser/wallpaper/presentation/viewmodel/FeaturedWallpaperViewModel;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/wallpaper/presentation/viewmodel/FeaturedWallpaperViewModel;->access$get_featuredCategoriesDownloadStatusFlow$p(Lcom/sec/android/app/sbrowser/wallpaper/presentation/viewmodel/FeaturedWallpaperViewModel;)LQc/f0;

    move-result-object p1

    check-cast p1, LQc/A0;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "progress"

    invoke-virtual {p1, v2, v1}, LQc/A0;->k(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/wallpaper/presentation/viewmodel/FeaturedWallpaperViewModel$fetchFeaturedCategories$1;->this$0:Lcom/sec/android/app/sbrowser/wallpaper/presentation/viewmodel/FeaturedWallpaperViewModel;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/wallpaper/presentation/viewmodel/FeaturedWallpaperViewModel;->access$getRepository(Lcom/sec/android/app/sbrowser/wallpaper/presentation/viewmodel/FeaturedWallpaperViewModel;)Lcom/sec/android/app/sbrowser/wallpaper/data/QuickAccessWallpaperRepository;

    move-result-object p1

    iput v4, p0, Lcom/sec/android/app/sbrowser/wallpaper/presentation/viewmodel/FeaturedWallpaperViewModel$fetchFeaturedCategories$1;->label:I

    invoke-virtual {p1, p0}, Lcom/sec/android/app/sbrowser/wallpaper/data/QuickAccessWallpaperRepository;->fetchFeaturedCategories-IoAF18A(Lib/c;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_3

    return-object v0

    :cond_3
    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/wallpaper/presentation/viewmodel/FeaturedWallpaperViewModel$fetchFeaturedCategories$1;->this$0:Lcom/sec/android/app/sbrowser/wallpaper/presentation/viewmodel/FeaturedWallpaperViewModel;

    instance-of v4, p1, Ldb/l;

    if-nez v4, :cond_5

    move-object v4, p1

    check-cast v4, Lcom/sec/android/app/sbrowser/wallpaper/data/FeaturedCategoriesResponse;

    if-eqz v4, :cond_5

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/wallpaper/presentation/viewmodel/FeaturedWallpaperViewModel;->access$get_featuredCategoryListFlow$p(Lcom/sec/android/app/sbrowser/wallpaper/presentation/viewmodel/FeaturedWallpaperViewModel;)LQc/e0;

    move-result-object v1

    invoke-virtual {v4}, Lcom/sec/android/app/sbrowser/wallpaper/data/FeaturedCategoriesResponse;->getCategories()Ljava/util/List;

    move-result-object v4

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/wallpaper/presentation/viewmodel/FeaturedWallpaperViewModel$fetchFeaturedCategories$1;->L$0:Ljava/lang/Object;

    iput v3, p0, Lcom/sec/android/app/sbrowser/wallpaper/presentation/viewmodel/FeaturedWallpaperViewModel$fetchFeaturedCategories$1;->label:I

    invoke-interface {v1, v4, p0}, LQc/e0;->emit(Ljava/lang/Object;Lib/c;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v0, :cond_4

    return-object v0

    :cond_4
    move-object v0, p1

    :goto_1
    move-object p1, v0

    :cond_5
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/wallpaper/presentation/viewmodel/FeaturedWallpaperViewModel$fetchFeaturedCategories$1;->this$0:Lcom/sec/android/app/sbrowser/wallpaper/presentation/viewmodel/FeaturedWallpaperViewModel;

    invoke-static {p1}, Ldb/m;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p1

    if-eqz p1, :cond_6

    const-string v0, "FeaturedWallpaperViewModel"

    const-string v1, "Error fetching featured categories"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/wallpaper/presentation/viewmodel/FeaturedWallpaperViewModel;->access$get_featuredCategoriesDownloadStatusFlow$p(Lcom/sec/android/app/sbrowser/wallpaper/presentation/viewmodel/FeaturedWallpaperViewModel;)LQc/f0;

    move-result-object p0

    check-cast p0, LQc/A0;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p1, "fail"

    invoke-virtual {p0, v2, p1}, LQc/A0;->k(Ljava/lang/Object;Ljava/lang/Object;)Z

    :cond_6
    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0
.end method
