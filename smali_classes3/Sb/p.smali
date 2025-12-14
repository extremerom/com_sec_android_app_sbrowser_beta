.class public final LSb/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkc/h;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lkc/f;
    .locals 0

    sget-object p0, Lkc/f;->CONFLICTS_ONLY:Lkc/f;

    return-object p0
.end method

.method public b(LJb/b;LJb/b;LJb/f;)Lkc/g;
    .locals 4

    const-string p0, "superDescriptor"

    invoke-static {p1, p0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "subDescriptor"

    invoke-static {p2, p0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of p0, p1, LJb/d;

    if-eqz p0, :cond_8

    instance-of p0, p2, LJb/v;

    if-eqz p0, :cond_8

    invoke-static {p2}, LGb/i;->A(LJb/l;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto/16 :goto_3

    :cond_0
    sget p0, LSb/e;->l:I

    move-object p0, p2

    check-cast p0, LJb/v;

    move-object v0, p0

    check-cast v0, LMb/n;

    invoke-virtual {v0}, LMb/n;->getName()Lhc/f;

    move-result-object v1

    const-string v2, "getName(...)"

    invoke-static {v1, v2}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, LSb/e;->b(Lhc/f;)Z

    move-result v1

    if-nez v1, :cond_1

    sget-object v1, LSb/H;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, LMb/n;->getName()Lhc/f;

    move-result-object v0

    invoke-static {v0, v2}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, LSb/H;->j:Ljava/util/HashSet;

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto/16 :goto_3

    :cond_1
    move-object v0, p1

    check-cast v0, LJb/d;

    invoke-static {v0}, LG5/q2;->f(LJb/d;)LJb/d;

    move-result-object v0

    instance-of v1, p1, LJb/v;

    if-eqz v1, :cond_2

    move-object v2, p1

    check-cast v2, LJb/v;

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_3

    invoke-interface {p0}, LJb/v;->u0()Z

    move-result v3

    invoke-interface {v2}, LJb/v;->u0()Z

    move-result v2

    if-ne v3, v2, :cond_3

    goto :goto_1

    :cond_3
    if-eqz v0, :cond_7

    invoke-interface {p0}, LJb/v;->u0()Z

    move-result v2

    if-nez v2, :cond_4

    goto :goto_2

    :cond_4
    :goto_1
    instance-of v2, p3, LUb/c;

    if-eqz v2, :cond_8

    invoke-interface {p0}, LJb/v;->n0()LJb/v;

    move-result-object v2

    if-eqz v2, :cond_5

    goto :goto_3

    :cond_5
    if-eqz v0, :cond_8

    invoke-static {p3, v0}, LG5/q2;->g(LJb/f;LJb/d;)Z

    move-result p3

    if-eqz p3, :cond_6

    goto :goto_3

    :cond_6
    instance-of p3, v0, LJb/v;

    if-eqz p3, :cond_7

    if-eqz v1, :cond_7

    check-cast v0, LJb/v;

    invoke-static {v0}, LSb/e;->a(LJb/v;)LJb/v;

    move-result-object p3

    if-eqz p3, :cond_7

    const/4 p3, 0x2

    invoke-static {p0, p3}, LG5/W3;->b(LJb/v;I)Ljava/lang/String;

    move-result-object p0

    move-object v0, p1

    check-cast v0, LJb/v;

    invoke-interface {v0}, LJb/v;->a()LJb/v;

    move-result-object v0

    const-string v1, "getOriginal(...)"

    invoke-static {v0, v1}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, p3}, LG5/W3;->b(LJb/v;I)Ljava/lang/String;

    move-result-object p3

    invoke-static {p0, p3}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_7

    goto :goto_3

    :cond_7
    :goto_2
    sget-object p0, Lkc/g;->INCOMPATIBLE:Lkc/g;

    return-object p0

    :cond_8
    :goto_3
    invoke-static {p1, p2}, LG5/o2;->c(LJb/b;LJb/b;)Z

    move-result p0

    if-eqz p0, :cond_9

    sget-object p0, Lkc/g;->INCOMPATIBLE:Lkc/g;

    return-object p0

    :cond_9
    sget-object p0, Lkc/g;->UNKNOWN:Lkc/g;

    return-object p0
.end method
