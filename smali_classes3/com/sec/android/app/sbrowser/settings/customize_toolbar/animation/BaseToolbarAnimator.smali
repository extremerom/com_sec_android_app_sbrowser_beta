.class public abstract Lcom/sec/android/app/sbrowser/settings/customize_toolbar/animation/BaseToolbarAnimator;
.super Lcom/sec/android/app/sbrowser/settings/customize_toolbar/animation/CustomizeMenuAnimator;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/settings/customize_toolbar/animation/BaseToolbarAnimator$Delegate;
    }
.end annotation


# instance fields
.field private mAnimationLayout:Landroid/widget/RelativeLayout;

.field private mContext:Landroid/content/Context;

.field private mDelegate:Lcom/sec/android/app/sbrowser/settings/customize_toolbar/animation/BaseToolbarAnimator$Delegate;

.field private mInitialPositions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mToolbarLayout:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/sec/android/app/sbrowser/settings/customize_toolbar/animation/BaseToolbarAnimator$Delegate;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/sec/android/app/sbrowser/settings/customize_toolbar/animation/BaseToolbarAnimator$Delegate;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-interface {p2}, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/animation/BaseToolbarAnimator$Delegate;->getLayout()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/animation/CustomizeMenuAnimator;-><init>(Landroid/view/ViewGroup;)V

    invoke-interface {p2}, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/animation/BaseToolbarAnimator$Delegate;->getLayout()Landroid/view/ViewGroup;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/animation/BaseToolbarAnimator;->mToolbarLayout:Landroid/view/ViewGroup;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/animation/BaseToolbarAnimator;->mDelegate:Lcom/sec/android/app/sbrowser/settings/customize_toolbar/animation/BaseToolbarAnimator$Delegate;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/animation/BaseToolbarAnimator;->mContext:Landroid/content/Context;

    return-void
.end method

.method public static bridge synthetic c(Lcom/sec/android/app/sbrowser/settings/customize_toolbar/animation/BaseToolbarAnimator;)Landroid/widget/RelativeLayout;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/animation/BaseToolbarAnimator;->mAnimationLayout:Landroid/widget/RelativeLayout;

    return-object p0
.end method

.method public static bridge synthetic d(Lcom/sec/android/app/sbrowser/settings/customize_toolbar/animation/BaseToolbarAnimator;)Lcom/sec/android/app/sbrowser/settings/customize_toolbar/animation/BaseToolbarAnimator$Delegate;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/animation/BaseToolbarAnimator;->mDelegate:Lcom/sec/android/app/sbrowser/settings/customize_toolbar/animation/BaseToolbarAnimator$Delegate;

    return-object p0
.end method

.method public static bridge synthetic e(Lcom/sec/android/app/sbrowser/settings/customize_toolbar/animation/BaseToolbarAnimator;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/animation/BaseToolbarAnimator;->removeAnimationLayout()V

    return-void
.end method

.method private getChildX(Landroid/view/View;)I
    .locals 1

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/animation/BaseToolbarAnimator;->mToolbarLayout:Landroid/view/ViewGroup;

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    check-cast p0, Landroid/view/ViewGroup;

    invoke-virtual {p0, v0}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    iget p0, v0, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1, v0}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    iget p1, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr p1, p0

    return p1
.end method

