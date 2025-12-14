.class public final Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/FeaturedCategoriesCardAdapter;
.super Landroidx/recyclerview/widget/u0;
.source "SourceFile"


# annotations
.annotation build Landroidx/compose/runtime/internal/StabilityInferred;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/FeaturedCategoriesCardAdapter$FeaturedCategoriesCardViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/u0;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0007\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001:\u0001\"B\'\u0012\u000e\u0010\u0005\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00040\u0003\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\t\u001a\u00020\u0008\u00a2\u0006\u0004\u0008\n\u0010\u000bJ\u001f\u0010\u0010\u001a\u00020\u00022\u0006\u0010\r\u001a\u00020\u000c2\u0006\u0010\u000f\u001a\u00020\u000eH\u0016\u00a2\u0006\u0004\u0008\u0010\u0010\u0011J\u001f\u0010\u0015\u001a\u00020\u00142\u0006\u0010\u0012\u001a\u00020\u00022\u0006\u0010\u0013\u001a\u00020\u000eH\u0016\u00a2\u0006\u0004\u0008\u0015\u0010\u0016J\u000f\u0010\u0017\u001a\u00020\u000eH\u0016\u00a2\u0006\u0004\u0008\u0017\u0010\u0018J\u0015\u0010\u001a\u001a\u00020\u00142\u0006\u0010\u0019\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u001a\u0010\u001bR\u001c\u0010\u0005\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00040\u00038\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0005\u0010\u001cR\u0014\u0010\u0007\u001a\u00020\u00068\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0007\u0010\u001dR\u0014\u0010\t\u001a\u00020\u00088\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\t\u0010\u001eR\u0016\u0010 \u001a\u00020\u001f8\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u0008 \u0010!\u00a8\u0006#"
    }
    d2 = {
        "Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/FeaturedCategoriesCardAdapter;",
        "Landroidx/recyclerview/widget/u0;",
        "Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/FeaturedCategoriesCardAdapter$FeaturedCategoriesCardViewHolder;",
        "",
        "Lcom/sec/android/app/sbrowser/wallpaper/data/CategoryCardViewListData;",
        "categoriesList",
        "Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/FeaturedCategoriesAdapterListener;",
        "adapterListener",
        "Landroid/content/Context;",
        "context",
        "<init>",
        "(Ljava/util/List;Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/FeaturedCategoriesAdapterListener;Landroid/content/Context;)V",
        "Landroid/view/ViewGroup;",
        "parent",
        "",
        "viewType",
        "onCreateViewHolder",
        "(Landroid/view/ViewGroup;I)Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/FeaturedCategoriesCardAdapter$FeaturedCategoriesCardViewHolder;",
        "holder",
        "position",
        "Ldb/r;",
        "onBindViewHolder",
        "(Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/FeaturedCategoriesCardAdapter$FeaturedCategoriesCardViewHolder;I)V",
        "getItemCount",
        "()I",
        "categoryCardViewListData",
        "updateCategoriesCardView",
        "(Lcom/sec/android/app/sbrowser/wallpaper/data/CategoryCardViewListData;)V",
        "Ljava/util/List;",
        "Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/FeaturedCategoriesAdapterListener;",
        "Landroid/content/Context;",
        "Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/CategoryItemsAdapter;",
        "itemAdapter",
        "Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/CategoryItemsAdapter;",
        "FeaturedCategoriesCardViewHolder",
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
.field private final adapterListener:Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/FeaturedCategoriesAdapterListener;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final categoriesList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sec/android/app/sbrowser/wallpaper/data/CategoryCardViewListData;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final context:Landroid/content/Context;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private itemAdapter:Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/CategoryItemsAdapter;


# direct methods
.method public constructor <init>(Ljava/util/List;Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/FeaturedCategoriesAdapterListener;Landroid/content/Context;)V
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/FeaturedCategoriesAdapterListener;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sec/android/app/sbrowser/wallpaper/data/CategoryCardViewListData;",
            ">;",
            "Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/FeaturedCategoriesAdapterListener;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    const-string v0, "categoriesList"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adapterListener"

    invoke-static {p2, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p3, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Landroidx/recyclerview/widget/u0;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/FeaturedCategoriesCardAdapter;->categoriesList:Ljava/util/List;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/FeaturedCategoriesCardAdapter;->adapterListener:Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/FeaturedCategoriesAdapterListener;

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/FeaturedCategoriesCardAdapter;->context:Landroid/content/Context;

    return-void
.end method

.method public static synthetic a(Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/FeaturedCategoriesCardAdapter;Lcom/sec/android/app/sbrowser/wallpaper/data/CategoryCardViewListData;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/FeaturedCategoriesCardAdapter;->onBindViewHolder$lambda$0(Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/FeaturedCategoriesCardAdapter;Lcom/sec/android/app/sbrowser/wallpaper/data/CategoryCardViewListData;Landroid/view/View;)V

    return-void
.end method

.method private static final onBindViewHolder$lambda$0(Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/FeaturedCategoriesCardAdapter;Lcom/sec/android/app/sbrowser/wallpaper/data/CategoryCardViewListData;Landroid/view/View;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/FeaturedCategoriesCardAdapter;->adapterListener:Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/FeaturedCategoriesAdapterListener;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/wallpaper/data/CategoryCardViewListData;->getCategoryName()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/FeaturedCategoriesAdapterListener;->onCategoryThumbnailClicked(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/FeaturedCategoriesCardAdapter;->categoriesList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/h1;I)V
    .locals 0

    check-cast p1, Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/FeaturedCategoriesCardAdapter$FeaturedCategoriesCardViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/FeaturedCategoriesCardAdapter;->onBindViewHolder(Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/FeaturedCategoriesCardAdapter$FeaturedCategoriesCardViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/FeaturedCategoriesCardAdapter$FeaturedCategoriesCardViewHolder;I)V
    .locals 5
    .param p1    # Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/FeaturedCategoriesCardAdapter$FeaturedCategoriesCardViewHolder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "holder"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/FeaturedCategoriesCardAdapter;->categoriesList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/sec/android/app/sbrowser/wallpaper/data/CategoryCardViewListData;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/FeaturedCategoriesCardAdapter$FeaturedCategoriesCardViewHolder;->getTitle()Landroid/widget/TextView;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/sbrowser/common/wallpaper/ChangeWallpaperUtil;->INSTANCE:Lcom/sec/android/app/sbrowser/common/wallpaper/ChangeWallpaperUtil;

    iget-object v2, p1, Landroidx/recyclerview/widget/h1;->itemView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "getContext(...)"

    invoke-static {v2, v3}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/wallpaper/data/CategoryCardViewListData;->getCategoryName()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :cond_0
    move-object v4, v3

    :goto_0
    invoke-virtual {v1, v2, v4}, Lcom/sec/android/app/sbrowser/common/wallpaper/ChangeWallpaperUtil;->getCategoryNameFromRes(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/FeaturedCategoriesCardAdapter$FeaturedCategoriesCardViewHolder;->getHeaderContainer()Landroid/widget/RelativeLayout;

    move-result-object v0

    new-instance v1, LFa/b;

    const/16 v2, 0x12

    invoke-direct {v1, v2, p0, p2}, LFa/b;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/FeaturedCategoriesCardAdapter$FeaturedCategoriesCardViewHolder;->getCategoryItemRecyclerView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(I)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/J0;)V

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/wallpaper/data/CategoryCardViewListData;->getThumbnailList()Ljava/util/List;

    move-result-object p2

    if-eqz p2, :cond_1

    check-cast p2, Ljava/lang/Iterable;

    invoke-static {p2}, Lfb/n;->g0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p2

    goto :goto_1

    :cond_1
    move-object p2, v3

    :goto_1
    if-eqz p2, :cond_2

    new-instance v0, Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/CategoryItemsAdapter;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/FeaturedCategoriesCardAdapter;->context:Landroid/content/Context;

    check-cast p2, Ljava/lang/Iterable;

    invoke-static {p2}, Lfb/n;->g0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p2

    invoke-direct {v0, v1, p2}, Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/CategoryItemsAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    goto :goto_2

    :cond_2
    move-object v0, v3

    :goto_2
    invoke-static {v0}, Ltb/k;->c(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/FeaturedCategoriesCardAdapter;->itemAdapter:Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/CategoryItemsAdapter;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/FeaturedCategoriesCardAdapter$FeaturedCategoriesCardViewHolder;->getCategoryItemRecyclerView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p2

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/FeaturedCategoriesCardAdapter;->itemAdapter:Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/CategoryItemsAdapter;

    if-eqz p0, :cond_3

    invoke-virtual {p2, p0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/u0;)V

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/FeaturedCategoriesCardAdapter$FeaturedCategoriesCardViewHolder;->getCategoryItemRecyclerView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p0

    invoke-virtual {p0, v2}, Landroidx/recyclerview/widget/RecyclerView;->seslSetPenSelectionEnabled(Z)V

    return-void

    :cond_3
    const-string p0, "itemAdapter"

    invoke-static {p0}, Ltb/k;->l(Ljava/lang/String;)V

    throw v3
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/h1;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/FeaturedCategoriesCardAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/FeaturedCategoriesCardAdapter$FeaturedCategoriesCardViewHolder;

    move-result-object p0

    return-object p0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/FeaturedCategoriesCardAdapter$FeaturedCategoriesCardViewHolder;
    .locals 1
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "parent"

    invoke-static {p1, p0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/FeaturedCategoriesCardAdapter$FeaturedCategoriesCardViewHolder;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const/4 v0, 0x0

    invoke-static {p2, p1, v0}, Lcom/sec/android/app/sbrowser/databinding/WallpaperCategoriesBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/sec/android/app/sbrowser/databinding/WallpaperCategoriesBinding;

    move-result-object p1

    const-string p2, "inflate(...)"

    invoke-static {p1, p2}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/FeaturedCategoriesCardAdapter$FeaturedCategoriesCardViewHolder;-><init>(Lcom/sec/android/app/sbrowser/databinding/WallpaperCategoriesBinding;)V

    return-object p0
.end method

.method public final updateCategoriesCardView(Lcom/sec/android/app/sbrowser/wallpaper/data/CategoryCardViewListData;)V
    .locals 1
    .param p1    # Lcom/sec/android/app/sbrowser/wallpaper/data/CategoryCardViewListData;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "categoryCardViewListData"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/FeaturedCategoriesCardAdapter;->categoriesList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/FeaturedCategoriesCardAdapter;->getItemCount()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/u0;->notifyItemInserted(I)V

    return-void
.end method
