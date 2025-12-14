.class public final Luc/v;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Luc/m;

.field public final b:Lcom/google/android/gms/internal/auth/j;


# direct methods
.method public constructor <init>(Luc/m;)V
    .locals 2

    const-string v0, "c"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Luc/v;->a:Luc/m;

    new-instance v0, Lcom/google/android/gms/internal/auth/j;

    iget-object p1, p1, Luc/m;->a:Ljava/lang/Object;

    check-cast p1, Luc/k;

    iget-object v1, p1, Luc/k;->b:LJb/C;

    iget-object p1, p1, Luc/k;->l:Lcom/google/firebase/messaging/q;

    invoke-direct {v0, v1, p1}, Lcom/google/android/gms/internal/auth/j;-><init>(LJb/C;Lcom/google/firebase/messaging/q;)V

    iput-object v0, p0, Luc/v;->b:Lcom/google/android/gms/internal/auth/j;

    return-void
.end method


# virtual methods
.method public final a(LJb/l;)LJ2/i0;
    .locals 3

    instance-of v0, p1, LJb/H;

    if-eqz v0, :cond_0

    new-instance v0, Luc/x;

    check-cast p1, LJb/H;

    check-cast p1, LMb/D;

    iget-object p1, p1, LMb/D;->f:Lhc/c;

    iget-object p0, p0, Luc/v;->a:Luc/m;

    iget-object v1, p0, Luc/m;->b:Ljava/lang/Object;

    check-cast v1, Lec/g;

    iget-object v2, p0, Luc/m;->d:Ljava/lang/Object;

    check-cast v2, LX4/i;

    iget-object p0, p0, Luc/m;->g:Ljava/lang/Object;

    check-cast p0, Lac/h;

    invoke-direct {v0, p1, v1, v2, p0}, Luc/x;-><init>(Lhc/c;Lec/g;LX4/i;Lac/h;)V

    goto :goto_0

    :cond_0
    instance-of p0, p1, Lwc/i;

    if-eqz p0, :cond_1

    check-cast p1, Lwc/i;

    iget-object v0, p1, Lwc/i;->v:Luc/w;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public final b(Lic/m;ILuc/b;)LKb/h;
    .locals 3

    sget-object v0, Lec/e;->c:Lec/b;

    invoke-virtual {v0, p2}, Lec/b;->c(I)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-nez p2, :cond_0

    sget-object p0, LKb/g;->a:LKb/f;

    return-object p0

    :cond_0
    new-instance p2, Lwc/v;

    iget-object v0, p0, Luc/v;->a:Luc/m;

    iget-object v0, v0, Luc/m;->a:Ljava/lang/Object;

    check-cast v0, Luc/k;

    iget-object v0, v0, Luc/k;->a:Lxc/o;

    new-instance v1, Luc/s;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, p3, v2}, Luc/s;-><init>(Luc/v;Lic/m;Luc/b;I)V

    invoke-direct {p2, v0, v1}, Lwc/v;-><init>(Lxc/o;Lsb/a;)V

    return-object p2
.end method

.method public final c(Lcc/I;Z)LKb/h;
    .locals 3

    sget-object v0, Lec/e;->c:Lec/b;

    iget v1, p1, Lcc/I;->d:I

    invoke-virtual {v0, v1}, Lec/b;->c(I)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object p0, LKb/g;->a:LKb/f;

    return-object p0

    :cond_0
    new-instance v0, Lwc/v;

    iget-object v1, p0, Luc/v;->a:Luc/m;

    iget-object v1, v1, Luc/m;->a:Ljava/lang/Object;

    check-cast v1, Luc/k;

    iget-object v1, v1, Luc/k;->a:Lxc/o;

    new-instance v2, Luc/t;

    invoke-direct {v2, p0, p2, p1}, Luc/t;-><init>(Luc/v;ZLcc/I;)V

    invoke-direct {v0, v1, v2}, Lwc/v;-><init>(Lxc/o;Lsb/a;)V

    return-object v0
.end method

