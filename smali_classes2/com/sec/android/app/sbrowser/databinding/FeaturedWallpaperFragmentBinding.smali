.class public final Lcom/sec/android/app/sbrowser/databinding/FeaturedWallpaperFragmentBinding;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final categoriesRecyclerCardView:Landroidx/recyclerview/widget/RecyclerView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final rootView:Landroid/widget/RelativeLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final statusLayout:Lcom/sec/android/app/sbrowser/databinding/WallpaperLoadingErrorBinding;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/widget/RelativeLayout;Landroidx/recyclerview/widget/RecyclerView;Lcom/sec/android/app/sbrowser/databinding/WallpaperLoadingErrorBinding;)V
    .locals 0
    .param p1    # Landroid/widget/RelativeLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroidx/recyclerview/widget/RecyclerView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/sec/android/app/sbrowser/databinding/WallpaperLoadingErrorBinding;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/databinding/FeaturedWallpaperFragmentBinding;->rootView:Landroid/widget/RelativeLayout;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/databinding/FeaturedWallpaperFragmentBinding;->categoriesRecyclerCardView:Landroidx/recyclerview/widget/RecyclerView;

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/databinding/FeaturedWallpaperFragmentBinding;->statusLayout:Lcom/sec/android/app/sbrowser/databinding/WallpaperLoadingErrorBinding;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/sec/android/app/sbrowser/databinding/FeaturedWallpaperFragmentBinding;
    .locals 3
    .param p0    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const v0, 0x7f0b0220

    invoke-static {v0, p0}, LG5/p;->b(ILandroid/view/View;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v1, :cond_0

    const v0, 0x7f0b0be9

    invoke-static {v0, p0}, LG5/p;->b(ILandroid/view/View;)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-static {v2}, Lcom/sec/android/app/sbrowser/databinding/WallpaperLoadingErrorBinding;->bind(Landroid/view/View;)Lcom/sec/android/app/sbrowser/databinding/WallpaperLoadingErrorBinding;

    move-result-object v0

    new-instance v2, Lcom/sec/android/app/sbrowser/databinding/FeaturedWallpaperFragmentBinding;

    check-cast p0, Landroid/widget/RelativeLayout;

    invoke-direct {v2, p0, v1, v0}, Lcom/sec/android/app/sbrowser/databinding/FeaturedWallpaperFragmentBinding;-><init>(Landroid/widget/RelativeLayout;Landroidx/recyclerview/widget/RecyclerView;Lcom/sec/android/app/sbrowser/databinding/WallpaperLoadingErrorBinding;)V

    return-object v2

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Missing required view with ID: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/sec/android/app/sbrowser/databinding/FeaturedWallpaperFragmentBinding;
    .locals 2
    .param p0    # Landroid/view/LayoutInflater;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/sec/android/app/sbrowser/databinding/FeaturedWallpaperFragmentBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/sec/android/app/sbrowser/databinding/FeaturedWallpaperFragmentBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/sec/android/app/sbrowser/databinding/FeaturedWallpaperFragmentBinding;
    .locals 2
    .param p0    # Landroid/view/LayoutInflater;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const v0, 0x7f0e0214

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_0
    invoke-static {p0}, Lcom/sec/android/app/sbrowser/databinding/FeaturedWallpaperFragmentBinding;->bind(Landroid/view/View;)Lcom/sec/android/app/sbrowser/databinding/FeaturedWallpaperFragmentBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getRoot()Landroid/widget/RelativeLayout;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/databinding/FeaturedWallpaperFragmentBinding;->rootView:Landroid/widget/RelativeLayout;

    return-object p0
.end method
