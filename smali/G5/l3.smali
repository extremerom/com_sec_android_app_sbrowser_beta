.class public abstract LG5/l3;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(III)V
    .locals 4

    const-string v0, "fromIndex: "

    if-ltz p0, :cond_1

    if-gt p1, p2, :cond_1

    if-gt p0, p1, :cond_0

    return-void

    :cond_0
    new-instance p2, Ljava/lang/IllegalArgumentException;

    const-string v1, " > toIndex: "

    invoke-static {p0, v0, p1, v1}, Lcom/sec/android/app/sbrowser/autofill/password/k;->j(ILjava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_1
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    const-string v2, ", toIndex: "

    const-string v3, ", size: "

    invoke-static {p0, p1, v0, v2, v3}, Lcom/sec/android/app/sbrowser/autofill/password/k;->l(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static b(LHb/c;Z)LHb/g;
    .locals 20

    move-object/from16 v0, p0

    const-string v1, "functionClass"

    invoke-static {v0, v1}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, LHb/g;

    sget-object v2, LJb/c;->DECLARATION:LJb/c;

    const/4 v3, 0x0

    move/from16 v4, p1

    invoke-direct {v1, v0, v3, v2, v4}, LHb/g;-><init>(LJb/l;LHb/g;LJb/c;Z)V

    invoke-virtual/range {p0 .. p0}, LMb/c;->C0()LMb/w;

    move-result-object v14

    sget-object v15, Lfb/v;->a:Lfb/v;

    iget-object v0, v0, LHb/c;->k:Ljava/util/List;

    move-object v2, v0

    check-cast v2, Ljava/lang/Iterable;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v5, v4

    check-cast v5, LJb/W;

    invoke-interface {v5}, LJb/W;->A()Lyc/e0;

    move-result-object v5

    sget-object v6, Lyc/e0;->IN_VARIANCE:Lyc/e0;

    if-ne v5, v6, :cond_0

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-static {v3}, Lfb/n;->m0(Ljava/lang/Iterable;)LJc/q;

    move-result-object v2

    new-instance v13, Ljava/util/ArrayList;

    const/16 v3, 0xa

    invoke-static {v2, v3}, Lfb/p;->m(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v13, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v2}, LJc/q;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :goto_1
    move-object/from16 v2, v16

    check-cast v2, LJc/c;

    iget-object v3, v2, LJc/c;->b:Ljava/util/Iterator;

    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v2}, LJc/c;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lfb/z;

    iget v5, v2, Lfb/z;->a:I

    iget-object v2, v2, Lfb/z;->b:Ljava/lang/Object;

    check-cast v2, LJb/W;

    invoke-interface {v2}, LJb/l;->getName()Lhc/f;

    move-result-object v3

    invoke-virtual {v3}, Lhc/f;->c()Ljava/lang/String;

    move-result-object v3

    const-string v4, "asString(...)"

    invoke-static {v3, v4}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "T"

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v3, "instance"

    goto :goto_2

    :cond_1
    const-string v4, "E"

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v3, "receiver"

    goto :goto_2

    :cond_2
    sget-object v4, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v3, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "toLowerCase(...)"

    invoke-static {v3, v4}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_2
    new-instance v12, LMb/T;

    sget-object v6, LKb/g;->a:LKb/f;

    invoke-static {v3}, Lhc/f;->f(Ljava/lang/String;)Lhc/f;

    move-result-object v7

    invoke-interface {v2}, LJb/i;->n()Lyc/A;

    move-result-object v8

    const-string v2, "getDefaultType(...)"

    invoke-static {v8, v2}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v17, LJb/S;->L:LJb/T;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v4, 0x0

    const/4 v11, 0x0

    const/16 v18, 0x0

    move-object v2, v12

    move-object v3, v1

    move-object/from16 v19, v12

    move-object/from16 v12, v18

    move-object/from16 p1, v15

    move-object v15, v13

    move-object/from16 v13, v17

    invoke-direct/range {v2 .. v13}, LMb/T;-><init>(LJb/b;LMb/T;ILKb/h;Lhc/f;Lyc/w;ZZZLyc/w;LJb/S;)V

    move-object/from16 v2, v19

    invoke-virtual {v15, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v13, v15

    move-object/from16 v15, p1

    goto :goto_1

    :cond_3
    move-object/from16 p1, v15

    move-object v15, v13

    invoke-static {v0}, Lfb/n;->K(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LJb/W;

    invoke-interface {v0}, LJb/i;->n()Lyc/A;

    move-result-object v8

    sget-object v9, LJb/B;->ABSTRACT:LJb/B;

    sget-object v10, LJb/q;->e:LJb/p;

    const/4 v3, 0x0

    move-object v2, v1

    move-object v4, v14

    move-object/from16 v5, p1

    move-object/from16 v6, p1

    move-object v7, v15

    invoke-virtual/range {v2 .. v10}, LMb/M;->h1(LMb/w;LMb/w;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lyc/w;LJb/B;LJb/p;)LMb/M;

    const/4 v0, 0x1

    iput-boolean v0, v1, LMb/v;->x:Z

    return-object v1
.end method
