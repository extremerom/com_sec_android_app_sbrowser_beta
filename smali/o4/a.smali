.class public final Lo4/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:I

.field public final b:[F

.field public c:F

.field public d:F

.field public final e:Z

.field public f:F


# direct methods
.method public constructor <init>(IZ)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lo4/a;->c:F

    iput v0, p0, Lo4/a;->d:F

    const/4 v1, 0x0

    iput v1, p0, Lo4/a;->a:I

    new-array p1, p1, [F

    iput-object p1, p0, Lo4/a;->b:[F

    iput v0, p0, Lo4/a;->f:F

    iput-boolean p2, p0, Lo4/a;->e:Z

    return-void
.end method


# virtual methods
.method public final a(FFFF)V
    .locals 3

    iget v0, p0, Lo4/a;->a:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lo4/a;->a:I

    iget-object v2, p0, Lo4/a;->b:[F

    aput p1, v2, v0

    add-int/lit8 p1, v0, 0x2

    iput p1, p0, Lo4/a;->a:I

    aput p2, v2, v1

    add-int/lit8 p2, v0, 0x3

    iput p2, p0, Lo4/a;->a:I

    aput p3, v2, p1

    add-int/lit8 v0, v0, 0x4

    iput v0, p0, Lo4/a;->a:I

    aput p4, v2, p2

    return-void
.end method

.method public final b(Lv4/a;)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    check-cast v1, Lr4/b;

    iget-object v2, v1, Lr4/b;->o:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    int-to-float v2, v2

    iget v3, v0, Lo4/a;->c:F

    mul-float/2addr v2, v3

    iget v3, v0, Lo4/a;->f:F

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    const/4 v5, 0x0

    :goto_0
    int-to-float v6, v5

    cmpg-float v6, v6, v2

    if-gez v6, :cond_c

    iget-object v6, v1, Lr4/b;->o:Ljava/util/ArrayList;

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/github/mikephil/charting/data/Entry;

    check-cast v6, Lcom/github/mikephil/charting/data/BarEntry;

    if-nez v6, :cond_0

    goto/16 :goto_9

    :cond_0
    iget v7, v6, Lcom/github/mikephil/charting/data/Entry;->c:F

    iget v8, v6, Lcom/github/mikephil/charting/data/Entry;->a:F

    iget-boolean v9, v0, Lo4/a;->e:Z

    const/4 v10, 0x0

    if-eqz v9, :cond_7

    iget-object v9, v6, Lcom/github/mikephil/charting/data/BarEntry;->d:[F

    if-nez v9, :cond_1

    goto :goto_5

    :cond_1
    iget v6, v6, Lcom/github/mikephil/charting/data/BarEntry;->f:F

    neg-float v6, v6

    move v11, v10

    const/4 v8, 0x0

    :goto_1
    array-length v12, v9

    if-ge v8, v12, :cond_b

    aget v12, v9, v8

    cmpl-float v13, v12, v10

    if-nez v13, :cond_3

    cmpl-float v14, v11, v10

    if-eqz v14, :cond_2

    cmpl-float v14, v6, v10

    if-nez v14, :cond_3

    :cond_2
    move v13, v12

    move v12, v6

    move v6, v13

    goto :goto_2

    :cond_3
    if-ltz v13, :cond_4

    add-float/2addr v12, v11

    move v13, v12

    move v12, v6

    move v6, v11

    move v11, v13

    goto :goto_2

    :cond_4
    invoke-static {v12}, Ljava/lang/Math;->abs(F)F

    move-result v13

    add-float/2addr v13, v6

    invoke-static {v12}, Ljava/lang/Math;->abs(F)F

    move-result v12

    add-float/2addr v12, v6

    :goto_2
    sub-float v14, v7, v3

    add-float v15, v7, v3

    cmpl-float v16, v6, v13

    if-ltz v16, :cond_5

    move/from16 v16, v6

    goto :goto_3

    :cond_5
    move/from16 v16, v13

    :goto_3
    cmpg-float v17, v6, v13

    if-gtz v17, :cond_6

    goto :goto_4

    :cond_6
    move v6, v13

    :goto_4
    iget v13, v0, Lo4/a;->d:F

    mul-float v4, v16, v13

    mul-float/2addr v6, v13

    invoke-virtual {v0, v14, v4, v15, v6}, Lo4/a;->a(FFFF)V

    add-int/lit8 v8, v8, 0x1

    move v6, v12

    goto :goto_1

    :cond_7
    :goto_5
    sub-float v4, v7, v3

    add-float/2addr v7, v3

    cmpl-float v6, v8, v10

    if-ltz v6, :cond_8

    move v6, v8

    goto :goto_6

    :cond_8
    move v6, v10

    :goto_6
    cmpg-float v9, v8, v10

    if-gtz v9, :cond_9

    goto :goto_7

    :cond_9
    move v8, v10

    :goto_7
    cmpl-float v9, v6, v10

    if-lez v9, :cond_a

    iget v9, v0, Lo4/a;->d:F

    mul-float/2addr v6, v9

    goto :goto_8

    :cond_a
    iget v9, v0, Lo4/a;->d:F

    mul-float/2addr v8, v9

    :goto_8
    invoke-virtual {v0, v4, v6, v7, v8}, Lo4/a;->a(FFFF)V

    :cond_b
    :goto_9
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    :cond_c
    const/4 v4, 0x0

    iput v4, v0, Lo4/a;->a:I

    return-void
.end method
