.class public abstract LE1/g;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:La0/L0;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget-object v0, LE1/a;->a:LE1/a;

    new-instance v1, La0/L0;

    invoke-direct {v1, v0}, La0/g0;-><init>(Lsb/a;)V

    sput-object v1, LE1/g;->a:La0/L0;

    return-void
.end method

.method public static final a(IJLsb/n;La0/m;I)V
    .locals 7

    check-cast p4, La0/q;

    const v0, -0x2d5448b6

    invoke-virtual {p4, v0}, La0/q;->S(I)La0/q;

    and-int/lit8 v0, p5, 0xe

    if-nez v0, :cond_1

    invoke-virtual {p4, p0}, La0/q;->c(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    :goto_0
    or-int/2addr v0, p5

    goto :goto_1

    :cond_1
    move v0, p5

    :goto_1
    and-int/lit8 v1, p5, 0x70

    if-nez v1, :cond_3

    invoke-virtual {p4, p1, p2}, La0/q;->d(J)Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 v1, 0x20

    goto :goto_2

    :cond_2
    const/16 v1, 0x10

    :goto_2
    or-int/2addr v0, v1

    :cond_3
    and-int/lit16 v1, p5, 0x380

    if-nez v1, :cond_5

    invoke-virtual {p4, p3}, La0/q;->g(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 v1, 0x100

    goto :goto_3

    :cond_4
    const/16 v1, 0x80

    :goto_3
    or-int/2addr v0, v1

    :cond_5
    and-int/lit16 v0, v0, 0x2db

    const/16 v1, 0x92

    if-ne v0, v1, :cond_7

    invoke-virtual {p4}, La0/q;->x()Z

    move-result v0

    if-nez v0, :cond_6

    goto :goto_4

    :cond_6
    invoke-virtual {p4}, La0/q;->K()V

    goto :goto_5

    :cond_7
    :goto_4
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sget-object v1, LE1/g;->a:La0/L0;

    invoke-virtual {v1, v0}, La0/L0;->b(Ljava/lang/Object;)La0/h0;

    move-result-object v0

    sget-object v1, Lx1/k;->a:La0/L0;

    new-instance v2, LH0/g;

    invoke-direct {v2, p1, p2}, LH0/g;-><init>(J)V

    invoke-virtual {v1, v2}, La0/L0;->b(Ljava/lang/Object;)La0/h0;

    move-result-object v1

    filled-new-array {v0, v1}, [La0/h0;

    move-result-object v0

    new-instance v1, LE1/d;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2, p3}, LE1/d;-><init>(IILjava/lang/Object;)V

    const v2, -0x50382576

    invoke-static {p4, v2, v1}, Li0/b;->b(La0/m;ILtb/m;)Li0/a;

    move-result-object v1

    const/16 v2, 0x38

    invoke-static {v0, v1, p4, v2}, La0/d;->b([La0/h0;Li0/a;La0/m;I)V

    :goto_5
    invoke-virtual {p4}, La0/q;->r()La0/i0;

    move-result-object p4

    if-eqz p4, :cond_8

    new-instance v6, LE1/e;

    move-object v0, v6

    move v1, p0

    move-wide v2, p1

    move-object v4, p3

    move v5, p5

    invoke-direct/range {v0 .. v5}, LE1/e;-><init>(IJLsb/n;I)V

    iput-object v6, p4, La0/i0;->d:Lsb/n;

    :cond_8
    return-void
.end method

.method public static final b(Landroid/content/Context;Lz1/Q0;Lkb/c;)Ljava/io/Serializable;
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    instance-of v2, v1, LE1/f;

    if-eqz v2, :cond_0

    move-object v2, v1

    check-cast v2, LE1/f;

    iget v3, v2, LE1/f;->d:I

    const/high16 v4, -0x80000000

    and-int v5, v3, v4

    if-eqz v5, :cond_0

    sub-int/2addr v3, v4

    iput v3, v2, LE1/f;->d:I

    goto :goto_0

    :cond_0
    new-instance v2, LE1/f;

    invoke-direct {v2, v1}, Lkb/c;-><init>(Lib/c;)V

    :goto_0
    iget-object v1, v2, LE1/f;->c:Ljava/lang/Object;

    sget-object v3, Ljb/a;->COROUTINE_SUSPENDED:Ljb/a;

    iget v4, v2, LE1/f;->d:I

    const/4 v5, 0x1

    if-eqz v4, :cond_2

    if-ne v4, v5, :cond_1

    iget-object v0, v2, LE1/f;->b:Lz1/Q0;

    iget-object v2, v2, LE1/f;->a:Landroid/content/Context;

    invoke-static {v1}, LG5/A2;->f(Ljava/lang/Object;)V

    move-object v7, v2

    goto :goto_1

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    invoke-static {v1}, LG5/A2;->f(Ljava/lang/Object;)V

    sget-object v1, Lz1/E0;->g:Lz1/F;

    iput-object v0, v2, LE1/f;->a:Landroid/content/Context;

    move-object/from16 v4, p1

    iput-object v4, v2, LE1/f;->b:Lz1/Q0;

    iput v5, v2, LE1/f;->d:I

    const/4 v6, -0x1

    invoke-virtual {v1, v0, v6, v2}, Lz1/F;->b(Landroid/content/Context;ILkb/c;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v3, :cond_3

    return-object v3

    :cond_3
    move-object v7, v0

    move-object v0, v4

    :goto_1
    move-object v10, v1

    check-cast v10, Lz1/E0;

    invoke-static {v0}, LG5/V2;->d(Lz1/Q0;)V

    invoke-virtual {v10, v0}, Lz1/E0;->a(Lx1/l;)I

    move-result v1

    sget-wide v11, LH0/g;->c:J

    new-instance v2, Lz1/f1;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v3

    const/4 v4, 0x0

    if-ne v3, v5, :cond_4

    move v9, v5

    goto :goto_2

    :cond_4
    move v9, v4

    :goto_2
    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v8, -0x1

    const v15, 0x1bde0

    move-object v6, v2

    invoke-direct/range {v6 .. v15}, Lz1/f1;-><init>(Landroid/content/Context;IZLz1/E0;JLandroid/content/ComponentName;ZI)V

    iget-object v0, v0, Lx1/n;->c:Ljava/util/ArrayList;

    new-instance v3, Ljava/util/ArrayList;

    const/16 v5, 0xa

    invoke-static {v0, v5}, Lfb/p;->m(Ljava/lang/Iterable;I)I

    move-result v5

    invoke-direct {v3, v5}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lx1/l;

    const-string v6, "null cannot be cast to non-null type androidx.glance.appwidget.EmittableSizeBox"

    invoke-static {v5, v6}, Ltb/k;->d(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v6, v5

    check-cast v6, Lz1/L;

    iget v6, v6, Lz1/L;->f:I

    invoke-interface {v5}, Lx1/l;->b()Lx1/r;

    move-result-object v7

    invoke-static {v2, v7, v1}, Lz1/H0;->a(Lz1/f1;Lx1/r;I)Lz1/P0;

    move-result-object v7

    int-to-float v8, v4

    invoke-static {v8, v8}, LG5/T2;->b(FF)J

    move-result-wide v8

    invoke-virtual {v2, v7, v8, v9}, Lz1/f1;->c(Lz1/P0;J)Lz1/f1;

    move-result-object v8

    iget-object v7, v7, Lz1/P0;->a:Landroid/widget/RemoteViews;

    invoke-static {v7, v8, v5}, LG5/X2;->g(Landroid/widget/RemoteViews;Lz1/f1;Lx1/l;)V

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    new-instance v6, Ldb/j;

    invoke-direct {v6, v5, v7}, Ldb/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_5
    return-object v3
.end method
