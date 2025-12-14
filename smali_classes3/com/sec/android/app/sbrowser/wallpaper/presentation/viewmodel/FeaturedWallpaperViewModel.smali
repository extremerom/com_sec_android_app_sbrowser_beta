.class public final Lcom/sec/android/app/sbrowser/wallpaper/presentation/viewmodel/FeaturedWallpaperViewModel;
.super Landroidx/lifecycle/s0;
.source "SourceFile"


# annotations
.annotation build Landroidx/compose/runtime/internal/StabilityInferred;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/wallpaper/presentation/viewmodel/FeaturedWallpaperViewModel$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000t\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u000b\u0008\u0007\u0018\u0000 ;2\u00020\u0001:\u0001;B\u0011\u0012\u0008\u0008\u0002\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\r\u0010\u0007\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u001b\u0010\u000c\u001a\u00020\u00062\u000c\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00020\n0\t\u00a2\u0006\u0004\u0008\u000c\u0010\rJ\r\u0010\u000e\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\u000e\u0010\u0008J\r\u0010\u000f\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\u000f\u0010\u0008J\u0013\u0010\u0011\u001a\u0008\u0012\u0004\u0012\u00020\u00100\t\u00a2\u0006\u0004\u0008\u0011\u0010\u0012J\u0015\u0010\u0015\u001a\u00020\u00062\u0006\u0010\u0014\u001a\u00020\u0013\u00a2\u0006\u0004\u0008\u0015\u0010\u0016R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0003\u0010\u0017R\u001b\u0010\u001d\u001a\u00020\u00188BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0019\u0010\u001a\u001a\u0004\u0008\u001b\u0010\u001cR\"\u0010\u001f\u001a\u0010\u0012\u000c\u0012\n\u0012\u0004\u0012\u00020\n\u0018\u00010\t0\u001e8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u001f\u0010 R\u001a\u0010\"\u001a\u0008\u0012\u0004\u0012\u00020\u00130!8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\"\u0010#R\u001d\u0010%\u001a\u0008\u0012\u0004\u0012\u00020\u00130$8\u0006\u00a2\u0006\u000c\n\u0004\u0008%\u0010&\u001a\u0004\u0008%\u0010\'R\u001c\u0010)\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010(0!8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008)\u0010#R \u0010+\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020*0\t0!8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008+\u0010#R\u0017\u00100\u001a\u0008\u0012\u0004\u0012\u00020-0,8F\u00a2\u0006\u0006\u001a\u0004\u0008.\u0010/R\u001f\u00104\u001a\u0010\u0012\u000c\u0012\n\u0012\u0004\u0012\u00020\n\u0018\u00010\t018F\u00a2\u0006\u0006\u001a\u0004\u00082\u00103R\u0019\u00106\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010(0$8F\u00a2\u0006\u0006\u001a\u0004\u00085\u0010\'R\u0017\u00108\u001a\u0008\u0012\u0004\u0012\u00020-018F\u00a2\u0006\u0006\u001a\u0004\u00087\u00103R\u001d\u0010:\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020*0\t0$8F\u00a2\u0006\u0006\u001a\u0004\u00089\u0010\'\u00a8\u0006<"
    }
    d2 = {
        "Lcom/sec/android/app/sbrowser/wallpaper/presentation/viewmodel/FeaturedWallpaperViewModel;",
        "Landroidx/lifecycle/s0;",
        "LNc/x;",
        "ioDispatcher",
        "<init>",
        "(LNc/x;)V",
        "Ldb/r;",
        "fetchFeaturedCategoriesWithThumbnails",
        "()V",
        "",
        "Lcom/sec/android/app/sbrowser/wallpaper/data/FeaturedCategoriesDto;",
        "featuredCategories",
        "fetchCategoryCardViewThumbnails",
        "(Ljava/util/List;)V",
        "fetchFeaturedCategories",
        "fetchGalleryUris",
        "Landroid/graphics/Bitmap;",
        "loadColors",
        "()Ljava/util/List;",
        "",
        "isCollected",
        "setFeaturedCategoryDataCollected",
        "(Z)V",
        "LNc/x;",
        "Lcom/sec/android/app/sbrowser/wallpaper/data/QuickAccessWallpaperRepository;",
        "repository$delegate",
        "Ldb/f;",
        "getRepository",
        "()Lcom/sec/android/app/sbrowser/wallpaper/data/QuickAccessWallpaperRepository;",
        "repository",
        "LQc/e0;",
        "_featuredCategoryListFlow",
        "LQc/e0;",
        "LQc/f0;",
        "_isFeaturedCategoryDataCollected",
        "LQc/f0;",
        "LQc/y0;",
        "isFeaturedCategoryDataCollected",
        "LQc/y0;",
        "()LQc/y0;",
        "",
        "_featuredCategoriesDownloadStatusFlow",
        "Lcom/sec/android/app/sbrowser/wallpaper/data/WallpaperGalleryFolderItemDto;",
        "_galleryUris",
        "Landroidx/lifecycle/S;",
        "Lcom/sec/android/app/sbrowser/wallpaper/data/CategoryCardViewListData;",
        "getFeaturedCategoriesListLiveData",
        "()Landroidx/lifecycle/S;",
        "featuredCategoriesListLiveData",
        "LQc/i0;",
        "getFeaturedCategoryListFlow",
        "()LQc/i0;",
        "featuredCategoryListFlow",
        "getFeaturedCategoriesDownloadStatusFlow",
        "featuredCategoriesDownloadStatusFlow",
        "getCategoryCardViewThumbnailListLiveData",
        "categoryCardViewThumbnailListLiveData",
        "getGalleryUris",
        "galleryUris",
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

.field public static final Companion:Lcom/sec/android/app/sbrowser/wallpaper/presentation/viewmodel/FeaturedWallpaperViewModel$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final _featuredCategoriesDownloadStatusFlow:LQc/f0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LQc/f0;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final _featuredCategoryListFlow:LQc/e0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LQc/e0;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final _galleryUris:LQc/f0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LQc/f0;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final _isFeaturedCategoryDataCollected:LQc/f0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LQc/f0;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final ioDispatcher:LNc/x;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final isFeaturedCategoryDataCollected:LQc/y0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LQc/y0;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final repository$delegate:Ldb/f;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/sec/android/app/sbrowser/wallpaper/presentation/viewmodel/FeaturedWallpaperViewModel$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/sec/android/app/sbrowser/wallpaper/presentation/viewmodel/FeaturedWallpaperViewModel$Companion;-><init>(Ltb/f;)V

    sput-object v0, Lcom/sec/android/app/sbrowser/wallpaper/presentation/viewmodel/FeaturedWallpaperViewModel;->Companion:Lcom/sec/android/app/sbrowser/wallpaper/presentation/viewmodel/FeaturedWallpaperViewModel$Companion;

    const/16 v0, 0x8

    sput v0, Lcom/sec/android/app/sbrowser/wallpaper/presentation/viewmodel/FeaturedWallpaperViewModel;->$stable:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, v0}, Lcom/sec/android/app/sbrowser/wallpaper/presentation/viewmodel/FeaturedWallpaperViewModel;-><init>(LNc/x;ILtb/f;)V

    return-void
