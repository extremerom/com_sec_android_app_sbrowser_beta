.class public Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/ScaleAnimator;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final mListView:Landroidx/recyclerview/widget/RecyclerView;

.field private final mSpringAnimation:Lr1/f;


# direct methods
.method public constructor <init>(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 3
    .param p1    # Landroidx/recyclerview/widget/RecyclerView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/ScaleAnimator;->mListView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance p1, Lr1/f;

    new-instance v0, LU/b;

    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, LU/b;-><init>(IB)V

    invoke-direct {p1, v0}, Lr1/f;-><init>(LU/b;)V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/ScaleAnimator;->mSpringAnimation:Lr1/f;

    new-instance v0, Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/a;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/a;-><init>(Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/ScaleAnimator;)V

    invoke-virtual {p1, v0}, Lr1/e;->b(Lr1/d;)V

    new-instance v0, Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/b;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/b;-><init>(Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/ScaleAnimator;)V

    invoke-virtual {p1, v0}, Lr1/e;->a(Lr1/c;)V

    new-instance p0, Lr1/g;

    invoke-direct {p0}, Lr1/g;-><init>()V

    const/high16 v0, 0x44480000    # 800.0f

    invoke-virtual {p0, v0}, Lr1/g;->b(F)V

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0}, Lr1/g;->a(F)V

    iput-object p0, p1, Lr1/f;->u:Lr1/g;

    return-void
.end method

.method public static synthetic a(Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/ScaleAnimator;Lr1/e;ZFF)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/ScaleAnimator;->lambda$new$1(Lr1/e;ZFF)V

    return-void
.end method

.method public static synthetic b(Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/ScaleAnimator;Lr1/e;FF)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/ScaleAnimator;->lambda$new$0(Lr1/e;FF)V

    return-void
.end method

.method private synthetic lambda$new$0(Lr1/e;FF)V
    .locals 0

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/ScaleAnimator;->mListView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    float-to-int p2, p2

    iput p2, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/ScaleAnimator;->mListView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private synthetic lambda$new$1(Lr1/e;ZFF)V
    .locals 0

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/ScaleAnimator;->mListView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    const/4 p2, -0x2

    iput p2, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/ScaleAnimator;->mListView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method


# virtual methods
.method public start()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/ScaleAnimator;->mListView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/ScaleAnimator;->mListView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    const/high16 v1, -0x80000000

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/ScaleAnimator;->mListView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2, v0, v1}, Landroid/view/View;->measure(II)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/ScaleAnimator;->mSpringAnimation:Lr1/f;

    iget-boolean v1, v0, Lr1/e;->f:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/ScaleAnimator;->mListView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lr1/e;->e(F)V

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/ScaleAnimator;->mSpringAnimation:Lr1/f;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/ScaleAnimator;->mListView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result p0

    int-to-float p0, p0

    invoke-virtual {v0, p0}, Lr1/f;->f(F)V

    return-void
.end method
