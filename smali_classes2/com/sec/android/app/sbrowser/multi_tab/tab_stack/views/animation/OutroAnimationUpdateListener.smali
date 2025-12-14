.class public Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/animation/OutroAnimationUpdateListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/animation/OutroAnimationUpdateListener$Delegate;
    }
.end annotation


# instance fields
.field private final mActivity:Landroid/app/Activity;

.field private final mDelegate:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/animation/OutroAnimationUpdateListener$Delegate;

.field private final mDisplaySize:Landroid/graphics/Point;

.field private final mInitBottomMargin:F

.field private final mInitLeftMargin:F

.field private final mInitRightMargin:F

.field private final mInitToolbarHeight:F

.field private final mInitTopMargin:F

.field private final mIsIntro:Z

.field private final mLayoutParams:Landroid/widget/FrameLayout$LayoutParams;

.field private final mOutroThumbnailLayoutParams:Landroid/widget/FrameLayout$LayoutParams;

.field private final mOutroViewThumbnail:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/widget/OutroThumbnailView;

.field private final mOutroViewToolbar:Landroid/widget/ImageView;

.field private final mOutroViewToolbarLayoutParams:Landroid/view/ViewGroup$LayoutParams;

.field private final mToolbarHeight:F

.field private final mView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/view/View;Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/animation/OutroAnimationUpdateListener$Delegate;FFZLandroid/graphics/Point;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/animation/OutroAnimationUpdateListener;->mActivity:Landroid/app/Activity;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/animation/OutroAnimationUpdateListener;->mView:Landroid/view/View;

    const p1, 0x7f0b0877

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/widget/OutroThumbnailView;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/animation/OutroAnimationUpdateListener;->mOutroViewThumbnail:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/widget/OutroThumbnailView;

    const v0, 0x7f0b0878

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/animation/OutroAnimationUpdateListener;->mOutroViewToolbar:Landroid/widget/ImageView;

    if-eqz p6, :cond_0

    move v1, p5

    goto :goto_0

    :cond_0
    move v1, p4

    :goto_0
    iput v1, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/animation/OutroAnimationUpdateListener;->mInitToolbarHeight:F

    if-eqz p6, :cond_1

    goto :goto_1

    :cond_1
    move p4, p5

    :goto_1
    iput p4, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/animation/OutroAnimationUpdateListener;->mToolbarHeight:F

    iput-boolean p6, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/animation/OutroAnimationUpdateListener;->mIsIntro:Z

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    check-cast p2, Landroid/widget/FrameLayout$LayoutParams;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/animation/OutroAnimationUpdateListener;->mLayoutParams:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p4

    iput-object p4, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/animation/OutroAnimationUpdateListener;->mOutroViewToolbarLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/animation/OutroAnimationUpdateListener;->mOutroThumbnailLayoutParams:Landroid/widget/FrameLayout$LayoutParams;

    iget p1, p2, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    int-to-float p1, p1

    iput p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/animation/OutroAnimationUpdateListener;->mInitLeftMargin:F

    iget p1, p2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    int-to-float p1, p1

    iput p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/animation/OutroAnimationUpdateListener;->mInitTopMargin:F

    iget p1, p2, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    int-to-float p1, p1

    iput p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/animation/OutroAnimationUpdateListener;->mInitRightMargin:F

    iget p1, p2, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    int-to-float p1, p1

    iput p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/animation/OutroAnimationUpdateListener;->mInitBottomMargin:F

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/animation/OutroAnimationUpdateListener;->mDelegate:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/animation/OutroAnimationUpdateListener$Delegate;

    iput-object p7, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/animation/OutroAnimationUpdateListener;->mDisplaySize:Landroid/graphics/Point;

    return-void
.end method