.end method

.method public constructor <init>(LNc/x;)V
    .locals 2
    .param p1    # LNc/x;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "ioDispatcher"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Landroidx/lifecycle/s0;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/wallpaper/presentation/viewmodel/FeaturedWallpaperViewModel;->ioDispatcher:LNc/x;

    new-instance p1, Lcom/sec/android/app/sbrowser/si_log/model/c;

    const/16 v0, 0xc

    invoke-direct {p1, v0}, Lcom/sec/android/app/sbrowser/si_log/model/c;-><init>(I)V

    invoke-static {p1}, LG5/z2;->e(Lsb/a;)Ldb/o;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/wallpaper/presentation/viewmodel/FeaturedWallpaperViewModel;->repository$delegate:Ldb/f;

    const/4 p1, 0x0

    const/4 v0, 0x0

    const/4 v1, 0x6

    invoke-static {p1, p1, v0, v1}, LQc/n0;->b(IILPc/a;I)LQc/m0;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/wallpaper/presentation/viewmodel/FeaturedWallpaperViewModel;->_featuredCategoryListFlow:LQc/e0;

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {p1}, LQc/n0;->c(Ljava/lang/Object;)LQc/A0;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/wallpaper/presentation/viewmodel/FeaturedWallpaperViewModel;->_isFeaturedCategoryDataCollected:LQc/f0;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/wallpaper/presentation/viewmodel/FeaturedWallpaperViewModel;->isFeaturedCategoryDataCollected:LQc/y0;

    invoke-static {v0}, LQc/n0;->c(Ljava/lang/Object;)LQc/A0;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/wallpaper/presentation/viewmodel/FeaturedWallpaperViewModel;->_featuredCategoriesDownloadStatusFlow:LQc/f0;

    sget-object p1, Lfb/v;->a:Lfb/v;

    invoke-static {p1}, LQc/n0;->c(Ljava/lang/Object;)LQc/A0;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/wallpaper/presentation/viewmodel/FeaturedWallpaperViewModel;->_galleryUris:LQc/f0;

    return-void
.end method

