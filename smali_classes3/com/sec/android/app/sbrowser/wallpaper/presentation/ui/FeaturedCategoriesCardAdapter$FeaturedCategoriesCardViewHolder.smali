.class public final Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/FeaturedCategoriesCardAdapter$FeaturedCategoriesCardViewHolder;
.super Landroidx/recyclerview/widget/h1;
.source "SourceFile"


# annotations
.annotation build Landroidx/compose/runtime/internal/StabilityInferred;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/FeaturedCategoriesCardAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "FeaturedCategoriesCardViewHolder"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0007\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0004\u0010\u0005R\u0017\u0010\u0007\u001a\u00020\u00068\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0007\u0010\u0008\u001a\u0004\u0008\t\u0010\nR\u0017\u0010\u000c\u001a\u00020\u000b8\u0006\u00a2\u0006\u000c\n\u0004\u0008\u000c\u0010\r\u001a\u0004\u0008\u000e\u0010\u000fR\u0017\u0010\u0011\u001a\u00020\u00108\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0011\u0010\u0012\u001a\u0004\u0008\u0013\u0010\u0014\u00a8\u0006\u0015"
    }
    d2 = {
        "Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/FeaturedCategoriesCardAdapter$FeaturedCategoriesCardViewHolder;",
        "Landroidx/recyclerview/widget/h1;",
        "Lcom/sec/android/app/sbrowser/databinding/WallpaperCategoriesBinding;",
        "binding",
        "<init>",
        "(Lcom/sec/android/app/sbrowser/databinding/WallpaperCategoriesBinding;)V",
        "Landroid/widget/RelativeLayout;",
        "headerContainer",
        "Landroid/widget/RelativeLayout;",
        "getHeaderContainer",
        "()Landroid/widget/RelativeLayout;",
        "Landroid/widget/TextView;",
        "title",
        "Landroid/widget/TextView;",
        "getTitle",
        "()Landroid/widget/TextView;",
        "Landroidx/recyclerview/widget/RecyclerView;",
        "categoryItemRecyclerView",
        "Landroidx/recyclerview/widget/RecyclerView;",
        "getCategoryItemRecyclerView",
        "()Landroidx/recyclerview/widget/RecyclerView;",
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
.field private final categoryItemRecyclerView:Landroidx/recyclerview/widget/RecyclerView;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final headerContainer:Landroid/widget/RelativeLayout;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final title:Landroid/widget/TextView;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/databinding/WallpaperCategoriesBinding;)V
    .locals 2
    .param p1    # Lcom/sec/android/app/sbrowser/databinding/WallpaperCategoriesBinding;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "binding"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/databinding/WallpaperCategoriesBinding;->getRoot()Landroidx/cardview/widget/CardView;

    move-result-object v0

    invoke-direct {p0, v0}, Landroidx/recyclerview/widget/h1;-><init>(Landroid/view/View;)V

    iget-object v0, p1, Lcom/sec/android/app/sbrowser/databinding/WallpaperCategoriesBinding;->headerContainer:Landroid/widget/RelativeLayout;

    const-string v1, "headerContainer"

    invoke-static {v0, v1}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/FeaturedCategoriesCardAdapter$FeaturedCategoriesCardViewHolder;->headerContainer:Landroid/widget/RelativeLayout;

    iget-object v0, p1, Lcom/sec/android/app/sbrowser/databinding/WallpaperCategoriesBinding;->categoryTitle:Landroid/widget/TextView;

    const-string v1, "categoryTitle"

    invoke-static {v0, v1}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/FeaturedCategoriesCardAdapter$FeaturedCategoriesCardViewHolder;->title:Landroid/widget/TextView;

    iget-object p1, p1, Lcom/sec/android/app/sbrowser/databinding/WallpaperCategoriesBinding;->categoryItemRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const-string v0, "categoryItemRecyclerView"

    invoke-static {p1, v0}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/FeaturedCategoriesCardAdapter$FeaturedCategoriesCardViewHolder;->categoryItemRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    return-void
.end method


# virtual methods
.method public final getCategoryItemRecyclerView()Landroidx/recyclerview/widget/RecyclerView;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/FeaturedCategoriesCardAdapter$FeaturedCategoriesCardViewHolder;->categoryItemRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    return-object p0
.end method

.method public final getHeaderContainer()Landroid/widget/RelativeLayout;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/FeaturedCategoriesCardAdapter$FeaturedCategoriesCardViewHolder;->headerContainer:Landroid/widget/RelativeLayout;

    return-object p0
.end method

.method public final getTitle()Landroid/widget/TextView;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/FeaturedCategoriesCardAdapter$FeaturedCategoriesCardViewHolder;->title:Landroid/widget/TextView;

    return-object p0
.end method
