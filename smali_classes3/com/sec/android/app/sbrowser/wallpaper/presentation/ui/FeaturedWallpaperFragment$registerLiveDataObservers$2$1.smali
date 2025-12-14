.class final Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/FeaturedWallpaperFragment$registerLiveDataObservers$2$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LQc/i;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/FeaturedWallpaperFragment$registerLiveDataObservers$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
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

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/FeaturedWallpaperFragment$registerLiveDataObservers$2$1;->this$0:Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/FeaturedWallpaperFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic emit(Ljava/lang/Object;Lib/c;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/FeaturedWallpaperFragment$registerLiveDataObservers$2$1;->emit(Ljava/lang/String;Lib/c;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final emit(Ljava/lang/String;Lib/c;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lib/c<",
            "-",
            "Ldb/r;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/FeaturedWallpaperFragment$registerLiveDataObservers$2$1;->this$0:Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/FeaturedWallpaperFragment;

    const-string p2, "progress"

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/FeaturedWallpaperFragment;->access$setProgressView(Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/FeaturedWallpaperFragment;)V

    goto :goto_0

    :cond_0
    const-string p2, "fail"

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/FeaturedWallpaperFragment;->access$setErrorView(Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/FeaturedWallpaperFragment;)V

    :cond_1
    :goto_0
    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0
.end method
