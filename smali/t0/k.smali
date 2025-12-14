.class public final Lt0/k;
.super Lt0/c;
.source "SourceFile"


# static fields
.field public static final d:[F

.field public static final e:[F

.field public static final f:[F

.field public static final g:[F


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x3

    const/16 v1, 0x9

    new-array v2, v1, [F

    fill-array-data v2, :array_0

    sget-object v3, Lt0/a;->b:Lt0/a;

    new-array v4, v0, [F

    fill-array-data v4, :array_1

    new-array v0, v0, [F

    fill-array-data v0, :array_2

    iget-object v3, v3, Lt0/a;->a:[F

    invoke-static {v3, v4, v0}, Lt0/i;->c([F[F[F)[F

    move-result-object v0

    invoke-static {v2, v0}, Lt0/i;->g([F[F)[F

    move-result-object v0

    sput-object v0, Lt0/k;->d:[F

    new-array v1, v1, [F

    fill-array-data v1, :array_3

    sput-object v1, Lt0/k;->e:[F

    invoke-static {v0}, Lt0/i;->f([F)[F

    move-result-object v0

    sput-object v0, Lt0/k;->f:[F

    invoke-static {v1}, Lt0/i;->f([F)[F

    move-result-object v0

    sput-object v0, Lt0/k;->g:[F

    return-void

    :array_0
    .array-data 4
        0x3f51a598
        0x3d071acd
        0x3d456dae
        0x3eb94699
        0x3f6de762
        0x3e875b04
        -0x41fc0c33
        0x3d140d73
        0x3f22441b
    .end array-data

    :array_1
    .array-data 4
        0x3f76d699    # 0.964212f
        0x3f800000    # 1.0f
        0x3f533f8a
    .end array-data

    :array_2
    .array-data 4
        0x3f734f49
        0x3f800000    # 1.0f
        0x3f8b6117
    .end array-data

    :array_3
    .array-data 4
        0x3e578152
        0x3ffd2f0e
        0x3cd434b4
        0x3f4b2a89
        -0x3fe491f2
        0x3f4863bb
        -0x447a9132
        0x3ee6b438
        -0x40b0faa0
    .end array-data
.end method


# virtual methods
.method public final a(I)F
    .locals 0

    if-nez p1, :cond_0

    const/high16 p0, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const/high16 p0, 0x3f000000    # 0.5f

    :goto_0
    return p0
.end method

.method public final b(I)F
    .locals 0

    if-nez p1, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const/high16 p0, -0x41000000    # -0.5f

    :goto_0
    return p0
.end method

.method public final d(FFF)J
    .locals 2

    const/4 p0, 0x0

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {p1, p0, v0}, LG5/d3;->e(FFF)F

    move-result p0

    const/high16 p1, -0x41000000    # -0.5f

    const/high16 v0, 0x3f000000    # 0.5f

    invoke-static {p2, p1, v0}, LG5/d3;->e(FFF)F

    move-result p2

    invoke-static {p3, p1, v0}, LG5/d3;->e(FFF)F

    move-result p1

    sget-object p3, Lt0/k;->g:[F

    invoke-static {p3, p0, p2, p1}, Lt0/i;->j([FFFF)F

    move-result v0

    invoke-static {p3, p0, p2, p1}, Lt0/i;->k([FFFF)F

    move-result v1

    invoke-static {p3, p0, p2, p1}, Lt0/i;->l([FFFF)F

    move-result p0

    mul-float p1, v0, v0

    mul-float/2addr p1, v0

    mul-float p2, v1, v1

    mul-float/2addr p2, v1

    mul-float p3, p0, p0

    mul-float/2addr p3, p0

    sget-object p0, Lt0/k;->f:[F

    invoke-static {p0, p1, p2, p3}, Lt0/i;->j([FFFF)F

    move-result v0

    invoke-static {p0, p1, p2, p3}, Lt0/i;->k([FFFF)F

    move-result p0

    invoke-static {v0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p1

    int-to-long p1, p1

    invoke-static {p0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p0

    int-to-long v0, p0

    const/16 p0, 0x20

    shl-long p0, p1, p0

    const-wide p2, 0xffffffffL

    and-long/2addr p2, v0

    or-long/2addr p0, p2

    return-wide p0
.end method

.method public final e(FFF)F
    .locals 2

    const/4 p0, 0x0

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {p1, p0, v0}, LG5/d3;->e(FFF)F

    move-result p0

    const/high16 p1, -0x41000000    # -0.5f

    const/high16 v0, 0x3f000000    # 0.5f

    invoke-static {p2, p1, v0}, LG5/d3;->e(FFF)F

    move-result p2

    invoke-static {p3, p1, v0}, LG5/d3;->e(FFF)F

    move-result p1

    sget-object p3, Lt0/k;->g:[F

    invoke-static {p3, p0, p2, p1}, Lt0/i;->j([FFFF)F

    move-result v0

    invoke-static {p3, p0, p2, p1}, Lt0/i;->k([FFFF)F

    move-result v1

    invoke-static {p3, p0, p2, p1}, Lt0/i;->l([FFFF)F

    move-result p0

    mul-float p1, v0, v0

    mul-float/2addr p1, v0

    mul-float p2, v1, v1

    mul-float/2addr p2, v1

    mul-float p3, p0, p0

    mul-float/2addr p3, p0

    sget-object p0, Lt0/k;->f:[F

    invoke-static {p0, p1, p2, p3}, Lt0/i;->l([FFFF)F

    move-result p0

    return p0
.end method

.method public final f(FFFFLt0/c;)J
    .locals 4

    sget-object p0, Lt0/k;->d:[F

    invoke-static {p0, p1, p2, p3}, Lt0/i;->j([FFFF)F

    move-result v0

    invoke-static {p0, p1, p2, p3}, Lt0/i;->k([FFFF)F

    move-result v1

    invoke-static {p0, p1, p2, p3}, Lt0/i;->l([FFFF)F

    move-result p0

    invoke-static {v0}, Ljava/lang/Math;->signum(F)F

    move-result p1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result p2

    float-to-double p2, p2

    const v0, 0x3eaaaaab

    float-to-double v2, v0

    invoke-static {p2, p3, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p2

    double-to-float p2, p2

    mul-float/2addr p1, p2

    invoke-static {v1}, Ljava/lang/Math;->signum(F)F

    move-result p2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result p3

    float-to-double v0, p3

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-float p3, v0

    mul-float/2addr p2, p3

    invoke-static {p0}, Ljava/lang/Math;->signum(F)F

    move-result p3

    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result p0

    float-to-double v0, p0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-float p0, v0

    mul-float/2addr p3, p0

    sget-object p0, Lt0/k;->e:[F

    invoke-static {p0, p1, p2, p3}, Lt0/i;->j([FFFF)F

    move-result v0

    invoke-static {p0, p1, p2, p3}, Lt0/i;->k([FFFF)F

    move-result v1

    invoke-static {p0, p1, p2, p3}, Lt0/i;->l([FFFF)F

    move-result p0

    invoke-static {v0, v1, p0, p4, p5}, Ls0/e;->a(FFFFLt0/c;)J

    move-result-wide p0

    return-wide p0
.end method
