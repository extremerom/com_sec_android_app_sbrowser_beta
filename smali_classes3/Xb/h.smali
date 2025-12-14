.class public final LXb/h;
.super Lyc/U;
.source "SourceFile"


# static fields
.field public static final c:LXb/a;

.field public static final d:LXb/a;


# instance fields
.field public final b:LL8/a;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    sget-object v0, Lyc/Z;->COMMON:Lyc/Z;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x5

    invoke-static {v0, v1, v2, v3, v4}, LG5/u3;->b(Lyc/Z;ZZLWb/G;I)LXb/a;

    move-result-object v5

    sget-object v6, LXb/b;->FLEXIBLE_LOWER_BOUND:LXb/b;

    invoke-virtual {v5, v6}, LXb/a;->b(LXb/b;)LXb/a;

    move-result-object v5

    sput-object v5, LXb/h;->c:LXb/a;

    invoke-static {v0, v1, v2, v3, v4}, LG5/u3;->b(Lyc/Z;ZZLWb/G;I)LXb/a;

    move-result-object v0

    sget-object v1, LXb/b;->FLEXIBLE_UPPER_BOUND:LXb/b;

    invoke-virtual {v0, v1}, LXb/a;->b(LXb/b;)LXb/a;

    move-result-object v0

    sput-object v0, LXb/h;->d:LXb/a;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, LXb/f;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    new-instance v1, LL8/a;

    invoke-direct {v1, v0}, LL8/a;-><init>(LXb/f;)V

    iput-object v1, p0, LXb/h;->b:LL8/a;

    return-void
.end method


# virtual methods
.method public final d(Lyc/w;)Lyc/Q;
    .locals 8

    new-instance v0, Lyc/F;

    new-instance v7, LXb/a;

    sget-object v2, Lyc/Z;->COMMON:Lyc/Z;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v3, 0x0

    const/16 v6, 0x3e

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, LXb/a;-><init>(Lyc/Z;ZZLjava/util/Set;I)V

    invoke-virtual {p0, p1, v7}, LXb/h;->h(Lyc/w;LXb/a;)Lyc/w;

    move-result-object p0

    invoke-direct {v0, p0}, Lyc/F;-><init>(Lyc/w;)V

    return-object v0
.end method

