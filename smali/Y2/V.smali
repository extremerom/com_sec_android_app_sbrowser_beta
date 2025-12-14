.class public abstract LY2/V;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:[I

.field public static final b:[I

.field public static final c:[I

.field public static final d:[I

.field public static final e:[I

.field public static final f:[I

.field public static final g:[I

.field public static final h:[I

.field public static final i:[I

.field public static final j:[I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x6

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, LY2/V;->a:[I

    const v0, 0x10103e2

    const v1, 0x101044f

    const v2, 0x1010141

    const v3, 0x1010198

    filled-new-array {v2, v3, v0, v1}, [I

    move-result-object v0

    sput-object v0, LY2/V;->b:[I

    const v0, 0x10104cf

    filled-new-array {v0}, [I

    move-result-object v0

    sput-object v0, LY2/V;->c:[I

    const v0, 0x101047c

    filled-new-array {v0}, [I

    move-result-object v0

    sput-object v0, LY2/V;->d:[I

    const v0, 0x10103e1

    filled-new-array {v0}, [I

    move-result-object v0

    sput-object v0, LY2/V;->e:[I

    const v0, 0x10104bc

    const v1, 0x10104bd

    filled-new-array {v0, v1}, [I

    move-result-object v0

    sput-object v0, LY2/V;->f:[I

    const v0, 0x1010430

    filled-new-array {v0}, [I

    move-result-object v0

    sput-object v0, LY2/V;->g:[I

    const v0, 0x10103e0

    filled-new-array {v0}, [I

    move-result-object v0

    sput-object v0, LY2/V;->h:[I

    const v0, 0x101047e

    const v1, 0x101047f

    const v2, 0x101047d

    filled-new-array {v2, v0, v1}, [I

    move-result-object v0

    sput-object v0, LY2/V;->i:[I

    const v0, 0x10104ca

    filled-new-array {v0}, [I

    move-result-object v0

    sput-object v0, LY2/V;->j:[I

    return-void

    :array_0
    .array-data 4
        0x101002f
        0x10103dc
        0x1010441
        0x1010442
        0x101044d
        0x101044e
    .end array-data
.end method

.method public static a(Ljava/lang/Object;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 1

    if-nez p1, :cond_0

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    :cond_0
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    return-object p1
.end method

.method public static b(Landroid/view/View;LY2/q0;IIFFFFLandroid/view/animation/BaseInterpolator;LY2/A0;)Landroid/animation/ObjectAnimator;
    .locals 11

    move-object v0, p0

    move-object v1, p1

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {p0}, Landroid/view/View;->getTranslationX()F

    move-result v5

    invoke-virtual {p0}, Landroid/view/View;->getTranslationY()F

    move-result v6

    iget-object v7, v1, LY2/q0;->b:Landroid/view/View;

    const v8, 0x7f0b0ddb

    invoke-virtual {v7, v8}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [I

    if-eqz v7, :cond_0

    aget v8, v7, v4

    sub-int/2addr v8, p2

    int-to-float v8, v8

    add-float/2addr v8, v5

    aget v7, v7, v3

    sub-int/2addr v7, p3

    int-to-float v7, v7

    add-float/2addr v7, v6

    goto :goto_0

    :cond_0
    move v8, p4

    move/from16 v7, p5

    :goto_0
    invoke-virtual {p0, v8}, Landroid/view/View;->setTranslationX(F)V

    invoke-virtual {p0, v7}, Landroid/view/View;->setTranslationY(F)V

    cmpl-float v9, v8, p6

    if-nez v9, :cond_1

    cmpl-float v9, v7, p7

    if-nez v9, :cond_1

    const/4 v0, 0x0

    return-object v0

    :cond_1
    sget-object v9, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    new-array v10, v2, [F

    aput v8, v10, v4

    aput p6, v10, v3

    invoke-static {v9, v10}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v8

    sget-object v9, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v2, v2, [F

    aput v7, v2, v4

    aput p7, v2, v3

    invoke-static {v9, v2}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    filled-new-array {v8, v2}, [Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    invoke-static {p0, v2}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v2

    new-instance v3, LY2/s0;

    iget-object v1, v1, LY2/q0;->b:Landroid/view/View;

    invoke-direct {v3, p0, v1, v5, v6}, LY2/s0;-><init>(Landroid/view/View;Landroid/view/View;FF)V

    move-object/from16 v0, p9

    invoke-virtual {v0, v3}, LY2/f0;->addListener(LY2/d0;)LY2/f0;

    invoke-virtual {v2, v3}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    move-object/from16 v0, p8

    invoke-virtual {v2, v0}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    return-object v2
.end method

.method public static e(Ljava/lang/Object;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    if-eqz p1, :cond_0

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p1, 0x0

    :cond_0
    return-object p1
.end method


# virtual methods
.method public c(Landroid/view/View;Landroid/view/ViewGroup;)F
    .locals 0

    invoke-virtual {p1}, Landroid/view/View;->getTranslationX()F

    move-result p0

    return p0
.end method

.method public d(Landroid/view/View;Landroid/view/ViewGroup;)F
    .locals 0

    invoke-virtual {p1}, Landroid/view/View;->getTranslationY()F

    move-result p0

    return p0
.end method
