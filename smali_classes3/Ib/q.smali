.class public final LIb/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LLb/b;
.implements LLb/d;


# static fields
.field public static final synthetic h:[LAb/u;


# instance fields
.field public final a:LMb/B;

.field public final b:Lxc/i;

.field public final c:Lyc/A;

.field public final d:Lxc/i;

.field public final e:Lxc/e;

.field public final f:Lxc/i;

.field public final g:Lxc/e;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Ltb/p;

    const-class v1, LIb/q;

    const-string v2, "settings"

    const-string v3, "getSettings()Lorg/jetbrains/kotlin/builtins/jvm/JvmBuiltIns$Settings;"

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Ltb/p;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v2, Ltb/x;->a:Ltb/y;

    invoke-virtual {v2, v0}, Ltb/y;->f(Ltb/p;)LAb/r;

    move-result-object v0

    const-string v3, "cloneableType"

    const-string v5, "getCloneableType()Lorg/jetbrains/kotlin/types/SimpleType;"

    invoke-static {v1, v3, v5, v4, v2}, Lt/b;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;ILtb/y;)LAb/r;

    move-result-object v3

    const-string v5, "notConsideredDeprecation"

    const-string v6, "getNotConsideredDeprecation()Lorg/jetbrains/kotlin/descriptors/annotations/Annotations;"

    invoke-static {v1, v5, v6, v4, v2}, Lt/b;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;ILtb/y;)LAb/r;

    move-result-object v1

    const/4 v2, 0x3

    new-array v2, v2, [LAb/u;

    aput-object v0, v2, v4

    const/4 v0, 0x1

    aput-object v3, v2, v0

    const/4 v0, 0x2

    aput-object v1, v2, v0

    sput-object v2, LIb/q;->h:[LAb/u;

    return-void
.end method

.method public constructor <init>(LMb/B;Lxc/l;LDb/E;)V
    .locals 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LIb/q;->a:LMb/B;

    new-instance v0, Lxc/i;

    invoke-direct {v0, p2, p3}, Lxc/h;-><init>(Lxc/l;Lsb/a;)V

    iput-object v0, p0, LIb/q;->b:Lxc/i;

    new-instance p3, Lhc/c;

    const-string v0, "java.io"

    invoke-direct {p3, v0}, Lhc/c;-><init>(Ljava/lang/String;)V

    new-instance v2, LIb/p;

    const/4 v0, 0x0

    invoke-direct {v2, p1, p3, v0}, LIb/p;-><init>(LJb/C;Lhc/c;I)V

    new-instance p1, Lyc/y;

    new-instance p3, LIb/l;

    const/4 v0, 0x1

    invoke-direct {p3, p0, v0}, LIb/l;-><init>(LIb/q;I)V

    invoke-direct {p1, p2, p3}, Lyc/y;-><init>(Lxc/l;Lsb/a;)V

    invoke-static {p1}, LG5/o3;->d(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    new-instance p3, LMb/l;

    const-string v0, "Serializable"

    invoke-static {v0}, Lhc/f;->f(Ljava/lang/String;)Lhc/f;

    move-result-object v3

    sget-object v4, LJb/B;->ABSTRACT:LJb/B;

    sget-object v5, LJb/g;->INTERFACE:LJb/g;

    move-object v6, p1

    check-cast v6, Ljava/util/Collection;

    move-object v1, p3

    move-object v7, p2

    invoke-direct/range {v1 .. v7}, LMb/l;-><init>(LJb/l;Lhc/f;LJb/B;LJb/g;Ljava/util/Collection;Lxc/o;)V

    sget-object p1, Lrc/n;->b:Lrc/n;

    sget-object v0, Lfb/x;->a:Lfb/x;

    const/4 v1, 0x0

    invoke-virtual {p3, p1, v0, v1}, LMb/l;->D0(Lrc/o;Ljava/util/Set;LMb/j;)V

    invoke-virtual {p3}, LMb/c;->n()Lyc/A;

    move-result-object p1

    iput-object p1, p0, LIb/q;->c:Lyc/A;

    new-instance p1, LDb/J;

    const/4 p3, 0x5

    invoke-direct {p1, p3, p0, p2}, LDb/J;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    new-instance p3, Lxc/i;

    invoke-direct {p3, p2, p1}, Lxc/h;-><init>(Lxc/l;Lsb/a;)V

    iput-object p3, p0, LIb/q;->d:Lxc/i;

    new-instance p1, Lxc/e;

    new-instance p3, Ljava/util/concurrent/ConcurrentHashMap;

    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, 0x2

    const/4 v2, 0x3

    invoke-direct {p3, v2, v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    new-instance v0, Lxc/f;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    invoke-direct {p1, p2, p3, v0, v1}, Lxc/e;-><init>(Lxc/l;Ljava/util/concurrent/ConcurrentHashMap;Lsb/k;I)V

    iput-object p1, p0, LIb/q;->e:Lxc/e;

    new-instance p1, LIb/l;

    const/4 p3, 0x0

    invoke-direct {p1, p0, p3}, LIb/l;-><init>(LIb/q;I)V

    new-instance p3, Lxc/i;

    invoke-direct {p3, p2, p1}, Lxc/h;-><init>(Lxc/l;Lsb/a;)V

    iput-object p3, p0, LIb/q;->f:Lxc/i;

    new-instance p1, LIb/m;

    const/4 p3, 0x0

    invoke-direct {p1, p0, p3}, LIb/m;-><init>(LIb/q;I)V

    invoke-virtual {p2, p1}, Lxc/l;->b(Lsb/k;)Lxc/e;

    move-result-object p1

    iput-object p1, p0, LIb/q;->g:Lxc/e;

    return-void
.end method


# virtual methods
.method public final a(LJb/f;)Ljava/util/Collection;
    .locals 14

    const-string v0, "classDescriptor"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, LJb/f;->d()LJb/g;

    move-result-object v0

    sget-object v1, LJb/g;->CLASS:LJb/g;

    sget-object v2, Lfb/v;->a:Lfb/v;

    if-ne v0, v1, :cond_c

    invoke-virtual {p0}, LIb/q;->g()LIb/i;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0, p1}, LIb/q;->f(LJb/f;)LWb/j;

    move-result-object v0

    if-nez v0, :cond_0

    return-object v2

    :cond_0
    invoke-static {v0}, Loc/d;->g(LJb/l;)Lhc/c;

    move-result-object v1

    sget-object v3, LIb/b;->f:LIb/b;

    invoke-static {v1, v3}, LIb/e;->c(Lhc/c;LGb/i;)LJb/f;

    move-result-object v1

    if-nez v1, :cond_1

    return-object v2

    :cond_1
    invoke-static {v1, v0}, LG5/t3;->b(LJb/f;LJb/f;)Lyc/M;

    move-result-object v2

    new-instance v3, Lyc/Y;

    invoke-direct {v3, v2}, Lyc/Y;-><init>(Lyc/U;)V

    iget-object v2, v0, LWb/j;->q:LWb/p;

    iget-object v2, v2, LWb/p;->q:Lxc/i;

    invoke-virtual {v2}, Lxc/i;->invoke()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    check-cast v2, Ljava/lang/Iterable;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x3

    const/4 v8, 0x1

    if-eqz v5, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    move-object v9, v5

    check-cast v9, LMb/j;

    move-object v10, v9

    check-cast v10, LMb/v;

    invoke-virtual {v10}, LMb/v;->getVisibility()LJb/p;

    move-result-object v11

    iget-object v11, v11, LJb/p;->a:LJb/k0;

    iget-boolean v11, v11, LJb/k0;->b:Z

    if-eqz v11, :cond_2

    invoke-interface {v1}, LJb/f;->h()Ljava/util/Collection;

    move-result-object v11

    const-string v12, "getConstructors(...)"

    invoke-static {v11, v12}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v11, Ljava/lang/Iterable;

    instance-of v12, v11, Ljava/util/Collection;

    if-eqz v12, :cond_3

    move-object v12, v11

    check-cast v12, Ljava/util/Collection;

    invoke-interface {v12}, Ljava/util/Collection;->isEmpty()Z

    move-result v12

    if-eqz v12, :cond_3

    goto :goto_1

    :cond_3
    invoke-interface {v11}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_4
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_5

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, LMb/j;

    invoke-static {v12}, Ltb/k;->c(Ljava/lang/Object;)V

    invoke-virtual {v9, v3}, LMb/j;->k1(Lyc/Y;)LMb/j;

    move-result-object v13

    invoke-static {v12, v13}, Lkc/o;->j(LJb/b;LJb/b;)Lkc/m;

    move-result-object v12

    sget-object v13, Lkc/m;->OVERRIDABLE:Lkc/m;

    if-ne v12, v13, :cond_4

    goto :goto_0

    :cond_5
    :goto_1
    invoke-virtual {v10}, LMb/v;->H()Ljava/util/List;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v11

    if-ne v11, v8, :cond_7

    invoke-virtual {v10}, LMb/v;->H()Ljava/util/List;

    move-result-object v8

    const-string v10, "getValueParameters(...)"

    invoke-static {v8, v10}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v8}, Lfb/n;->U(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, LMb/T;

    check-cast v8, LMb/U;

    invoke-virtual {v8}, LMb/U;->getType()Lyc/w;

    move-result-object v8

    invoke-virtual {v8}, Lyc/w;->F0()Lyc/L;

    move-result-object v8

    invoke-interface {v8}, Lyc/L;->c()LJb/i;

    move-result-object v8

    if-eqz v8, :cond_6

    invoke-static {v8}, Loc/d;->h(LJb/l;)Lhc/d;

    move-result-object v6

    :cond_6
    invoke-static {p1}, Loc/d;->h(LJb/l;)Lhc/d;

    move-result-object v8

    invoke-static {v6, v8}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    goto/16 :goto_0

    :cond_7
    invoke-static {v9}, LGb/i;->D(LJb/v;)Z

    move-result v6

    if-nez v6, :cond_2

    sget-object v6, LIb/t;->f:Ljava/util/LinkedHashSet;

    invoke-static {v9, v7}, LG5/W3;->b(LJb/v;I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, LG5/V3;->b(LJb/f;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_8
    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {v4, v2}, Lfb/p;->m(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, LMb/j;

    move-object v5, v4

    check-cast v5, LMb/v;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v9, Lyc/Y;->b:Lyc/Y;

    invoke-virtual {v5, v9}, LMb/v;->a1(Lyc/Y;)LMb/u;

    move-result-object v5

    iput-object p1, v5, LMb/u;->b:LJb/l;

    invoke-interface {p1}, LJb/f;->n()Lyc/A;

    move-result-object v9

    invoke-virtual {v5, v9}, LMb/u;->f(Lyc/w;)LJb/u;

    iput-boolean v8, v5, LMb/u;->o:Z

    invoke-virtual {v3}, Lyc/Y;->f()Lyc/U;

    move-result-object v9

    if-eqz v9, :cond_a

    iput-object v9, v5, LMb/u;->a:Lyc/U;

    sget-object v9, LIb/t;->g:Ljava/util/LinkedHashSet;

    invoke-static {v4, v7}, LG5/W3;->b(LJb/v;I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, LG5/V3;->b(LJb/f;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v9, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_9

    iget-object v4, p0, LIb/q;->f:Lxc/i;

    sget-object v9, LIb/q;->h:[LAb/u;

    const/4 v10, 0x2

    aget-object v9, v9, v10

    invoke-static {v4, v9}, LG5/C2;->e(Lxc/m;LAb/u;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, LKb/h;

    invoke-virtual {v5, v4}, LMb/u;->O(LKb/h;)LJb/u;

    :cond_9
    iget-object v4, v5, LMb/u;->x:LMb/v;

    invoke-virtual {v4, v5}, LMb/v;->X0(LMb/u;)LMb/v;

    move-result-object v4

    const-string v5, "null cannot be cast to non-null type org.jetbrains.kotlin.descriptors.ClassConstructorDescriptor"

    invoke-static {v4, v5}, Ltb/k;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v4, LMb/j;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_a
    const/16 p0, 0x25

    invoke-static {p0}, LMb/u;->a(I)V

    throw v6

    :cond_b
    return-object v1

    :cond_c
    return-object v2
.end method

.method public final b(LJb/f;Lwc/s;)Z
    .locals 3

    const-string v0, "classDescriptor"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, LIb/q;->f(LJb/f;)LWb/j;

    move-result-object p1

    const/4 v0, 0x1

    if-nez p1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p2}, LF3/f;->u()LKb/h;

    move-result-object v1

    sget-object v2, LLb/e;->a:Lhc/c;

    invoke-interface {v1, v2}, LKb/h;->m0(Lhc/c;)Z

    move-result v1

    if-nez v1, :cond_1

    return v0

    :cond_1
    invoke-virtual {p0}, LIb/q;->g()LIb/i;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p0, 0x3

    invoke-static {p2, p0}, LG5/W3;->b(LJb/v;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, LWb/j;->D0()LWb/p;

    move-result-object p1

    invoke-virtual {p2}, LMb/n;->getName()Lhc/f;

    move-result-object p2

    const-string v2, "getName(...)"

    invoke-static {p2, v2}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v2, LRb/c;->FROM_BUILTINS:LRb/c;

    invoke-virtual {p1, p2, v2}, LWb/p;->d(Lhc/f;LRb/a;)Ljava/util/Collection;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    instance-of p2, p1, Ljava/util/Collection;

    const/4 v2, 0x0

    if-eqz p2, :cond_3

    move-object p2, p1

    check-cast p2, Ljava/util/Collection;

    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_3

    :cond_2
    move v0, v2

    goto :goto_0

    :cond_3
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, LMb/M;

    invoke-static {p2, p0}, LG5/W3;->b(LJb/v;I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2, v1}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4

    :goto_0
    return v0
.end method

.method public final c(LJb/f;)Ljava/util/Collection;
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    const-string v2, "classDescriptor"

    invoke-static {p1, v2}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Loc/d;->h(LJb/l;)Lhc/d;

    move-result-object p1

    sget-object v2, LIb/t;->a:Ljava/util/LinkedHashSet;

    sget-object v2, LGb/p;->g:Lhc/d;

    invoke-virtual {p1, v2}, Lhc/d;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    sget-object v3, LGb/p;->g0:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    move v3, v1

    goto :goto_1

    :cond_1
    :goto_0
    move v3, v0

    :goto_1
    iget-object v4, p0, LIb/q;->c:Lyc/A;

    if-eqz v3, :cond_2

    iget-object p0, p0, LIb/q;->d:Lxc/i;

    sget-object p1, LIb/q;->h:[LAb/u;

    aget-object p1, p1, v0

    invoke-static {p0, p1}, LG5/C2;->e(Lxc/m;LAb/u;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lyc/A;

    const/4 p1, 0x2

    new-array p1, p1, [Lyc/w;

    aput-object p0, p1, v1

    aput-object v4, p1, v0

    invoke-static {p1}, Lfb/o;->g([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/util/Collection;

    goto :goto_3

    :cond_2
    invoke-virtual {p1, v2}, Lhc/d;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5

    sget-object p0, LGb/p;->g0:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_3

    goto :goto_2

    :cond_3
    sget-object p0, LIb/d;->a:Ljava/lang/String;

    invoke-static {p1}, LIb/d;->f(Lhc/d;)Lhc/b;

    move-result-object p0

    if-nez p0, :cond_4

    :catch_0
    move v0, v1

    goto :goto_2

    :cond_4
    :try_start_0
    invoke-virtual {p0}, Lhc/b;->a()Lhc/c;

    move-result-object p0

    iget-object p0, p0, Lhc/c;->a:Lhc/d;

    iget-object p0, p0, Lhc/d;->a:Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const-class p1, Ljava/io/Serializable;

    invoke-virtual {p1, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    :cond_5
    :goto_2
    if-eqz v0, :cond_6

    invoke-static {v4}, LG5/o3;->d(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/util/Collection;

    goto :goto_3

    :cond_6
    sget-object p0, Lfb/v;->a:Lfb/v;

    :goto_3
    return-object p0
.end method

.method public final d(Lhc/f;LJb/f;)Ljava/util/Collection;
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x3

    const/4 v6, 0x1

    const-string v7, "name"

    invoke-static {v1, v7}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v7, "classDescriptor"

    invoke-static {v2, v7}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v7, LIb/a;->e:Lhc/f;

    invoke-virtual {v1, v7}, Lhc/f;->equals(Ljava/lang/Object;)Z

    move-result v7

    sget-object v8, Lfb/v;->a:Lfb/v;

    sget-object v9, LIb/q;->h:[LAb/u;

    if-eqz v7, :cond_4

    instance-of v7, v2, Lwc/i;

    if-eqz v7, :cond_4

    sget-object v7, LGb/p;->g:Lhc/d;

    invoke-static {v2, v7}, LGb/i;->b(LJb/f;Lhc/d;)Z

    move-result v7

    if-nez v7, :cond_0

    invoke-static/range {p2 .. p2}, LGb/i;->s(LJb/i;)LGb/l;

    move-result-object v7

    if-eqz v7, :cond_4

    :cond_0
    check-cast v2, Lwc/i;

    iget-object v3, v2, Lwc/i;->e:Lcc/k;

    iget-object v3, v3, Lcc/k;->q:Ljava/util/List;

    const-string v4, "getFunctionList(...)"

    invoke-static {v3, v4}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Ljava/lang/Iterable;

    instance-of v4, v3, Ljava/util/Collection;

    if-eqz v4, :cond_1

    move-object v4, v3

    check-cast v4, Ljava/util/Collection;

    invoke-interface {v4}, Ljava/util/Collection;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_0

    :cond_1
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcc/A;

    iget-object v5, v2, Lwc/i;->l:Luc/m;

    iget-object v5, v5, Luc/m;->b:Ljava/lang/Object;

    check-cast v5, Lec/g;

    iget v4, v4, Lcc/A;->f:I

    invoke-static {v5, v4}, LG5/m2;->c(Lec/g;I)Lhc/f;

    move-result-object v4

    sget-object v5, LIb/a;->e:Lhc/f;

    invoke-virtual {v4, v5}, Lhc/f;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    return-object v8

    :cond_3
    :goto_0
    iget-object v0, v0, LIb/q;->d:Lxc/i;

    aget-object v3, v9, v6

    invoke-static {v0, v3}, LG5/C2;->e(Lxc/m;LAb/u;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lyc/A;

    invoke-virtual {v0}, Lyc/w;->G()Lrc/o;

    move-result-object v0

    sget-object v3, LRb/c;->FROM_BUILTINS:LRb/c;

    invoke-interface {v0, v1, v3}, Lrc/o;->d(Lhc/f;LRb/a;)Ljava/util/Collection;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    invoke-static {v0}, Lfb/n;->T(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LMb/M;

    invoke-interface {v0}, LJb/v;->y0()LJb/u;

    move-result-object v0

    invoke-interface {v0, v2}, LJb/u;->l(LJb/f;)LJb/u;

    sget-object v1, LJb/q;->e:LJb/p;

    invoke-interface {v0, v1}, LJb/u;->D(LJb/p;)LJb/u;

    invoke-virtual {v2}, LMb/c;->n()Lyc/A;

    move-result-object v1

    invoke-interface {v0, v1}, LJb/u;->f(Lyc/w;)LJb/u;

    invoke-virtual {v2}, LMb/c;->C0()LMb/w;

    move-result-object v1

    invoke-interface {v0, v1}, LJb/u;->p(LMb/w;)LJb/u;

    invoke-interface {v0}, LJb/u;->build()LJb/v;

    move-result-object v0

    invoke-static {v0}, Ltb/k;->c(Ljava/lang/Object;)V

    check-cast v0, LMb/M;

    invoke-static {v0}, LG5/o3;->d(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    return-object v0

    :cond_4
    invoke-virtual/range {p0 .. p0}, LIb/q;->g()LIb/i;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0, v2}, LIb/q;->f(LJb/f;)LWb/j;

    move-result-object v7

    const-string v11, "null cannot be cast to non-null type org.jetbrains.kotlin.descriptors.ClassDescriptor"

    if-nez v7, :cond_5

    goto/16 :goto_b

    :cond_5
    invoke-static {v7}, Loc/d;->g(LJb/l;)Lhc/c;

    move-result-object v12

    sget-object v13, LIb/b;->f:LIb/b;

    const-string v14, "builtIns"

    invoke-static {v13, v14}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v12, v13}, LIb/e;->c(Lhc/c;LGb/i;)LJb/f;

    move-result-object v12

    if-nez v12, :cond_6

    sget-object v12, Lfb/x;->a:Lfb/x;

    goto :goto_1

    :cond_6
    sget-object v14, LIb/d;->a:Ljava/lang/String;

    invoke-static {v12}, Loc/d;->h(LJb/l;)Lhc/d;

    move-result-object v14

    sget-object v15, LIb/d;->k:Ljava/util/HashMap;

    invoke-virtual {v15, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lhc/c;

    if-nez v14, :cond_7

    invoke-static {v12}, Lfb/F;->g(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v12

    check-cast v12, Ljava/util/Collection;

    goto :goto_1

    :cond_7
    invoke-virtual {v13, v14}, LGb/i;->j(Lhc/c;)LJb/f;

    move-result-object v13

    new-array v14, v3, [LJb/f;

    aput-object v12, v14, v4

    aput-object v13, v14, v6

    invoke-static {v14}, Lfb/o;->g([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v12

    check-cast v12, Ljava/util/Collection;

    :goto_1
    check-cast v12, Ljava/lang/Iterable;

    instance-of v13, v12, Ljava/util/List;

    if-eqz v13, :cond_9

    move-object v13, v12

    check-cast v13, Ljava/util/List;

    invoke-interface {v13}, Ljava/util/List;->isEmpty()Z

    move-result v14

    if-eqz v14, :cond_8

    goto :goto_2

    :cond_8
    invoke-static {v6, v13}, LV0/c;->g(ILjava/util/List;)Ljava/lang/Object;

    move-result-object v13

    goto :goto_4

    :cond_9
    invoke-interface {v12}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-nez v14, :cond_a

    :goto_2
    const/4 v13, 0x0

    goto :goto_4

    :cond_a
    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    :goto_3
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_b

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    goto :goto_3

    :cond_b
    move-object v13, v14

    :goto_4
    check-cast v13, LJb/f;

    if-nez v13, :cond_c

    goto/16 :goto_b

    :cond_c
    sget v8, LHc/i;->c:I

    new-instance v8, Ljava/util/ArrayList;

    const/16 v14, 0xa

    invoke-static {v12, v14}, Lfb/p;->m(Ljava/lang/Iterable;I)I

    move-result v14

    invoke-direct {v8, v14}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v12}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_5
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_d

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, LJb/f;

    invoke-static {v14}, Loc/d;->g(LJb/l;)Lhc/c;

    move-result-object v14

    invoke-virtual {v8, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_d
    new-instance v12, LHc/i;

    invoke-direct {v12}, Lfb/h;-><init>()V

    invoke-virtual {v12, v8}, Ljava/util/AbstractCollection;->addAll(Ljava/util/Collection;)Z

    sget-object v8, LIb/d;->a:Ljava/lang/String;

    invoke-static/range {p2 .. p2}, Lkc/e;->g(LJb/l;)Lhc/d;

    move-result-object v8

    sget-object v14, LIb/d;->j:Ljava/util/HashMap;

    invoke-virtual {v14, v8}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    invoke-static {v7}, Loc/d;->g(LJb/l;)Lhc/c;

    move-result-object v14

    new-instance v15, LDb/J;

    const/4 v4, 0x6

    invoke-direct {v15, v4, v7, v13}, LDb/J;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    iget-object v4, v0, LIb/q;->e:Lxc/e;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v7, Lxc/g;

    invoke-direct {v7, v14, v15}, Lxc/g;-><init>(Lhc/c;Lsb/a;)V

    invoke-virtual {v4, v7}, Lxc/j;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_23

    check-cast v4, LJb/f;

    invoke-interface {v4}, LJb/f;->S()Lrc/o;

    move-result-object v4

    const-string v7, "getUnsubstitutedMemberScope(...)"

    invoke-static {v4, v7}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v7, LRb/c;->FROM_BUILTINS:LRb/c;

    invoke-interface {v4, v1, v7}, Lrc/o;->d(Lhc/f;LRb/a;)Ljava/util/Collection;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_e
    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_17

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    move-object v13, v7

    check-cast v13, LMb/M;

    invoke-virtual {v13}, LMb/v;->d()LJb/c;

    move-result-object v14

    sget-object v15, LJb/c;->DECLARATION:LJb/c;

    if-eq v14, v15, :cond_10

    :cond_f
    :goto_7
    const/4 v10, 0x0

    goto/16 :goto_a

    :cond_10
    invoke-virtual {v13}, LMb/v;->getVisibility()LJb/p;

    move-result-object v14

    iget-object v14, v14, LJb/p;->a:LJb/k0;

    iget-boolean v14, v14, LJb/k0;->b:Z

    if-nez v14, :cond_11

    goto :goto_7

    :cond_11
    invoke-static {v13}, LGb/i;->D(LJb/v;)Z

    move-result v14

    if-eqz v14, :cond_12

    goto :goto_7

    :cond_12
    invoke-virtual {v13}, LMb/v;->l()Ljava/util/Collection;

    move-result-object v14

    check-cast v14, Ljava/lang/Iterable;

    instance-of v15, v14, Ljava/util/Collection;

    if-eqz v15, :cond_13

    move-object v15, v14

    check-cast v15, Ljava/util/Collection;

    invoke-interface {v15}, Ljava/util/Collection;->isEmpty()Z

    move-result v15

    if-eqz v15, :cond_13

    goto :goto_8

    :cond_13
    invoke-interface {v14}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :cond_14
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_15

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, LJb/v;

    invoke-interface {v15}, LJb/l;->k()LJb/l;

    move-result-object v15

    const-string v10, "getContainingDeclaration(...)"

    invoke-static {v15, v10}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v15}, Loc/d;->g(LJb/l;)Lhc/c;

    move-result-object v10

    invoke-virtual {v12, v10}, LHc/i;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_14

    goto :goto_7

    :cond_15
    :goto_8
    invoke-virtual {v13}, LMb/o;->k()LJb/l;

    move-result-object v10

    invoke-static {v10, v11}, Ltb/k;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v10, LJb/f;

    invoke-static {v13, v5}, LG5/W3;->b(LJb/v;I)Ljava/lang/String;

    move-result-object v14

    sget-object v15, LIb/t;->e:Ljava/util/LinkedHashSet;

    invoke-static {v10, v14}, LG5/V3;->b(LJb/f;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v15, v10}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v10

    xor-int/2addr v10, v8

    if-eqz v10, :cond_16

    move v10, v6

    goto :goto_9

    :cond_16
    invoke-static {v13}, LG5/o3;->d(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v10

    check-cast v10, Ljava/util/Collection;

    sget-object v13, LIb/e;->a:LIb/e;

    new-instance v14, LIb/m;

    invoke-direct {v14, v0, v6}, LIb/m;-><init>(LIb/q;I)V

    invoke-static {v10, v13, v14}, LHc/l;->g(Ljava/util/Collection;LHc/b;Lsb/k;)Ljava/lang/Boolean;

    move-result-object v10

    const-string v13, "ifAny(...)"

    invoke-static {v10, v13}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    :goto_9
    if-nez v10, :cond_f

    move v10, v6

    :goto_a
    if-eqz v10, :cond_e

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_6

    :cond_17
    move-object v8, v4

    :goto_b
    check-cast v8, Ljava/lang/Iterable;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_18
    :goto_c
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_22

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, LMb/M;

    invoke-virtual {v7}, LMb/o;->k()LJb/l;

    move-result-object v8

    invoke-static {v8, v11}, Ltb/k;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v8, LJb/f;

    invoke-static {v8, v2}, LG5/t3;->b(LJb/f;LJb/f;)Lyc/M;

    move-result-object v8

    new-instance v10, Lyc/Y;

    invoke-direct {v10, v8}, Lyc/Y;-><init>(Lyc/U;)V

    invoke-virtual {v7, v10}, LMb/v;->f(Lyc/Y;)LJb/v;

    move-result-object v8

    const-string v10, "null cannot be cast to non-null type org.jetbrains.kotlin.descriptors.SimpleFunctionDescriptor"

    invoke-static {v8, v10}, Ltb/k;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v8, LMb/M;

    invoke-interface {v8}, LJb/v;->y0()LJb/u;

    move-result-object v8

    invoke-interface {v8, v2}, LJb/u;->l(LJb/f;)LJb/u;

    invoke-interface/range {p2 .. p2}, LJb/f;->C0()LMb/w;

    move-result-object v10

    invoke-interface {v8, v10}, LJb/u;->p(LMb/w;)LJb/u;

    invoke-interface {v8}, LJb/u;->F()LJb/u;

    invoke-virtual {v7}, LMb/o;->k()LJb/l;

    move-result-object v10

    invoke-static {v10, v11}, Ltb/k;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v10, LJb/f;

    invoke-static {v7, v5}, LG5/W3;->b(LJb/v;I)Ljava/lang/String;

    move-result-object v12

    new-instance v13, Ltb/w;

    invoke-direct {v13}, Ljava/lang/Object;-><init>()V

    invoke-static {v10}, LG5/o3;->d(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v10

    check-cast v10, Ljava/util/Collection;

    new-instance v14, LI3/c;

    invoke-direct {v14, v5, v0}, LI3/c;-><init>(ILjava/lang/Object;)V

    new-instance v15, LHc/a;

    invoke-direct {v15, v12, v13, v6}, LHc/a;-><init>(Ljava/lang/Object;Ljava/io/Serializable;I)V

    invoke-static {v10, v14, v15}, LHc/l;->e(Ljava/util/Collection;LHc/b;LHc/l;)Ljava/lang/Object;

    move-result-object v10

    const-string v12, "dfs(...)"

    invoke-static {v10, v12}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v10, LIb/n;

    sget-object v12, LIb/o;->a:[I

    invoke-virtual {v10}, Ljava/lang/Enum;->ordinal()I

    move-result v10

    aget v10, v12, v10

    if-eq v10, v6, :cond_1f

    if-eq v10, v3, :cond_1c

    if-eq v10, v5, :cond_1b

    const/4 v7, 0x4

    if-eq v10, v7, :cond_1a

    const/4 v7, 0x5

    if-ne v10, v7, :cond_19

    goto/16 :goto_10

    :cond_19
    new-instance v0, LI5/b;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1a
    :goto_d
    const/4 v7, 0x0

    goto/16 :goto_11

    :cond_1b
    iget-object v7, v0, LIb/q;->f:Lxc/i;

    aget-object v10, v9, v3

    invoke-static {v7, v10}, LG5/C2;->e(Lxc/m;LAb/u;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, LKb/h;

    invoke-interface {v8, v7}, LJb/u;->O(LKb/h;)LJb/u;

    goto/16 :goto_10

    :cond_1c
    invoke-virtual {v7}, LMb/n;->getName()Lhc/f;

    move-result-object v10

    sget-object v12, LIb/r;->a:Lhc/f;

    invoke-static {v10, v12}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v12

    iget-object v13, v0, LIb/q;->g:Lxc/e;

    if-eqz v12, :cond_1d

    invoke-virtual {v7}, LMb/n;->getName()Lhc/f;

    move-result-object v7

    invoke-virtual {v7}, Lhc/f;->c()Ljava/lang/String;

    move-result-object v7

    new-instance v10, Ldb/j;

    const-string v12, "first"

    invoke-direct {v10, v7, v12}, Ldb/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v13, v10}, Lxc/e;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, LKb/h;

    goto :goto_e

    :cond_1d
    sget-object v12, LIb/r;->b:Lhc/f;

    invoke-static {v10, v12}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1e

    invoke-virtual {v7}, LMb/n;->getName()Lhc/f;

    move-result-object v7

    invoke-virtual {v7}, Lhc/f;->c()Ljava/lang/String;

    move-result-object v7

    new-instance v10, Ldb/j;

    const-string v12, "last"

    invoke-direct {v10, v7, v12}, Ldb/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v13, v10}, Lxc/e;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, LKb/h;

    :goto_e
    invoke-interface {v8, v7}, LJb/u;->O(LKb/h;)LJb/u;

    goto :goto_10

    :cond_1e
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unexpected name: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, LMb/n;->getName()Lhc/f;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1f
    invoke-interface/range {p2 .. p2}, LJb/f;->r()LJb/B;

    move-result-object v7

    sget-object v10, LJb/B;->FINAL:LJb/B;

    if-ne v7, v10, :cond_20

    invoke-interface/range {p2 .. p2}, LJb/f;->d()LJb/g;

    move-result-object v7

    sget-object v10, LJb/g;->ENUM_CLASS:LJb/g;

    if-eq v7, v10, :cond_20

    move v7, v6

    goto :goto_f

    :cond_20
    const/4 v7, 0x0

    :goto_f
    if-eqz v7, :cond_21

    goto/16 :goto_d

    :cond_21
    invoke-interface {v8}, LJb/u;->n()LJb/u;

    :goto_10
    invoke-interface {v8}, LJb/u;->build()LJb/v;

    move-result-object v7

    invoke-static {v7}, Ltb/k;->c(Ljava/lang/Object;)V

    check-cast v7, LMb/M;

    :goto_11
    if-eqz v7, :cond_18

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_c

    :cond_22
    return-object v1

    :cond_23
    invoke-static {v5}, Lxc/e;->a(I)V

    const/4 v0, 0x0

    throw v0
.end method

.method public final e(LJb/f;)Ljava/util/Collection;
    .locals 1

    const-string v0, "classDescriptor"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, LIb/q;->g()LIb/i;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lfb/x;->a:Lfb/x;

    invoke-virtual {p0, p1}, LIb/q;->f(LJb/f;)LWb/j;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, LWb/j;->D0()LWb/p;

    move-result-object p0

    invoke-virtual {p0}, LWb/B;->b()Ljava/util/Set;

    move-result-object p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    move-object v0, p0

    :cond_1
    :goto_0
    check-cast v0, Ljava/util/Collection;

    return-object v0
.end method

.method public final f(LJb/f;)LWb/j;
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_5

    sget-object v1, LGb/p;->a:Lhc/d;

    invoke-static {p1, v1}, LGb/i;->b(LJb/f;Lhc/d;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_0
    invoke-static {p1}, LGb/i;->I(LJb/i;)Z

    move-result v1

    if-nez v1, :cond_1

    return-object v0

    :cond_1
    invoke-static {p1}, Loc/d;->h(LJb/l;)Lhc/d;

    move-result-object p1

    invoke-virtual {p1}, Lhc/d;->d()Z

    move-result v1

    if-nez v1, :cond_2

    return-object v0

    :cond_2
    sget-object v1, LIb/d;->a:Ljava/lang/String;

    invoke-static {p1}, LIb/d;->f(Lhc/d;)Lhc/b;

    move-result-object p1

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lhc/b;->a()Lhc/c;

    move-result-object p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, LIb/q;->g()LIb/i;

    move-result-object p0

    iget-object p0, p0, LIb/i;->a:LMb/B;

    sget-object v1, LRb/c;->FROM_BUILTINS:LRb/c;

    invoke-static {p0, p1, v1}, LJb/y;->j(LMb/B;Lhc/c;LRb/c;)LJb/f;

    move-result-object p0

    instance-of p1, p0, LWb/j;

    if-eqz p1, :cond_4

    move-object v0, p0

    check-cast v0, LWb/j;

    :cond_4
    :goto_0
    return-object v0

    :cond_5
    const/16 p0, 0x6c

    invoke-static {p0}, LGb/i;->a(I)V

    throw v0
.end method

.method public final g()LIb/i;
    .locals 2

    iget-object p0, p0, LIb/q;->b:Lxc/i;

    sget-object v0, LIb/q;->h:[LAb/u;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-static {p0, v0}, LG5/C2;->e(Lxc/m;LAb/u;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, LIb/i;

    return-object p0
.end method
