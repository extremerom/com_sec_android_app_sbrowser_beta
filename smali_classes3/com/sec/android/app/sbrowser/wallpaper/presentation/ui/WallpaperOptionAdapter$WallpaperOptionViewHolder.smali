.class public final Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/WallpaperOptionAdapter$WallpaperOptionViewHolder;
.super Landroidx/recyclerview/widget/h1;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/WallpaperOptionAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "WallpaperOptionViewHolder"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0086\u0004\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u000f\u0010\u0007\u001a\u00020\u0006H\u0002\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u000f\u0010\t\u001a\u00020\u0006H\u0002\u00a2\u0006\u0004\u0008\t\u0010\u0008J\u001d\u0010\r\u001a\u00020\u00062\u000c\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\nH\u0002\u00a2\u0006\u0004\u0008\r\u0010\u000eJ\u0015\u0010\u0011\u001a\u00020\u00062\u0006\u0010\u0010\u001a\u00020\u000f\u00a2\u0006\u0004\u0008\u0011\u0010\u0012J\u0015\u0010\u0015\u001a\u00020\u00062\u0006\u0010\u0014\u001a\u00020\u0013\u00a2\u0006\u0004\u0008\u0015\u0010\u0016R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0003\u0010\u0017R\u0016\u0010\u0019\u001a\u00020\u00188\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u0008\u0019\u0010\u001a\u00a8\u0006\u001b"
    }
    d2 = {
        "Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/WallpaperOptionAdapter$WallpaperOptionViewHolder;",
        "Landroidx/recyclerview/widget/h1;",
        "Lcom/sec/android/app/sbrowser/databinding/WallpaperOptionsBinding;",
        "binding",
        "<init>",
        "(Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/WallpaperOptionAdapter;Lcom/sec/android/app/sbrowser/databinding/WallpaperOptionsBinding;)V",
        "Ldb/r;",
        "setProgressView",
        "()V",
        "setSuccessView",
        "",
        "Lcom/sec/android/app/sbrowser/wallpaper/data/CategoryThumbnailData;",
        "featuredCategoriesThumbnailDataList",
        "setFeaturedItemAdapter",
        "(Ljava/util/List;)V",
        "Lcom/sec/android/app/sbrowser/wallpaper/data/WallpaperOptionItemDto;",
        "item",
        "bind",
        "(Lcom/sec/android/app/sbrowser/wallpaper/data/WallpaperOptionItemDto;)V",
        "",
        "show",
        "permissionTextView",
        "(Z)V",
        "Lcom/sec/android/app/sbrowser/databinding/WallpaperOptionsBinding;",
        "Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/FeaturedOptionItemAdapter;",
        "featuredOptionItemAdapter",
        "Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/FeaturedOptionItemAdapter;",
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
.field private final binding:Lcom/sec/android/app/sbrowser/databinding/WallpaperOptionsBinding;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private featuredOptionItemAdapter:Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/FeaturedOptionItemAdapter;

.field final synthetic this$0:Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/WallpaperOptionAdapter;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/WallpaperOptionAdapter;Lcom/sec/android/app/sbrowser/databinding/WallpaperOptionsBinding;)V
    .locals 1
    .param p1    # Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/WallpaperOptionAdapter;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/android/app/sbrowser/databinding/WallpaperOptionsBinding;",
            ")V"
        }
    .end annotation

    const-string v0, "binding"

    invoke-static {p2, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/WallpaperOptionAdapter$WallpaperOptionViewHolder;->this$0:Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/WallpaperOptionAdapter;

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/databinding/WallpaperOptionsBinding;->getRoot()Landroidx/cardview/widget/CardView;

    move-result-object p1

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/h1;-><init>(Landroid/view/View;)V

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/WallpaperOptionAdapter$WallpaperOptionViewHolder;->binding:Lcom/sec/android/app/sbrowser/databinding/WallpaperOptionsBinding;

    return-void
.end method

.method public static synthetic a(Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/WallpaperOptionAdapter$WallpaperOptionViewHolder;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/WallpaperOptionAdapter$WallpaperOptionViewHolder;->setFeaturedItemAdapter$lambda$1(Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/WallpaperOptionAdapter$WallpaperOptionViewHolder;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic b(Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/WallpaperOptionAdapter;Lcom/sec/android/app/sbrowser/wallpaper/data/WallpaperOptionItemDto;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/WallpaperOptionAdapter$WallpaperOptionViewHolder;->bind$lambda$0(Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/WallpaperOptionAdapter;Lcom/sec/android/app/sbrowser/wallpaper/data/WallpaperOptionItemDto;Landroid/view/View;)V

    return-void
.end method

.method private static final bind$lambda$0(Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/WallpaperOptionAdapter;Lcom/sec/android/app/sbrowser/wallpaper/data/WallpaperOptionItemDto;Landroid/view/View;)V
    .locals 0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/WallpaperOptionAdapter;->access$getOnTitleClick$p(Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/WallpaperOptionAdapter;)Lsb/k;

    move-result-object p0

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/wallpaper/data/WallpaperOptionItemDto;->getTitle()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lsb/k;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private final setFeaturedItemAdapter(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sec/android/app/sbrowser/wallpaper/data/CategoryThumbnailData;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lcom/sec/android/app/sbrowser/search_widget/a;

    const/16 v1, 0xc

    invoke-direct {v0, v1, p0}, Lcom/sec/android/app/sbrowser/search_widget/a;-><init>(ILjava/lang/Object;)V

    new-instance v1, Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/FeaturedOptionItemAdapter;

    invoke-direct {v1, v0, p1}, Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/FeaturedOptionItemAdapter;-><init>(Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/FeaturedCategoriesAdapterListener;Ljava/util/List;)V

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/WallpaperOptionAdapter$WallpaperOptionViewHolder;->featuredOptionItemAdapter:Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/FeaturedOptionItemAdapter;

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/WallpaperOptionAdapter$WallpaperOptionViewHolder;->binding:Lcom/sec/android/app/sbrowser/databinding/WallpaperOptionsBinding;

    iget-object p1, p1, Lcom/sec/android/app/sbrowser/databinding/WallpaperOptionsBinding;->itemsRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(I)V

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/J0;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/WallpaperOptionAdapter$WallpaperOptionViewHolder;->featuredOptionItemAdapter:Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/FeaturedOptionItemAdapter;

    if-eqz p0, :cond_0

    invoke-virtual {p1, p0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/u0;)V

    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->seslSetPenSelectionEnabled(Z)V

    return-void

    :cond_0
    const-string p0, "featuredOptionItemAdapter"

    invoke-static {p0}, Ltb/k;->l(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method private static final setFeaturedItemAdapter$lambda$1(Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/WallpaperOptionAdapter$WallpaperOptionViewHolder;Ljava/lang/String;)V
    .locals 1

    const-string v0, "it"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/WallpaperOptionNavigatorImpl;->Companion:Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/WallpaperOptionNavigatorImpl$Companion;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/WallpaperOptionAdapter$WallpaperOptionViewHolder;->binding:Lcom/sec/android/app/sbrowser/databinding/WallpaperOptionsBinding;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/databinding/WallpaperOptionsBinding;->itemsRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {v0, p0, p1}, Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/WallpaperOptionNavigatorImpl$Companion;->launchCategoriesFragment(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method private final setProgressView()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/WallpaperOptionAdapter$WallpaperOptionViewHolder;->binding:Lcom/sec/android/app/sbrowser/databinding/WallpaperOptionsBinding;

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/databinding/WallpaperOptionsBinding;->itemsRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/WallpaperOptionAdapter$WallpaperOptionViewHolder;->binding:Lcom/sec/android/app/sbrowser/databinding/WallpaperOptionsBinding;

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/databinding/WallpaperOptionsBinding;->statusLayout:Lcom/sec/android/app/sbrowser/databinding/WallpaperLoadingErrorBinding;

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/databinding/WallpaperLoadingErrorBinding;->errorMessage:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/WallpaperOptionAdapter$WallpaperOptionViewHolder;->binding:Lcom/sec/android/app/sbrowser/databinding/WallpaperOptionsBinding;

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/databinding/WallpaperOptionsBinding;->statusLayout:Lcom/sec/android/app/sbrowser/databinding/WallpaperLoadingErrorBinding;

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/databinding/WallpaperLoadingErrorBinding;->errorButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/WallpaperOptionAdapter$WallpaperOptionViewHolder;->binding:Lcom/sec/android/app/sbrowser/databinding/WallpaperOptionsBinding;

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/databinding/WallpaperOptionsBinding;->statusLayout:Lcom/sec/android/app/sbrowser/databinding/WallpaperLoadingErrorBinding;

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/databinding/WallpaperLoadingErrorBinding;->wallpapersStatusLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/WallpaperOptionAdapter$WallpaperOptionViewHolder;->binding:Lcom/sec/android/app/sbrowser/databinding/WallpaperOptionsBinding;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/databinding/WallpaperOptionsBinding;->statusLayout:Lcom/sec/android/app/sbrowser/databinding/WallpaperLoadingErrorBinding;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/databinding/WallpaperLoadingErrorBinding;->wallpaperProgressbar:Landroidx/appcompat/widget/SeslProgressBar;

    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private final setSuccessView()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/WallpaperOptionAdapter$WallpaperOptionViewHolder;->binding:Lcom/sec/android/app/sbrowser/databinding/WallpaperOptionsBinding;

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/databinding/WallpaperOptionsBinding;->itemsRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/WallpaperOptionAdapter$WallpaperOptionViewHolder;->binding:Lcom/sec/android/app/sbrowser/databinding/WallpaperOptionsBinding;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/databinding/WallpaperOptionsBinding;->statusLayout:Lcom/sec/android/app/sbrowser/databinding/WallpaperLoadingErrorBinding;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/databinding/WallpaperLoadingErrorBinding;->wallpapersStatusLayout:Landroid/widget/LinearLayout;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method public final bind(Lcom/sec/android/app/sbrowser/wallpaper/data/WallpaperOptionItemDto;)V
    .locals 5
    .param p1    # Lcom/sec/android/app/sbrowser/wallpaper/data/WallpaperOptionItemDto;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "item"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/WallpaperOptionAdapter$WallpaperOptionViewHolder;->binding:Lcom/sec/android/app/sbrowser/databinding/WallpaperOptionsBinding;

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/databinding/WallpaperOptionsBinding;->itemsTextView:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/WallpaperOptionAdapter$WallpaperOptionViewHolder;->binding:Lcom/sec/android/app/sbrowser/databinding/WallpaperOptionsBinding;

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/databinding/WallpaperOptionsBinding;->permissionTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/WallpaperOptionAdapter$WallpaperOptionViewHolder;->binding:Lcom/sec/android/app/sbrowser/databinding/WallpaperOptionsBinding;

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/databinding/WallpaperOptionsBinding;->title:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/wallpaper/data/WallpaperOptionItemDto;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/WallpaperOptionAdapter$WallpaperOptionViewHolder;->binding:Lcom/sec/android/app/sbrowser/databinding/WallpaperOptionsBinding;

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/databinding/WallpaperOptionsBinding;->directionButton:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/WallpaperOptionAdapter$WallpaperOptionViewHolder;->this$0:Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/WallpaperOptionAdapter;

    new-instance v3, LFa/b;

    const/16 v4, 0x14

    invoke-direct {v3, v4, v2, p1}, LFa/b;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/WallpaperOptionAdapter$WallpaperOptionViewHolder;->binding:Lcom/sec/android/app/sbrowser/databinding/WallpaperOptionsBinding;

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/databinding/WallpaperOptionsBinding;->itemsRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v2, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(I)V

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/J0;)V

    instance-of v0, p1, Lcom/sec/android/app/sbrowser/wallpaper/data/WallpaperOptionItemDto$OptionFeaturedItem;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/WallpaperOptionAdapter$WallpaperOptionViewHolder;->binding:Lcom/sec/android/app/sbrowser/databinding/WallpaperOptionsBinding;

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/databinding/WallpaperOptionsBinding;->optionCardContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/WallpaperOptionAdapter$WallpaperOptionViewHolder;->this$0:Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/WallpaperOptionAdapter;

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/WallpaperOptionAdapter;->access$getContext$p(Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/WallpaperOptionAdapter;)Landroid/content/Context;

    move-result-object v1

    const/16 v2, 0x10a

    invoke-static {v1, v2}, Lcom/sec/android/app/sbrowser/common/utils/ViewUtil;->dpToPx(Landroid/content/Context;I)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/WallpaperOptionAdapter$WallpaperOptionViewHolder;->binding:Lcom/sec/android/app/sbrowser/databinding/WallpaperOptionsBinding;

    iget-object v1, v1, Lcom/sec/android/app/sbrowser/databinding/WallpaperOptionsBinding;->optionCardContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/WallpaperOptionAdapter$WallpaperOptionViewHolder;->featuredOptionItemAdapter:Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/FeaturedOptionItemAdapter;

    if-nez v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/sec/android/app/sbrowser/wallpaper/data/WallpaperOptionItemDto$OptionFeaturedItem;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/wallpaper/data/WallpaperOptionItemDto$OptionFeaturedItem;->getList()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/WallpaperOptionAdapter$WallpaperOptionViewHolder;->setFeaturedItemAdapter(Ljava/util/List;)V

    :cond_0
    check-cast p1, Lcom/sec/android/app/sbrowser/wallpaper/data/WallpaperOptionItemDto$OptionFeaturedItem;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/wallpaper/data/WallpaperOptionItemDto$OptionFeaturedItem;->getList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/WallpaperOptionAdapter$WallpaperOptionViewHolder;->setProgressView()V

    goto/16 :goto_0

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/WallpaperOptionAdapter$WallpaperOptionViewHolder;->featuredOptionItemAdapter:Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/FeaturedOptionItemAdapter;

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/wallpaper/data/WallpaperOptionItemDto$OptionFeaturedItem;->getList()Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/FeaturedOptionItemAdapter;->updateItems(Ljava/util/List;)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/WallpaperOptionAdapter$WallpaperOptionViewHolder;->setSuccessView()V

    goto/16 :goto_0

    :cond_2
    const-string p0, "featuredOptionItemAdapter"

    invoke-static {p0}, Ltb/k;->l(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0

    :cond_3
    instance-of v0, p1, Lcom/sec/android/app/sbrowser/wallpaper/data/WallpaperOptionItemDto$OptionGalleryItem;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/WallpaperOptionAdapter$WallpaperOptionViewHolder;->binding:Lcom/sec/android/app/sbrowser/databinding/WallpaperOptionsBinding;

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/databinding/WallpaperOptionsBinding;->optionCardContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/WallpaperOptionAdapter$WallpaperOptionViewHolder;->this$0:Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/WallpaperOptionAdapter;

    invoke-static {v2}, Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/WallpaperOptionAdapter;->access$getContext$p(Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/WallpaperOptionAdapter;)Landroid/content/Context;

    move-result-object v2

    const/16 v4, 0xb8

    invoke-static {v2, v4}, Lcom/sec/android/app/sbrowser/common/utils/ViewUtil;->dpToPx(Landroid/content/Context;I)I

    move-result v2

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/WallpaperOptionAdapter$WallpaperOptionViewHolder;->binding:Lcom/sec/android/app/sbrowser/databinding/WallpaperOptionsBinding;

    iget-object v2, v2, Lcom/sec/android/app/sbrowser/databinding/WallpaperOptionsBinding;->optionCardContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/WallpaperOptionAdapter$WallpaperOptionViewHolder;->setSuccessView()V

    check-cast p1, Lcom/sec/android/app/sbrowser/wallpaper/data/WallpaperOptionItemDto$OptionGalleryItem;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/wallpaper/data/WallpaperOptionItemDto$OptionGalleryItem;->getList()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/WallpaperOptionAdapter$WallpaperOptionViewHolder;->binding:Lcom/sec/android/app/sbrowser/databinding/WallpaperOptionsBinding;

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/databinding/WallpaperOptionsBinding;->itemsRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/WallpaperOptionGalleryFolderAdapter;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/wallpaper/data/WallpaperOptionItemDto$OptionGalleryItem;->getList()Ljava/util/List;

    move-result-object p1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/WallpaperOptionAdapter$WallpaperOptionViewHolder;->this$0:Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/WallpaperOptionAdapter;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/WallpaperOptionAdapter;->access$getOnFolderClick$p(Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/WallpaperOptionAdapter;)Lsb/k;

    move-result-object p0

    invoke-direct {v1, p1, p0}, Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/WallpaperOptionGalleryFolderAdapter;-><init>(Ljava/util/List;Lsb/k;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/u0;)V

    goto :goto_0

    :cond_4
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/WallpaperOptionAdapter$WallpaperOptionViewHolder;->binding:Lcom/sec/android/app/sbrowser/databinding/WallpaperOptionsBinding;

    iget-object p1, p1, Lcom/sec/android/app/sbrowser/databinding/WallpaperOptionsBinding;->itemsRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/WallpaperOptionAdapter$WallpaperOptionViewHolder;->binding:Lcom/sec/android/app/sbrowser/databinding/WallpaperOptionsBinding;

    iget-object p1, p1, Lcom/sec/android/app/sbrowser/databinding/WallpaperOptionsBinding;->itemsTextView:Landroid/widget/TextView;

    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/WallpaperOptionAdapter$WallpaperOptionViewHolder;->binding:Lcom/sec/android/app/sbrowser/databinding/WallpaperOptionsBinding;

    iget-object p1, p1, Lcom/sec/android/app/sbrowser/databinding/WallpaperOptionsBinding;->itemsTextView:Landroid/widget/TextView;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/WallpaperOptionAdapter$WallpaperOptionViewHolder;->this$0:Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/WallpaperOptionAdapter;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/WallpaperOptionAdapter;->access$getContext$p(Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/WallpaperOptionAdapter;)Landroid/content/Context;

    move-result-object p0

    const v0, 0x7f1410d5

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_5
    instance-of v0, p1, Lcom/sec/android/app/sbrowser/wallpaper/data/WallpaperOptionItemDto$OptionColorsItem;

    if-eqz v0, :cond_6

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/WallpaperOptionAdapter$WallpaperOptionViewHolder;->setSuccessView()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/WallpaperOptionAdapter$WallpaperOptionViewHolder;->binding:Lcom/sec/android/app/sbrowser/databinding/WallpaperOptionsBinding;

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/databinding/WallpaperOptionsBinding;->itemsRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/ColorsOptionItemAdapter;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/WallpaperOptionAdapter$WallpaperOptionViewHolder;->this$0:Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/WallpaperOptionAdapter;

    invoke-static {v2}, Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/WallpaperOptionAdapter;->access$getContext$p(Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/WallpaperOptionAdapter;)Landroid/content/Context;

    move-result-object v2

    check-cast p1, Lcom/sec/android/app/sbrowser/wallpaper/data/WallpaperOptionItemDto$OptionColorsItem;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/wallpaper/data/WallpaperOptionItemDto$OptionColorsItem;->getList()Ljava/util/List;

    move-result-object p1

    invoke-direct {v1, v2, p1}, Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/ColorsOptionItemAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/u0;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/WallpaperOptionAdapter$WallpaperOptionViewHolder;->binding:Lcom/sec/android/app/sbrowser/databinding/WallpaperOptionsBinding;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/databinding/WallpaperOptionsBinding;->itemsRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0, v3}, Landroidx/recyclerview/widget/RecyclerView;->seslSetPenSelectionEnabled(Z)V

    :goto_0
    return-void

    :cond_6
    new-instance p0, LI5/b;

    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    throw p0
.end method

.method public final permissionTextView(Z)V
    .locals 5

    if-nez p1, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/WallpaperOptionAdapter$WallpaperOptionViewHolder;->binding:Lcom/sec/android/app/sbrowser/databinding/WallpaperOptionsBinding;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/databinding/WallpaperOptionsBinding;->permissionTextView:Landroid/widget/TextView;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void

    :cond_0
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/WallpaperOptionAdapter$WallpaperOptionViewHolder;->binding:Lcom/sec/android/app/sbrowser/databinding/WallpaperOptionsBinding;

    iget-object p1, p1, Lcom/sec/android/app/sbrowser/databinding/WallpaperOptionsBinding;->optionCardContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    const/4 v0, -0x2

    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/WallpaperOptionAdapter$WallpaperOptionViewHolder;->binding:Lcom/sec/android/app/sbrowser/databinding/WallpaperOptionsBinding;

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/databinding/WallpaperOptionsBinding;->optionCardContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/WallpaperOptionAdapter$WallpaperOptionViewHolder;->this$0:Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/WallpaperOptionAdapter;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/WallpaperOptionAdapter;->access$getContext$p(Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/WallpaperOptionAdapter;)Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f1410d3

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "getString(...)"

    invoke-static {p1, v0}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/WallpaperOptionAdapter$WallpaperOptionViewHolder;->this$0:Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/WallpaperOptionAdapter;

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/WallpaperOptionAdapter;->access$getContext$p(Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/WallpaperOptionAdapter;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f1400cf

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "[["

    const-string v2, "]]"

    filled-new-array {v1, v0, v2}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, ""

    invoke-static {p1, v0, v1}, LKc/r;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v2, v1}, LKc/r;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v4, 0x6

    invoke-static {p1, v0, v3, v3, v4}, LKc/k;->v(Ljava/lang/CharSequence;Ljava/lang/String;IZI)I

    move-result v0

    invoke-static {p1, v2, v3, v3, v4}, LKc/k;->v(Ljava/lang/CharSequence;Ljava/lang/String;IZI)I

    move-result p1

    add-int/lit8 p1, p1, -0x2

    new-instance v2, Landroid/text/SpannableString;

    invoke-direct {v2, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    new-instance v1, Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/WallpaperOptionAdapter$WallpaperOptionViewHolder$permissionTextView$clickableSpan$1;

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/WallpaperOptionAdapter$WallpaperOptionViewHolder;->this$0:Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/WallpaperOptionAdapter;

    invoke-direct {v1, v4}, Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/WallpaperOptionAdapter$WallpaperOptionViewHolder$permissionTextView$clickableSpan$1;-><init>(Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/WallpaperOptionAdapter;)V

    const/16 v4, 0x21

    invoke-virtual {v2, v1, v0, p1, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/WallpaperOptionAdapter$WallpaperOptionViewHolder;->binding:Lcom/sec/android/app/sbrowser/databinding/WallpaperOptionsBinding;

    iget-object p1, p1, Lcom/sec/android/app/sbrowser/databinding/WallpaperOptionsBinding;->permissionTextView:Landroid/widget/TextView;

    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/WallpaperOptionAdapter$WallpaperOptionViewHolder;->binding:Lcom/sec/android/app/sbrowser/databinding/WallpaperOptionsBinding;

    iget-object p1, p1, Lcom/sec/android/app/sbrowser/databinding/WallpaperOptionsBinding;->permissionTextView:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/WallpaperOptionAdapter$WallpaperOptionViewHolder;->binding:Lcom/sec/android/app/sbrowser/databinding/WallpaperOptionsBinding;

    iget-object p1, p1, Lcom/sec/android/app/sbrowser/databinding/WallpaperOptionsBinding;->permissionTextView:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/WallpaperOptionAdapter$WallpaperOptionViewHolder;->binding:Lcom/sec/android/app/sbrowser/databinding/WallpaperOptionsBinding;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/databinding/WallpaperOptionsBinding;->permissionTextView:Landroid/widget/TextView;

    const p1, -0xffff01

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setHighlightColor(I)V

    return-void
.end method
