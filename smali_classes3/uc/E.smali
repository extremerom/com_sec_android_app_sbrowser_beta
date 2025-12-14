.class public final Luc/E;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Luc/m;

.field public final b:Luc/E;

.field public final c:Ljava/lang/String;

.field public final d:Ljava/lang/String;

.field public final e:Lxc/j;

.field public final f:Lxc/j;

.field public final g:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Luc/m;Luc/E;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const-string v0, "c"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "typeParameterProtos"

    invoke-static {p3, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "debugName"

    invoke-static {p4, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Luc/E;->a:Luc/m;

    iput-object p2, p0, Luc/E;->b:Luc/E;

    iput-object p4, p0, Luc/E;->c:Ljava/lang/String;

    iput-object p5, p0, Luc/E;->d:Ljava/lang/String;

    iget-object p1, p1, Luc/m;->a:Ljava/lang/Object;

    check-cast p1, Luc/k;

    iget-object p2, p1, Luc/k;->a:Lxc/o;

    new-instance p4, Luc/B;

    const/4 p5, 0x0

    invoke-direct {p4, p0, p5}, Luc/B;-><init>(Luc/E;I)V

    check-cast p2, Lxc/l;

    invoke-virtual {p2, p4}, Lxc/l;->c(Lsb/k;)Lxc/j;

    move-result-object p2

    iput-object p2, p0, Luc/E;->e:Lxc/j;

    new-instance p2, Luc/B;

    const/4 p4, 0x1

    invoke-direct {p2, p0, p4}, Luc/B;-><init>(Luc/E;I)V

    iget-object p1, p1, Luc/k;->a:Lxc/o;

    check-cast p1, Lxc/l;

    invoke-virtual {p1, p2}, Lxc/l;->c(Lsb/k;)Lxc/j;

    move-result-object p1

    iput-object p1, p0, Luc/E;->f:Lxc/j;

    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, Lfb/w;->a:Lfb/w;

    goto :goto_1

    :cond_0
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast p3, Ljava/lang/Iterable;

    invoke-interface {p3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    const/4 p3, 0x0

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_1

    add-int/lit8 p4, p3, 0x1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Lcc/Y;

    iget v0, p5, Lcc/Y;->d:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-instance v1, Lwc/u;

    iget-object v2, p0, Luc/E;->a:Luc/m;

    invoke-direct {v1, v2, p5, p3}, Lwc/u;-><init>(Luc/m;Lcc/Y;I)V

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move p3, p4

    goto :goto_0

    :cond_1
    :goto_1
    iput-object p1, p0, Luc/E;->g:Ljava/lang/Object;

    return-void
.end method

.method public static a(Lyc/A;Lyc/w;)Lyc/A;
    .locals 7

    invoke-static {p0}, LG5/B;->f(Lyc/w;)LGb/i;

    move-result-object v0

    invoke-virtual {p0}, Lyc/w;->u()LKb/h;

    move-result-object v1

    invoke-static {p0}, LG5/I2;->h(Lyc/w;)Lyc/w;

    move-result-object v2

    invoke-static {p0}, LG5/I2;->f(Lyc/w;)Ljava/util/List;

    move-result-object v3

    invoke-static {p0}, LG5/I2;->i(Lyc/w;)Ljava/util/List;

    move-result-object v4

    invoke-static {v4}, Lfb/n;->A(Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    check-cast v4, Ljava/lang/Iterable;

    new-instance v5, Ljava/util/ArrayList;

    const/16 v6, 0xa

    invoke-static {v4, v6}, Lfb/p;->m(Ljava/lang/Iterable;I)I

    move-result v6

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lyc/Q;

    invoke-virtual {v6}, Lyc/Q;->b()Lyc/w;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const/4 v6, 0x1

    move-object v4, v5

    move-object v5, p1

    invoke-static/range {v0 .. v6}, LG5/I2;->c(LGb/i;LKb/h;Lyc/w;Ljava/util/List;Ljava/util/ArrayList;Lyc/w;Z)Lyc/A;

    move-result-object p1

    invoke-virtual {p0}, Lyc/w;->G0()Z

    move-result p0

    invoke-virtual {p1, p0}, Lyc/A;->M0(Z)Lyc/A;

    move-result-object p0

    return-object p0
.end method

.method public static final e(Lcc/T;Luc/E;)Ljava/util/ArrayList;
    .locals 2

    iget-object v0, p0, Lcc/T;->d:Ljava/util/List;

    const-string v1, "getArgumentList(...)"

    invoke-static {v0, v1}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/util/Collection;

    iget-object v1, p1, Luc/E;->a:Luc/m;

    iget-object v1, v1, Luc/m;->d:Ljava/lang/Object;

    check-cast v1, LX4/i;

    invoke-static {p0, v1}, LG5/Q2;->e(Lcc/T;LX4/i;)Lcc/T;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-static {p0, p1}, Luc/E;->e(Lcc/T;Luc/E;)Ljava/util/ArrayList;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-nez p0, :cond_1

    sget-object p0, Lfb/v;->a:Lfb/v;

    :cond_1
    check-cast p0, Ljava/lang/Iterable;

    invoke-static {p0, v0}, Lfb/n;->R(Ljava/lang/Iterable;Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method public static f(Ljava/util/List;LKb/h;Lyc/L;LJb/l;)Lyc/H;
    .locals 1

    check-cast p0, Ljava/lang/Iterable;

    new-instance p2, Ljava/util/ArrayList;

    const/16 p3, 0xa

    invoke-static {p0, p3}, Lfb/p;->m(Ljava/lang/Iterable;I)I

    move-result p3

    invoke-direct {p2, p3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lyc/m;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p1}, LKb/h;->isEmpty()Z

    move-result p3

    if-eqz p3, :cond_0

    sget-object p3, Lyc/H;->b:LA7/h;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p3, Lyc/H;->c:Lyc/H;

    goto :goto_1

    :cond_0
    sget-object p3, Lyc/H;->b:LA7/h;

    new-instance v0, Lyc/i;

    invoke-direct {v0, p1}, Lyc/i;-><init>(LKb/h;)V

    invoke-static {v0}, LG5/o3;->d(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, LA7/h;->c(Ljava/util/List;)Lyc/H;

    move-result-object p3

    :goto_1
    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-static {p2}, Lfb/p;->n(Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object p0

    sget-object p1, Lyc/H;->b:LA7/h;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0}, LA7/h;->c(Ljava/util/List;)Lyc/H;

    move-result-object p0

    return-object p0
.end method

.method public static final h(Luc/E;Lcc/T;I)LJb/f;
    .locals 4

    iget-object v0, p0, Luc/E;->a:Luc/m;

    iget-object v0, v0, Luc/m;->b:Ljava/lang/Object;

    check-cast v0, Lec/g;

    invoke-static {v0, p2}, LG5/m2;->b(Lec/g;I)Lhc/b;

    move-result-object p2

    new-instance v0, Luc/B;

    const/4 v1, 0x2

    invoke-direct {v0, p0, v1}, Luc/B;-><init>(Luc/E;I)V

    invoke-static {p1, v0}, LJc/n;->q(Ljava/lang/Object;Lsb/k;)LJc/l;

    move-result-object p1

    sget-object v0, Luc/C;->a:Luc/C;

    invoke-static {p1, v0}, LJc/n;->t(LJc/l;Lsb/k;)LJc/t;

    move-result-object p1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p1, LJc/t;->a:LJc/l;

    invoke-interface {v1}, LJc/l;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    iget-object v3, p1, LJc/t;->b:Lsb/k;

    invoke-interface {v3, v2}, Lsb/k;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    sget-object p1, Luc/D;->b:Luc/D;

    invoke-static {p2, p1}, LJc/n;->q(Ljava/lang/Object;Lsb/k;)LJc/l;

    move-result-object p1

    invoke-static {p1}, LJc/n;->m(LJc/l;)I

    move-result p1

    :goto_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v1, p1, :cond_1

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    iget-object p0, p0, Luc/E;->a:Luc/m;

    iget-object p0, p0, Luc/m;->a:Ljava/lang/Object;

    check-cast p0, Luc/k;

    iget-object p0, p0, Luc/k;->l:Lcom/google/firebase/messaging/q;

    invoke-virtual {p0, p2, v0}, Lcom/google/firebase/messaging/q;->d(Lhc/b;Ljava/util/List;)LJb/f;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final b()Ljava/util/List;
    .locals 0

    iget-object p0, p0, Luc/E;->g:Ljava/lang/Object;

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    check-cast p0, Ljava/lang/Iterable;

    invoke-static {p0}, Lfb/n;->g0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final c(I)LJb/W;
    .locals 2

    iget-object v0, p0, Luc/E;->g:Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LJb/W;

    if-nez v0, :cond_1

    iget-object p0, p0, Luc/E;->b:Luc/E;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Luc/E;->c(I)LJb/W;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return-object v0
.end method

.method public final d(Lcc/T;Z)Lyc/A;
    .locals 23

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v5, 0x1

    const/16 v6, 0x40

    const/16 v7, 0x20

    const/4 v8, 0x0

    const-string v9, "proto"

    invoke-static {v1, v9}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Lcc/T;->n()Z

    move-result v9

    const/16 v10, 0x80

    iget-object v11, v0, Luc/E;->a:Luc/m;

    if-eqz v9, :cond_0

    iget v9, v1, Lcc/T;->i:I

    iget-object v12, v11, Luc/m;->b:Ljava/lang/Object;

    check-cast v12, Lec/g;

    invoke-static {v12, v9}, LG5/m2;->b(Lec/g;I)Lhc/b;

    move-result-object v9

    iget-boolean v9, v9, Lhc/b;->c:Z

    if-eqz v9, :cond_1

    iget-object v9, v11, Luc/m;->a:Ljava/lang/Object;

    check-cast v9, Luc/k;

    iget-object v9, v9, Luc/k;->g:Luc/l;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_0

    :cond_0
    iget v9, v1, Lcc/T;->c:I

    and-int/2addr v9, v10

    if-ne v9, v10, :cond_1

    iget v9, v1, Lcc/T;->l:I

    iget-object v12, v11, Luc/m;->b:Ljava/lang/Object;

    check-cast v12, Lec/g;

    invoke-static {v12, v9}, LG5/m2;->b(Lec/g;I)Lhc/b;

    move-result-object v9

    iget-boolean v9, v9, Lhc/b;->c:Z

    if-eqz v9, :cond_1

    iget-object v9, v11, Luc/m;->a:Ljava/lang/Object;

    check-cast v9, Luc/k;

    iget-object v9, v9, Luc/k;->g:Luc/l;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_1
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lcc/T;->n()Z

    move-result v9

    const-string v13, "getTypeConstructor(...)"

    if-eqz v9, :cond_2

    iget-object v6, v0, Luc/E;->e:Lxc/j;

    iget v7, v1, Lcc/T;->i:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Lxc/j;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, LJb/i;

    if-nez v6, :cond_8

    iget v6, v1, Lcc/T;->i:I

    invoke-static {v0, v1, v6}, Luc/E;->h(Luc/E;Lcc/T;I)LJb/f;

    move-result-object v6

    goto/16 :goto_2

    :cond_2
    iget v9, v1, Lcc/T;->c:I

    and-int/lit8 v14, v9, 0x20

    if-ne v14, v7, :cond_3

    iget v6, v1, Lcc/T;->j:I

    invoke-virtual {v0, v6}, Luc/E;->c(I)LJb/W;

    move-result-object v6

    if-nez v6, :cond_8

    sget-object v6, LAc/l;->a:LAc/l;

    sget-object v6, LAc/k;->CANNOT_LOAD_DESERIALIZE_TYPE_PARAMETER:LAc/k;

    iget v7, v1, Lcc/T;->j:I

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    iget-object v9, v0, Luc/E;->d:Ljava/lang/String;

    filled-new-array {v7, v9}, [Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, LAc/l;->d(LAc/k;[Ljava/lang/String;)LAc/j;

    move-result-object v6

    goto/16 :goto_3

    :cond_3
    and-int/lit8 v7, v9, 0x40

    if-ne v7, v6, :cond_7

    iget-object v6, v11, Luc/m;->b:Ljava/lang/Object;

    check-cast v6, Lec/g;

    iget v7, v1, Lcc/T;->k:I

    invoke-interface {v6, v7}, Lec/g;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {p0 .. p0}, Luc/E;->b()Ljava/util/List;

    move-result-object v7

    check-cast v7, Ljava/lang/Iterable;

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_4
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    move-object v10, v9

    check-cast v10, LJb/W;

    invoke-interface {v10}, LJb/l;->getName()Lhc/f;

    move-result-object v10

    invoke-virtual {v10}, Lhc/f;->c()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10, v6}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    goto :goto_1

    :cond_5
    const/4 v9, 0x0

    :goto_1
    move-object v7, v9

    check-cast v7, LJb/W;

    if-nez v7, :cond_6

    sget-object v7, LAc/l;->a:LAc/l;

    sget-object v7, LAc/k;->CANNOT_LOAD_DESERIALIZE_TYPE_PARAMETER_BY_NAME:LAc/k;

    iget-object v9, v11, Luc/m;->c:Ljava/lang/Object;

    check-cast v9, LJb/l;

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    filled-new-array {v6, v9}, [Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, LAc/l;->d(LAc/k;[Ljava/lang/String;)LAc/j;

    move-result-object v6

    goto :goto_3

    :cond_6
    move-object v6, v7

    goto :goto_2

    :cond_7
    and-int/lit16 v6, v9, 0x80

    if-ne v6, v10, :cond_9

    iget-object v6, v0, Luc/E;->f:Lxc/j;

    iget v7, v1, Lcc/T;->l:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Lxc/j;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, LJb/i;

    if-nez v6, :cond_8

    iget v6, v1, Lcc/T;->l:I

    invoke-static {v0, v1, v6}, Luc/E;->h(Luc/E;Lcc/T;I)LJb/f;

    move-result-object v6

    :cond_8
    :goto_2
    invoke-interface {v6}, LJb/i;->w()Lyc/L;

    move-result-object v6

    invoke-static {v6, v13}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_3

    :cond_9
    sget-object v6, LAc/l;->a:LAc/l;

    sget-object v6, LAc/k;->UNKNOWN_TYPE:LAc/k;

    new-array v7, v8, [Ljava/lang/String;

    invoke-static {v6, v7}, LAc/l;->d(LAc/k;[Ljava/lang/String;)LAc/j;

    move-result-object v6

    :goto_3
    invoke-interface {v6}, Lyc/L;->c()LJb/i;

    move-result-object v7

    invoke-static {v7}, LAc/l;->f(LJb/l;)Z

    move-result v7

    if-eqz v7, :cond_a

    sget-object v0, LAc/l;->a:LAc/l;

    sget-object v0, LAc/k;->TYPE_FOR_ERROR_TYPE_CONSTRUCTOR:LAc/k;

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    const-string v2, "kind"

    invoke-static {v0, v2}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v2, Lfb/v;->a:Lfb/v;

    invoke-static {v1, v5}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    invoke-static {v0, v2, v6, v1}, LAc/l;->e(LAc/k;Ljava/util/List;Lyc/L;[Ljava/lang/String;)LAc/i;

    move-result-object v0

    return-object v0

    :cond_a
    new-instance v7, Lwc/a;

    iget-object v9, v11, Luc/m;->a:Ljava/lang/Object;

    check-cast v9, Luc/k;

    iget-object v9, v9, Luc/k;->a:Lxc/o;

    new-instance v10, LDb/J;

    const/16 v14, 0x11

    invoke-direct {v10, v14, v0, v1}, LDb/J;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-direct {v7, v9, v10}, Lwc/a;-><init>(Lxc/o;Lsb/a;)V

    iget-object v9, v11, Luc/m;->a:Ljava/lang/Object;

    check-cast v9, Luc/k;

    iget-object v10, v9, Luc/k;->r:Ljava/util/List;

    iget-object v14, v11, Luc/m;->c:Ljava/lang/Object;

    check-cast v14, LJb/l;

    invoke-static {v10, v7, v6, v14}, Luc/E;->f(Ljava/util/List;LKb/h;Lyc/L;LJb/l;)Lyc/H;

    move-result-object v10

    invoke-static {v1, v0}, Luc/E;->e(Lcc/T;Luc/E;)Ljava/util/ArrayList;

    move-result-object v15

    new-instance v2, Ljava/util/ArrayList;

    const/16 v8, 0xa

    invoke-static {v15, v8}, Lfb/p;->m(Ljava/lang/Iterable;I)I

    move-result v8

    invoke-direct {v2, v8}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v15}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    const/4 v15, 0x0

    :goto_4
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    iget-object v12, v11, Luc/m;->d:Ljava/lang/Object;

    check-cast v12, LX4/i;

    const-string v4, "typeTable"

    if-eqz v16, :cond_15

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    add-int/lit8 v18, v15, 0x1

    if-ltz v15, :cond_14

    move-object/from16 v3, v16

    check-cast v3, Lcc/Q;

    invoke-interface {v6}, Lyc/L;->a()Ljava/util/List;

    move-result-object v5

    move-object/from16 v20, v8

    const-string v8, "getParameters(...)"

    invoke-static {v5, v8}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v15, v5}, Lfb/n;->F(ILjava/util/List;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, LJb/W;

    iget-object v8, v3, Lcc/Q;->c:Lcc/P;

    sget-object v15, Lcc/P;->STAR:Lcc/P;

    if-ne v8, v15, :cond_c

    if-nez v5, :cond_b

    new-instance v3, Lyc/E;

    iget-object v4, v9, Luc/k;->b:LJb/C;

    invoke-interface {v4}, LJb/C;->j()LGb/i;

    move-result-object v4

    invoke-direct {v3, v4}, Lyc/E;-><init>(LGb/i;)V

    goto :goto_5

    :cond_b
    new-instance v3, Lyc/F;

    invoke-direct {v3, v5}, Lyc/F;-><init>(LJb/W;)V

    :goto_5
    const/4 v8, 0x2

    const/4 v15, 0x4

    goto/16 :goto_8

    :cond_c
    const-string v5, "getProjection(...)"

    invoke-static {v8, v5}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v5, Luc/y;->d:[I

    invoke-virtual {v8}, Ljava/lang/Enum;->ordinal()I

    move-result v15

    aget v5, v5, v15

    const/4 v15, 0x1

    if-eq v5, v15, :cond_10

    const/4 v15, 0x2

    if-eq v5, v15, :cond_f

    const/4 v15, 0x3

    if-eq v5, v15, :cond_e

    const/4 v15, 0x4

    if-eq v5, v15, :cond_d

    new-instance v0, LI5/b;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Only IN, OUT and INV are supported. Actual argument: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_e
    sget-object v5, Lyc/e0;->INVARIANT:Lyc/e0;

    goto :goto_6

    :cond_f
    sget-object v5, Lyc/e0;->OUT_VARIANCE:Lyc/e0;

    goto :goto_6

    :cond_10
    sget-object v5, Lyc/e0;->IN_VARIANCE:Lyc/e0;

    :goto_6
    invoke-static {v12, v4}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget v4, v3, Lcc/Q;->b:I

    const/4 v8, 0x2

    and-int/lit8 v15, v4, 0x2

    if-ne v15, v8, :cond_11

    iget-object v4, v3, Lcc/Q;->d:Lcc/T;

    const/4 v15, 0x4

    goto :goto_7

    :cond_11
    const/4 v15, 0x4

    and-int/2addr v4, v15

    if-ne v4, v15, :cond_12

    iget v4, v3, Lcc/Q;->e:I

    invoke-virtual {v12, v4}, LX4/i;->f(I)Lcc/T;

    move-result-object v4

    goto :goto_7

    :cond_12
    const/4 v4, 0x0

    :goto_7
    if-nez v4, :cond_13

    new-instance v4, Lyc/F;

    sget-object v5, LAc/k;->NO_RECORDED_TYPE:LAc/k;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, LAc/l;->c(LAc/k;[Ljava/lang/String;)LAc/i;

    move-result-object v3

    invoke-direct {v4, v3}, Lyc/F;-><init>(Lyc/w;)V

    move-object v3, v4

    goto :goto_8

    :cond_13
    new-instance v3, Lyc/F;

    invoke-virtual {v0, v4}, Luc/E;->g(Lcc/T;)Lyc/w;

    move-result-object v4

    invoke-direct {v3, v4, v5}, Lyc/F;-><init>(Lyc/w;Lyc/e0;)V

    :goto_8
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move/from16 v15, v18

    move-object/from16 v8, v20

    const/4 v5, 0x1

    goto/16 :goto_4

    :cond_14
    invoke-static {}, Lfb/o;->l()V

    const/4 v0, 0x0

    throw v0

    :cond_15
    invoke-static {v2}, Lfb/n;->g0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v6}, Lyc/L;->c()LJb/i;

    move-result-object v3

    if-eqz p2, :cond_19

    instance-of v5, v3, LJb/V;

    if-eqz v5, :cond_19

    check-cast v3, LJb/V;

    const-string v5, "<this>"

    invoke-static {v3, v5}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v17, Lyc/e;

    invoke-direct/range {v17 .. v17}, Ljava/lang/Object;-><init>()V

    const/4 v5, 0x0

    invoke-static {v5, v3, v2}, Lyc/c;->e(Lo3/i;LJb/V;Ljava/util/List;)Lo3/i;

    move-result-object v18

    sget-object v2, Lyc/H;->b:LA7/h;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v2, Lyc/H;->c:Lyc/H;

    const-string v3, "attributes"

    invoke-static {v2, v3}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v21, 0x0

    const/16 v22, 0x1

    const/16 v20, 0x0

    move-object/from16 v19, v2

    invoke-virtual/range {v17 .. v22}, Lyc/e;->i(Lo3/i;Lyc/H;ZIZ)Lyc/A;

    move-result-object v2

    iget-object v3, v9, Luc/k;->r:Ljava/util/List;

    invoke-virtual {v2}, Lyc/w;->u()LKb/h;

    move-result-object v8

    invoke-static {v7, v8}, Lfb/n;->P(Ljava/lang/Iterable;Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_16

    sget-object v7, LKb/g;->a:LKb/f;

    goto :goto_9

    :cond_16
    new-instance v8, LKb/i;

    const/4 v9, 0x0

    invoke-direct {v8, v9, v7}, LKb/i;-><init>(ILjava/util/List;)V

    move-object v7, v8

    :goto_9
    invoke-static {v3, v7, v6, v14}, Luc/E;->f(Ljava/util/List;LKb/h;Lyc/L;LJb/l;)Lyc/H;

    move-result-object v3

    invoke-static {v2}, Lyc/b0;->e(Lyc/w;)Z

    move-result v6

    if-nez v6, :cond_18

    iget-boolean v6, v1, Lcc/T;->e:Z

    if-eqz v6, :cond_17

    goto :goto_a

    :cond_17
    const/4 v6, 0x0

    goto :goto_b

    :cond_18
    :goto_a
    const/4 v6, 0x1

    :goto_b
    invoke-virtual {v2, v6}, Lyc/A;->M0(Z)Lyc/A;

    move-result-object v2

    invoke-virtual {v2, v3}, Lyc/A;->N0(Lyc/H;)Lyc/A;

    move-result-object v2

    goto/16 :goto_13

    :cond_19
    const/4 v5, 0x0

    sget-object v3, Lec/e;->a:Lec/b;

    iget v7, v1, Lcc/T;->q:I

    invoke-virtual {v3, v7}, Lec/b;->c(I)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_27

    iget-boolean v3, v1, Lcc/T;->e:Z

    invoke-interface {v6}, Lyc/L;->a()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v8

    sub-int/2addr v7, v8

    if-eqz v7, :cond_1c

    const/4 v8, 0x1

    if-eq v7, v8, :cond_1b

    :cond_1a
    :goto_c
    move-object v3, v5

    goto/16 :goto_11

    :cond_1b
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v7

    sub-int/2addr v7, v8

    if-ltz v7, :cond_1a

    invoke-interface {v6}, Lyc/L;->j()LGb/i;

    move-result-object v8

    invoke-virtual {v8, v7}, LGb/i;->w(I)LJb/f;

    move-result-object v7

    invoke-interface {v7}, LJb/i;->w()Lyc/L;

    move-result-object v7

    invoke-static {v7, v13}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2, v10, v7, v3}, Lyc/c;->u(Ljava/util/List;Lyc/H;Lyc/L;Z)Lyc/A;

    move-result-object v3

    goto/16 :goto_11

    :cond_1c
    invoke-static {v2, v10, v6, v3}, Lyc/c;->u(Ljava/util/List;Lyc/H;Lyc/L;Z)Lyc/A;

    move-result-object v3

    invoke-virtual {v3}, Lyc/w;->F0()Lyc/L;

    move-result-object v7

    invoke-interface {v7}, Lyc/L;->c()LJb/i;

    move-result-object v7

    if-eqz v7, :cond_1d

    invoke-static {v7}, LG5/I2;->g(LJb/i;)LHb/l;

    move-result-object v7

    goto :goto_d

    :cond_1d
    move-object v7, v5

    :goto_d
    sget-object v8, LHb/h;->c:LHb/h;

    invoke-static {v7, v8}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1e

    goto :goto_c

    :cond_1e
    invoke-static {v3}, LG5/I2;->i(Lyc/w;)Ljava/util/List;

    move-result-object v7

    invoke-static {v7}, Lfb/n;->L(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lyc/Q;

    if-eqz v7, :cond_1a

    invoke-virtual {v7}, Lyc/Q;->b()Lyc/w;

    move-result-object v7

    if-nez v7, :cond_1f

    goto :goto_c

    :cond_1f
    invoke-virtual {v7}, Lyc/w;->F0()Lyc/L;

    move-result-object v8

    invoke-interface {v8}, Lyc/L;->c()LJb/i;

    move-result-object v8

    if-eqz v8, :cond_20

    invoke-static {v8}, Loc/d;->g(LJb/l;)Lhc/c;

    move-result-object v8

    goto :goto_e

    :cond_20
    move-object v8, v5

    :goto_e
    invoke-virtual {v7}, Lyc/w;->D0()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_25

    sget-object v9, LGb/q;->g:Lhc/c;

    invoke-static {v8, v9}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_21

    sget-object v9, Luc/F;->a:Lhc/c;

    invoke-static {v8, v9}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_21

    goto :goto_11

    :cond_21
    invoke-virtual {v7}, Lyc/w;->D0()Ljava/util/List;

    move-result-object v7

    invoke-static {v7}, Lfb/n;->U(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lyc/Q;

    invoke-virtual {v7}, Lyc/Q;->b()Lyc/w;

    move-result-object v7

    const-string v8, "getType(...)"

    invoke-static {v7, v8}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v8, v14, LJb/b;

    if-eqz v8, :cond_22

    move-object v8, v14

    check-cast v8, LJb/b;

    goto :goto_f

    :cond_22
    move-object v8, v5

    :goto_f
    if-eqz v8, :cond_23

    invoke-static {v8}, Loc/d;->c(LJb/m;)Lhc/c;

    move-result-object v8

    goto :goto_10

    :cond_23
    move-object v8, v5

    :goto_10
    sget-object v9, Luc/A;->a:Lhc/c;

    invoke-static {v8, v9}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_24

    invoke-static {v3, v7}, Luc/E;->a(Lyc/A;Lyc/w;)Lyc/A;

    move-result-object v3

    goto :goto_11

    :cond_24
    invoke-static {v3, v7}, Luc/E;->a(Lyc/A;Lyc/w;)Lyc/A;

    move-result-object v3

    :cond_25
    :goto_11
    if-nez v3, :cond_26

    sget-object v3, LAc/l;->a:LAc/l;

    sget-object v3, LAc/k;->INCONSISTENT_SUSPEND_FUNCTION:LAc/k;

    const/4 v7, 0x0

    new-array v8, v7, [Ljava/lang/String;

    invoke-static {v3, v2, v6, v8}, LAc/l;->e(LAc/k;Ljava/util/List;Lyc/L;[Ljava/lang/String;)LAc/i;

    move-result-object v2

    goto :goto_13

    :cond_26
    :goto_12
    move-object v2, v3

    goto :goto_13

    :cond_27
    iget-boolean v3, v1, Lcc/T;->e:Z

    invoke-static {v2, v10, v6, v3}, Lyc/c;->u(Ljava/util/List;Lyc/H;Lyc/L;Z)Lyc/A;

    move-result-object v2

    sget-object v3, Lec/e;->b:Lec/b;

    iget v6, v1, Lcc/T;->q:I

    invoke-virtual {v3, v6}, Lec/b;->c(I)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_29

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lyc/e;->p(Lyc/d0;Z)Lyc/n;

    move-result-object v3

    if-eqz v3, :cond_28

    goto :goto_12

    :cond_28
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "null DefinitelyNotNullType for \'"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v2, 0x27

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_29
    :goto_13
    invoke-static {v12, v4}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget v3, v1, Lcc/T;->c:I

    const/16 v4, 0x400

    and-int/lit16 v6, v3, 0x400

    if-ne v6, v4, :cond_2a

    iget-object v12, v1, Lcc/T;->o:Lcc/T;

    goto :goto_14

    :cond_2a
    const/16 v4, 0x800

    and-int/2addr v3, v4

    if-ne v3, v4, :cond_2b

    iget v1, v1, Lcc/T;->p:I

    invoke-virtual {v12, v1}, LX4/i;->f(I)Lcc/T;

    move-result-object v12

    goto :goto_14

    :cond_2b
    move-object v12, v5

    :goto_14
    if-eqz v12, :cond_2c

    const/4 v1, 0x0

    invoke-virtual {v0, v12, v1}, Luc/E;->d(Lcc/T;Z)Lyc/A;

    move-result-object v0

    invoke-static {v2, v0}, Lyc/c;->F(Lyc/A;Lyc/A;)Lyc/A;

    move-result-object v2

    :cond_2c
    return-object v2
.end method

.method public final g(Lcc/T;)Lyc/w;
    .locals 8

    const-string v0, "proto"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget v0, p1, Lcc/T;->c:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_3

    iget-object v0, p0, Luc/E;->a:Luc/m;

    iget-object v1, v0, Luc/m;->b:Ljava/lang/Object;

    check-cast v1, Lec/g;

    iget v3, p1, Lcc/T;->f:I

    invoke-interface {v1, v3}, Lec/g;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v2}, Luc/E;->d(Lcc/T;Z)Lyc/A;

    move-result-object v3

    const-string v4, "typeTable"

    iget-object v5, v0, Luc/m;->d:Ljava/lang/Object;

    check-cast v5, LX4/i;

    invoke-static {v5, v4}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget v4, p1, Lcc/T;->c:I

    and-int/lit8 v6, v4, 0x4

    const/4 v7, 0x4

    if-ne v6, v7, :cond_1

    iget-object v4, p1, Lcc/T;->g:Lcc/T;

    goto :goto_1

    :cond_1
    const/16 v6, 0x8

    and-int/2addr v4, v6

    if-ne v4, v6, :cond_2

    iget v4, p1, Lcc/T;->h:I

    invoke-virtual {v5, v4}, LX4/i;->f(I)Lcc/T;

    move-result-object v4

    goto :goto_1

    :cond_2
    const/4 v4, 0x0

    :goto_1
    invoke-static {v4}, Ltb/k;->c(Ljava/lang/Object;)V

    invoke-virtual {p0, v4, v2}, Luc/E;->d(Lcc/T;Z)Lyc/A;

    move-result-object p0

    iget-object v0, v0, Luc/m;->a:Ljava/lang/Object;

    check-cast v0, Luc/k;

    iget-object v0, v0, Luc/k;->j:Luc/p;

    invoke-interface {v0, p1, v1, v3, p0}, Luc/p;->b(Lcc/T;Ljava/lang/String;Lyc/A;Lyc/A;)Lyc/w;

    move-result-object p0

    return-object p0

    :cond_3
    invoke-virtual {p0, p1, v2}, Luc/E;->d(Lcc/T;Z)Lyc/A;

    move-result-object p0

    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Luc/E;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Luc/E;->b:Luc/E;

    if-nez p0, :cond_0

    const-string p0, ""

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, ". Child of "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Luc/E;->c:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_0
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
