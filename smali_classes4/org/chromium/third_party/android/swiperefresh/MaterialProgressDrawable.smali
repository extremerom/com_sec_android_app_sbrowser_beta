.class public Lorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "SourceFile"

# interfaces
.implements Landroid/graphics/drawable/Animatable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable$Ring;,
        Lorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable$ProgressDrawableSize;
    }
.end annotation


# static fields
.field public static final DEFAULT:I = 0x1

.field public static final LARGE:I

.field private static final LINEAR_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field private static final MATERIAL_INTERPOLATOR:Landroid/view/animation/Interpolator;


# instance fields
.field private mAnimation:Landroid/view/animation/Animation;

.field private final mAnimators:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/animation/Animation;",
            ">;"
        }
    .end annotation
.end field

.field private mFinishing:Z

.field private mHeight:D

.field private mParent:Landroid/view/View;

.field private mResources:Landroid/content/res/Resources;

.field private final mRing:Lorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable$Ring;

.field private mRotation:F

.field private mRotationCount:F

.field private mWidth:D


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    sput-object v0, Lorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable;->LINEAR_INTERPOLATOR:Landroid/view/animation/Interpolator;

    new-instance v0, Lh2/b;

    invoke-direct {v0}, Lh2/b;-><init>()V

    sput-object v0, Lorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable;->MATERIAL_INTERPOLATOR:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public static bridge synthetic a(Lorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable;->mFinishing:Z

    return p0
.end method

.method private applyFinishTranslation(FLorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable$Ring;)V
    .locals 4

    invoke-direct {p0, p1, p2}, Lorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable;->updateRingColor(FLorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable$Ring;)V

    invoke-virtual {p2}, Lorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable$Ring;->getStartingRotation()F

    move-result v0

    const v1, 0x3f4ccccd    # 0.8f

    div-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    add-double/2addr v0, v2

    double-to-float v0, v0

    invoke-direct {p0, p2}, Lorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable;->getMinProgressArc(Lorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable$Ring;)F

    move-result p0

    invoke-virtual {p2}, Lorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable$Ring;->getStartingStartTrim()F

    move-result v1

    invoke-virtual {p2}, Lorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable$Ring;->getStartingEndTrim()F

    move-result v2

    sub-float/2addr v2, p0

    invoke-virtual {p2}, Lorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable$Ring;->getStartingStartTrim()F

    move-result p0

    invoke-static {v2, p0, p1, v1}, LB/e;->a(FFFF)F

    move-result p0

    invoke-virtual {p2, p0}, Lorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable$Ring;->setStartTrim(F)V

    invoke-virtual {p2}, Lorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable$Ring;->getStartingEndTrim()F

    move-result p0

    invoke-virtual {p2, p0}, Lorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable$Ring;->setEndTrim(F)V

    invoke-virtual {p2}, Lorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable$Ring;->getStartingRotation()F

    move-result p0

    invoke-virtual {p2}, Lorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable$Ring;->getStartingRotation()F

    move-result v1

    invoke-static {v0, v1, p1, p0}, LB/e;->a(FFFF)F

    move-result p0

    invoke-virtual {p2, p0}, Lorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable$Ring;->setRotation(F)V

    return-void
.end method

.method public static bridge synthetic b(Lorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable;)F
    .locals 0

    iget p0, p0, Lorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable;->mRotationCount:F

    return p0
.end method

.method public static bridge synthetic c(Lorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable;)V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable;->mFinishing:Z

    return-void
.end method

.method public static bridge synthetic d(Lorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable;F)V
    .locals 0

    iput p1, p0, Lorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable;->mRotationCount:F

    return-void
.end method

.method public static bridge synthetic e(Lorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable;FLorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable$Ring;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable;->applyFinishTranslation(FLorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable$Ring;)V

    return-void
.end method

.method private evaluateColorChange(FII)I
    .locals 5

    shr-int/lit8 p0, p2, 0x18

    and-int/lit16 p0, p0, 0xff

    shr-int/lit8 v0, p2, 0x10

    and-int/lit16 v0, v0, 0xff

    shr-int/lit8 v1, p2, 0x8

    and-int/lit16 v1, v1, 0xff

    and-int/lit16 p2, p2, 0xff

    shr-int/lit8 v2, p3, 0x18

    and-int/lit16 v2, v2, 0xff

    shr-int/lit8 v3, p3, 0x10

    and-int/lit16 v3, v3, 0xff

    shr-int/lit8 v4, p3, 0x8

    and-int/lit16 v4, v4, 0xff

    and-int/lit16 p3, p3, 0xff

    sub-int/2addr v2, p0

    int-to-float v2, v2

    mul-float/2addr v2, p1

    float-to-int v2, v2

    add-int/2addr p0, v2

    shl-int/lit8 p0, p0, 0x18

    sub-int/2addr v3, v0

    int-to-float v2, v3

    mul-float/2addr v2, p1

    float-to-int v2, v2

    add-int/2addr v0, v2

    shl-int/lit8 v0, v0, 0x10

    or-int/2addr p0, v0

    sub-int/2addr v4, v1

    int-to-float v0, v4

    mul-float/2addr v0, p1

    float-to-int v0, v0

    add-int/2addr v1, v0

    shl-int/lit8 v0, v1, 0x8

    or-int/2addr p0, v0

    sub-int/2addr p3, p2

    int-to-float p3, p3

    mul-float/2addr p1, p3

    float-to-int p1, p1

    add-int/2addr p2, p1

    or-int/2addr p0, p2

    return p0
.end method

.method public static bridge synthetic f(Lorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable;Lorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable$Ring;)F
    .locals 0

    invoke-direct {p0, p1}, Lorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable;->getMinProgressArc(Lorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable$Ring;)F

    move-result p0

    return p0
.end method

.method public static bridge synthetic g(Lorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable;FLorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable$Ring;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable;->updateRingColor(FLorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable$Ring;)V

    return-void
.end method

.method private getMinProgressArc(Lorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable$Ring;)F
    .locals 4

    invoke-virtual {p1}, Lorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable$Ring;->getStrokeWidth()F

    move-result p0

    float-to-double v0, p0

    const-wide v2, 0x401921fb54442d18L    # 6.283185307179586

    invoke-virtual {p1}, Lorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable$Ring;->getCenterRadius()D

    move-result-wide p0

    mul-double/2addr p0, v2

    div-double/2addr v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide p0

    double-to-float p0, p0

    return p0
.end method

.method public static bridge synthetic h()Landroid/view/animation/Interpolator;
    .locals 1

    sget-object v0, Lorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable;->MATERIAL_INTERPOLATOR:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method private static isLayoutRtl(Landroid/view/View;)Z
    .locals 1

    invoke-virtual {p0}, Landroid/view/View;->getLayoutDirection()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private setSizeParameters(DDDDFF)V
    .locals 4

    iget-object v0, p0, Lorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable;->mRing:Lorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable$Ring;

    iget-object v1, p0, Lorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    float-to-double v2, v1

    mul-double/2addr p1, v2

    iput-wide p1, p0, Lorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable;->mWidth:D

    mul-double/2addr p3, v2

    iput-wide p3, p0, Lorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable;->mHeight:D

    double-to-float p1, p7

    mul-float/2addr p1, v1

    invoke-virtual {v0, p1}, Lorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable$Ring;->setStrokeWidth(F)V

    mul-double/2addr p5, v2

    invoke-virtual {v0, p5, p6}, Lorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable$Ring;->setCenterRadius(D)V

    const/4 p1, 0x0

    invoke-virtual {v0, p1}, Lorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable$Ring;->setColorIndex(I)V

    mul-float/2addr p9, v1

    mul-float/2addr p10, v1

    invoke-virtual {v0, p9, p10}, Lorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable$Ring;->setArrowDimensions(FF)V

    iget-wide p1, p0, Lorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable;->mWidth:D

    double-to-int p1, p1

    iget-wide p2, p0, Lorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable;->mHeight:D

    double-to-int p0, p2

    invoke-virtual {v0, p1, p0}, Lorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable$Ring;->setInsets(II)V

    return-void
.end method

.method private updateRingColor(FLorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable$Ring;)V
    .locals 2

    const/high16 v0, 0x3f400000    # 0.75f

    cmpl-float v1, p1, v0

    if-lez v1, :cond_0

    sub-float/2addr p1, v0

    const/high16 v0, 0x3e800000    # 0.25f

    div-float/2addr p1, v0

    invoke-virtual {p2}, Lorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable$Ring;->getStartingColor()I

    move-result v0

    invoke-virtual {p2}, Lorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable$Ring;->getNextColor()I

    move-result v1

    invoke-direct {p0, p1, v0, v1}, Lorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable;->evaluateColorChange(FII)I

    move-result p0

    invoke-virtual {p2, p0}, Lorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable$Ring;->setColor(I)V

    :cond_0
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 8

    iget-object v0, p0, Lorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable;->mParent:Landroid/view/View;

    invoke-static {v0}, Lorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable;->isLayoutRtl(Landroid/view/View;)Z

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v2

    const/high16 v3, 0x3f800000    # 1.0f

    const/high16 v4, -0x40800000    # -1.0f

    if-eqz v0, :cond_0

    invoke-virtual {v1}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v5

    invoke-virtual {v1}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v6

    invoke-virtual {p1, v4, v3, v5, v6}, Landroid/graphics/Canvas;->scale(FFFF)V

    :cond_0
    iget v5, p0, Lorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable;->mRotation:F

    invoke-virtual {v1}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v6

    invoke-virtual {v1}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v7

    invoke-virtual {p1, v5, v6, v7}, Landroid/graphics/Canvas;->rotate(FFF)V

    iget-object p0, p0, Lorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable;->mRing:Lorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable$Ring;

    invoke-virtual {p0, p1, v1}, Lorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable$Ring;->draw(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V

    if-eqz v0, :cond_1

    invoke-virtual {v1}, Landroid/graphics/Rect;->exactCenterX()F

    move-result p0

    invoke-virtual {v1}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v0

    invoke-virtual {p1, v4, v3, p0, v0}, Landroid/graphics/Canvas;->scale(FFFF)V

    :cond_1
    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->restoreToCount(I)V

    return-void
.end method

.method public getAlpha()I
    .locals 0

    iget-object p0, p0, Lorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable;->mRing:Lorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable$Ring;

    invoke-virtual {p0}, Lorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable$Ring;->getAlpha()I

    move-result p0

    return p0
.end method

.method public getIntrinsicHeight()I
    .locals 2

    iget-wide v0, p0, Lorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable;->mHeight:D

    double-to-int p0, v0

    return p0
.end method

.method public getIntrinsicWidth()I
    .locals 2

    iget-wide v0, p0, Lorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable;->mWidth:D

    double-to-int p0, v0

    return p0
.end method

.method public getOpacity()I
    .locals 0

    const/4 p0, -0x3

    return p0
.end method

.method public isRunning()Z
    .locals 5

    iget-object p0, p0, Lorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable;->mAnimators:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/animation/Animation;

    invoke-virtual {v3}, Landroid/view/animation/Animation;->hasStarted()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v3}, Landroid/view/animation/Animation;->hasEnded()Z

    move-result v3

    if-nez v3, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public setAlpha(I)V
    .locals 0

    iget-object p0, p0, Lorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable;->mRing:Lorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable$Ring;

    invoke-virtual {p0, p1}, Lorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable$Ring;->setAlpha(I)V

    return-void
.end method

.method public setArrowScale(F)V
    .locals 0

    iget-object p0, p0, Lorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable;->mRing:Lorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable$Ring;

    invoke-virtual {p0, p1}, Lorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable$Ring;->setArrowScale(F)V

    return-void
.end method

.method public setBackgroundColor(I)V
    .locals 0

    iget-object p0, p0, Lorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable;->mRing:Lorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable$Ring;

    invoke-virtual {p0, p1}, Lorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable$Ring;->setBackgroundColor(I)V

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    iget-object p0, p0, Lorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable;->mRing:Lorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable$Ring;

    invoke-virtual {p0, p1}, Lorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable$Ring;->setColorFilter(Landroid/graphics/ColorFilter;)V

    return-void
.end method

.method public varargs setColorSchemeColors([I)V
    .locals 1

    iget-object v0, p0, Lorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable;->mRing:Lorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable$Ring;

    invoke-virtual {v0, p1}, Lorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable$Ring;->setColors([I)V

    iget-object p0, p0, Lorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable;->mRing:Lorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable$Ring;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable$Ring;->setColorIndex(I)V

    return-void
.end method

.method public setProgressRotation(F)V
    .locals 0

    iget-object p0, p0, Lorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable;->mRing:Lorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable$Ring;

    invoke-virtual {p0, p1}, Lorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable$Ring;->setRotation(F)V

    return-void
.end method

.method public setRotation(F)V
    .locals 0

    iput p1, p0, Lorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable;->mRotation:F

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public setStartEndTrim(FF)V
    .locals 1

    iget-object v0, p0, Lorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable;->mRing:Lorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable$Ring;

    invoke-virtual {v0, p1}, Lorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable$Ring;->setStartTrim(F)V

    iget-object p0, p0, Lorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable;->mRing:Lorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable$Ring;

    invoke-virtual {p0, p2}, Lorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable$Ring;->setEndTrim(F)V

    return-void
.end method

.method public showArrow(Z)V
    .locals 0

    iget-object p0, p0, Lorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable;->mRing:Lorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable$Ring;

    invoke-virtual {p0, p1}, Lorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable$Ring;->setShowArrow(Z)V

    return-void
.end method

.method public start()V
    .locals 3

    iget-object v0, p0, Lorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable;->mAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->reset()V

    iget-object v0, p0, Lorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable;->mRing:Lorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable$Ring;

    invoke-virtual {v0}, Lorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable$Ring;->storeOriginals()V

    iget-object v0, p0, Lorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable;->mRing:Lorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable$Ring;

    invoke-virtual {v0}, Lorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable$Ring;->getEndTrim()F

    move-result v0

    iget-object v1, p0, Lorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable;->mRing:Lorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable$Ring;

    invoke-virtual {v1}, Lorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable$Ring;->getStartTrim()F

    move-result v1

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable;->mFinishing:Z

    iget-object v0, p0, Lorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable;->mAnimation:Landroid/view/animation/Animation;

    const-wide/16 v1, 0x29a

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    iget-object v0, p0, Lorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable;->mParent:Landroid/view/View;

    iget-object p0, p0, Lorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable;->mAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, p0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable;->mRing:Lorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable$Ring;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable$Ring;->setColorIndex(I)V

    iget-object v0, p0, Lorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable;->mRing:Lorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable$Ring;

    invoke-virtual {v0}, Lorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable$Ring;->resetOriginals()V

    iget-object v0, p0, Lorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable;->mAnimation:Landroid/view/animation/Animation;

    const-wide/16 v1, 0x534

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    iget-object v0, p0, Lorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable;->mParent:Landroid/view/View;

    iget-object p0, p0, Lorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable;->mAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, p0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    :goto_0
    return-void
.end method

.method public stop()V
    .locals 2

    iget-object v0, p0, Lorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable;->mParent:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable;->setRotation(F)V

    iget-object v0, p0, Lorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable;->mRing:Lorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable$Ring;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable$Ring;->setShowArrow(Z)V

    iget-object v0, p0, Lorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable;->mRing:Lorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable$Ring;

    invoke-virtual {v0, v1}, Lorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable$Ring;->setColorIndex(I)V

    iget-object p0, p0, Lorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable;->mRing:Lorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable$Ring;

    invoke-virtual {p0}, Lorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable$Ring;->resetOriginals()V

    return-void
.end method

.method public updateSizes(I)V
    .locals 22
    .param p1    # I
        .annotation build Lorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable$ProgressDrawableSize;
        .end annotation
    .end param

    if-nez p1, :cond_0

    const/high16 v9, 0x41400000    # 12.0f

    const/high16 v10, 0x40c00000    # 6.0f

    const-wide/high16 v1, 0x404c000000000000L    # 56.0

    const-wide/high16 v3, 0x404c000000000000L    # 56.0

    const-wide/high16 v5, 0x4029000000000000L    # 12.5

    const-wide/high16 v7, 0x4008000000000000L    # 3.0

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v10}, Lorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable;->setSizeParameters(DDDDFF)V

    goto :goto_0

    :cond_0
    const/high16 v20, 0x41200000    # 10.0f

    const/high16 v21, 0x40a00000    # 5.0f

    const-wide/high16 v12, 0x4044000000000000L    # 40.0

    const-wide/high16 v14, 0x4044000000000000L    # 40.0

    const-wide v16, 0x4021800000000000L    # 8.75

    const-wide/high16 v18, 0x4004000000000000L    # 2.5

    move-object/from16 v11, p0

    invoke-direct/range {v11 .. v21}, Lorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable;->setSizeParameters(DDDDFF)V

    :goto_0
    return-void
.end method
