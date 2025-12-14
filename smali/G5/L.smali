.class public abstract LG5/L;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:Landroid/content/SharedPreferences;


# direct methods
.method public static final a(Lx0/j;La0/a0;La0/a0;Ly0/d;LS/I;Lkb/a;)Ljava/io/Serializable;
    .locals 10

    const/4 v0, 0x1

    const/4 v1, 0x0

    instance-of v2, p5, LS/u;

    if-eqz v2, :cond_0

    move-object v2, p5

    check-cast v2, LS/u;

    iget v3, v2, LS/u;->k:I

    const/high16 v4, -0x80000000

    and-int v5, v3, v4

    if-eqz v5, :cond_0

    sub-int/2addr v3, v4

    iput v3, v2, LS/u;->k:I

    goto :goto_0

    :cond_0
    new-instance v2, LS/u;

    invoke-direct {v2, p5}, Lkb/c;-><init>(Lib/c;)V

    :goto_0
    iget-object p5, v2, LS/u;->j:Ljava/lang/Object;

    sget-object v3, Ljb/a;->COROUTINE_SUSPENDED:Ljb/a;

    iget v4, v2, LS/u;->k:I

    const/4 v5, 0x0

    const/4 v6, 0x2

    if-eqz v4, :cond_9

    if-eq v4, v0, :cond_8

    if-eq v4, v6, :cond_7

    const/4 p0, 0x4

    const/4 p1, 0x3

    if-eq v4, p1, :cond_3

    if-ne v4, p0, :cond_2

    iget p0, v2, LS/u;->i:F

    iget p2, v2, LS/u;->h:F

    iget p3, v2, LS/u;->g:F

    iget p4, v2, LS/u;->f:I

    iget-object v4, v2, LS/u;->e:Ljava/io/Serializable;

    check-cast v4, Ltb/v;

    iget-object v6, v2, LS/u;->d:Ljava/lang/Object;

    check-cast v6, LS/o;

    iget-object v7, v2, LS/u;->c:Ljava/lang/Object;

    check-cast v7, Lx0/j;

    iget-object v8, v2, LS/u;->b:Ljava/lang/Object;

    check-cast v8, Lsb/n;

    iget-object v9, v2, LS/u;->a:Ljava/lang/Object;

    check-cast v9, Ltb/v;

    invoke-static {p5}, LG5/A2;->f(Ljava/lang/Object;)V

    invoke-virtual {v1}, Lx0/e;->a()Z

    move-result p5

    if-eqz p5, :cond_1

    goto/16 :goto_7

    :cond_1
    iput-object v9, v2, LS/u;->a:Ljava/lang/Object;

    iput-object v8, v2, LS/u;->b:Ljava/lang/Object;

    iput-object v7, v2, LS/u;->c:Ljava/lang/Object;

    iput-object v6, v2, LS/u;->d:Ljava/lang/Object;

    iput-object v4, v2, LS/u;->e:Ljava/io/Serializable;

    iput p4, v2, LS/u;->f:I

    iput p3, v2, LS/u;->g:F

    iput p2, v2, LS/u;->h:F

    iput p0, v2, LS/u;->i:F

    iput p1, v2, LS/u;->k:I

    sget-object p0, Lx0/b;->Main:Lx0/b;

    invoke-virtual {v7, p0, v2}, Lx0/j;->a(Lx0/b;Lkb/a;)Ljava/lang/Object;

    move-result-object p5

    if-ne p5, v3, :cond_4

    :goto_1
    move-object v1, v3

    goto/16 :goto_7

    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    iget p0, v2, LS/u;->i:F

    iget p0, v2, LS/u;->h:F

    iget p0, v2, LS/u;->g:F

    iget p0, v2, LS/u;->f:I

    iget-object p0, v2, LS/u;->e:Ljava/io/Serializable;

    move-object v4, p0

    check-cast v4, Ltb/v;

    iget-object p0, v2, LS/u;->d:Ljava/lang/Object;

    check-cast p0, LS/o;

    iget-object p0, v2, LS/u;->c:Ljava/lang/Object;

    check-cast p0, Lx0/j;

    iget-object p0, v2, LS/u;->b:Ljava/lang/Object;

    check-cast p0, Lsb/n;

    iget-object p0, v2, LS/u;->a:Ljava/lang/Object;

    check-cast p0, Ltb/v;

    invoke-static {p5}, LG5/A2;->f(Ljava/lang/Object;)V

    :cond_4
    check-cast p5, Lx0/a;

    iget-object p0, p5, Lx0/a;->a:Ljava/lang/Object;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p1

    :goto_2
    if-ge v5, p1, :cond_6

    invoke-interface {p0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    move-object p3, p2

    check-cast p3, Lx0/e;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-wide p3, v4, Ltb/v;->a:J

    const-wide/16 v2, 0x0

    cmp-long p3, v2, p3

    if-nez p3, :cond_5

    goto :goto_3

    :cond_5
    add-int/2addr v5, v0

    goto :goto_2

    :cond_6
    move-object p2, v1

    :goto_3
    check-cast p2, Lx0/e;

    goto/16 :goto_7

    :cond_7
    iget-object p0, v2, LS/u;->c:Ljava/lang/Object;

    check-cast p0, LS/I;

    iget-object p1, v2, LS/u;->b:Ljava/lang/Object;

    check-cast p1, Ly0/d;

    iget-object p2, v2, LS/u;->a:Ljava/lang/Object;

    check-cast p2, Lx0/j;

    invoke-static {p5}, LG5/A2;->f(Ljava/lang/Object;)V

    goto/16 :goto_5

    :cond_8
    iget-object p0, v2, LS/u;->e:Ljava/io/Serializable;

    move-object p4, p0

    check-cast p4, LS/I;

    iget-object p0, v2, LS/u;->d:Ljava/lang/Object;

    move-object p3, p0

    check-cast p3, Ly0/d;

    iget-object p0, v2, LS/u;->c:Ljava/lang/Object;

    move-object p2, p0

    check-cast p2, La0/K0;

    iget-object p0, v2, LS/u;->b:Ljava/lang/Object;

    move-object p1, p0

    check-cast p1, La0/K0;

    iget-object p0, v2, LS/u;->a:Ljava/lang/Object;

    check-cast p0, Lx0/j;

    invoke-static {p5}, LG5/A2;->f(Ljava/lang/Object;)V

    goto :goto_4

    :cond_9
    invoke-static {p5}, LG5/A2;->f(Ljava/lang/Object;)V

    sget-object p5, Lx0/b;->Initial:Lx0/b;

    iput-object p0, v2, LS/u;->a:Ljava/lang/Object;

    iput-object p1, v2, LS/u;->b:Ljava/lang/Object;

    iput-object p2, v2, LS/u;->c:Ljava/lang/Object;

    iput-object p3, v2, LS/u;->d:Ljava/lang/Object;

    iput-object p4, v2, LS/u;->e:Ljava/io/Serializable;

    iput v0, v2, LS/u;->k:I

    invoke-static {p0, v5, p5, v2}, LS/m0;->a(Lx0/j;ZLx0/b;Lkb/a;)Ljava/lang/Object;

    move-result-object p5

    if-ne p5, v3, :cond_a

    goto/16 :goto_1

    :cond_a
    :goto_4
    check-cast p5, Lx0/e;

    invoke-interface {p1}, La0/K0;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lsb/k;

    invoke-interface {p1, p5}, Lsb/k;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_b

    goto :goto_7

    :cond_b
    invoke-interface {p2}, La0/K0;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lsb/a;

    invoke-interface {p1}, Lsb/a;->invoke()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_e

    iput-object p0, v2, LS/u;->a:Ljava/lang/Object;

    iput-object p3, v2, LS/u;->b:Ljava/lang/Object;

    iput-object p4, v2, LS/u;->c:Ljava/lang/Object;

    iput-object v1, v2, LS/u;->d:Ljava/lang/Object;

    iput-object v1, v2, LS/u;->e:Ljava/io/Serializable;

    iput v6, v2, LS/u;->k:I

    sget-object p1, Lx0/b;->Main:Lx0/b;

    invoke-static {p0, v5, p1, v2}, LS/m0;->a(Lx0/j;ZLx0/b;Lkb/a;)Ljava/lang/Object;

    move-result-object p5

    if-ne p5, v3, :cond_c

    goto/16 :goto_1

    :cond_c
    move-object p2, p0

    move-object p1, p3

    move-object p0, p4

    :goto_5
    check-cast p5, Lx0/e;

    invoke-static {p1, p5}, Ly0/e;->a(Ly0/d;Lx0/e;)V

    new-instance p1, Ltb/v;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    sget-wide p3, Lr0/b;->b:J

    iput-wide p3, p1, Ltb/v;->a:J

    sget p1, LS/p;->a:I

    const-string p1, "<this>"

    invoke-static {p0, p1}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p1, LS/I;->Vertical:LS/I;

    if-ne p0, p1, :cond_d

    sget p0, LS/p;->a:I

    goto :goto_6

    :cond_d
    sget p0, LS/p;->a:I

    :goto_6
    iget-object p0, p2, Lx0/j;->d:Lx0/k;

    iget-object p0, p0, Lx0/k;->k:Lx0/a;

    invoke-static {p0}, LS/p;->a(Lx0/a;)Z

    :goto_7
    return-object v1

    :cond_e
    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    throw v1
.end method

.method public static final b(Lx0/j;Lx0/e;JLy0/d;LPc/B;ZLS/I;LS/A;)Ljava/lang/Object;
    .locals 4

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Lr0/b;->a(J)F

    move-result p1

    invoke-static {p1}, Ljava/lang/Math;->signum(F)F

    move-result p1

    invoke-static {v0, v1}, Lr0/b;->b(J)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->signum(F)F

    move-result v2

    invoke-static {p2, p3}, Lr0/b;->a(J)F

    move-result v3

    mul-float/2addr v3, p1

    invoke-static {p2, p3}, Lr0/b;->b(J)F

    move-result p1

    mul-float/2addr p1, v2

    invoke-static {v3, p1}, LG5/A;->a(FF)J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lr0/b;->c(JJ)J

    move-result-wide v0

    new-instance p1, LS/m;

    invoke-direct {p1, v0, v1}, LS/m;-><init>(J)V

    invoke-interface {p5, p1}, LPc/B;->k(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p1, LS/l;

    if-eqz p6, :cond_0

    const/high16 v0, -0x40800000    # -1.0f

    invoke-static {p2, p3, v0}, Lr0/b;->e(JF)J

    move-result-wide p2

    :cond_0
    invoke-direct {p1, p2, p3}, LS/l;-><init>(J)V

    invoke-interface {p5, p1}, LPc/B;->k(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p1, LS/v;

    invoke-direct {p1, p4, p5, p6}, LS/v;-><init>(Ly0/d;LPc/B;Z)V

    invoke-static {p0, p7, p1, p8}, LG5/L;->f(Lx0/j;LS/I;LS/v;Lkb/a;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final c(Lyc/w;)LDc/a;
    .locals 12

    const-string v0, "type"

    invoke-static {p0, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lyc/c;->l(Lyc/w;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lyc/c;->m(Lyc/w;)Lyc/A;

    move-result-object v0

    invoke-static {v0}, LG5/L;->c(Lyc/w;)LDc/a;

    move-result-object v0

    invoke-static {p0}, Lyc/c;->E(Lyc/w;)Lyc/A;

    move-result-object v1

    invoke-static {v1}, LG5/L;->c(Lyc/w;)LDc/a;

    move-result-object v1

    new-instance v2, LDc/a;

    iget-object v3, v0, LDc/a;->a:Ljava/lang/Object;

    check-cast v3, Lyc/w;

    invoke-static {v3}, Lyc/c;->m(Lyc/w;)Lyc/A;

    move-result-object v3

    iget-object v4, v1, LDc/a;->a:Ljava/lang/Object;

    check-cast v4, Lyc/w;

    invoke-static {v4}, Lyc/c;->E(Lyc/w;)Lyc/A;

    move-result-object v4

    invoke-static {v3, v4}, Lyc/c;->f(Lyc/A;Lyc/A;)Lyc/d0;

    move-result-object v3

    invoke-static {v3, p0}, Lyc/c;->i(Lyc/d0;Lyc/w;)Lyc/d0;

    move-result-object v3

    iget-object v0, v0, LDc/a;->b:Ljava/lang/Object;

    check-cast v0, Lyc/w;

    invoke-static {v0}, Lyc/c;->m(Lyc/w;)Lyc/A;

    move-result-object v0

    iget-object v1, v1, LDc/a;->b:Ljava/lang/Object;

    check-cast v1, Lyc/w;

    invoke-static {v1}, Lyc/c;->E(Lyc/w;)Lyc/A;

    move-result-object v1

    invoke-static {v0, v1}, Lyc/c;->f(Lyc/A;Lyc/A;)Lyc/d0;

    move-result-object v0

    invoke-static {v0, p0}, Lyc/c;->i(Lyc/d0;Lyc/w;)Lyc/d0;

    move-result-object p0

    invoke-direct {v2, v3, p0}, LDc/a;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v2

    :cond_0
    invoke-virtual {p0}, Lyc/w;->F0()Lyc/L;

    move-result-object v0

    invoke-virtual {p0}, Lyc/w;->F0()Lyc/L;

    move-result-object v1

    instance-of v1, v1, Llc/b;

    const/4 v2, 0x3

    const/4 v3, 0x2

    const-string v4, "getType(...)"

    if-eqz v1, :cond_3

    const-string v1, "null cannot be cast to non-null type org.jetbrains.kotlin.resolve.calls.inference.CapturedTypeConstructor"

    invoke-static {v0, v1}, Ltb/k;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Llc/b;

    invoke-interface {v0}, Llc/b;->b()Lyc/Q;

    move-result-object v0

    invoke-virtual {v0}, Lyc/Q;->b()Lyc/w;

    move-result-object v1

    invoke-static {v1, v4}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lyc/w;->G0()Z

    move-result v4

    invoke-static {v1, v4}, Lyc/b0;->h(Lyc/w;Z)Lyc/w;

    move-result-object v1

    invoke-virtual {v0}, Lyc/Q;->a()Lyc/e0;

    move-result-object v4

    sget-object v5, LDc/c;->a:[I

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aget v4, v5, v4

    if-eq v4, v3, :cond_2

    if-ne v4, v2, :cond_1

    new-instance v0, LDc/a;

    invoke-static {p0}, LG5/B;->f(Lyc/w;)LGb/i;

    move-result-object v2

    invoke-virtual {v2}, LGb/i;->o()Lyc/A;

    move-result-object v2

    invoke-virtual {p0}, Lyc/w;->G0()Z

    move-result p0

    invoke-static {v2, p0}, Lyc/b0;->h(Lyc/w;Z)Lyc/w;

    move-result-object p0

    invoke-direct {v0, p0, v1}, LDc/a;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Only nontrivial projections should have been captured, not: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p0

    :cond_2
    new-instance v0, LDc/a;

    invoke-static {p0}, LG5/B;->f(Lyc/w;)LGb/i;

    move-result-object p0

    invoke-virtual {p0}, LGb/i;->p()Lyc/A;

    move-result-object p0

    invoke-direct {v0, v1, p0}, LDc/a;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_0
    return-object v0

    :cond_3
    invoke-virtual {p0}, Lyc/w;->D0()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_12

    invoke-virtual {p0}, Lyc/w;->D0()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {v0}, Lyc/L;->a()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-eq v1, v5, :cond_4

    goto/16 :goto_6

    :cond_4
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Lyc/w;->D0()Ljava/util/List;

    move-result-object v6

    check-cast v6, Ljava/lang/Iterable;

    invoke-interface {v0}, Lyc/L;->a()Ljava/util/List;

    move-result-object v0

    const-string v7, "getParameters(...)"

    invoke-static {v0, v7}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Iterable;

    invoke-static {v6, v0}, Lfb/n;->n0(Ljava/lang/Iterable;Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    const/4 v7, 0x1

    if-eqz v6, :cond_d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ldb/j;

    iget-object v8, v6, Ldb/j;->a:Ljava/lang/Object;

    check-cast v8, Lyc/Q;

    iget-object v6, v6, Ldb/j;->b:Ljava/lang/Object;

    check-cast v6, LJb/W;

    invoke-static {v6}, Ltb/k;->c(Ljava/lang/Object;)V

    invoke-interface {v6}, LJb/W;->A()Lyc/e0;

    move-result-object v9

    const/4 v10, 0x0

    if-eqz v9, :cond_c

    if-eqz v8, :cond_b

    sget-object v11, Lyc/Y;->b:Lyc/Y;

    invoke-virtual {v8}, Lyc/Q;->c()Z

    move-result v11

    if-eqz v11, :cond_6

    sget-object v9, Lyc/e0;->OUT_VARIANCE:Lyc/e0;

    if-eqz v9, :cond_5

    goto :goto_2

    :cond_5
    const/16 p0, 0x25

    invoke-static {p0}, Lyc/Y;->a(I)V

    throw v10

    :cond_6
    invoke-virtual {v8}, Lyc/Q;->a()Lyc/e0;

    move-result-object v10

    invoke-static {v9, v10}, Lyc/Y;->b(Lyc/e0;Lyc/e0;)Lyc/e0;

    move-result-object v9

    :goto_2
    sget-object v10, LDc/c;->a:[I

    invoke-virtual {v9}, Ljava/lang/Enum;->ordinal()I

    move-result v9

    aget v9, v10, v9

    if-eq v9, v7, :cond_9

    if-eq v9, v3, :cond_8

    if-ne v9, v2, :cond_7

    new-instance v7, LDc/e;

    invoke-static {v6}, Loc/d;->e(LJb/l;)LGb/i;

    move-result-object v9

    invoke-virtual {v9}, LGb/i;->o()Lyc/A;

    move-result-object v9

    invoke-virtual {v8}, Lyc/Q;->b()Lyc/w;

    move-result-object v10

    invoke-static {v10, v4}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v7, v6, v9, v10}, LDc/e;-><init>(LJb/W;Lyc/w;Lyc/w;)V

    goto :goto_3

    :cond_7
    new-instance p0, LI5/b;

    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    throw p0

    :cond_8
    new-instance v7, LDc/e;

    invoke-virtual {v8}, Lyc/Q;->b()Lyc/w;

    move-result-object v9

    invoke-static {v9, v4}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v6}, Loc/d;->e(LJb/l;)LGb/i;

    move-result-object v10

    invoke-virtual {v10}, LGb/i;->p()Lyc/A;

    move-result-object v10

    const-string v11, "getNullableAnyType(...)"

    invoke-static {v10, v11}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v7, v6, v9, v10}, LDc/e;-><init>(LJb/W;Lyc/w;Lyc/w;)V

    goto :goto_3

    :cond_9
    new-instance v7, LDc/e;

    invoke-virtual {v8}, Lyc/Q;->b()Lyc/w;

    move-result-object v9

    invoke-static {v9, v4}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v8}, Lyc/Q;->b()Lyc/w;

    move-result-object v10

    invoke-static {v10, v4}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v7, v6, v9, v10}, LDc/e;-><init>(LJb/W;Lyc/w;Lyc/w;)V

    :goto_3
    invoke-virtual {v8}, Lyc/Q;->c()Z

    move-result v6

    if-eqz v6, :cond_a

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_a
    iget-object v6, v7, LDc/e;->b:Lyc/w;

    invoke-static {v6}, LG5/L;->c(Lyc/w;)LDc/a;

    move-result-object v6

    iget-object v8, v6, LDc/a;->a:Ljava/lang/Object;

    check-cast v8, Lyc/w;

    iget-object v6, v6, LDc/a;->b:Ljava/lang/Object;

    check-cast v6, Lyc/w;

    iget-object v9, v7, LDc/e;->c:Lyc/w;

    invoke-static {v9}, LG5/L;->c(Lyc/w;)LDc/a;

    move-result-object v9

    iget-object v10, v9, LDc/a;->a:Ljava/lang/Object;

    check-cast v10, Lyc/w;

    iget-object v9, v9, LDc/a;->b:Ljava/lang/Object;

    check-cast v9, Lyc/w;

    new-instance v11, LDc/e;

    iget-object v7, v7, LDc/e;->a:LJb/W;

    invoke-direct {v11, v7, v6, v10}, LDc/e;-><init>(LJb/W;Lyc/w;Lyc/w;)V

    new-instance v6, LDc/e;

    invoke-direct {v6, v7, v8, v9}, LDc/e;-><init>(LJb/W;Lyc/w;Lyc/w;)V

    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_b
    const/16 p0, 0x24

    invoke-static {p0}, Lyc/Y;->a(I)V

    throw v10

    :cond_c
    const/16 p0, 0x23

    invoke-static {p0}, Lyc/Y;->a(I)V

    throw v10

    :cond_d
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_f

    :cond_e
    move v7, v2

    goto :goto_4

    :cond_f
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_10
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, LDc/e;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v4, Lzc/d;->a:Lzc/l;

    iget-object v6, v3, LDc/e;->c:Lyc/w;

    iget-object v3, v3, LDc/e;->b:Lyc/w;

    invoke-virtual {v4, v3, v6}, Lzc/l;->b(Lyc/w;Lyc/w;)Z

    move-result v3

    if-nez v3, :cond_10

    :goto_4
    new-instance v0, LDc/a;

    if-eqz v7, :cond_11

    invoke-static {p0}, LG5/B;->f(Lyc/w;)LGb/i;

    move-result-object v1

    invoke-virtual {v1}, LGb/i;->o()Lyc/A;

    move-result-object v1

    goto :goto_5

    :cond_11
    invoke-static {p0, v1}, LG5/L;->g(Lyc/w;Ljava/util/ArrayList;)Lyc/w;

    move-result-object v1

    :goto_5
    invoke-static {p0, v5}, LG5/L;->g(Lyc/w;Ljava/util/ArrayList;)Lyc/w;

    move-result-object p0

    invoke-direct {v0, v1, p0}, LDc/a;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0

    :cond_12
    :goto_6
    new-instance v0, LDc/a;

    invoke-direct {v0, p0, p0}, LDc/a;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static d(IILjava/math/RoundingMode;)I
    .locals 5

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz p1, :cond_7

    div-int v0, p0, p1

    mul-int v1, p1, v0

    sub-int v1, p0, v1

    if-nez v1, :cond_0

    return v0

    :cond_0
    xor-int/2addr p0, p1

    shr-int/lit8 p0, p0, 0x1f

    const/4 v2, 0x1

    or-int/2addr p0, v2

    sget-object v3, Lcom/google/common/math/a;->a:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :pswitch_0
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    sub-int/2addr p1, v1

    sub-int/2addr v1, p1

    if-nez v1, :cond_3

    sget-object p1, Ljava/math/RoundingMode;->HALF_UP:Ljava/math/RoundingMode;

    if-eq p2, p1, :cond_4

    sget-object p1, Ljava/math/RoundingMode;->HALF_EVEN:Ljava/math/RoundingMode;

    const/4 v1, 0x0

    if-ne p2, p1, :cond_1

    move p1, v2

    goto :goto_0

    :cond_1
    move p1, v1

    :goto_0
    and-int/lit8 p2, v0, 0x1

    if-eqz p2, :cond_2

    goto :goto_1

    :cond_2
    move v2, v1

    :goto_1
    and-int/2addr p1, v2

    if-eqz p1, :cond_5

    goto :goto_2

    :cond_3
    if-lez v1, :cond_5

    goto :goto_2

    :pswitch_1
    if-lez p0, :cond_5

    goto :goto_2

    :pswitch_2
    if-gez p0, :cond_5

    :cond_4
    :goto_2
    :pswitch_3
    add-int/2addr v0, p0

    goto :goto_3

    :pswitch_4
    if-nez v1, :cond_6

    :cond_5
    :goto_3
    :pswitch_5
    return v0

    :cond_6
    new-instance p0, Ljava/lang/ArithmeticException;

    const-string p1, "mode was UNNECESSARY, but rounding was necessary"

    invoke-direct {p0, p1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_7
    new-instance p0, Ljava/lang/ArithmeticException;

    const-string p1, "/ by zero"

    invoke-direct {p0, p1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_5
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static e(ILjava/math/RoundingMode;)I
    .locals 3

    if-lez p0, :cond_3

    sget-object v0, Lcom/google/common/math/a;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    packed-switch p1, :pswitch_data_0

    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :pswitch_0
    invoke-static {p0}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    move-result p1

    const v0, -0x4afb0ccd

    ushr-int/2addr v0, p1

    rsub-int/lit8 p1, p1, 0x1f

    sub-int/2addr v0, p0

    not-int p0, v0

    not-int p0, p0

    ushr-int/lit8 p0, p0, 0x1f

    add-int/2addr p1, p0

    return p1

    :pswitch_1
    sub-int/2addr p0, v0

    invoke-static {p0}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    move-result p0

    rsub-int/lit8 p0, p0, 0x20

    return p0

    :pswitch_2
    const/4 p1, 0x0

    if-lez p0, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    move v1, p1

    :goto_0
    add-int/lit8 v2, p0, -0x1

    and-int/2addr v2, p0

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    move v0, p1

    :goto_1
    and-int p1, v1, v0

    if-eqz p1, :cond_2

    :pswitch_3
    invoke-static {p0}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    move-result p0

    rsub-int/lit8 p0, p0, 0x1f

    return p0

    :cond_2
    new-instance p0, Ljava/lang/ArithmeticException;

    const-string p1, "mode was UNNECESSARY, but rounding was necessary"

    invoke-direct {p0, p1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "x ("

    const-string v1, ") must be > 0"

    invoke-static {p0, v0, v1}, Lt/b;->f(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static final f(Lx0/j;LS/I;LS/v;Lkb/a;)Ljava/lang/Object;
    .locals 6

    instance-of p1, p3, LS/E;

    if-eqz p1, :cond_0

    move-object p1, p3

    check-cast p1, LS/E;

    iget p2, p1, LS/E;->g:I

    const/high16 v0, -0x80000000

    and-int v1, p2, v0

    if-eqz v1, :cond_0

    sub-int/2addr p2, v0

    iput p2, p1, LS/E;->g:I

    goto :goto_0

    :cond_0
    new-instance p1, LS/E;

    invoke-direct {p1, p3}, Lkb/c;-><init>(Lib/c;)V

    :goto_0
    iget-object p2, p1, LS/E;->f:Ljava/lang/Object;

    sget-object p3, Ljb/a;->COROUTINE_SUSPENDED:Ljb/a;

    iget p3, p1, LS/E;->g:I

    const/4 v0, 0x0

    if-eqz p3, :cond_4

    const/4 p0, 0x1

    if-ne p3, p0, :cond_3

    iget-object p0, p1, LS/E;->e:Ltb/v;

    iget-object p3, p1, LS/E;->d:Lx0/j;

    iget-object p3, p1, LS/E;->c:Lx0/j;

    iget-object p3, p1, LS/E;->b:Lsb/k;

    iget-object p1, p1, LS/E;->a:Lsb/k;

    invoke-static {p2}, LG5/A2;->f(Ljava/lang/Object;)V

    check-cast p2, Lx0/a;

    iget-object p1, p2, Lx0/a;->a:Ljava/lang/Object;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    move p3, v0

    :goto_1
    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    if-ge p3, p2, :cond_2

    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Lx0/e;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-wide v4, p0, Ltb/v;->a:J

    cmp-long v1, v1, v4

    if-nez v1, :cond_1

    goto :goto_2

    :cond_1
    add-int/lit8 p3, p3, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    check-cast v3, Lx0/e;

    goto :goto_3

    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    invoke-static {p2}, LG5/A2;->f(Ljava/lang/Object;)V

    iget-object p0, p0, Lx0/j;->d:Lx0/k;

    iget-object p0, p0, Lx0/k;->k:Lx0/a;

    invoke-static {p0}, LS/p;->a(Lx0/a;)Z

    :goto_3
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static final g(Lyc/w;Ljava/util/ArrayList;)Lyc/w;
    .locals 7

    invoke-virtual {p0}, Lyc/w;->D0()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p1, v1}, Lfb/p;->m(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_8

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LDc/e;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v3, Lzc/d;->a:Lzc/l;

    iget-object v4, v1, LDc/e;->b:Lyc/w;

    iget-object v5, v1, LDc/e;->c:Lyc/w;

    invoke-virtual {v3, v4, v5}, Lzc/l;->b(Lyc/w;Lyc/w;)Z

    invoke-static {v4, v5}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    iget-object v1, v1, LDc/e;->a:LJb/W;

    invoke-interface {v1}, LJb/W;->A()Lyc/e0;

    move-result-object v3

    sget-object v6, Lyc/e0;->IN_VARIANCE:Lyc/e0;

    if-ne v3, v6, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {v4}, LGb/i;->F(Lyc/w;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, LJb/W;->A()Lyc/e0;

    move-result-object v3

    if-eq v3, v6, :cond_2

    new-instance v2, Lyc/F;

    sget-object v3, Lyc/e0;->OUT_VARIANCE:Lyc/e0;

    invoke-interface {v1}, LJb/W;->A()Lyc/e0;

    move-result-object v1

    if-ne v3, v1, :cond_1

    sget-object v3, Lyc/e0;->INVARIANT:Lyc/e0;

    :cond_1
    invoke-direct {v2, v5, v3}, Lyc/F;-><init>(Lyc/w;Lyc/e0;)V

    goto :goto_2

    :cond_2
    if-eqz v5, :cond_6

    invoke-static {v5}, LGb/i;->y(Lyc/w;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {v5}, Lyc/w;->G0()Z

    move-result v2

    if-eqz v2, :cond_4

    new-instance v2, Lyc/F;

    invoke-interface {v1}, LJb/W;->A()Lyc/e0;

    move-result-object v1

    if-ne v6, v1, :cond_3

    sget-object v6, Lyc/e0;->INVARIANT:Lyc/e0;

    :cond_3
    invoke-direct {v2, v4, v6}, Lyc/F;-><init>(Lyc/w;Lyc/e0;)V

    goto :goto_2

    :cond_4
    new-instance v2, Lyc/F;

    sget-object v3, Lyc/e0;->OUT_VARIANCE:Lyc/e0;

    invoke-interface {v1}, LJb/W;->A()Lyc/e0;

    move-result-object v1

    if-ne v3, v1, :cond_5

    sget-object v3, Lyc/e0;->INVARIANT:Lyc/e0;

    :cond_5
    invoke-direct {v2, v5, v3}, Lyc/F;-><init>(Lyc/w;Lyc/e0;)V

    goto :goto_2

    :cond_6
    const/16 p0, 0x8c

    invoke-static {p0}, LGb/i;->a(I)V

    throw v2

    :cond_7
    :goto_1
    new-instance v2, Lyc/F;

    invoke-direct {v2, v4}, Lyc/F;-><init>(Lyc/w;)V

    :goto_2
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_8
    const/4 p1, 0x6

    invoke-static {p0, v0, v2, p1}, Lyc/c;->q(Lyc/w;Ljava/util/List;LKb/h;I)Lyc/w;

    move-result-object p0

    return-object p0
.end method

.method public static h(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 3

    const-class v0, Landroid/content/SharedPreferences;

    monitor-enter v0

    :try_start_0
    sget-object v1, LG5/L;->a:Landroid/content/SharedPreferences;

    if-nez v1, :cond_0

    new-instance v1, LE5/p;

    const/4 v2, 0x4

    invoke-direct {v1, v2, p0}, LE5/p;-><init>(ILjava/lang/Object;)V

    invoke-static {v1}, LG5/r;->c(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/SharedPreferences;

    sput-object p0, LG5/L;->a:Landroid/content/SharedPreferences;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    sget-object p0, LG5/L;->a:Landroid/content/SharedPreferences;

    monitor-exit v0

    return-object p0

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
