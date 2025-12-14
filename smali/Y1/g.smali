.class public final LY1/g;
.super Ltb/m;
.source "SourceFile"

# interfaces
.implements Lsb/o;


# instance fields
.field public final synthetic a:F

.field public final synthetic b:Z

.field public final synthetic c:Z

.field public final synthetic d:Z

.field public final synthetic e:Landroid/content/Context;

.field public final synthetic f:Z

.field public final synthetic g:Z

.field public final synthetic h:I

.field public final synthetic i:Lx1/r;

.field public final synthetic j:LR1/r;

.field public final synthetic k:LR1/y;

.field public final synthetic l:Lf2/a;


# direct methods
.method public constructor <init>(FZZZLandroid/content/Context;ZZILx1/r;LR1/r;LR1/y;Lf2/a;)V
    .locals 0

    iput p1, p0, LY1/g;->a:F

    iput-boolean p2, p0, LY1/g;->b:Z

    iput-boolean p3, p0, LY1/g;->c:Z

    iput-boolean p4, p0, LY1/g;->d:Z

    iput-object p5, p0, LY1/g;->e:Landroid/content/Context;

    iput-boolean p6, p0, LY1/g;->f:Z

    iput-boolean p7, p0, LY1/g;->g:Z

    iput p8, p0, LY1/g;->h:I

    iput-object p9, p0, LY1/g;->i:Lx1/r;

    iput-object p10, p0, LY1/g;->j:LR1/r;

    iput-object p11, p0, LY1/g;->k:LR1/y;

    iput-object p12, p0, LY1/g;->l:Lf2/a;

    const/4 p1, 0x3

    invoke-direct {p0, p1}, Ltb/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    check-cast v1, LK1/i;

    move-object/from16 v11, p2

    check-cast v11, La0/m;

    move-object/from16 v2, p3

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    const-string v2, "$this$Column"

    invoke-static {v1, v2}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v2, La2/e;->a:La2/e;

    sget-object v1, Lx1/p;->a:Lx1/p;

    iget v3, v0, LY1/g;->a:F

    invoke-static {v1, v3}, LG5/P3;->f(Lx1/r;F)Lx1/r;

    move-result-object v3

    iget-object v10, v0, LY1/g;->e:Landroid/content/Context;

    const/16 v9, 0xe

    const/4 v4, 0x0

    iget-boolean v8, v0, LY1/g;->b:Z

    iget-boolean v7, v0, LY1/g;->d:Z

    iget-boolean v6, v0, LY1/g;->c:Z

    if-eqz v8, :cond_2

    if-eqz v6, :cond_1

    if-eqz v7, :cond_0

    int-to-float v5, v9

    goto :goto_0

    :cond_0
    const v5, 0x7f07115b

    invoke-static {v10, v5}, LG5/O3;->b(Landroid/content/Context;I)F

    move-result v5

    goto :goto_0

    :cond_1
    sget v5, LW1/b;->b:F

    goto :goto_0

    :cond_2
    if-eqz v7, :cond_3

    int-to-float v5, v4

    goto :goto_0

    :cond_3
    sget v5, LW1/a;->c:F

    :goto_0
    iget-boolean v15, v0, LY1/g;->f:Z

    if-eqz v15, :cond_5

    if-eqz v6, :cond_4

    sget v12, LW1/b;->a:F

    goto :goto_1

    :cond_4
    sget v12, LW1/b;->b:F

    goto :goto_1

    :cond_5
    sget v12, LW1/a;->c:F

    :goto_1
    const/4 v13, 0x2

    iget-boolean v14, v0, LY1/g;->g:Z

    if-eqz v14, :cond_6

    if-nez v6, :cond_6

    iget v9, v0, LY1/g;->h:I

    if-ne v9, v13, :cond_6

    int-to-float v4, v13

    goto :goto_2

    :cond_6
    int-to-float v4, v4

    :goto_2
    invoke-static {v3, v5, v12, v4, v13}, LG5/U2;->e(Lx1/r;FFFI)Lx1/r;

    move-result-object v3

    new-instance v4, LY1/f;

    iget-object v5, v0, LY1/g;->k:LR1/y;

    iget-object v13, v0, LY1/g;->i:Lx1/r;

    iget-boolean v9, v0, LY1/g;->d:Z

    iget-boolean v12, v0, LY1/g;->c:Z

    move/from16 p2, v6

    iget-object v6, v0, LY1/g;->j:LR1/r;

    move/from16 p3, v7

    iget v7, v0, LY1/g;->h:I

    move/from16 v16, v12

    move-object v12, v4

    move/from16 v20, v14

    move v14, v9

    move/from16 v21, v15

    move/from16 v15, v16

    move-object/from16 v16, v10

    move-object/from16 v17, v6

    move/from16 v18, v7

    move-object/from16 v19, v5

    invoke-direct/range {v12 .. v19}, LY1/f;-><init>(Lx1/r;ZZLandroid/content/Context;LR1/r;ILR1/y;)V

    const v5, -0x38e1a613

    invoke-static {v11, v5, v4}, Li0/b;->b(La0/m;ILtb/m;)Li0/a;

    move-result-object v7

    const v9, 0x36180

    const/16 v12, 0xa

    const/4 v4, 0x0

    const-string v5, "List5"

    const/4 v6, 0x0

    move/from16 v13, p2

    move/from16 v14, p3

    move v15, v8

    move-object v8, v11

    move-object/from16 p1, v11

    move-object v11, v10

    move v10, v12

    invoke-virtual/range {v2 .. v10}, La2/e;->b(Lx1/r;LK1/c;Ljava/lang/String;ZLi0/a;La0/m;II)V

    if-eqz v13, :cond_c

    if-eqz v20, :cond_c

    const v2, 0x7f07114f

    invoke-static {v11, v2}, LG5/O3;->b(Landroid/content/Context;I)F

    move-result v2

    const/4 v3, 0x0

    if-eqz v15, :cond_8

    if-eqz v21, :cond_8

    if-eqz v14, :cond_7

    goto :goto_3

    :cond_7
    sget v2, LW1/a;->a:F

    :goto_3
    sget v4, LW1/a;->a:F

    const/16 v5, 0xa

    invoke-static {v1, v2, v4, v3, v5}, LG5/U2;->e(Lx1/r;FFFI)Lx1/r;

    move-result-object v1

    goto :goto_6

    :cond_8
    if-eqz v15, :cond_a

    if-eqz v14, :cond_9

    :goto_4
    const/16 v4, 0xe

    goto :goto_5

    :cond_9
    sget v2, LW1/a;->a:F

    goto :goto_4

    :goto_5
    invoke-static {v1, v2, v3, v3, v4}, LG5/U2;->e(Lx1/r;FFFI)Lx1/r;

    move-result-object v1

    goto :goto_6

    :cond_a
    if-eqz v21, :cond_b

    sget v2, LW1/a;->a:F

    const/16 v4, 0xb

    invoke-static {v1, v3, v2, v3, v4}, LG5/U2;->e(Lx1/r;FFFI)Lx1/r;

    move-result-object v1

    :cond_b
    :goto_6
    invoke-static {v1}, LG5/P3;->d(Lx1/r;)Lx1/r;

    move-result-object v1

    invoke-static {v1}, LG5/P3;->l(Lx1/r;)Lx1/r;

    move-result-object v2

    new-instance v1, LB1/h;

    iget-object v0, v0, LY1/g;->l:Lf2/a;

    const/4 v3, 0x3

    invoke-direct {v1, v3, v0}, LB1/h;-><init>(ILjava/lang/Object;)V

    const v0, 0x1c6352dd

    move-object/from16 v5, p1

    invoke-static {v5, v0, v1}, Li0/b;->b(La0/m;ILtb/m;)Li0/a;

    move-result-object v4

    const/4 v3, 0x0

    const/16 v6, 0x180

    const/4 v7, 0x2

    invoke-static/range {v2 .. v7}, LG5/L3;->a(Lx1/r;LK1/c;Li0/a;La0/m;II)V

    :cond_c
    sget-object v0, Ldb/r;->a:Ldb/r;

    return-object v0
.end method
