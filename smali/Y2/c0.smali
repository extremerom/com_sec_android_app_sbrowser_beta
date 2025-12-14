.class public final LY2/c0;
.super LY2/h0;
.source "SourceFile"

# interfaces
.implements LY2/l0;
.implements Lr1/d;


# instance fields
.field public a:J

.field public b:Z

.field public c:Z

.field public d:Lr1/f;

.field public final e:LG5/g4;

.field public f:Landroidx/fragment/app/j;

.field public final synthetic g:LY2/f0;


# direct methods
.method public constructor <init>(LY2/f0;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LY2/c0;->g:LY2/f0;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, LY2/c0;->a:J

    new-instance p1, LG5/g4;

    const/4 v0, 0x6

    const/4 v1, 0x0

    invoke-direct {p1, v0, v1}, LG5/g4;-><init>(IZ)V

    const/16 v0, 0x14

    new-array v1, v0, [J

    iput-object v1, p1, LG5/g4;->c:Ljava/lang/Object;

    new-array v0, v0, [F

    iput-object v0, p1, LG5/g4;->d:Ljava/lang/Object;

    const/4 v0, 0x0

    iput v0, p1, LG5/g4;->b:I

    const-wide/high16 v2, -0x8000000000000000L

    invoke-static {v1, v2, v3}, Ljava/util/Arrays;->fill([JJ)V

    iput-object p1, p0, LY2/c0;->e:LG5/g4;

    return-void
.end method


# virtual methods
.method public final c(Lr1/e;FF)V
    .locals 4

    iget-object p1, p0, LY2/c0;->g:LY2/f0;

    invoke-virtual {p1}, LY2/f0;->getTotalDurationMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    float-to-double p2, p2

    invoke-static {p2, p3}, Ljava/lang/Math;->round(D)J

    move-result-wide p2

    invoke-static {v0, v1, p2, p3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p2

    const-wide/16 v0, -0x1

    invoke-static {v0, v1, p2, p3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p2

    iget-wide v0, p0, LY2/c0;->a:J

    invoke-virtual {p1, p2, p3, v0, v1}, LY2/f0;->setCurrentPlayTimeMillis(JJ)V

    iput-wide p2, p0, LY2/c0;->a:J

    return-void
.end method

.method public final d()V
    .locals 20

    move-object/from16 v0, p0

    iget-object v1, v0, LY2/c0;->d:Lr1/f;

    if-eqz v1, :cond_0

    return-void

    :cond_0
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v1

    iget-wide v3, v0, LY2/c0;->a:J

    long-to-float v3, v3

    iget-object v4, v0, LY2/c0;->e:LG5/g4;

    iget v5, v4, LG5/g4;->b:I

    add-int/lit8 v5, v5, 0x1

    const/16 v6, 0x14

    rem-int/2addr v5, v6

    iput v5, v4, LG5/g4;->b:I

    iget-object v7, v4, LG5/g4;->c:Ljava/lang/Object;

    check-cast v7, [J

    aput-wide v1, v7, v5

    iget-object v1, v4, LG5/g4;->d:Ljava/lang/Object;

    check-cast v1, [F

    aput v3, v1, v5

    new-instance v1, Lr1/f;

    new-instance v2, LU/b;

    const/4 v3, 0x4

    const/4 v5, 0x0

    invoke-direct {v2, v3, v5}, LU/b;-><init>(IB)V

    invoke-direct {v1, v2}, Lr1/f;-><init>(LU/b;)V

    iput-object v1, v0, LY2/c0;->d:Lr1/f;

    new-instance v1, Lr1/g;

    invoke-direct {v1}, Lr1/g;-><init>()V

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2}, Lr1/g;->a(F)V

    const/high16 v2, 0x43480000    # 200.0f

    invoke-virtual {v1, v2}, Lr1/g;->b(F)V

    iget-object v2, v0, LY2/c0;->d:Lr1/f;

    iput-object v1, v2, Lr1/f;->u:Lr1/g;

    iget-wide v7, v0, LY2/c0;->a:J

    long-to-float v1, v7

    invoke-virtual {v2, v1}, Lr1/e;->e(F)V

    iget-object v1, v0, LY2/c0;->d:Lr1/f;

    invoke-virtual {v1, v0}, Lr1/e;->b(Lr1/d;)V

    iget-object v1, v0, LY2/c0;->d:Lr1/f;

    iget v2, v4, LG5/g4;->b:I

    iget-object v3, v4, LG5/g4;->c:Ljava/lang/Object;

    check-cast v3, [J

    const-wide/high16 v7, -0x8000000000000000L

    const/4 v5, 0x0

    if-nez v2, :cond_1

    aget-wide v9, v3, v2

    cmp-long v9, v9, v7

    if-nez v9, :cond_1

    goto/16 :goto_6

    :cond_1
    aget-wide v9, v3, v2

    const/4 v11, 0x0

    move-wide v12, v9

    :goto_0
    aget-wide v14, v3, v2

    cmp-long v16, v14, v7

    if-nez v16, :cond_2

    goto :goto_1

    :cond_2
    sub-long v7, v9, v14

    long-to-float v7, v7

    sub-long v12, v14, v12

    invoke-static {v12, v13}, Ljava/lang/Math;->abs(J)J

    move-result-wide v12

    long-to-float v8, v12

    const/high16 v12, 0x42c80000    # 100.0f

    cmpl-float v7, v7, v12

    if-gtz v7, :cond_6

    const/high16 v7, 0x42200000    # 40.0f

    cmpl-float v7, v8, v7

    if-lez v7, :cond_3

    goto :goto_1

    :cond_3
    if-nez v2, :cond_4

    move v2, v6

    :cond_4
    add-int/lit8 v2, v2, -0x1

    add-int/lit8 v11, v11, 0x1

    if-lt v11, v6, :cond_5

    goto :goto_1

    :cond_5
    move-wide v12, v14

    const-wide/high16 v7, -0x8000000000000000L

    goto :goto_0

    :cond_6
    :goto_1
    const/4 v2, 0x2

    if-ge v11, v2, :cond_7

    goto/16 :goto_6

    :cond_7
    iget-object v7, v4, LG5/g4;->d:Ljava/lang/Object;

    check-cast v7, [F

    const/high16 v8, 0x447a0000    # 1000.0f

    if-ne v11, v2, :cond_a

    iget v2, v4, LG5/g4;->b:I

    if-nez v2, :cond_8

    const/16 v4, 0x13

    goto :goto_2

    :cond_8
    add-int/lit8 v4, v2, -0x1

    :goto_2
    aget-wide v9, v3, v2

    aget-wide v11, v3, v4

    sub-long/2addr v9, v11

    long-to-float v3, v9

    cmpl-float v6, v3, v5

    if-nez v6, :cond_9

    goto/16 :goto_6

    :cond_9
    aget v2, v7, v2

    aget v4, v7, v4

    sub-float/2addr v2, v4

    div-float/2addr v2, v3

    :goto_3
    mul-float v5, v2, v8

    goto/16 :goto_6

    :cond_a
    iget v2, v4, LG5/g4;->b:I

    sub-int v4, v2, v11

    add-int/lit8 v4, v4, 0x15

    rem-int/2addr v4, v6

    add-int/lit8 v2, v2, 0x15

    rem-int/2addr v2, v6

    aget-wide v9, v3, v4

    aget v11, v7, v4

    add-int/lit8 v4, v4, 0x1

    rem-int/lit8 v12, v4, 0x14

    move v13, v5

    :goto_4
    const/high16 v14, 0x40000000    # 2.0f

    if-eq v12, v2, :cond_d

    aget-wide v15, v3, v12

    move-object/from16 v17, v7

    sub-long v6, v15, v9

    long-to-float v6, v6

    cmpl-float v7, v6, v5

    if-nez v7, :cond_b

    goto :goto_5

    :cond_b
    aget v7, v17, v12

    invoke-static {v13}, Ljava/lang/Math;->signum(F)F

    move-result v9

    float-to-double v9, v9

    invoke-static {v13}, Ljava/lang/Math;->abs(F)F

    move-result v18

    mul-float v14, v14, v18

    move/from16 v19, v6

    float-to-double v5, v14

    invoke-static {v5, v6}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v5

    mul-double/2addr v5, v9

    double-to-float v5, v5

    sub-float v6, v7, v11

    div-float v6, v6, v19

    sub-float v5, v6, v5

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    mul-float/2addr v6, v5

    add-float/2addr v6, v13

    if-ne v12, v4, :cond_c

    const/high16 v5, 0x3f000000    # 0.5f

    mul-float/2addr v6, v5

    :cond_c
    move v13, v6

    move v11, v7

    move-wide v9, v15

    :goto_5
    add-int/lit8 v12, v12, 0x1

    const/16 v5, 0x14

    rem-int/2addr v12, v5

    move v6, v5

    move-object/from16 v7, v17

    const/4 v5, 0x0

    goto :goto_4

    :cond_d
    invoke-static {v13}, Ljava/lang/Math;->signum(F)F

    move-result v2

    float-to-double v2, v2

    invoke-static {v13}, Ljava/lang/Math;->abs(F)F

    move-result v4

    mul-float/2addr v4, v14

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    mul-double/2addr v4, v2

    double-to-float v2, v4

    goto :goto_3

    :goto_6
    iput v5, v1, Lr1/e;->a:F

    iget-object v1, v0, LY2/c0;->d:Lr1/f;

    iget-object v2, v0, LY2/c0;->g:LY2/f0;

    invoke-virtual {v2}, LY2/f0;->getTotalDurationMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    long-to-float v2, v2

    iput v2, v1, Lr1/e;->g:F

    iget-object v1, v0, LY2/c0;->d:Lr1/f;

    const/high16 v2, -0x40800000    # -1.0f

    iput v2, v1, Lr1/e;->h:F

    const/high16 v2, 0x40800000    # 4.0f

    iput v2, v1, Lr1/e;->j:F

    new-instance v2, LY2/b0;

    invoke-direct {v2, v0}, LY2/b0;-><init>(LY2/c0;)V

    invoke-virtual {v1, v2}, Lr1/e;->a(Lr1/c;)V

    return-void
.end method

.method public final onTransitionCancel(LY2/f0;)V
    .locals 0

    const/4 p1, 0x1

    iput-boolean p1, p0, LY2/c0;->c:Z

    return-void
.end method
