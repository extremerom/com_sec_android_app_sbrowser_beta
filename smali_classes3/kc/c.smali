.class public final Lkc/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lzc/c;


# static fields
.field public static final a:Lkc/c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lkc/c;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lkc/c;->a:Lkc/c;

    return-void
.end method

.method public static synthetic b(I)V
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq p0, v2, :cond_0

    const-string p0, "a"

    aput-object p0, v0, v1

    goto :goto_0

    :cond_0
    const-string p0, "b"

    aput-object p0, v0, v1

    :goto_0
    const-string p0, "kotlin/reflect/jvm/internal/impl/resolve/OverridingUtil$1"

    aput-object p0, v0, v2

    const/4 p0, 0x2

    const-string v1, "equals"

    aput-object v1, v0, p0

    const-string p0, "Argument for @NotNull parameter \'%s\' of %s.%s must not be null"

    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static f(LJb/b;)LJb/S;
    .locals 3

    :goto_0
    instance-of v0, p0, LJb/d;

    if-eqz v0, :cond_2

    move-object v0, p0

    check-cast v0, LJb/d;

    invoke-interface {v0}, LJb/d;->d()LJb/c;

    move-result-object v1

    sget-object v2, LJb/c;->FAKE_OVERRIDE:LJb/c;

    if-eq v1, v2, :cond_0

    goto :goto_1

    :cond_0
    invoke-interface {v0}, LJb/d;->l()Ljava/util/Collection;

    move-result-object p0

    const-string v0, "getOverriddenDescriptors(...)"

    invoke-static {p0, v0}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Ljava/lang/Iterable;

    invoke-static {p0}, Lfb/n;->V(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, LJb/d;

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0

    :cond_2
    :goto_1
    invoke-interface {p0}, LJb/m;->e()LJb/S;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public a(Lyc/L;Lyc/L;)Z
    .locals 0

    const/4 p0, 0x0

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p1, 0x1

    invoke-static {p1}, Lkc/c;->b(I)V

    throw p0

    :cond_1
    const/4 p1, 0x0

    invoke-static {p1}, Lkc/c;->b(I)V

    throw p0
.end method

.method public c(LJb/l;LJb/l;ZZ)Z
    .locals 3

    instance-of v0, p1, LJb/f;

    if-eqz v0, :cond_0

    instance-of v0, p2, LJb/f;

    if-eqz v0, :cond_0

    check-cast p1, LJb/f;

    check-cast p2, LJb/f;

    invoke-interface {p1}, LJb/i;->w()Lyc/L;

    move-result-object p0

    invoke-interface {p2}, LJb/i;->w()Lyc/L;

    move-result-object p1

    invoke-static {p0, p1}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    goto/16 :goto_2

    :cond_0
    instance-of v0, p1, LJb/W;

    if-eqz v0, :cond_1

    instance-of v0, p2, LJb/W;

    if-eqz v0, :cond_1

    check-cast p1, LJb/W;

    check-cast p2, LJb/W;

    sget-object p4, Lkc/a;->b:Lkc/a;

    invoke-virtual {p0, p1, p2, p3, p4}, Lkc/c;->d(LJb/W;LJb/W;ZLsb/n;)Z

    move-result p0

    goto/16 :goto_2

    :cond_1
    instance-of v0, p1, LJb/b;

    if-eqz v0, :cond_b

    instance-of v0, p2, LJb/b;

    if-eqz v0, :cond_b

    check-cast p1, LJb/b;

    check-cast p2, LJb/b;

    const-string v0, "a"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "b"

    invoke-static {p2, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    :goto_0
    move p0, v1

    goto/16 :goto_2

    :cond_2
    invoke-interface {p1}, LJb/l;->getName()Lhc/f;

    move-result-object v0

    invoke-interface {p2}, LJb/l;->getName()Lhc/f;

    move-result-object v2

    invoke-static {v0, v2}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_4

    :cond_3
    :goto_1
    move p0, v2

    goto/16 :goto_2

    :cond_4
    if-eqz p4, :cond_5

    instance-of p4, p1, LJb/z;

    if-eqz p4, :cond_5

    instance-of p4, p2, LJb/z;

    if-eqz p4, :cond_5

    move-object p4, p1

    check-cast p4, LJb/z;

    invoke-interface {p4}, LJb/z;->g0()Z

    move-result p4

    move-object v0, p2

    check-cast v0, LJb/z;

    invoke-interface {v0}, LJb/z;->g0()Z

    move-result v0

    if-eq p4, v0, :cond_5

    goto :goto_1

    :cond_5
    invoke-interface {p1}, LJb/l;->k()LJb/l;

    move-result-object p4

    invoke-interface {p2}, LJb/l;->k()LJb/l;

    move-result-object v0

    invoke-static {p4, v0}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_7

    if-nez p3, :cond_6

    goto :goto_1

    :cond_6
    invoke-static {p1}, Lkc/c;->f(LJb/b;)LJb/S;

    move-result-object p4

    invoke-static {p2}, Lkc/c;->f(LJb/b;)LJb/S;

    move-result-object v0

    invoke-static {p4, v0}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p4

    if-nez p4, :cond_7

    goto :goto_1

    :cond_7
    invoke-static {p1}, Lkc/e;->o(LJb/l;)Z

    move-result p4

    if-nez p4, :cond_3

    invoke-static {p2}, Lkc/e;->o(LJb/l;)Z

    move-result p4

    if-eqz p4, :cond_8

    goto :goto_1

    :cond_8
    sget-object p4, Lkc/a;->c:Lkc/a;

    invoke-virtual {p0, p1, p2, p4, p3}, Lkc/c;->e(LJb/l;LJb/l;Lsb/n;Z)Z

    move-result p0

    if-nez p0, :cond_9

    goto :goto_1

    :cond_9
    new-instance p0, LV9/a;

    invoke-direct {p0, p1, p2, p3}, LV9/a;-><init>(LJb/b;LJb/b;Z)V

    new-instance p3, Lkc/o;

    invoke-direct {p3, p0}, Lkc/o;-><init>(Lzc/c;)V

    const/4 p0, 0x0

    invoke-virtual {p3, p1, p2, p0, v1}, Lkc/o;->m(LJb/b;LJb/b;LJb/f;Z)Lkc/n;

    move-result-object p4

    invoke-virtual {p4}, Lkc/n;->b()Lkc/m;

    move-result-object p4

    sget-object v0, Lkc/m;->OVERRIDABLE:Lkc/m;

    if-ne p4, v0, :cond_a

    invoke-virtual {p3, p2, p1, p0, v1}, Lkc/o;->m(LJb/b;LJb/b;LJb/f;Z)Lkc/n;

    move-result-object p0

    invoke-virtual {p0}, Lkc/n;->b()Lkc/m;

    move-result-object p0

    if-ne p0, v0, :cond_a

    goto/16 :goto_0

    :cond_a
    move v1, v2

    goto/16 :goto_0

    :cond_b
    instance-of p0, p1, LJb/H;

    if-eqz p0, :cond_c

    instance-of p0, p2, LJb/H;

    if-eqz p0, :cond_c

    check-cast p1, LJb/H;

    check-cast p1, LMb/D;

    iget-object p0, p1, LMb/D;->f:Lhc/c;

    check-cast p2, LJb/H;

    check-cast p2, LMb/D;

    iget-object p1, p2, LMb/D;->f:Lhc/c;

    invoke-static {p0, p1}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    goto :goto_2

    :cond_c
    invoke-static {p1, p2}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    :goto_2
    return p0
.end method

.method public d(LJb/W;LJb/W;ZLsb/n;)Z
    .locals 3

    const-string v0, "a"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "b"

    invoke-static {p2, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "equivalentCallables"

    invoke-static {p4, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-interface {p1}, LJb/l;->k()LJb/l;

    move-result-object v0

    invoke-interface {p2}, LJb/l;->k()LJb/l;

    move-result-object v2

    invoke-static {v0, v2}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    return v2

    :cond_1
    invoke-virtual {p0, p1, p2, p4, p3}, Lkc/c;->e(LJb/l;LJb/l;Lsb/n;Z)Z

    move-result p0

    if-nez p0, :cond_2

    return v2

    :cond_2
    invoke-interface {p1}, LJb/W;->getIndex()I

    move-result p0

    invoke-interface {p2}, LJb/W;->getIndex()I

    move-result p1

    if-ne p0, p1, :cond_3

    goto :goto_0

    :cond_3
    move v1, v2

    :goto_0
    return v1
.end method

.method public e(LJb/l;LJb/l;Lsb/n;Z)Z
    .locals 1

    invoke-interface {p1}, LJb/l;->k()LJb/l;

    move-result-object p1

    invoke-interface {p2}, LJb/l;->k()LJb/l;

    move-result-object p2

    instance-of v0, p1, LJb/d;

    if-nez v0, :cond_1

    instance-of v0, p2, LJb/d;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p3, 0x1

    invoke-virtual {p0, p1, p2, p4, p3}, Lkc/c;->c(LJb/l;LJb/l;ZZ)Z

    move-result p0

    goto :goto_1

    :cond_1
    :goto_0
    invoke-interface {p3, p1, p2}, Lsb/n;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    :goto_1
    return p0
.end method
