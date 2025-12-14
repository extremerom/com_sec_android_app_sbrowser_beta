.class public final Lo3/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lc5/r;
.implements Lcom/bumptech/glide/load/data/d;
.implements LZ3/p;
.implements Landroidx/emoji2/text/l;
.implements Lcom/google/android/gms/internal/clearcut/e;
.implements Lzc/b;


# instance fields
.field public a:Ljava/lang/Object;

.field public b:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lg3/d;Lr3/a;)V
    .locals 1

    const-string v0, "processor"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "workTaskExecutor"

    invoke-static {p2, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo3/l;->a:Ljava/lang/Object;

    iput-object p2, p0, Lo3/l;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lo3/l;->a:Ljava/lang/Object;

    iput-object p2, p0, Lo3/l;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/util/HashMap;Lzc/c;)V
    .locals 1

    const-string v0, "equalityAxioms"

    invoke-static {p2, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo3/l;->a:Ljava/lang/Object;

    iput-object p2, p0, Lo3/l;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public A(Lyc/w;)Lyc/A;
    .locals 0

    invoke-static {p1}, Lzc/g;->h(LBc/d;)Lyc/A;

    move-result-object p0

    return-object p0
.end method

.method public B(Lyc/r;)Lyc/A;
    .locals 0

    invoke-static {p1}, Lzc/g;->X(Lyc/r;)Lyc/A;

    move-result-object p0

    return-object p0
.end method

.method public C(LBc/e;I)Lyc/Q;
    .locals 0

    const-string p0, "<this>"

    invoke-static {p1, p0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    if-ltz p2, :cond_0

    invoke-static {p1}, Lzc/g;->c(LBc/d;)I

    move-result p0

    if-ge p2, p0, :cond_0

    invoke-static {p1, p2}, Lzc/g;->p(LBc/d;I)Lyc/Q;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public D(Ljava/util/ArrayList;)Lyc/d0;
    .locals 8

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p0

    if-eqz p0, :cond_9

    const/4 v0, 0x1

    if-eq p0, v0, :cond_8

    new-instance p0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p1, v1}, Lfb/p;->m(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {p0, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x0

    move v4, v3

    move v5, v4

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lyc/d0;

    if-nez v4, :cond_1

    invoke-static {v6}, Lyc/c;->k(Lyc/w;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_1

    :cond_0
    move v4, v3

    goto :goto_2

    :cond_1
    :goto_1
    move v4, v0

    :goto_2
    instance-of v7, v6, Lyc/A;

    if-eqz v7, :cond_2

    check-cast v6, Lyc/A;

    goto :goto_3

    :cond_2
    instance-of v5, v6, Lyc/r;

    if-eqz v5, :cond_3

    const-string v5, "<this>"

    invoke-static {v6, v5}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v6, Lyc/r;

    iget-object v6, v6, Lyc/r;->b:Lyc/A;

    move v5, v0

    :goto_3
    invoke-virtual {p0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    new-instance p0, LI5/b;

    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    throw p0

    :cond_4
    if-eqz v4, :cond_5

    sget-object p0, LAc/k;->INTERSECTION_OF_ERROR_TYPES:LAc/k;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, LAc/l;->c(LAc/k;[Ljava/lang/String;)LAc/i;

    move-result-object p0

    goto :goto_5

    :cond_5
    sget-object v0, Lzc/t;->a:Lzc/t;

    if-nez v5, :cond_6

    invoke-virtual {v0, p0}, Lzc/t;->b(Ljava/util/ArrayList;)Lyc/A;

    move-result-object p0

    goto :goto_5

    :cond_6
    new-instance v2, Ljava/util/ArrayList;

    invoke-static {p1, v1}, Lfb/p;->m(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lyc/d0;

    invoke-static {v1}, Lyc/c;->E(Lyc/w;)Lyc/A;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_7
    invoke-virtual {v0, p0}, Lzc/t;->b(Ljava/util/ArrayList;)Lyc/A;

    move-result-object p0

    invoke-virtual {v0, v2}, Lzc/t;->b(Ljava/util/ArrayList;)Lyc/A;

    move-result-object p1

    invoke-static {p0, p1}, Lyc/c;->f(Lyc/A;Lyc/A;)Lyc/d0;

    move-result-object p0

    goto :goto_5

    :cond_8
    invoke-static {p1}, Lfb/n;->T(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lyc/d0;

    :goto_5
    return-object p0

    :cond_9
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Expected some types"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public E(LBc/e;)LBc/c;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lo3/l;->s0(LBc/e;)LBc/f;

    move-result-object p1

    invoke-static {p0, p1}, Lzc/g;->e(Lzc/b;LBc/f;)LBc/c;

    move-result-object p0

    return-object p0
.end method

.method public F(LBc/d;)Lyc/L;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lzc/g;->h(LBc/d;)Lyc/A;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lo3/l;->n(LBc/d;)Lyc/A;

    move-result-object v0

    :cond_0
    invoke-static {v0}, Lzc/g;->V(LBc/e;)Lyc/L;

    move-result-object p0

    return-object p0
.end method

.method public G(LBc/e;LBc/h;)V
    .locals 0

    return-void
.end method

.method public H(LBc/e;)Lyc/A;
    .locals 0

    const/4 p0, 0x1

    invoke-static {p1, p0}, Lzc/g;->Z(LBc/e;Z)Lyc/A;

    move-result-object p0

    return-object p0
.end method

.method public I(LBc/d;)Z
    .locals 0

    invoke-static {p1}, Lzc/g;->F(LBc/d;)Z

    move-result p0

    return p0
.end method

.method public J(Lyc/d0;)Z
    .locals 0

    const-string p0, "<this>"

    invoke-static {p1, p0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lzc/g;->g(LBc/d;)Lyc/r;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public K(LBc/d;)Z
    .locals 1

    const-string v0, "<this>"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lo3/l;->n(LBc/d;)Lyc/A;

    move-result-object v0

    invoke-static {v0}, Lzc/g;->V(LBc/e;)Lyc/L;

    move-result-object v0

    invoke-virtual {p0, p1}, Lo3/l;->k(LBc/d;)Lyc/A;

    move-result-object p0

    invoke-static {p0}, Lzc/g;->V(LBc/e;)Lyc/L;

    move-result-object p0

    invoke-static {v0, p0}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public L(Lyc/Q;)Lyc/d0;
    .locals 0

    invoke-static {p0, p1}, Lzc/g;->r(Lzc/b;Lyc/Q;)Lyc/d0;

    move-result-object p0

    return-object p0
.end method

.method public M()Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lo3/l;->a:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/clearcut/b;

    iget-object p0, p0, Lo3/l;->b:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/gms/internal/clearcut/a;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "gms:phenotype:phenotype_flag:debug_disable_caching"

    invoke-static {}, Lcom/google/android/gms/internal/clearcut/b;->d()Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, LLa/f;

    invoke-direct {v2, v1}, LLa/f;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lcom/google/android/gms/internal/clearcut/b;->b(Lcom/google/android/gms/internal/clearcut/e;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/clearcut/a;->a()Ljava/util/HashMap;

    move-result-object v1

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/internal/clearcut/a;->e:Ljava/util/HashMap;

    :goto_1
    if-nez v1, :cond_3

    iget-object v2, p0, Lcom/google/android/gms/internal/clearcut/a;->d:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/clearcut/a;->e:Ljava/util/HashMap;

    if-nez v1, :cond_2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/clearcut/a;->a()Ljava/util/HashMap;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/internal/clearcut/a;->e:Ljava/util/HashMap;

    goto :goto_2

    :catchall_0
    move-exception p0

    goto :goto_3

    :cond_2
    :goto_2
    monitor-exit v2

    goto :goto_4

    :goto_3
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_3
    :goto_4
    if-eqz v1, :cond_4

    goto :goto_5

    :cond_4
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v1

    :goto_5
    iget-object p0, v0, Lcom/google/android/gms/internal/clearcut/b;->b:Ljava/lang/String;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public N(LBc/h;)Z
    .locals 0

    invoke-static {p1}, Lzc/g;->z(LBc/h;)Z

    move-result p0

    return p0
.end method

.method public O(LBc/e;)Ljava/util/Collection;
    .locals 0

    invoke-static {p0, p1}, Lzc/g;->R(Lzc/b;LBc/e;)Ljava/util/Collection;

    move-result-object p0

    return-object p0
.end method

.method public P(LBc/e;)Z
    .locals 0

    invoke-static {p1}, Lzc/g;->V(LBc/e;)Lyc/L;

    move-result-object p0

    invoke-static {p0}, Lzc/g;->D(LBc/h;)Z

    move-result p0

    return p0
.end method

.method public Q(LBc/e;)Z
    .locals 0

    invoke-static {p1}, Lzc/g;->B(LBc/d;)Z

    move-result p0

    return p0
.end method

.method public R(LBc/d;)Lyc/F;
    .locals 0

    invoke-static {p1}, Lzc/g;->i(LBc/d;)Lyc/F;

    move-result-object p0

    return-object p0
.end method

.method public S(LBc/h;)Z
    .locals 0

    invoke-static {p1}, Lzc/g;->x(LBc/h;)Z

    move-result p0

    return p0
.end method

.method public T(LBc/e;)Lyc/L;
    .locals 0

    invoke-static {p1}, Lzc/g;->V(LBc/e;)Lyc/L;

    move-result-object p0

    return-object p0
.end method

.method public U(LBc/e;LBc/b;)Lyc/A;
    .locals 0

    invoke-static {p1, p2}, Lzc/g;->j(LBc/e;LBc/b;)Lyc/A;

    move-result-object p0

    return-object p0
.end method

.method public V(LBc/h;)Z
    .locals 0

    invoke-static {p1}, Lzc/g;->A(LBc/h;)Z

    move-result p0

    return p0
.end method

.method public W(Lyc/r;)Lyc/A;
    .locals 0

    invoke-static {p1}, Lzc/g;->X(Lyc/r;)Lyc/A;

    move-result-object p0

    return-object p0
.end method

.method public X(Llc/b;)Lyc/Q;
    .locals 0

    invoke-static {p1}, Lzc/g;->S(Llc/b;)Lyc/Q;

    move-result-object p0

    return-object p0
.end method

.method public Y(LBc/h;)Z
    .locals 0

    invoke-static {p1}, Lzc/g;->G(LBc/h;)Z

    move-result p0

    return p0
.end method

.method public Z(LBc/h;)Ljava/util/Collection;
    .locals 0

    invoke-static {p1}, Lzc/g;->U(LBc/h;)Ljava/util/Collection;

    move-result-object p0

    return-object p0
.end method

.method public a(LBc/d;)Lyc/d0;
    .locals 0

    invoke-static {p1}, Lzc/g;->P(LBc/d;)Lyc/d0;

    move-result-object p0

    return-object p0
.end method

.method public a0(LBc/e;LBc/e;)Z
    .locals 0

    invoke-static {p1, p2}, Lzc/g;->w(LBc/e;LBc/e;)Z

    move-result p0

    return p0
.end method

.method public accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 42

    move-object/from16 v0, p0

    iget-object v1, v0, Lo3/l;->a:Ljava/lang/Object;

    check-cast v1, Lcom/bumptech/glide/manager/o;

    iget-object v0, v0, Lo3/l;->b:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/location/LocationRequest;

    move-object/from16 v2, p1

    check-cast v2, LD5/k;

    move-object/from16 v3, p2

    check-cast v3, LR5/i;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1}, Lcom/bumptech/glide/manager/o;->g()Landroidx/emoji2/text/d;

    move-result-object v4

    iget-object v5, v4, Landroidx/emoji2/text/d;->c:Ljava/lang/Object;

    check-cast v5, Lc5/m;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v2}, LD5/k;->b()Z

    move-result v6

    iget-object v7, v2, LD5/k;->b:LN/A;

    monitor-enter v7

    :try_start_0
    iget-object v8, v2, LD5/k;->b:LN/A;

    invoke-virtual {v8, v5}, LN/A;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, LD5/j;

    const/4 v9, 0x0

    if-eqz v8, :cond_2

    if-eqz v6, :cond_0

    goto :goto_2

    :cond_0
    iget-object v1, v8, LD5/j;->b:Lcom/bumptech/glide/manager/o;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v10, v1, Lcom/bumptech/glide/manager/o;->c:Ljava/lang/Object;

    check-cast v10, Landroidx/emoji2/text/d;

    if-eq v10, v4, :cond_1

    iput-object v9, v10, Landroidx/emoji2/text/d;->b:Ljava/lang/Object;

    iput-object v9, v10, Landroidx/emoji2/text/d;->c:Ljava/lang/Object;

    iput-object v4, v1, Lcom/bumptech/glide/manager/o;->c:Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :goto_0
    move-object v14, v8

    move-object v8, v9

    goto :goto_3

    :goto_1
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0

    :cond_2
    :goto_2
    new-instance v4, LD5/j;

    invoke-direct {v4, v1}, LD5/j;-><init>(Lcom/bumptech/glide/manager/o;)V

    iget-object v1, v2, LD5/k;->b:LN/A;

    invoke-virtual {v1, v5, v4}, LN/A;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v14, v4

    :goto_3
    invoke-virtual {v2}, Lcom/google/android/gms/common/internal/f;->getContext()Landroid/content/Context;

    iget-object v1, v5, Lc5/m;->a:Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v5, Lc5/m;->b:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "@"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    const/4 v1, 0x0

    const/4 v4, 0x1

    if-eqz v6, :cond_4

    invoke-virtual {v2}, Lcom/google/android/gms/common/internal/f;->getService()Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, LD5/w;

    new-instance v5, Lcom/google/android/gms/internal/location/zzdb;

    if-nez v8, :cond_3

    move-object v12, v9

    goto :goto_4

    :cond_3
    move-object v12, v8

    :goto_4
    const/4 v11, 0x2

    const/4 v6, 0x0

    const/4 v15, 0x0

    move-object v10, v5

    move-object v13, v14

    move-object v14, v6

    move-object/from16 v16, v17

    invoke-direct/range {v10 .. v16}, Lcom/google/android/gms/internal/location/zzdb;-><init>(ILandroid/os/IBinder;Landroid/os/IBinder;Landroid/app/PendingIntent;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v6, LD5/f;

    invoke-direct {v6, v9, v3}, LD5/f;-><init>(Ljava/lang/Boolean;LR5/i;)V

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v3

    iget-object v8, v2, LD5/a;->p:Ljava/lang/String;

    invoke-virtual {v3, v8}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    sget v8, LD5/e;->a:I

    invoke-virtual {v3, v4}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v5, v3, v1}, Lcom/google/android/gms/internal/location/zzdb;->writeToParcel(Landroid/os/Parcel;I)V

    invoke-virtual {v3, v4}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, v3, v1}, Lcom/google/android/gms/location/LocationRequest;->writeToParcel(Landroid/os/Parcel;I)V

    invoke-virtual {v3, v6}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    const/16 v0, 0x58

    invoke-virtual {v2, v0, v3}, LD5/a;->D0(ILandroid/os/Parcel;)V

    goto/16 :goto_8

    :catchall_1
    move-exception v0

    goto/16 :goto_9

    :cond_4
    invoke-virtual {v2}, Lcom/google/android/gms/common/internal/f;->getService()Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, LD5/w;

    iget v5, v0, Lcom/google/android/gms/location/LocationRequest;->a:I

    iget-wide v10, v0, Lcom/google/android/gms/location/LocationRequest;->b:J

    iget-wide v12, v0, Lcom/google/android/gms/location/LocationRequest;->c:J

    move-object/from16 p1, v2

    iget-wide v1, v0, Lcom/google/android/gms/location/LocationRequest;->e:J

    iget v6, v0, Lcom/google/android/gms/location/LocationRequest;->f:I

    iget v8, v0, Lcom/google/android/gms/location/LocationRequest;->g:F

    iget-boolean v15, v0, Lcom/google/android/gms/location/LocationRequest;->h:Z

    move-wide/from16 v20, v10

    iget-wide v9, v0, Lcom/google/android/gms/location/LocationRequest;->i:J

    iget v11, v0, Lcom/google/android/gms/location/LocationRequest;->j:I

    iget v4, v0, Lcom/google/android/gms/location/LocationRequest;->k:I

    move-object/from16 v16, v3

    iget-object v3, v0, Lcom/google/android/gms/location/LocationRequest;->l:Ljava/lang/String;

    move-object/from16 v18, v3

    iget-boolean v3, v0, Lcom/google/android/gms/location/LocationRequest;->m:Z

    move-object/from16 v41, v14

    iget-object v14, v0, Lcom/google/android/gms/location/LocationRequest;->n:Landroid/os/WorkSource;

    iget-object v0, v0, Lcom/google/android/gms/location/LocationRequest;->o:Lcom/google/android/gms/internal/location/zzd;

    move-object/from16 v40, v0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    move/from16 v38, v3

    const/16 v3, 0x1e

    if-ge v0, v3, :cond_5

    const/16 v37, 0x0

    goto :goto_5

    :cond_5
    move-object/from16 v37, v18

    :goto_5
    new-instance v0, Lcom/google/android/gms/location/LocationRequest;

    const-wide/16 v18, -0x1

    cmp-long v3, v12, v18

    if-nez v3, :cond_6

    move/from16 v36, v4

    move-wide/from16 v3, v20

    move-wide/from16 v22, v3

    goto :goto_6

    :cond_6
    const/16 v3, 0x69

    if-ne v5, v3, :cond_7

    move/from16 v36, v4

    move-wide/from16 v22, v12

    move-wide/from16 v3, v20

    goto :goto_6

    :cond_7
    move/from16 v36, v4

    move-wide/from16 v3, v20

    invoke-static {v12, v13, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v12

    move-wide/from16 v22, v12

    :goto_6
    const-wide/16 v12, 0x0

    invoke-static {v12, v13, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v24

    cmp-long v12, v9, v18

    if-nez v12, :cond_8

    move-wide/from16 v33, v3

    goto :goto_7

    :cond_8
    move-wide/from16 v33, v9

    :goto_7
    new-instance v9, Landroid/os/WorkSource;

    invoke-direct {v9, v14}, Landroid/os/WorkSource;-><init>(Landroid/os/WorkSource;)V

    const-wide v26, 0x7fffffffffffffffL

    move-object/from16 v18, v0

    move/from16 v19, v5

    move-wide/from16 v20, v3

    move-wide/from16 v28, v1

    move/from16 v30, v6

    move/from16 v31, v8

    move/from16 v32, v15

    move/from16 v35, v11

    move-object/from16 v39, v9

    invoke-direct/range {v18 .. v40}, Lcom/google/android/gms/location/LocationRequest;-><init>(IJJJJJIFZJIILjava/lang/String;ZLandroid/os/WorkSource;Lcom/google/android/gms/internal/location/zzd;)V

    new-instance v12, Lcom/google/android/gms/internal/location/zzdd;

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const-wide v31, 0x7fffffffffffffffL

    const/16 v24, 0x0

    const/16 v25, 0x0

    move-object/from16 v22, v12

    move-object/from16 v23, v0

    invoke-direct/range {v22 .. v32}, Lcom/google/android/gms/internal/location/zzdd;-><init>(Lcom/google/android/gms/location/LocationRequest;Ljava/util/ArrayList;ZZLjava/lang/String;ZZLjava/lang/String;J)V

    new-instance v0, LD5/h;

    move-object/from16 v1, v16

    move-object/from16 v4, v41

    invoke-direct {v0, v1, v4}, LD5/h;-><init>(LR5/i;LD5/j;)V

    new-instance v1, Lcom/google/android/gms/internal/location/zzdf;

    const/4 v11, 0x1

    const/4 v13, 0x0

    const/4 v15, 0x0

    move-object v10, v1

    move-object v14, v4

    move-object/from16 v16, v0

    invoke-direct/range {v10 .. v17}, Lcom/google/android/gms/internal/location/zzdf;-><init>(ILcom/google/android/gms/internal/location/zzdd;Landroid/os/IBinder;Landroid/os/IBinder;Landroid/app/PendingIntent;Landroid/os/IBinder;Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    move-object/from16 v2, p1

    iget-object v3, v2, LD5/a;->p:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    sget v3, LD5/e;->a:I

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v3}, Lcom/google/android/gms/internal/location/zzdf;->writeToParcel(Landroid/os/Parcel;I)V

    const/16 v1, 0x3b

    invoke-virtual {v2, v1, v0}, LD5/a;->D0(ILandroid/os/Parcel;)V

    :goto_8
    monitor-exit v7

    return-void

    :goto_9
    monitor-exit v7
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0
.end method

.method public b(Lyc/r;)Lyc/A;
    .locals 0

    invoke-static {p1}, Lzc/g;->N(Lyc/r;)Lyc/A;

    move-result-object p0

    return-object p0
.end method

.method public b0(Lyc/d0;)Z
    .locals 1

    const-string v0, "<this>"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lo3/l;->n(LBc/d;)Lyc/A;

    move-result-object v0

    invoke-static {v0}, Lzc/g;->F(LBc/d;)Z

    move-result v0

    invoke-virtual {p0, p1}, Lo3/l;->k(LBc/d;)Lyc/A;

    move-result-object p0

    invoke-static {p0}, Lzc/g;->F(LBc/d;)Z

    move-result p0

    if-eq v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public c(LBc/h;)Z
    .locals 0

    invoke-static {p1}, Lzc/g;->E(LBc/h;)Z

    move-result p0

    return p0
.end method

.method public c0(LBc/e;)V
    .locals 0

    invoke-static {p1}, Lzc/g;->L(LBc/e;)V

    return-void
.end method

.method public d(LBc/h;)Z
    .locals 0

    invoke-static {p1}, Lzc/g;->y(LBc/h;)Z

    move-result p0

    return p0
.end method

.method public d0()V
    .locals 1

    iget-object p0, p0, Lo3/l;->a:Ljava/lang/Object;

    check-cast p0, LZ3/z;

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, LZ3/z;->a:[B

    array-length v0, v0

    iput v0, p0, LZ3/z;->c:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public e(LT3/a;Landroid/graphics/Bitmap;)V
    .locals 0

    iget-object p0, p0, Lo3/l;->b:Ljava/lang/Object;

    check-cast p0, Ll4/e;

    iget-object p0, p0, Ll4/e;->b:Ljava/io/IOException;

    if-eqz p0, :cond_1

    if-eqz p2, :cond_0

    invoke-interface {p1, p2}, LT3/a;->d(Landroid/graphics/Bitmap;)V

    :cond_0
    throw p0

    :cond_1
    return-void
.end method

.method public e0(LBc/h;)I
    .locals 0

    invoke-static {p1}, Lzc/g;->Q(LBc/h;)I

    move-result p0

    return p0
.end method

.method public f(LBc/e;)Z
    .locals 1

    const-string v0, "<this>"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lo3/l;->F(LBc/d;)Lyc/L;

    move-result-object p0

    invoke-static {p0}, Lzc/g;->G(LBc/h;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {p1}, Lzc/g;->H(LBc/d;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public f0(LBc/d;)V
    .locals 0

    const-string p0, "<this>"

    invoke-static {p1, p0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lzc/g;->g(LBc/d;)Lyc/r;

    return-void
.end method

.method public g(Ljava/lang/Exception;)V
    .locals 3

    iget-object v0, p0, Lo3/l;->b:Ljava/lang/Object;

    check-cast v0, LS3/G;

    iget-object v1, p0, Lo3/l;->a:Ljava/lang/Object;

    check-cast v1, LW3/s;

    iget-object v0, v0, LS3/G;->f:LW3/s;

    if-eqz v0, :cond_0

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lo3/l;->b:Ljava/lang/Object;

    check-cast v0, LS3/G;

    iget-object p0, p0, Lo3/l;->a:Ljava/lang/Object;

    check-cast p0, LW3/s;

    iget-object v1, v0, LS3/G;->b:LS3/l;

    iget-object v0, v0, LS3/G;->g:LS3/d;

    iget-object p0, p0, LW3/s;->c:Lcom/bumptech/glide/load/data/e;

    invoke-interface {p0}, Lcom/bumptech/glide/load/data/e;->c()LQ3/a;

    move-result-object v2

    invoke-virtual {v1, v0, p1, p0, v2}, LS3/l;->c(LQ3/g;Ljava/lang/Exception;Lcom/bumptech/glide/load/data/e;LQ3/a;)V

    :cond_0
    return-void
.end method

.method public g0(LBc/c;)Lzc/i;
    .locals 0

    invoke-static {p1}, Lzc/g;->W(LBc/c;)Lzc/i;

    move-result-object p0

    return-object p0
.end method

.method public getResult()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lo3/l;->a:Ljava/lang/Object;

    check-cast p0, Landroidx/emoji2/text/t;

    return-object p0
.end method

.method public h(LBc/d;)Lyc/r;
    .locals 0

    invoke-static {p1}, Lzc/g;->g(LBc/d;)Lyc/r;

    move-result-object p0

    return-object p0
.end method

.method public h0(LBc/e;)V
    .locals 0

    invoke-static {p1}, Lzc/g;->M(LBc/e;)V

    return-void
.end method

.method public i(LBc/h;LBc/h;)Z
    .locals 2

    const-string v0, "c1"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "c2"

    invoke-static {p2, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v0, p1, Lyc/L;

    const-string v1, "Failed requirement."

    if-eqz v0, :cond_6

    instance-of v0, p2, Lyc/L;

    if-eqz v0, :cond_5

    invoke-static {p1, p2}, Lzc/g;->b(LBc/h;LBc/h;)Z

    move-result v0

    if-nez v0, :cond_4

    check-cast p1, Lyc/L;

    check-cast p2, Lyc/L;

    iget-object v0, p0, Lo3/l;->b:Ljava/lang/Object;

    check-cast v0, Lzc/c;

    invoke-interface {v0, p1, p2}, Lzc/c;->a(Lyc/L;Lyc/L;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object p0, p0, Lo3/l;->a:Ljava/lang/Object;

    check-cast p0, Ljava/util/HashMap;

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lyc/L;

    invoke-virtual {p0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lyc/L;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_4

    :cond_2
    if-eqz p0, :cond_3

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    goto :goto_1

    :cond_3
    :goto_0
    const/4 p0, 0x0

    goto :goto_2

    :cond_4
    :goto_1
    const/4 p0, 0x1

    :goto_2
    return p0

    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public i0(LBc/d;I)Lyc/Q;
    .locals 0

    invoke-static {p1, p2}, Lzc/g;->p(LBc/d;I)Lyc/Q;

    move-result-object p0

    return-object p0
.end method

.method public j(LBc/f;LBc/f;)Lyc/d0;
    .locals 0

    invoke-static {p0, p1, p2}, Lzc/g;->m(Lzc/b;LBc/f;LBc/f;)Lyc/d0;

    move-result-object p0

    return-object p0
.end method

.method public j0(LBc/d;)LBc/d;
    .locals 0

    invoke-static {p0, p1}, Lzc/g;->Y(Lzc/b;LBc/d;)LBc/d;

    move-result-object p0

    return-object p0
.end method

.method public k(LBc/d;)Lyc/A;
    .locals 0

    const-string p0, "<this>"

    invoke-static {p1, p0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lzc/g;->g(LBc/d;)Lyc/r;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-static {p0}, Lzc/g;->X(Lyc/r;)Lyc/A;

    move-result-object p0

    if-nez p0, :cond_1

    :cond_0
    invoke-static {p1}, Lzc/g;->h(LBc/d;)Lyc/A;

    move-result-object p0

    invoke-static {p0}, Ltb/k;->c(Ljava/lang/Object;)V

    :cond_1
    return-object p0
.end method

.method public k0(Lyc/A;)LBc/c;
    .locals 0

    invoke-static {p0, p1}, Lzc/g;->e(Lzc/b;LBc/f;)LBc/c;

    move-result-object p0

    return-object p0
.end method

.method public l(Lyc/Q;)Z
    .locals 0

    invoke-static {p1}, Lzc/g;->K(Lyc/Q;)Z

    move-result p0

    return p0
.end method

.method public l0(LBc/g;)I
    .locals 2

    const-string p0, "<this>"

    invoke-static {p1, p0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of p0, p1, LBc/e;

    if-eqz p0, :cond_0

    check-cast p1, LBc/d;

    invoke-static {p1}, Lzc/g;->c(LBc/d;)I

    move-result p0

    goto :goto_0

    :cond_0
    instance-of p0, p1, LBc/a;

    if-eqz p0, :cond_1

    check-cast p1, LBc/a;

    invoke-virtual {p1}, Ljava/util/AbstractCollection;->size()I

    move-result p0

    :goto_0
    return p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "unknown type argument list type: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    sget-object v1, Ltb/x;->a:Ltb/y;

    invoke-virtual {v1, p1}, Ltb/y;->b(Ljava/lang/Class;)LAb/c;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public m(LBc/c;)Z
    .locals 0

    invoke-static {p1}, Lzc/g;->J(LBc/c;)Z

    move-result p0

    return p0
.end method

.method public m0(LJb/W;)LBc/j;
    .locals 0

    const-string p0, "$receiver"

    invoke-static {p1, p0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, LJb/W;->A()Lyc/e0;

    move-result-object p0

    const-string p1, "getVariance(...)"

    invoke-static {p0, p1}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, LG5/s;->b(Lyc/e0;)LBc/j;

    move-result-object p0

    return-object p0
.end method

.method public n(LBc/d;)Lyc/A;
    .locals 0

    const-string p0, "<this>"

    invoke-static {p1, p0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lzc/g;->g(LBc/d;)Lyc/r;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-static {p0}, Lzc/g;->N(Lyc/r;)Lyc/A;

    move-result-object p0

    if-nez p0, :cond_1

    :cond_0
    invoke-static {p1}, Lzc/g;->h(LBc/d;)Lyc/A;

    move-result-object p0

    invoke-static {p0}, Ltb/k;->c(Ljava/lang/Object;)V

    :cond_1
    return-object p0
.end method

.method public n0(Ljava/lang/CharSequence;IILandroidx/emoji2/text/r;)Z
    .locals 3

    iget v0, p4, Landroidx/emoji2/text/r;->c:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x1

    if-lez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lo3/l;->a:Ljava/lang/Object;

    check-cast v0, Landroidx/emoji2/text/t;

    if-nez v0, :cond_2

    new-instance v0, Landroidx/emoji2/text/t;

    instance-of v2, p1, Landroid/text/Spannable;

    if-eqz v2, :cond_1

    check-cast p1, Landroid/text/Spannable;

    goto :goto_0

    :cond_1
    new-instance v2, Landroid/text/SpannableString;

    invoke-direct {v2, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    move-object p1, v2

    :goto_0
    invoke-direct {v0, p1}, Landroidx/emoji2/text/t;-><init>(Landroid/text/Spannable;)V

    iput-object v0, p0, Lo3/l;->a:Ljava/lang/Object;

    :cond_2
    iget-object p1, p0, Lo3/l;->b:Ljava/lang/Object;

    check-cast p1, Lu5/d;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p1, Landroidx/emoji2/text/s;

    invoke-direct {p1, p4}, Landroidx/emoji2/text/s;-><init>(Landroidx/emoji2/text/r;)V

    iget-object p0, p0, Lo3/l;->a:Ljava/lang/Object;

    check-cast p0, Landroidx/emoji2/text/t;

    const/16 p4, 0x21

    invoke-virtual {p0, p1, p2, p3, p4}, Landroidx/emoji2/text/t;->setSpan(Ljava/lang/Object;III)V

    return v1
.end method

.method public o(LBc/h;)Z
    .locals 0

    invoke-static {p1}, Lzc/g;->D(LBc/h;)Z

    move-result p0

    return p0
.end method

.method public o0(LBc/c;)Z
    .locals 0

    const-string p0, "$receiver"

    invoke-static {p1, p0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of p0, p1, Llc/a;

    return p0
.end method

.method public p(LBc/e;)Lyc/A;
    .locals 0

    const/4 p0, 0x0

    invoke-static {p1, p0}, Lzc/g;->Z(LBc/e;Z)Lyc/A;

    move-result-object p0

    return-object p0
.end method

.method public p0(Ljava/lang/Object;)V
    .locals 6

    iget-object v0, p0, Lo3/l;->b:Ljava/lang/Object;

    check-cast v0, LS3/G;

    iget-object v1, p0, Lo3/l;->a:Ljava/lang/Object;

    check-cast v1, LW3/s;

    iget-object v0, v0, LS3/G;->f:LW3/s;

    if-eqz v0, :cond_1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lo3/l;->b:Ljava/lang/Object;

    check-cast v0, LS3/G;

    iget-object p0, p0, Lo3/l;->a:Ljava/lang/Object;

    check-cast p0, LW3/s;

    iget-object v1, v0, LS3/G;->a:LS3/g;

    iget-object v1, v1, LS3/g;->p:LS3/n;

    if-eqz p1, :cond_0

    iget-object v2, p0, LW3/s;->c:Lcom/bumptech/glide/load/data/e;

    invoke-interface {v2}, Lcom/bumptech/glide/load/data/e;->c()LQ3/a;

    move-result-object v2

    invoke-virtual {v1, v2}, LS3/n;->a(LQ3/a;)Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object p1, v0, LS3/G;->e:Ljava/lang/Object;

    iget-object p0, v0, LS3/G;->b:LS3/l;

    sget-object p1, LS3/j;->SWITCH_TO_SOURCE_SERVICE:LS3/j;

    invoke-virtual {p0, p1}, LS3/l;->o(LS3/j;)V

    goto :goto_0

    :cond_0
    iget-object v1, v0, LS3/G;->b:LS3/l;

    iget-object v2, p0, LW3/s;->a:LQ3/g;

    iget-object v3, p0, LW3/s;->c:Lcom/bumptech/glide/load/data/e;

    invoke-interface {v3}, Lcom/bumptech/glide/load/data/e;->c()LQ3/a;

    move-result-object v4

    iget-object v5, v0, LS3/G;->g:LS3/d;

    move-object v0, v1

    move-object v1, v2

    move-object v2, p1

    invoke-virtual/range {v0 .. v5}, LS3/l;->a(LQ3/g;Ljava/lang/Object;Lcom/bumptech/glide/load/data/e;LQ3/a;LQ3/g;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public q(LBc/h;I)LJb/W;
    .locals 0

    invoke-static {p1, p2}, Lzc/g;->q(LBc/h;I)LJb/W;

    move-result-object p0

    return-object p0
.end method

.method public q0(LBc/d;)Z
    .locals 0

    const-string p0, "$receiver"

    invoke-static {p1, p0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of p0, p1, LZb/f;

    return p0
.end method

.method public r(LBc/e;)Z
    .locals 0

    const-string p0, "<this>"

    invoke-static {p1, p0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lzc/g;->V(LBc/e;)Lyc/L;

    move-result-object p0

    invoke-static {p0}, Lzc/g;->y(LBc/h;)Z

    move-result p0

    return p0
.end method

.method public r0(LBc/e;)LBc/g;
    .locals 0

    invoke-static {p1}, Lzc/g;->d(LBc/e;)LBc/g;

    move-result-object p0

    return-object p0
.end method

.method public s(LBc/e;)Z
    .locals 1

    const-string v0, "<this>"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lzc/g;->h(LBc/d;)Lyc/A;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Lo3/l;->E(LBc/e;)LBc/c;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_1

    const/4 p0, 0x1

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    :goto_1
    return p0
.end method

.method public s0(LBc/e;)LBc/f;
    .locals 0

    const-string p0, "<this>"

    invoke-static {p1, p0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lzc/g;->f(LBc/e;)Lyc/n;

    move-result-object p0

    if-eqz p0, :cond_0

    iget-object p0, p0, Lyc/n;->b:Lyc/A;

    if-nez p0, :cond_1

    :cond_0
    move-object p0, p1

    check-cast p0, LBc/f;

    :cond_1
    return-object p0
.end method

.method public t(LBc/d;)Z
    .locals 0

    const-string p0, "<this>"

    invoke-static {p1, p0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lzc/g;->h(LBc/d;)Lyc/A;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-static {p0}, Lzc/g;->f(LBc/e;)Lyc/n;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_1

    const/4 p0, 0x1

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    :goto_1
    return p0
.end method

.method public t0(Lyc/r;)Lyc/A;
    .locals 0

    invoke-static {p1}, Lzc/g;->N(Lyc/r;)Lyc/A;

    move-result-object p0

    return-object p0
.end method

.method public u(LBc/c;)Lyc/d0;
    .locals 0

    invoke-static {p1}, Lzc/g;->O(LBc/c;)Lyc/d0;

    move-result-object p0

    return-object p0
.end method

.method public u0(LBc/g;I)Lyc/Q;
    .locals 1

    const-string p0, "<this>"

    invoke-static {p1, p0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of p0, p1, LBc/f;

    if-eqz p0, :cond_0

    check-cast p1, LBc/d;

    invoke-static {p1, p2}, Lzc/g;->p(LBc/d;I)Lyc/Q;

    move-result-object p0

    goto :goto_0

    :cond_0
    instance-of p0, p1, LBc/a;

    if-eqz p0, :cond_1

    check-cast p1, LBc/a;

    invoke-virtual {p1, p2}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object p0

    const-string p1, "get(...)"

    invoke-static {p0, p1}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lyc/Q;

    :goto_0
    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "unknown type argument list type: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    sget-object v0, Ltb/x;->a:Ltb/y;

    invoke-virtual {v0, p1}, Ltb/y;->b(Ljava/lang/Class;)LAb/c;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public v(Lyc/Q;)LBc/j;
    .locals 0

    invoke-static {p1}, Lzc/g;->t(Lyc/Q;)LBc/j;

    move-result-object p0

    return-object p0
.end method

.method public v0(LBc/d;)Lyc/A;
    .locals 0

    invoke-static {p1}, Lzc/g;->h(LBc/d;)Lyc/A;

    move-result-object p0

    return-object p0
.end method

.method public w(LBc/e;)Z
    .locals 0

    const-string p0, "<this>"

    invoke-static {p1, p0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lzc/g;->f(LBc/e;)Lyc/n;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public w0(LBc/d;)I
    .locals 0

    invoke-static {p1}, Lzc/g;->c(LBc/d;)I

    move-result p0

    return p0
.end method

.method public x(LJb/W;LBc/h;)Z
    .locals 0

    invoke-static {p1, p2}, Lzc/g;->v(LJb/W;LBc/h;)Z

    move-result p0

    return p0
.end method

.method public x0(Ljava/lang/String;)Lcom/google/android/datatransport/cct/CctBackendFactory;
    .locals 13

    const-string v0, "."

    const-string v1, "Could not instantiate "

    iget-object v2, p0, Lo3/l;->b:Ljava/lang/Object;

    check-cast v2, Ljava/util/Map;

    const/4 v3, 0x0

    const-string v4, "BackendRegistry"

    if-nez v2, :cond_6

    iget-object v2, p0, Lo3/l;->a:Ljava/lang/Object;

    check-cast v2, Landroid/content/Context;

    :try_start_0
    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    if-nez v5, :cond_0

    const-string v2, "Context has no PackageManager."

    invoke-static {v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    move-object v2, v3

    goto :goto_1

    :cond_0
    new-instance v6, Landroid/content/ComponentName;

    const-class v7, Lcom/google/android/datatransport/runtime/backends/TransportBackendDiscovery;

    invoke-direct {v6, v2, v7}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 v2, 0x80

    invoke-virtual {v5, v6, v2}, Landroid/content/pm/PackageManager;->getServiceInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ServiceInfo;

    move-result-object v2

    if-nez v2, :cond_1

    const-string v2, "TransportBackendDiscovery has no service info."

    invoke-static {v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    iget-object v2, v2, Landroid/content/pm/ServiceInfo;->metaData:Landroid/os/Bundle;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    const-string v2, "Application info not found."

    invoke-static {v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :goto_1
    if-nez v2, :cond_2

    const-string v2, "Could not retrieve metadata, returning empty list of transport backends."

    invoke-static {v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v2

    goto :goto_4

    :cond_2
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v2}, Landroid/os/BaseBundle;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v2, v7}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    instance-of v9, v8, Ljava/lang/String;

    if-eqz v9, :cond_3

    const-string v9, "backend:"

    invoke-virtual {v7, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_3

    check-cast v8, Ljava/lang/String;

    const-string v9, ","

    const/4 v10, -0x1

    invoke-virtual {v8, v9, v10}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v8

    array-length v9, v8

    const/4 v10, 0x0

    :goto_2
    if-ge v10, v9, :cond_3

    aget-object v11, v8, v10

    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->isEmpty()Z

    move-result v12

    if-eqz v12, :cond_4

    goto :goto_3

    :cond_4
    const/16 v12, 0x8

    invoke-virtual {v7, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v5, v11, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_3
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    :cond_5
    move-object v2, v5

    :goto_4
    iput-object v2, p0, Lo3/l;->b:Ljava/lang/Object;

    :cond_6
    iget-object p0, p0, Lo3/l;->b:Ljava/lang/Object;

    check-cast p0, Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    if-nez p0, :cond_7

    return-object v3

    :cond_7
    :try_start_1
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    const-class v2, Lcom/google/android/datatransport/cct/CctBackendFactory;

    invoke-virtual {p1, v2}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1, v3}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p1

    invoke-virtual {p1, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/datatransport/cct/CctBackendFactory;
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/InstantiationException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_1

    return-object p1

    :catch_1
    move-exception p1

    goto :goto_5

    :catch_2
    move-exception p1

    goto :goto_6

    :catch_3
    move-exception p1

    goto :goto_7

    :catch_4
    move-exception p1

    goto :goto_8

    :catch_5
    move-exception p1

    goto :goto_9

    :goto_5
    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_a

    :goto_6
    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_a

    :goto_7
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_a

    :goto_8
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_a

    :goto_9
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Class "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " is not found."

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_a
    return-object v3
.end method

.method public y(LBc/c;)LBc/b;
    .locals 0

    invoke-static {p1}, Lzc/g;->k(LBc/c;)LBc/b;

    move-result-object p0

    return-object p0
.end method

.method public y0(Z)Lyc/K;
    .locals 7

    sget-object v6, Lzc/f;->a:Lzc/f;

    sget-object v5, Lzc/e;->a:Lzc/e;

    new-instance p1, Lyc/K;

    const/4 v3, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x1

    move-object v0, p1

    move-object v4, p0

    invoke-direct/range {v0 .. v6}, Lyc/K;-><init>(ZZZLzc/b;Lzc/e;Lzc/f;)V

    return-object p1
.end method

.method public z(LBc/e;)Lzc/a;
    .locals 0

    invoke-static {p0, p1}, Lzc/g;->T(Lzc/b;LBc/e;)Lzc/a;

    move-result-object p0

    return-object p0
.end method

.method public z0(Lg3/i;I)V
    .locals 3

    const-string v0, "workSpecId"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lp3/o;

    iget-object v1, p0, Lo3/l;->a:Ljava/lang/Object;

    check-cast v1, Lg3/d;

    const/4 v2, 0x0

    invoke-direct {v0, v1, p1, v2, p2}, Lp3/o;-><init>(Lg3/d;Lg3/i;ZI)V

    iget-object p0, p0, Lo3/l;->b:Ljava/lang/Object;

    check-cast p0, Lr3/a;

    invoke-virtual {p0, v0}, Lr3/a;->a(Ljava/lang/Runnable;)V

    return-void
.end method
