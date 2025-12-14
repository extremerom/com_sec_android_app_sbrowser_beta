.class public final Lcom/sec/android/app/sbrowser/toolbar_swipe/FlingDistance;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/compose/runtime/internal/StabilityInferred;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/toolbar_swipe/FlingDistance$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0010\u0007\n\u0000\n\u0002\u0010\u0006\n\u0002\u0008\u0007\n\u0002\u0010\u000b\n\u0002\u0008\u0008\u0008\u0007\u0018\u0000  2\u00020\u0001:\u0001 B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u000f\u0010\u0007\u001a\u00020\u0006H\u0002\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u001f\u0010\u000c\u001a\u00020\u00062\u0006\u0010\n\u001a\u00020\t2\u0006\u0010\u000b\u001a\u00020\tH\u0002\u00a2\u0006\u0004\u0008\u000c\u0010\rJ\u001f\u0010\u000e\u001a\u00020\u00062\u0006\u0010\n\u001a\u00020\t2\u0006\u0010\u000b\u001a\u00020\tH\u0002\u00a2\u0006\u0004\u0008\u000e\u0010\rJ\u0017\u0010\u0012\u001a\u00020\u00112\u0006\u0010\u0010\u001a\u00020\u000fH\u0002\u00a2\u0006\u0004\u0008\u0012\u0010\u0013J\u0015\u0010\u0014\u001a\u00020\u00112\u0006\u0010\u0010\u001a\u00020\u000f\u00a2\u0006\u0004\u0008\u0014\u0010\u0013R\u0014\u0010\u0015\u001a\u00020\u000f8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0015\u0010\u0016R\u0014\u0010\u0017\u001a\u00020\t8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0017\u0010\u0018R\u0014\u0010\u001a\u001a\u00020\u00198\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u001a\u0010\u001bR\u0014\u0010\u001c\u001a\u00020\u000f8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u001c\u0010\u0016R\u0014\u0010\u001d\u001a\u00020\u000f8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u001d\u0010\u0016R\u0016\u0010\u001e\u001a\u00020\u000f8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u001e\u0010\u0016R\u0016\u0010\u001f\u001a\u00020\u000f8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u001f\u0010\u0016\u00a8\u0006!"
    }
    d2 = {
        "Lcom/sec/android/app/sbrowser/toolbar_swipe/FlingDistance;",
        "",
        "Landroid/content/Context;",
        "context",
        "<init>",
        "(Landroid/content/Context;)V",
        "Ldb/r;",
        "setSplines",
        "()V",
        "",
        "index",
        "mode",
        "setSplinePositions",
        "(II)V",
        "setSplineTimes",
        "",
        "velocity",
        "",
        "getSplineDeceleration",
        "(F)D",
        "getFlingDistance",
        "inflexion",
        "F",
        "maximumVelocity",
        "I",
        "",
        "enableSmoothFling",
        "Z",
        "flingFriction",
        "physicalCoeff",
        "minSplinePositionX",
        "minSplinePositionY",
        "Companion",
        "SBrowser_highendBetaGlobal64Release"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final $stable:I

.field public static final Companion:Lcom/sec/android/app/sbrowser/toolbar_swipe/FlingDistance$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final DECELERATION_RATE:F

.field private static final INFLEXIONS:[F
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final SPLINE_POSITION:[F
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final SPLINE_POSITIONS:[[F
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final SPLINE_TIMES:[[F
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final enableSmoothFling:Z

.field private final flingFriction:F

.field private final inflexion:F

.field private final maximumVelocity:I

.field private minSplinePositionX:F

.field private minSplinePositionY:F

.field private final physicalCoeff:F


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v0, 0x1

    new-instance v1, Lcom/sec/android/app/sbrowser/toolbar_swipe/FlingDistance$Companion;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/sec/android/app/sbrowser/toolbar_swipe/FlingDistance$Companion;-><init>(Ltb/f;)V

    sput-object v1, Lcom/sec/android/app/sbrowser/toolbar_swipe/FlingDistance;->Companion:Lcom/sec/android/app/sbrowser/toolbar_swipe/FlingDistance$Companion;

    const/16 v1, 0x8

    sput v1, Lcom/sec/android/app/sbrowser/toolbar_swipe/FlingDistance;->$stable:I

    const-wide v1, 0x3fe8f5c28f5c28f6L    # 0.78

    invoke-static {v1, v2}, Ljava/lang/Math;->log(D)D

    move-result-wide v1

    const-wide v3, 0x3feccccccccccccdL    # 0.9

    invoke-static {v3, v4}, Ljava/lang/Math;->log(D)D

    move-result-wide v3

    div-double/2addr v1, v3

    double-to-float v1, v1

    sput v1, Lcom/sec/android/app/sbrowser/toolbar_swipe/FlingDistance;->DECELERATION_RATE:F

    const/4 v1, 0x2

    new-array v2, v1, [F

    fill-array-data v2, :array_0

    sput-object v2, Lcom/sec/android/app/sbrowser/toolbar_swipe/FlingDistance;->INFLEXIONS:[F

    new-array v2, v1, [[F

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    const/16 v5, 0x65

    if-ge v4, v1, :cond_0

    new-array v5, v5, [F

    aput-object v5, v2, v4

    add-int/2addr v4, v0

    goto :goto_0

    :cond_0
    sput-object v2, Lcom/sec/android/app/sbrowser/toolbar_swipe/FlingDistance;->SPLINE_POSITIONS:[[F

    aget-object v2, v2, v0

    sput-object v2, Lcom/sec/android/app/sbrowser/toolbar_swipe/FlingDistance;->SPLINE_POSITION:[F

    new-array v2, v1, [[F

    :goto_1
    if-ge v3, v1, :cond_1

    new-array v4, v5, [F

    aput-object v4, v2, v3

    add-int/2addr v3, v0

    goto :goto_1

    :cond_1
    sput-object v2, Lcom/sec/android/app/sbrowser/toolbar_swipe/FlingDistance;->SPLINE_TIMES:[[F

    return-void

    :array_0
    .array-data 4
        0x3eb33333    # 0.35f
        0x3e6147ae    # 0.22f
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollFriction()F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/sbrowser/toolbar_swipe/FlingDistance;->flingFriction:F

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/sbrowser/toolbar_swipe/FlingDistance;->INFLEXIONS:[F

    const/4 v2, 0x1

    aget v1, v1, v2

    iput v1, p0, Lcom/sec/android/app/sbrowser/toolbar_swipe/FlingDistance;->inflexion:F

    iput-boolean v2, p0, Lcom/sec/android/app/sbrowser/toolbar_swipe/FlingDistance;->enableSmoothFling:Z

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/sbrowser/toolbar_swipe/FlingDistance;->maximumVelocity:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    const/high16 v0, 0x43200000    # 160.0f

    mul-float/2addr p1, v0

    const v0, 0x43c10b3d

    mul-float/2addr p1, v0

    const v0, 0x3f570a3d    # 0.84f

    mul-float/2addr p1, v0

    iput p1, p0, Lcom/sec/android/app/sbrowser/toolbar_swipe/FlingDistance;->physicalCoeff:F

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/toolbar_swipe/FlingDistance;->setSplines()V

    return-void
.end method

.method private final getSplineDeceleration(F)D
    .locals 1

    iget v0, p0, Lcom/sec/android/app/sbrowser/toolbar_swipe/FlingDistance;->inflexion:F

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    mul-float/2addr p1, v0

    iget v0, p0, Lcom/sec/android/app/sbrowser/toolbar_swipe/FlingDistance;->flingFriction:F

    iget p0, p0, Lcom/sec/android/app/sbrowser/toolbar_swipe/FlingDistance;->physicalCoeff:F

    mul-float/2addr v0, p0

    div-float/2addr p1, v0

    float-to-double p0, p1

    invoke-static {p0, p1}, Ljava/lang/Math;->log(D)D

    move-result-wide p0

    double-to-float p0, p0

    float-to-double p0, p0

    return-wide p0
.end method

.method private final setSplinePositions(II)V
    .locals 18

    move-object/from16 v0, p0

    move/from16 v1, p1

    sget-object v2, Lcom/sec/android/app/sbrowser/toolbar_swipe/FlingDistance;->INFLEXIONS:[F

    aget v2, v2, p2

    const/high16 v3, 0x3f000000    # 0.5f

    mul-float v4, v2, v3

    const/high16 v5, 0x3f800000    # 1.0f

    sub-float v2, v5, v2

    mul-float/2addr v2, v5

    sub-float v2, v5, v2

    int-to-float v6, v1

    const/16 v7, 0x64

    int-to-float v7, v7

    div-float/2addr v6, v7

    iget v7, v0, Lcom/sec/android/app/sbrowser/toolbar_swipe/FlingDistance;->minSplinePositionX:F

    move v8, v5

    :goto_0
    sub-float v9, v8, v7

    const/high16 v10, 0x40000000    # 2.0f

    div-float/2addr v9, v10

    add-float/2addr v9, v7

    const/high16 v10, 0x40400000    # 3.0f

    mul-float/2addr v10, v9

    sub-float v11, v5, v9

    mul-float/2addr v10, v11

    mul-float v12, v11, v4

    mul-float v13, v9, v2

    add-float/2addr v13, v12

    mul-float/2addr v13, v10

    mul-float v12, v9, v9

    mul-float/2addr v12, v9

    add-float/2addr v13, v12

    sub-float v14, v13, v6

    invoke-static {v14}, Ljava/lang/Math;->abs(F)F

    move-result v14

    float-to-double v14, v14

    const-wide v16, 0x3ee4f8b588e368f1L    # 1.0E-5

    cmpg-double v14, v14, v16

    if-ltz v14, :cond_1

    cmpl-float v10, v13, v6

    if-lez v10, :cond_0

    move v8, v9

    goto :goto_0

    :cond_0
    move v7, v9

    goto :goto_0

    :cond_1
    sget-object v2, Lcom/sec/android/app/sbrowser/toolbar_swipe/FlingDistance;->SPLINE_POSITIONS:[[F

    aget-object v2, v2, p2

    mul-float/2addr v11, v3

    add-float/2addr v11, v9

    mul-float/2addr v11, v10

    add-float/2addr v11, v12

    aput v11, v2, v1

    iput v7, v0, Lcom/sec/android/app/sbrowser/toolbar_swipe/FlingDistance;->minSplinePositionX:F

    return-void
.end method

.method private final setSplineTimes(II)V
    .locals 18

    move-object/from16 v0, p0

    move/from16 v1, p1

    sget-object v2, Lcom/sec/android/app/sbrowser/toolbar_swipe/FlingDistance;->INFLEXIONS:[F

    aget v2, v2, p2

    const/high16 v3, 0x3f000000    # 0.5f

    mul-float v4, v2, v3

    const/high16 v5, 0x3f800000    # 1.0f

    sub-float v2, v5, v2

    mul-float/2addr v2, v5

    sub-float v2, v5, v2

    int-to-float v6, v1

    const/16 v7, 0x64

    int-to-float v7, v7

    div-float/2addr v6, v7

    iget v7, v0, Lcom/sec/android/app/sbrowser/toolbar_swipe/FlingDistance;->minSplinePositionY:F

    move v8, v5

    :goto_0
    sub-float v9, v8, v7

    const/high16 v10, 0x40000000    # 2.0f

    div-float/2addr v9, v10

    add-float/2addr v9, v7

    const/high16 v10, 0x40400000    # 3.0f

    mul-float/2addr v10, v9

    sub-float v11, v5, v9

    mul-float/2addr v10, v11

    mul-float v12, v11, v3

    add-float/2addr v12, v9

    mul-float/2addr v12, v10

    mul-float v13, v9, v9

    mul-float/2addr v13, v9

    add-float/2addr v12, v13

    sub-float v14, v12, v6

    invoke-static {v14}, Ljava/lang/Math;->abs(F)F

    move-result v14

    float-to-double v14, v14

    const-wide v16, 0x3ee4f8b588e368f1L    # 1.0E-5

    cmpg-double v14, v14, v16

    if-ltz v14, :cond_1

    cmpl-float v10, v12, v6

    if-lez v10, :cond_0

    move v8, v9

    goto :goto_0

    :cond_0
    move v7, v9

    goto :goto_0

    :cond_1
    sget-object v3, Lcom/sec/android/app/sbrowser/toolbar_swipe/FlingDistance;->SPLINE_TIMES:[[F

    aget-object v3, v3, p2

    mul-float/2addr v11, v4

    mul-float/2addr v9, v2

    add-float/2addr v9, v11

    mul-float/2addr v9, v10

    add-float/2addr v9, v13

    aput v9, v3, v1

    iput v7, v0, Lcom/sec/android/app/sbrowser/toolbar_swipe/FlingDistance;->minSplinePositionY:F

    return-void
.end method

.method private final setSplines()V
    .locals 5

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/4 v2, 0x2

    if-ge v1, v2, :cond_1

    const/4 v2, 0x0

    iput v2, p0, Lcom/sec/android/app/sbrowser/toolbar_swipe/FlingDistance;->minSplinePositionX:F

    iput v2, p0, Lcom/sec/android/app/sbrowser/toolbar_swipe/FlingDistance;->minSplinePositionY:F

    move v2, v0

    :goto_1
    const/16 v3, 0x64

    if-ge v2, v3, :cond_0

    invoke-direct {p0, v2, v1}, Lcom/sec/android/app/sbrowser/toolbar_swipe/FlingDistance;->setSplinePositions(II)V

    invoke-direct {p0, v2, v1}, Lcom/sec/android/app/sbrowser/toolbar_swipe/FlingDistance;->setSplineTimes(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_0
    sget-object v2, Lcom/sec/android/app/sbrowser/toolbar_swipe/FlingDistance;->SPLINE_TIMES:[[F

    aget-object v2, v2, v1

    const/high16 v4, 0x3f800000    # 1.0f

    aput v4, v2, v3

    sget-object v2, Lcom/sec/android/app/sbrowser/toolbar_swipe/FlingDistance;->SPLINE_POSITIONS:[[F

    aget-object v2, v2, v1

    aput v4, v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public final getFlingDistance(F)D
    .locals 9

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/toolbar_swipe/FlingDistance;->getSplineDeceleration(F)D

    move-result-wide v0

    sget v2, Lcom/sec/android/app/sbrowser/toolbar_swipe/FlingDistance;->DECELERATION_RATE:F

    float-to-double v3, v2

    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v3, v5

    iget-boolean v5, p0, Lcom/sec/android/app/sbrowser/toolbar_swipe/FlingDistance;->enableSmoothFling:Z

    if-eqz v5, :cond_1

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iget v5, p0, Lcom/sec/android/app/sbrowser/toolbar_swipe/FlingDistance;->maximumVelocity:I

    int-to-float v5, v5

    div-float/2addr p1, v5

    const/16 v5, 0x64

    int-to-float v6, v5

    mul-float/2addr v6, p1

    float-to-int p1, v6

    if-le p1, v5, :cond_0

    goto :goto_0

    :cond_0
    move v5, p1

    :goto_0
    sget-object p1, Lcom/sec/android/app/sbrowser/toolbar_swipe/FlingDistance;->SPLINE_POSITION:[F

    aget p1, p1, v5

    const/high16 v5, 0x3f800000    # 1.0f

    const/high16 v6, 0x40400000    # 3.0f

    const/high16 v7, 0x3fc00000    # 1.5f

    invoke-static {v5, p1, v6, v7}, LB/e;->a(FFFF)F

    move-result p1

    float-to-double v5, p1

    iget p1, p0, Lcom/sec/android/app/sbrowser/toolbar_swipe/FlingDistance;->flingFriction:F

    float-to-double v7, p1

    mul-double/2addr v5, v7

    iget p0, p0, Lcom/sec/android/app/sbrowser/toolbar_swipe/FlingDistance;->physicalCoeff:F

    float-to-double p0, p0

    mul-double/2addr v5, p0

    float-to-double p0, v2

    div-double/2addr p0, v3

    mul-double/2addr p0, v0

    invoke-static {p0, p1}, Ljava/lang/Math;->exp(D)D

    move-result-wide p0

    mul-double/2addr p0, v5

    return-wide p0

    :cond_1
    iget v5, p0, Lcom/sec/android/app/sbrowser/toolbar_swipe/FlingDistance;->flingFriction:F

    iget p0, p0, Lcom/sec/android/app/sbrowser/toolbar_swipe/FlingDistance;->physicalCoeff:F

    mul-float/2addr v5, p0

    float-to-double v5, v5

    float-to-double v7, v2

    div-double/2addr v7, v3

    mul-double/2addr v7, v0

    invoke-static {v7, v8}, Ljava/lang/Math;->exp(D)D

    move-result-wide v0

    mul-double/2addr v0, v5

    invoke-static {p1}, Ljava/lang/Math;->signum(F)F

    move-result p0

    float-to-double p0, p0

    mul-double/2addr p0, v0

    return-wide p0
.end method
