.class public abstract LG5/q2;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Landroid/os/Parcel;Landroid/os/Bundle;)V
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p1, p0, v0}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    :goto_0
    return-void
.end method

.method public static b(Lhc/c;Lxc/o;LJb/C;Ljava/io/InputStream;)Lvc/c;
    .locals 8

    const-string v0, "fqName"

    invoke-static {p0, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "storageManager"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "module"

    invoke-static {p2, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    sget-object v0, Ldc/a;->f:Ldc/a;

    invoke-static {p3}, LG5/D2;->f(Ljava/io/InputStream;)Ldc/a;

    move-result-object v6

    const-string v0, "ourVersion"

    sget-object v1, Ldc/a;->f:Ldc/a;

    invoke-static {v1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget v0, v6, Lec/a;->c:I

    iget v2, v1, Lec/a;->c:I

    iget v3, v1, Lec/a;->b:I

    iget v4, v6, Lec/a;->b:I

    const/4 v5, 0x0

    const/4 v7, 0x1

    if-nez v4, :cond_1

    if-nez v3, :cond_0

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    move v7, v5

    goto :goto_0

    :cond_1
    if-ne v4, v3, :cond_0

    if-gt v0, v2, :cond_0

    :goto_0
    const/4 v0, 0x0

    if-eqz v7, :cond_3

    new-instance v2, Lic/g;

    invoke-direct {v2}, Lic/g;-><init>()V

    invoke-static {v2}, Ldc/b;->a(Lic/g;)V

    sget-object v3, Lcc/G;->k:Lcc/a;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v4, Lcom/google/crypto/tink/shaded/protobuf/i;

    invoke-direct {v4, p3}, Lcom/google/crypto/tink/shaded/protobuf/i;-><init>(Ljava/io/InputStream;)V

    invoke-interface {v3, v4, v2}, Lic/y;->a(Lcom/google/crypto/tink/shaded/protobuf/i;Lic/g;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lic/b;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v4, v5}, Lcom/google/crypto/tink/shaded/protobuf/i;->a(I)V
    :try_end_1
    .catch Lic/t; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-interface {v2}, Lic/x;->isInitialized()Z

    move-result v3

    if-eqz v3, :cond_2

    check-cast v2, Lcc/G;

    move-object v5, v2

    goto :goto_1

    :cond_2
    new-instance p0, LI5/b;

    invoke-direct {p0}, LI5/b;-><init>()V

    new-instance p1, Lic/t;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lic/t;-><init>(Ljava/lang/String;)V

    iput-object v2, p1, Lic/t;->a:Lic/b;

    throw p1

    :catch_0
    move-exception p0

    iput-object v2, p0, Lic/t;->a:Lic/b;

    throw p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_3
    move-object v5, v0

    :goto_1
    invoke-static {p3, v0}, LG5/q;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    if-eqz v5, :cond_4

    new-instance p3, Lvc/c;

    move-object v1, p3

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    invoke-direct/range {v1 .. v6}, Lvc/c;-><init>(Lhc/c;Lxc/o;LJb/C;Lcc/G;Ldc/a;)V

    return-object p3

    :cond_4
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Kotlin built-in definition format version is not supported: expected "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, ", actual "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, ". Please update Kotlin"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    :goto_2
    :try_start_3
    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p1

    invoke-static {p3, p0}, LG5/q;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static final c(LEb/g;)I
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0}, LEb/g;->q()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public static final d(LJb/v;)Ljava/lang/String;
    .locals 2

    invoke-static {p0}, LGb/i;->A(LJb/l;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-static {p0}, LG5/q2;->e(LJb/d;)LJb/d;

    move-result-object p0

    goto :goto_0

    :cond_0
    move-object p0, v1

    :goto_0
    if-eqz p0, :cond_4

    invoke-static {p0}, Loc/d;->k(LJb/d;)LJb/d;

    move-result-object p0

    instance-of v0, p0, LJb/P;

    if-eqz v0, :cond_2

    invoke-static {p0}, LGb/i;->A(LJb/l;)Z

    invoke-static {p0}, Loc/d;->k(LJb/d;)LJb/d;

    move-result-object p0

    sget-object v0, LSb/a;->e:LSb/a;

    invoke-static {p0, v0}, Loc/d;->b(LJb/d;Lsb/k;)LJb/d;

    move-result-object p0

    if-nez p0, :cond_1

    goto :goto_2

    :cond_1
    sget-object v0, LSb/f;->a:Ljava/lang/Object;

    invoke-static {p0}, Loc/d;->g(LJb/l;)Lhc/c;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lhc/f;

    if-eqz p0, :cond_4

    invoke-virtual {p0}, Lhc/f;->c()Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_2
    instance-of v0, p0, LMb/M;

    if-eqz v0, :cond_4

    sget v0, LSb/d;->l:I

    check-cast p0, LMb/M;

    sget-object v0, LSb/H;->i:Ljava/util/LinkedHashMap;

    invoke-static {p0}, LG5/W3;->c(LJb/b;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_3

    move-object p0, v1

    goto :goto_1

    :cond_3
    invoke-virtual {v0, p0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lhc/f;

    :goto_1
    if-eqz p0, :cond_4

    invoke-virtual {p0}, Lhc/f;->c()Ljava/lang/String;

    move-result-object v1

    :cond_4
    :goto_2
    return-object v1
.end method

.method public static final e(LJb/d;)LJb/d;
    .locals 3

    const-string v0, "<this>"

    invoke-static {p0, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, LSb/H;->j:Ljava/util/HashSet;

    invoke-interface {p0}, LJb/l;->getName()Lhc/f;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    sget-object v0, LSb/f;->d:Ljava/util/Set;

    invoke-static {p0}, Loc/d;->k(LJb/d;)LJb/d;

    move-result-object v2

    invoke-interface {v2}, LJb/l;->getName()Lhc/f;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    instance-of v0, p0, LJb/P;

    if-nez v0, :cond_2

    instance-of v0, p0, LJb/O;

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    instance-of v0, p0, LMb/M;

    if-eqz v0, :cond_3

    sget-object v0, LSb/a;->h:LSb/a;

    invoke-static {p0, v0}, Loc/d;->b(LJb/d;Lsb/k;)LJb/d;

    move-result-object v1

    goto :goto_1

    :cond_2
    :goto_0
    sget-object v0, LSb/a;->g:LSb/a;

    invoke-static {p0, v0}, Loc/d;->b(LJb/d;Lsb/k;)LJb/d;

    move-result-object v1

    :cond_3
    :goto_1
    return-object v1
.end method

.method public static final f(LJb/d;)LJb/d;
    .locals 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, LG5/q2;->e(LJb/d;)LJb/d;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    sget v0, LSb/e;->l:I

    invoke-interface {p0}, LJb/l;->getName()Lhc/f;

    move-result-object v0

    const-string v1, "getName(...)"

    invoke-static {v0, v1}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, LSb/e;->b(Lhc/f;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 p0, 0x0

    return-object p0

    :cond_1
    sget-object v0, LSb/a;->i:LSb/a;

    invoke-static {p0, v0}, Loc/d;->b(LJb/d;Lsb/k;)LJb/d;

    move-result-object p0

    return-object p0
.end method

.method public static final g(LJb/f;LJb/d;)Z
    .locals 13

    const-string v0, "<this>"

    invoke-static {p0, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "specialCallableDescriptor"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, LJb/l;->k()LJb/l;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type org.jetbrains.kotlin.descriptors.ClassDescriptor"

    invoke-static {p1, v0}, Ltb/k;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, LJb/f;

    invoke-interface {p1}, LJb/f;->n()Lyc/A;

    move-result-object p1

    const-string v0, "getDefaultType(...)"

    invoke-static {p1, v0}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lkc/e;->j(LJb/f;)LJb/f;

    move-result-object p0

    :goto_0
    const/4 v0, 0x0

    if-eqz p0, :cond_f

    instance-of v1, p0, LUb/c;

    if-nez v1, :cond_e

    invoke-interface {p0}, LJb/f;->n()Lyc/A;

    move-result-object v1

    const/4 v2, 0x3

    const/4 v3, 0x1

    if-eqz v1, :cond_d

    new-instance v4, Ljava/util/ArrayDeque;

    invoke-direct {v4}, Ljava/util/ArrayDeque;-><init>()V

    new-instance v5, Lzc/n;

    const/4 v6, 0x0

    invoke-direct {v5, v1, v6}, Lzc/n;-><init>(Lyc/w;Lzc/n;)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    invoke-virtual {p1}, Lyc/w;->F0()Lyc/L;

    move-result-object v1

    :cond_0
    invoke-virtual {v4}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_c

    invoke-virtual {v4}, Ljava/util/ArrayDeque;->poll()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lzc/n;

    iget-object v7, v5, Lzc/n;->a:Lyc/w;

    invoke-virtual {v7}, Lyc/w;->F0()Lyc/L;

    move-result-object v8

    if-eqz v8, :cond_b

    if-eqz v1, :cond_a

    invoke-virtual {v8, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9

    invoke-virtual {v7}, Lyc/w;->G0()Z

    move-result v4

    iget-object v5, v5, Lzc/n;->b:Lzc/n;

    :goto_1
    if-eqz v5, :cond_6

    iget-object v8, v5, Lzc/n;->a:Lyc/w;

    invoke-virtual {v8}, Lyc/w;->D0()Ljava/util/List;

    move-result-object v9

    check-cast v9, Ljava/lang/Iterable;

    instance-of v10, v9, Ljava/util/Collection;

    sget-object v11, Lyc/N;->b:Lyc/e;

    if-eqz v10, :cond_1

    move-object v10, v9

    check-cast v10, Ljava/util/Collection;

    invoke-interface {v10}, Ljava/util/Collection;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_1

    goto :goto_2

    :cond_1
    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lyc/Q;

    invoke-virtual {v10}, Lyc/Q;->a()Lyc/e0;

    move-result-object v10

    sget-object v12, Lyc/e0;->INVARIANT:Lyc/e0;

    if-eq v10, v12, :cond_2

    invoke-virtual {v8}, Lyc/w;->F0()Lyc/L;

    move-result-object v9

    invoke-virtual {v8}, Lyc/w;->D0()Ljava/util/List;

    move-result-object v10

    invoke-virtual {v11, v9, v10}, Lyc/e;->g(Lyc/L;Ljava/util/List;)Lyc/U;

    move-result-object v9

    invoke-static {v9}, LP7/a;->k(Lyc/U;)Lyc/U;

    move-result-object v9

    new-instance v10, Lyc/Y;

    invoke-direct {v10, v9}, Lyc/Y;-><init>(Lyc/U;)V

    invoke-virtual {v10, v7, v12}, Lyc/Y;->g(Lyc/w;Lyc/e0;)Lyc/w;

    move-result-object v7

    invoke-static {v7}, LG5/L;->c(Lyc/w;)LDc/a;

    move-result-object v7

    iget-object v7, v7, LDc/a;->b:Ljava/lang/Object;

    check-cast v7, Lyc/w;

    goto :goto_3

    :cond_3
    :goto_2
    invoke-virtual {v8}, Lyc/w;->F0()Lyc/L;

    move-result-object v9

    invoke-virtual {v8}, Lyc/w;->D0()Ljava/util/List;

    move-result-object v10

    invoke-virtual {v11, v9, v10}, Lyc/e;->g(Lyc/L;Ljava/util/List;)Lyc/U;

    move-result-object v9

    new-instance v10, Lyc/Y;

    invoke-direct {v10, v9}, Lyc/Y;-><init>(Lyc/U;)V

    sget-object v9, Lyc/e0;->INVARIANT:Lyc/e0;

    invoke-virtual {v10, v7, v9}, Lyc/Y;->g(Lyc/w;Lyc/e0;)Lyc/w;

    move-result-object v7

    :goto_3
    if-nez v4, :cond_5

    invoke-virtual {v8}, Lyc/w;->G0()Z

    move-result v4

    if-eqz v4, :cond_4

    goto :goto_4

    :cond_4
    move v4, v0

    goto :goto_5

    :cond_5
    :goto_4
    move v4, v3

    :goto_5
    iget-object v5, v5, Lzc/n;->b:Lzc/n;

    goto :goto_1

    :cond_6
    invoke-virtual {v7}, Lyc/w;->F0()Lyc/L;

    move-result-object v0

    if-eqz v0, :cond_8

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-static {v7, v4}, Lyc/b0;->g(Lyc/w;Z)Lyc/d0;

    move-result-object v6

    goto :goto_7

    :cond_7
    new-instance p0, Ljava/lang/AssertionError;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v2, "Type constructors should be equals!\nsubstitutedSuperType: "

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lzc/g;->n(Lyc/L;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", \n\nsupertype: "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lzc/g;->n(Lyc/L;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " \n"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p0

    :cond_8
    invoke-static {v2}, Lzc/g;->a(I)V

    throw v6

    :cond_9
    invoke-interface {v8}, Lyc/L;->d()Ljava/util/Collection;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_6
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lyc/w;

    new-instance v9, Lzc/n;

    invoke-static {v8}, Ltb/k;->c(Ljava/lang/Object;)V

    invoke-direct {v9, v8, v5}, Lzc/n;-><init>(Lyc/w;Lzc/n;)V

    invoke-virtual {v4, v9}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_a
    const/4 p0, 0x4

    invoke-static {p0}, Lzc/g;->a(I)V

    throw v6

    :cond_b
    invoke-static {v2}, Lzc/g;->a(I)V

    throw v6

    :cond_c
    :goto_7
    if-eqz v6, :cond_e

    invoke-static {p0}, LGb/i;->A(LJb/l;)Z

    move-result p0

    xor-int/2addr p0, v3

    return p0

    :cond_d
    new-array p0, v2, [Ljava/lang/Object;

    const-string p1, "subtype"

    aput-object p1, p0, v0

    const-string p1, "kotlin/reflect/jvm/internal/impl/types/checker/TypeCheckingProcedure"

    aput-object p1, p0, v3

    const-string p1, "findCorrespondingSupertype"

    const/4 v0, 0x2

    aput-object p1, p0, v0

    const-string p1, "Argument for @NotNull parameter \'%s\' of %s.%s must not be null"

    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_e
    invoke-static {p0}, Lkc/e;->j(LJb/f;)LJb/f;

    move-result-object p0

    goto/16 :goto_0

    :cond_f
    return v0
.end method
