.class public final Lq4/r;
.super Lq4/a;
.source "SourceFile"


# instance fields
.field public final A:Z

.field public final B:Z

.field public final C:F

.field public final D:F

.field public final E:Lq4/q;

.field public final F:Lq4/p;

.field public final G:F


# direct methods
.method public constructor <init>(Lq4/p;)V
    .locals 1

    invoke-direct {p0}, Lq4/a;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lq4/r;->A:Z

    iput-boolean v0, p0, Lq4/r;->B:Z

    const/high16 v0, 0x41200000    # 10.0f

    iput v0, p0, Lq4/r;->C:F

    iput v0, p0, Lq4/r;->D:F

    sget-object v0, Lq4/q;->OUTSIDE_CHART:Lq4/q;

    iput-object v0, p0, Lq4/r;->E:Lq4/q;

    const/high16 v0, 0x7f800000    # Float.POSITIVE_INFINITY

    iput v0, p0, Lq4/r;->G:F

    iput-object p1, p0, Lq4/r;->F:Lq4/p;

    const/4 p1, 0x0

    iput p1, p0, Lq4/b;->c:F

    return-void
.end method


# virtual methods
.method public final a(FF)V
    .locals 4

    iget-boolean v0, p0, Lq4/a;->v:Z

    if-eqz v0, :cond_0

    iget p1, p0, Lq4/a;->y:F

    :cond_0
    iget-boolean v0, p0, Lq4/a;->w:Z

    if-eqz v0, :cond_1

    iget p2, p0, Lq4/a;->x:F

    :cond_1
    sub-float v0, p2, p1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-nez v1, :cond_2

    const/high16 v1, 0x3f800000    # 1.0f

    add-float/2addr p2, v1

    sub-float/2addr p1, v1

    :cond_2
    iget-boolean v1, p0, Lq4/a;->v:Z

    const/high16 v2, 0x42c80000    # 100.0f

    if-nez v1, :cond_3

    div-float v1, v0, v2

    iget v3, p0, Lq4/r;->D:F

    mul-float/2addr v1, v3

    sub-float/2addr p1, v1

    iput p1, p0, Lq4/a;->y:F

    :cond_3
    iget-boolean p1, p0, Lq4/a;->w:Z

    if-nez p1, :cond_4

    div-float/2addr v0, v2

    iget p1, p0, Lq4/r;->C:F

    mul-float/2addr v0, p1

    add-float/2addr v0, p2

    iput v0, p0, Lq4/a;->x:F

    :cond_4
    iget p1, p0, Lq4/a;->x:F

    iget p2, p0, Lq4/a;->y:F

    sub-float/2addr p1, p2

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iput p1, p0, Lq4/a;->z:F

    return-void
.end method

.method public final h(Landroid/graphics/Paint;)F
    .locals 5

    iget v0, p0, Lq4/b;->d:F

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    invoke-virtual {p0}, Lq4/a;->c()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ly4/g;->a:Landroid/util/DisplayMetrics;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result p1

    float-to-int p1, p1

    int-to-float p1, p1

    iget v0, p0, Lq4/b;->b:F

    const/high16 v1, 0x40000000    # 2.0f

    mul-float/2addr v0, v1

    add-float/2addr v0, p1

    iget p0, p0, Lq4/r;->G:F

    const/4 p1, 0x0

    cmpl-float v1, p0, p1

    if-lez v1, :cond_0

    const/high16 v1, 0x7f800000    # Float.POSITIVE_INFINITY

    cmpl-float v1, p0, v1

    if-eqz v1, :cond_0

    invoke-static {p0}, Ly4/g;->c(F)F

    move-result p0

    :cond_0
    float-to-double v1, p0

    const-wide/16 v3, 0x0

    cmpl-double v1, v1, v3

    if-lez v1, :cond_1

    goto :goto_0

    :cond_1
    move p0, v0

    :goto_0
    invoke-static {v0, p0}, Ljava/lang/Math;->min(FF)F

    move-result p0

    invoke-static {p1, p0}, Ljava/lang/Math;->max(FF)F

    move-result p0

    return p0
.end method