.method private getTranslationAnimator(Landroid/view/View;I)Landroid/animation/ObjectAnimator;
    .locals 1

    if-nez p2, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    int-to-float p0, p2

    const/4 p2, 0x2

    new-array p2, p2, [F

    const/4 v0, 0x0

    aput p0, p2, v0

    const/4 p0, 0x0

    const/4 v0, 0x1

    aput p0, p2, v0

    const-string p0, "translationX"

    invoke-static {p0, p2}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object p0

    filled-new-array {p0}, [Landroid/animation/PropertyValuesHolder;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object p0

    return-object p0
.end method

.method private inflateAnimationLayout(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/animation/BaseToolbarAnimator;->mContext:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/animation/BaseToolbarAnimator;->mAnimationLayout:Landroid/widget/RelativeLayout;

    if-nez v1, :cond_2

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/animation/BaseToolbarAnimator;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->isCompactLayoutType(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    const v1, 0x7f0e01ca

    goto :goto_0

    :cond_1
    const v1, 0x7f0e01c9

    :goto_0
    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/animation/BaseToolbarAnimator;->mAnimationLayout:Landroid/widget/RelativeLayout;

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/animation/BaseToolbarAnimator;->mToolbarLayout:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/animation/BaseToolbarAnimator;->mAnimationLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeViewInLayout(Landroid/view/View;)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/animation/BaseToolbarAnimator;->mAnimationLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/animation/BaseToolbarAnimator;->mAnimationLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/animation/BaseToolbarAnimator;->mAnimationLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/animation/BaseToolbarAnimator;->mAnimationLayout:Landroid/widget/RelativeLayout;

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/animation/BaseToolbarAnimator;->getChildX(Landroid/view/View;)I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {v0, p1}, Landroid/view/View;->setX(F)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/animation/BaseToolbarAnimator;->mAnimationLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Landroid/view/View;->bringToFront()V

    return-void
.end method

.method private removeAnimationLayout()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/animation/BaseToolbarAnimator;->mToolbarLayout:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/animation/BaseToolbarAnimator;->mAnimationLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeViewInLayout(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic isAnimating()Z
    .locals 0

    invoke-super {p0}, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/animation/CustomizeMenuAnimator;->isAnimating()Z

    move-result p0

    return p0
.end method

.method public onPreAnimation()V
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/animation/BaseToolbarAnimator;->preparePrevPositions()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/animation/BaseToolbarAnimator;->mInitialPositions:Ljava/util/List;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/animation/BaseToolbarAnimator;->mDelegate:Lcom/sec/android/app/sbrowser/settings/customize_toolbar/animation/BaseToolbarAnimator$Delegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/animation/BaseToolbarAnimator$Delegate;->getUrlbarView()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/animation/BaseToolbarAnimator;->inflateAnimationLayout(Landroid/view/View;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/animation/BaseToolbarAnimator;->mDelegate:Lcom/sec/android/app/sbrowser/settings/customize_toolbar/animation/BaseToolbarAnimator$Delegate;

    const/4 v0, 0x4

    invoke-interface {p0, v0}, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/animation/BaseToolbarAnimator$Delegate;->setUrlbarVisibility(I)V

    return-void
.end method

.method public prepareAnimation(Landroid/animation/Animator$AnimatorListener;)V
    .locals 1
    .param p1    # Landroid/animation/Animator$AnimatorListener;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    new-instance v0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/animation/BaseToolbarAnimator$3;

    invoke-direct {v0, p0, p1}, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/animation/BaseToolbarAnimator$3;-><init>(Lcom/sec/android/app/sbrowser/settings/customize_toolbar/animation/BaseToolbarAnimator;Landroid/animation/Animator$AnimatorListener;)V

    invoke-super {p0, v0}, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/animation/CustomizeMenuAnimator;->prepareAnimation(Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method

.method public prepareAnimators()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/animation/Animator;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/animation/BaseToolbarAnimator;->mToolbarLayout:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_5

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/animation/BaseToolbarAnimator;->mToolbarLayout:Landroid/view/ViewGroup;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-nez v2, :cond_0

    const-string p0, "BaseToolbarAnimator"

    const-string v1, "child is null"

    invoke-static {p0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_0
    iget-object v3, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/animation/BaseToolbarAnimator;->mDelegate:Lcom/sec/android/app/sbrowser/settings/customize_toolbar/animation/BaseToolbarAnimator$Delegate;

    invoke-interface {v3}, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/animation/BaseToolbarAnimator$Delegate;->getUrlbarPosition()I

    move-result v3

    if-ne v1, v3, :cond_2

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/animation/BaseToolbarAnimator;->mAnimationLayout:Landroid/widget/RelativeLayout;

    if-nez v3, :cond_1

    goto :goto_2

    :cond_1
    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v4

    filled-new-array {v3, v4}, [I

    move-result-object v3

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v3

    new-instance v4, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/animation/BaseToolbarAnimator$1;

    invoke-direct {v4, p0}, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/animation/BaseToolbarAnimator$1;-><init>(Lcom/sec/android/app/sbrowser/settings/customize_toolbar/animation/BaseToolbarAnimator;)V

    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/animation/BaseToolbarAnimator;->mAnimationLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v4}, Landroid/view/View;->getX()F

    move-result v4

    float-to-int v4, v4

    invoke-direct {p0, v2}, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/animation/BaseToolbarAnimator;->getChildX(Landroid/view/View;)I

    move-result v2

    filled-new-array {v4, v2}, [I

    move-result-object v2

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v2

    new-instance v4, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/animation/BaseToolbarAnimator$2;

    invoke-direct {v4, p0}, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/animation/BaseToolbarAnimator$2;-><init>(Lcom/sec/android/app/sbrowser/settings/customize_toolbar/animation/BaseToolbarAnimator;)V

    invoke-virtual {v2, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x0

    goto :goto_1

    :cond_2
    iget-object v3, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/animation/BaseToolbarAnimator;->mInitialPositions:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_3

    goto :goto_2

    :cond_3
    int-to-float v3, v3

    invoke-virtual {v2}, Landroid/view/View;->getX()F

    move-result v4

    sub-float/2addr v3, v4

    float-to-int v3, v3

    invoke-direct {p0, v2, v3}, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/animation/BaseToolbarAnimator;->getTranslationAnimator(Landroid/view/View;I)Landroid/animation/ObjectAnimator;

    move-result-object v2

    :goto_1
    if-eqz v2, :cond_4

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_5
    :goto_3
    return-object v0
.end method

.method public abstract preparePrevPositions()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end method
