.class public final LY2/w;
.super LY2/A0;
.source "SourceFile"


# static fields
.field public static final d:Landroid/view/animation/DecelerateInterpolator;

.field public static final e:Landroid/view/animation/AccelerateInterpolator;


# instance fields
.field public c:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    sput-object v0, LY2/w;->d:Landroid/view/animation/DecelerateInterpolator;

    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    sput-object v0, LY2/w;->e:Landroid/view/animation/AccelerateInterpolator;

    return-void
.end method


# virtual methods
.method public final captureEndValues(LY2/q0;)V
    .locals 0

    invoke-static {p1}, LY2/A0;->f(LY2/q0;)V

    invoke-virtual {p0, p1}, LY2/w;->l(LY2/q0;)V

    return-void
.end method

.method public final captureStartValues(LY2/q0;)V
    .locals 0

    invoke-static {p1}, LY2/A0;->f(LY2/q0;)V

    invoke-virtual {p0, p1}, LY2/w;->l(LY2/q0;)V

    return-void
.end method

.method public final h(Landroid/view/ViewGroup;Landroid/view/View;LY2/q0;LY2/q0;)Landroid/animation/ObjectAnimator;
    .locals 10

    if-nez p4, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object p3, p4, LY2/q0;->a:Ljava/util/HashMap;

    const-string v0, "android:explode:screenBounds"

    invoke-virtual {p3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/view/View;->getTranslationX()F

    move-result v6

    invoke-virtual {p2}, Landroid/view/View;->getTranslationY()F

    move-result v7

    iget-object v0, p0, LY2/w;->c:[I

    invoke-virtual {p0, p1, p3, v0}, LY2/w;->k(Landroid/view/ViewGroup;Landroid/graphics/Rect;[I)V

    const/4 p1, 0x0

    aget p1, v0, p1

    int-to-float p1, p1

    add-float v4, v6, p1

    const/4 p1, 0x1

    aget p1, v0, p1

    int-to-float p1, p1

    add-float v5, v7, p1

    iget v2, p3, Landroid/graphics/Rect;->left:I

    iget v3, p3, Landroid/graphics/Rect;->top:I

    sget-object v8, LY2/w;->d:Landroid/view/animation/DecelerateInterpolator;

    move-object v0, p2

    move-object v1, p4

    move-object v9, p0

    invoke-static/range {v0 .. v9}, LY2/V;->b(Landroid/view/View;LY2/q0;IIFFFFLandroid/view/animation/BaseInterpolator;LY2/A0;)Landroid/animation/ObjectAnimator;

    move-result-object p0

    return-object p0
.end method

.method public final i(Landroid/view/ViewGroup;Landroid/view/View;LY2/q0;LY2/q0;)Landroid/animation/ObjectAnimator;
    .locals 10

    if-nez p3, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object p4, p3, LY2/q0;->a:Ljava/util/HashMap;

    const-string v0, "android:explode:screenBounds"

    invoke-virtual {p4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/graphics/Rect;

    iget v2, p4, Landroid/graphics/Rect;->left:I

    iget v3, p4, Landroid/graphics/Rect;->top:I

    invoke-virtual {p2}, Landroid/view/View;->getTranslationX()F

    move-result v4

    invoke-virtual {p2}, Landroid/view/View;->getTranslationY()F

    move-result v5

    iget-object v0, p3, LY2/q0;->b:Landroid/view/View;

    const v1, 0x7f0b0ddb

    invoke-virtual {v0, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    const/4 v1, 0x1

    const/4 v6, 0x0

    if-eqz v0, :cond_1

    aget v7, v0, v6

    iget v8, p4, Landroid/graphics/Rect;->left:I

    sub-int v8, v7, v8

    int-to-float v8, v8

    add-float/2addr v8, v4

    aget v0, v0, v1

    iget v9, p4, Landroid/graphics/Rect;->top:I

    sub-int v9, v0, v9

    int-to-float v9, v9

    add-float/2addr v9, v5

    invoke-virtual {p4, v7, v0}, Landroid/graphics/Rect;->offsetTo(II)V

    goto :goto_0

    :cond_1
    move v8, v4

    move v9, v5

    :goto_0
    iget-object v0, p0, LY2/w;->c:[I

    invoke-virtual {p0, p1, p4, v0}, LY2/w;->k(Landroid/view/ViewGroup;Landroid/graphics/Rect;[I)V

    aget p1, v0, v6

    int-to-float p1, p1

    add-float v6, v8, p1

    aget p1, v0, v1

    int-to-float p1, p1

    add-float v7, v9, p1

    sget-object v8, LY2/w;->e:Landroid/view/animation/AccelerateInterpolator;

    move-object v0, p2

    move-object v1, p3

    move-object v9, p0

    invoke-static/range {v0 .. v9}, LY2/V;->b(Landroid/view/View;LY2/q0;IIFFFFLandroid/view/animation/BaseInterpolator;LY2/A0;)Landroid/animation/ObjectAnimator;

    move-result-object p0

    return-object p0
.end method

.method public final isSeekingSupported()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final k(Landroid/view/ViewGroup;Landroid/graphics/Rect;[I)V
    .locals 10

    iget-object v0, p0, LY2/w;->c:[I

    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    const/4 v1, 0x0

    aget v2, v0, v1

    const/4 v3, 0x1

    aget v0, v0, v3

    invoke-virtual {p0}, LY2/f0;->getEpicenter()Landroid/graphics/Rect;

    move-result-object p0

    if-nez p0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p0

    div-int/lit8 p0, p0, 0x2

    add-int/2addr p0, v2

    invoke-virtual {p1}, Landroid/view/View;->getTranslationX()F

    move-result v4

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    add-int/2addr v4, p0

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p0

    div-int/lit8 p0, p0, 0x2

    add-int/2addr p0, v0

    invoke-virtual {p1}, Landroid/view/View;->getTranslationY()F

    move-result v5

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    add-int/2addr v5, p0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/graphics/Rect;->centerX()I

    move-result v4

    invoke-virtual {p0}, Landroid/graphics/Rect;->centerY()I

    move-result v5

    :goto_0
    invoke-virtual {p2}, Landroid/graphics/Rect;->centerX()I

    move-result p0

    invoke-virtual {p2}, Landroid/graphics/Rect;->centerY()I

    move-result p2

    sub-int/2addr p0, v4

    int-to-float p0, p0

    sub-int/2addr p2, v5

    int-to-float p2, p2

    const/4 v6, 0x0

    cmpl-float v7, p0, v6

    if-nez v7, :cond_1

    cmpl-float v6, p2, v6

    if-nez v6, :cond_1

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v6

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    mul-double/2addr v6, v8

    double-to-float p0, v6

    const/high16 p2, 0x3f800000    # 1.0f

    sub-float/2addr p0, p2

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v6

    mul-double/2addr v6, v8

    double-to-float v6, v6

    sub-float p2, v6, p2

    :cond_1
    mul-float v6, p0, p0

    mul-float v7, p2, p2

    add-float/2addr v7, v6

    float-to-double v6, v7

    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    double-to-float v6, v6

    div-float/2addr p0, v6

    div-float/2addr p2, v6

    sub-int/2addr v4, v2

    sub-int/2addr v5, v0

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    sub-int/2addr v0, v4

    invoke-static {v4, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    sub-int/2addr p1, v5

    invoke-static {v5, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    int-to-float v0, v0

    int-to-float p1, p1

    mul-float/2addr v0, v0

    mul-float/2addr p1, p1

    add-float/2addr p1, v0

    float-to-double v4, p1

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    double-to-float p1, v4

    mul-float/2addr p0, p1

    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    aput p0, p3, v1

    mul-float/2addr p1, p2

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p0

    aput p0, p3, v3

    return-void
.end method

.method public final l(LY2/q0;)V
    .locals 4

    iget-object v0, p1, LY2/q0;->b:Landroid/view/View;

    iget-object p0, p0, LY2/w;->c:[I

    invoke-virtual {v0, p0}, Landroid/view/View;->getLocationOnScreen([I)V

    const/4 v1, 0x0

    aget v1, p0, v1

    const/4 v2, 0x1

    aget p0, p0, v2

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v2

    add-int/2addr v2, v1

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    add-int/2addr v0, p0

    iget-object p1, p1, LY2/q0;->a:Ljava/util/HashMap;

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3, v1, p0, v2, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    const-string p0, "android:explode:screenBounds"

    invoke-virtual {p1, p0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