.method public final d(Lcc/n;Z)Lwc/c;
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v12, p1

    iget-object v13, v0, Luc/v;->a:Luc/m;

    iget-object v1, v13, Luc/m;->c:Ljava/lang/Object;

    check-cast v1, LJb/l;

    const-string v2, "null cannot be cast to non-null type org.jetbrains.kotlin.descriptors.ClassDescriptor"

    invoke-static {v1, v2}, Ltb/k;->d(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v14, v1

    check-cast v14, LJb/f;

    new-instance v15, Lwc/c;

    iget v1, v12, Lcc/n;->d:I

    sget-object v11, Luc/b;->FUNCTION:Luc/b;

    invoke-virtual {v0, v12, v1, v11}, Luc/v;->b(Lic/m;ILuc/b;)LKb/h;

    move-result-object v3

    sget-object v5, LJb/c;->DECLARATION:LJb/c;

    const/4 v2, 0x0

    const/16 v16, 0x0

    iget-object v0, v13, Luc/m;->b:Ljava/lang/Object;

    move-object v7, v0

    check-cast v7, Lec/g;

    iget-object v0, v13, Luc/m;->d:Ljava/lang/Object;

    move-object v8, v0

    check-cast v8, LX4/i;

    iget-object v0, v13, Luc/m;->e:Ljava/lang/Object;

    move-object v9, v0

    check-cast v9, Lec/i;

    iget-object v0, v13, Luc/m;->g:Ljava/lang/Object;

    move-object v10, v0

    check-cast v10, Lac/h;

    move-object v0, v15

    move-object v1, v14

    move/from16 v4, p2

    move-object/from16 v6, p1

    move-object/from16 v17, v14

    move-object v14, v11

    move-object/from16 v11, v16

    invoke-direct/range {v0 .. v11}, Lwc/c;-><init>(LJb/f;LJb/k;LKb/h;ZLJb/c;Lcc/n;Lec/g;LX4/i;Lec/i;Lac/h;LJb/S;)V

    sget-object v0, Lfb/v;->a:Lfb/v;

    invoke-static {v13, v15, v0}, Luc/m;->b(Luc/m;LMb/o;Ljava/util/List;)Luc/m;

    move-result-object v0

    iget-object v1, v12, Lcc/n;->e:Ljava/util/List;

    const-string v2, "getValueParameterList(...)"

    invoke-static {v1, v2}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, v0, Luc/m;->i:Ljava/lang/Object;

    check-cast v0, Luc/v;

    invoke-virtual {v0, v1, v12, v14}, Luc/v;->g(Ljava/util/List;Lic/m;Luc/b;)Ljava/util/List;

    move-result-object v0

    sget-object v1, Lec/e;->d:Lec/c;

    iget v2, v12, Lcc/n;->d:I

    invoke-virtual {v1, v2}, Lec/c;->c(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcc/h0;

    invoke-static {v1}, LG5/n2;->b(Lcc/h0;)LJb/p;

    move-result-object v1

    invoke-virtual {v15, v0, v1}, LMb/j;->i1(Ljava/util/List;LJb/p;)V

    invoke-interface/range {v17 .. v17}, LJb/f;->n()Lyc/A;

    move-result-object v0

    invoke-virtual {v15, v0}, LMb/v;->e1(Lyc/A;)V

    invoke-interface/range {v17 .. v17}, LJb/z;->g0()Z

    move-result v0

    iput-boolean v0, v15, LMb/v;->s:Z

    sget-object v0, Lec/e;->o:Lec/b;

    iget v1, v12, Lcc/n;->d:I

    invoke-virtual {v0, v1}, Lec/b;->c(I)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, v15, LMb/v;->w:Z

    return-object v15
.end method

.method public final e(Lcc/A;)Lwc/s;
    .locals 28

    move-object/from16 v0, p0

    move-object/from16 v12, p1

    const-string v1, "proto"

    invoke-static {v12, v1}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget v1, v12, Lcc/A;->c:I

    const/4 v13, 0x1

    and-int/2addr v1, v13

    if-ne v1, v13, :cond_0

    iget v1, v12, Lcc/A;->d:I

    :goto_0
    move v14, v1

    goto :goto_1

    :cond_0
    iget v1, v12, Lcc/A;->e:I

    and-int/lit8 v2, v1, 0x3f

    shr-int/lit8 v1, v1, 0x8

    shl-int/lit8 v1, v1, 0x6

    add-int/2addr v1, v2

    goto :goto_0

    :goto_1
    sget-object v1, Luc/b;->FUNCTION:Luc/b;

    invoke-virtual {v0, v12, v14, v1}, Luc/v;->b(Lic/m;ILuc/b;)LKb/h;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Lcc/A;->n()Z

    move-result v2

    sget-object v15, LKb/g;->a:LKb/f;

    iget-object v11, v0, Luc/v;->a:Luc/m;

    if-nez v2, :cond_2

    iget v2, v12, Lcc/A;->c:I

    const/16 v4, 0x40

    and-int/2addr v2, v4

    if-ne v2, v4, :cond_1

    goto :goto_2

    :cond_1
    move-object v10, v15

    goto :goto_3

    :cond_2
    :goto_2
    new-instance v2, Lwc/a;

    iget-object v4, v11, Luc/m;->a:Ljava/lang/Object;

    check-cast v4, Luc/k;

    iget-object v4, v4, Luc/k;->a:Lxc/o;

    new-instance v5, Luc/s;

    const/4 v6, 0x1

    invoke-direct {v5, v0, v12, v1, v6}, Luc/s;-><init>(Luc/v;Lic/m;Luc/b;I)V

    invoke-direct {v2, v4, v5}, Lwc/a;-><init>(Lxc/o;Lsb/a;)V

    move-object v10, v2

    :goto_3
    iget-object v0, v11, Luc/m;->c:Ljava/lang/Object;

    check-cast v0, LJb/l;

    invoke-static {v0}, Loc/d;->g(LJb/l;)Lhc/c;

    move-result-object v0

    iget v1, v12, Lcc/A;->f:I

    iget-object v2, v11, Luc/m;->b:Ljava/lang/Object;

    check-cast v2, Lec/g;

    invoke-static {v2, v1}, LG5/m2;->c(Lec/g;I)Lhc/f;

    move-result-object v1

    invoke-virtual {v0, v1}, Lhc/c;->a(Lhc/f;)Lhc/c;

    move-result-object v0

    sget-object v1, Luc/A;->a:Lhc/c;

    invoke-virtual {v0, v1}, Lhc/c;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lec/i;->b:Lec/i;

    :goto_4
    move-object v9, v0

    goto :goto_5

    :cond_3
    iget-object v0, v11, Luc/m;->e:Ljava/lang/Object;

    check-cast v0, Lec/i;

    goto :goto_4

    :goto_5
    new-instance v8, Lwc/s;

    iget v0, v12, Lcc/A;->f:I

    invoke-static {v2, v0}, LG5/m2;->c(Lec/g;I)Lhc/f;

    move-result-object v4

    sget-object v0, Lec/e;->p:Lec/c;

    invoke-virtual {v0, v14}, Lec/c;->c(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcc/B;

    invoke-static {v0}, LG5/n2;->c(Lcc/B;)LJb/c;

    move-result-object v5

    const/4 v2, 0x0

    const/16 v16, 0x0

    iget-object v0, v11, Luc/m;->c:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, LJb/l;

    iget-object v0, v11, Luc/m;->b:Ljava/lang/Object;

    move-object v7, v0

    check-cast v7, Lec/g;

    iget-object v0, v11, Luc/m;->d:Ljava/lang/Object;

    move-object/from16 v17, v0

    check-cast v17, LX4/i;

    iget-object v0, v11, Luc/m;->g:Ljava/lang/Object;

    move-object/from16 v18, v0

    check-cast v18, Lac/h;

    move-object v0, v8

    move-object/from16 v6, p1

    move-object v13, v8

    move-object/from16 v8, v17

    move-object/from16 v26, v10

    move-object/from16 v10, v18

    move/from16 v27, v14

    move-object v14, v11

    move-object/from16 v11, v16

    invoke-direct/range {v0 .. v11}, Lwc/s;-><init>(LJb/l;LMb/M;LKb/h;Lhc/f;LJb/c;Lcc/A;Lec/g;LX4/i;Lec/i;Lac/h;LJb/S;)V

    iget-object v0, v12, Lcc/A;->i:Ljava/util/List;

    const-string v1, "getTypeParameterList(...)"

    invoke-static {v0, v1}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v14, v13, v0}, Luc/m;->b(Luc/m;LMb/o;Ljava/util/List;)Luc/m;

    move-result-object v0

    iget-object v1, v14, Luc/m;->d:Ljava/lang/Object;

    check-cast v1, LX4/i;

    invoke-static {v12, v1}, LG5/Q2;->f(Lcc/A;LX4/i;)Lcc/T;

    move-result-object v2

    const/4 v3, 0x0

    iget-object v4, v0, Luc/m;->h:Ljava/lang/Object;

    check-cast v4, Luc/E;

    if-eqz v2, :cond_4

    invoke-virtual {v4, v2}, Luc/E;->g(Lcc/T;)Lyc/w;

    move-result-object v2

    if-eqz v2, :cond_4

    move-object/from16 v5, v26

    invoke-static {v13, v2, v5}, Lkc/p;->k(LJb/b;Lyc/w;LKb/h;)LMb/w;

    move-result-object v2

    move-object/from16 v17, v2

    goto :goto_6

    :cond_4
    move-object/from16 v17, v3

    :goto_6
    iget-object v2, v14, Luc/m;->c:Ljava/lang/Object;

    check-cast v2, LJb/l;

    instance-of v5, v2, LJb/f;

    if-eqz v5, :cond_5

    check-cast v2, LJb/f;

    goto :goto_7

    :cond_5
    move-object v2, v3

    :goto_7
    if-eqz v2, :cond_6

    invoke-interface {v2}, LJb/f;->C0()LMb/w;

    move-result-object v2

    move-object/from16 v18, v2

    goto :goto_8

    :cond_6
    move-object/from16 v18, v3

    :goto_8
    const-string v2, "typeTable"

    invoke-static {v1, v2}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v5, v12, Lcc/A;->l:Ljava/util/List;

    move-object v6, v5

    check-cast v6, Ljava/util/Collection;

    invoke-interface {v6}, Ljava/util/Collection;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_7

    goto :goto_9

    :cond_7
    move-object v5, v3

    :goto_9
    if-nez v5, :cond_9

    iget-object v5, v12, Lcc/A;->m:Ljava/util/List;

    const-string v6, "getContextReceiverTypeIdList(...)"

    invoke-static {v5, v6}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v5, Ljava/lang/Iterable;

    new-instance v6, Ljava/util/ArrayList;

    const/16 v7, 0xa

    invoke-static {v5, v7}, Lfb/p;->m(Ljava/lang/Iterable;I)I

    move-result v7

    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_a
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_8

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-static {v7}, Ltb/k;->c(Ljava/lang/Object;)V

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v1, v7}, LX4/i;->f(I)Lcc/T;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_a

    :cond_8
    move-object v5, v6

    :cond_9
    check-cast v5, Ljava/lang/Iterable;

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    const/4 v7, 0x0

    :goto_b
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_c

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    add-int/lit8 v9, v7, 0x1

    if-ltz v7, :cond_b

    check-cast v8, Lcc/T;

    invoke-virtual {v4, v8}, Luc/E;->g(Lcc/T;)Lyc/w;

    move-result-object v8

    invoke-static {v13, v8, v3, v15, v7}, Lkc/p;->e(LJb/b;Lyc/w;Lhc/f;LKb/h;I)LMb/w;

    move-result-object v7

    if-eqz v7, :cond_a

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_a
    move v7, v9

    goto :goto_b

    :cond_b
    invoke-static {}, Lfb/o;->l()V

    throw v3

    :cond_c
    invoke-virtual {v4}, Luc/E;->b()Ljava/util/List;

    move-result-object v20

    iget-object v3, v12, Lcc/A;->o:Ljava/util/List;

    const-string v5, "getValueParameterList(...)"

    invoke-static {v3, v5}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v5, Luc/b;->FUNCTION:Luc/b;

    iget-object v0, v0, Luc/m;->i:Ljava/lang/Object;

    check-cast v0, Luc/v;

    invoke-virtual {v0, v3, v12, v5}, Luc/v;->g(Ljava/util/List;Lic/m;Luc/b;)Ljava/util/List;

    move-result-object v21

    invoke-static {v12, v1}, LG5/Q2;->g(Lcc/A;LX4/i;)Lcc/T;

    move-result-object v0

    invoke-virtual {v4, v0}, Luc/E;->g(Lcc/T;)Lyc/w;

    move-result-object v22

    sget-object v0, Lec/e;->e:Lec/c;

    move/from16 v3, v27

    invoke-virtual {v0, v3}, Lec/c;->c(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcc/C;

    invoke-static {v0}, Luc/l;->f(Lcc/C;)LJb/B;

    move-result-object v23

    sget-object v0, Lec/e;->d:Lec/c;

    invoke-virtual {v0, v3}, Lec/c;->c(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcc/h0;

    invoke-static {v0}, LG5/n2;->b(Lcc/h0;)LJb/p;

    move-result-object v24

    sget-object v25, Lfb/w;->a:Lfb/w;

    move-object/from16 v16, v13

    move-object/from16 v19, v6

    invoke-virtual/range {v16 .. v25}, LMb/M;->i1(LMb/w;LMb/w;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lyc/w;LJb/B;LJb/p;Lfb/w;)LMb/M;

    sget-object v0, Lec/e;->q:Lec/b;

    invoke-virtual {v0, v3}, Lec/b;->c(I)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, v13, LMb/v;->n:Z

    sget-object v0, Lec/e;->r:Lec/b;

    invoke-virtual {v0, v3}, Lec/b;->c(I)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, v13, LMb/v;->o:Z

    sget-object v0, Lec/e;->u:Lec/b;

    invoke-virtual {v0, v3}, Lec/b;->c(I)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, v13, LMb/v;->p:Z

    sget-object v0, Lec/e;->s:Lec/b;

    invoke-virtual {v0, v3}, Lec/b;->c(I)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, v13, LMb/v;->q:Z

    sget-object v0, Lec/e;->t:Lec/b;

    invoke-virtual {v0, v3}, Lec/b;->c(I)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, v13, LMb/v;->r:Z

    sget-object v0, Lec/e;->v:Lec/b;

    invoke-virtual {v0, v3}, Lec/b;->c(I)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, v13, LMb/v;->v:Z

    sget-object v0, Lec/e;->w:Lec/b;

    invoke-virtual {v0, v3}, Lec/b;->c(I)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, v13, LMb/v;->s:Z

    sget-object v0, Lec/e;->x:Lec/b;

    invoke-virtual {v0, v3}, Lec/b;->c(I)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v3, 0x1

    xor-int/2addr v0, v3

    iput-boolean v0, v13, LMb/v;->w:Z

    iget-object v0, v14, Luc/m;->a:Ljava/lang/Object;

    check-cast v0, Luc/k;

    iget-object v0, v0, Luc/k;->m:Luc/l;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1, v2}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v13
.end method

.method public final f(Lcc/I;)Lwc/r;
    .locals 32

    move-object/from16 v0, p0

    move-object/from16 v15, p1

    const-string v1, "proto"

    invoke-static {v15, v1}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget v1, v15, Lcc/I;->c:I

    const/4 v14, 0x1

    and-int/2addr v1, v14

    const/16 v20, 0x6

    if-ne v1, v14, :cond_0

    iget v1, v15, Lcc/I;->d:I

    :goto_0
    move v13, v1

    goto :goto_1

    :cond_0
    iget v1, v15, Lcc/I;->e:I

    and-int/lit8 v2, v1, 0x3f

    shr-int/lit8 v1, v1, 0x8

    shl-int/lit8 v1, v1, 0x6

    add-int/2addr v1, v2

    goto :goto_0

    :goto_1
    new-instance v12, Lwc/r;

    iget-object v11, v0, Luc/v;->a:Luc/m;

    iget-object v1, v11, Luc/m;->c:Ljava/lang/Object;

    move-object v2, v1

    check-cast v2, LJb/l;

    sget-object v1, Luc/b;->PROPERTY:Luc/b;

    invoke-virtual {v0, v15, v13, v1}, Luc/v;->b(Lic/m;ILuc/b;)LKb/h;

    move-result-object v4

    sget-object v1, Lec/e;->e:Lec/c;

    invoke-virtual {v1, v13}, Lec/c;->c(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcc/C;

    invoke-static {v1}, Luc/l;->f(Lcc/C;)LJb/B;

    move-result-object v5

    sget-object v1, Lec/e;->d:Lec/c;

    invoke-virtual {v1, v13}, Lec/c;->c(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcc/h0;

    invoke-static {v1}, LG5/n2;->b(Lcc/h0;)LJb/p;

    move-result-object v6

    sget-object v1, Lec/e;->y:Lec/b;

    invoke-virtual {v1, v13}, Lec/b;->c(I)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    iget v1, v15, Lcc/I;->f:I

    iget-object v3, v11, Luc/m;->b:Ljava/lang/Object;

    check-cast v3, Lec/g;

    invoke-static {v3, v1}, LG5/m2;->c(Lec/g;I)Lhc/f;

    move-result-object v8

    sget-object v1, Lec/e;->p:Lec/c;

    invoke-virtual {v1, v13}, Lec/c;->c(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcc/B;

    invoke-static {v1}, LG5/n2;->c(Lcc/B;)LJb/c;

    move-result-object v9

    sget-object v1, Lec/e;->C:Lec/b;

    invoke-virtual {v1, v13}, Lec/b;->c(I)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    sget-object v1, Lec/e;->B:Lec/b;

    invoke-virtual {v1, v13}, Lec/b;->c(I)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v21

    sget-object v1, Lec/e;->E:Lec/b;

    invoke-virtual {v1, v13}, Lec/b;->c(I)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v22

    sget-object v1, Lec/e;->F:Lec/b;

    invoke-virtual {v1, v13}, Lec/b;->c(I)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v23

    sget-object v1, Lec/e;->G:Lec/b;

    invoke-virtual {v1, v13}, Lec/b;->c(I)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v24

    const/4 v3, 0x0

    iget-object v1, v11, Luc/m;->b:Ljava/lang/Object;

    move-object/from16 v16, v1

    check-cast v16, Lec/g;

    iget-object v1, v11, Luc/m;->d:Ljava/lang/Object;

    move-object/from16 v17, v1

    check-cast v17, LX4/i;

    iget-object v1, v11, Luc/m;->e:Ljava/lang/Object;

    move-object/from16 v18, v1

    check-cast v18, Lec/i;

    iget-object v1, v11, Luc/m;->g:Ljava/lang/Object;

    move-object/from16 v19, v1

    check-cast v19, Lac/h;

    move-object v1, v12

    move-object/from16 v25, v11

    move/from16 v11, v21

    move-object/from16 v26, v12

    move/from16 v12, v22

    move/from16 v27, v13

    move/from16 v13, v23

    move/from16 v14, v24

    move-object v0, v15

    move-object/from16 v15, p1

    invoke-direct/range {v1 .. v19}, Lwc/r;-><init>(LJb/l;LJb/P;LKb/h;LJb/B;LJb/p;ZLhc/f;LJb/c;ZZZZZLcc/I;Lec/g;LX4/i;Lec/i;Lac/h;)V

    iget-object v1, v0, Lcc/I;->i:Ljava/util/List;

    const-string v2, "getTypeParameterList(...)"

    invoke-static {v1, v2}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v13, v25

    move-object/from16 v12, v26

    invoke-static {v13, v12, v1}, Luc/m;->b(Luc/m;LMb/o;Ljava/util/List;)Luc/m;

    move-result-object v14

    sget-object v1, Lec/e;->z:Lec/b;

    move/from16 v15, v27

    invoke-virtual {v1, v15}, Lec/b;->c(I)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    sget-object v1, LKb/g;->a:LKb/f;

    const/16 v2, 0x40

    if-eqz v7, :cond_1

    invoke-virtual/range {p1 .. p1}, Lcc/I;->n()Z

    move-result v3

    if-nez v3, :cond_2

    iget v3, v0, Lcc/I;->c:I

    and-int/2addr v3, v2

    if-ne v3, v2, :cond_1

    goto :goto_2

    :cond_1
    move-object v11, v0

    move-object/from16 v0, p0

    goto :goto_3

    :cond_2
    :goto_2
    sget-object v3, Luc/b;->PROPERTY_GETTER:Luc/b;

    new-instance v4, Lwc/a;

    iget-object v5, v13, Luc/m;->a:Ljava/lang/Object;

    check-cast v5, Luc/k;

    iget-object v5, v5, Luc/k;->a:Lxc/o;

    new-instance v6, Luc/s;

    const/4 v8, 0x1

    move-object v11, v0

    move-object/from16 v0, p0

    invoke-direct {v6, v0, v11, v3, v8}, Luc/s;-><init>(Luc/v;Lic/m;Luc/b;I)V

    invoke-direct {v4, v5, v6}, Lwc/a;-><init>(Lxc/o;Lsb/a;)V

    goto :goto_4

    :goto_3
    move-object v4, v1

    :goto_4
    iget-object v3, v13, Luc/m;->d:Ljava/lang/Object;

    check-cast v3, LX4/i;

    invoke-static {v11, v3}, LG5/Q2;->h(Lcc/I;LX4/i;)Lcc/T;

    move-result-object v5

    iget-object v6, v14, Luc/m;->h:Ljava/lang/Object;

    check-cast v6, Luc/E;

    invoke-virtual {v6, v5}, Luc/E;->g(Lcc/T;)Lyc/w;

    move-result-object v5

    invoke-virtual {v6}, Luc/E;->b()Ljava/util/List;

    move-result-object v8

    iget-object v9, v13, Luc/m;->c:Ljava/lang/Object;

    check-cast v9, LJb/l;

    instance-of v10, v9, LJb/f;

    if-eqz v10, :cond_3

    check-cast v9, LJb/f;

    goto :goto_5

    :cond_3
    const/4 v9, 0x0

    :goto_5
    if-eqz v9, :cond_4

    invoke-interface {v9}, LJb/f;->C0()LMb/w;

    move-result-object v9

    goto :goto_6

    :cond_4
    const/4 v9, 0x0

    :goto_6
    const-string v10, "typeTable"

    invoke-static {v3, v10}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Lcc/I;->n()Z

    move-result v17

    if-eqz v17, :cond_5

    iget-object v2, v11, Lcc/I;->j:Lcc/T;

    move-object/from16 v25, v13

    goto :goto_7

    :cond_5
    iget v2, v11, Lcc/I;->c:I

    move-object/from16 v25, v13

    const/16 v13, 0x40

    and-int/2addr v2, v13

    if-ne v2, v13, :cond_6

    iget v2, v11, Lcc/I;->k:I

    invoke-virtual {v3, v2}, LX4/i;->f(I)Lcc/T;

    move-result-object v2

    goto :goto_7

    :cond_6
    const/4 v2, 0x0

    :goto_7
    if-eqz v2, :cond_7

    invoke-virtual {v6, v2}, Luc/E;->g(Lcc/T;)Lyc/w;

    move-result-object v2

    if-eqz v2, :cond_7

    invoke-static {v12, v2, v4}, Lkc/p;->k(LJb/b;Lyc/w;LKb/h;)LMb/w;

    move-result-object v2

    move-object v13, v2

    goto :goto_8

    :cond_7
    const/4 v13, 0x0

    :goto_8
    invoke-static {v3, v10}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, v11, Lcc/I;->l:Ljava/util/List;

    move-object v4, v2

    check-cast v4, Ljava/util/Collection;

    invoke-interface {v4}, Ljava/util/Collection;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_8

    goto :goto_9

    :cond_8
    const/4 v2, 0x0

    :goto_9
    const/16 v10, 0xa

    if-nez v2, :cond_a

    iget-object v2, v11, Lcc/I;->m:Ljava/util/List;

    const-string v4, "getContextReceiverTypeIdList(...)"

    invoke-static {v2, v4}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Ljava/lang/Iterable;

    new-instance v4, Ljava/util/ArrayList;

    move-object/from16 v16, v14

    invoke-static {v2, v10}, Lfb/p;->m(Ljava/lang/Iterable;I)I

    move-result v14

    invoke-direct {v4, v14}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_9

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    invoke-static {v14}, Ltb/k;->c(Ljava/lang/Object;)V

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    invoke-virtual {v3, v14}, LX4/i;->f(I)Lcc/T;

    move-result-object v14

    invoke-virtual {v4, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_a

    :cond_9
    move-object v2, v4

    goto :goto_b

    :cond_a
    move-object/from16 v16, v14

    :goto_b
    check-cast v2, Ljava/lang/Iterable;

    new-instance v14, Ljava/util/ArrayList;

    invoke-static {v2, v10}, Lfb/p;->m(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v14, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x0

    :goto_c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    add-int/lit8 v19, v3, 0x1

    if-ltz v3, :cond_b

    move-object/from16 v4, v18

    check-cast v4, Lcc/T;

    invoke-virtual {v6, v4}, Luc/E;->g(Lcc/T;)Lyc/w;

    move-result-object v4

    const/4 v10, 0x0

    invoke-static {v12, v4, v10, v1, v3}, Lkc/p;->e(LJb/b;Lyc/w;Lhc/f;LKb/h;I)LMb/w;

    move-result-object v3

    invoke-virtual {v14, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move/from16 v3, v19

    const/16 v10, 0xa

    goto :goto_c

    :cond_b
    const/4 v10, 0x0

    invoke-static {}, Lfb/o;->l()V

    throw v10

    :cond_c
    const/4 v10, 0x0

    move-object v1, v12

    move-object v2, v5

    move-object v3, v8

    const/4 v8, 0x0

    move-object v4, v9

    move-object v5, v13

    move-object v6, v14

    invoke-virtual/range {v1 .. v6}, LMb/J;->b1(Lyc/w;Ljava/util/List;LMb/w;LMb/w;Ljava/util/List;)V

    sget-object v1, Lec/e;->c:Lec/b;

    invoke-virtual {v1, v15}, Lec/b;->c(I)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    sget-object v13, Lec/e;->d:Lec/c;

    invoke-virtual {v13, v15}, Lec/c;->c(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcc/h0;

    sget-object v14, Lec/e;->e:Lec/c;

    invoke-virtual {v14, v15}, Lec/c;->c(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcc/C;

    if-eqz v3, :cond_1a

    if-eqz v4, :cond_19

    if-eqz v2, :cond_d

    iget v1, v1, Lec/d;->a:I

    const/4 v9, 0x1

    shl-int v1, v9, v1

    goto :goto_d

    :cond_d
    const/4 v9, 0x1

    move v1, v8

    :goto_d
    invoke-interface {v4}, Lic/q;->getNumber()I

    move-result v2

    iget v4, v14, Lec/d;->a:I

    shl-int/2addr v2, v4

    or-int/2addr v1, v2

    invoke-interface {v3}, Lic/q;->getNumber()I

    move-result v2

    iget v3, v13, Lec/d;->a:I

    shl-int/2addr v2, v3

    or-int v17, v1, v2

    sget-object v6, Lec/e;->K:Lec/b;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v5, Lec/e;->L:Lec/b;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v4, Lec/e;->M:Lec/b;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v18, LJb/S;->L:LJb/T;

    if-eqz v7, :cond_10

    iget v1, v11, Lcc/I;->c:I

    const/16 v2, 0x100

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_e

    iget v1, v11, Lcc/I;->p:I

    goto :goto_e

    :cond_e
    move/from16 v1, v17

    :goto_e
    invoke-virtual {v6, v1}, Lec/b;->c(I)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v5, v1}, Lec/b;->c(I)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    invoke-virtual {v4, v1}, Lec/b;->c(I)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v19

    sget-object v3, Luc/b;->PROPERTY_GETTER:Luc/b;

    invoke-virtual {v0, v11, v1, v3}, Luc/v;->b(Lic/m;ILuc/b;)LKb/h;

    move-result-object v3

    if-eqz v2, :cond_f

    new-instance v21, LMb/K;

    invoke-virtual {v14, v1}, Lec/c;->c(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcc/C;

    invoke-static/range {v22 .. v22}, Luc/l;->f(Lcc/C;)LJb/B;

    move-result-object v22

    invoke-virtual {v13, v1}, Lec/c;->c(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcc/h0;

    invoke-static {v1}, LG5/n2;->b(Lcc/h0;)LJb/p;

    move-result-object v23

    xor-int/lit8 v24, v2, 0x1

    invoke-virtual {v12}, LMb/J;->d()LJb/c;

    move-result-object v26

    const/16 v27, 0x0

    move-object/from16 v1, v21

    move-object v2, v12

    move-object/from16 v28, v4

    move-object/from16 v4, v22

    move-object/from16 v29, v5

    move-object/from16 v5, v23

    move-object/from16 v30, v6

    move/from16 v6, v24

    move/from16 v8, v19

    move-object/from16 v9, v26

    move-object/from16 v10, v27

    move-object/from16 v19, v13

    move-object v13, v11

    move-object/from16 v11, v18

    invoke-direct/range {v1 .. v11}, LMb/K;-><init>(LJb/P;LKb/h;LJb/B;LJb/p;ZZZLJb/c;LMb/K;LJb/S;)V

    move-object/from16 v2, v21

    goto :goto_f

    :cond_f
    move-object/from16 v28, v4

    move-object/from16 v29, v5

    move-object/from16 v30, v6

    move-object/from16 v19, v13

    move-object v13, v11

    invoke-static {v12, v3}, Lkc/p;->f(LJb/P;LKb/h;)LMb/K;

    move-result-object v1

    move-object v2, v1

    :goto_f
    invoke-virtual {v12}, LMb/J;->p()Lyc/w;

    move-result-object v1

    invoke-virtual {v2, v1}, LMb/K;->X0(Lyc/w;)V

    move-object v11, v2

    goto :goto_10

    :cond_10
    move-object/from16 v28, v4

    move-object/from16 v29, v5

    move-object/from16 v30, v6

    move-object/from16 v19, v13

    move-object v13, v11

    const/4 v11, 0x0

    :goto_10
    sget-object v1, Lec/e;->A:Lec/b;

    invoke-virtual {v1, v15}, Lec/b;->c(I)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_14

    iget v1, v13, Lcc/I;->c:I

    const/16 v2, 0x200

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_11

    iget v1, v13, Lcc/I;->q:I

    :goto_11
    move-object/from16 v2, v30

    goto :goto_12

    :cond_11
    move/from16 v1, v17

    goto :goto_11

    :goto_12
    invoke-virtual {v2, v1}, Lec/b;->c(I)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    move-object/from16 v3, v29

    invoke-virtual {v3, v1}, Lec/b;->c(I)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    move-object/from16 v3, v28

    invoke-virtual {v3, v1}, Lec/b;->c(I)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    sget-object v10, Luc/b;->PROPERTY_SETTER:Luc/b;

    invoke-virtual {v0, v13, v1, v10}, Luc/v;->b(Lic/m;ILuc/b;)LKb/h;

    move-result-object v3

    if-eqz v2, :cond_13

    new-instance v9, LMb/L;

    invoke-virtual {v14, v1}, Lec/c;->c(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcc/C;

    invoke-static {v4}, Luc/l;->f(Lcc/C;)LJb/B;

    move-result-object v4

    move-object/from16 v5, v19

    invoke-virtual {v5, v1}, Lec/c;->c(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcc/h0;

    invoke-static {v1}, LG5/n2;->b(Lcc/h0;)LJb/p;

    move-result-object v5

    const/4 v14, 0x1

    xor-int/lit8 v6, v2, 0x1

    invoke-virtual {v12}, LMb/J;->d()LJb/c;

    move-result-object v17

    const/16 v19, 0x0

    move-object v1, v9

    move-object v2, v12

    move-object v14, v9

    move-object/from16 v9, v17

    move-object v0, v10

    move-object/from16 v10, v19

    move-object/from16 v31, v11

    move-object/from16 v11, v18

    invoke-direct/range {v1 .. v11}, LMb/L;-><init>(LJb/P;LKb/h;LJb/B;LJb/p;ZZZLJb/c;LMb/L;LJb/S;)V

    sget-object v1, Lfb/v;->a:Lfb/v;

    move-object/from16 v2, v16

    invoke-static {v2, v14, v1}, Luc/m;->b(Luc/m;LMb/o;Ljava/util/List;)Luc/m;

    move-result-object v1

    iget-object v2, v13, Lcc/I;->o:Lcc/b0;

    invoke-static {v2}, LG5/o3;->d(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    iget-object v1, v1, Luc/m;->i:Ljava/lang/Object;

    check-cast v1, Luc/v;

    invoke-virtual {v1, v2, v13, v0}, Luc/v;->g(Ljava/util/List;Lic/m;Luc/b;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lfb/n;->U(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LMb/T;

    if-eqz v0, :cond_12

    iput-object v0, v14, LMb/L;->n:LMb/T;

    move-object v2, v14

    const/4 v0, 0x0

    goto :goto_13

    :cond_12
    invoke-static/range {v20 .. v20}, LMb/L;->D0(I)V

    const/4 v0, 0x0

    throw v0

    :cond_13
    move-object/from16 v31, v11

    const/4 v0, 0x0

    invoke-static {v12, v3}, Lkc/p;->g(LJb/P;LKb/h;)LMb/L;

    move-result-object v2

    goto :goto_13

    :cond_14
    move-object/from16 v31, v11

    const/4 v0, 0x0

    move-object v2, v0

    :goto_13
    sget-object v1, Lec/e;->D:Lec/b;

    invoke-virtual {v1, v15}, Lec/b;->c(I)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_15

    new-instance v1, Luc/r;

    const/4 v3, 0x0

    move-object/from16 v4, p0

    invoke-direct {v1, v4, v13, v12, v3}, Luc/r;-><init>(Luc/v;Lcc/I;Lwc/r;I)V

    invoke-virtual {v12, v0, v1}, LMb/J;->Z0(Lxc/h;Lsb/a;)V

    :goto_14
    move-object/from16 v1, v25

    goto :goto_15

    :cond_15
    move-object/from16 v4, p0

    goto :goto_14

    :goto_15
    iget-object v1, v1, Luc/m;->c:Ljava/lang/Object;

    check-cast v1, LJb/l;

    instance-of v3, v1, LJb/f;

    if-eqz v3, :cond_16

    check-cast v1, LJb/f;

    goto :goto_16

    :cond_16
    move-object v1, v0

    :goto_16
    if-eqz v1, :cond_17

    invoke-interface {v1}, LJb/f;->d()LJb/g;

    move-result-object v1

    goto :goto_17

    :cond_17
    move-object v1, v0

    :goto_17
    sget-object v3, LJb/g;->ANNOTATION_CLASS:LJb/g;

    if-ne v1, v3, :cond_18

    new-instance v1, Luc/r;

    const/4 v3, 0x1

    invoke-direct {v1, v4, v13, v12, v3}, Luc/r;-><init>(Luc/v;Lcc/I;Lwc/r;I)V

    invoke-virtual {v12, v0, v1}, LMb/J;->Z0(Lxc/h;Lsb/a;)V

    :cond_18
    new-instance v0, LMb/t;

    const/4 v1, 0x0

    invoke-virtual {v4, v13, v1}, Luc/v;->c(Lcc/I;Z)LKb/h;

    move-result-object v1

    invoke-direct {v0, v1}, LF3/f;-><init>(LKb/h;)V

    new-instance v1, LMb/t;

    const/4 v3, 0x1

    invoke-virtual {v4, v13, v3}, Luc/v;->c(Lcc/I;Z)LKb/h;

    move-result-object v3

    invoke-direct {v1, v3}, LF3/f;-><init>(LKb/h;)V

    move-object/from16 v3, v31

    invoke-virtual {v12, v3, v2, v0, v1}, LMb/J;->Y0(LMb/K;LMb/L;LMb/t;LMb/t;)V

    return-object v12

    :cond_19
    move-object v0, v10

    const/16 v1, 0xb

    invoke-static {v1}, Lec/e;->a(I)V

    throw v0

    :cond_1a
    move-object v0, v10

    const/16 v1, 0xa

    invoke-static {v1}, Lec/e;->a(I)V

    throw v0
.end method

.method public final g(Ljava/util/List;Lic/m;Luc/b;)Ljava/util/List;
    .locals 26

    move-object/from16 v7, p0

    iget-object v8, v7, Luc/v;->a:Luc/m;

    iget-object v0, v8, Luc/m;->c:Ljava/lang/Object;

    check-cast v0, LJb/l;

    const-string v1, "null cannot be cast to non-null type org.jetbrains.kotlin.descriptors.CallableDescriptor"

    invoke-static {v0, v1}, Ltb/k;->d(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v21, v0

    check-cast v21, LJb/b;

    invoke-interface/range {v21 .. v21}, LJb/l;->k()LJb/l;

    move-result-object v0

    const-string v1, "getContainingDeclaration(...)"

    invoke-static {v0, v1}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Luc/v;->a(LJb/l;)LJ2/i0;

    move-result-object v22

    move-object/from16 v0, p1

    check-cast v0, Ljava/lang/Iterable;

    new-instance v15, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {v0, v1}, Lfb/p;->m(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v15, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v23

    const/16 v24, 0x0

    move/from16 v12, v24

    :goto_0
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    add-int/lit8 v25, v12, 0x1

    if-ltz v12, :cond_5

    move-object v10, v0

    check-cast v10, Lcc/b0;

    iget v0, v10, Lcc/b0;->c:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    iget v0, v10, Lcc/b0;->d:I

    move v11, v0

    goto :goto_1

    :cond_0
    move/from16 v11, v24

    :goto_1
    if-eqz v22, :cond_1

    sget-object v0, Lec/e;->c:Lec/b;

    invoke-virtual {v0, v11}, Lec/b;->c(I)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v13, Lwc/v;

    iget-object v0, v8, Luc/m;->a:Ljava/lang/Object;

    check-cast v0, Luc/k;

    iget-object v14, v0, Luc/k;->a:Lxc/o;

    new-instance v6, Luc/u;

    move-object v0, v6

    move-object/from16 v1, p0

    move-object/from16 v2, v22

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move v5, v12

    move-object v9, v6

    move-object v6, v10

    invoke-direct/range {v0 .. v6}, Luc/u;-><init>(Luc/v;LJ2/i0;Lic/m;Luc/b;ILcc/b0;)V

    invoke-direct {v13, v14, v9}, Lwc/v;-><init>(Lxc/o;Lsb/a;)V

    goto :goto_2

    :cond_1
    sget-object v0, LKb/g;->a:LKb/f;

    move-object v13, v0

    :goto_2
    iget v0, v10, Lcc/b0;->e:I

    iget-object v1, v8, Luc/m;->b:Ljava/lang/Object;

    check-cast v1, Lec/g;

    invoke-static {v1, v0}, LG5/m2;->c(Lec/g;I)Lhc/f;

    move-result-object v14

    iget-object v0, v8, Luc/m;->d:Ljava/lang/Object;

    check-cast v0, LX4/i;

    invoke-static {v10, v0}, LG5/Q2;->i(Lcc/b0;LX4/i;)Lcc/T;

    move-result-object v1

    iget-object v2, v8, Luc/m;->h:Ljava/lang/Object;

    check-cast v2, Luc/E;

    invoke-virtual {v2, v1}, Luc/E;->g(Lcc/T;)Lyc/w;

    move-result-object v1

    sget-object v3, Lec/e;->H:Lec/b;

    invoke-virtual {v3, v11}, Lec/b;->c(I)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v16

    sget-object v3, Lec/e;->I:Lec/b;

    invoke-virtual {v3, v11}, Lec/b;->c(I)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v17

    sget-object v3, Lec/e;->J:Lec/b;

    invoke-virtual {v3, v11}, Lec/b;->c(I)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v18

    const-string v3, "typeTable"

    invoke-static {v0, v3}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget v3, v10, Lcc/b0;->c:I

    and-int/lit8 v4, v3, 0x10

    const/16 v5, 0x10

    if-ne v4, v5, :cond_2

    iget-object v0, v10, Lcc/b0;->h:Lcc/T;

    goto :goto_3

    :cond_2
    and-int/lit8 v3, v3, 0x20

    const/16 v4, 0x20

    if-ne v3, v4, :cond_3

    iget v3, v10, Lcc/b0;->i:I

    invoke-virtual {v0, v3}, LX4/i;->f(I)Lcc/T;

    move-result-object v0

    goto :goto_3

    :cond_3
    const/4 v0, 0x0

    :goto_3
    if-eqz v0, :cond_4

    invoke-virtual {v2, v0}, Luc/E;->g(Lcc/T;)Lyc/w;

    move-result-object v0

    move-object/from16 v19, v0

    goto :goto_4

    :cond_4
    const/16 v19, 0x0

    :goto_4
    sget-object v20, LJb/S;->L:LJb/T;

    new-instance v0, LMb/T;

    const/4 v11, 0x0

    move-object v9, v0

    move-object/from16 v10, v21

    move-object v2, v15

    move-object v15, v1

    invoke-direct/range {v9 .. v20}, LMb/T;-><init>(LJb/b;LMb/T;ILKb/h;Lhc/f;Lyc/w;ZZZLyc/w;LJb/S;)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v15, v2

    move/from16 v12, v25

    goto/16 :goto_0

    :cond_5
    invoke-static {}, Lfb/o;->l()V

    const/4 v0, 0x0

    throw v0

    :cond_6
    move-object v2, v15

    invoke-static {v2}, Lfb/n;->g0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
