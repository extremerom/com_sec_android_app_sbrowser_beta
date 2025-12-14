.class public Lcom/sec/android/app/sbrowser/bookmark_bar/utils/BookmarkBarAnimationHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mAnimatedList:[Z

.field mAnimatingPosition:[I

.field mBookmarkBarListView:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>(Landroid/widget/LinearLayout;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/utils/BookmarkBarAnimationHelper;->mBookmarkBarListView:Landroid/widget/LinearLayout;

    const/4 p1, 0x2

    new-array p1, p1, [I

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/utils/BookmarkBarAnimationHelper;->mAnimatingPosition:[I

    return-void
.end method

.method public static synthetic a(Lcom/sec/android/app/sbrowser/bookmark_bar/model/BookmarkBarAnimationDelegate;)V
    .locals 0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/bookmark_bar/utils/BookmarkBarAnimationHelper;->lambda$showAddedAnimation$1(Lcom/sec/android/app/sbrowser/bookmark_bar/model/BookmarkBarAnimationDelegate;)V

    return-void
.end method

.method public static synthetic b(Lcom/sec/android/app/sbrowser/bookmark_bar/model/BookmarkBarAnimationDelegate;)V
    .locals 0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/bookmark_bar/utils/BookmarkBarAnimationHelper;->lambda$undoAnimation$0(Lcom/sec/android/app/sbrowser/bookmark_bar/model/BookmarkBarAnimationDelegate;)V

    return-void
.end method

.method private static synthetic lambda$showAddedAnimation$1(Lcom/sec/android/app/sbrowser/bookmark_bar/model/BookmarkBarAnimationDelegate;)V
    .locals 0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/bookmark_bar/model/BookmarkBarAnimationDelegate;->onPost()V

    return-void
.end method

.method private static synthetic lambda$undoAnimation$0(Lcom/sec/android/app/sbrowser/bookmark_bar/model/BookmarkBarAnimationDelegate;)V
    .locals 0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/bookmark_bar/model/BookmarkBarAnimationDelegate;->onPost()V

    return-void
.end method

.method private showMovingAnimation([ZF)V
    .locals 9

    const/4 v0, 0x1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/utils/LocalizationUtils;->isLayoutRtl()Z

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    iget-object v4, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/utils/BookmarkBarAnimationHelper;->mBookmarkBarListView:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    if-ge v3, v4, :cond_6

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/utils/BookmarkBarAnimationHelper;->mBookmarkBarListView:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    aget-boolean v5, p1, v3

    const/4 v6, 0x0

    const-string v7, "translationX"

    if-nez v5, :cond_0

    iget-object v8, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/utils/BookmarkBarAnimationHelper;->mAnimatedList:[Z

    aget-boolean v8, v8, v3

    if-eqz v8, :cond_0

    new-array v5, v0, [F

    aput v6, v5, v2

    invoke-static {v4, v7, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    goto :goto_4

    :cond_0
    if-eqz v5, :cond_5

    if-eqz v1, :cond_2

    invoke-virtual {v4}, Landroid/view/View;->getX()F

    move-result v5

    sub-float/2addr v5, p2

    cmpg-float v5, v5, v6

    if-gez v5, :cond_1

    move v5, v0

    goto :goto_1

    :cond_1
    move v5, v2

    :goto_1
    const/high16 v6, -0x40800000    # -1.0f

    mul-float/2addr v6, p2

    goto :goto_3

    :cond_2
    invoke-virtual {v4}, Landroid/view/View;->getX()F

    move-result v5

    add-float/2addr v5, p2

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v6

    int-to-float v6, v6

    add-float/2addr v5, v6

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/utils/BookmarkBarAnimationHelper;->mBookmarkBarListView:Landroid/widget/LinearLayout;

    invoke-virtual {v6}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/sec/android/app/sbrowser/common/sites/BookmarkBarUtil;->getBookmarkBarWidth(Landroid/content/Context;)I

    move-result v6

    int-to-float v6, v6

    cmpl-float v5, v5, v6

    if-lez v5, :cond_3

    move v5, v0

    goto :goto_2

    :cond_3
    move v5, v2

    :goto_2
    move v6, p2

    :goto_3
    new-array v8, v0, [F

    aput v6, v8, v2

    invoke-static {v4, v7, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    if-eqz v5, :cond_4

    new-instance v5, Lcom/sec/android/app/sbrowser/bookmark_bar/utils/BookmarkBarAnimationHelper$1;

    invoke-direct {v5, p0, v4}, Lcom/sec/android/app/sbrowser/bookmark_bar/utils/BookmarkBarAnimationHelper$1;-><init>(Lcom/sec/android/app/sbrowser/bookmark_bar/utils/BookmarkBarAnimationHelper;Landroid/view/View;)V

    invoke-virtual {v6, v5}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    :cond_4
    iget-object v4, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/utils/BookmarkBarAnimationHelper;->mAnimatedList:[Z

    aput-boolean v0, v4, v3

    move-object v4, v6

    :goto_4
    const-wide/16 v5, 0x12c

    invoke-virtual {v4, v5, v6}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    invoke-virtual {v4}, Landroid/animation/ObjectAnimator;->start()V

    :cond_5
    add-int/2addr v3, v0

    goto :goto_0

    :cond_6
    return-void
.end method


# virtual methods
.method public initAnimationMovedList()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/utils/BookmarkBarAnimationHelper;->mBookmarkBarListView:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/utils/BookmarkBarAnimationHelper;->mAnimatedList:[Z

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/utils/BookmarkBarAnimationHelper;->mAnimatingPosition:[I

    const/4 v0, 0x0

    const/4 v1, -0x2

    aput v1, p0, v0

    const/4 v0, 0x1

    aput v1, p0, v0

    return-void
.end method

.method public showAddedAnimation(IILcom/sec/android/app/sbrowser/bookmark_bar/model/BookmarkBarAnimationDelegate;)V
    .locals 3

    if-gez p2, :cond_0

    invoke-interface {p3}, Lcom/sec/android/app/sbrowser/bookmark_bar/model/BookmarkBarAnimationDelegate;->onPost()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/utils/BookmarkBarAnimationHelper;->mBookmarkBarListView:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    new-array v1, v0, [Z

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/utils/BookmarkBarAnimationHelper;->mAnimatedList:[Z

    new-array v1, v0, [Z

    :goto_0
    if-ge p2, v0, :cond_1

    const/4 v2, 0x1

    aput-boolean v2, v1, p2

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_1
    int-to-float p1, p1

    invoke-direct {p0, v1, p1}, Lcom/sec/android/app/sbrowser/bookmark_bar/utils/BookmarkBarAnimationHelper;->showMovingAnimation([ZF)V

    new-instance p0, Landroid/os/Handler;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    new-instance p1, Lcom/sec/android/app/sbrowser/bookmark_bar/utils/a;

    const/4 p2, 0x1

    invoke-direct {p1, p3, p2}, Lcom/sec/android/app/sbrowser/bookmark_bar/utils/a;-><init>(Lcom/sec/android/app/sbrowser/bookmark_bar/model/BookmarkBarAnimationDelegate;I)V

    const-wide/16 p2, 0x12c

    invoke-virtual {p0, p1, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public showAnimation(II)Z
    .locals 7

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/utils/BookmarkBarAnimationHelper;->mAnimatingPosition:[I

    const/4 v1, 0x0

    aget v2, v0, v1

    const/4 v3, 0x1

    if-ne v2, p1, :cond_0

    aget v0, v0, v3

    if-ne v0, p2, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/bookmark_bar/utils/BookmarkBarAnimationHelper;->undoAnimation()V

    if-ne p1, p2, :cond_1

    return v1

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/utils/BookmarkBarAnimationHelper;->mBookmarkBarListView:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/utils/BookmarkBarAnimationHelper;->mAnimatedList:[Z

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/utils/BookmarkBarAnimationHelper;->mAnimatingPosition:[I

    aput p1, v0, v1

    aput p2, v0, v3

    const/4 v0, -0x1

    if-eq p1, v0, :cond_2

    if-le p2, p1, :cond_2

    move v2, v3

    goto :goto_0

    :cond_2
    move v2, v1

    :goto_0
    iget-object v4, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/utils/BookmarkBarAnimationHelper;->mBookmarkBarListView:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    new-array v5, v4, [Z

    if-eq p1, v0, :cond_4

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/utils/BookmarkBarAnimationHelper;->mBookmarkBarListView:Landroid/widget/LinearLayout;

    invoke-virtual {v6, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    if-nez v6, :cond_3

    return v1

    :cond_3
    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    goto :goto_1

    :cond_4
    const/high16 v1, 0x42c80000    # 100.0f

    :goto_1
    if-eqz v2, :cond_6

    add-int/2addr p1, v3

    :goto_2
    if-gt p1, p2, :cond_5

    aput-boolean v3, v5, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_2

    :cond_5
    const/high16 p1, -0x40800000    # -1.0f

    mul-float/2addr v1, p1

    goto :goto_4

    :cond_6
    if-ne p1, v0, :cond_7

    sub-int/2addr v4, v3

    goto :goto_3

    :cond_7
    add-int/lit8 v4, p1, -0x1

    :goto_3
    if-lt v4, p2, :cond_8

    aput-boolean v3, v5, v4

    add-int/lit8 v4, v4, -0x1

    goto :goto_3

    :cond_8
    :goto_4
    invoke-direct {p0, v5, v1}, Lcom/sec/android/app/sbrowser/bookmark_bar/utils/BookmarkBarAnimationHelper;->showMovingAnimation([ZF)V

    return v3
.end method

.method public undoAnimation()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/bookmark_bar/utils/BookmarkBarAnimationHelper;->undoAnimation(Lcom/sec/android/app/sbrowser/bookmark_bar/model/BookmarkBarAnimationDelegate;)V

    return-void
.end method

.method public undoAnimation(Lcom/sec/android/app/sbrowser/bookmark_bar/model/BookmarkBarAnimationDelegate;)V
    .locals 8

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/utils/BookmarkBarAnimationHelper;->mAnimatedList:[Z

    if-nez v2, :cond_0

    return-void

    :cond_0
    move v2, v1

    :goto_0
    iget-object v3, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/utils/BookmarkBarAnimationHelper;->mBookmarkBarListView:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    const-wide/16 v4, 0x12c

    if-ge v2, v3, :cond_3

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/utils/BookmarkBarAnimationHelper;->mBookmarkBarListView:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/utils/BookmarkBarAnimationHelper;->mAnimatedList:[Z

    array-length v7, v6

    if-lt v2, v7, :cond_1

    goto :goto_2

    :cond_1
    aget-boolean v6, v6, v2

    if-nez v6, :cond_2

    goto :goto_1

    :cond_2
    new-array v6, v0, [F

    const/4 v7, 0x0

    aput v7, v6, v1

    const-string v7, "translationX"

    invoke-static {v3, v7, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    invoke-virtual {v3, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v6, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    invoke-virtual {v6}, Landroid/animation/ObjectAnimator;->start()V

    :goto_1
    add-int/2addr v2, v0

    goto :goto_0

    :cond_3
    :goto_2
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/bookmark_bar/utils/BookmarkBarAnimationHelper;->initAnimationMovedList()V

    if-eqz p1, :cond_4

    new-instance p0, Landroid/os/Handler;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    new-instance v0, Lcom/sec/android/app/sbrowser/bookmark_bar/utils/a;

    invoke-direct {v0, p1, v1}, Lcom/sec/android/app/sbrowser/bookmark_bar/utils/a;-><init>(Lcom/sec/android/app/sbrowser/bookmark_bar/model/BookmarkBarAnimationDelegate;I)V

    invoke-virtual {p0, v0, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_4
    return-void
.end method