.method public constructor <init>(LNc/x;ILtb/f;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    sget-object p1, LNc/N;->c:LWc/e;

    :cond_0
    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/wallpaper/presentation/viewmodel/FeaturedWallpaperViewModel;-><init>(LNc/x;)V

    return-void
.end method

.method public static final synthetic access$getIoDispatcher$p(Lcom/sec/android/app/sbrowser/wallpaper/presentation/viewmodel/FeaturedWallpaperViewModel;)LNc/x;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/wallpaper/presentation/viewmodel/FeaturedWallpaperViewModel;->ioDispatcher:LNc/x;

    return-object p0
.end method

.method public static final synthetic access$getRepository(Lcom/sec/android/app/sbrowser/wallpaper/presentation/viewmodel/FeaturedWallpaperViewModel;)Lcom/sec/android/app/sbrowser/wallpaper/data/QuickAccessWallpaperRepository;
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/wallpaper/presentation/viewmodel/FeaturedWallpaperViewModel;->getRepository()Lcom/sec/android/app/sbrowser/wallpaper/data/QuickAccessWallpaperRepository;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$get_featuredCategoriesDownloadStatusFlow$p(Lcom/sec/android/app/sbrowser/wallpaper/presentation/viewmodel/FeaturedWallpaperViewModel;)LQc/f0;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/wallpaper/presentation/viewmodel/FeaturedWallpaperViewModel;->_featuredCategoriesDownloadStatusFlow:LQc/f0;

    return-object p0
.end method

.method public static final synthetic access$get_featuredCategoryListFlow$p(Lcom/sec/android/app/sbrowser/wallpaper/presentation/viewmodel/FeaturedWallpaperViewModel;)LQc/e0;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/wallpaper/presentation/viewmodel/FeaturedWallpaperViewModel;->_featuredCategoryListFlow:LQc/e0;

    return-object p0
.end method

.method public static final synthetic access$get_galleryUris$p(Lcom/sec/android/app/sbrowser/wallpaper/presentation/viewmodel/FeaturedWallpaperViewModel;)LQc/f0;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/wallpaper/presentation/viewmodel/FeaturedWallpaperViewModel;->_galleryUris:LQc/f0;

    return-object p0
.end method

.method public static synthetic b()Lcom/sec/android/app/sbrowser/wallpaper/data/QuickAccessWallpaperRepository;
    .locals 1

    invoke-static {}, Lcom/sec/android/app/sbrowser/wallpaper/presentation/viewmodel/FeaturedWallpaperViewModel;->repository_delegate$lambda$0()Lcom/sec/android/app/sbrowser/wallpaper/data/QuickAccessWallpaperRepository;

    move-result-object v0

    return-object v0
.end method

.method private final getRepository()Lcom/sec/android/app/sbrowser/wallpaper/data/QuickAccessWallpaperRepository;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/wallpaper/presentation/viewmodel/FeaturedWallpaperViewModel;->repository$delegate:Ldb/f;

    invoke-interface {p0}, Ldb/f;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/sbrowser/wallpaper/data/QuickAccessWallpaperRepository;

    return-object p0
.end method

.method private static final repository_delegate$lambda$0()Lcom/sec/android/app/sbrowser/wallpaper/data/QuickAccessWallpaperRepository;
    .locals 3

    sget-object v0, Lcom/sec/android/app/sbrowser/wallpaper/data/QuickAccessWallpaperRepository;->Companion:Lcom/sec/android/app/sbrowser/wallpaper/data/QuickAccessWallpaperRepository$Companion;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2, v1}, Lcom/sec/android/app/sbrowser/wallpaper/data/QuickAccessWallpaperRepository$Companion;->getInstance$default(Lcom/sec/android/app/sbrowser/wallpaper/data/QuickAccessWallpaperRepository$Companion;Landroid/content/Context;ILjava/lang/Object;)Lcom/sec/android/app/sbrowser/wallpaper/data/QuickAccessWallpaperRepository;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final fetchCategoryCardViewThumbnails(Ljava/util/List;)V
    .locals 3
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sec/android/app/sbrowser/wallpaper/data/FeaturedCategoriesDto;",
            ">;)V"
        }
    .end annotation

    const-string v0, "featuredCategories"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Landroidx/lifecycle/l0;->k(Landroidx/lifecycle/s0;)LNc/B;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/sbrowser/wallpaper/presentation/viewmodel/FeaturedWallpaperViewModel$fetchCategoryCardViewThumbnails$1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcom/sec/android/app/sbrowser/wallpaper/presentation/viewmodel/FeaturedWallpaperViewModel$fetchCategoryCardViewThumbnails$1;-><init>(Lcom/sec/android/app/sbrowser/wallpaper/presentation/viewmodel/FeaturedWallpaperViewModel;Ljava/util/List;Lib/c;)V

    const/4 p0, 0x3

    invoke-static {v0, v2, v2, v1, p0}, LNc/E;->y(LNc/B;Lib/h;LNc/D;Lsb/n;I)LNc/C0;

    return-void
