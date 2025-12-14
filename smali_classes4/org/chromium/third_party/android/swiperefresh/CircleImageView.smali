.class public Lorg/chromium/third_party/android/swiperefresh/CircleImageView;
.super Landroid/widget/ImageView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/third_party/android/swiperefresh/CircleImageView$OvalShadow;
    }
.end annotation


# instance fields
.field private mDensity:F

.field private mListener:Landroid/view/animation/Animation$AnimationListener;

.field private mOuterColor:I
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation
.end field

.field private mOuterRadius:I

.field private mShadowRadius:I

.field private mViewDimension:I


# direct methods
.method public constructor <init>(Landroid/content/Context;IF)V
    .locals 6

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v5}, Lorg/chromium/third_party/android/swiperefresh/CircleImageView;-><init>(Landroid/content/Context;IFFI)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IFFI)V
    .locals 2
    .param p2    # I
        .annotation build Landroidx/annotation/ColorRes;
        .end annotation
    .end param
    .param p5    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    const/high16 v0, 0x40600000    # 3.5f

    mul-float/2addr v0, p1

    float-to-int v0, v0

    iput v0, p0, Lorg/chromium/third_party/android/swiperefresh/CircleImageView;->mShadowRadius:I

    const/4 v1, 0x0

    cmpl-float v1, p4, v1

    if-lez v1, :cond_0

    add-float/2addr p4, p3

    mul-float/2addr p4, p1

    goto :goto_0

    :cond_0
    int-to-float p4, v0

    :goto_0
    float-to-int p4, p4

    iput p4, p0, Lorg/chromium/third_party/android/swiperefresh/CircleImageView;->mViewDimension:I

    iput p5, p0, Lorg/chromium/third_party/android/swiperefresh/CircleImageView;->mOuterColor:I

    invoke-direct {p0}, Lorg/chromium/third_party/android/swiperefresh/CircleImageView;->elevationSupported()Z

    move-result p4

    if-eqz p4, :cond_1

    if-nez v1, :cond_1

    invoke-virtual {p0, p1}, Lorg/chromium/third_party/android/swiperefresh/CircleImageView;->initializeElevated(F)Landroid/graphics/drawable/ShapeDrawable;

    move-result-object p3

    goto :goto_1

    :cond_1
    invoke-virtual {p0, p3, p1}, Lorg/chromium/third_party/android/swiperefresh/CircleImageView;->initializeNonElevated(FF)Landroid/graphics/drawable/ShapeDrawable;

    move-result-object p3

    :goto_1
    invoke-virtual {p3}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object p4

    invoke-virtual {p4, p2}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p0, p3}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iput p1, p0, Lorg/chromium/third_party/android/swiperefresh/CircleImageView;->mDensity:F

    return-void
.end method

.method public static bridge synthetic a(Lorg/chromium/third_party/android/swiperefresh/CircleImageView;)I
    .locals 0

    iget p0, p0, Lorg/chromium/third_party/android/swiperefresh/CircleImageView;->mOuterColor:I

    return p0
.end method

.method public static bridge synthetic b(Lorg/chromium/third_party/android/swiperefresh/CircleImageView;)I
    .locals 0

    iget p0, p0, Lorg/chromium/third_party/android/swiperefresh/CircleImageView;->mOuterRadius:I

    return p0
.end method

.method private elevationSupported()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public initializeElevated(F)Landroid/graphics/drawable/ShapeDrawable;
    .locals 2

    new-instance v0, Landroid/graphics/drawable/ShapeDrawable;

    new-instance v1, Landroid/graphics/drawable/shapes/OvalShape;

    invoke-direct {v1}, Landroid/graphics/drawable/shapes/OvalShape;-><init>()V

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    const/high16 v1, 0x40800000    # 4.0f

    mul-float/2addr p1, v1

    invoke-virtual {p0, p1}, Landroid/view/View;->setElevation(F)V

    return-object v0
.end method

