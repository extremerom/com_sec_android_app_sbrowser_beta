.class public final Landroidx/databinding/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/Choreographer$FrameCallback;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Landroidx/databinding/i;->a:I

    iput-object p2, p0, Landroidx/databinding/i;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final doFrame(J)V
    .locals 26

    move-object/from16 v0, p0

    iget v1, v0, Landroidx/databinding/i;->a:I

    packed-switch v1, :pswitch_data_0

    iget-object v0, v0, Landroidx/databinding/i;->b:Ljava/lang/Object;

    check-cast v0, LZ3/x;

    iget-object v0, v0, LZ3/x;->b:Ljava/lang/Object;

    check-cast v0, LG5/J2;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iget-object v0, v0, LG5/J2;->a:Ljava/lang/Object;

    check-cast v0, Lr1/a;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    const/4 v5, 0x0

    move v6, v5

    :goto_0
    iget-object v7, v0, Lr1/a;->b:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v8

    const/4 v9, 0x1

    if-ge v6, v8, :cond_9

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lr1/e;

    if-nez v7, :cond_1

    :cond_0
    :goto_1
    move/from16 p2, v6

    goto/16 :goto_5

    :cond_1
    iget-object v8, v0, Lr1/a;->a:LN/A;

    invoke-virtual {v8, v7}, LN/A;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Long;

    if-nez v10, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    cmp-long v10, v10, v3

    if-gez v10, :cond_0

    invoke-virtual {v8, v7}, LN/A;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_2
    iget-wide v10, v7, Lr1/e;->i:J

    const-wide/16 v12, 0x0

    cmp-long v8, v10, v12

    if-nez v8, :cond_3

    iput-wide v1, v7, Lr1/e;->i:J

    iget v8, v7, Lr1/e;->b:F

    invoke-virtual {v7, v8}, Lr1/e;->d(F)V

    goto :goto_1

    :cond_3
    sub-long v15, v1, v10

    iput-wide v1, v7, Lr1/e;->i:J

    move-object v8, v7

    check-cast v8, Lr1/f;

    iget-boolean v10, v8, Lr1/f;->w:Z

    const/4 v13, 0x0

    const v11, 0x7f7fffff    # Float.MAX_VALUE

    if-eqz v10, :cond_5

    iget v10, v8, Lr1/f;->v:F

    cmpl-float v12, v10, v11

    if-eqz v12, :cond_4

    iget-object v12, v8, Lr1/f;->u:Lr1/g;

    float-to-double v14, v10

    iput-wide v14, v12, Lr1/g;->i:D

    iput v11, v8, Lr1/f;->v:F

    :cond_4
    iget-object v10, v8, Lr1/f;->u:Lr1/g;

    iget-wide v10, v10, Lr1/g;->i:D

    double-to-float v10, v10

    iput v10, v8, Lr1/e;->b:F

    iput v13, v8, Lr1/e;->a:F

    iput-boolean v5, v8, Lr1/f;->w:Z

    move/from16 p2, v6

    goto/16 :goto_4

    :cond_5
    iget v10, v8, Lr1/f;->v:F

    cmpl-float v10, v10, v11

    if-eqz v10, :cond_6

    iget-object v10, v8, Lr1/f;->u:Lr1/g;

    iget v12, v8, Lr1/e;->b:F

    float-to-double v13, v12

    iget v12, v8, Lr1/e;->a:F

    move/from16 p2, v6

    float-to-double v5, v12

    const-wide/16 v17, 0x2

    div-long v24, v15, v17

    move-object/from16 v17, v10

    move-wide/from16 v18, v13

    move-wide/from16 v20, v5

    move-wide/from16 v22, v24

    invoke-virtual/range {v17 .. v23}, Lr1/g;->c(DDJ)LP/d;

    move-result-object v5

    iget-object v6, v8, Lr1/f;->u:Lr1/g;

    iget v10, v8, Lr1/f;->v:F

    float-to-double v12, v10

    iput-wide v12, v6, Lr1/g;->i:D

    iput v11, v8, Lr1/f;->v:F

    iget v10, v5, LP/d;->a:F

    float-to-double v10, v10

    iget v5, v5, LP/d;->b:F

    float-to-double v12, v5

    move-object/from16 v19, v6

    move-wide/from16 v20, v10

    move-wide/from16 v22, v12

    invoke-virtual/range {v19 .. v25}, Lr1/g;->c(DDJ)LP/d;

    move-result-object v5

    iget v6, v5, LP/d;->a:F

    iput v6, v8, Lr1/e;->b:F

    iget v5, v5, LP/d;->b:F

    iput v5, v8, Lr1/e;->a:F

    const/4 v5, 0x0

    goto :goto_3

    :cond_6
    move/from16 p2, v6

    iget-object v10, v8, Lr1/f;->u:Lr1/g;

    iget v5, v8, Lr1/e;->b:F

    float-to-double v11, v5

    iget v5, v8, Lr1/e;->a:F

    float-to-double v13, v5

    const/4 v5, 0x0

    invoke-virtual/range {v10 .. v16}, Lr1/g;->c(DDJ)LP/d;

    move-result-object v6

    iget v10, v6, LP/d;->a:F

    iput v10, v8, Lr1/e;->b:F

    iget v6, v6, LP/d;->b:F

    iput v6, v8, Lr1/e;->a:F

    :goto_3
    iget v6, v8, Lr1/e;->b:F

    iget v10, v8, Lr1/e;->h:F

    invoke-static {v6, v10}, Ljava/lang/Math;->max(FF)F

    move-result v6

    iput v6, v8, Lr1/e;->b:F

    iget v10, v8, Lr1/e;->g:F

    invoke-static {v6, v10}, Ljava/lang/Math;->min(FF)F

    move-result v6

    iput v6, v8, Lr1/e;->b:F

    iget v10, v8, Lr1/e;->a:F

    iget-object v11, v8, Lr1/f;->u:Lr1/g;

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v10

    float-to-double v12, v10

    iget-wide v14, v11, Lr1/g;->e:D

    cmpg-double v10, v12, v14

    if-gez v10, :cond_7

    iget-wide v12, v11, Lr1/g;->i:D

    double-to-float v10, v12

    sub-float/2addr v6, v10

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    float-to-double v12, v6

    iget-wide v10, v11, Lr1/g;->d:D

    cmpg-double v6, v12, v10

    if-gez v6, :cond_7

    iget-object v6, v8, Lr1/f;->u:Lr1/g;

    iget-wide v10, v6, Lr1/g;->i:D

    double-to-float v6, v10

    iput v6, v8, Lr1/e;->b:F

    iput v5, v8, Lr1/e;->a:F

    goto :goto_4

    :cond_7
    const/4 v9, 0x0

    :goto_4
    iget v5, v7, Lr1/e;->b:F

    iget v6, v7, Lr1/e;->g:F

    invoke-static {v5, v6}, Ljava/lang/Math;->min(FF)F

    move-result v5

    iput v5, v7, Lr1/e;->b:F

    iget v6, v7, Lr1/e;->h:F

    invoke-static {v5, v6}, Ljava/lang/Math;->max(FF)F

    move-result v5

    iput v5, v7, Lr1/e;->b:F

    invoke-virtual {v7, v5}, Lr1/e;->d(F)V

    if-eqz v9, :cond_8

    const/4 v5, 0x0

    invoke-virtual {v7, v5}, Lr1/e;->c(Z)V

    :cond_8
    :goto_5
    add-int/lit8 v6, p2, 0x1

    const/4 v5, 0x0

    goto/16 :goto_0

    :cond_9
    iget-boolean v1, v0, Lr1/a;->e:Z

    if-eqz v1, :cond_c

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v1

    sub-int/2addr v1, v9

    :goto_6
    if-ltz v1, :cond_b

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_a

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_a
    add-int/lit8 v1, v1, -0x1

    goto :goto_6

    :cond_b
    const/4 v1, 0x0

    iput-boolean v1, v0, Lr1/a;->e:Z

    :cond_c
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_e

    iget-object v1, v0, Lr1/a;->d:LZ3/x;

    if-nez v1, :cond_d

    new-instance v1, LZ3/x;

    iget-object v2, v0, Lr1/a;->c:LG5/J2;

    invoke-direct {v1, v2}, LZ3/x;-><init>(LG5/J2;)V

    iput-object v1, v0, Lr1/a;->d:LZ3/x;

    :cond_d
    iget-object v0, v0, Lr1/a;->d:LZ3/x;

    iget-object v1, v0, LZ3/x;->d:Ljava/lang/Object;

    check-cast v1, Landroidx/databinding/i;

    iget-object v0, v0, LZ3/x;->c:Ljava/lang/Object;

    check-cast v0, Landroid/view/Choreographer;

    invoke-virtual {v0, v1}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    :cond_e
    return-void

    :pswitch_0
    iget-object v0, v0, Landroidx/databinding/i;->b:Ljava/lang/Object;

    check-cast v0, Landroidx/databinding/k;

    invoke-static {v0}, Landroidx/databinding/k;->access$100(Landroidx/databinding/k;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
