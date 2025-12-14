.class public final Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/FeaturedOptionItemAdapter;
.super Landroidx/recyclerview/widget/u0;
.source "SourceFile"


# annotations
.annotation build Landroidx/compose/runtime/internal/StabilityInferred;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/FeaturedOptionItemAdapter$FeaturedOptionItemViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/u0;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\t\u0008\u0007\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001:\u0001\u001fB\u001d\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u000c\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\u000f\u0010\u000b\u001a\u00020\nH\u0002\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\u001f\u0010\u0011\u001a\u00020\u00022\u0006\u0010\u000e\u001a\u00020\r2\u0006\u0010\u0010\u001a\u00020\u000fH\u0016\u00a2\u0006\u0004\u0008\u0011\u0010\u0012J\u000f\u0010\u0013\u001a\u00020\u000fH\u0016\u00a2\u0006\u0004\u0008\u0013\u0010\u0014J\u001f\u0010\u0018\u001a\u00020\u00172\u0006\u0010\u0015\u001a\u00020\u00022\u0006\u0010\u0016\u001a\u00020\u000fH\u0016\u00a2\u0006\u0004\u0008\u0018\u0010\u0019J\u001d\u0010\u001b\u001a\u00020\u00172\u000c\u0010\u001a\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005H\u0007\u00a2\u0006\u0004\u0008\u001b\u0010\u001cR\u0014\u0010\u0004\u001a\u00020\u00038\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0004\u0010\u001dR\u001c\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u00058\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0007\u0010\u001e\u00a8\u0006 "
    }
    d2 = {
        "Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/FeaturedOptionItemAdapter;",
        "Landroidx/recyclerview/widget/u0;",
        "Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/FeaturedOptionItemAdapter$FeaturedOptionItemViewHolder;",
        "Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/FeaturedCategoriesAdapterListener;",
        "adapterListener",
        "",
        "Lcom/sec/android/app/sbrowser/wallpaper/data/CategoryThumbnailData;",
        "thumbnailList",
        "<init>",
        "(Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/FeaturedCategoriesAdapterListener;Ljava/util/List;)V",
        "",
        "getApiKey",
        "()Ljava/lang/String;",
        "Landroid/view/ViewGroup;",
        "parent",
        "",
        "viewType",
        "onCreateViewHolder",
        "(Landroid/view/ViewGroup;I)Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/FeaturedOptionItemAdapter$FeaturedOptionItemViewHolder;",
        "getItemCount",
        "()I",
        "holder",
        "position",
        "Ldb/r;",
        "onBindViewHolder",
        "(Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/FeaturedOptionItemAdapter$FeaturedOptionItemViewHolder;I)V",
        "list",
        "updateItems",
        "(Ljava/util/List;)V",
        "Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/FeaturedCategoriesAdapterListener;",
        "Ljava/util/List;",
        "FeaturedOptionItemViewHolder",
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

.field private thumbnailList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sec/android/app/sbrowser/wallpaper/data/CategoryThumbnailData;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/FeaturedCategoriesAdapterListener;Ljava/util/List;)V
    .locals 1
    .param p1    # Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/FeaturedCategoriesAdapterListener;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/FeaturedCategoriesAdapterListener;",
            "Ljava/util/List<",
            "Lcom/sec/android/app/sbrowser/wallpaper/data/CategoryThumbnailData;",
            ">;)V"
        }
    .end annotation

    const-string v0, "adapterListener"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "thumbnailList"

    invoke-static {p2, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Landroidx/recyclerview/widget/u0;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/FeaturedOptionItemAdapter;->adapterListener:Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/FeaturedCategoriesAdapterListener;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/FeaturedOptionItemAdapter;->thumbnailList:Ljava/util/List;

    return-void
.end method

.method public static synthetic a(Lcom/sec/android/app/sbrowser/wallpaper/data/CategoryThumbnailData;Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/FeaturedOptionItemAdapter;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/FeaturedOptionItemAdapter;->onBindViewHolder$lambda$1(Lcom/sec/android/app/sbrowser/wallpaper/data/CategoryThumbnailData;Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/FeaturedOptionItemAdapter;Landroid/view/View;)V

    return-void
.end method

.method private final getApiKey()Ljava/lang/String;
    .locals 0

    sget-object p0, Lcom/sec/android/app/sbrowser/wallpaper/data/ChangeWallpaperHttpClient;->INSTANCE:Lcom/sec/android/app/sbrowser/wallpaper/data/ChangeWallpaperHttpClient;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/wallpaper/data/ChangeWallpaperHttpClient;->getProfile()Lcom/sec/android/app/sbrowser/wallpaper/data/ChangeWallpaperProfile;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/wallpaper/data/ChangeWallpaperProfile;->getApiKey()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static final onBindViewHolder$lambda$1(Lcom/sec/android/app/sbrowser/wallpaper/data/CategoryThumbnailData;Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/FeaturedOptionItemAdapter;Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/wallpaper/data/CategoryThumbnailData;->getName()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    iget-object p1, p1, Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/FeaturedOptionItemAdapter;->adapterListener:Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/FeaturedCategoriesAdapterListener;

    invoke-interface {p1, p0}, Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/FeaturedCategoriesAdapterListener;->onCategoryThumbnailClicked(Ljava/lang/String;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/FeaturedOptionItemAdapter;->thumbnailList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/h1;I)V
    .locals 0

    check-cast p1, Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/FeaturedOptionItemAdapter$FeaturedOptionItemViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/FeaturedOptionItemAdapter;->onBindViewHolder(Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/FeaturedOptionItemAdapter$FeaturedOptionItemViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/FeaturedOptionItemAdapter$FeaturedOptionItemViewHolder;I)V
    .locals 5
    .param p1    # Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/FeaturedOptionItemAdapter$FeaturedOptionItemViewHolder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "holder"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/FeaturedOptionItemAdapter;->thumbnailList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/wallpaper/data/CategoryThumbnailData;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/wallpaper/data/CategoryThumbnailData;->getThumbnailUrl()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_0

    goto/16 :goto_1

    :cond_0
    new-instance v2, LW3/j;

    new-instance v3, LW3/l;

    invoke-direct {v3}, LW3/l;-><init>()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/FeaturedOptionItemAdapter;->getApiKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, LW3/l;->a(Ljava/lang/String;)V

    invoke-virtual {v3}, LW3/l;->b()LW3/n;

    move-result-object v3

    invoke-direct {v2, v1, v3}, LW3/j;-><init>(Ljava/lang/String;LW3/n;)V

    iget-object v1, p1, Landroidx/recyclerview/widget/h1;->itemView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/bumptech/glide/b;->d(Landroid/content/Context;)Lcom/bumptech/glide/l;

    move-result-object v3

    invoke-virtual {v3}, Lcom/bumptech/glide/l;->a()Lcom/bumptech/glide/j;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/bumptech/glide/j;->D(Ljava/lang/Object;)Lcom/bumptech/glide/j;

    move-result-object v2

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/FeaturedOptionItemAdapter$FeaturedOptionItemViewHolder;->getOptionItemThumbnail()Landroid/widget/ImageView;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/bumptech/glide/j;->z(Landroid/widget/ImageView;)V

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/FeaturedOptionItemAdapter$FeaturedOptionItemViewHolder;->getOptionItemCardView()Landroidx/cardview/widget/CardView;

    move-result-object v2

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/wallpaper/data/CategoryThumbnailData;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/FeaturedOptionItemAdapter$FeaturedOptionItemViewHolder;->getOptionItemCardView()Landroidx/cardview/widget/CardView;

    move-result-object v2

    new-instance v3, LFa/b;

    const/16 v4, 0x13

    invoke-direct {v3, v4, v0, p0}, LFa/b;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/FeaturedOptionItemAdapter$FeaturedOptionItemViewHolder;->getOptionItemCardView()Landroidx/cardview/widget/CardView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const-string v2, "null cannot be cast to non-null type androidx.recyclerview.widget.RecyclerView.LayoutParams"

    invoke-static {v0, v2}, Ltb/k;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroidx/recyclerview/widget/K0;

    const/4 v2, 0x0

    const/16 v3, 0x12

    if-nez p2, :cond_1

    invoke-static {v1, v3}, Lcom/sec/android/app/sbrowser/common/utils/ViewUtil;->dpToPx(Landroid/content/Context;I)I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/FeaturedOptionItemAdapter;->thumbnailList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    const v4, 0x7f0716b8

    if-ne p2, p0, :cond_2

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    invoke-static {v1, v3}, Lcom/sec/android/app/sbrowser/common/utils/ViewUtil;->dpToPx(Landroid/content/Context;I)I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    :goto_0
    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/FeaturedOptionItemAdapter$FeaturedOptionItemViewHolder;->getOptionItemCardView()Landroidx/cardview/widget/CardView;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_3
    :goto_1
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/h1;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/FeaturedOptionItemAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/FeaturedOptionItemAdapter$FeaturedOptionItemViewHolder;

    move-result-object p0

    return-object p0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/FeaturedOptionItemAdapter$FeaturedOptionItemViewHolder;
    .locals 1
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "parent"

    invoke-static {p1, p0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/FeaturedOptionItemAdapter$FeaturedOptionItemViewHolder;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const/4 v0, 0x0

    invoke-static {p2, p1, v0}, Lcom/sec/android/app/sbrowser/databinding/FeaturedOptionItemsBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/sec/android/app/sbrowser/databinding/FeaturedOptionItemsBinding;

    move-result-object p1

    const-string p2, "inflate(...)"

    invoke-static {p1, p2}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/FeaturedOptionItemAdapter$FeaturedOptionItemViewHolder;-><init>(Lcom/sec/android/app/sbrowser/databinding/FeaturedOptionItemsBinding;)V

    return-object p0
.end method

.method public final updateItems(Ljava/util/List;)V
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NotifyDataSetChanged"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sec/android/app/sbrowser/wallpaper/data/CategoryThumbnailData;",
            ">;)V"
        }
    .end annotation

    const-string v0, "list"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/FeaturedOptionItemAdapter;->thumbnailList:Ljava/util/List;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/u0;->notifyDataSetChanged()V

    return-void
.end method