.method public initializeNonElevated(FF)Landroid/graphics/drawable/ShapeDrawable;
    .locals 4

    mul-float/2addr p1, p2

    const/high16 v0, 0x40000000    # 2.0f

    mul-float/2addr p1, v0

    float-to-int p1, p1

    const/high16 v0, 0x3fe00000    # 1.75f

    mul-float/2addr v0, p2

    float-to-int v0, v0

    const/4 v1, 0x0

    mul-float/2addr p2, v1

    float-to-int p2, p2

    new-instance v1, Lorg/chromium/third_party/android/swiperefresh/CircleImageView$OvalShadow;

    iget v2, p0, Lorg/chromium/third_party/android/swiperefresh/CircleImageView;->mShadowRadius:I

    invoke-direct {v1, p0, v2, p1}, Lorg/chromium/third_party/android/swiperefresh/CircleImageView$OvalShadow;-><init>(Lorg/chromium/third_party/android/swiperefresh/CircleImageView;II)V

    new-instance p1, Landroid/graphics/drawable/ShapeDrawable;

    invoke-direct {p1, v1}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    const/4 v1, 0x1

    invoke-virtual {p1}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    invoke-virtual {p1}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v1

    iget v2, p0, Lorg/chromium/third_party/android/swiperefresh/CircleImageView;->mShadowRadius:I

    int-to-float v2, v2

    int-to-float p2, p2

    int-to-float v0, v0

    const/high16 v3, 0x1e000000

    invoke-virtual {v1, v2, p2, v0, v3}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    iget p2, p0, Lorg/chromium/third_party/android/swiperefresh/CircleImageView;->mViewDimension:I

    invoke-virtual {p0, p2, p2, p2, p2}, Landroid/view/View;->setPadding(IIII)V

    return-object p1
.end method

.method public onAnimationEnd()V
    .locals 1

    invoke-super {p0}, Landroid/view/View;->onAnimationEnd()V

    iget-object v0, p0, Lorg/chromium/third_party/android/swiperefresh/CircleImageView;->mListener:Landroid/view/animation/Animation$AnimationListener;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object p0

    invoke-interface {v0, p0}, Landroid/view/animation/Animation$AnimationListener;->onAnimationEnd(Landroid/view/animation/Animation;)V

    :cond_0
    return-void
.end method

.method public onAnimationStart()V
    .locals 1

    invoke-super {p0}, Landroid/view/View;->onAnimationStart()V

    iget-object v0, p0, Lorg/chromium/third_party/android/swiperefresh/CircleImageView;->mListener:Landroid/view/animation/Animation$AnimationListener;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object p0

    invoke-interface {v0, p0}, Landroid/view/animation/Animation$AnimationListener;->onAnimationStart(Landroid/view/animation/Animation;)V

    :cond_0
    return-void
.end method

.method public onMeasure(II)V
    .locals 1

    invoke-super {p0, p1, p2}, Landroid/widget/ImageView;->onMeasure(II)V

    invoke-direct {p0}, Lorg/chromium/third_party/android/swiperefresh/CircleImageView;->elevationSupported()Z

    move-result p1

    if-eqz p1, :cond_0

    iget p1, p0, Lorg/chromium/third_party/android/swiperefresh/CircleImageView;->mViewDimension:I

    iget p2, p0, Lorg/chromium/third_party/android/swiperefresh/CircleImageView;->mShadowRadius:I

    if-le p1, p2, :cond_1

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    iget p2, p0, Lorg/chromium/third_party/android/swiperefresh/CircleImageView;->mViewDimension:I

    mul-int/lit8 p2, p2, 0x2

    add-int/2addr p2, p1

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    iget v0, p0, Lorg/chromium/third_party/android/swiperefresh/CircleImageView;->mViewDimension:I

    mul-int/lit8 v0, v0, 0x2

    add-int/2addr v0, p1

    invoke-virtual {p0, p2, v0}, Landroid/view/View;->setMeasuredDimension(II)V

    :cond_1
    return-void
.end method

.method public setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V
    .locals 0

    iput-object p1, p0, Lorg/chromium/third_party/android/swiperefresh/CircleImageView;->mListener:Landroid/view/animation/Animation$AnimationListener;

    return-void
.end method

.method public setBackgroundColor(I)V
    .locals 1

    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    instance-of v0, v0, Landroid/graphics/drawable/ShapeDrawable;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    check-cast p0, Landroid/graphics/drawable/ShapeDrawable;

    invoke-virtual {p0}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setColor(I)V

    :cond_0
    return-void
.end method

.method public setBackgroundColorRes(I)V
    .locals 1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/chromium/third_party/android/swiperefresh/CircleImageView;->setBackgroundColor(I)V

    return-void
.end method

.method public setProgress(F)V
    .locals 1

    iget v0, p0, Lorg/chromium/third_party/android/swiperefresh/CircleImageView;->mViewDimension:I

    int-to-float v0, v0

    mul-float/2addr p1, v0

    float-to-int p1, p1

    iput p1, p0, Lorg/chromium/third_party/android/swiperefresh/CircleImageView;->mOuterRadius:I

    return-void
.end method