.end method

.method public final fetchFeaturedCategories()V
    .locals 3

    invoke-static {p0}, Landroidx/lifecycle/l0;->k(Landroidx/lifecycle/s0;)LNc/B;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/sbrowser/wallpaper/presentation/viewmodel/FeaturedWallpaperViewModel$fetchFeaturedCategories$1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/sec/android/app/sbrowser/wallpaper/presentation/viewmodel/FeaturedWallpaperViewModel$fetchFeaturedCategories$1;-><init>(Lcom/sec/android/app/sbrowser/wallpaper/presentation/viewmodel/FeaturedWallpaperViewModel;Lib/c;)V

    const/4 p0, 0x3

    invoke-static {v0, v2, v2, v1, p0}, LNc/E;->y(LNc/B;Lib/h;LNc/D;Lsb/n;I)LNc/C0;

    return-void
.end method

.method public final fetchFeaturedCategoriesWithThumbnails()V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/wallpaper/presentation/viewmodel/FeaturedWallpaperViewModel;->getRepository()Lcom/sec/android/app/sbrowser/wallpaper/data/QuickAccessWallpaperRepository;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/wallpaper/data/QuickAccessWallpaperRepository;->fetchFeaturedCategoriesWithThumbnails()V

    return-void
.end method

.method public final fetchGalleryUris()V
    .locals 3

    invoke-static {p0}, Landroidx/lifecycle/l0;->k(Landroidx/lifecycle/s0;)LNc/B;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/sbrowser/wallpaper/presentation/viewmodel/FeaturedWallpaperViewModel$fetchGalleryUris$1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/sec/android/app/sbrowser/wallpaper/presentation/viewmodel/FeaturedWallpaperViewModel$fetchGalleryUris$1;-><init>(Lcom/sec/android/app/sbrowser/wallpaper/presentation/viewmodel/FeaturedWallpaperViewModel;Lib/c;)V

    const/4 p0, 0x3

    invoke-static {v0, v2, v2, v1, p0}, LNc/E;->y(LNc/B;Lib/h;LNc/D;Lsb/n;I)LNc/C0;

    return-void
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

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/wallpaper/presentation/viewmodel/FeaturedWallpaperViewModel;->getRepository()Lcom/sec/android/app/sbrowser/wallpaper/data/QuickAccessWallpaperRepository;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/wallpaper/data/QuickAccessWallpaperRepository;->getCategoryCardViewThumbnailListLiveData()LQc/i0;

    move-result-object p0

    return-object p0
.end method

.method public final getFeaturedCategoriesDownloadStatusFlow()LQc/y0;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LQc/y0;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/wallpaper/presentation/viewmodel/FeaturedWallpaperViewModel;->_featuredCategoriesDownloadStatusFlow:LQc/f0;

    return-object p0
.end method

.method public final getFeaturedCategoriesListLiveData()Landroidx/lifecycle/S;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/S;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/wallpaper/presentation/viewmodel/FeaturedWallpaperViewModel;->getRepository()Lcom/sec/android/app/sbrowser/wallpaper/data/QuickAccessWallpaperRepository;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/wallpaper/data/QuickAccessWallpaperRepository;->getFeaturedCategoriesThumbnailListLiveData()Landroidx/lifecycle/S;

    move-result-object p0

    return-object p0
.end method

.method public final getFeaturedCategoryListFlow()LQc/i0;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LQc/i0;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/wallpaper/presentation/viewmodel/FeaturedWallpaperViewModel;->_featuredCategoryListFlow:LQc/e0;

    return-object p0
.end method

.method public final getGalleryUris()LQc/y0;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LQc/y0;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/wallpaper/presentation/viewmodel/FeaturedWallpaperViewModel;->_galleryUris:LQc/f0;

    return-object p0
.end method

.method public final isFeaturedCategoryDataCollected()LQc/y0;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LQc/y0;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/wallpaper/presentation/viewmodel/FeaturedWallpaperViewModel;->isFeaturedCategoryDataCollected:LQc/y0;

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

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/wallpaper/presentation/viewmodel/FeaturedWallpaperViewModel;->getRepository()Lcom/sec/android/app/sbrowser/wallpaper/data/QuickAccessWallpaperRepository;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/wallpaper/data/QuickAccessWallpaperRepository;->loadColors()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final setFeaturedCategoryDataCollected(Z)V
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/wallpaper/presentation/viewmodel/FeaturedWallpaperViewModel;->_isFeaturedCategoryDataCollected:LQc/f0;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    check-cast p0, LQc/A0;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, LQc/A0;->k(Ljava/lang/Object;Ljava/lang/Object;)Z

    return-void
.end method
