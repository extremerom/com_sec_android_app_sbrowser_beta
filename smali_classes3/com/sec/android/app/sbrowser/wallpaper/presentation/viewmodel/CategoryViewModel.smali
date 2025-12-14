.class public final Lcom/sec/android/app/sbrowser/wallpaper/presentation/viewmodel/CategoryViewModel;
.super Landroidx/lifecycle/s0;
.source "SourceFile"


# annotations
.annotation build Landroidx/compose/runtime/internal/StabilityInferred;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0007\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J!\u0010\t\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00080\u00070\u00062\u0006\u0010\u0005\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\t\u0010\nR\u001a\u0010\r\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\u000b8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\r\u0010\u000eR\u0014\u0010\u0010\u001a\u00020\u000f8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0010\u0010\u0011\u00a8\u0006\u0012"
    }
    d2 = {
        "Lcom/sec/android/app/sbrowser/wallpaper/presentation/viewmodel/CategoryViewModel;",
        "Landroidx/lifecycle/s0;",
        "<init>",
        "()V",
        "",
        "categoryName",
        "LQc/h;",
        "Lv2/M0;",
        "Lcom/sec/android/app/sbrowser/wallpaper/data/CategoryThumbnailData;",
        "fetchCategoryCardViewThumbnailsWithPaging",
        "(Ljava/lang/String;)LQc/h;",
        "LQc/f0;",
        "Lcom/sec/android/app/sbrowser/wallpaper/presentation/viewmodel/WallpaperUiState;",
        "_uiState",
        "LQc/f0;",
        "Lcom/sec/android/app/sbrowser/wallpaper/data/QuickAccessWallpaperRepository;",
        "repository",
        "Lcom/sec/android/app/sbrowser/wallpaper/data/QuickAccessWallpaperRepository;",
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

.field private final repository:Lcom/sec/android/app/sbrowser/wallpaper/data/QuickAccessWallpaperRepository;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Landroidx/lifecycle/s0;-><init>()V

    sget-object v0, Lcom/sec/android/app/sbrowser/wallpaper/presentation/viewmodel/WallpaperUiState$Loading;->INSTANCE:Lcom/sec/android/app/sbrowser/wallpaper/presentation/viewmodel/WallpaperUiState$Loading;

    invoke-static {v0}, LQc/n0;->c(Ljava/lang/Object;)LQc/A0;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/wallpaper/presentation/viewmodel/CategoryViewModel;->_uiState:LQc/f0;

    sget-object v0, Lcom/sec/android/app/sbrowser/wallpaper/data/QuickAccessWallpaperRepository;->Companion:Lcom/sec/android/app/sbrowser/wallpaper/data/QuickAccessWallpaperRepository$Companion;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2, v1}, Lcom/sec/android/app/sbrowser/wallpaper/data/QuickAccessWallpaperRepository$Companion;->getInstance$default(Lcom/sec/android/app/sbrowser/wallpaper/data/QuickAccessWallpaperRepository$Companion;Landroid/content/Context;ILjava/lang/Object;)Lcom/sec/android/app/sbrowser/wallpaper/data/QuickAccessWallpaperRepository;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/wallpaper/presentation/viewmodel/CategoryViewModel;->repository:Lcom/sec/android/app/sbrowser/wallpaper/data/QuickAccessWallpaperRepository;

    return-void
.end method


# virtual methods
.method public final fetchCategoryCardViewThumbnailsWithPaging(Ljava/lang/String;)LQc/h;
    .locals 9
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

    const-string v0, "categoryName"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/wallpaper/presentation/viewmodel/CategoryViewModel;->repository:Lcom/sec/android/app/sbrowser/wallpaper/data/QuickAccessWallpaperRepository;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/wallpaper/data/QuickAccessWallpaperRepository;->getCategoryWallpaperFlow(Ljava/lang/String;)LQc/h;

    move-result-object p1

    invoke-static {p0}, Landroidx/lifecycle/l0;->k(Landroidx/lifecycle/s0;)LNc/B;

    move-result-object p0

    const-string v0, "<this>"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, LQc/I;

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-direct {v1, v2, p0, v3}, LQc/I;-><init>(Lib/c;Ljava/lang/Object;I)V

    new-instance v3, Lv2/E;

    invoke-direct {v3, p1, v1, v2}, Lv2/E;-><init>(LQc/h;Lsb/o;Lib/c;)V

    invoke-static {v3}, Lv2/F;->c(Lsb/n;)LQc/h;

    move-result-object p1

    new-instance v1, LC1/q;

    const/4 v3, 0x3

    const/4 v4, 0x3

    invoke-direct {v1, v3, v2, v4}, LC1/q;-><init>(ILib/c;I)V

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lv2/A;

    invoke-direct {v0, p1, v1, v2}, Lv2/A;-><init>(LQc/h;Lsb/o;Lib/c;)V

    new-instance p1, LQc/k;

    invoke-direct {p1, v0}, LQc/k;-><init>(Lsb/n;)V

    new-instance v0, LQc/k;

    const/4 v1, 0x6

    invoke-direct {v0, v1, p1}, LQc/k;-><init>(ILjava/lang/Object;)V

    new-instance p1, Lv2/q;

    const/4 v1, 0x2

    invoke-direct {p1, v1, v2}, Lkb/i;-><init>(ILib/c;)V

    new-instance v1, LQc/y;

    invoke-direct {v1, p1, v0}, LQc/y;-><init>(Lsb/n;LQc/h;)V

    new-instance p1, LS/w;

    const/4 v0, 0x2

    invoke-direct {p1, v3, v2, v0}, LS/w;-><init>(ILib/c;I)V

    new-instance v0, LQc/w;

    invoke-direct {v0, v1, p1}, LQc/w;-><init>(LQc/y;Lsb/o;)V

    sget-object v3, LQc/q0;->b:LQc/s0;

    invoke-static {v0}, LQc/n0;->j(LQc/h;)LZ4/i;

    move-result-object p1

    iget-object v0, p1, LZ4/i;->c:Ljava/lang/Object;

    check-cast v0, LPc/a;

    const/4 v1, 0x1

    iget v2, p1, LZ4/i;->a:I

    invoke-static {v1, v2, v0}, LQc/n0;->a(IILPc/a;)LQc/m0;

    move-result-object v0

    sget-object v6, LQc/n0;->a:LQ6/i;

    iget-object v1, p1, LZ4/i;->b:Ljava/lang/Object;

    move-object v4, v1

    check-cast v4, LQc/h;

    sget-object v1, LQc/q0;->a:LQc/s0;

    invoke-virtual {v3, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, LNc/D;->DEFAULT:LNc/D;

    goto :goto_0

    :cond_0
    sget-object v1, LNc/D;->UNDISPATCHED:LNc/D;

    :goto_0
    new-instance v8, LQc/V;

    const/4 v7, 0x0

    move-object v2, v8

    move-object v5, v0

    invoke-direct/range {v2 .. v7}, LQc/V;-><init>(LQc/r0;LQc/h;LQc/e0;Ljava/lang/Object;Lib/c;)V

    iget-object p1, p1, LZ4/i;->d:Ljava/lang/Object;

    check-cast p1, Lib/h;

    invoke-static {p0, p1, v1, v8}, LNc/E;->x(LNc/B;Lib/h;LNc/D;Lsb/n;)LNc/C0;

    new-instance p0, LQc/g0;

    invoke-direct {p0, v0}, LQc/g0;-><init>(LQc/e0;)V

    return-object p0
.end method
