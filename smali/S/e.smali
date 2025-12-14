.class public final LS/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lz0/C;
.implements Lz0/B;


# instance fields
.field public final a:LUc/e;

.field public final b:LS/I;

.field public final c:LV/J;

.field public final d:Z

.field public final e:Lo3/f;

.field public f:LB0/O;

.field public g:Lz0/j;

.field public h:Lr0/c;

.field public i:Z

.field public j:J

.field public k:Z

.field public final l:LS/p0;

.field public final m:Lm0/m;


# direct methods
.method public constructor <init>(LUc/e;LS/I;LV/J;Z)V
    .locals 1

    const-string v0, "scrollState"

    invoke-static {p3, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LS/e;->a:LUc/e;

    iput-object p2, p0, LS/e;->b:LS/I;

    iput-object p3, p0, LS/e;->c:LV/J;

    iput-boolean p4, p0, LS/e;->d:Z

    new-instance p1, Lo3/f;

    const/16 p2, 0x8

    invoke-direct {p1, p2}, Lo3/f;-><init>(I)V

    iput-object p1, p0, LS/e;->e:Lo3/f;

    const-wide/16 p1, 0x0

    iput-wide p1, p0, LS/e;->j:J

    new-instance p1, LS/p0;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    const-wide/high16 p2, -0x8000000000000000L

    iput-wide p2, p1, LS/p0;->a:J

    sget-object p2, LS/p0;->e:LQ/j;

    iput-object p2, p1, LS/p0;->b:LQ/j;

    iput-object p1, p0, LS/e;->l:LS/p0;

    new-instance p1, LB0/a;

    const/16 p2, 0x9

    invoke-direct {p1, p2, p0}, LB0/a;-><init>(ILjava/lang/Object;)V

    sget-object p2, LR/p;->a:LA0/g;

    new-instance p2, LPc/f;

    const/4 p3, 0x1

    invoke-direct {p2, p3, p1}, LPc/f;-><init>(ILjava/lang/Object;)V

    new-instance p1, Lm0/g;

    invoke-direct {p1, p2}, Lm0/g;-><init>(Lsb/o;)V

    invoke-interface {p0, p1}, Lm0/m;->g(Lm0/m;)Lm0/m;

    move-result-object p1

    new-instance p2, LX/e;

    const/4 p3, 0x3

    invoke-direct {p2, p3}, Ltb/m;-><init>(I)V

    new-instance p3, Lm0/g;

    invoke-direct {p3, p2}, Lm0/g;-><init>(Lsb/o;)V

    invoke-interface {p1, p3}, Lm0/m;->g(Lm0/m;)Lm0/m;

    move-result-object p1

    iput-object p1, p0, LS/e;->m:Lm0/m;

    return-void
.end method

.method public static final b(LS/e;)F
    .locals 5

    iget-wide v0, p0, LS/e;->j:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/4 v1, 0x1

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/4 v2, 0x0

    if-eqz v0, :cond_1

    goto :goto_3

    :cond_1
    iget-object v0, p0, LS/e;->e:Lo3/f;

    iget-object v0, v0, Lo3/f;->b:Ljava/lang/Object;

    check-cast v0, Lc0/d;

    iget v3, v0, Lc0/d;->c:I

    if-gtz v3, :cond_6

    iget-boolean v0, p0, LS/e;->i:Z

    if-eqz v0, :cond_2

    invoke-virtual {p0}, LS/e;->c()Lr0/c;

    move-result-object v0

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    if-nez v0, :cond_3

    goto :goto_3

    :cond_3
    iget-wide v2, p0, LS/e;->j:J

    invoke-static {v2, v3}, LG5/V2;->h(J)J

    move-result-wide v2

    sget-object v4, LS/b;->a:[I

    iget-object p0, p0, LS/e;->b:LS/I;

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v4, p0

    if-eq p0, v1, :cond_5

    const/4 v1, 0x2

    if-ne p0, v1, :cond_4

    invoke-static {v2, v3}, Lr0/d;->b(J)F

    move-result p0

    iget v1, v0, Lr0/c;->a:F

    iget v0, v0, Lr0/c;->c:F

    invoke-static {v1, v0, p0}, LS/e;->k(FFF)F

    move-result p0

    :goto_2
    move v2, p0

    goto :goto_3

    :cond_4
    new-instance p0, LI5/b;

    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    throw p0

    :cond_5
    invoke-static {v2, v3}, Lr0/d;->a(J)F

    move-result p0

    iget v1, v0, Lr0/c;->b:F

    iget v0, v0, Lr0/c;->d:F

    invoke-static {v1, v0, p0}, LS/e;->k(FFF)F

    move-result p0

    goto :goto_2

    :goto_3
    return v2

    :cond_6
    sub-int/2addr v3, v1

    iget-object p0, v0, Lc0/d;->a:[Ljava/lang/Object;

    aget-object p0, p0, v3

    invoke-static {p0}, LB/e;->l(Ljava/lang/Object;)Ljava/lang/ClassCastException;

    move-result-object p0

    throw p0
.end method

.method public static k(FFF)F
    .locals 2

    const/4 v0, 0x0

    cmpl-float v1, p0, v0

    if-ltz v1, :cond_0

    cmpg-float v1, p1, p2

    if-gtz v1, :cond_0

    :goto_0
    move p0, v0

    goto :goto_1

    :cond_0
    cmpg-float v1, p0, v0

    if-gez v1, :cond_1

    cmpl-float v1, p1, p2

    if-lez v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    sub-float/2addr p1, p2

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p2

    cmpg-float p2, v0, p2

    if-gez p2, :cond_2

    goto :goto_1

    :cond_2
    move p0, p1

    :goto_1
    return p0
.end method


# virtual methods
.method public final c()Lr0/c;
    .locals 12

    iget-object v0, p0, LS/e;->f:LB0/O;

    const/4 v1, 0x0

    if-eqz v0, :cond_15

    invoke-virtual {v0}, LB0/O;->H()Lm0/l;

    move-result-object v2

    iget-boolean v2, v2, Lm0/l;->j:Z

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-nez v0, :cond_1

    goto/16 :goto_a

    :cond_1
    iget-object p0, p0, LS/e;->g:Lz0/j;

    if-eqz p0, :cond_15

    invoke-interface {p0}, Lz0/j;->c()Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_1

    :cond_2
    move-object p0, v1

    :goto_1
    if-nez p0, :cond_3

    goto/16 :goto_a

    :cond_3
    const/4 v2, 0x0

    invoke-virtual {v0}, LB0/O;->H()Lm0/l;

    move-result-object v3

    iget-boolean v3, v3, Lm0/l;->j:Z

    if-eqz v3, :cond_14

    invoke-interface {p0}, Lz0/j;->c()Z

    move-result v3

    if-eqz v3, :cond_13

    instance-of v3, p0, Lz0/v;

    if-eqz v3, :cond_4

    move-object v1, p0

    check-cast v1, Lz0/v;

    :cond_4
    if-eqz v1, :cond_5

    iget-object v1, v1, Lz0/v;->a:LB0/J;

    iget-object v1, v1, LB0/J;->i:LB0/O;

    if-nez v1, :cond_6

    :cond_5
    move-object v1, p0

    check-cast v1, LB0/O;

    :cond_6
    invoke-virtual {v1}, LB0/O;->K()V

    iget-object v3, v1, LB0/O;->i:Landroidx/compose/ui/node/a;

    iget-object v4, v0, LB0/O;->i:Landroidx/compose/ui/node/a;

    if-ne v3, v4, :cond_a

    invoke-virtual {v1}, LB0/O;->H()Lm0/l;

    move-result-object v3

    invoke-virtual {v0}, LB0/O;->H()Lm0/l;

    move-result-object v4

    iget-object v4, v4, Lm0/l;->a:Lm0/l;

    iget-boolean v5, v4, Lm0/l;->j:Z

    if-eqz v5, :cond_9

    iget-object v4, v4, Lm0/l;->e:Lm0/l;

    :goto_2
    if-eqz v4, :cond_8

    iget v5, v4, Lm0/l;->c:I

    and-int/lit8 v5, v5, 0x2

    if-eqz v5, :cond_7

    if-ne v4, v3, :cond_7

    :goto_3
    move-object v3, v1

    goto :goto_6

    :cond_7
    iget-object v4, v4, Lm0/l;->e:Lm0/l;

    goto :goto_2

    :cond_8
    :goto_4
    move-object v3, v0

    goto :goto_6

    :cond_9
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "visitLocalAncestors called on an unattached node"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_a
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object v5, v4

    :goto_5
    if-eq v3, v5, :cond_c

    invoke-virtual {v3}, Landroidx/compose/ui/node/a;->j()Landroidx/compose/ui/node/a;

    move-result-object v3

    invoke-virtual {v5}, Landroidx/compose/ui/node/a;->j()Landroidx/compose/ui/node/a;

    move-result-object v5

    if-eqz v3, :cond_b

    if-eqz v5, :cond_b

    goto :goto_5

    :cond_b
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "layouts are not part of the same hierarchy"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_c
    if-ne v5, v4, :cond_d

    goto :goto_4

    :cond_d
    iget-object v4, v1, LB0/O;->i:Landroidx/compose/ui/node/a;

    if-ne v3, v4, :cond_e

    goto :goto_3

    :cond_e
    iget-object v3, v3, Landroidx/compose/ui/node/a;->r:LB0/M;

    iget-object v3, v3, LB0/M;->c:Ljava/lang/Object;

    check-cast v3, LB0/m;

    :goto_6
    iget-object v4, v0, LB0/O;->s:Lr0/a;

    const/4 v5, 0x0

    if-nez v4, :cond_f

    new-instance v4, Lr0/a;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    iput v5, v4, Lr0/a;->a:F

    iput v5, v4, Lr0/a;->b:F

    iput v5, v4, Lr0/a;->c:F

    iput v5, v4, Lr0/a;->d:F

    iput-object v4, v0, LB0/O;->s:Lr0/a;

    :cond_f
    iput v5, v4, Lr0/a;->a:F

    iput v5, v4, Lr0/a;->b:F

    invoke-interface {p0}, Lz0/j;->d()J

    move-result-wide v5

    const/16 v7, 0x20

    shr-long/2addr v5, v7

    long-to-int v5, v5

    int-to-float v5, v5

    iput v5, v4, Lr0/a;->c:F

    invoke-interface {p0}, Lz0/j;->d()J

    move-result-wide v5

    const-wide v8, 0xffffffffL

    and-long/2addr v5, v8

    long-to-int p0, v5

    int-to-float p0, p0

    iput p0, v4, Lr0/a;->d:F

    :goto_7
    if-eq v1, v3, :cond_12

    iget-wide v5, v1, LB0/O;->q:J

    sget p0, LH0/i;->c:I

    shr-long v10, v5, v7

    long-to-int p0, v10

    iget v10, v4, Lr0/a;->a:F

    int-to-float p0, p0

    add-float/2addr v10, p0

    iput v10, v4, Lr0/a;->a:F

    iget v11, v4, Lr0/a;->c:F

    add-float/2addr v11, p0

    iput v11, v4, Lr0/a;->c:F

    and-long/2addr v5, v8

    long-to-int p0, v5

    iget v5, v4, Lr0/a;->b:F

    int-to-float p0, p0

    add-float/2addr v5, p0

    iput v5, v4, Lr0/a;->b:F

    iget v6, v4, Lr0/a;->d:F

    add-float/2addr v6, p0

    iput v6, v4, Lr0/a;->d:F

    cmpl-float p0, v10, v11

    if-gez p0, :cond_11

    cmpl-float p0, v5, v6

    if-ltz p0, :cond_10

    goto :goto_8

    :cond_10
    iget-object v1, v1, LB0/O;->k:LB0/O;

    invoke-static {v1}, Ltb/k;->c(Ljava/lang/Object;)V

    goto :goto_7

    :cond_11
    :goto_8
    sget-object p0, Lr0/c;->e:Lr0/c;

    goto :goto_9

    :cond_12
    invoke-virtual {v0, v3, v4, v2}, LB0/O;->E(LB0/O;Lr0/a;Z)V

    new-instance p0, Lr0/c;

    iget v0, v4, Lr0/a;->a:F

    iget v1, v4, Lr0/a;->b:F

    iget v2, v4, Lr0/a;->c:F

    iget v3, v4, Lr0/a;->d:F

    invoke-direct {p0, v0, v1, v2, v3}, Lr0/c;-><init>(FFFF)V

    :goto_9
    return-object p0

    :cond_13
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "LayoutCoordinates "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " is not attached!"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_14
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "LayoutCoordinate operations are only valid when isAttached is true"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_15
    :goto_a
    return-object v1
.end method

.method public final f(J)V
    .locals 8

    iget-wide v0, p0, LS/e;->j:J

    iput-wide p1, p0, LS/e;->j:J

    sget-object v2, LS/b;->a:[I

    iget-object v3, p0, LS/e;->b:LS/I;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v2, v2, v3

    const/4 v3, 0x1

    if-eq v2, v3, :cond_1

    const/4 v4, 0x2

    if-ne v2, v4, :cond_0

    const/16 v2, 0x20

    shr-long v4, p1, v2

    long-to-int v4, v4

    shr-long v5, v0, v2

    long-to-int v2, v5

    invoke-static {v4, v2}, Ltb/k;->h(II)I

    move-result v2

    goto :goto_0

    :cond_0
    new-instance p0, LI5/b;

    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    throw p0

    :cond_1
    const-wide v4, 0xffffffffL

    and-long v6, p1, v4

    long-to-int v2, v6

    and-long/2addr v4, v0

    long-to-int v4, v4

    invoke-static {v2, v4}, Ltb/k;->h(II)I

    move-result v2

    :goto_0
    if-ltz v2, :cond_2

    return-void

    :cond_2
    invoke-virtual {p0}, LS/e;->c()Lr0/c;

    move-result-object v2

    if-eqz v2, :cond_6

    iget-object v4, p0, LS/e;->h:Lr0/c;

    if-nez v4, :cond_3

    move-object v4, v2

    :cond_3
    iget-boolean v5, p0, LS/e;->k:Z

    if-nez v5, :cond_5

    iget-boolean v5, p0, LS/e;->i:Z

    if-nez v5, :cond_5

    invoke-virtual {p0, v4, v0, v1}, LS/e;->j(Lr0/c;J)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p0, v2, p1, p2}, LS/e;->j(Lr0/c;J)Z

    move-result p1

    if-nez p1, :cond_5

    iput-boolean v3, p0, LS/e;->i:Z

    iget-boolean p1, p0, LS/e;->k:Z

    if-nez p1, :cond_4

    sget-object p1, LNc/D;->UNDISPATCHED:LNc/D;

    new-instance p2, LS/d;

    const/4 v0, 0x0

    invoke-direct {p2, p0, v0}, LS/d;-><init>(LS/e;Lib/c;)V

    iget-object v1, p0, LS/e;->a:LUc/e;

    invoke-static {v1, v0, p1, p2, v3}, LNc/E;->y(LNc/B;Lib/h;LNc/D;Lsb/n;I)LNc/C0;

    goto :goto_1

    :cond_4
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Check failed."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    :goto_1
    iput-object v2, p0, LS/e;->h:Lr0/c;

    :cond_6
    return-void
.end method

.method public final h(Lz0/j;)V
    .locals 0

    check-cast p1, LB0/O;

    iput-object p1, p0, LS/e;->f:LB0/O;

    return-void
.end method

.method public final j(Lr0/c;J)Z
    .locals 3

    invoke-static {p2, p3}, LG5/V2;->h(J)J

    move-result-wide p2

    sget-object v0, LS/b;->a:[I

    iget-object p0, p0, LS/e;->b:LS/I;

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eq p0, v0, :cond_1

    const/4 v2, 0x2

    if-ne p0, v2, :cond_0

    invoke-static {p2, p3}, Lr0/d;->b(J)F

    move-result p0

    iget p2, p1, Lr0/c;->c:F

    iget p1, p1, Lr0/c;->a:F

    invoke-static {p1, p2, p0}, LS/e;->k(FFF)F

    move-result p0

    invoke-static {p0, v1}, LG5/A;->a(FF)J

    move-result-wide p0

    goto :goto_0

    :cond_0
    new-instance p0, LI5/b;

    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    throw p0

    :cond_1
    invoke-static {p2, p3}, Lr0/d;->a(J)F

    move-result p0

    iget p2, p1, Lr0/c;->d:F

    iget p1, p1, Lr0/c;->b:F

    invoke-static {p1, p2, p0}, LS/e;->k(FFF)F

    move-result p0

    invoke-static {v1, p0}, LG5/A;->a(FF)J

    move-result-wide p0

    :goto_0
    sget-wide p2, Lr0/b;->b:J

    cmp-long p0, p0, p2

    if-nez p0, :cond_2

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    return v0
.end method