.method private transform(FFF)F
    .locals 0

    invoke-static {p2, p1, p3, p1}, LB/e;->a(FFFF)F

    move-result p0

    return p0
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 7

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/animation/OutroAnimationUpdateListener;->mOutroViewThumbnail:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/widget/OutroThumbnailView;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/widget/OutroThumbnailView;->setAnimationProgress(F)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabSettings;->isCardViewType()Z

    move-result v0

    iget-boolean v1, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/animation/OutroAnimationUpdateListener;->mIsIntro:Z

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/animation/OutroAnimationUpdateListener;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070afd

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/animation/OutroAnimationUpdateListener;->mDelegate:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/animation/OutroAnimationUpdateListener$Delegate;

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/animation/OutroAnimationUpdateListener$Delegate;->getDstPos()Landroid/graphics/Rect;

    move-result-object v1

    iget v2, v1, Landroid/graphics/Rect;->left:I

    add-int/2addr v2, v0

    iget v3, v1, Landroid/graphics/Rect;->top:I

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/animation/OutroAnimationUpdateListener;->mDisplaySize:Landroid/graphics/Point;

    iget v5, v4, Landroid/graphics/Point;->x:I

    iget v6, v1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v5, v6

    add-int/2addr v5, v0

    iget v4, v4, Landroid/graphics/Point;->y:I

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v4, v1

    add-int/2addr v4, v0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/animation/OutroAnimationUpdateListener;->mLayoutParams:Landroid/widget/FrameLayout$LayoutParams;

    iget v1, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/animation/OutroAnimationUpdateListener;->mInitLeftMargin:F

    int-to-float v2, v2

    invoke-direct {p0, v1, v2, p1}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/animation/OutroAnimationUpdateListener;->transform(FFF)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/animation/OutroAnimationUpdateListener;->mLayoutParams:Landroid/widget/FrameLayout$LayoutParams;

    iget v1, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/animation/OutroAnimationUpdateListener;->mInitTopMargin:F

    int-to-float v2, v3

    invoke-direct {p0, v1, v2, p1}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/animation/OutroAnimationUpdateListener;->transform(FFF)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/animation/OutroAnimationUpdateListener;->mLayoutParams:Landroid/widget/FrameLayout$LayoutParams;

    iget v1, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/animation/OutroAnimationUpdateListener;->mInitRightMargin:F

    int-to-float v2, v5

    invoke-direct {p0, v1, v2, p1}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/animation/OutroAnimationUpdateListener;->transform(FFF)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/animation/OutroAnimationUpdateListener;->mLayoutParams:Landroid/widget/FrameLayout$LayoutParams;

    iget v1, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/animation/OutroAnimationUpdateListener;->mInitBottomMargin:F

    int-to-float v2, v4

    invoke-direct {p0, v1, v2, p1}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/animation/OutroAnimationUpdateListener;->transform(FFF)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    iget v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/animation/OutroAnimationUpdateListener;->mInitToolbarHeight:F

    iget v1, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/animation/OutroAnimationUpdateListener;->mToolbarHeight:F

    invoke-direct {p0, v0, v1, p1}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/animation/OutroAnimationUpdateListener;->transform(FFF)F

    move-result p1

    iget v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/animation/OutroAnimationUpdateListener;->mToolbarHeight:F

    sub-float/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_1

    iget p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/animation/OutroAnimationUpdateListener;->mToolbarHeight:F

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/animation/OutroAnimationUpdateListener;->mOutroViewToolbarLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    float-to-int p1, p1

    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/animation/OutroAnimationUpdateListener;->mOutroThumbnailLayoutParams:Landroid/widget/FrameLayout$LayoutParams;

    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/animation/OutroAnimationUpdateListener;->mOutroViewThumbnail:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/widget/OutroThumbnailView;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/animation/OutroAnimationUpdateListener;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/animation/OutroAnimationUpdateListener;->mOutroViewThumbnail:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/widget/OutroThumbnailView;

    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/animation/OutroAnimationUpdateListener;->mOutroViewToolbar:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/animation/OutroAnimationUpdateListener;->mView:Landroid/view/View;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/animation/OutroAnimationUpdateListener;->mLayoutParams:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {p1, p0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
