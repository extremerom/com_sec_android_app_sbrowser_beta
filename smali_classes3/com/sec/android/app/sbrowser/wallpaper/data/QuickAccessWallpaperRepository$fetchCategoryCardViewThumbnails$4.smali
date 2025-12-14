.class final Lcom/sec/android/app/sbrowser/wallpaper/data/QuickAccessWallpaperRepository$fetchCategoryCardViewThumbnails$4;
.super Lkb/i;
.source "SourceFile"

# interfaces
.implements Lsb/n;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/wallpaper/data/QuickAccessWallpaperRepository;->fetchCategoryCardViewThumbnails(Ljava/util/List;Lib/c;)Ljava/lang/Object;
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
    c = "com.sec.android.app.sbrowser.wallpaper.data.QuickAccessWallpaperRepository$fetchCategoryCardViewThumbnails$4"
    f = "QuickAccessWallpaperRepository.kt"
    l = {
        0xa3
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $featuredCategories:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sec/android/app/sbrowser/wallpaper/data/FeaturedCategoriesDto;",
            ">;"
        }
    .end annotation
.end field

.field L$0:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/sec/android/app/sbrowser/wallpaper/data/QuickAccessWallpaperRepository;


# direct methods
.method public constructor <init>(Ljava/util/List;Lcom/sec/android/app/sbrowser/wallpaper/data/QuickAccessWallpaperRepository;Lib/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sec/android/app/sbrowser/wallpaper/data/FeaturedCategoriesDto;",
            ">;",
            "Lcom/sec/android/app/sbrowser/wallpaper/data/QuickAccessWallpaperRepository;",
            "Lib/c<",
            "-",
            "Lcom/sec/android/app/sbrowser/wallpaper/data/QuickAccessWallpaperRepository$fetchCategoryCardViewThumbnails$4;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/wallpaper/data/QuickAccessWallpaperRepository$fetchCategoryCardViewThumbnails$4;->$featuredCategories:Ljava/util/List;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/wallpaper/data/QuickAccessWallpaperRepository$fetchCategoryCardViewThumbnails$4;->this$0:Lcom/sec/android/app/sbrowser/wallpaper/data/QuickAccessWallpaperRepository;

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

    new-instance p1, Lcom/sec/android/app/sbrowser/wallpaper/data/QuickAccessWallpaperRepository$fetchCategoryCardViewThumbnails$4;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/wallpaper/data/QuickAccessWallpaperRepository$fetchCategoryCardViewThumbnails$4;->$featuredCategories:Ljava/util/List;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/wallpaper/data/QuickAccessWallpaperRepository$fetchCategoryCardViewThumbnails$4;->this$0:Lcom/sec/android/app/sbrowser/wallpaper/data/QuickAccessWallpaperRepository;

    invoke-direct {p1, v0, p0, p2}, Lcom/sec/android/app/sbrowser/wallpaper/data/QuickAccessWallpaperRepository$fetchCategoryCardViewThumbnails$4;-><init>(Ljava/util/List;Lcom/sec/android/app/sbrowser/wallpaper/data/QuickAccessWallpaperRepository;Lib/c;)V

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

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/wallpaper/data/QuickAccessWallpaperRepository$fetchCategoryCardViewThumbnails$4;->create(Ljava/lang/Object;Lib/c;)Lib/c;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/sbrowser/wallpaper/data/QuickAccessWallpaperRepository$fetchCategoryCardViewThumbnails$4;

    sget-object p1, Ldb/r;->a:Ldb/r;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/wallpaper/data/QuickAccessWallpaperRepository$fetchCategoryCardViewThumbnails$4;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, LNc/B;

    check-cast p2, Lib/c;

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/wallpaper/data/QuickAccessWallpaperRepository$fetchCategoryCardViewThumbnails$4;->invoke(LNc/B;Lib/c;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    sget-object v0, Ljb/a;->COROUTINE_SUSPENDED:Ljb/a;

    iget v1, p0, Lcom/sec/android/app/sbrowser/wallpaper/data/QuickAccessWallpaperRepository$fetchCategoryCardViewThumbnails$4;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/wallpaper/data/QuickAccessWallpaperRepository$fetchCategoryCardViewThumbnails$4;->L$0:Ljava/lang/Object;

    check-cast v1, Ljava/util/Iterator;

    invoke-static {p1}, LG5/A2;->f(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-static {p1}, LG5/A2;->f(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/wallpaper/data/QuickAccessWallpaperRepository$fetchCategoryCardViewThumbnails$4;->$featuredCategories:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    move-object v1, p1

    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sec/android/app/sbrowser/wallpaper/data/FeaturedCategoriesDto;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/wallpaper/data/QuickAccessWallpaperRepository$fetchCategoryCardViewThumbnails$4;->this$0:Lcom/sec/android/app/sbrowser/wallpaper/data/QuickAccessWallpaperRepository;

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/wallpaper/data/QuickAccessWallpaperRepository$fetchCategoryCardViewThumbnails$4;->L$0:Ljava/lang/Object;

    iput v2, p0, Lcom/sec/android/app/sbrowser/wallpaper/data/QuickAccessWallpaperRepository$fetchCategoryCardViewThumbnails$4;->label:I

    invoke-static {v3, p1, p0}, Lcom/sec/android/app/sbrowser/wallpaper/data/QuickAccessWallpaperRepository;->access$fetchCategoryCardViewThumbnails(Lcom/sec/android/app/sbrowser/wallpaper/data/QuickAccessWallpaperRepository;Lcom/sec/android/app/sbrowser/wallpaper/data/FeaturedCategoriesDto;Lib/c;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    :cond_3
    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0
.end method
