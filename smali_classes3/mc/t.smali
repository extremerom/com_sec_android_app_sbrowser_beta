.class public final Lmc/t;
.super Lmc/g;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lhc/b;I)V
    .locals 1

    new-instance v0, Lmc/f;

    invoke-direct {v0, p1, p2}, Lmc/f;-><init>(Lhc/b;I)V

    new-instance p1, Lmc/r;

    invoke-direct {p1, v0}, Lmc/r;-><init>(Lmc/f;)V

    invoke-direct {p0, p1}, Lmc/g;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final a(LJb/C;)Lyc/w;
    .locals 7

    const-string v0, "module"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lyc/H;->b:LA7/h;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lyc/H;->c:Lyc/H;

    invoke-interface {p1}, LJb/C;->j()LGb/i;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v2, LGb/p;->Q:Lhc/d;

    invoke-virtual {v2}, Lhc/d;->g()Lhc/c;

    move-result-object v2

    invoke-virtual {v1, v2}, LGb/i;->j(Lhc/c;)LJb/f;

    move-result-object v1

    new-instance v2, Lyc/F;

    iget-object p0, p0, Lmc/g;->a:Ljava/lang/Object;

    move-object v3, p0

    check-cast v3, Lmc/s;

    instance-of v4, v3, Lmc/q;

    if-eqz v4, :cond_0

    check-cast p0, Lmc/q;

    iget-object p0, p0, Lmc/q;->a:Lyc/w;

    goto :goto_1

    :cond_0
    instance-of v3, v3, Lmc/r;

    if-eqz v3, :cond_3

    check-cast p0, Lmc/r;

    iget-object p0, p0, Lmc/r;->a:Lmc/f;

    iget-object v3, p0, Lmc/f;->a:Lhc/b;

    invoke-static {p1, v3}, LJb/y;->d(LJb/C;Lhc/b;)LJb/f;

    move-result-object v4

    iget p0, p0, Lmc/f;->b:I

    if-nez v4, :cond_1

    sget-object p1, LAc/k;->UNRESOLVED_KCLASS_CONSTANT_VALUE:LAc/k;

    invoke-virtual {v3}, Lhc/b;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    filled-new-array {v3, p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, LAc/l;->c(LAc/k;[Ljava/lang/String;)LAc/i;

    move-result-object p0

    goto :goto_1

    :cond_1
    invoke-interface {v4}, LJb/f;->n()Lyc/A;

    move-result-object v3

    const-string v4, "getDefaultType(...)"

    invoke-static {v3, v4}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v3}, LG5/B;->l(Lyc/w;)Lyc/d0;

    move-result-object v3

    const/4 v4, 0x0

    :goto_0
    if-ge v4, p0, :cond_2

    invoke-interface {p1}, LJb/C;->j()LGb/i;

    move-result-object v5

    sget-object v6, Lyc/e0;->INVARIANT:Lyc/e0;

    invoke-virtual {v5, v6, v3}, LGb/i;->i(Lyc/e0;Lyc/d0;)Lyc/A;

    move-result-object v3

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    move-object p0, v3

    :goto_1
    invoke-direct {v2, p0}, Lyc/F;-><init>(Lyc/w;)V

    invoke-static {v2}, LG5/o3;->d(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-static {v0, v1, p0}, Lyc/c;->t(Lyc/H;LJb/f;Ljava/util/List;)Lyc/A;

    move-result-object p0

    return-object p0

    :cond_3
    new-instance p0, LI5/b;

    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    throw p0
.end method
