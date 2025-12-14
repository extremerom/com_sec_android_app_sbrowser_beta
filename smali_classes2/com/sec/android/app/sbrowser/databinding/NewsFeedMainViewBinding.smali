.class public final Lcom/sec/android/app/sbrowser/databinding/NewsFeedMainViewBinding;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final newsFeedTabLayoutContainer:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/NewsFeedTabLayoutContainer;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final newsFeedViewPager:Landroidx/viewpager2/widget/ViewPager2;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final rootView:Landroidx/constraintlayout/widget/ConstraintLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroidx/constraintlayout/widget/ConstraintLayout;Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/NewsFeedTabLayoutContainer;Landroidx/viewpager2/widget/ViewPager2;)V
    .locals 0
    .param p1    # Landroidx/constraintlayout/widget/ConstraintLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/NewsFeedTabLayoutContainer;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroidx/viewpager2/widget/ViewPager2;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/databinding/NewsFeedMainViewBinding;->rootView:Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/databinding/NewsFeedMainViewBinding;->newsFeedTabLayoutContainer:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/NewsFeedTabLayoutContainer;

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/databinding/NewsFeedMainViewBinding;->newsFeedViewPager:Landroidx/viewpager2/widget/ViewPager2;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/sec/android/app/sbrowser/databinding/NewsFeedMainViewBinding;
    .locals 3
    .param p0    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const v0, 0x7f0b07d7

    invoke-static {v0, p0}, LG5/p;->b(ILandroid/view/View;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/NewsFeedTabLayoutContainer;

    if-eqz v1, :cond_0

    const v0, 0x7f0b07d9

    invoke-static {v0, p0}, LG5/p;->b(ILandroid/view/View;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroidx/viewpager2/widget/ViewPager2;

    if-eqz v2, :cond_0

    new-instance v0, Lcom/sec/android/app/sbrowser/databinding/NewsFeedMainViewBinding;

    check-cast p0, Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-direct {v0, p0, v1, v2}, Lcom/sec/android/app/sbrowser/databinding/NewsFeedMainViewBinding;-><init>(Landroidx/constraintlayout/widget/ConstraintLayout;Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/NewsFeedTabLayoutContainer;Landroidx/viewpager2/widget/ViewPager2;)V

    return-object v0

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

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/sec/android/app/sbrowser/databinding/NewsFeedMainViewBinding;
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

    const v0, 0x7f0e051a

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_0
    invoke-static {p0}, Lcom/sec/android/app/sbrowser/databinding/NewsFeedMainViewBinding;->bind(Landroid/view/View;)Lcom/sec/android/app/sbrowser/databinding/NewsFeedMainViewBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/databinding/NewsFeedMainViewBinding;->rootView:Landroidx/constraintlayout/widget/ConstraintLayout;

    return-object p0
.end method
