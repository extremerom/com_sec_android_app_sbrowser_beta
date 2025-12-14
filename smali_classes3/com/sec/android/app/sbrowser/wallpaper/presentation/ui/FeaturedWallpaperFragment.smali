.class public final Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/FeaturedWallpaperFragment;
.super Landroidx/fragment/app/Fragment;
.source "SourceFile"


# annotations
.annotation build Landroidx/compose/runtime/internal/StabilityInferred;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/FeaturedWallpaperFragment$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000Z\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0007\u0018\u0000 .2\u00020\u0001:\u0001.B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u000f\u0010\u0005\u001a\u00020\u0004H\u0002\u00a2\u0006\u0004\u0008\u0005\u0010\u0003J\u000f\u0010\u0006\u001a\u00020\u0004H\u0002\u00a2\u0006\u0004\u0008\u0006\u0010\u0003J\u000f\u0010\u0007\u001a\u00020\u0004H\u0002\u00a2\u0006\u0004\u0008\u0007\u0010\u0003J\u000f\u0010\u0008\u001a\u00020\u0004H\u0002\u00a2\u0006\u0004\u0008\u0008\u0010\u0003J\u000f\u0010\t\u001a\u00020\u0004H\u0002\u00a2\u0006\u0004\u0008\t\u0010\u0003J\u000f\u0010\n\u001a\u00020\u0004H\u0002\u00a2\u0006\u0004\u0008\n\u0010\u0003J\u001d\u0010\u000e\u001a\u00020\u00042\u000c\u0010\r\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\u000bH\u0002\u00a2\u0006\u0004\u0008\u000e\u0010\u000fJ\u000f\u0010\u0010\u001a\u00020\u0004H\u0002\u00a2\u0006\u0004\u0008\u0010\u0010\u0003J\u0017\u0010\u0013\u001a\u00020\u00042\u0006\u0010\u0012\u001a\u00020\u0011H\u0002\u00a2\u0006\u0004\u0008\u0013\u0010\u0014J+\u0010\u001c\u001a\u00020\u001b2\u0006\u0010\u0016\u001a\u00020\u00152\u0008\u0010\u0018\u001a\u0004\u0018\u00010\u00172\u0008\u0010\u001a\u001a\u0004\u0018\u00010\u0019H\u0016\u00a2\u0006\u0004\u0008\u001c\u0010\u001dJ!\u0010\u001f\u001a\u00020\u00042\u0006\u0010\u001e\u001a\u00020\u001b2\u0008\u0010\u001a\u001a\u0004\u0018\u00010\u0019H\u0016\u00a2\u0006\u0004\u0008\u001f\u0010 J\u000f\u0010!\u001a\u00020\u0004H\u0016\u00a2\u0006\u0004\u0008!\u0010\u0003R\u0016\u0010#\u001a\u00020\"8\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u0008#\u0010$R\u001b\u0010*\u001a\u00020%8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008&\u0010\'\u001a\u0004\u0008(\u0010)R\u0016\u0010,\u001a\u00020+8\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u0008,\u0010-\u00a8\u0006/"
    }
    d2 = {
        "Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/FeaturedWallpaperFragment;",
        "Landroidx/fragment/app/Fragment;",
        "<init>",
        "()V",
        "Ldb/r;",
        "fetchFeaturedCategories",
        "onErrorButtonClick",
        "registerLiveDataObservers",
        "setErrorView",
        "setProgressView",
        "setSuccessView",
        "",
        "Lcom/sec/android/app/sbrowser/wallpaper/data/FeaturedCategoriesDto;",
        "featuredCategories",
        "fetchCategoryCardViewData",
        "(Ljava/util/List;)V",
        "setCategoriesRecyclerCardAdapter",
        "Lcom/sec/android/app/sbrowser/wallpaper/data/CategoryCardViewListData;",
        "featuredCategoriesThumbnailData",
        "updateCategoriesCardViewList",
        "(Lcom/sec/android/app/sbrowser/wallpaper/data/CategoryCardViewListData;)V",
        "Landroid/view/LayoutInflater;",
        "inflater",
        "Landroid/view/ViewGroup;",
        "container",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "Landroid/view/View;",
        "onCreateView",
        "(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;",
        "view",
        "onViewCreated",
        "(Landroid/view/View;Landroid/os/Bundle;)V",
        "onStart",
        "Lcom/sec/android/app/sbrowser/databinding/FeaturedWallpaperFragmentBinding;",
        "binding",
        "Lcom/sec/android/app/sbrowser/databinding/FeaturedWallpaperFragmentBinding;",
        "Lcom/sec/android/app/sbrowser/wallpaper/presentation/viewmodel/FeaturedWallpaperViewModel;",
        "viewModel$delegate",
        "Ldb/f;",
        "getViewModel",
        "()Lcom/sec/android/app/sbrowser/wallpaper/presentation/viewmodel/FeaturedWallpaperViewModel;",
        "viewModel",
        "Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/FeaturedCategoriesCardAdapter;",
        "categoriesAdapter",
        "Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/FeaturedCategoriesCardAdapter;",
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

.field public static final Companion:Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/FeaturedWallpaperFragment$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private binding:Lcom/sec/android/app/sbrowser/databinding/FeaturedWallpaperFragmentBinding;

.field private categoriesAdapter:Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/FeaturedCategoriesCardAdapter;

.field private final viewModel$delegate:Ldb/f;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/FeaturedWallpaperFragment$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/FeaturedWallpaperFragment$Companion;-><init>(Ltb/f;)V

    sput-object v0, Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/FeaturedWallpaperFragment;->Companion:Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/FeaturedWallpaperFragment$Companion;

    const/16 v0, 0x8

    sput v0, Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/FeaturedWallpaperFragment;->$stable:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    new-instance v0, LJ2/L;

    const/16 v1, 0x11

    invoke-direct {v0, v1, p0}, LJ2/L;-><init>(ILjava/lang/Object;)V

    invoke-static {v0}, LG5/z2;->e(Lsb/a;)Ldb/o;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/FeaturedWallpaperFragment;->viewModel$delegate:Ldb/f;

    return-void
.end method

.method public static final synthetic access$fetchCategoryCardViewData(Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/FeaturedWallpaperFragment;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/FeaturedWallpaperFragment;->fetchCategoryCardViewData(Ljava/util/List;)V

    return-void
.end method

.method public static final synthetic access$getViewModel(Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/FeaturedWallpaperFragment;)Lcom/sec/android/app/sbrowser/wallpaper/presentation/viewmodel/FeaturedWallpaperViewModel;
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/FeaturedWallpaperFragment;->getViewModel()Lcom/sec/android/app/sbrowser/wallpaper/presentation/viewmodel/FeaturedWallpaperViewModel;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$setErrorView(Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/FeaturedWallpaperFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/FeaturedWallpaperFragment;->setErrorView()V

    return-void
.end method

.method public static final synthetic access$setProgressView(Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/FeaturedWallpaperFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/FeaturedWallpaperFragment;->setProgressView()V

    return-void
.end method

.method public static final synthetic access$setSuccessView(Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/FeaturedWallpaperFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/FeaturedWallpaperFragment;->setSuccessView()V

    return-void
.end method

.method public static final synthetic access$updateCategoriesCardViewList(Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/FeaturedWallpaperFragment;Lcom/sec/android/app/sbrowser/wallpaper/data/CategoryCardViewListData;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/FeaturedWallpaperFragment;->updateCategoriesCardViewList(Lcom/sec/android/app/sbrowser/wallpaper/data/CategoryCardViewListData;)V

    return-void
.end method

.method private final fetchCategoryCardViewData(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sec/android/app/sbrowser/wallpaper/data/FeaturedCategoriesDto;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/FeaturedWallpaperFragment;->getViewModel()Lcom/sec/android/app/sbrowser/wallpaper/presentation/viewmodel/FeaturedWallpaperViewModel;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/wallpaper/presentation/viewmodel/FeaturedWallpaperViewModel;->fetchCategoryCardViewThumbnails(Ljava/util/List;)V

    return-void
.end method

.method private final fetchFeaturedCategories()V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/FeaturedWallpaperFragment;->getViewModel()Lcom/sec/android/app/sbrowser/wallpaper/presentation/viewmodel/FeaturedWallpaperViewModel;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/wallpaper/presentation/viewmodel/FeaturedWallpaperViewModel;->fetchFeaturedCategories()V

    return-void
.end method

.method private final getViewModel()Lcom/sec/android/app/sbrowser/wallpaper/presentation/viewmodel/FeaturedWallpaperViewModel;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/FeaturedWallpaperFragment;->viewModel$delegate:Ldb/f;

    invoke-interface {p0}, Ldb/f;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/sbrowser/wallpaper/presentation/viewmodel/FeaturedWallpaperViewModel;

    return-object p0
.end method

.method public static synthetic h(Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/FeaturedWallpaperFragment;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/FeaturedWallpaperFragment;->setCategoriesRecyclerCardAdapter$lambda$2(Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/FeaturedWallpaperFragment;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic i(Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/FeaturedWallpaperFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/FeaturedWallpaperFragment;->onViewCreated$lambda$1(Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/FeaturedWallpaperFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic j(Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/FeaturedWallpaperFragment;)Lcom/sec/android/app/sbrowser/wallpaper/presentation/viewmodel/FeaturedWallpaperViewModel;
    .locals 0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/FeaturedWallpaperFragment;->viewModel_delegate$lambda$0(Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/FeaturedWallpaperFragment;)Lcom/sec/android/app/sbrowser/wallpaper/presentation/viewmodel/FeaturedWallpaperViewModel;

    move-result-object p0

    return-object p0
.end method

.method private final onErrorButtonClick()V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/FeaturedWallpaperFragment;->fetchFeaturedCategories()V

    return-void
.end method

.method private static final onViewCreated$lambda$1(Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/FeaturedWallpaperFragment;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/FeaturedWallpaperFragment;->onErrorButtonClick()V

    return-void
.end method

.method private final registerLiveDataObservers()V
    .locals 4

    invoke-static {p0}, Landroidx/lifecycle/l0;->i(Landroidx/lifecycle/J;)Landroidx/lifecycle/LifecycleCoroutineScopeImpl;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/FeaturedWallpaperFragment$registerLiveDataObservers$1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/FeaturedWallpaperFragment$registerLiveDataObservers$1;-><init>(Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/FeaturedWallpaperFragment;Lib/c;)V

    const/4 v3, 0x3

    invoke-static {v0, v2, v2, v1, v3}, LNc/E;->y(LNc/B;Lib/h;LNc/D;Lsb/n;I)LNc/C0;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/J;

    move-result-object v0

    const-string v1, "getViewLifecycleOwner(...)"

    invoke-static {v0, v1}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Landroidx/lifecycle/l0;->i(Landroidx/lifecycle/J;)Landroidx/lifecycle/LifecycleCoroutineScopeImpl;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/FeaturedWallpaperFragment$registerLiveDataObservers$2;

    invoke-direct {v1, p0, v2}, Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/FeaturedWallpaperFragment$registerLiveDataObservers$2;-><init>(Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/FeaturedWallpaperFragment;Lib/c;)V

    invoke-static {v0, v2, v2, v1, v3}, LNc/E;->y(LNc/B;Lib/h;LNc/D;Lsb/n;I)LNc/C0;

    invoke-static {p0}, Landroidx/lifecycle/l0;->i(Landroidx/lifecycle/J;)Landroidx/lifecycle/LifecycleCoroutineScopeImpl;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/FeaturedWallpaperFragment$registerLiveDataObservers$3;

    invoke-direct {v1, p0, v2}, Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/FeaturedWallpaperFragment$registerLiveDataObservers$3;-><init>(Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/FeaturedWallpaperFragment;Lib/c;)V

    invoke-static {v0, v2, v2, v1, v3}, LNc/E;->y(LNc/B;Lib/h;LNc/D;Lsb/n;I)LNc/C0;

    return-void
.end method

.method private final setCategoriesRecyclerCardAdapter()V
    .locals 5

    new-instance v0, Lcom/sec/android/app/sbrowser/search_widget/a;

    const/16 v1, 0xb

    invoke-direct {v0, v1, p0}, Lcom/sec/android/app/sbrowser/search_widget/a;-><init>(ILjava/lang/Object;)V

    new-instance v1, Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/FeaturedCategoriesCardAdapter;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "requireContext(...)"

    invoke-static {v3, v4}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v1, v2, v0, v3}, Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/FeaturedCategoriesCardAdapter;-><init>(Ljava/util/List;Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/FeaturedCategoriesAdapterListener;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/FeaturedWallpaperFragment;->categoriesAdapter:Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/FeaturedCategoriesCardAdapter;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/FeaturedWallpaperFragment;->binding:Lcom/sec/android/app/sbrowser/databinding/FeaturedWallpaperFragmentBinding;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/databinding/FeaturedWallpaperFragmentBinding;->categoriesRecyclerCardView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v2, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(I)V

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/J0;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/FeaturedWallpaperFragment;->categoriesAdapter:Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/FeaturedCategoriesCardAdapter;

    if-eqz p0, :cond_0

    invoke-virtual {v0, p0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/u0;)V

    return-void

    :cond_0
    const-string p0, "categoriesAdapter"

    invoke-static {p0}, Ltb/k;->l(Ljava/lang/String;)V

    throw v1

    :cond_1
    const-string p0, "binding"

    invoke-static {p0}, Ltb/k;->l(Ljava/lang/String;)V

    throw v1
.end method

.method private static final setCategoriesRecyclerCardAdapter$lambda$2(Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/FeaturedWallpaperFragment;Ljava/lang/String;)V
    .locals 1

    const-string v0, "it"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/WallpaperOptionNavigatorImpl;->Companion:Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/WallpaperOptionNavigatorImpl$Companion;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {v0, p0, p1}, Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/WallpaperOptionNavigatorImpl$Companion;->launchCategoriesFragment(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method private final setErrorView()V
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/FeaturedWallpaperFragment;->binding:Lcom/sec/android/app/sbrowser/databinding/FeaturedWallpaperFragmentBinding;

    const/4 v1, 0x0

    const-string v2, "binding"

    if-eqz v0, :cond_3

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/databinding/FeaturedWallpaperFragmentBinding;->categoriesRecyclerCardView:Landroidx/recyclerview/widget/RecyclerView;

    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/FeaturedWallpaperFragment;->binding:Lcom/sec/android/app/sbrowser/databinding/FeaturedWallpaperFragmentBinding;

    if-eqz v0, :cond_2

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/databinding/FeaturedWallpaperFragmentBinding;->statusLayout:Lcom/sec/android/app/sbrowser/databinding/WallpaperLoadingErrorBinding;

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/databinding/WallpaperLoadingErrorBinding;->wallpaperProgressbar:Landroidx/appcompat/widget/SeslProgressBar;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/FeaturedWallpaperFragment;->binding:Lcom/sec/android/app/sbrowser/databinding/FeaturedWallpaperFragmentBinding;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/databinding/FeaturedWallpaperFragmentBinding;->statusLayout:Lcom/sec/android/app/sbrowser/databinding/WallpaperLoadingErrorBinding;

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/databinding/WallpaperLoadingErrorBinding;->errorMessage:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/FeaturedWallpaperFragment;->binding:Lcom/sec/android/app/sbrowser/databinding/FeaturedWallpaperFragmentBinding;

    if-eqz p0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/databinding/FeaturedWallpaperFragmentBinding;->statusLayout:Lcom/sec/android/app/sbrowser/databinding/WallpaperLoadingErrorBinding;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/databinding/WallpaperLoadingErrorBinding;->errorButton:Landroid/widget/Button;

    invoke-virtual {p0, v3}, Landroid/view/View;->setVisibility(I)V

    return-void

    :cond_0
    invoke-static {v2}, Ltb/k;->l(Ljava/lang/String;)V

    throw v1

    :cond_1
    invoke-static {v2}, Ltb/k;->l(Ljava/lang/String;)V

    throw v1

    :cond_2
    invoke-static {v2}, Ltb/k;->l(Ljava/lang/String;)V

    throw v1

    :cond_3
    invoke-static {v2}, Ltb/k;->l(Ljava/lang/String;)V

    throw v1
.end method

.method private final setProgressView()V
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/FeaturedWallpaperFragment;->binding:Lcom/sec/android/app/sbrowser/databinding/FeaturedWallpaperFragmentBinding;

    const/4 v1, 0x0

    const-string v2, "binding"

    if-eqz v0, :cond_3

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/databinding/FeaturedWallpaperFragmentBinding;->categoriesRecyclerCardView:Landroidx/recyclerview/widget/RecyclerView;

    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/FeaturedWallpaperFragment;->binding:Lcom/sec/android/app/sbrowser/databinding/FeaturedWallpaperFragmentBinding;

    if-eqz v0, :cond_2

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/databinding/FeaturedWallpaperFragmentBinding;->statusLayout:Lcom/sec/android/app/sbrowser/databinding/WallpaperLoadingErrorBinding;

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/databinding/WallpaperLoadingErrorBinding;->errorMessage:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/FeaturedWallpaperFragment;->binding:Lcom/sec/android/app/sbrowser/databinding/FeaturedWallpaperFragmentBinding;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/databinding/FeaturedWallpaperFragmentBinding;->statusLayout:Lcom/sec/android/app/sbrowser/databinding/WallpaperLoadingErrorBinding;

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/databinding/WallpaperLoadingErrorBinding;->errorButton:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/FeaturedWallpaperFragment;->binding:Lcom/sec/android/app/sbrowser/databinding/FeaturedWallpaperFragmentBinding;

    if-eqz p0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/databinding/FeaturedWallpaperFragmentBinding;->statusLayout:Lcom/sec/android/app/sbrowser/databinding/WallpaperLoadingErrorBinding;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/databinding/WallpaperLoadingErrorBinding;->wallpaperProgressbar:Landroidx/appcompat/widget/SeslProgressBar;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    return-void

    :cond_0
    invoke-static {v2}, Ltb/k;->l(Ljava/lang/String;)V

    throw v1

    :cond_1
    invoke-static {v2}, Ltb/k;->l(Ljava/lang/String;)V

    throw v1

    :cond_2
    invoke-static {v2}, Ltb/k;->l(Ljava/lang/String;)V

    throw v1

    :cond_3
    invoke-static {v2}, Ltb/k;->l(Ljava/lang/String;)V

    throw v1
.end method

.method private final setSuccessView()V
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/FeaturedWallpaperFragment;->binding:Lcom/sec/android/app/sbrowser/databinding/FeaturedWallpaperFragmentBinding;

    const/4 v1, 0x0

    const-string v2, "binding"

    if-eqz v0, :cond_1

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/databinding/FeaturedWallpaperFragmentBinding;->categoriesRecyclerCardView:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/FeaturedWallpaperFragment;->binding:Lcom/sec/android/app/sbrowser/databinding/FeaturedWallpaperFragmentBinding;

    if-eqz p0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/databinding/FeaturedWallpaperFragmentBinding;->statusLayout:Lcom/sec/android/app/sbrowser/databinding/WallpaperLoadingErrorBinding;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/databinding/WallpaperLoadingErrorBinding;->wallpapersStatusLayout:Landroid/widget/LinearLayout;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    return-void

    :cond_0
    invoke-static {v2}, Ltb/k;->l(Ljava/lang/String;)V

    throw v1

    :cond_1
    invoke-static {v2}, Ltb/k;->l(Ljava/lang/String;)V

    throw v1
.end method

.method private final updateCategoriesCardViewList(Lcom/sec/android/app/sbrowser/wallpaper/data/CategoryCardViewListData;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/FeaturedWallpaperFragment;->categoriesAdapter:Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/FeaturedCategoriesCardAdapter;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/FeaturedCategoriesCardAdapter;->updateCategoriesCardView(Lcom/sec/android/app/sbrowser/wallpaper/data/CategoryCardViewListData;)V

    return-void

    :cond_0
    const-string p0, "categoriesAdapter"

    invoke-static {p0}, Ltb/k;->l(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method private static final viewModel_delegate$lambda$0(Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/FeaturedWallpaperFragment;)Lcom/sec/android/app/sbrowser/wallpaper/presentation/viewmodel/FeaturedWallpaperViewModel;
    .locals 1

    new-instance v0, LZ3/x;

    invoke-direct {v0, p0}, LZ3/x;-><init>(Landroidx/lifecycle/y0;)V

    const-class p0, Lcom/sec/android/app/sbrowser/wallpaper/presentation/viewmodel/FeaturedWallpaperViewModel;

    invoke-virtual {v0, p0}, LZ3/x;->s(Ljava/lang/Class;)Landroidx/lifecycle/s0;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/sbrowser/wallpaper/presentation/viewmodel/FeaturedWallpaperViewModel;

    return-object p0
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0
    .param p1    # Landroid/view/LayoutInflater;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/ViewGroup;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p2, "inflater"

    invoke-static {p1, p2}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/databinding/FeaturedWallpaperFragmentBinding;->inflate(Landroid/view/LayoutInflater;)Lcom/sec/android/app/sbrowser/databinding/FeaturedWallpaperFragmentBinding;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/FeaturedWallpaperFragment;->binding:Lcom/sec/android/app/sbrowser/databinding/FeaturedWallpaperFragmentBinding;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/databinding/FeaturedWallpaperFragmentBinding;->getRoot()Landroid/widget/RelativeLayout;

    move-result-object p0

    const-string p1, "getRoot(...)"

    invoke-static {p0, p1}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    :cond_0
    const-string p0, "binding"

    invoke-static {p0}, Ltb/k;->l(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public onStart()V
    .locals 1

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onStart()V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/J;

    move-result-object p0

    const v0, 0x7f140543

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setTitle(I)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string v0, "view"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/FeaturedWallpaperFragment;->getViewModel()Lcom/sec/android/app/sbrowser/wallpaper/presentation/viewmodel/FeaturedWallpaperViewModel;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/sec/android/app/sbrowser/wallpaper/presentation/viewmodel/FeaturedWallpaperViewModel;->setFeaturedCategoryDataCollected(Z)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/FeaturedWallpaperFragment;->registerLiveDataObservers()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/FeaturedWallpaperFragment;->setCategoriesRecyclerCardAdapter()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/FeaturedWallpaperFragment;->fetchFeaturedCategories()V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/FeaturedWallpaperFragment;->binding:Lcom/sec/android/app/sbrowser/databinding/FeaturedWallpaperFragmentBinding;

    if-eqz p1, :cond_0

    iget-object p1, p1, Lcom/sec/android/app/sbrowser/databinding/FeaturedWallpaperFragmentBinding;->statusLayout:Lcom/sec/android/app/sbrowser/databinding/WallpaperLoadingErrorBinding;

    iget-object p1, p1, Lcom/sec/android/app/sbrowser/databinding/WallpaperLoadingErrorBinding;->errorButton:Landroid/widget/Button;

    new-instance p2, Lcom/sec/android/app/sbrowser/save_image/d;

    const/16 v0, 0xd

    invoke-direct {p2, v0, p0}, Lcom/sec/android/app/sbrowser/save_image/d;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    :cond_0
    const-string p0, "binding"

    invoke-static {p0}, Ltb/k;->l(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method
