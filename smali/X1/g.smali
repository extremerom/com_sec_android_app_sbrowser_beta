.class public final LX1/g;
.super Ltb/m;
.source "SourceFile"

# interfaces
.implements Lsb/n;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Li0/a;

.field public final synthetic c:LV9/a;

.field public final synthetic d:Lsb/n;

.field public final synthetic e:Lsb/n;


# direct methods
.method public synthetic constructor <init>(LV9/a;Li0/a;Lsb/n;Lsb/n;I)V
    .locals 0

    iput p5, p0, LX1/g;->a:I

    iput-object p1, p0, LX1/g;->c:LV9/a;

    iput-object p2, p0, LX1/g;->b:Li0/a;

    iput-object p3, p0, LX1/g;->d:Lsb/n;

    iput-object p4, p0, LX1/g;->e:Lsb/n;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Ltb/m;-><init>(I)V

    return-void
.end method

.method public constructor <init>(LV9/a;Lsb/n;Lsb/n;Li0/a;)V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, LX1/g;->a:I

    iput-object p1, p0, LX1/g;->c:LV9/a;

    iput-object p2, p0, LX1/g;->d:Lsb/n;

    iput-object p3, p0, LX1/g;->e:Lsb/n;

    iput-object p4, p0, LX1/g;->b:Li0/a;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Ltb/m;-><init>(I)V

    return-void
.end method

