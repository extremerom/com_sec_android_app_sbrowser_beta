.class public final Lg2/e;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:J

.field public final b:J

.field public final c:J

.field public final d:J

.field public final e:J

.field public final f:F

.field public final g:F

.field public final h:F

.field public i:J


# direct methods
.method public constructor <init>(JJJLP/d;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lg2/e;->a:J

    iput-wide p3, p0, Lg2/e;->b:J

    iput-wide p5, p0, Lg2/e;->c:J

    invoke-static {p1, p2, p3, p4}, LG5/s3;->j(JJ)J

    move-result-wide p1

    invoke-static {p1, p2}, LG5/s3;->e(J)J

    move-result-wide p1

    iput-wide p1, p0, Lg2/e;->d:J

    invoke-static {p5, p6, p3, p4}, LG5/s3;->j(JJ)J

    move-result-wide p3

    invoke-static {p3, p4}, LG5/s3;->e(J)J

    move-result-wide p3

    iput-wide p3, p0, Lg2/e;->e:J

    iget p5, p7, LP/d;->a:F

    iput p5, p0, Lg2/e;->f:F

    iget p6, p7, LP/d;->b:F

    iput p6, p0, Lg2/e;->g:F

    invoke-static {p1, p2, p3, p4}, LG5/s3;->c(JJ)F

    move-result p1

    const/4 p2, 0x1

    int-to-float p2, p2

    sget p3, Lg2/f;->b:F

    mul-float p3, p1, p1

    sub-float p3, p2, p3

    float-to-double p3, p3

    invoke-static {p3, p4}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p3

    double-to-float p3, p3

    float-to-double p6, p3

    const-wide v0, 0x3f50624dd2f1a9fcL    # 0.001

    cmpl-double p4, p6, v0

    const/4 p6, 0x0

    if-lez p4, :cond_0

    add-float/2addr p1, p2

    mul-float/2addr p1, p5

    div-float/2addr p1, p3

    goto :goto_0

    :cond_0
    move p1, p6

    :goto_0
    iput p1, p0, Lg2/e;->h:F

    invoke-static {p6, p6}, LN/i;->a(FF)J

    move-result-wide p1

    iput-wide p1, p0, Lg2/e;->i:J

    return-void
.end method

.method public static b(FFJJJJJF)Lg2/a;
    .locals 16

    move/from16 v0, p1

    move-wide/from16 v1, p2

    move-wide/from16 v3, p4

    move-wide/from16 v5, p10

    invoke-static {v3, v4, v1, v2}, LG5/s3;->j(JJ)J

    move-result-wide v7

    invoke-static {v7, v8}, LG5/s3;->e(J)J

    move-result-wide v7

    move/from16 v9, p0

    invoke-static {v7, v8, v9}, LG5/s3;->l(JF)J

    move-result-wide v9

    const/4 v11, 0x1

    int-to-float v12, v11

    add-float/2addr v12, v0

    invoke-static {v9, v10, v12}, LG5/s3;->l(JF)J

    move-result-wide v9

    invoke-static {v1, v2, v9, v10}, LG5/s3;->k(JJ)J

    move-result-wide v1

    invoke-static/range {p6 .. p9}, LG5/s3;->k(JJ)J

    move-result-wide v9

    const/high16 v12, 0x40000000    # 2.0f

    invoke-static {v9, v10, v12}, LG5/s3;->b(JF)J

    move-result-wide v9

    invoke-static/range {p6 .. p7}, LG5/s3;->h(J)F

    move-result v13

    invoke-static {v9, v10}, LG5/s3;->h(J)F

    move-result v14

    invoke-static {v13, v14, v0}, Lg2/f;->b(FFF)F

    move-result v13

    invoke-static/range {p6 .. p7}, LG5/s3;->i(J)F

    move-result v14

    invoke-static {v9, v10}, LG5/s3;->i(J)F

    move-result v9

    invoke-static {v14, v9, v0}, Lg2/f;->b(FFF)F

    move-result v0

    invoke-static {v13, v0}, LN/i;->a(FF)J

    move-result-wide v9

    invoke-static {v9, v10}, LG5/s3;->h(J)F

    move-result v0

    invoke-static/range {p10 .. p11}, LG5/s3;->h(J)F

    move-result v13

    sub-float/2addr v0, v13

    invoke-static {v9, v10}, LG5/s3;->i(J)F

    move-result v9

    invoke-static/range {p10 .. p11}, LG5/s3;->i(J)F

    move-result v10

    sub-float/2addr v9, v10

    invoke-static {v0, v9}, Lg2/f;->a(FF)J

    move-result-wide v9

    move/from16 v0, p12

    invoke-static {v9, v10, v0}, LG5/s3;->l(JF)J

    move-result-wide v9

    invoke-static {v5, v6, v9, v10}, LG5/s3;->k(JJ)J

    move-result-wide v9

    invoke-static {v9, v10, v5, v6}, LG5/s3;->j(JJ)J

    move-result-wide v5

    invoke-static {v5, v6}, LG5/s3;->i(J)F

    move-result v0

    neg-float v0, v0

    invoke-static {v5, v6}, LG5/s3;->h(J)F

    move-result v5

    invoke-static {v0, v5}, LN/i;->a(FF)J

    move-result-wide v5

    invoke-static {v5, v6}, LG5/s3;->i(J)F

    move-result v0

    neg-float v0, v0

    invoke-static {v5, v6}, LG5/s3;->h(J)F

    move-result v5

    invoke-static {v0, v5}, LN/i;->a(FF)J

    move-result-wide v5

    invoke-static {v7, v8, v5, v6}, LG5/s3;->c(JJ)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v13

    const v14, 0x38d1b717    # 1.0E-4f

    cmpg-float v13, v13, v14

    const/4 v15, 0x0

    if-gez v13, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {v9, v10, v3, v4}, LG5/s3;->j(JJ)J

    move-result-wide v11

    invoke-static {v11, v12, v5, v6}, LG5/s3;->c(JJ)F

    move-result v5

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v6

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v11

    mul-float/2addr v11, v14

    cmpg-float v6, v6, v11

    if-gez v6, :cond_1

    goto :goto_0

    :cond_1
    div-float/2addr v5, v0

    invoke-static {v7, v8, v5}, LG5/s3;->l(JF)J

    move-result-wide v5

    invoke-static {v3, v4, v5, v6}, LG5/s3;->k(JJ)J

    move-result-wide v3

    new-instance v15, LN/i;

    invoke-direct {v15, v3, v4}, LN/i;-><init>(J)V

    :goto_0
    if-eqz v15, :cond_2

    iget-wide v3, v15, LN/i;->a:J

    :goto_1
    const/high16 v0, 0x40000000    # 2.0f

    goto :goto_2

    :cond_2
    move-wide/from16 v3, p6

    goto :goto_1

    :goto_2
    invoke-static {v3, v4, v0}, LG5/s3;->l(JF)J

    move-result-wide v5

    invoke-static {v1, v2, v5, v6}, LG5/s3;->k(JJ)J

    move-result-wide v5

    const/high16 v0, 0x40400000    # 3.0f

    invoke-static {v5, v6, v0}, LG5/s3;->b(JF)J

    move-result-wide v5

    new-instance v0, Lg2/a;

    invoke-static {v1, v2}, LG5/s3;->h(J)F

    move-result v7

    invoke-static {v1, v2}, LG5/s3;->i(J)F

    move-result v1

    invoke-static {v5, v6}, LG5/s3;->h(J)F

    move-result v2

    invoke-static {v5, v6}, LG5/s3;->i(J)F

    move-result v5

    invoke-static {v3, v4}, LG5/s3;->h(J)F

    move-result v6

    invoke-static {v3, v4}, LG5/s3;->i(J)F

    move-result v3

    invoke-static {v9, v10}, LG5/s3;->h(J)F

    move-result v4

    invoke-static {v9, v10}, LG5/s3;->i(J)F

    move-result v8

    const/16 v9, 0x8

    new-array v9, v9, [F

    const/4 v10, 0x0

    aput v7, v9, v10

    const/4 v7, 0x1

    aput v1, v9, v7

    const/4 v1, 0x2

    aput v2, v9, v1

    const/4 v1, 0x3

    aput v5, v9, v1

    const/4 v1, 0x4

    aput v6, v9, v1

    const/4 v1, 0x5

    aput v3, v9, v1

    const/4 v1, 0x6

    aput v4, v9, v1

    const/4 v1, 0x7

    aput v8, v9, v1

    invoke-direct {v0, v9}, Lg2/a;-><init>([F)V

    return-object v0
.end method


# virtual methods
.method public final a(F)F
    .locals 3

    invoke-virtual {p0}, Lg2/e;->c()F

    move-result v0

    cmpl-float v0, p1, v0

    iget v1, p0, Lg2/e;->g:F

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    iget v0, p0, Lg2/e;->h:F

    cmpl-float v2, p1, v0

    if-lez v2, :cond_1

    sub-float/2addr p1, v0

    mul-float/2addr p1, v1

    invoke-virtual {p0}, Lg2/e;->c()F

    move-result p0

    sub-float/2addr p0, v0

    div-float v1, p1, p0

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public final c()F
    .locals 2

    const/4 v0, 0x1

    int-to-float v0, v0

    iget v1, p0, Lg2/e;->g:F

    add-float/2addr v0, v1

    iget p0, p0, Lg2/e;->h:F

    mul-float/2addr v0, p0

    return v0
.end method
