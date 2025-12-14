.class public final Lt0/j;
.super Lt0/c;
.source "SourceFile"


# instance fields
.field public final synthetic d:I


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;JII)V
    .locals 0

    iput p5, p0, Lt0/j;->d:I

    invoke-direct {p0, p1, p2, p3, p4}, Lt0/c;-><init>(Ljava/lang/String;JI)V

    return-void
.end method

.method public static g(F)F
    .locals 2

    const/high16 v0, -0x40000000    # -2.0f

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {p0, v0, v1}, LG5/d3;->e(FFF)F

    move-result p0

    return p0
.end method


# virtual methods
.method public final a(I)F
    .locals 0

    iget p0, p0, Lt0/j;->d:I

    packed-switch p0, :pswitch_data_0

    const/high16 p0, 0x40000000    # 2.0f

    return p0

    :pswitch_0
    if-nez p1, :cond_0

    const/high16 p0, 0x42c80000    # 100.0f

    goto :goto_0

    :cond_0
    const/high16 p0, 0x43000000    # 128.0f

    :goto_0
    return p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final b(I)F
    .locals 0

    iget p0, p0, Lt0/j;->d:I

    packed-switch p0, :pswitch_data_0

    const/high16 p0, -0x40000000    # -2.0f

    return p0

    :pswitch_0
    if-nez p1, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const/high16 p0, -0x3d000000    # -128.0f

    :goto_0
    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final d(FFF)J
    .locals 2

    iget p0, p0, Lt0/j;->d:I

    packed-switch p0, :pswitch_data_0

    invoke-static {p1}, Lt0/j;->g(F)F

    move-result p0

    invoke-static {p2}, Lt0/j;->g(F)F

    move-result p1

    invoke-static {p0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p0

    int-to-long p2, p0

    invoke-static {p1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p0

    int-to-long p0, p0

    const/16 v0, 0x20

    shl-long/2addr p2, v0

    const-wide v0, 0xffffffffL

    and-long/2addr p0, v0

    or-long/2addr p0, p2

    return-wide p0

    :pswitch_0
    const/4 p0, 0x0

    const/high16 p3, 0x42c80000    # 100.0f

    invoke-static {p1, p0, p3}, LG5/d3;->e(FFF)F

    move-result p0

    const/high16 p1, -0x3d000000    # -128.0f

    const/high16 p3, 0x43000000    # 128.0f

    invoke-static {p2, p1, p3}, LG5/d3;->e(FFF)F

    move-result p1

    const/high16 p2, 0x41800000    # 16.0f

    add-float/2addr p0, p2

    const/high16 p2, 0x42e80000    # 116.0f

    div-float/2addr p0, p2

    const p2, 0x3b03126f    # 0.002f

    mul-float/2addr p1, p2

    add-float/2addr p1, p0

    const p2, 0x3e53dcb1

    cmpl-float p3, p1, p2

    const v0, 0x3e0d3dcb

    const v1, 0x3e038027

    if-lez p3, :cond_0

    mul-float p3, p1, p1

    mul-float/2addr p3, p1

    goto :goto_0

    :cond_0
    sub-float/2addr p1, v0

    mul-float p3, p1, v1

    :goto_0
    cmpl-float p1, p0, p2

    if-lez p1, :cond_1

    mul-float p1, p0, p0

    mul-float/2addr p1, p0

    goto :goto_1

    :cond_1
    sub-float/2addr p0, v0

    mul-float p1, p0, v1

    :goto_1
    sget-object p0, Lt0/i;->e:[F

    const/4 p2, 0x0

    aget p2, p0, p2

    mul-float/2addr p3, p2

    const/4 p2, 0x1

    aget p0, p0, p2

    mul-float/2addr p1, p0

    invoke-static {p3}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p0

    int-to-long p2, p0

    invoke-static {p1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p0

    int-to-long p0, p0

    const/16 v0, 0x20

    shl-long/2addr p2, v0

    const-wide v0, 0xffffffffL

    and-long/2addr p0, v0

    or-long/2addr p0, p2

    return-wide p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final e(FFF)F
    .locals 0

    iget p0, p0, Lt0/j;->d:I

    packed-switch p0, :pswitch_data_0

    invoke-static {p3}, Lt0/j;->g(F)F

    move-result p0

    return p0

    :pswitch_0
    const/4 p0, 0x0

    const/high16 p2, 0x42c80000    # 100.0f

    invoke-static {p1, p0, p2}, LG5/d3;->e(FFF)F

    move-result p0

    const/high16 p1, -0x3d000000    # -128.0f

    const/high16 p2, 0x43000000    # 128.0f

    invoke-static {p3, p1, p2}, LG5/d3;->e(FFF)F

    move-result p1

    const/high16 p2, 0x41800000    # 16.0f

    add-float/2addr p0, p2

    const/high16 p2, 0x42e80000    # 116.0f

    div-float/2addr p0, p2

    const p2, 0x3ba3d70a    # 0.005f

    mul-float/2addr p1, p2

    sub-float/2addr p0, p1

    const p1, 0x3e53dcb1

    cmpl-float p1, p0, p1

    if-lez p1, :cond_0

    mul-float p1, p0, p0

    mul-float/2addr p1, p0

    goto :goto_0

    :cond_0
    const p1, 0x3e0d3dcb

    sub-float/2addr p0, p1

    const p1, 0x3e038027

    mul-float/2addr p1, p0

    :goto_0
    sget-object p0, Lt0/i;->e:[F

    const/4 p2, 0x2

    aget p0, p0, p2

    mul-float/2addr p1, p0

    return p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final f(FFFFLt0/c;)J
    .locals 8

    iget p0, p0, Lt0/j;->d:I

    packed-switch p0, :pswitch_data_0

    invoke-static {p1}, Lt0/j;->g(F)F

    move-result p0

    invoke-static {p2}, Lt0/j;->g(F)F

    move-result p1

    invoke-static {p3}, Lt0/j;->g(F)F

    move-result p2

    invoke-static {p0, p1, p2, p4, p5}, Ls0/e;->a(FFFFLt0/c;)J

    move-result-wide p0

    return-wide p0

    :pswitch_0
    sget-object p0, Lt0/i;->e:[F

    const/4 v0, 0x0

    aget v0, p0, v0

    div-float/2addr p1, v0

    const/4 v0, 0x1

    aget v0, p0, v0

    div-float/2addr p2, v0

    const/4 v0, 0x2

    aget p0, p0, v0

    div-float/2addr p3, p0

    const p0, 0x3c111aa7

    cmpl-float v0, p1, p0

    const v1, 0x3e0d3dcb

    const v2, 0x40f92f68

    const v3, 0x3eaaaaab

    if-lez v0, :cond_0

    float-to-double v4, p1

    float-to-double v6, v3

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    double-to-float p1, v4

    goto :goto_0

    :cond_0
    mul-float/2addr p1, v2

    add-float/2addr p1, v1

    :goto_0
    cmpl-float v0, p2, p0

    if-lez v0, :cond_1

    float-to-double v4, p2

    float-to-double v6, v3

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    double-to-float p2, v4

    goto :goto_1

    :cond_1
    mul-float/2addr p2, v2

    add-float/2addr p2, v1

    :goto_1
    cmpl-float p0, p3, p0

    if-lez p0, :cond_2

    float-to-double v0, p3

    float-to-double v2, v3

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-float p0, v0

    goto :goto_2

    :cond_2
    mul-float/2addr p3, v2

    add-float p0, p3, v1

    :goto_2
    const/high16 p3, 0x42e80000    # 116.0f

    mul-float/2addr p3, p2

    const/high16 v0, 0x41800000    # 16.0f

    sub-float/2addr p3, v0

    const/high16 v0, 0x43fa0000    # 500.0f

    sub-float/2addr p1, p2

    mul-float/2addr p1, v0

    const/high16 v0, 0x43480000    # 200.0f

    sub-float/2addr p2, p0

    mul-float/2addr p2, v0

    const/4 p0, 0x0

    const/high16 v0, 0x42c80000    # 100.0f

    invoke-static {p3, p0, v0}, LG5/d3;->e(FFF)F

    move-result p0

    const/high16 p3, -0x3d000000    # -128.0f

    const/high16 v0, 0x43000000    # 128.0f

    invoke-static {p1, p3, v0}, LG5/d3;->e(FFF)F

    move-result p1

    invoke-static {p2, p3, v0}, LG5/d3;->e(FFF)F

    move-result p2

    invoke-static {p0, p1, p2, p4, p5}, Ls0/e;->a(FFFFLt0/c;)J

    move-result-wide p0

    return-wide p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
