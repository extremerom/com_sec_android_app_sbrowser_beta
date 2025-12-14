.class public final LY1/h;
.super Ltb/m;
.source "SourceFile"

# interfaces
.implements Lsb/o;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    iput p1, p0, LY1/h;->a:I

    iput-object p2, p0, LY1/h;->b:Ljava/lang/Object;

    iput-object p3, p0, LY1/h;->c:Ljava/lang/Object;

    const/4 p1, 0x3

    invoke-direct {p0, p1}, Ltb/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 17

    move-object/from16 v0, p0

    sget-object v1, Ldb/r;->a:Ldb/r;

    iget-object v2, v0, LY1/h;->c:Ljava/lang/Object;

    const/4 v3, 0x4

    iget-object v4, v0, LY1/h;->b:Ljava/lang/Object;

    const/4 v5, 0x5

    iget v0, v0, LY1/h;->a:I

    packed-switch v0, :pswitch_data_0

    move-object/from16 v0, p1

    check-cast v0, Li9/a;

    move-object/from16 v6, p2

    check-cast v6, Ljava/lang/Number;

    invoke-virtual {v6}, Ljava/lang/Number;->floatValue()F

    move-result v6

    move-object/from16 v7, p3

    check-cast v7, Ljava/lang/Number;

    invoke-virtual {v7}, Ljava/lang/Number;->floatValue()F

    move-result v7

    instance-of v8, v0, Ln9/c;

    if-eqz v8, :cond_0

    check-cast v0, Ln9/c;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_5

    iput v6, v0, Ln9/c;->e:F

    invoke-virtual {v0}, Li9/a;->c()Lj9/h;

    move-result-object v8

    check-cast v8, Ln9/i;

    if-eqz v8, :cond_1

    iget v9, v0, Ln9/c;->e:F

    new-instance v10, Ln9/e;

    const/4 v11, 0x3

    invoke-direct {v10, v8, v9, v11}, Ln9/e;-><init>(Ln9/i;FI)V

    invoke-virtual {v8, v10}, Lj9/h;->k(Ljava/util/function/Consumer;)V

    :cond_1
    const/high16 v8, 0x3f800000    # 1.0f

    invoke-static {v7, v8}, LG5/d3;->c(FF)F

    move-result v7

    iput v7, v0, Ln9/c;->h:F

    invoke-virtual {v0}, Li9/a;->c()Lj9/h;

    move-result-object v7

    check-cast v7, Ln9/i;

    if-eqz v7, :cond_2

    iget v8, v0, Ln9/c;->h:F

    new-instance v9, Ln9/e;

    invoke-direct {v9, v7, v8, v5}, Ln9/e;-><init>(Ln9/i;FI)V

    invoke-virtual {v7, v9}, Lj9/h;->k(Ljava/util/function/Consumer;)V

    :cond_2
    sget-object v7, Ln9/b;->p:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v7, v6}, Landroid/view/animation/PathInterpolator;->getInterpolation(F)F

    move-result v6

    const v7, 0x41047ae1    # 8.28f

    mul-float/2addr v6, v7

    iput v6, v0, Ln9/c;->i:F

    invoke-virtual {v0}, Li9/a;->c()Lj9/h;

    move-result-object v6

    check-cast v6, Ln9/i;

    if-eqz v6, :cond_3

    iget v7, v0, Ln9/c;->i:F

    new-instance v8, Ln9/e;

    const/4 v9, 0x1

    invoke-direct {v8, v6, v7, v9}, Ln9/e;-><init>(Ln9/i;FI)V

    invoke-virtual {v6, v8}, Lj9/h;->k(Ljava/util/function/Consumer;)V

    :cond_3
    check-cast v4, Landroid/graphics/PointF;

    iput-object v4, v0, Ln9/c;->g:Landroid/graphics/PointF;

    invoke-virtual {v0}, Li9/a;->c()Lj9/h;

    move-result-object v4

    check-cast v4, Ln9/i;

    if-eqz v4, :cond_4

    iget-object v6, v0, Ln9/c;->g:Landroid/graphics/PointF;

    const-string v7, "pos"

    invoke-static {v6, v7}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v7, Lk9/s;

    invoke-direct {v7, v4, v6, v3}, Lk9/s;-><init>(Lj9/h;Ljava/lang/Object;I)V

    invoke-virtual {v4, v7}, Lj9/h;->k(Ljava/util/function/Consumer;)V

    :cond_4
    check-cast v2, Ln9/b;

    iget-object v2, v2, Ln9/b;->i:Ln9/a;

    const-string v3, "value"

    invoke-static {v2, v3}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v2, v0, Ln9/c;->f:Ln9/a;

    invoke-virtual {v0}, Li9/a;->c()Lj9/h;

    move-result-object v2

    check-cast v2, Ln9/i;

    if-eqz v2, :cond_5

    iget-object v0, v0, Ln9/c;->f:Ln9/a;

    const-string v3, "revealMode"

    invoke-static {v0, v3}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v3, Lk9/s;

    invoke-direct {v3, v2, v0, v5}, Lk9/s;-><init>(Lj9/h;Ljava/lang/Object;I)V

    invoke-virtual {v2, v3}, Lj9/h;->k(Ljava/util/function/Consumer;)V

    :cond_5
    return-object v1

    :pswitch_0
    move-object/from16 v0, p1

    check-cast v0, LK1/t;

    move-object/from16 v5, p2

    check-cast v5, La0/m;

    move-object/from16 v6, p3

    check-cast v6, Ljava/lang/Number;

    invoke-virtual {v6}, Ljava/lang/Number;->intValue()I

    const-string v6, "$this$Row"

    invoke-static {v0, v6}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v4, LR1/r;

    instance-of v6, v4, LR1/e;

    const/4 v7, 0x0

    if-eqz v6, :cond_6

    check-cast v5, La0/q;

    const v0, -0x1fcecee3

    invoke-virtual {v5, v0}, La0/q;->R(I)V

    check-cast v4, LR1/e;

    invoke-virtual {v4, v4, v5, v7}, LR1/e;->CustomContent(LR1/e;La0/m;I)V

    invoke-virtual {v5, v7}, La0/q;->p(Z)V

    goto :goto_3

    :cond_6
    check-cast v5, La0/q;

    const v6, -0x1fceceab

    invoke-virtual {v5, v6}, La0/q;->R(I)V

    sget-object v6, Lx1/k;->e:La0/L0;

    invoke-virtual {v5, v6}, La0/q;->j(La0/g0;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, LJ1/b;

    iget-object v6, v6, LJ1/b;->r:Lf2/a;

    move-object v8, v2

    check-cast v8, LR1/y;

    sget-object v2, LS1/a;->b:Ljava/util/List;

    iget-object v2, v8, LR1/x;->c:Lf2/a;

    if-nez v2, :cond_7

    move-object v10, v6

    goto :goto_1

    :cond_7
    move-object v10, v2

    :goto_1
    const/16 v14, 0x230

    const/16 v15, 0x18

    const/4 v9, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v13, v5

    invoke-static/range {v8 .. v15}, LG5/w3;->b(LR1/x;ILf2/a;Lx1/r;ILa0/m;II)V

    invoke-virtual {v4}, LR1/r;->getSubText()LR1/y;

    move-result-object v2

    if-nez v2, :cond_8

    goto :goto_2

    :cond_8
    sget-object v8, La2/e;->a:La2/e;

    check-cast v0, LK1/u;

    invoke-virtual {v0}, LK1/u;->a()Lx1/r;

    move-result-object v0

    invoke-static {v0}, LG5/P3;->b(Lx1/r;)Lx1/r;

    move-result-object v9

    const/4 v0, 0x2

    int-to-float v13, v0

    const/4 v10, 0x0

    const/4 v14, 0x7

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-static/range {v9 .. v14}, LG5/N3;->f(Lx1/r;FFFFI)Lx1/r;

    move-result-object v9

    sget-object v10, LK1/c;->f:LK1/c;

    new-instance v0, LB1/h;

    invoke-direct {v0, v3, v2}, LB1/h;-><init>(ILjava/lang/Object;)V

    const v2, 0x6228c290

    invoke-static {v5, v2, v0}, Li0/b;->b(La0/m;ILtb/m;)Li0/a;

    move-result-object v13

    const v15, 0x36180

    const/16 v16, 0x8

    const-string v11, "List9"

    const/4 v12, 0x0

    move-object v14, v5

    invoke-virtual/range {v8 .. v16}, La2/e;->b(Lx1/r;LK1/c;Ljava/lang/String;ZLi0/a;La0/m;II)V

    :goto_2
    invoke-virtual {v5, v7}, La0/q;->p(Z)V

    :goto_3
    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