.method public constructor <init>(Li0/a;LV9/a;Lsb/n;Lsb/n;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, LX1/g;->a:I

    iput-object p1, p0, LX1/g;->b:Li0/a;

    iput-object p2, p0, LX1/g;->c:LV9/a;

    iput-object p3, p0, LX1/g;->d:Lsb/n;

    iput-object p4, p0, LX1/g;->e:Lsb/n;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Ltb/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 26

    move-object/from16 v0, p0

    const/16 v1, 0x8

    const/4 v2, 0x4

    sget-object v3, Lx1/p;->a:Lx1/p;

    const/4 v4, 0x0

    sget-object v5, Ldb/r;->a:Ldb/r;

    iget-object v6, v0, LX1/g;->d:Lsb/n;

    iget-object v7, v0, LX1/g;->e:Lsb/n;

    iget-object v8, v0, LX1/g;->b:Li0/a;

    iget-object v9, v0, LX1/g;->c:LV9/a;

    const/4 v10, 0x2

    iget v0, v0, LX1/g;->a:I

    packed-switch v0, :pswitch_data_0

    move-object/from16 v0, p1

    check-cast v0, La0/m;

    move-object/from16 v1, p2

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    and-int/lit8 v1, v1, 0xb

    if-ne v1, v10, :cond_1

    move-object v1, v0

    check-cast v1, La0/q;

    invoke-virtual {v1}, La0/q;->x()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, La0/q;->K()V

    goto :goto_1

    :cond_1
    :goto_0
    iget-boolean v1, v9, LV9/a;->b:Z

    sget-object v10, La2/e;->a:La2/e;

    if-eqz v1, :cond_2

    check-cast v0, La0/q;

    const v1, -0x466da33d

    invoke-virtual {v0, v1}, La0/q;->R(I)V

    invoke-static {v3}, LG5/P3;->c(Lx1/r;)Lx1/r;

    move-result-object v11

    new-instance v1, LX1/g;

    invoke-direct {v1, v8, v9, v6, v7}, LX1/g;-><init>(Li0/a;LV9/a;Lsb/n;Lsb/n;)V

    const v2, 0x18d0005e

    invoke-static {v0, v2, v1}, Li0/b;->b(La0/m;ILtb/m;)Li0/a;

    move-result-object v15

    const v17, 0x36180

    const/16 v18, 0xa

    const/4 v12, 0x0

    const-string v13, "Title1"

    const/4 v14, 0x0

    move-object/from16 v16, v0

    invoke-virtual/range {v10 .. v18}, La2/e;->b(Lx1/r;LK1/c;Ljava/lang/String;ZLi0/a;La0/m;II)V

    invoke-virtual {v0, v4}, La0/q;->p(Z)V

    goto :goto_1

    :cond_2
    check-cast v0, La0/q;

    const v1, -0x466da217

    invoke-virtual {v0, v1}, La0/q;->R(I)V

    invoke-static {v3}, LG5/P3;->l(Lx1/r;)Lx1/r;

    move-result-object v1

    new-instance v2, LK1/w;

    sget-object v3, Lf2/g;->a:Lf2/g;

    invoke-direct {v2, v3}, LK1/w;-><init>(Lf2/h;)V

    invoke-interface {v1, v2}, Lx1/r;->d(Lx1/r;)Lx1/r;

    move-result-object v11

    new-instance v1, LX1/g;

    invoke-direct {v1, v9, v6, v7, v8}, LX1/g;-><init>(LV9/a;Lsb/n;Lsb/n;Li0/a;)V

    const v2, 0x6621ed75

    invoke-static {v0, v2, v1}, Li0/b;->b(La0/m;ILtb/m;)Li0/a;

    move-result-object v15

    const v17, 0x36d80

    const/16 v18, 0x2

    const/4 v12, 0x0

    const-string v13, "Title2"

    const/4 v14, 0x1

    move-object/from16 v16, v0

    invoke-virtual/range {v10 .. v18}, La2/e;->b(Lx1/r;LK1/c;Ljava/lang/String;ZLi0/a;La0/m;II)V

    invoke-virtual {v0, v4}, La0/q;->p(Z)V

    :goto_1
    return-object v5

    :pswitch_0
    move-object/from16 v0, p1

    check-cast v0, La0/m;

    move-object/from16 v1, p2

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    and-int/lit8 v1, v1, 0xb

    if-ne v1, v10, :cond_4

    move-object v1, v0

    check-cast v1, La0/q;

    invoke-virtual {v1}, La0/q;->x()Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_2

    :cond_3
    invoke-virtual {v1}, La0/q;->K()V

    goto :goto_3

    :cond_4
    :goto_2
    invoke-static {v3}, LG5/P3;->c(Lx1/r;)Lx1/r;

    move-result-object v19

    new-instance v1, LY1/n;

    invoke-direct {v1, v9, v6, v7, v8}, LY1/n;-><init>(LV9/a;Lsb/n;Lsb/n;Li0/a;)V

    const v2, 0x3fed203f

    invoke-static {v0, v2, v1}, Li0/b;->b(La0/m;ILtb/m;)Li0/a;

    move-result-object v22

    const/16 v24, 0xc00

    const/16 v25, 0x6

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object/from16 v23, v0

    invoke-static/range {v19 .. v25}, LG5/M3;->a(Lx1/r;IILi0/a;La0/m;II)V

    :goto_3
    return-object v5

    :pswitch_1
    move-object/from16 v0, p1

    check-cast v0, La0/m;

    move-object/from16 v3, p2

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v3

    and-int/lit8 v3, v3, 0xb

    if-ne v3, v10, :cond_6

    move-object v3, v0

    check-cast v3, La0/q;

    invoke-virtual {v3}, La0/q;->x()Z

    move-result v10

    if-nez v10, :cond_5

    goto :goto_4

    :cond_5
    invoke-virtual {v3}, La0/q;->K()V

    goto :goto_5

    :cond_6
    :goto_4
    check-cast v0, La0/q;

    const v3, 0x53c6fcbc

    invoke-virtual {v0, v3}, La0/q;->R(I)V

    sget-object v3, LR1/d;->d:La0/L0;

    invoke-virtual {v0, v3}, La0/q;->j(La0/g0;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, LM1/b;

    iget v3, v3, LM1/b;->a:I

    invoke-static {v3, v2}, LM1/b;->b(II)Z

    move-result v2

    if-nez v2, :cond_7

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v8, v0, v2}, Li0/a;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7
    invoke-virtual {v0, v4}, La0/q;->p(Z)V

    invoke-static {v9, v6, v7, v0, v1}, LG5/T2;->c(LV9/a;Lsb/n;Lsb/n;La0/m;I)V

    :goto_5
    return-object v5

    :pswitch_2
    move-object/from16 v0, p1

    check-cast v0, La0/m;

    move-object/from16 v3, p2

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v3

    and-int/lit8 v3, v3, 0xb

    if-ne v3, v10, :cond_9

    move-object v3, v0

    check-cast v3, La0/q;

    invoke-virtual {v3}, La0/q;->x()Z

    move-result v10

    if-nez v10, :cond_8

    goto :goto_6

    :cond_8
    invoke-virtual {v3}, La0/q;->K()V

    goto/16 :goto_9

    :cond_9
    :goto_6
    iget-boolean v3, v9, LV9/a;->b:Z

    const v10, 0x7ab4aae9

    const v11, -0x4ee9b9da

    if-eqz v3, :cond_c

    check-cast v0, La0/q;

    const v3, 0x43665f8a

    invoke-virtual {v0, v3}, La0/q;->R(I)V

    sget-object v3, LU/z;->c:LU/p;

    const v13, 0x2bb5b5d7

    invoke-virtual {v0, v13}, La0/q;->R(I)V

    sget-object v13, Lm0/a;->a:Lm0/d;

    invoke-static {v13, v0}, LU/i;->a(Lm0/d;La0/m;)Lz0/x;

    move-result-object v13

    invoke-virtual {v0, v11}, La0/q;->R(I)V

    sget-object v11, Landroidx/compose/ui/platform/k;->a:La0/L0;

    invoke-virtual {v0, v11}, La0/q;->j(La0/g0;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, LH0/b;

    sget-object v14, Landroidx/compose/ui/platform/k;->b:La0/L0;

    invoke-virtual {v0, v14}, La0/q;->j(La0/g0;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, LH0/k;

    sget-object v15, Landroidx/compose/ui/platform/k;->c:La0/L0;

    invoke-virtual {v0, v15}, La0/q;->j(La0/g0;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroidx/compose/ui/platform/q;

    sget-object v16, LB0/h;->K:LB0/g;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v12, LB0/g;->b:LB0/s;

    invoke-static {v3}, Lz0/J;->b(Lm0/m;)Li0/a;

    move-result-object v3

    invoke-virtual {v0}, La0/q;->U()V

    iget-boolean v1, v0, La0/q;->O:Z

    if-eqz v1, :cond_a

    invoke-virtual {v0, v12}, La0/q;->k(Lsb/a;)V

    goto :goto_7

    :cond_a
    invoke-virtual {v0}, La0/q;->d0()V

    :goto_7
    iput-boolean v4, v0, La0/q;->x:Z

    sget-object v1, LB0/g;->f:LB0/f;

    invoke-static {v0, v13, v1}, La0/d;->M(La0/m;Ljava/lang/Object;Lsb/n;)V

    sget-object v1, LB0/g;->d:LB0/f;

    invoke-static {v0, v11, v1}, La0/d;->M(La0/m;Ljava/lang/Object;Lsb/n;)V

    sget-object v1, LB0/g;->g:LB0/f;

    invoke-static {v0, v14, v1}, La0/d;->M(La0/m;Ljava/lang/Object;Lsb/n;)V

    sget-object v1, LB0/g;->h:LB0/f;

    invoke-static {v0, v15, v1}, La0/d;->M(La0/m;Ljava/lang/Object;Lsb/n;)V

    invoke-virtual {v0}, La0/q;->o()V

    new-instance v1, La0/u0;

    invoke-direct {v1, v0}, La0/u0;-><init>(La0/m;)V

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v3, v1, v0, v11}, Li0/a;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0, v10}, La0/q;->R(I)V

    const v1, -0x67ebb499

    invoke-virtual {v0, v1}, La0/q;->R(I)V

    sget-object v1, LR1/d;->d:La0/L0;

    invoke-virtual {v0, v1}, La0/q;->j(La0/g0;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LM1/b;

    iget v1, v1, LM1/b;->a:I

    invoke-static {v1, v2}, LM1/b;->b(II)Z

    move-result v1

    if-nez v1, :cond_b

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v8, v0, v1}, Li0/a;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_b
    invoke-virtual {v0, v4}, La0/q;->p(Z)V

    const/16 v1, 0x8

    invoke-static {v9, v6, v7, v0, v1}, LG5/D2;->a(LV9/a;Lsb/n;Lsb/n;La0/m;I)V

    invoke-virtual {v0, v4}, La0/q;->p(Z)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, La0/q;->p(Z)V

    invoke-virtual {v0, v4}, La0/q;->p(Z)V

    invoke-virtual {v0, v4}, La0/q;->p(Z)V

    invoke-virtual {v0, v4}, La0/q;->p(Z)V

    goto/16 :goto_9

    :cond_c
    check-cast v0, La0/q;

    const v1, 0x43666095

    invoke-virtual {v0, v1}, La0/q;->R(I)V

    sget-object v1, LU/z;->c:LU/p;

    const v3, -0x1cd0f17e

    invoke-virtual {v0, v3}, La0/q;->R(I)V

    sget-object v3, LU/e;->a:LU/a;

    invoke-static {v0}, LU/k;->a(La0/m;)Lz0/x;

    move-result-object v3

    invoke-virtual {v0, v11}, La0/q;->R(I)V

    sget-object v11, Landroidx/compose/ui/platform/k;->a:La0/L0;

    invoke-virtual {v0, v11}, La0/q;->j(La0/g0;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, LH0/b;

    sget-object v12, Landroidx/compose/ui/platform/k;->b:La0/L0;

    invoke-virtual {v0, v12}, La0/q;->j(La0/g0;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, LH0/k;

    sget-object v13, Landroidx/compose/ui/platform/k;->c:La0/L0;

    invoke-virtual {v0, v13}, La0/q;->j(La0/g0;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroidx/compose/ui/platform/q;

    sget-object v14, LB0/h;->K:LB0/g;

    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v14, LB0/g;->b:LB0/s;

    invoke-static {v1}, Lz0/J;->b(Lm0/m;)Li0/a;

    move-result-object v1

    invoke-virtual {v0}, La0/q;->U()V

    iget-boolean v15, v0, La0/q;->O:Z

    if-eqz v15, :cond_d

    invoke-virtual {v0, v14}, La0/q;->k(Lsb/a;)V

    goto :goto_8

    :cond_d
    invoke-virtual {v0}, La0/q;->d0()V

    :goto_8
    iput-boolean v4, v0, La0/q;->x:Z

    sget-object v14, LB0/g;->f:LB0/f;

    invoke-static {v0, v3, v14}, La0/d;->M(La0/m;Ljava/lang/Object;Lsb/n;)V

    sget-object v3, LB0/g;->d:LB0/f;

    invoke-static {v0, v11, v3}, La0/d;->M(La0/m;Ljava/lang/Object;Lsb/n;)V

    sget-object v3, LB0/g;->g:LB0/f;

    invoke-static {v0, v12, v3}, La0/d;->M(La0/m;Ljava/lang/Object;Lsb/n;)V

    sget-object v3, LB0/g;->h:LB0/f;

    invoke-static {v0, v13, v3}, La0/d;->M(La0/m;Ljava/lang/Object;Lsb/n;)V

    invoke-virtual {v0}, La0/q;->o()V

    new-instance v3, La0/u0;

    invoke-direct {v3, v0}, La0/u0;-><init>(La0/m;)V

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v1, v3, v0, v11}, Li0/a;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0, v10}, La0/q;->R(I)V

    const/16 v1, 0x8

    invoke-static {v9, v6, v7, v0, v1}, LG5/D2;->a(LV9/a;Lsb/n;Lsb/n;La0/m;I)V

    const v1, 0x4366611c

    invoke-virtual {v0, v1}, La0/q;->R(I)V

    sget-object v1, LR1/d;->d:La0/L0;

    invoke-virtual {v0, v1}, La0/q;->j(La0/g0;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LM1/b;

    iget v1, v1, LM1/b;->a:I

    invoke-static {v1, v2}, LM1/b;->b(II)Z

    move-result v1

    if-nez v1, :cond_e

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v8, v0, v1}, Li0/a;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_e
    invoke-virtual {v0, v4}, La0/q;->p(Z)V

    invoke-virtual {v0, v4}, La0/q;->p(Z)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, La0/q;->p(Z)V

    invoke-virtual {v0, v4}, La0/q;->p(Z)V

    invoke-virtual {v0, v4}, La0/q;->p(Z)V

    invoke-virtual {v0, v4}, La0/q;->p(Z)V

    :goto_9
    return-object v5

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
