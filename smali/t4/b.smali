.class public Lt4/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lt4/d;


# instance fields
.field public final a:Lcom/github/mikephil/charting/charts/BarChart;

.field public final b:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Lcom/github/mikephil/charting/charts/BarChart;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lt4/b;->b:Ljava/util/ArrayList;

    iput-object p1, p0, Lt4/b;->a:Lcom/github/mikephil/charting/charts/BarChart;

    return-void
.end method

.method public static d(Ljava/util/ArrayList;FLq4/p;)F
    .locals 4

    const v0, 0x7f7fffff    # Float.MAX_VALUE

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lt4/c;

    iget-object v3, v2, Lt4/c;->g:Lq4/p;

    if-ne v3, p2, :cond_0

    iget v2, v2, Lt4/c;->d:F

    sub-float/2addr v2, p1

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpg-float v3, v2, v0

    if-gez v3, :cond_0

    move v0, v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method


# virtual methods
.method public a(FF)Lt4/c;
    .locals 21

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    sget-object v3, Lq4/p;->LEFT:Lq4/p;

    iget-object v4, v0, Lt4/b;->a:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {v4, v3}, Lp4/c;->f(Lq4/p;)Ly4/f;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v4, Ly4/b;->d:Ly4/e;

    invoke-virtual {v4}, Ly4/e;->b()Ly4/d;

    move-result-object v4

    check-cast v4, Ly4/b;

    const-wide/16 v5, 0x0

    iput-wide v5, v4, Ly4/b;->b:D

    iput-wide v5, v4, Ly4/b;->c:D

    invoke-virtual {v3, v1, v2, v4}, Ly4/f;->b(FFLy4/b;)V

    iget-wide v5, v4, Ly4/b;->b:D

    double-to-float v3, v5

    invoke-static {v4}, Ly4/b;->b(Ly4/b;)V

    iget-object v4, v0, Lt4/b;->b:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    invoke-virtual/range {p0 .. p0}, Lt4/b;->b()Lr4/c;

    move-result-object v5

    iget-object v6, v0, Lt4/b;->a:Lcom/github/mikephil/charting/charts/BarChart;

    if-nez v5, :cond_0

    goto/16 :goto_4

    :cond_0
    invoke-virtual {v5}, Lr4/d;->c()I

    move-result v8

    const/4 v15, 0x0

    :goto_0
    if-ge v15, v8, :cond_5

    invoke-virtual {v5, v15}, Lr4/d;->b(I)Lv4/c;

    move-result-object v9

    move-object v10, v9

    check-cast v10, Lr4/b;

    iget-boolean v10, v10, Lr4/b;->e:Z

    if-nez v10, :cond_1

    move/from16 v17, v3

    move/from16 v18, v8

    move/from16 v20, v15

    goto/16 :goto_3

    :cond_1
    sget-object v10, Lr4/e;->CLOSEST:Lr4/e;

    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    move-object v13, v9

    check-cast v13, Lr4/b;

    invoke-virtual {v13, v3}, Lr4/b;->a(F)Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-nez v11, :cond_2

    const/high16 v11, 0x7fc00000    # Float.NaN

    invoke-virtual {v13, v3, v11, v10}, Lr4/b;->b(FFLr4/e;)Lcom/github/mikephil/charting/data/Entry;

    move-result-object v10

    if-eqz v10, :cond_2

    iget v9, v10, Lcom/github/mikephil/charting/data/Entry;->c:F

    invoke-virtual {v13, v9}, Lr4/b;->a(F)Ljava/util/ArrayList;

    move-result-object v9

    :cond_2
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v10

    if-nez v10, :cond_4

    :cond_3
    move/from16 v17, v3

    move/from16 v18, v8

    move-object v8, v14

    move/from16 v20, v15

    goto :goto_2

    :cond_4
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :goto_1
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/github/mikephil/charting/data/Entry;

    iget-object v10, v13, Lr4/b;->d:Lq4/p;

    invoke-virtual {v6, v10}, Lp4/c;->f(Lq4/p;)Ly4/f;

    move-result-object v10

    iget v11, v9, Lcom/github/mikephil/charting/data/Entry;->c:F

    invoke-virtual {v9}, Lcom/github/mikephil/charting/data/Entry;->a()F

    move-result v12

    invoke-virtual {v10, v11, v12}, Ly4/f;->a(FF)Ly4/b;

    move-result-object v10

    new-instance v12, Lt4/c;

    iget v11, v9, Lcom/github/mikephil/charting/data/Entry;->c:F

    invoke-virtual {v9}, Lcom/github/mikephil/charting/data/Entry;->a()F

    move-result v17

    move/from16 v18, v8

    iget-wide v7, v10, Ly4/b;->b:D

    double-to-float v7, v7

    iget-wide v8, v10, Ly4/b;->c:D

    double-to-float v8, v8

    iget-object v10, v13, Lr4/b;->d:Lq4/p;

    move-object v9, v12

    move-object/from16 v19, v10

    move v10, v11

    move/from16 v11, v17

    move/from16 v17, v3

    move-object v3, v12

    move v12, v7

    move-object v7, v13

    move v13, v8

    move-object v8, v14

    move v14, v15

    move/from16 v20, v15

    move-object/from16 v15, v19

    invoke-direct/range {v9 .. v15}, Lt4/c;-><init>(FFFFILq4/p;)V

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v13, v7

    move-object v14, v8

    move/from16 v3, v17

    move/from16 v8, v18

    move/from16 v15, v20

    goto :goto_1

    :goto_2
    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :goto_3
    add-int/lit8 v15, v20, 0x1

    move/from16 v3, v17

    move/from16 v8, v18

    goto/16 :goto_0

    :cond_5
    :goto_4
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    const/4 v5, 0x0

    if-eqz v3, :cond_6

    goto :goto_7

    :cond_6
    sget-object v3, Lq4/p;->LEFT:Lq4/p;

    invoke-static {v4, v2, v3}, Lt4/b;->d(Ljava/util/ArrayList;FLq4/p;)F

    move-result v7

    sget-object v8, Lq4/p;->RIGHT:Lq4/p;

    invoke-static {v4, v2, v8}, Lt4/b;->d(Ljava/util/ArrayList;FLq4/p;)F

    move-result v9

    cmpg-float v7, v7, v9

    if-gez v7, :cond_7

    goto :goto_5

    :cond_7
    move-object v3, v8

    :goto_5
    invoke-interface {v6}, Lu4/c;->getMaxHighlightDistance()F

    move-result v6

    const/4 v7, 0x0

    :goto_6
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v7, v8, :cond_a

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lt4/c;

    if-eqz v3, :cond_8

    iget-object v9, v8, Lt4/c;->g:Lq4/p;

    if-ne v9, v3, :cond_9

    :cond_8
    iget v9, v8, Lt4/c;->c:F

    iget v10, v8, Lt4/c;->d:F

    invoke-virtual {v0, v1, v2, v9, v10}, Lt4/b;->c(FFFF)F

    move-result v9

    cmpg-float v10, v9, v6

    if-gez v10, :cond_9

    move-object v5, v8

    move v6, v9

    :cond_9
    add-int/lit8 v7, v7, 0x1

    goto :goto_6

    :cond_a
    :goto_7
    return-object v5
.end method

.method public b()Lr4/c;
    .locals 0

    iget-object p0, p0, Lt4/b;->a:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-interface {p0}, Lu4/b;->getData()Lr4/c;

    move-result-object p0

    return-object p0
.end method

.method public c(FFFF)F
    .locals 0

    sub-float/2addr p1, p3

    float-to-double p0, p1

    sub-float/2addr p2, p4

    float-to-double p2, p2

    invoke-static {p0, p1, p2, p3}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide p0

    double-to-float p0, p0

    return p0
.end method
