.class public final LY1/e;
.super Ltb/m;
.source "SourceFile"

# interfaces
.implements Lsb/o;


# instance fields
.field public final synthetic a:Z

.field public final synthetic b:Z

.field public final synthetic c:Landroid/content/Context;

.field public final synthetic d:LR1/r;

.field public final synthetic e:I

.field public final synthetic f:LR1/y;


# direct methods
.method public constructor <init>(ZZLandroid/content/Context;LR1/r;ILR1/y;)V
    .locals 0

    iput-boolean p1, p0, LY1/e;->a:Z

    iput-boolean p2, p0, LY1/e;->b:Z

    iput-object p3, p0, LY1/e;->c:Landroid/content/Context;

    iput-object p4, p0, LY1/e;->d:LR1/r;

    iput p5, p0, LY1/e;->e:I

    iput-object p6, p0, LY1/e;->f:LR1/y;

    const/4 p1, 0x3

    invoke-direct {p0, p1}, Ltb/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    check-cast v1, LK1/t;

    move-object/from16 v2, p2

    check-cast v2, La0/m;

    move-object/from16 v3, p3

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    const-string v3, "$this$Row"

    invoke-static {v1, v3}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, La0/q;

    const v3, 0x8282c10

    invoke-virtual {v2, v3}, La0/q;->R(I)V

    iget-object v3, v0, LY1/e;->c:Landroid/content/Context;

    const/4 v11, 0x0

    iget v4, v0, LY1/e;->e:I

    iget-boolean v5, v0, LY1/e;->a:Z

    iget-boolean v6, v0, LY1/e;->b:Z

    iget-object v7, v0, LY1/e;->d:LR1/r;

    if-eqz v5, :cond_6

    if-eqz v6, :cond_0

    const v8, 0x7f071159

    invoke-static {v3, v8}, LG5/O3;->b(Landroid/content/Context;I)F

    move-result v8

    goto :goto_0

    :cond_0
    const v8, 0x7f07115a

    invoke-static {v3, v8}, LG5/O3;->b(Landroid/content/Context;I)F

    move-result v8

    :goto_0
    invoke-virtual {v7}, LR1/r;->getLeadingContentData()LR1/q;

    const v9, 0x8282f5f

    invoke-virtual {v2, v9}, La0/q;->R(I)V

    invoke-virtual {v7}, LR1/r;->getLeadingContentData()LR1/q;

    move-result-object v9

    if-eqz v9, :cond_1

    iget-object v9, v9, LR1/q;->a:LR1/p;

    goto :goto_1

    :cond_1
    const/4 v9, 0x0

    :goto_1
    const/16 v10, 0x8

    if-nez v9, :cond_2

    goto :goto_3

    :cond_2
    const v12, 0x62f06d3e

    invoke-virtual {v2, v12}, La0/q;->R(I)V

    invoke-static {v8}, LG5/P3;->i(F)Lx1/r;

    move-result-object v8

    sget-object v12, Lx1/k;->e:La0/L0;

    invoke-virtual {v2, v12}, La0/q;->j(La0/g0;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, LJ1/b;

    iget-object v12, v12, LJ1/b;->s:Lf2/a;

    iget-object v13, v9, LR1/p;->f:Lf2/a;

    sget-object v14, LS1/a;->b:Ljava/util/List;

    if-nez v13, :cond_3

    goto :goto_2

    :cond_3
    move-object v12, v13

    :goto_2
    invoke-static {v8, v12}, LG5/x2;->b(Lx1/r;Lf2/a;)Lx1/r;

    move-result-object v8

    sget v12, LW1/a;->g:F

    invoke-static {v8, v12}, LG5/Q2;->d(Lx1/r;F)Lx1/r;

    move-result-object v8

    invoke-static {v9, v8, v11, v2, v10}, LG5/R2;->a(LR1/p;Lx1/r;ILa0/m;I)V

    invoke-virtual {v2, v11}, La0/q;->p(Z)V

    :goto_3
    invoke-virtual {v2, v11}, La0/q;->p(Z)V

    if-eqz v6, :cond_4

    int-to-float v8, v10

    goto :goto_4

    :cond_4
    const/4 v8, 0x3

    if-ge v4, v8, :cond_5

    const/4 v8, 0x4

    :cond_5
    int-to-float v8, v8

    :goto_4
    invoke-static {v8}, LG5/P3;->k(F)Lx1/r;

    move-result-object v8

    invoke-static {v8, v2, v11}, LG5/Q3;->a(Lx1/r;La0/m;I)V

    :cond_6
    invoke-virtual {v2, v11}, La0/q;->p(Z)V

    instance-of v8, v7, LR1/e;

    if-eqz v8, :cond_7

    const v0, 0x8283910

    invoke-virtual {v2, v0}, La0/q;->R(I)V

    check-cast v7, LR1/e;

    invoke-virtual {v7, v7, v2, v11}, LR1/e;->CustomContent(LR1/e;La0/m;I)V

    invoke-virtual {v2, v11}, La0/q;->p(Z)V

    goto :goto_9

    :cond_7
    const v8, 0x828394c

    invoke-virtual {v2, v8}, La0/q;->R(I)V

    check-cast v1, LK1/u;

    invoke-virtual {v1}, LK1/u;->a()Lx1/r;

    move-result-object v1

    invoke-static {v1}, LG5/P3;->l(Lx1/r;)Lx1/r;

    move-result-object v12

    if-eqz v6, :cond_8

    const v1, 0x7f07115c

    invoke-static {v3, v1}, LG5/O3;->b(Landroid/content/Context;I)F

    move-result v1

    :goto_5
    move v14, v1

    goto :goto_6

    :cond_8
    int-to-float v1, v11

    goto :goto_5

    :goto_6
    if-eqz v6, :cond_a

    invoke-virtual {v7}, LR1/r;->getSubText()LR1/y;

    move-result-object v1

    if-eqz v1, :cond_9

    const v1, 0x7f071157

    invoke-static {v3, v1}, LG5/O3;->b(Landroid/content/Context;I)F

    move-result v1

    :goto_7
    move/from16 v16, v1

    goto :goto_8

    :cond_9
    const v1, 0x7f071156

    invoke-static {v3, v1}, LG5/O3;->b(Landroid/content/Context;I)F

    move-result v1

    goto :goto_7

    :cond_a
    int-to-float v1, v11

    goto :goto_7

    :goto_8
    const/4 v15, 0x0

    const/16 v17, 0x5

    const/4 v13, 0x0

    invoke-static/range {v12 .. v17}, LG5/N3;->f(Lx1/r;FFFFI)Lx1/r;

    move-result-object v1

    new-instance v3, LY1/d;

    iget-object v0, v0, LY1/e;->f:LR1/y;

    invoke-direct {v3, v0, v4, v7, v5}, LY1/d;-><init>(LR1/y;ILR1/r;Z)V

    const v0, 0x505428b2

    invoke-static {v2, v0, v3}, Li0/b;->b(La0/m;ILtb/m;)Li0/a;

    move-result-object v7

    const/16 v9, 0xc00

    const/4 v10, 0x6

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v4, v1

    move-object v8, v2

    invoke-static/range {v4 .. v10}, LG5/M3;->a(Lx1/r;IILi0/a;La0/m;II)V

    invoke-virtual {v2, v11}, La0/q;->p(Z)V

    :goto_9
    sget-object v0, Ldb/r;->a:Ldb/r;

    return-object v0
.end method
