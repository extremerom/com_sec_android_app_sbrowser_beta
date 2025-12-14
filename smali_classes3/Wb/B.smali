.class public abstract LWb/B;
.super Lrc/p;
.source "SourceFile"


# static fields
.field public static final synthetic m:[LAb/u;


# instance fields
.field public final b:Lo3/i;

.field public final c:LWb/B;

.field public final d:Lxc/c;

.field public final e:Lxc/i;

.field public final f:Lxc/e;

.field public final g:Lxc/j;

.field public final h:Lxc/e;

.field public final i:Lxc/i;

.field public final j:Lxc/i;

.field public final k:Lxc/i;

.field public final l:Lxc/e;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Ltb/p;

    const-class v1, LWb/B;

    const-string v2, "functionNamesLazy"

    const-string v3, "getFunctionNamesLazy()Ljava/util/Set;"

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Ltb/p;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v2, Ltb/x;->a:Ltb/y;

    invoke-virtual {v2, v0}, Ltb/y;->f(Ltb/p;)LAb/r;

    move-result-object v0

    const-string v3, "propertyNamesLazy"

    const-string v5, "getPropertyNamesLazy()Ljava/util/Set;"

    invoke-static {v1, v3, v5, v4, v2}, Lt/b;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;ILtb/y;)LAb/r;

    move-result-object v3

    const-string v5, "classNamesLazy"

    const-string v6, "getClassNamesLazy()Ljava/util/Set;"

    invoke-static {v1, v5, v6, v4, v2}, Lt/b;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;ILtb/y;)LAb/r;

    move-result-object v1

    const/4 v2, 0x3

    new-array v2, v2, [LAb/u;

    aput-object v0, v2, v4

    const/4 v0, 0x1

    aput-object v3, v2, v0

    const/4 v0, 0x2

    aput-object v1, v2, v0

    sput-object v2, LWb/B;->m:[LAb/u;

    return-void
.end method

.method public constructor <init>(Lo3/i;LWb/B;)V
    .locals 1

    const-string v0, "c"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LWb/B;->b:Lo3/i;

    iput-object p2, p0, LWb/B;->c:LWb/B;

    iget-object p1, p1, Lo3/i;->a:Ljava/lang/Object;

    check-cast p1, LVb/a;

    iget-object p1, p1, LVb/a;->a:Lxc/l;

    new-instance p2, LWb/y;

    const/4 v0, 0x0

    invoke-direct {p2, p0, v0}, LWb/y;-><init>(LWb/B;I)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lxc/c;

    invoke-direct {v0, p1, p2}, Lxc/i;-><init>(Lxc/l;Lsb/a;)V

    iput-object v0, p0, LWb/B;->d:Lxc/c;

    new-instance p2, LWb/y;

    const/4 v0, 0x1

    invoke-direct {p2, p0, v0}, LWb/y;-><init>(LWb/B;I)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lxc/i;

    invoke-direct {v0, p1, p2}, Lxc/h;-><init>(Lxc/l;Lsb/a;)V

    iput-object v0, p0, LWb/B;->e:Lxc/i;

    new-instance p2, LWb/z;

    const/4 v0, 0x0

    invoke-direct {p2, p0, v0}, LWb/z;-><init>(LWb/B;I)V

    invoke-virtual {p1, p2}, Lxc/l;->b(Lsb/k;)Lxc/e;

    move-result-object p2

    iput-object p2, p0, LWb/B;->f:Lxc/e;

    new-instance p2, LWb/z;

    const/4 v0, 0x1

    invoke-direct {p2, p0, v0}, LWb/z;-><init>(LWb/B;I)V

    invoke-virtual {p1, p2}, Lxc/l;->c(Lsb/k;)Lxc/j;

    move-result-object p2

    iput-object p2, p0, LWb/B;->g:Lxc/j;

    new-instance p2, LWb/z;

    const/4 v0, 0x2

    invoke-direct {p2, p0, v0}, LWb/z;-><init>(LWb/B;I)V

    invoke-virtual {p1, p2}, Lxc/l;->b(Lsb/k;)Lxc/e;

    move-result-object p2

    iput-object p2, p0, LWb/B;->h:Lxc/e;

    new-instance p2, LWb/y;

    const/4 v0, 0x2

    invoke-direct {p2, p0, v0}, LWb/y;-><init>(LWb/B;I)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lxc/i;

    invoke-direct {v0, p1, p2}, Lxc/h;-><init>(Lxc/l;Lsb/a;)V

    iput-object v0, p0, LWb/B;->i:Lxc/i;

    new-instance p2, LWb/y;

    const/4 v0, 0x3

    invoke-direct {p2, p0, v0}, LWb/y;-><init>(LWb/B;I)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lxc/i;

    invoke-direct {v0, p1, p2}, Lxc/h;-><init>(Lxc/l;Lsb/a;)V

    iput-object v0, p0, LWb/B;->j:Lxc/i;

    new-instance p2, LWb/y;

    const/4 v0, 0x4

    invoke-direct {p2, p0, v0}, LWb/y;-><init>(LWb/B;I)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lxc/i;

    invoke-direct {v0, p1, p2}, Lxc/h;-><init>(Lxc/l;Lsb/a;)V

    iput-object v0, p0, LWb/B;->k:Lxc/i;

    new-instance p2, LWb/z;

    const/4 v0, 0x3

    invoke-direct {p2, p0, v0}, LWb/z;-><init>(LWb/B;I)V

    invoke-virtual {p1, p2}, Lxc/l;->b(Lsb/k;)Lxc/e;

    move-result-object p1

    iput-object p1, p0, LWb/B;->l:Lxc/e;

    return-void
.end method

.method public static l(LPb/w;Lo3/i;)Lyc/w;
    .locals 5

    const-string v0, "method"

    invoke-static {p0, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, LPb/w;->b()Ljava/lang/reflect/Member;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Method;

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "getDeclaringClass(...)"

    invoke-static {v0, v1}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Class;->isAnnotation()Z

    move-result v0

    sget-object v1, Lyc/Z;->COMMON:Lyc/Z;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x6

    invoke-static {v1, v0, v2, v3, v4}, LG5/u3;->b(Lyc/Z;ZZLWb/G;I)LXb/a;

    move-result-object v0

    invoke-virtual {p0}, LPb/w;->f()LPb/A;

    move-result-object p0

    iget-object p1, p1, Lo3/i;->d:Ljava/lang/Object;

    check-cast p1, Lo3/t;

    invoke-virtual {p1, p0, v0}, Lo3/t;->r(LYb/d;LXb/a;)Lyc/w;

    move-result-object p0

    return-object p0
.end method

.method public static u(Lo3/i;LMb/v;Ljava/util/List;)LS3/F;
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    check-cast v1, Ljava/lang/Iterable;

    invoke-static {v1}, Lfb/n;->m0(Ljava/lang/Iterable;)LJc/q;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    const/16 v3, 0xa

    invoke-static {v1, v3}, Lfb/p;->m(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v1}, LJc/q;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    move-object v5, v1

    check-cast v5, LJc/c;

    iget-object v6, v5, LJc/c;->b:Ljava/util/Iterator;

    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-virtual {v5}, LJc/c;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lfb/z;

    iget v9, v5, Lfb/z;->a:I

    iget-object v5, v5, Lfb/z;->b:Ljava/lang/Object;

    check-cast v5, LPb/C;

    invoke-static {v0, v5}, LG5/V2;->f(Lo3/i;LYb/b;)LVb/c;

    move-result-object v10

    sget-object v6, Lyc/Z;->COMMON:Lyc/Z;

    const/4 v7, 0x7

    const/4 v8, 0x0

    invoke-static {v6, v3, v3, v8, v7}, LG5/u3;->b(Lyc/Z;ZZLWb/G;I)LXb/a;

    move-result-object v6

    iget-object v7, v0, Lo3/i;->a:Ljava/lang/Object;

    check-cast v7, LVb/a;

    iget-object v11, v5, LPb/C;->a:LPb/A;

    iget-boolean v12, v5, LPb/C;->d:Z

    const/4 v13, 0x1

    iget-object v14, v0, Lo3/i;->d:Ljava/lang/Object;

    check-cast v14, Lo3/t;

    iget-object v15, v7, LVb/a;->o:LMb/B;

    if-eqz v12, :cond_2

    instance-of v12, v11, LPb/h;

    if-eqz v12, :cond_0

    check-cast v11, LPb/h;

    goto :goto_1

    :cond_0
    move-object v11, v8

    :goto_1
    if-eqz v11, :cond_1

    invoke-virtual {v14, v11, v6, v13}, Lo3/t;->q(LPb/h;LXb/a;Z)Lyc/d0;

    move-result-object v6

    iget-object v11, v15, LMb/B;->e:LGb/i;

    invoke-virtual {v11, v6}, LGb/i;->f(Lyc/w;)Lyc/w;

    move-result-object v11

    new-instance v12, Ldb/j;

    invoke-direct {v12, v6, v11}, Ldb/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_2

    :cond_1
    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Vararg parameter should be an array: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :cond_2
    invoke-virtual {v14, v11, v6}, Lo3/t;->r(LYb/d;LXb/a;)Lyc/w;

    move-result-object v6

    new-instance v12, Ldb/j;

    invoke-direct {v12, v6, v8}, Ldb/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_2
    iget-object v6, v12, Ldb/j;->a:Ljava/lang/Object;

    move-object v14, v6

    check-cast v14, Lyc/w;

    iget-object v6, v12, Ldb/j;->b:Ljava/lang/Object;

    move-object/from16 v16, v6

    check-cast v16, Lyc/w;

    invoke-virtual/range {p1 .. p1}, LMb/n;->getName()Lhc/f;

    move-result-object v6

    invoke-virtual {v6}, Lhc/f;->c()Ljava/lang/String;

    move-result-object v6

    const-string v11, "equals"

    invoke-static {v6, v11}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v6

    if-ne v6, v13, :cond_3

    iget-object v6, v15, LMb/B;->e:LGb/i;

    invoke-virtual {v6}, LGb/i;->p()Lyc/A;

    move-result-object v6

    invoke-virtual {v6, v14}, Lyc/w;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    const-string v6, "other"

    invoke-static {v6}, Lhc/f;->f(Ljava/lang/String;)Lhc/f;

    move-result-object v6

    :goto_3
    move-object v11, v6

    goto :goto_4

    :cond_3
    iget-object v6, v5, LPb/C;->c:Ljava/lang/String;

    if-eqz v6, :cond_4

    invoke-static {v6}, Lhc/f;->e(Ljava/lang/String;)Lhc/f;

    move-result-object v8

    :cond_4
    if-nez v8, :cond_5

    move v4, v13

    :cond_5
    if-nez v8, :cond_6

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v8, "p"

    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lhc/f;->f(Ljava/lang/String;)Lhc/f;

    move-result-object v6

    goto :goto_3

    :cond_6
    move-object v11, v8

    :goto_4
    new-instance v15, LMb/T;

    iget-object v6, v7, LVb/a;->j:LOb/d;

    invoke-virtual {v6, v5}, LOb/d;->b(LYb/c;)LOb/f;

    move-result-object v17

    const/4 v5, 0x0

    const/16 v18, 0x0

    const/4 v8, 0x0

    const/4 v13, 0x0

    move-object v6, v15

    move-object/from16 v7, p1

    move-object v12, v14

    move v14, v5

    move-object v5, v15

    move/from16 v15, v18

    invoke-direct/range {v6 .. v17}, LMb/T;-><init>(LJb/b;LMb/T;ILKb/h;Lhc/f;Lyc/w;ZZZLyc/w;LJb/S;)V

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_7
    invoke-static {v2}, Lfb/n;->g0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    new-instance v1, LS3/F;

    const/4 v2, 0x1

    invoke-direct {v1, v2, v0, v4}, LS3/F;-><init>(ILjava/lang/Object;Z)V

    return-object v1
.end method


# virtual methods
.method public a(Lrc/f;Lsb/k;)Ljava/util/Collection;
    .locals 1

    const-string v0, "kindFilter"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "nameFilter"

    invoke-static {p2, p1}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, LWb/B;->d:Lxc/c;

    invoke-virtual {p0}, Lxc/i;->invoke()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Collection;

    return-object p0
.end method

.method public final b()Ljava/util/Set;
    .locals 2

    iget-object p0, p0, LWb/B;->i:Lxc/i;

    sget-object v0, LWb/B;->m:[LAb/u;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-static {p0, v0}, LG5/C2;->e(Lxc/m;LAb/u;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Set;

    return-object p0
.end method

.method public d(Lhc/f;LRb/a;)Ljava/util/Collection;
    .locals 1

    const-string v0, "name"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "location"

    invoke-static {p2, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, LWb/B;->b()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    sget-object p0, Lfb/v;->a:Lfb/v;

    return-object p0

    :cond_0
    iget-object p0, p0, LWb/B;->h:Lxc/e;

    invoke-virtual {p0, p1}, Lxc/e;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Collection;

    return-object p0
.end method

.method public final e()Ljava/util/Set;
    .locals 2

    iget-object p0, p0, LWb/B;->k:Lxc/i;

    sget-object v0, LWb/B;->m:[LAb/u;

    const/4 v1, 0x2

    aget-object v0, v0, v1

    invoke-static {p0, v0}, LG5/C2;->e(Lxc/m;LAb/u;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Set;

    return-object p0
.end method

.method public final f()Ljava/util/Set;
    .locals 2

    iget-object p0, p0, LWb/B;->j:Lxc/i;

    sget-object v0, LWb/B;->m:[LAb/u;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-static {p0, v0}, LG5/C2;->e(Lxc/m;LAb/u;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Set;

    return-object p0
.end method

.method public g(Lhc/f;LRb/c;)Ljava/util/Collection;
    .locals 1

    const-string v0, "name"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "location"

    invoke-static {p2, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, LWb/B;->f()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    sget-object p0, Lfb/v;->a:Lfb/v;

    return-object p0

    :cond_0
    iget-object p0, p0, LWb/B;->l:Lxc/e;

    invoke-virtual {p0, p1}, Lxc/e;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Collection;

    return-object p0
.end method

.method public abstract h(Lrc/f;Lrc/l;)Ljava/util/Set;
.end method

.method public abstract i(Lrc/f;Lrc/l;)Ljava/util/Set;
.end method

.method public j(Lhc/f;Ljava/util/ArrayList;)V
    .locals 0

    const-string p0, "name"

    invoke-static {p1, p0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public abstract k()LWb/c;
.end method

.method public abstract m(Ljava/util/LinkedHashSet;Lhc/f;)V
.end method

.method public abstract n(Lhc/f;Ljava/util/ArrayList;)V
.end method

.method public abstract o(Lrc/f;)Ljava/util/Set;
.end method

.method public abstract p()LMb/w;
.end method

.method public abstract q()LJb/l;
.end method

.method public r(LUb/g;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public abstract s(LPb/w;Ljava/util/ArrayList;Lyc/w;Ljava/util/List;)LWb/A;
.end method

.method public final t(LPb/w;)LUb/g;
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "method"

    invoke-static {v1, v2}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, v0, LWb/B;->b:Lo3/i;

    invoke-static {v2, v1}, LG5/V2;->f(Lo3/i;LYb/b;)LVb/c;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, LWb/B;->q()LJb/l;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, LPb/v;->c()Lhc/f;

    move-result-object v5

    iget-object v6, v2, Lo3/i;->a:Ljava/lang/Object;

    check-cast v6, LVb/a;

    iget-object v6, v6, LVb/a;->j:LOb/d;

    invoke-virtual {v6, v1}, LOb/d;->b(LYb/c;)LOb/f;

    move-result-object v6

    iget-object v7, v0, LWb/B;->e:Lxc/i;

    invoke-virtual {v7}, Lxc/i;->invoke()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, LWb/c;

    invoke-virtual/range {p1 .. p1}, LPb/v;->c()Lhc/f;

    move-result-object v8

    invoke-interface {v7, v8}, LWb/c;->c(Lhc/f;)LPb/z;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x1

    if-eqz v7, :cond_0

    invoke-virtual/range {p1 .. p1}, LPb/w;->g()Ljava/util/List;

    move-result-object v7

    check-cast v7, Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_0

    move v7, v9

    goto :goto_0

    :cond_0
    move v7, v8

    :goto_0
    invoke-static {v4, v3, v5, v6, v7}, LUb/g;->j1(LJb/l;LVb/c;Lhc/f;LOb/f;Z)LUb/g;

    move-result-object v3

    const-string v4, "<this>"

    invoke-static {v2, v4}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v4, v2, Lo3/i;->c:Ljava/lang/Object;

    iget-object v5, v2, Lo3/i;->a:Ljava/lang/Object;

    check-cast v5, LVb/a;

    new-instance v6, LP9/a;

    invoke-direct {v6, v2, v3, v1, v8}, LP9/a;-><init>(Lo3/i;LJb/m;LYb/e;I)V

    new-instance v2, Lo3/i;

    invoke-direct {v2, v5, v6, v4}, Lo3/i;-><init>(LVb/a;LVb/e;Ldb/f;)V

    invoke-virtual/range {p1 .. p1}, LPb/w;->m()Ljava/util/ArrayList;

    move-result-object v4

    new-instance v5, Ljava/util/ArrayList;

    const/16 v6, 0xa

    invoke-static {v4, v6}, Lfb/p;->m(Ljava/lang/Iterable;I)I

    move-result v6

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, LPb/B;

    iget-object v7, v2, Lo3/i;->b:Ljava/lang/Object;

    check-cast v7, LVb/e;

    invoke-interface {v7, v6}, LVb/e;->a(LPb/B;)LJb/W;

    move-result-object v6

    invoke-static {v6}, Ltb/k;->c(Ljava/lang/Object;)V

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    invoke-virtual/range {p1 .. p1}, LPb/w;->g()Ljava/util/List;

    move-result-object v4

    invoke-static {v2, v3, v4}, LWb/B;->u(Lo3/i;LMb/v;Ljava/util/List;)LS3/F;

    move-result-object v4

    invoke-static {v1, v2}, LWb/B;->l(LPb/w;Lo3/i;)Lyc/w;

    move-result-object v6

    iget-object v7, v4, LS3/F;->c:Ljava/lang/Object;

    check-cast v7, Ljava/util/List;

    invoke-virtual {v0, v1, v5, v6, v7}, LWb/B;->s(LPb/w;Ljava/util/ArrayList;Lyc/w;Ljava/util/List;)LWb/A;

    move-result-object v5

    invoke-virtual/range {p0 .. p0}, LWb/B;->p()LMb/w;

    move-result-object v12

    sget-object v13, Lfb/v;->a:Lfb/v;

    sget-object v0, LJb/B;->Companion:LJb/A;

    invoke-virtual/range {p1 .. p1}, LPb/w;->b()Ljava/lang/reflect/Member;

    move-result-object v6

    check-cast v6, Ljava/lang/reflect/Method;

    invoke-virtual {v6}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v6

    invoke-static {v6}, Ljava/lang/reflect/Modifier;->isAbstract(I)Z

    move-result v6

    invoke-virtual/range {p1 .. p1}, LPb/w;->b()Ljava/lang/reflect/Member;

    move-result-object v7

    check-cast v7, Ljava/lang/reflect/Method;

    invoke-virtual {v7}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v7

    invoke-static {v7}, Ljava/lang/reflect/Modifier;->isFinal(I)Z

    move-result v7

    xor-int/2addr v7, v9

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v8, v6, v7}, LJb/A;->a(ZZZ)LJb/B;

    move-result-object v17

    invoke-virtual/range {p1 .. p1}, LPb/v;->e()LJb/k0;

    move-result-object v0

    invoke-static {v0}, LG5/r2;->i(LJb/k0;)LJb/p;

    move-result-object v18

    sget-object v19, Lfb/w;->a:Lfb/w;

    iget-object v14, v5, LWb/A;->c:Ljava/util/ArrayList;

    iget-object v15, v5, LWb/A;->b:Ljava/util/List;

    iget-object v0, v5, LWb/A;->a:Lyc/w;

    const/4 v11, 0x0

    move-object v10, v3

    move-object/from16 v16, v0

    invoke-virtual/range {v10 .. v19}, LUb/g;->i1(LMb/w;LMb/w;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lyc/w;LJb/B;LJb/p;Lfb/w;)LMb/M;

    iget-boolean v0, v4, LS3/F;->b:Z

    invoke-virtual {v3, v8, v0}, LUb/g;->k1(ZZ)V

    iget-object v0, v5, LWb/A;->d:Ljava/util/List;

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    return-object v3

    :cond_2
    iget-object v0, v2, Lo3/i;->a:Ljava/lang/Object;

    check-cast v0, LVb/a;

    iget-object v0, v0, LVb/a;->e:LTb/h;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Should not be called"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Lazy scope for "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, LWb/B;->q()LJb/l;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