.method public final g(Lyc/A;LJb/f;LXb/a;)Ldb/j;
    .locals 8

    invoke-virtual {p1}, Lyc/w;->F0()Lyc/L;

    move-result-object v0

    invoke-interface {v0}, Lyc/L;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    new-instance p2, Ldb/j;

    invoke-direct {p2, p1, p0}, Ldb/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p2

    :cond_0
    invoke-static {p1}, LGb/i;->z(Lyc/w;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lyc/w;->D0()Ljava/util/List;

    move-result-object p2

    const/4 v0, 0x0

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lyc/Q;

    new-instance v0, Lyc/F;

    invoke-virtual {p2}, Lyc/Q;->a()Lyc/e0;

    move-result-object v1

    invoke-virtual {p2}, Lyc/Q;->b()Lyc/w;

    move-result-object p2

    const-string v2, "getType(...)"

    invoke-static {p2, v2}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p2, p3}, LXb/h;->h(Lyc/w;LXb/a;)Lyc/w;

    move-result-object p0

    invoke-direct {v0, p0, v1}, Lyc/F;-><init>(Lyc/w;Lyc/e0;)V

    invoke-static {v0}, LG5/o3;->d(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-virtual {p1}, Lyc/w;->E0()Lyc/H;

    move-result-object p2

    invoke-virtual {p1}, Lyc/w;->F0()Lyc/L;

    move-result-object p3

    invoke-virtual {p1}, Lyc/w;->G0()Z

    move-result p1

    invoke-static {p0, p2, p3, p1}, Lyc/c;->u(Ljava/util/List;Lyc/H;Lyc/L;Z)Lyc/A;

    move-result-object p0

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    new-instance p2, Ldb/j;

    invoke-direct {p2, p0, p1}, Ldb/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p2

    :cond_1
    invoke-static {p1}, Lyc/c;->k(Lyc/w;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object p0, LAc/k;->ERROR_RAW_TYPE:LAc/k;

    invoke-virtual {p1}, Lyc/w;->F0()Lyc/L;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, LAc/l;->c(LAc/k;[Ljava/lang/String;)LAc/i;

    move-result-object p0

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    new-instance p2, Ldb/j;

    invoke-direct {p2, p0, p1}, Ldb/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p2

    :cond_2
    invoke-interface {p2, p0}, LJb/f;->o0(Lyc/U;)Lrc/o;

    move-result-object v4

    const-string v0, "getMemberScope(...)"

    invoke-static {v4, v0}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lyc/w;->E0()Lyc/H;

    move-result-object v0

    invoke-interface {p2}, LJb/i;->w()Lyc/L;

    move-result-object v1

    const-string v2, "getTypeConstructor(...)"

    invoke-static {v1, v2}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p2}, LJb/i;->w()Lyc/L;

    move-result-object v2

    invoke-interface {v2}, Lyc/L;->a()Ljava/util/List;

    move-result-object v2

    const-string v3, "getParameters(...)"

    invoke-static {v2, v3}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Ljava/lang/Iterable;

    new-instance v3, Ljava/util/ArrayList;

    const/16 v5, 0xa

    invoke-static {v2, v5}, Lfb/p;->m(Ljava/lang/Iterable;I)I

    move-result v5

    invoke-direct {v3, v5}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, LJb/W;

    invoke-static {v5}, Ltb/k;->c(Ljava/lang/Object;)V

    iget-object v6, p0, LXb/h;->b:LL8/a;

    invoke-virtual {v6, v5, p3}, LL8/a;->p(LJb/W;LXb/a;)Lyc/w;

    move-result-object v7

    invoke-static {v5, p3, v6, v7}, LXb/f;->a(LJb/W;LXb/a;LL8/a;Lyc/w;)Lyc/Q;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Lyc/w;->G0()Z

    move-result v5

    new-instance v6, LXb/g;

    invoke-direct {v6, p2, p0, p1, p3}, LXb/g;-><init>(LJb/f;LXb/h;Lyc/A;LXb/a;)V

    move-object v2, v3

    move v3, v5

    move-object v5, v6

    invoke-static/range {v0 .. v5}, Lyc/c;->w(Lyc/H;Lyc/L;Ljava/util/List;ZLrc/o;Lsb/k;)Lyc/A;

    move-result-object p0

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    new-instance p2, Ldb/j;

    invoke-direct {p2, p0, p1}, Ldb/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p2
.end method

.method public final h(Lyc/w;LXb/a;)Lyc/w;
    .locals 7

    invoke-virtual {p1}, Lyc/w;->F0()Lyc/L;

    move-result-object v0

    invoke-interface {v0}, Lyc/L;->c()LJb/i;

    move-result-object v0

    instance-of v1, v0, LJb/W;

    if-eqz v1, :cond_0

    check-cast v0, LJb/W;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v2, 0x0

    const/16 v6, 0x3b

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p2

    invoke-static/range {v1 .. v6}, LXb/a;->a(LXb/a;LXb/b;ZLjava/util/Set;Lyc/A;I)LXb/a;

    move-result-object p1

    iget-object v1, p0, LXb/h;->b:LL8/a;

    invoke-virtual {v1, v0, p1}, LL8/a;->p(LJb/W;LXb/a;)Lyc/w;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, LXb/h;->h(Lyc/w;LXb/a;)Lyc/w;

    move-result-object p0

    goto :goto_1

    :cond_0
    instance-of p2, v0, LJb/f;

    if-eqz p2, :cond_4

    invoke-static {p1}, Lyc/c;->E(Lyc/w;)Lyc/A;

    move-result-object p2

    invoke-virtual {p2}, Lyc/w;->F0()Lyc/L;

    move-result-object p2

    invoke-interface {p2}, Lyc/L;->c()LJb/i;

    move-result-object p2

    instance-of v1, p2, LJb/f;

    if-eqz v1, :cond_3

    invoke-static {p1}, Lyc/c;->m(Lyc/w;)Lyc/A;

    move-result-object v1

    check-cast v0, LJb/f;

    sget-object v2, LXb/h;->c:LXb/a;

    invoke-virtual {p0, v1, v0, v2}, LXb/h;->g(Lyc/A;LJb/f;LXb/a;)Ldb/j;

    move-result-object v0

    iget-object v1, v0, Ldb/j;->a:Ljava/lang/Object;

    check-cast v1, Lyc/A;

    iget-object v0, v0, Ldb/j;->b:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-static {p1}, Lyc/c;->E(Lyc/w;)Lyc/A;

    move-result-object p1

    check-cast p2, LJb/f;

    sget-object v2, LXb/h;->d:LXb/a;

    invoke-virtual {p0, p1, p2, v2}, LXb/h;->g(Lyc/A;LJb/f;LXb/a;)Ldb/j;

    move-result-object p0

    iget-object p1, p0, Ldb/j;->a:Ljava/lang/Object;

    check-cast p1, Lyc/A;

    iget-object p0, p0, Ldb/j;->b:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-nez v0, :cond_2

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {v1, p1}, Lyc/c;->f(Lyc/A;Lyc/A;)Lyc/d0;

    move-result-object p0

    goto :goto_1

    :cond_2
    :goto_0
    new-instance p0, LXb/j;

    invoke-direct {p0, v1, p1}, LXb/j;-><init>(Lyc/A;Lyc/A;)V

    :goto_1
    return-object p0

    :cond_3
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "For some reason declaration for upper bound is not a class but \""

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "\" while for lower it\'s \""

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p1, 0x22

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Unexpected declaration kind: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
