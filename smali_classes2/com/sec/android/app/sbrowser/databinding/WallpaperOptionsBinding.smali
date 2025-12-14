.class public final Lcom/sec/android/app/sbrowser/databinding/WallpaperOptionsBinding;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final categoryCardview:Landroidx/cardview/widget/CardView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final directionButton:Landroid/widget/RelativeLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final itemsRecyclerView:Landroidx/recyclerview/widget/RecyclerView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final itemsTextView:Landroid/widget/TextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final moreButton:Landroid/widget/ImageView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final optionCardContainer:Landroid/widget/LinearLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final permissionTextView:Landroid/widget/TextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final rootView:Landroidx/cardview/widget/CardView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final statusLayout:Lcom/sec/android/app/sbrowser/databinding/WallpaperLoadingErrorBinding;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final title:Landroid/widget/TextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroidx/cardview/widget/CardView;Landroidx/cardview/widget/CardView;Landroid/widget/RelativeLayout;Landroidx/recyclerview/widget/RecyclerView;Landroid/widget/TextView;Landroid/widget/ImageView;Landroid/widget/LinearLayout;Landroid/widget/TextView;Lcom/sec/android/app/sbrowser/databinding/WallpaperLoadingErrorBinding;Landroid/widget/TextView;)V
    .locals 0
    .param p1    # Landroidx/cardview/widget/CardView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroidx/cardview/widget/CardView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/widget/RelativeLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Landroidx/recyclerview/widget/RecyclerView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Landroid/widget/TextView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p6    # Landroid/widget/ImageView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p7    # Landroid/widget/LinearLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p8    # Landroid/widget/TextView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p9    # Lcom/sec/android/app/sbrowser/databinding/WallpaperLoadingErrorBinding;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p10    # Landroid/widget/TextView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/databinding/WallpaperOptionsBinding;->rootView:Landroidx/cardview/widget/CardView;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/databinding/WallpaperOptionsBinding;->categoryCardview:Landroidx/cardview/widget/CardView;

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/databinding/WallpaperOptionsBinding;->directionButton:Landroid/widget/RelativeLayout;

    iput-object p4, p0, Lcom/sec/android/app/sbrowser/databinding/WallpaperOptionsBinding;->itemsRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iput-object p5, p0, Lcom/sec/android/app/sbrowser/databinding/WallpaperOptionsBinding;->itemsTextView:Landroid/widget/TextView;

    iput-object p6, p0, Lcom/sec/android/app/sbrowser/databinding/WallpaperOptionsBinding;->moreButton:Landroid/widget/ImageView;

    iput-object p7, p0, Lcom/sec/android/app/sbrowser/databinding/WallpaperOptionsBinding;->optionCardContainer:Landroid/widget/LinearLayout;

    iput-object p8, p0, Lcom/sec/android/app/sbrowser/databinding/WallpaperOptionsBinding;->permissionTextView:Landroid/widget/TextView;

    iput-object p9, p0, Lcom/sec/android/app/sbrowser/databinding/WallpaperOptionsBinding;->statusLayout:Lcom/sec/android/app/sbrowser/databinding/WallpaperLoadingErrorBinding;

    iput-object p10, p0, Lcom/sec/android/app/sbrowser/databinding/WallpaperOptionsBinding;->title:Landroid/widget/TextView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/sec/android/app/sbrowser/databinding/WallpaperOptionsBinding;
    .locals 11
    .param p0    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    move-object v2, p0

    check-cast v2, Landroidx/cardview/widget/CardView;

    const v0, 0x7f0b040b

    invoke-static {v0, p0}, LG5/p;->b(ILandroid/view/View;)Landroid/view/View;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Landroid/widget/RelativeLayout;

    if-eqz v3, :cond_0

    const v0, 0x7f0b0654

    invoke-static {v0, p0}, LG5/p;->b(ILandroid/view/View;)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v4, :cond_0

    const v0, 0x7f0b0656

    invoke-static {v0, p0}, LG5/p;->b(ILandroid/view/View;)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroid/widget/TextView;

    if-eqz v5, :cond_0

    const v0, 0x7f0b0779

    invoke-static {v0, p0}, LG5/p;->b(ILandroid/view/View;)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Landroid/widget/ImageView;

    if-eqz v6, :cond_0

    const v0, 0x7f0b086a

    invoke-static {v0, p0}, LG5/p;->b(ILandroid/view/View;)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Landroid/widget/LinearLayout;

    if-eqz v7, :cond_0

    const v0, 0x7f0b08ad

    invoke-static {v0, p0}, LG5/p;->b(ILandroid/view/View;)Landroid/view/View;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Landroid/widget/TextView;

    if-eqz v8, :cond_0

    const v0, 0x7f0b0be9

    invoke-static {v0, p0}, LG5/p;->b(ILandroid/view/View;)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/databinding/WallpaperLoadingErrorBinding;->bind(Landroid/view/View;)Lcom/sec/android/app/sbrowser/databinding/WallpaperLoadingErrorBinding;

    move-result-object v9

    const v0, 0x7f0b0d66

    invoke-static {v0, p0}, LG5/p;->b(ILandroid/view/View;)Landroid/view/View;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Landroid/widget/TextView;

    if-eqz v10, :cond_0

    new-instance p0, Lcom/sec/android/app/sbrowser/databinding/WallpaperOptionsBinding;

    move-object v0, p0

    move-object v1, v2

    invoke-direct/range {v0 .. v10}, Lcom/sec/android/app/sbrowser/databinding/WallpaperOptionsBinding;-><init>(Landroidx/cardview/widget/CardView;Landroidx/cardview/widget/CardView;Landroid/widget/RelativeLayout;Landroidx/recyclerview/widget/RecyclerView;Landroid/widget/TextView;Landroid/widget/ImageView;Landroid/widget/LinearLayout;Landroid/widget/TextView;Lcom/sec/android/app/sbrowser/databinding/WallpaperLoadingErrorBinding;Landroid/widget/TextView;)V

    return-object p0

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

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/sec/android/app/sbrowser/databinding/WallpaperOptionsBinding;
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

    const v0, 0x7f0e0910

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_0
    invoke-static {p0}, Lcom/sec/android/app/sbrowser/databinding/WallpaperOptionsBinding;->bind(Landroid/view/View;)Lcom/sec/android/app/sbrowser/databinding/WallpaperOptionsBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getRoot()Landroidx/cardview/widget/CardView;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/databinding/WallpaperOptionsBinding;->rootView:Landroidx/cardview/widget/CardView;

    return-object p0
.end method
