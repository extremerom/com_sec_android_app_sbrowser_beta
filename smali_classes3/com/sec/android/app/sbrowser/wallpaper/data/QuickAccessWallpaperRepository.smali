.class public final Lcom/sec/android/app/sbrowser/wallpaper/data/QuickAccessWallpaperRepository;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/compose/runtime/internal/StabilityInferred;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/wallpaper/data/QuickAccessWallpaperRepository$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00a4\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010 \n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0007\u0018\u0000 H2\u00020\u0001:\u0001HB\u0011\u0008\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u0018\u0010\t\u001a\u00020\u00082\u0006\u0010\u0007\u001a\u00020\u0006H\u0082@\u00a2\u0006\u0004\u0008\t\u0010\nJ\r\u0010\u000b\u001a\u00020\u0008\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\u0015\u0010\u000f\u001a\u00020\u00082\u0006\u0010\u000e\u001a\u00020\r\u00a2\u0006\u0004\u0008\u000f\u0010\u0010J\u0013\u0010\u0012\u001a\u0008\u0012\u0004\u0012\u00020\r0\u0011\u00a2\u0006\u0004\u0008\u0012\u0010\u0013J\u001e\u0010\t\u001a\u00020\u00082\u000c\u0010\u0014\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0011H\u0086@\u00a2\u0006\u0004\u0008\t\u0010\u0015J\u0018\u0010\u001a\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00170\u0016H\u0086@\u00a2\u0006\u0004\u0008\u0018\u0010\u0019J!\u0010\u001f\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u001e0\u001d0\u001c2\u0006\u0010\u0007\u001a\u00020\u001b\u00a2\u0006\u0004\u0008\u001f\u0010 J\u0013\u0010\"\u001a\u0008\u0012\u0004\u0012\u00020!0\u0011\u00a2\u0006\u0004\u0008\"\u0010\u0013R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0003\u0010#R\u001b\u0010)\u001a\u00020$8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008%\u0010&\u001a\u0004\u0008\'\u0010(R\u0014\u0010+\u001a\u00020*8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008+\u0010,R\u0014\u0010.\u001a\u00020-8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008.\u0010/R\u001a\u00102\u001a\u0008\u0012\u0004\u0012\u000201008\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u00082\u00103R \u00106\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020504008\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u00086\u00103R\u001a\u00108\u001a\u0008\u0012\u0004\u0012\u00020\u001b078\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u00088\u00109R\u001a\u0010:\u001a\u0008\u0012\u0004\u0012\u00020\u001b078\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008:\u00109R\u001a\u0010<\u001a\u0008\u0012\u0004\u0012\u0002010;8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008<\u0010=R\u0017\u0010A\u001a\u0008\u0012\u0004\u0012\u0002010>8F\u00a2\u0006\u0006\u001a\u0004\u0008?\u0010@R\u001d\u0010C\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u000205040>8F\u00a2\u0006\u0006\u001a\u0004\u0008B\u0010@R\u0017\u0010G\u001a\u0008\u0012\u0004\u0012\u0002010D8F\u00a2\u0006\u0006\u001a\u0004\u0008E\u0010F\u00a8\u0006I"
    }
    d2 = {
        "Lcom/sec/android/app/sbrowser/wallpaper/data/QuickAccessWallpaperRepository;",
        "",
        "Landroid/content/Context;",
        "context",
        "<init>",
        "(Landroid/content/Context;)V",
        "Lcom/sec/android/app/sbrowser/wallpaper/data/FeaturedCategoriesDto;",
        "category",
        "Ldb/r;",
        "fetchCategoryCardViewThumbnails",
        "(Lcom/sec/android/app/sbrowser/wallpaper/data/FeaturedCategoriesDto;Lib/c;)Ljava/lang/Object;",
        "fetchFeaturedCategoriesWithThumbnails",
        "()V",
        "Landroid/graphics/Bitmap;",
        "bitmap",
        "storeNewWallpaperImage",
        "(Landroid/graphics/Bitmap;)V",
        "",
        "loadColors",
        "()Ljava/util/List;",
        "featuredCategories",
        "(Ljava/util/List;Lib/c;)Ljava/lang/Object;",
        "Ldb/m;",
        "Lcom/sec/android/app/sbrowser/wallpaper/data/FeaturedCategoriesResponse;",
        "fetchFeaturedCategories-IoAF18A",
        "(Lib/c;)Ljava/lang/Object;",
        "fetchFeaturedCategories",
        "",
        "LQc/h;",
        "Lv2/M0;",
        "Lcom/sec/android/app/sbrowser/wallpaper/data/CategoryThumbnailData;",
        "getCategoryWallpaperFlow",
        "(Ljava/lang/String;)LQc/h;",
        "Lcom/sec/android/app/sbrowser/wallpaper/data/WallpaperGalleryFolderItemDto;",
        "fetchGalleries",
        "Landroid/content/Context;",
        "Lcom/sec/android/app/sbrowser/wallpaper/data/FeaturedWallpaperClient;",
        "wallpaperClient$delegate",
        "Ldb/f;",
        "getWallpaperClient",
        "()Lcom/sec/android/app/sbrowser/wallpaper/data/FeaturedWallpaperClient;",
        "wallpaperClient",
        "Lcom/sec/android/app/sbrowser/wallpaper/data/WallpaperColorDataSource;",
        "colorDataSource",
        "Lcom/sec/android/app/sbrowser/wallpaper/data/WallpaperColorDataSource;",
        "Lcom/sec/android/app/sbrowser/wallpaper/data/WallpaperGalleryDataSource;",
        "galleryDataSource",
        "Lcom/sec/android/app/sbrowser/wallpaper/data/WallpaperGalleryDataSource;",
        "Landroidx/lifecycle/X;",
        "Lcom/sec/android/app/sbrowser/wallpaper/data/CategoryCardViewListData;",
        "_featuredCategoriesThumbnailListLiveData",
        "Landroidx/lifecycle/X;",
        "Lcom/sec/android/app/sbrowser/common/livedata/Event;",
        "",
        "_wallpaperStoreResultEventLiveData",
        "Lcom/sec/android/app/sbrowser/common/livedata/AutoClearLiveData;",
        "_categoryWallpaperDownloadStatusLiveData",
        "Lcom/sec/android/app/sbrowser/common/livedata/AutoClearLiveData;",
        "_featuredCategoriesDownloadStatusLiveData",
        "LQc/e0;",
        "_categoryCardViewThumbnailListLiveData",
        "LQc/e0;",
        "Landroidx/lifecycle/S;",
        "getFeaturedCategoriesThumbnailListLiveData",
        "()Landroidx/lifecycle/S;",
        "featuredCategoriesThumbnailListLiveData",
        "getWallpaperStoreResultEventLiveData",
        "wallpaperStoreResultEventLiveData",
        "LQc/i0;",
        "getCategoryCardViewThumbnailListLiveData",
        "()LQc/i0;",
        "categoryCardViewThumbnailListLiveData",
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

.field public static final Companion:Lcom/sec/android/app/sbrowser/wallpaper/data/QuickAccessWallpaperRepository$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final _categoryCardViewThumbnailListLiveData:LQc/e0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LQc/e0;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final _categoryWallpaperDownloadStatusLiveData:Lcom/sec/android/app/sbrowser/common/livedata/AutoClearLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sec/android/app/sbrowser/common/livedata/AutoClearLiveData<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final _featuredCategoriesDownloadStatusLiveData:Lcom/sec/android/app/sbrowser/common/livedata/AutoClearLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sec/android/app/sbrowser/common/livedata/AutoClearLiveData<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final _featuredCategoriesThumbnailListLiveData:Landroidx/lifecycle/X;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/X;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final _wallpaperStoreResultEventLiveData:Landroidx/lifecycle/X;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/X;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final colorDataSource:Lcom/sec/android/app/sbrowser/wallpaper/data/WallpaperColorDataSource;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final context:Landroid/content/Context;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final galleryDataSource:Lcom/sec/android/app/sbrowser/wallpaper/data/WallpaperGalleryDataSource;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final wallpaperClient$delegate:Ldb/f;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/sec/android/app/sbrowser/wallpaper/data/QuickAccessWallpaperRepository$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/sec/android/app/sbrowser/wallpaper/data/QuickAccessWallpaperRepository$Companion;-><init>(Ltb/f;)V

    sput-object v0, Lcom/sec/android/app/sbrowser/wallpaper/data/QuickAccessWallpaperRepository;->Companion:Lcom/sec/android/app/sbrowser/wallpaper/data/QuickAccessWallpaperRepository$Companion;

    const/16 v0, 0x8

    sput v0, Lcom/sec/android/app/sbrowser/wallpaper/data/QuickAccessWallpaperRepository;->$stable:I

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/wallpaper/data/QuickAccessWallpaperRepository;->context:Landroid/content/Context;

    new-instance p1, Lcom/sec/android/app/sbrowser/si_log/model/c;

    const/16 v0, 0x8

    invoke-direct {p1, v0}, Lcom/sec/android/app/sbrowser/si_log/model/c;-><init>(I)V

    invoke-static {p1}, LG5/z2;->e(Lsb/a;)Ldb/o;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/wallpaper/data/QuickAccessWallpaperRepository;->wallpaperClient$delegate:Ldb/f;

    new-instance p1, Lcom/sec/android/app/sbrowser/wallpaper/data/WallpaperColorDataSource;

    invoke-direct {p1}, Lcom/sec/android/app/sbrowser/wallpaper/data/WallpaperColorDataSource;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/wallpaper/data/QuickAccessWallpaperRepository;->colorDataSource:Lcom/sec/android/app/sbrowser/wallpaper/data/WallpaperColorDataSource;

    new-instance p1, Lcom/sec/android/app/sbrowser/wallpaper/data/WallpaperGalleryDataSource;

    invoke-direct {p1}, Lcom/sec/android/app/sbrowser/wallpaper/data/WallpaperGalleryDataSource;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/wallpaper/data/QuickAccessWallpaperRepository;->galleryDataSource:Lcom/sec/android/app/sbrowser/wallpaper/data/WallpaperGalleryDataSource;

    new-instance p1, Landroidx/lifecycle/X;

    invoke-direct {p1}, Landroidx/lifecycle/S;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/wallpaper/data/QuickAccessWallpaperRepository;->_featuredCategoriesThumbnailListLiveData:Landroidx/lifecycle/X;

    new-instance p1, Landroidx/lifecycle/X;

    invoke-direct {p1}, Landroidx/lifecycle/S;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/wallpaper/data/QuickAccessWallpaperRepository;->_wallpaperStoreResultEventLiveData:Landroidx/lifecycle/X;

    new-instance p1, Lcom/sec/android/app/sbrowser/common/livedata/AutoClearLiveData;

    invoke-direct {p1}, Lcom/sec/android/app/sbrowser/common/livedata/AutoClearLiveData;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/wallpaper/data/QuickAccessWallpaperRepository;->_categoryWallpaperDownloadStatusLiveData:Lcom/sec/android/app/sbrowser/common/livedata/AutoClearLiveData;

    new-instance p1, Lcom/sec/android/app/sbrowser/common/livedata/AutoClearLiveData;

    invoke-direct {p1}, Lcom/sec/android/app/sbrowser/common/livedata/AutoClearLiveData;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/wallpaper/data/QuickAccessWallpaperRepository;->_featuredCategoriesDownloadStatusLiveData:Lcom/sec/android/app/sbrowser/common/livedata/AutoClearLiveData;

    const/4 p1, 0x0

    const/4 v0, 0x0

    const/4 v1, 0x6

    invoke-static {p1, p1, v0, v1}, LQc/n0;->b(IILPc/a;I)LQc/m0;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/wallpaper/data/QuickAccessWallpaperRepository;->_categoryCardViewThumbnailListLiveData:LQc/e0;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Ltb/f;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/wallpaper/data/QuickAccessWallpaperRepository;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public static synthetic a()Lcom/sec/android/app/sbrowser/wallpaper/data/FeaturedWallpaperClient;
    .locals 1

    invoke-static {}, Lcom/sec/android/app/sbrowser/wallpaper/data/QuickAccessWallpaperRepository;->wallpaperClient_delegate$lambda$0()Lcom/sec/android/app/sbrowser/wallpaper/data/FeaturedWallpaperClient;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$fetchCategoryCardViewThumbnails(Lcom/sec/android/app/sbrowser/wallpaper/data/QuickAccessWallpaperRepository;Lcom/sec/android/app/sbrowser/wallpaper/data/FeaturedCategoriesDto;Lib/c;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/wallpaper/data/QuickAccessWallpaperRepository;->fetchCategoryCardViewThumbnails(Lcom/sec/android/app/sbrowser/wallpaper/data/FeaturedCategoriesDto;Lib/c;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getContext$p(Lcom/sec/android/app/sbrowser/wallpaper/data/QuickAccessWallpaperRepository;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/wallpaper/data/QuickAccessWallpaperRepository;->context:Landroid/content/Context;

    return-object p0
.end method

.method public static final synthetic access$getWallpaperClient(Lcom/sec/android/app/sbrowser/wallpaper/data/QuickAccessWallpaperRepository;)Lcom/sec/android/app/sbrowser/wallpaper/data/FeaturedWallpaperClient;
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/wallpaper/data/QuickAccessWallpaperRepository;->getWallpaperClient()Lcom/sec/android/app/sbrowser/wallpaper/data/FeaturedWallpaperClient;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$get_categoryCardViewThumbnailListLiveData$p(Lcom/sec/android/app/sbrowser/wallpaper/data/QuickAccessWallpaperRepository;)LQc/e0;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/wallpaper/data/QuickAccessWallpaperRepository;->_categoryCardViewThumbnailListLiveData:LQc/e0;

    return-object p0
.end method

.method public static final synthetic access$get_categoryWallpaperDownloadStatusLiveData$p(Lcom/sec/android/app/sbrowser/wallpaper/data/QuickAccessWallpaperRepository;)Lcom/sec/android/app/sbrowser/common/livedata/AutoClearLiveData;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/wallpaper/data/QuickAccessWallpaperRepository;->_categoryWallpaperDownloadStatusLiveData:Lcom/sec/android/app/sbrowser/common/livedata/AutoClearLiveData;

    return-object p0
.end method

.method public static final synthetic access$get_featuredCategoriesDownloadStatusLiveData$p(Lcom/sec/android/app/sbrowser/wallpaper/data/QuickAccessWallpaperRepository;)Lcom/sec/android/app/sbrowser/common/livedata/AutoClearLiveData;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/wallpaper/data/QuickAccessWallpaperRepository;->_featuredCategoriesDownloadStatusLiveData:Lcom/sec/android/app/sbrowser/common/livedata/AutoClearLiveData;

    return-object p0
.end method

.method public static final synthetic access$get_featuredCategoriesThumbnailListLiveData$p(Lcom/sec/android/app/sbrowser/wallpaper/data/QuickAccessWallpaperRepository;)Landroidx/lifecycle/X;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/wallpaper/data/QuickAccessWallpaperRepository;->_featuredCategoriesThumbnailListLiveData:Landroidx/lifecycle/X;

    return-object p0
.end method

.method public static final synthetic access$get_wallpaperStoreResultEventLiveData$p(Lcom/sec/android/app/sbrowser/wallpaper/data/QuickAccessWallpaperRepository;)Landroidx/lifecycle/X;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/wallpaper/data/QuickAccessWallpaperRepository;->_wallpaperStoreResultEventLiveData:Landroidx/lifecycle/X;

    return-object p0
.end method

.method public static synthetic b(Ljava/lang/String;)Lv2/g1;
    .locals 0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/wallpaper/data/QuickAccessWallpaperRepository;->getCategoryWallpaperFlow$lambda$1(Ljava/lang/String;)Lv2/g1;

    move-result-object p0

    return-object p0
.end method

.method private final fetchCategoryCardViewThumbnails(Lcom/sec/android/app/sbrowser/wallpaper/data/FeaturedCategoriesDto;Lib/c;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/android/app/sbrowser/wallpaper/data/FeaturedCategoriesDto;",
            "Lib/c<",
            "-",
            "Ldb/r;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    sget-object v0, LNc/N;->c:LWc/e;

    new-instance v1, Lcom/sec/android/app/sbrowser/wallpaper/data/QuickAccessWallpaperRepository$fetchCategoryCardViewThumbnails$2;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcom/sec/android/app/sbrowser/wallpaper/data/QuickAccessWallpaperRepository$fetchCategoryCardViewThumbnails$2;-><init>(Lcom/sec/android/app/sbrowser/wallpaper/data/QuickAccessWallpaperRepository;Lcom/sec/android/app/sbrowser/wallpaper/data/FeaturedCategoriesDto;Lib/c;)V

    invoke-static {v0, v1, p2}, LNc/E;->K(Lib/h;Lsb/n;Lib/c;)Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Ljb/a;->COROUTINE_SUSPENDED:Ljb/a;

    if-ne p0, p1, :cond_0

    return-object p0

    :cond_0
    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0
.end method

.method private static final getCategoryWallpaperFlow$lambda$1(Ljava/lang/String;)Lv2/g1;
    .locals 2

    new-instance v0, Lcom/sec/android/app/sbrowser/wallpaper/data/CategoryWallpaperPagingSource;

    new-instance v1, Lcom/sec/android/app/sbrowser/wallpaper/data/FeaturedWallpaperClient;

    invoke-direct {v1}, Lcom/sec/android/app/sbrowser/wallpaper/data/FeaturedWallpaperClient;-><init>()V

    invoke-direct {v0, v1, p0}, Lcom/sec/android/app/sbrowser/wallpaper/data/CategoryWallpaperPagingSource;-><init>(Lcom/sec/android/app/sbrowser/wallpaper/data/FeaturedWallpaperClient;Ljava/lang/String;)V

    return-object v0
.end method

.method private final getWallpaperClient()Lcom/sec/android/app/sbrowser/wallpaper/data/FeaturedWallpaperClient;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/wallpaper/data/QuickAccessWallpaperRepository;->wallpaperClient$delegate:Ldb/f;

    invoke-interface {p0}, Ldb/f;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/sbrowser/wallpaper/data/FeaturedWallpaperClient;

    return-object p0
.end method

.method private static final wallpaperClient_delegate$lambda$0()Lcom/sec/android/app/sbrowser/wallpaper/data/FeaturedWallpaperClient;
    .locals 1

    new-instance v0, Lcom/sec/android/app/sbrowser/wallpaper/data/FeaturedWallpaperClient;

    invoke-direct {v0}, Lcom/sec/android/app/sbrowser/wallpaper/data/FeaturedWallpaperClient;-><init>()V

    return-object v0
.end method


# virtual methods
.method public final fetchCategoryCardViewThumbnails(Ljava/util/List;Lib/c;)Ljava/lang/Object;
    .locals 3
    .param p1    # Ljava/util/List;
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
            "Ljava/util/List<",
            "Lcom/sec/android/app/sbrowser/wallpaper/data/FeaturedCategoriesDto;",
            ">;",
            "Lib/c<",
            "-",
            "Ldb/r;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/wallpaper/data/QuickAccessWallpaperRepository;->_categoryWallpaperDownloadStatusLiveData:Lcom/sec/android/app/sbrowser/common/livedata/AutoClearLiveData;

    const-string v1, "progress"

    invoke-virtual {v0, v1}, Landroidx/lifecycle/X;->setValue(Ljava/lang/Object;)V

    sget-object v0, LNc/N;->c:LWc/e;

    new-instance v1, Lcom/sec/android/app/sbrowser/wallpaper/data/QuickAccessWallpaperRepository$fetchCategoryCardViewThumbnails$4;

    const/4 v2, 0x0

    invoke-direct {v1, p1, p0, v2}, Lcom/sec/android/app/sbrowser/wallpaper/data/QuickAccessWallpaperRepository$fetchCategoryCardViewThumbnails$4;-><init>(Ljava/util/List;Lcom/sec/android/app/sbrowser/wallpaper/data/QuickAccessWallpaperRepository;Lib/c;)V

    invoke-static {v0, v1, p2}, LNc/E;->K(Lib/h;Lsb/n;Lib/c;)Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Ljb/a;->COROUTINE_SUSPENDED:Ljb/a;

    if-ne p0, p1, :cond_0

    return-object p0

    :cond_0
    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0
.end method

.method public final fetchFeaturedCategories-IoAF18A(Lib/c;)Ljava/lang/Object;
    .locals 5
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

    instance-of v0, p1, Lcom/sec/android/app/sbrowser/wallpaper/data/QuickAccessWallpaperRepository$fetchFeaturedCategories$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/sec/android/app/sbrowser/wallpaper/data/QuickAccessWallpaperRepository$fetchFeaturedCategories$1;

    iget v1, v0, Lcom/sec/android/app/sbrowser/wallpaper/data/QuickAccessWallpaperRepository$fetchFeaturedCategories$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/sec/android/app/sbrowser/wallpaper/data/QuickAccessWallpaperRepository$fetchFeaturedCategories$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/sec/android/app/sbrowser/wallpaper/data/QuickAccessWallpaperRepository$fetchFeaturedCategories$1;

    invoke-direct {v0, p0, p1}, Lcom/sec/android/app/sbrowser/wallpaper/data/QuickAccessWallpaperRepository$fetchFeaturedCategories$1;-><init>(Lcom/sec/android/app/sbrowser/wallpaper/data/QuickAccessWallpaperRepository;Lib/c;)V

    :goto_0
    iget-object p1, v0, Lcom/sec/android/app/sbrowser/wallpaper/data/QuickAccessWallpaperRepository$fetchFeaturedCategories$1;->result:Ljava/lang/Object;

    sget-object v1, Ljb/a;->COROUTINE_SUSPENDED:Ljb/a;

    iget v2, v0, Lcom/sec/android/app/sbrowser/wallpaper/data/QuickAccessWallpaperRepository$fetchFeaturedCategories$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p1}, LG5/A2;->f(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {p1}, LG5/A2;->f(Ljava/lang/Object;)V

    sget-object p1, LNc/N;->c:LWc/e;

    new-instance v2, Lcom/sec/android/app/sbrowser/wallpaper/data/QuickAccessWallpaperRepository$fetchFeaturedCategories$2;

    const/4 v4, 0x0

    invoke-direct {v2, p0, v4}, Lcom/sec/android/app/sbrowser/wallpaper/data/QuickAccessWallpaperRepository$fetchFeaturedCategories$2;-><init>(Lcom/sec/android/app/sbrowser/wallpaper/data/QuickAccessWallpaperRepository;Lib/c;)V

    iput v3, v0, Lcom/sec/android/app/sbrowser/wallpaper/data/QuickAccessWallpaperRepository$fetchFeaturedCategories$1;->label:I

    invoke-static {p1, v2, v0}, LNc/E;->K(Lib/h;Lsb/n;Lib/c;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    check-cast p1, Ldb/m;

    iget-object p0, p1, Ldb/m;->a:Ljava/lang/Object;

    return-object p0
.end method

.method public final fetchFeaturedCategoriesWithThumbnails()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/wallpaper/data/QuickAccessWallpaperRepository;->_featuredCategoriesDownloadStatusLiveData:Lcom/sec/android/app/sbrowser/common/livedata/AutoClearLiveData;

    const-string v1, "progress"

    invoke-virtual {v0, v1}, Landroidx/lifecycle/X;->setValue(Ljava/lang/Object;)V

    sget-object v0, LNc/N;->c:LWc/e;

    invoke-static {v0}, LNc/E;->c(Lib/h;)LUc/e;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/sbrowser/wallpaper/data/QuickAccessWallpaperRepository$fetchFeaturedCategoriesWithThumbnails$1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/sec/android/app/sbrowser/wallpaper/data/QuickAccessWallpaperRepository$fetchFeaturedCategoriesWithThumbnails$1;-><init>(Lcom/sec/android/app/sbrowser/wallpaper/data/QuickAccessWallpaperRepository;Lib/c;)V

    const/4 p0, 0x3

    invoke-static {v0, v2, v2, v1, p0}, LNc/E;->y(LNc/B;Lib/h;LNc/D;Lsb/n;I)LNc/C0;

    return-void
.end method

.method public final fetchGalleries()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/sec/android/app/sbrowser/wallpaper/data/WallpaperGalleryFolderItemDto;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/wallpaper/data/QuickAccessWallpaperRepository;->galleryDataSource:Lcom/sec/android/app/sbrowser/wallpaper/data/WallpaperGalleryDataSource;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/wallpaper/data/WallpaperGalleryDataSource;->fetchWallpapers()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final getCategoryCardViewThumbnailListLiveData()LQc/i0;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LQc/i0;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/wallpaper/data/QuickAccessWallpaperRepository;->_categoryCardViewThumbnailListLiveData:LQc/e0;

    return-object p0
.end method

.method public final getCategoryWallpaperFlow(Ljava/lang/String;)LQc/h;
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "LQc/h;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "category"

    invoke-static {p1, p0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lv2/L0;

    invoke-direct {p0}, Lv2/L0;-><init>()V

    new-instance v0, LJ2/L;

    const/16 v1, 0xf

    invoke-direct {v0, v1, p1}, LJ2/L;-><init>(ILjava/lang/Object;)V

    new-instance p1, Lv2/h0;

    new-instance v1, Lv2/K0;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lv2/K0;-><init>(LJ2/L;Lib/c;)V

    invoke-direct {p1, v1, v2, p0}, Lv2/h0;-><init>(Lv2/K0;Ljava/lang/Object;Lv2/L0;)V

    iget-object p0, p1, Lv2/h0;->f:LQc/h;

    return-object p0
.end method

.method public final getFeaturedCategoriesThumbnailListLiveData()Landroidx/lifecycle/S;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/S;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/wallpaper/data/QuickAccessWallpaperRepository;->_featuredCategoriesThumbnailListLiveData:Landroidx/lifecycle/X;

    return-object p0
.end method

.method public final getWallpaperStoreResultEventLiveData()Landroidx/lifecycle/S;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/S;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/wallpaper/data/QuickAccessWallpaperRepository;->_wallpaperStoreResultEventLiveData:Landroidx/lifecycle/X;

    return-object p0
.end method

.method public final loadColors()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/wallpaper/data/QuickAccessWallpaperRepository;->colorDataSource:Lcom/sec/android/app/sbrowser/wallpaper/data/WallpaperColorDataSource;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/wallpaper/data/WallpaperColorDataSource;->fetchWallpapers()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final storeNewWallpaperImage(Landroid/graphics/Bitmap;)V
    .locals 3
    .param p1    # Landroid/graphics/Bitmap;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "bitmap"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, LNc/N;->c:LWc/e;

    invoke-static {v0}, LNc/E;->c(Lib/h;)LUc/e;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/sbrowser/wallpaper/data/QuickAccessWallpaperRepository$storeNewWallpaperImage$1;

    const/4 v2, 0x0

    invoke-direct {v1, p1, p0, v2}, Lcom/sec/android/app/sbrowser/wallpaper/data/QuickAccessWallpaperRepository$storeNewWallpaperImage$1;-><init>(Landroid/graphics/Bitmap;Lcom/sec/android/app/sbrowser/wallpaper/data/QuickAccessWallpaperRepository;Lib/c;)V

    const/4 p0, 0x3

    invoke-static {v0, v2, v2, v1, p0}, LNc/E;->y(LNc/B;Lib/h;LNc/D;Lsb/n;I)LNc/C0;

    return-void
.end method
