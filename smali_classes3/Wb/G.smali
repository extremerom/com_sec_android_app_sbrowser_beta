.class public final LWb/G;
.super LMb/d;
.source "SourceFile"


# instance fields
.field public final l:Lo3/i;

.field public final m:LPb/B;


# direct methods
.method public constructor <init>(Lo3/i;LPb/B;ILJb/m;)V
    .locals 10

    const-string v0, "javaTypeParameter"

    invoke-static {p2, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p1, Lo3/i;->a:Ljava/lang/Object;

    check-cast v0, LVb/a;

    iget-object v2, v0, LVb/a;->a:Lxc/l;

    new-instance v4, LVb/c;

    const/4 v1, 0x0

    invoke-direct {v4, p1, p2, v1}, LVb/c;-><init>(Lo3/i;LYb/b;Z)V

    iget-object v1, p2, LPb/B;->a:Ljava/lang/reflect/TypeVariable;

    invoke-interface {v1}, Ljava/lang/reflect/TypeVariable;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lhc/f;->f(Ljava/lang/String;)Lhc/f;

    move-result-object v5

    sget-object v6, Lyc/e0;->INVARIANT:Lyc/e0;

    const/4 v7, 0x0

    iget-object v9, v0, LVb/a;->m:LJb/T;

    move-object v1, p0

    move-object v3, p4

    move v8, p3

    invoke-direct/range {v1 .. v9}, LMb/d;-><init>(Lxc/o;LJb/l;LKb/h;Lhc/f;Lyc/e0;ZILJb/T;)V

    iput-object p1, p0, LWb/G;->l:Lo3/i;

    iput-object p2, p0, LWb/G;->m:LPb/B;

    return-void
.end method


# virtual methods
.method public final U0(Ljava/util/List;)Ljava/util/List;
    .locals 17

    move-object/from16 v6, p0

    iget-object v7, v6, LWb/G;->l:Lo3/i;

    iget-object v0, v7, Lo3/i;->a:Ljava/lang/Object;

    check-cast v0, LVb/a;

    iget-object v14, v0, LVb/a;->r:LZb/c;

    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object/from16 v0, p1

    check-cast v0, Ljava/lang/Iterable;

    new-instance v15, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {v0, v1}, Lfb/p;->m(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v15, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :goto_0
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v13, v0

    check-cast v13, Lyc/w;

    sget-object v0, LZb/n;->d:LZb/n;

    const-string v1, "<this>"

    invoke-static {v13, v1}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-static {v13, v0, v1}, Lyc/b0;->c(Lyc/w;Lsb/k;LHc/i;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v1, v13

    goto :goto_1

    :cond_0
    new-instance v9, LT2/c;

    sget-object v4, LSb/b;->TYPE_PARAMETER_BOUNDS:LSb/b;

    const/4 v5, 0x0

    const/4 v2, 0x0

    move-object v0, v9

    move-object/from16 v1, p0

    move-object v3, v7

    invoke-direct/range {v0 .. v5}, LT2/c;-><init>(LJb/m;ZLo3/i;LSb/b;Z)V

    sget-object v11, Lfb/v;->a:Lfb/v;

    const/4 v0, 0x0

    const/4 v12, 0x0

    move-object v8, v14

    move-object v10, v13

    move-object v1, v13

    move v13, v0

    invoke-virtual/range {v8 .. v13}, LZb/c;->a(LT2/c;Lyc/w;Ljava/util/List;LZb/q;Z)Lyc/w;

    move-result-object v13

    if-nez v13, :cond_1

    :goto_1
    move-object v13, v1

    :cond_1
    invoke-virtual {v15, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v15
.end method

.method public final V0()Ljava/util/List;
    .locals 8

    iget-object v0, p0, LWb/G;->m:LPb/B;

    iget-object v0, v0, LPb/B;->a:Ljava/lang/reflect/TypeVariable;

    invoke-interface {v0}, Ljava/lang/reflect/TypeVariable;->getBounds()[Ljava/lang/reflect/Type;

    move-result-object v0

    const-string v1, "getBounds(...)"

    invoke-static {v0, v1}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Ljava/util/ArrayList;

    array-length v2, v0

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    array-length v2, v0

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_0

    aget-object v5, v0, v4

    new-instance v6, LPb/p;

    invoke-direct {v6, v5}, LPb/p;-><init>(Ljava/lang/reflect/Type;)V

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    invoke-static {v1}, Lfb/n;->W(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LPb/p;

    if-eqz v0, :cond_1

    iget-object v0, v0, LPb/p;->a:Ljava/lang/reflect/Type;

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    const-class v2, Ljava/lang/Object;

    invoke-static {v0, v2}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v1, Lfb/v;->a:Lfb/v;

    :cond_2
    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    iget-object v2, p0, LWb/G;->l:Lo3/i;

    if-eqz v0, :cond_3

    iget-object p0, v2, Lo3/i;->a:Ljava/lang/Object;

    check-cast p0, LVb/a;

    iget-object p0, p0, LVb/a;->o:LMb/B;

    iget-object p0, p0, LMb/B;->e:LGb/i;

    invoke-virtual {p0}, LGb/i;->e()Lyc/A;

    move-result-object p0

    iget-object v0, v2, Lo3/i;->a:Ljava/lang/Object;

    check-cast v0, LVb/a;

    iget-object v0, v0, LVb/a;->o:LMb/B;

    iget-object v0, v0, LMb/B;->e:LGb/i;

    invoke-virtual {v0}, LGb/i;->p()Lyc/A;

    move-result-object v0

    invoke-static {p0, v0}, Lyc/c;->f(Lyc/A;Lyc/A;)Lyc/d0;

    move-result-object p0

    invoke-static {p0}, LG5/o3;->d(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    goto :goto_3

    :cond_3
    check-cast v1, Ljava/lang/Iterable;

    new-instance v0, Ljava/util/ArrayList;

    const/16 v4, 0xa

    invoke-static {v1, v4}, Lfb/p;->m(Ljava/lang/Iterable;I)I

    move-result v4

    invoke-direct {v0, v4}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, LPb/p;

    iget-object v5, v2, Lo3/i;->d:Ljava/lang/Object;

    check-cast v5, Lo3/t;

    sget-object v6, Lyc/Z;->COMMON:Lyc/Z;

    const/4 v7, 0x3

    invoke-static {v6, v3, v3, p0, v7}, LG5/u3;->b(Lyc/Z;ZZLWb/G;I)LXb/a;

    move-result-object v6

    invoke-virtual {v5, v4, v6}, Lo3/t;->r(LYb/d;LXb/a;)Lyc/w;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_4
    move-object p0, v0

    :goto_3
    return-object p0
.end method
