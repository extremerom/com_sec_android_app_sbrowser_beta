.class final Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/FeaturedWallpaperFragment$registerLiveDataObservers$3$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LQc/i;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/FeaturedWallpaperFragment$registerLiveDataObservers$3$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "LQc/i;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/FeaturedWallpaperFragment;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/FeaturedWallpaperFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/FeaturedWallpaperFragment$registerLiveDataObservers$3$1$1;->this$0:Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/FeaturedWallpaperFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final emit(Lcom/sec/android/app/sbrowser/wallpaper/data/CategoryCardViewListData;Lib/c;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/android/app/sbrowser/wallpaper/data/CategoryCardViewListData;",
            "Lib/c<",
            "-",
            "Ldb/r;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/FeaturedWallpaperFragment$registerLiveDataObservers$3$1$1;->this$0:Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/FeaturedWallpaperFragment;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/FeaturedWallpaperFragment;->access$setSuccessView(Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/FeaturedWallpaperFragment;)V

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/FeaturedWallpaperFragment;->access$updateCategoriesCardViewList(Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/FeaturedWallpaperFragment;Lcom/sec/android/app/sbrowser/wallpaper/data/CategoryCardViewListData;)V

    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0
.end method

.method public bridge synthetic emit(Ljava/lang/Object;Lib/c;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/sec/android/app/sbrowser/wallpaper/data/CategoryCardViewListData;

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/FeaturedWallpaperFragment$registerLiveDataObservers$3$1$1;->emit(Lcom/sec/android/app/sbrowser/wallpaper/data/CategoryCardViewListData;Lib/c;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
