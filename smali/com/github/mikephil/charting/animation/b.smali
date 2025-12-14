.class public final Lcom/github/mikephil/charting/animation/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/github/mikephil/charting/animation/e;


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lcom/github/mikephil/charting/animation/b;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getInterpolation(F)F
    .locals 10

    iget p0, p0, Lcom/github/mikephil/charting/animation/b;->a:I

    packed-switch p0, :pswitch_data_0

    const/high16 p0, 0x3f800000    # 1.0f

    sub-float/2addr p1, p0

    mul-float v0, p1, p1

    mul-float/2addr v0, p1

    mul-float/2addr v0, p1

    sub-float/2addr v0, p0

    neg-float p0, v0

    return p0

    :pswitch_0
    mul-float p0, p1, p1

    mul-float/2addr p0, p1

    mul-float/2addr p0, p1

    return p0

    :pswitch_1
    const/high16 p0, 0x3f000000    # 0.5f

    div-float/2addr p1, p0

    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    mul-float/2addr p0, p1

    mul-float/2addr p0, p1

    mul-float/2addr p0, p1

    goto :goto_0

    :cond_0
    const/high16 v0, 0x40000000    # 2.0f

    sub-float/2addr p1, v0

    mul-float v1, p1, p1

    mul-float/2addr v1, p1

    add-float/2addr v1, v0

    mul-float/2addr p0, v1

    :goto_0
    return p0

    :pswitch_2
    const/high16 p0, 0x3f800000    # 1.0f

    sub-float/2addr p1, p0

    mul-float v0, p1, p1

    mul-float/2addr v0, p1

    add-float/2addr v0, p0

    return v0

    :pswitch_3
    mul-float p0, p1, p1

    mul-float/2addr p0, p1

    return p0

    :pswitch_4
    const/high16 p0, 0x3f000000    # 0.5f

    div-float/2addr p1, p0

    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float v1, p1, v0

    if-gez v1, :cond_1

    mul-float/2addr p0, p1

    :goto_1
    mul-float/2addr p0, p1

    goto :goto_2

    :cond_1
    sub-float/2addr p1, v0

    const/high16 p0, 0x40000000    # 2.0f

    sub-float p0, p1, p0

    mul-float/2addr p0, p1

    sub-float/2addr p0, v0

    const/high16 p1, -0x41000000    # -0.5f

    goto :goto_1

    :goto_2
    return p0

    :pswitch_5
    neg-float p0, p1

    const/high16 v0, 0x40000000    # 2.0f

    sub-float/2addr p1, v0

    mul-float/2addr p1, p0

    return p1

    :pswitch_6
    mul-float/2addr p1, p1

    return p1

    :pswitch_7
    const/high16 p0, 0x3f000000    # 0.5f

    cmpg-float v0, p1, p0

    const/high16 v1, 0x40000000    # 2.0f

    if-gez v0, :cond_2

    sget-object v0, Lcom/github/mikephil/charting/animation/c;->z:Lcom/github/mikephil/charting/animation/b;

    mul-float/2addr p1, v1

    invoke-virtual {v0, p1}, Lcom/github/mikephil/charting/animation/b;->getInterpolation(F)F

    move-result p1

    mul-float/2addr p1, p0

    goto :goto_5

    :cond_2
    mul-float/2addr p1, v1

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr p1, v0

    const v0, 0x3eba2e8c

    cmpg-float v0, p1, v0

    const/high16 v1, 0x40f20000    # 7.5625f

    if-gez v0, :cond_3

    mul-float/2addr v1, p1

    mul-float/2addr v1, p1

    goto :goto_4

    :cond_3
    const v0, 0x3f3a2e8c

    cmpg-float v0, p1, v0

    if-gez v0, :cond_4

    const v0, 0x3f0ba2e9

    sub-float/2addr p1, v0

    mul-float/2addr v1, p1

    mul-float/2addr v1, p1

    const/high16 p1, 0x3f400000    # 0.75f

    :goto_3
    add-float/2addr v1, p1

    goto :goto_4

    :cond_4
    const v0, 0x3f68ba2f

    cmpg-float v0, p1, v0

    if-gez v0, :cond_5

    const v0, 0x3f51745d

    sub-float/2addr p1, v0

    mul-float/2addr v1, p1

    mul-float/2addr v1, p1

    const/high16 p1, 0x3f700000    # 0.9375f

    goto :goto_3

    :cond_5
    const v0, 0x3f745d17

    sub-float/2addr p1, v0

    mul-float/2addr v1, p1

    mul-float/2addr v1, p1

    const/high16 p1, 0x3f7c0000    # 0.984375f

    goto :goto_3

    :goto_4
    mul-float/2addr v1, p0

    add-float p1, v1, p0

    :goto_5
    return p1

    :pswitch_8
    const p0, 0x3eba2e8c

    cmpg-float p0, p1, p0

    const/high16 v0, 0x40f20000    # 7.5625f

    if-gez p0, :cond_6

    mul-float/2addr v0, p1

    mul-float/2addr v0, p1

    goto :goto_7

    :cond_6
    const p0, 0x3f3a2e8c

    cmpg-float p0, p1, p0

    if-gez p0, :cond_7

    const p0, 0x3f0ba2e9

    sub-float/2addr p1, p0

    mul-float/2addr v0, p1

    mul-float/2addr v0, p1

    const/high16 p0, 0x3f400000    # 0.75f

    :goto_6
    add-float/2addr v0, p0

    goto :goto_7

    :cond_7
    const p0, 0x3f68ba2f

    cmpg-float p0, p1, p0

    if-gez p0, :cond_8

    const p0, 0x3f51745d

    sub-float/2addr p1, p0

    mul-float/2addr v0, p1

    mul-float/2addr v0, p1

    const/high16 p0, 0x3f700000    # 0.9375f

    goto :goto_6

    :cond_8
    const p0, 0x3f745d17

    sub-float/2addr p1, p0

    mul-float/2addr v0, p1

    mul-float/2addr v0, p1

    const/high16 p0, 0x3f7c0000    # 0.984375f

    goto :goto_6

    :goto_7
    return v0

    :pswitch_9
    const/high16 p0, 0x3f800000    # 1.0f

    sub-float p1, p0, p1

    const v0, 0x3eba2e8c

    cmpg-float v0, p1, v0

    const/high16 v1, 0x40f20000    # 7.5625f

    if-gez v0, :cond_9

    mul-float/2addr v1, p1

    mul-float/2addr v1, p1

    goto :goto_9

    :cond_9
    const v0, 0x3f3a2e8c

    cmpg-float v0, p1, v0

    if-gez v0, :cond_a

    const v0, 0x3f0ba2e9

    sub-float/2addr p1, v0

    mul-float/2addr v1, p1

    mul-float/2addr v1, p1

    const/high16 p1, 0x3f400000    # 0.75f

    :goto_8
    add-float/2addr v1, p1

    goto :goto_9

    :cond_a
    const v0, 0x3f68ba2f

    cmpg-float v0, p1, v0

    if-gez v0, :cond_b

    const v0, 0x3f51745d

    sub-float/2addr p1, v0

    mul-float/2addr v1, p1

    mul-float/2addr v1, p1

    const/high16 p1, 0x3f700000    # 0.9375f

    goto :goto_8

    :cond_b
    const v0, 0x3f745d17

    sub-float/2addr p1, v0

    mul-float/2addr v1, p1

    mul-float/2addr v1, p1

    const/high16 p1, 0x3f7c0000    # 0.984375f

    goto :goto_8

    :goto_9
    sub-float/2addr p0, v1

    return p0

    :pswitch_a
    const/high16 p0, 0x3f000000    # 0.5f

    div-float/2addr p1, p0

    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float v0, p1, v0

    const v1, 0x406612ff

    const v2, 0x402612ff

    if-gez v0, :cond_c

    mul-float v0, p1, p1

    mul-float/2addr v1, p1

    sub-float/2addr v1, v2

    mul-float/2addr v1, v0

    :goto_a
    mul-float/2addr v1, p0

    goto :goto_b

    :cond_c
    const/high16 v0, 0x40000000    # 2.0f

    sub-float/2addr p1, v0

    mul-float v3, p1, p1

    mul-float/2addr v1, p1

    add-float/2addr v1, v2

    mul-float/2addr v1, v3

    add-float/2addr v1, v0

    goto :goto_a

    :goto_b
    return v1

    :pswitch_b
    const/high16 p0, 0x3f800000    # 1.0f

    sub-float/2addr p1, p0

    mul-float v0, p1, p1

    const v1, 0x402ce6b0

    mul-float/2addr p1, v1

    const v1, 0x3fd9cd60

    add-float/2addr p1, v1

    mul-float/2addr p1, v0

    add-float/2addr p1, p0

    return p1

    :pswitch_c
    mul-float p0, p1, p1

    const v0, 0x402ce6b0

    mul-float/2addr p1, v0

    const v0, 0x3fd9cd60

    sub-float/2addr p1, v0

    mul-float/2addr p1, p0

    return p1

    :pswitch_d
    const/4 p0, 0x0

    cmpl-float v0, p1, p0

    if-nez v0, :cond_d

    goto :goto_c

    :cond_d
    const/high16 p0, 0x3f000000    # 0.5f

    div-float/2addr p1, p0

    const/high16 v0, 0x40000000    # 2.0f

    cmpl-float v0, p1, v0

    const/high16 v1, 0x3f800000    # 1.0f

    if-nez v0, :cond_e

    move p0, v1

    goto :goto_c

    :cond_e
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    invoke-static {v2, v3}, Ljava/lang/Math;->asin(D)D

    move-result-wide v2

    double-to-float v0, v2

    const v2, 0x3d92ad5d

    mul-float/2addr v2, v0

    cmpg-float v0, p1, v1

    const-wide v3, 0x401921fb54442d18L    # 6.283185307179586

    const-wide/high16 v5, 0x4000000000000000L    # 2.0

    const v7, 0x3ee66667    # 0.45000002f

    if-gez v0, :cond_f

    sub-float/2addr p1, v1

    const/high16 p0, 0x41200000    # 10.0f

    mul-float/2addr p0, p1

    float-to-double v8, p0

    invoke-static {v5, v6, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v5

    double-to-float p0, v5

    mul-float/2addr p1, v1

    sub-float/2addr p1, v2

    float-to-double v0, p1

    mul-double/2addr v0, v3

    float-to-double v2, v7

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    double-to-float p1, v0

    mul-float/2addr p0, p1

    const/high16 p1, -0x41000000    # -0.5f

    mul-float/2addr p0, p1

    goto :goto_c

    :cond_f
    sub-float/2addr p1, v1

    const/high16 v0, -0x3ee00000    # -10.0f

    mul-float/2addr v0, p1

    float-to-double v8, v0

    invoke-static {v5, v6, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v5

    double-to-float v0, v5

    mul-float/2addr p1, v1

    sub-float/2addr p1, v2

    float-to-double v5, p1

    mul-double/2addr v5, v3

    float-to-double v2, v7

    div-double/2addr v5, v2

    invoke-static {v5, v6}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    double-to-float p1, v2

    mul-float/2addr v0, p1

    mul-float/2addr v0, p0

    add-float p0, v0, v1

    :goto_c
    return p0

    :pswitch_e
    const/4 p0, 0x0

    cmpl-float v0, p1, p0

    if-nez v0, :cond_10

    goto :goto_d

    :cond_10
    const/high16 p0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, p0

    if-nez v0, :cond_11

    goto :goto_d

    :cond_11
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    invoke-static {v0, v1}, Ljava/lang/Math;->asin(D)D

    move-result-wide v0

    double-to-float v0, v0

    const v1, 0x3d4391d1

    mul-float/2addr v1, v0

    const/high16 v0, -0x3ee00000    # -10.0f

    mul-float/2addr v0, p1

    float-to-double v2, v0

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    double-to-float v0, v2

    sub-float/2addr p1, v1

    float-to-double v1, p1

    const-wide v3, 0x401921fb54442d18L    # 6.283185307179586

    mul-double/2addr v1, v3

    const p1, 0x3e99999a    # 0.3f

    float-to-double v3, p1

    div-double/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->sin(D)D

    move-result-wide v1

    double-to-float p1, v1

    mul-float/2addr v0, p1

    add-float/2addr p0, v0

    :goto_d
    return p0

    :pswitch_f
    const/4 p0, 0x0

    cmpl-float v0, p1, p0

    if-nez v0, :cond_12

    goto :goto_e

    :cond_12
    const/high16 p0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, p0

    if-nez v0, :cond_13

    goto :goto_e

    :cond_13
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    invoke-static {v0, v1}, Ljava/lang/Math;->asin(D)D

    move-result-wide v0

    double-to-float v0, v0

    const v1, 0x3d4391d1

    mul-float/2addr v1, v0

    sub-float/2addr p1, p0

    const/high16 p0, 0x41200000    # 10.0f

    mul-float/2addr p0, p1

    float-to-double v2, p0

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    double-to-float p0, v2

    sub-float/2addr p1, v1

    float-to-double v0, p1

    const-wide v2, 0x401921fb54442d18L    # 6.283185307179586

    mul-double/2addr v0, v2

    const p1, 0x3e99999a    # 0.3f

    float-to-double v2, p1

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    double-to-float p1, v0

    mul-float/2addr p0, p1

    neg-float p0, p0

    :goto_e
    return p0

    :pswitch_10
    return p1

    :pswitch_11
    const/high16 p0, 0x3f000000    # 0.5f

    div-float/2addr p1, p0

    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float v1, p1, v0

    if-gez v1, :cond_14

    mul-float/2addr p1, p1

    sub-float p0, v0, p1

    float-to-double p0, p0

    invoke-static {p0, p1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p0

    double-to-float p0, p0

    sub-float/2addr p0, v0

    const/high16 p1, -0x41000000    # -0.5f

    mul-float/2addr p0, p1

    goto :goto_f

    :cond_14
    const/high16 v1, 0x40000000    # 2.0f

    sub-float/2addr p1, v1

    mul-float/2addr p1, p1

    sub-float p1, v0, p1

    float-to-double v1, p1

    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    double-to-float p1, v1

    add-float/2addr p1, v0

    mul-float/2addr p0, p1

    :goto_f
    return p0

    :pswitch_12
    const/high16 p0, 0x3f800000    # 1.0f

    sub-float/2addr p1, p0

    mul-float/2addr p1, p1

    sub-float/2addr p0, p1

    float-to-double p0, p0

    invoke-static {p0, p1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p0

    double-to-float p0, p0

    return p0

    :pswitch_13
    mul-float/2addr p1, p1

    const/high16 p0, 0x3f800000    # 1.0f

    sub-float p1, p0, p1

    float-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float p1, v0

    sub-float/2addr p1, p0

    neg-float p0, p1

    return p0

    :pswitch_14
    const/4 p0, 0x0

    cmpl-float v0, p1, p0

    if-nez v0, :cond_15

    goto :goto_11

    :cond_15
    const/high16 p0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, p0

    if-nez v0, :cond_16

    goto :goto_11

    :cond_16
    const/high16 v0, 0x3f000000    # 0.5f

    div-float/2addr p1, v0

    cmpg-float v1, p1, p0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    if-gez v1, :cond_17

    const/high16 v1, 0x41200000    # 10.0f

    sub-float/2addr p1, p0

    mul-float/2addr p1, v1

    float-to-double p0, p1

    invoke-static {v2, v3, p0, p1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p0

    double-to-float p0, p0

    :goto_10
    mul-float/2addr p0, v0

    goto :goto_11

    :cond_17
    const/high16 v1, -0x3ee00000    # -10.0f

    sub-float/2addr p1, p0

    mul-float/2addr p1, v1

    float-to-double p0, p1

    invoke-static {v2, v3, p0, p1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p0

    double-to-float p0, p0

    neg-float p0, p0

    const/high16 p1, 0x40000000    # 2.0f

    add-float/2addr p0, p1

    goto :goto_10

    :goto_11
    return p0

    :pswitch_15
    const/high16 p0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, p0

    if-nez v0, :cond_18

    goto :goto_12

    :cond_18
    const/high16 v0, -0x3ee00000    # -10.0f

    add-float/2addr p1, p0

    mul-float/2addr p1, v0

    float-to-double p0, p1

    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    invoke-static {v0, v1, p0, p1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p0

    double-to-float p0, p0

    neg-float p0, p0

    :goto_12
    return p0

    :pswitch_16
    const/4 p0, 0x0

    cmpl-float v0, p1, p0

    if-nez v0, :cond_19

    goto :goto_13

    :cond_19
    const/high16 p0, 0x3f800000    # 1.0f

    sub-float/2addr p1, p0

    const/high16 p0, 0x41200000    # 10.0f

    mul-float/2addr p1, p0

    float-to-double p0, p1

    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    invoke-static {v0, v1, p0, p1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p0

    double-to-float p0, p0

    :goto_13
    return p0

    :pswitch_17
    const-wide v0, 0x400921fb54442d18L    # Math.PI

    float-to-double p0, p1

    mul-double/2addr p0, v0

    invoke-static {p0, p1}, Ljava/lang/Math;->cos(D)D

    move-result-wide p0

    double-to-float p0, p0

    const/high16 p1, 0x3f800000    # 1.0f

    sub-float/2addr p0, p1

    const/high16 p1, -0x41000000    # -0.5f

    mul-float/2addr p0, p1

    return p0

    :pswitch_18
    float-to-double p0, p1

    const-wide v0, 0x3ff921fb54442d18L    # 1.5707963267948966

    mul-double/2addr p0, v0

    invoke-static {p0, p1}, Ljava/lang/Math;->sin(D)D

    move-result-wide p0

    double-to-float p0, p0

    return p0

    :pswitch_19
    float-to-double p0, p1

    const-wide v0, 0x3ff921fb54442d18L    # 1.5707963267948966

    mul-double/2addr p0, v0

    invoke-static {p0, p1}, Ljava/lang/Math;->cos(D)D

    move-result-wide p0

    double-to-float p0, p0

    neg-float p0, p0

    const/high16 p1, 0x3f800000    # 1.0f

    add-float/2addr p0, p1

    return p0

    :pswitch_1a
    const/high16 p0, 0x3f000000    # 0.5f

    div-float/2addr p1, p0

    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float v0, p1, v0

    if-gez v0, :cond_1a

    mul-float/2addr p0, p1

    mul-float/2addr p0, p1

    mul-float/2addr p0, p1

    mul-float/2addr p0, p1

    goto :goto_14

    :cond_1a
    const/high16 p0, 0x40000000    # 2.0f

    sub-float/2addr p1, p0

    mul-float v0, p1, p1

    mul-float/2addr v0, p1

    mul-float/2addr v0, p1

    sub-float/2addr v0, p0

    const/high16 p0, -0x41000000    # -0.5f

    mul-float/2addr p0, v0

    :goto_14
    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
