.class public final Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/CategoryItemsAdapter;
.super Landroidx/recyclerview/widget/u0;
.source "SourceFile"


# annotations
.annotation build Landroidx/compose/runtime/internal/StabilityInferred;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/CategoryItemsAdapter$CategoryItemsViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/u0;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0008\u0007\u0018\u00002\u000c\u0012\u0008\u0012\u00060\u0002R\u00020\u00000\u0001:\u0001\u001cB\u001d\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u000c\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\u000f\u0010\u000b\u001a\u00020\nH\u0002\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ#\u0010\u0011\u001a\u00060\u0002R\u00020\u00002\u0006\u0010\u000e\u001a\u00020\r2\u0006\u0010\u0010\u001a\u00020\u000fH\u0016\u00a2\u0006\u0004\u0008\u0011\u0010\u0012J#\u0010\u0016\u001a\u00020\u00152\n\u0010\u0013\u001a\u00060\u0002R\u00020\u00002\u0006\u0010\u0014\u001a\u00020\u000fH\u0016\u00a2\u0006\u0004\u0008\u0016\u0010\u0017J\u000f\u0010\u0018\u001a\u00020\u000fH\u0016\u00a2\u0006\u0004\u0008\u0018\u0010\u0019R\u0014\u0010\u0004\u001a\u00020\u00038\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0004\u0010\u001aR\u001a\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u00058\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0007\u0010\u001b\u00a8\u0006\u001d"
    }
    d2 = {
        "Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/CategoryItemsAdapter;",
        "Landroidx/recyclerview/widget/u0;",
        "Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/CategoryItemsAdapter$CategoryItemsViewHolder;",
        "Landroid/content/Context;",
        "context",
        "",
        "Lcom/sec/android/app/sbrowser/wallpaper/data/CategoryThumbnailData;",
        "itemThumbnailList",
        "<init>",
        "(Landroid/content/Context;Ljava/util/List;)V",
        "",
        "getApiKey",
        "()Ljava/lang/String;",
        "Landroid/view/ViewGroup;",
        "parent",
        "",
        "viewType",
        "onCreateViewHolder",
        "(Landroid/view/ViewGroup;I)Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/CategoryItemsAdapter$CategoryItemsViewHolder;",
        "holder",
        "position",
        "Ldb/r;",
        "onBindViewHolder",
        "(Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/CategoryItemsAdapter$CategoryItemsViewHolder;I)V",
        "getItemCount",
        "()I",
        "Landroid/content/Context;",
        "Ljava/util/List;",
        "CategoryItemsViewHolder",
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
.field private final context:Landroid/content/Context;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final itemThumbnailList:Ljava/util/List;
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
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 1
    .param p1    # Landroid/content/Context;
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
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/sec/android/app/sbrowser/wallpaper/data/CategoryThumbnailData;",
            ">;)V"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "itemThumbnailList"

    invoke-static {p2, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Landroidx/recyclerview/widget/u0;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/CategoryItemsAdapter;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/CategoryItemsAdapter;->itemThumbnailList:Ljava/util/List;

    return-void
.end method

.method public static synthetic a(Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/CategoryItemsAdapter;ILandroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/CategoryItemsAdapter;->onBindViewHolder$lambda$0(Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/CategoryItemsAdapter;ILandroid/view/View;)V

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

.method private static final onBindViewHolder$lambda$0(Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/CategoryItemsAdapter;ILandroid/view/View;)V
    .locals 2

    new-instance p2, Landroid/content/Intent;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/CategoryItemsAdapter;->context:Landroid/content/Context;

    const-class v1, Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/QuickAccessWallpaperPreviewActivity;

    invoke-direct {p2, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/CategoryItemsAdapter;->itemThumbnailList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/wallpaper/data/CategoryThumbnailData;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/wallpaper/data/CategoryThumbnailData;->getWallpaperUrl()Ljava/lang/String;

    move-result-object v0

    const-string v1, "extra_key_qa_wallpaper_image_url"

    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/CategoryItemsAdapter;->itemThumbnailList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sec/android/app/sbrowser/wallpaper/data/CategoryThumbnailData;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/wallpaper/data/CategoryThumbnailData;->getName()Ljava/lang/String;

    move-result-object p1

    const-string v0, "extra_key_qa_wallpaper_category_name"

    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/CategoryItemsAdapter;->context:Landroid/content/Context;

    invoke-static {p0, p2}, Lcom/sec/android/app/sbrowser/common/utils/LargeScreenUtil;->startNonPopOverActivity(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/CategoryItemsAdapter;->itemThumbnailList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/h1;I)V
    .locals 0

    check-cast p1, Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/CategoryItemsAdapter$CategoryItemsViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/CategoryItemsAdapter;->onBindViewHolder(Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/CategoryItemsAdapter$CategoryItemsViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/CategoryItemsAdapter$CategoryItemsViewHolder;I)V
    .locals 4
    .param p1    # Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/CategoryItemsAdapter$CategoryItemsViewHolder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "holder"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/CategoryItemsAdapter;->itemThumbnailList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/wallpaper/data/CategoryThumbnailData;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/wallpaper/data/CategoryThumbnailData;->getThumbnailUrl()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, LW3/j;

    new-instance v2, LW3/l;

    invoke-direct {v2}, LW3/l;-><init>()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/CategoryItemsAdapter;->getApiKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, LW3/l;->a(Ljava/lang/String;)V

    invoke-virtual {v2}, LW3/l;->b()LW3/n;

    move-result-object v2

    invoke-direct {v1, v0, v2}, LW3/j;-><init>(Ljava/lang/String;LW3/n;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/CategoryItemsAdapter;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/bumptech/glide/b;->d(Landroid/content/Context;)Lcom/bumptech/glide/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bumptech/glide/l;->a()Lcom/bumptech/glide/j;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/j;->D(Ljava/lang/Object;)Lcom/bumptech/glide/j;

    move-result-object v0

    invoke-virtual {v0}, Lh4/a;->h()Lh4/a;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/j;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/CategoryItemsAdapter$CategoryItemsViewHolder;->getCategoryItemThumbnail()Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/j;->z(Landroid/widget/ImageView;)V

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/CategoryItemsAdapter$CategoryItemsViewHolder;->getCategoryItemThumbnail()Landroid/widget/ImageView;

    move-result-object v0

    new-instance v1, Laa/a;

    const/4 v2, 0x6

    invoke-direct {v1, p2, v2, p0}, Laa/a;-><init>(IILjava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/CategoryItemsAdapter$CategoryItemsViewHolder;->getCategoryItemCardView()Landroidx/cardview/widget/CardView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type androidx.recyclerview.widget.RecyclerView.LayoutParams"

    invoke-static {v0, v1}, Ltb/k;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroidx/recyclerview/widget/K0;

    const/16 v1, 0x12

    if-nez p2, :cond_1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/CategoryItemsAdapter;->context:Landroid/content/Context;

    invoke-static {v2, v1}, Lcom/sec/android/app/sbrowser/common/utils/ViewUtil;->dpToPx(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    :cond_1
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/CategoryItemsAdapter;->itemThumbnailList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ne p2, v2, :cond_2

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/CategoryItemsAdapter;->context:Landroid/content/Context;

    invoke-static {p0, v1}, Lcom/sec/android/app/sbrowser/common/utils/ViewUtil;->dpToPx(Landroid/content/Context;I)I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    :cond_2
    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/CategoryItemsAdapter$CategoryItemsViewHolder;->getCategoryItemCardView()Landroidx/cardview/widget/CardView;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/h1;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/CategoryItemsAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/CategoryItemsAdapter$CategoryItemsViewHolder;

    move-result-object p0

    return-object p0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/CategoryItemsAdapter$CategoryItemsViewHolder;
    .locals 2
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p2, "parent"

    invoke-static {p1, p2}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p2, Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/CategoryItemsAdapter$CategoryItemsViewHolder;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/sec/android/app/sbrowser/databinding/CategoryItemViewBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/sec/android/app/sbrowser/databinding/CategoryItemViewBinding;

    move-result-object p1

    const-string v0, "inflate(...)"

    invoke-static {p1, v0}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p2, p0, p1}, Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/CategoryItemsAdapter$CategoryItemsViewHolder;-><init>(Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/CategoryItemsAdapter;Lcom/sec/android/app/sbrowser/databinding/CategoryItemViewBinding;)V

    return-object p2
.end method
