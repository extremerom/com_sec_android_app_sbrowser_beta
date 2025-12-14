.class public final Lcom/sec/android/app/sbrowser/wallpaper/presentation/viewmodel/QuickAccessWallpaperPreviewViewModel;
.super Landroidx/lifecycle/s0;
.source "SourceFile"


# annotations
.annotation build Landroidx/compose/runtime/internal/StabilityInferred;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/wallpaper/presentation/viewmodel/QuickAccessWallpaperPreviewViewModel$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000P\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0005\u0008\u0007\u0018\u0000 )2\u00020\u0001:\u0001)B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u001d\u0010\u0008\u001a\u00020\u00072\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0006\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\u001f\u0010\u000c\u001a\u00020\u00072\u0008\u0010\u000b\u001a\u0004\u0018\u00010\n2\u0006\u0010\u0006\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u000c\u0010\rJ\u0017\u0010\u000e\u001a\u00020\u00072\u0008\u0010\u000b\u001a\u0004\u0018\u00010\n\u00a2\u0006\u0004\u0008\u000e\u0010\u000fJ\r\u0010\u0010\u001a\u00020\u0007\u00a2\u0006\u0004\u0008\u0010\u0010\u0003J\r\u0010\u0011\u001a\u00020\u0007\u00a2\u0006\u0004\u0008\u0011\u0010\u0003R\u001a\u0010\u0014\u001a\u0008\u0012\u0004\u0012\u00020\u00130\u00128\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0014\u0010\u0015R\"\u0010\u0006\u001a\u00020\u00048\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0006\u0010\u0016\u001a\u0004\u0008\u0017\u0010\u0018\"\u0004\u0008\u0019\u0010\u001aR\u0014\u0010\u001e\u001a\u00020\u001b8BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u001c\u0010\u001dR\u0017\u0010\"\u001a\u0008\u0012\u0004\u0012\u00020\u00130\u001f8F\u00a2\u0006\u0006\u001a\u0004\u0008 \u0010!R\u001d\u0010(\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020%0$0#8F\u00a2\u0006\u0006\u001a\u0004\u0008&\u0010\'\u00a8\u0006*"
    }
    d2 = {
        "Lcom/sec/android/app/sbrowser/wallpaper/presentation/viewmodel/QuickAccessWallpaperPreviewViewModel;",
        "Landroidx/lifecycle/s0;",
        "<init>",
        "()V",
        "",
        "wallpaperImageUrl",
        "categoryName",
        "Ldb/r;",
        "fetchSelectedWallpaperImageFromUrl",
        "(Ljava/lang/String;Ljava/lang/String;)V",
        "Landroid/graphics/Bitmap;",
        "bitmap",
        "changePreviewWithBitmap",
        "(Landroid/graphics/Bitmap;Ljava/lang/String;)V",
        "storeNewWallpaperImage",
        "(Landroid/graphics/Bitmap;)V",
        "onSuccess",
        "onFailure",
        "LQc/f0;",
        "Lcom/sec/android/app/sbrowser/wallpaper/presentation/viewmodel/WallpaperPreviewUiState;",
        "_uiState",
        "LQc/f0;",
        "Ljava/lang/String;",
        "getCategoryName",
        "()Ljava/lang/String;",
        "setCategoryName",
        "(Ljava/lang/String;)V",
        "Lcom/sec/android/app/sbrowser/wallpaper/data/QuickAccessWallpaperRepository;",
        "getRepository",
        "()Lcom/sec/android/app/sbrowser/wallpaper/data/QuickAccessWallpaperRepository;",
        "repository",
        "LQc/y0;",
        "getUiState",
        "()LQc/y0;",
        "uiState",
        "Landroidx/lifecycle/S;",
        "Lcom/sec/android/app/sbrowser/common/livedata/Event;",
        "",
        "getWallpaperStoreResultEventLiveData",
        "()Landroidx/lifecycle/S;",
        "wallpaperStoreResultEventLiveData",
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
.field public static final $stable:I

.field public static final Companion:Lcom/sec/android/app/sbrowser/wallpaper/presentation/viewmodel/QuickAccessWallpaperPreviewViewModel$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final _uiState:LQc/f0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LQc/f0;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private categoryName:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/sec/android/app/sbrowser/wallpaper/presentation/viewmodel/QuickAccessWallpaperPreviewViewModel$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/sec/android/app/sbrowser/wallpaper/presentation/viewmodel/QuickAccessWallpaperPreviewViewModel$Companion;-><init>(Ltb/f;)V

    sput-object v0, Lcom/sec/android/app/sbrowser/wallpaper/presentation/viewmodel/QuickAccessWallpaperPreviewViewModel;->Companion:Lcom/sec/android/app/sbrowser/wallpaper/presentation/viewmodel/QuickAccessWallpaperPreviewViewModel$Companion;

    const/16 v0, 0x8

    sput v0, Lcom/sec/android/app/sbrowser/wallpaper/presentation/viewmodel/QuickAccessWallpaperPreviewViewModel;->$stable:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroidx/lifecycle/s0;-><init>()V

    sget-object v0, Lcom/sec/android/app/sbrowser/wallpaper/presentation/viewmodel/WallpaperPreviewUiState$Idle;->INSTANCE:Lcom/sec/android/app/sbrowser/wallpaper/presentation/viewmodel/WallpaperPreviewUiState$Idle;

    invoke-static {v0}, LQc/n0;->c(Ljava/lang/Object;)LQc/A0;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/wallpaper/presentation/viewmodel/QuickAccessWallpaperPreviewViewModel;->_uiState:LQc/f0;

    const-string v0, ""

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/wallpaper/presentation/viewmodel/QuickAccessWallpaperPreviewViewModel;->categoryName:Ljava/lang/String;

    return-void
.end method

.method private final getRepository()Lcom/sec/android/app/sbrowser/wallpaper/data/QuickAccessWallpaperRepository;
    .locals 2

    sget-object p0, Lcom/sec/android/app/sbrowser/wallpaper/data/QuickAccessWallpaperRepository;->Companion:Lcom/sec/android/app/sbrowser/wallpaper/data/QuickAccessWallpaperRepository$Companion;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1, v0}, Lcom/sec/android/app/sbrowser/wallpaper/data/QuickAccessWallpaperRepository$Companion;->getInstance$default(Lcom/sec/android/app/sbrowser/wallpaper/data/QuickAccessWallpaperRepository$Companion;Landroid/content/Context;ILjava/lang/Object;)Lcom/sec/android/app/sbrowser/wallpaper/data/QuickAccessWallpaperRepository;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final changePreviewWithBitmap(Landroid/graphics/Bitmap;Ljava/lang/String;)V
    .locals 3
    .param p1    # Landroid/graphics/Bitmap;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "categoryName"

    invoke-static {p2, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_1

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/wallpaper/presentation/viewmodel/QuickAccessWallpaperPreviewViewModel;->categoryName:Ljava/lang/String;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/wallpaper/presentation/viewmodel/QuickAccessWallpaperPreviewViewModel;->_uiState:LQc/f0;

    :cond_0
    move-object p2, p0

    check-cast p2, LQc/A0;

    invoke-virtual {p2}, LQc/A0;->getValue()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/sec/android/app/sbrowser/wallpaper/presentation/viewmodel/WallpaperPreviewUiState;

    new-instance v1, Lcom/sec/android/app/sbrowser/wallpaper/presentation/viewmodel/WallpaperPreviewUiState$Loading;

    new-instance v2, Lcom/sec/android/app/sbrowser/wallpaper/presentation/viewmodel/WallpaperImageSource$BitmapSource;

    invoke-direct {v2, p1}, Lcom/sec/android/app/sbrowser/wallpaper/presentation/viewmodel/WallpaperImageSource$BitmapSource;-><init>(Landroid/graphics/Bitmap;)V

    invoke-direct {v1, v2}, Lcom/sec/android/app/sbrowser/wallpaper/presentation/viewmodel/WallpaperPreviewUiState$Loading;-><init>(Lcom/sec/android/app/sbrowser/wallpaper/presentation/viewmodel/WallpaperImageSource;)V

    invoke-virtual {p2, v0, v1}, LQc/A0;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    :cond_1
    return-void
.end method

.method public final fetchSelectedWallpaperImageFromUrl(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "wallpaperImageUrl"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "categoryName"

    invoke-static {p2, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/wallpaper/presentation/viewmodel/QuickAccessWallpaperPreviewViewModel;->categoryName:Ljava/lang/String;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/wallpaper/presentation/viewmodel/QuickAccessWallpaperPreviewViewModel;->_uiState:LQc/f0;

    :cond_0
    move-object p2, p0

    check-cast p2, LQc/A0;

    invoke-virtual {p2}, LQc/A0;->getValue()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/sec/android/app/sbrowser/wallpaper/presentation/viewmodel/WallpaperPreviewUiState;

    new-instance v1, Lcom/sec/android/app/sbrowser/wallpaper/presentation/viewmodel/WallpaperPreviewUiState$Loading;

    new-instance v2, Lcom/sec/android/app/sbrowser/wallpaper/presentation/viewmodel/WallpaperImageSource$UrlSource;

    invoke-direct {v2, p1}, Lcom/sec/android/app/sbrowser/wallpaper/presentation/viewmodel/WallpaperImageSource$UrlSource;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Lcom/sec/android/app/sbrowser/wallpaper/presentation/viewmodel/WallpaperPreviewUiState$Loading;-><init>(Lcom/sec/android/app/sbrowser/wallpaper/presentation/viewmodel/WallpaperImageSource;)V

    invoke-virtual {p2, v0, v1}, LQc/A0;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    return-void
.end method

.method public final getCategoryName()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/wallpaper/presentation/viewmodel/QuickAccessWallpaperPreviewViewModel;->categoryName:Ljava/lang/String;

    return-object p0
.end method

.method public final getUiState()LQc/y0;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LQc/y0;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/wallpaper/presentation/viewmodel/QuickAccessWallpaperPreviewViewModel;->_uiState:LQc/f0;

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

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/wallpaper/presentation/viewmodel/QuickAccessWallpaperPreviewViewModel;->getRepository()Lcom/sec/android/app/sbrowser/wallpaper/data/QuickAccessWallpaperRepository;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/wallpaper/data/QuickAccessWallpaperRepository;->getWallpaperStoreResultEventLiveData()Landroidx/lifecycle/S;

    move-result-object p0

    return-object p0
.end method

.method public final onFailure()V
    .locals 3

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/wallpaper/presentation/viewmodel/QuickAccessWallpaperPreviewViewModel;->_uiState:LQc/f0;

    :cond_0
    move-object v0, p0

    check-cast v0, LQc/A0;

    invoke-virtual {v0}, LQc/A0;->getValue()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/sec/android/app/sbrowser/wallpaper/presentation/viewmodel/WallpaperPreviewUiState;

    sget-object v2, Lcom/sec/android/app/sbrowser/wallpaper/presentation/viewmodel/WallpaperPreviewUiState$Failure;->INSTANCE:Lcom/sec/android/app/sbrowser/wallpaper/presentation/viewmodel/WallpaperPreviewUiState$Failure;

    invoke-virtual {v0, v1, v2}, LQc/A0;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void
.end method

.method public final onSuccess()V
    .locals 3

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/wallpaper/presentation/viewmodel/QuickAccessWallpaperPreviewViewModel;->_uiState:LQc/f0;

    :cond_0
    move-object v0, p0

    check-cast v0, LQc/A0;

    invoke-virtual {v0}, LQc/A0;->getValue()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/sec/android/app/sbrowser/wallpaper/presentation/viewmodel/WallpaperPreviewUiState;

    sget-object v2, Lcom/sec/android/app/sbrowser/wallpaper/presentation/viewmodel/WallpaperPreviewUiState$Success;->INSTANCE:Lcom/sec/android/app/sbrowser/wallpaper/presentation/viewmodel/WallpaperPreviewUiState$Success;

    invoke-virtual {v0, v1, v2}, LQc/A0;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void
.end method

.method public final storeNewWallpaperImage(Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1    # Landroid/graphics/Bitmap;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/wallpaper/presentation/viewmodel/QuickAccessWallpaperPreviewViewModel;->getRepository()Lcom/sec/android/app/sbrowser/wallpaper/data/QuickAccessWallpaperRepository;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/wallpaper/data/QuickAccessWallpaperRepository;->storeNewWallpaperImage(Landroid/graphics/Bitmap;)V

    :cond_0
    return-void
.end method
