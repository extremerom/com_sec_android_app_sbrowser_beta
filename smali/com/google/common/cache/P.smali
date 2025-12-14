.class public final Lcom/google/common/cache/P;
.super Ljava/util/AbstractMap;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/ConcurrentMap;


# static fields
.field public static final r:Ljava/util/logging/Logger;

.field public static final s:Lcom/google/common/cache/e;

.field public static final t:Lcom/google/common/cache/f;


# instance fields
.field public final a:I

.field public final b:I

.field public final c:[Lcom/google/common/cache/y;

.field public final d:I

.field public final e:Lcom/google/common/base/n;

.field public final f:Lcom/google/common/base/n;

.field public final g:Lcom/google/common/cache/D;

.field public final h:Lcom/google/common/cache/D;

.field public final i:J

.field public final j:Lcom/google/common/cache/c;

.field public final k:Ljava/util/AbstractQueue;

.field public final l:Lcom/google/common/cache/b;

.field public final m:Lcom/google/common/base/C;

.field public final n:Lcom/google/common/cache/s;

.field public o:Lcom/google/common/cache/u;

.field public p:Lcom/google/common/cache/J;

.field public q:Lcom/google/common/cache/u;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/google/common/cache/P;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/google/common/cache/P;->r:Ljava/util/logging/Logger;

    new-instance v0, Lcom/google/common/cache/e;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/common/cache/P;->s:Lcom/google/common/cache/e;

    new-instance v0, Lcom/google/common/cache/f;

    invoke-direct {v0}, Lcom/google/common/cache/f;-><init>()V

    sput-object v0, Lcom/google/common/cache/P;->t:Lcom/google/common/cache/f;

    return-void
.end method

.method public constructor <init>(Lcom/google/common/cache/d;)V
    .locals 18

    move-object/from16 v6, p0

    invoke-direct/range {p0 .. p0}, Ljava/util/AbstractMap;-><init>()V

    const/4 v0, 0x4

    const/high16 v1, 0x10000

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, v6, Lcom/google/common/cache/P;->d:I

    sget-object v1, Lcom/google/common/cache/D;->STRONG:Lcom/google/common/cache/D;

    invoke-static {v1}, Lcom/google/common/base/C;->m(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object v1, v6, Lcom/google/common/cache/P;->g:Lcom/google/common/cache/D;

    invoke-static {v1}, Lcom/google/common/base/C;->m(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object v1, v6, Lcom/google/common/cache/P;->h:Lcom/google/common/cache/D;

    invoke-static {v1}, Lcom/google/common/base/C;->m(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1}, Lcom/google/common/cache/D;->a()Lcom/google/common/base/n;

    move-result-object v2

    invoke-static {v2}, Lcom/google/common/base/C;->m(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object v2, v6, Lcom/google/common/cache/P;->e:Lcom/google/common/base/n;

    invoke-static {v1}, Lcom/google/common/base/C;->m(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1}, Lcom/google/common/cache/D;->a()Lcom/google/common/base/n;

    move-result-object v2

    invoke-static {v2}, Lcom/google/common/base/C;->m(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object v2, v6, Lcom/google/common/cache/P;->f:Lcom/google/common/base/n;

    move-object/from16 v2, p1

    iget-wide v2, v2, Lcom/google/common/cache/d;->a:J

    iput-wide v2, v6, Lcom/google/common/cache/P;->i:J

    sget-object v4, Lcom/google/common/cache/c;->INSTANCE:Lcom/google/common/cache/c;

    invoke-static {v4}, Lcom/google/common/base/C;->m(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object v4, v6, Lcom/google/common/cache/P;->j:Lcom/google/common/cache/c;

    sget-object v4, Lcom/google/common/cache/b;->INSTANCE:Lcom/google/common/cache/b;

    invoke-static {v4}, Lcom/google/common/base/C;->m(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object v4, v6, Lcom/google/common/cache/P;->l:Lcom/google/common/cache/b;

    sget-object v4, Lcom/google/common/cache/P;->t:Lcom/google/common/cache/f;

    iput-object v4, v6, Lcom/google/common/cache/P;->k:Ljava/util/AbstractQueue;

    sget-object v4, Lcom/google/common/cache/d;->c:Lcom/google/common/base/B;

    iput-object v4, v6, Lcom/google/common/cache/P;->m:Lcom/google/common/base/C;

    invoke-virtual/range {p0 .. p0}, Lcom/google/common/cache/P;->b()Z

    move-result v4

    const/4 v5, 0x1

    const/4 v7, 0x0

    sget-object v8, Lcom/google/common/cache/D;->WEAK:Lcom/google/common/cache/D;

    if-ne v1, v8, :cond_0

    goto :goto_0

    :cond_0
    move v0, v7

    :goto_0
    or-int/2addr v0, v4

    sget-object v1, Lcom/google/common/cache/s;->factories:[Lcom/google/common/cache/s;

    aget-object v0, v1, v0

    iput-object v0, v6, Lcom/google/common/cache/P;->n:Lcom/google/common/cache/s;

    const/16 v0, 0x10

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-virtual/range {p0 .. p0}, Lcom/google/common/cache/P;->b()Z

    move-result v1

    if-eqz v1, :cond_1

    int-to-long v0, v0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int v0, v0

    :cond_1
    move v1, v5

    move v2, v7

    :goto_1
    iget v3, v6, Lcom/google/common/cache/P;->d:I

    if-ge v1, v3, :cond_3

    invoke-virtual/range {p0 .. p0}, Lcom/google/common/cache/P;->b()Z

    move-result v3

    if-eqz v3, :cond_2

    int-to-long v3, v1

    const-wide/16 v8, 0x14

    mul-long/2addr v3, v8

    iget-wide v8, v6, Lcom/google/common/cache/P;->i:J

    cmp-long v3, v3, v8

    if-gtz v3, :cond_3

    :cond_2
    add-int/lit8 v2, v2, 0x1

    shl-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    rsub-int/lit8 v2, v2, 0x20

    iput v2, v6, Lcom/google/common/cache/P;->b:I

    add-int/lit8 v2, v1, -0x1

    iput v2, v6, Lcom/google/common/cache/P;->a:I

    new-array v2, v1, [Lcom/google/common/cache/y;

    iput-object v2, v6, Lcom/google/common/cache/P;->c:[Lcom/google/common/cache/y;

    div-int v2, v0, v1

    mul-int v3, v2, v1

    if-ge v3, v0, :cond_4

    add-int/lit8 v2, v2, 0x1

    :cond_4
    move v8, v5

    :goto_2
    if-ge v8, v2, :cond_5

    shl-int/lit8 v8, v8, 0x1

    goto :goto_2

    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/google/common/cache/P;->b()Z

    move-result v0

    sget-object v9, Lcom/google/common/cache/d;->b:Lcom/google/common/base/z;

    if-eqz v0, :cond_7

    iget-wide v2, v6, Lcom/google/common/cache/P;->i:J

    int-to-long v0, v1

    div-long v4, v2, v0

    const-wide/16 v10, 0x1

    add-long/2addr v4, v10

    rem-long v12, v2, v0

    :goto_3
    iget-object v14, v6, Lcom/google/common/cache/P;->c:[Lcom/google/common/cache/y;

    array-length v0, v14

    if-ge v7, v0, :cond_8

    int-to-long v0, v7

    cmp-long v0, v0, v12

    if-nez v0, :cond_6

    sub-long/2addr v4, v10

    :cond_6
    move-wide v15, v4

    iget-object v5, v9, Lcom/google/common/base/z;->a:LE5/v;

    new-instance v17, Lcom/google/common/cache/y;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move v2, v8

    move-wide v3, v15

    invoke-direct/range {v0 .. v5}, Lcom/google/common/cache/y;-><init>(Lcom/google/common/cache/P;IJLE5/v;)V

    aput-object v17, v14, v7

    add-int/lit8 v7, v7, 0x1

    move-wide v4, v15

    goto :goto_3

    :cond_7
    :goto_4
    iget-object v10, v6, Lcom/google/common/cache/P;->c:[Lcom/google/common/cache/y;

    array-length v0, v10

    if-ge v7, v0, :cond_8

    iget-object v5, v9, Lcom/google/common/base/z;->a:LE5/v;

    new-instance v11, Lcom/google/common/cache/y;

    const-wide/16 v3, -0x1

    move-object v0, v11

    move-object/from16 v1, p0

    move v2, v8

    invoke-direct/range {v0 .. v5}, Lcom/google/common/cache/y;-><init>(Lcom/google/common/cache/P;IJLE5/v;)V

    aput-object v11, v10, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    :cond_8
    return-void
.end method

.method public static a(Ljava/util/AbstractCollection;)Ljava/util/ArrayList;
    .locals 2

    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method


# virtual methods
.method public final b()Z
    .locals 4

    iget-wide v0, p0, Lcom/google/common/cache/P;->i:J

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-ltz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final c(Ljava/lang/Object;)I
    .locals 1

    iget-object p0, p0, Lcom/google/common/cache/P;->e:Lcom/google/common/base/n;

    if-nez p1, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/common/base/n;->b(Ljava/lang/Object;)I

    move-result p0

    :goto_0
    shl-int/lit8 p1, p0, 0xf

    xor-int/lit16 p1, p1, -0x3283

    add-int/2addr p0, p1

    ushr-int/lit8 p1, p0, 0xa

    xor-int/2addr p0, p1

    shl-int/lit8 p1, p0, 0x3

    add-int/2addr p0, p1

    ushr-int/lit8 p1, p0, 0x6

    xor-int/2addr p0, p1

    shl-int/lit8 p1, p0, 0x2

    shl-int/lit8 v0, p0, 0xe

    add-int/2addr p1, v0

    add-int/2addr p1, p0

    ushr-int/lit8 p0, p1, 0x10

    xor-int/2addr p0, p1

    return p0
.end method

.method public final clear()V
    .locals 11

    iget-object p0, p0, Lcom/google/common/cache/P;->c:[Lcom/google/common/cache/y;

    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_b

    aget-object v3, p0, v2

    iget v4, v3, Lcom/google/common/cache/y;->b:I

    if-eqz v4, :cond_a

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    iget-object v4, v3, Lcom/google/common/cache/y;->a:Lcom/google/common/cache/P;

    iget-object v4, v4, Lcom/google/common/cache/P;->m:Lcom/google/common/base/C;

    invoke-virtual {v4}, Lcom/google/common/base/C;->t()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/google/common/cache/y;->s(J)V

    iget-object v4, v3, Lcom/google/common/cache/y;->f:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    move v5, v1

    :goto_1
    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v6

    if-ge v5, v6, :cond_4

    invoke-virtual {v4, v5}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/common/cache/Q;

    :goto_2
    if-eqz v6, :cond_3

    invoke-interface {v6}, Lcom/google/common/cache/Q;->d()Lcom/google/common/cache/I;

    move-result-object v7

    invoke-interface {v7}, Lcom/google/common/cache/I;->b()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v6}, Lcom/google/common/cache/Q;->getKey()Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v6}, Lcom/google/common/cache/Q;->d()Lcom/google/common/cache/I;

    move-result-object v8

    invoke-interface {v8}, Lcom/google/common/cache/I;->get()Ljava/lang/Object;

    move-result-object v8

    if-eqz v7, :cond_1

    if-nez v8, :cond_0

    goto :goto_3

    :cond_0
    sget-object v9, Lcom/google/common/cache/X;->EXPLICIT:Lcom/google/common/cache/X;

    goto :goto_4

    :catchall_0
    move-exception p0

    goto/16 :goto_a

    :cond_1
    :goto_3
    sget-object v9, Lcom/google/common/cache/X;->COLLECTED:Lcom/google/common/cache/X;

    :goto_4
    invoke-interface {v6}, Lcom/google/common/cache/Q;->h()I

    invoke-interface {v6}, Lcom/google/common/cache/Q;->d()Lcom/google/common/cache/I;

    move-result-object v10

    invoke-interface {v10}, Lcom/google/common/cache/I;->c()I

    move-result v10

    invoke-virtual {v3, v7, v8, v10, v9}, Lcom/google/common/cache/y;->d(Ljava/lang/Object;Ljava/lang/Object;ILcom/google/common/cache/X;)V

    :cond_2
    invoke-interface {v6}, Lcom/google/common/cache/Q;->n()Lcom/google/common/cache/Q;

    move-result-object v6

    goto :goto_2

    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_4
    move v5, v1

    :goto_5
    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v6

    if-ge v5, v6, :cond_5

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    :cond_5
    iget-object v4, v3, Lcom/google/common/cache/y;->a:Lcom/google/common/cache/P;

    iget-object v5, v4, Lcom/google/common/cache/P;->g:Lcom/google/common/cache/D;

    sget-object v6, Lcom/google/common/cache/D;->STRONG:Lcom/google/common/cache/D;

    const/4 v7, 0x1

    if-eq v5, v6, :cond_6

    move v5, v7

    goto :goto_6

    :cond_6
    move v5, v1

    :goto_6
    if-eqz v5, :cond_7

    :goto_7
    iget-object v5, v3, Lcom/google/common/cache/y;->h:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v5}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v5

    if-eqz v5, :cond_7

    goto :goto_7

    :cond_7
    iget-object v4, v4, Lcom/google/common/cache/P;->h:Lcom/google/common/cache/D;

    sget-object v5, Lcom/google/common/cache/D;->STRONG:Lcom/google/common/cache/D;

    if-eq v4, v5, :cond_8

    move v4, v7

    goto :goto_8

    :cond_8
    move v4, v1

    :goto_8
    if-eqz v4, :cond_9

    :goto_9
    iget-object v4, v3, Lcom/google/common/cache/y;->i:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v4}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v4

    if-eqz v4, :cond_9

    goto :goto_9

    :cond_9
    iget-object v4, v3, Lcom/google/common/cache/y;->l:Ljava/util/AbstractQueue;

    invoke-interface {v4}, Ljava/util/Collection;->clear()V

    iget-object v4, v3, Lcom/google/common/cache/y;->m:Ljava/util/AbstractQueue;

    invoke-interface {v4}, Ljava/util/Collection;->clear()V

    iget-object v4, v3, Lcom/google/common/cache/y;->k:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v4, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    iget v4, v3, Lcom/google/common/cache/y;->d:I

    add-int/2addr v4, v7

    iput v4, v3, Lcom/google/common/cache/y;->d:I

    iput v1, v3, Lcom/google/common/cache/y;->b:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    invoke-virtual {v3}, Lcom/google/common/cache/y;->t()V

    goto :goto_b

    :goto_a
    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    invoke-virtual {v3}, Lcom/google/common/cache/y;->t()V

    throw p0

    :cond_a
    :goto_b
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_b
    return-void
.end method

.method public final containsKey(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/common/cache/P;->c(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/common/cache/P;->d(I)Lcom/google/common/cache/y;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_0
    iget v2, p0, Lcom/google/common/cache/y;->b:I

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/common/cache/y;->a:Lcom/google/common/cache/P;

    iget-object v2, v2, Lcom/google/common/cache/P;->m:Lcom/google/common/base/C;

    invoke-virtual {v2}, Lcom/google/common/base/C;->t()J

    invoke-virtual {p0, v1, p1}, Lcom/google/common/cache/y;->h(ILjava/lang/Object;)Lcom/google/common/cache/Q;

    move-result-object p1

    if-nez p1, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/google/common/cache/y;->a:Lcom/google/common/cache/P;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    if-nez p1, :cond_3

    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/google/common/cache/y;->k()V

    goto :goto_2

    :cond_3
    :try_start_1
    invoke-interface {p1}, Lcom/google/common/cache/Q;->d()Lcom/google/common/cache/I;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/common/cache/I;->get()Ljava/lang/Object;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_3

    :goto_2
    return v0

    :goto_3
    invoke-virtual {p0}, Lcom/google/common/cache/y;->k()V

    throw p1
.end method

.method public final containsValue(Ljava/lang/Object;)Z
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return v2

    :cond_0
    iget-object v3, v0, Lcom/google/common/cache/P;->m:Lcom/google/common/base/C;

    invoke-virtual {v3}, Lcom/google/common/base/C;->t()J

    move-result-wide v3

    iget-object v5, v0, Lcom/google/common/cache/P;->c:[Lcom/google/common/cache/y;

    const-wide/16 v6, -0x1

    move v8, v2

    :goto_0
    const/4 v9, 0x3

    if-ge v8, v9, :cond_6

    array-length v9, v5

    const-wide/16 v10, 0x0

    move v12, v2

    :goto_1
    if-ge v12, v9, :cond_4

    aget-object v13, v5, v12

    iget v14, v13, Lcom/google/common/cache/y;->b:I

    iget-object v14, v13, Lcom/google/common/cache/y;->f:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    move v15, v2

    :goto_2
    invoke-virtual {v14}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v2

    if-ge v15, v2, :cond_3

    invoke-virtual {v14, v15}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/common/cache/Q;

    :goto_3
    if-eqz v2, :cond_2

    move-object/from16 v16, v5

    invoke-virtual {v13, v2, v3, v4}, Lcom/google/common/cache/y;->i(Lcom/google/common/cache/Q;J)Ljava/lang/Object;

    move-result-object v5

    move-wide/from16 v17, v3

    if-eqz v5, :cond_1

    iget-object v3, v0, Lcom/google/common/cache/P;->f:Lcom/google/common/base/n;

    invoke-virtual {v3, v1, v5}, Lcom/google/common/base/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    invoke-interface {v2}, Lcom/google/common/cache/Q;->n()Lcom/google/common/cache/Q;

    move-result-object v2

    move-object/from16 v5, v16

    move-wide/from16 v3, v17

    goto :goto_3

    :cond_2
    move-wide/from16 v17, v3

    move-object/from16 v16, v5

    add-int/lit8 v15, v15, 0x1

    goto :goto_2

    :cond_3
    move-wide/from16 v17, v3

    move-object/from16 v16, v5

    iget v2, v13, Lcom/google/common/cache/y;->d:I

    int-to-long v2, v2

    add-long/2addr v10, v2

    add-int/lit8 v12, v12, 0x1

    move-wide/from16 v3, v17

    const/4 v2, 0x0

    goto :goto_1

    :cond_4
    move-wide/from16 v17, v3

    move-object/from16 v16, v5

    cmp-long v2, v10, v6

    if-nez v2, :cond_5

    const/4 v0, 0x0

    goto :goto_4

    :cond_5
    add-int/lit8 v8, v8, 0x1

    move-wide v6, v10

    move-object/from16 v5, v16

    move-wide/from16 v3, v17

    const/4 v2, 0x0

    goto :goto_0

    :cond_6
    move v0, v2

    :goto_4
    return v0
.end method

.method public final d(I)Lcom/google/common/cache/y;
    .locals 1

    iget v0, p0, Lcom/google/common/cache/P;->b:I

    ushr-int/2addr p1, v0

    iget v0, p0, Lcom/google/common/cache/P;->a:I

    and-int/2addr p1, v0

    iget-object p0, p0, Lcom/google/common/cache/P;->c:[Lcom/google/common/cache/y;

    aget-object p0, p0, p1

    return-object p0
.end method

.method public final entrySet()Ljava/util/Set;
    .locals 2

    iget-object v0, p0, Lcom/google/common/cache/P;->q:Lcom/google/common/cache/u;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/google/common/cache/u;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/common/cache/u;-><init>(Lcom/google/common/cache/P;I)V

    iput-object v0, p0, Lcom/google/common/cache/P;->q:Lcom/google/common/cache/u;

    :goto_0
    return-object v0
.end method

.method public final get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/common/cache/P;->c(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/common/cache/P;->d(I)Lcom/google/common/cache/y;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_0
    iget v2, p0, Lcom/google/common/cache/y;->b:I

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/common/cache/y;->a:Lcom/google/common/cache/P;

    iget-object v2, v2, Lcom/google/common/cache/P;->m:Lcom/google/common/base/C;

    invoke-virtual {v2}, Lcom/google/common/base/C;->t()J

    move-result-wide v2

    invoke-virtual {p0, v1, p1}, Lcom/google/common/cache/y;->h(ILjava/lang/Object;)Lcom/google/common/cache/Q;

    move-result-object p1

    if-nez p1, :cond_1

    move-object p1, v0

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/google/common/cache/y;->a:Lcom/google/common/cache/P;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    if-nez p1, :cond_3

    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/google/common/cache/y;->k()V

    goto :goto_2

    :cond_3
    :try_start_1
    invoke-interface {p1}, Lcom/google/common/cache/Q;->d()Lcom/google/common/cache/I;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/common/cache/I;->get()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {p0, p1, v2, v3}, Lcom/google/common/cache/y;->n(Lcom/google/common/cache/Q;J)V

    invoke-interface {p1}, Lcom/google/common/cache/Q;->getKey()Ljava/lang/Object;

    iget-object p1, p0, Lcom/google/common/cache/y;->a:Lcom/google/common/cache/P;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, p0, Lcom/google/common/cache/y;->a:Lcom/google/common/cache/P;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {p0}, Lcom/google/common/cache/y;->k()V

    move-object v0, v1

    goto :goto_2

    :catchall_0
    move-exception p1

    goto :goto_3

    :cond_4
    :try_start_2
    invoke-virtual {p0}, Lcom/google/common/cache/y;->w()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :goto_2
    return-object v0

    :goto_3
    invoke-virtual {p0}, Lcom/google/common/cache/y;->k()V

    throw p1
.end method

.method public final getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/common/cache/P;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_0

    move-object p2, p0

    :cond_0
    return-object p2
.end method

.method public final isEmpty()Z
    .locals 10

    iget-object p0, p0, Lcom/google/common/cache/P;->c:[Lcom/google/common/cache/y;

    array-length v0, p0

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    move-wide v5, v1

    move v4, v3

    :goto_0
    if-ge v4, v0, :cond_1

    aget-object v7, p0, v4

    iget v8, v7, Lcom/google/common/cache/y;->b:I

    if-eqz v8, :cond_0

    return v3

    :cond_0
    iget v7, v7, Lcom/google/common/cache/y;->d:I

    int-to-long v7, v7

    add-long/2addr v5, v7

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    cmp-long v0, v5, v1

    const/4 v4, 0x1

    if-eqz v0, :cond_5

    array-length v0, p0

    move v7, v3

    :goto_1
    if-ge v7, v0, :cond_3

    aget-object v8, p0, v7

    iget v9, v8, Lcom/google/common/cache/y;->b:I

    if-eqz v9, :cond_2

    return v3

    :cond_2
    iget v8, v8, Lcom/google/common/cache/y;->d:I

    int-to-long v8, v8

    sub-long/2addr v5, v8

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_3
    cmp-long p0, v5, v1

    if-nez p0, :cond_4

    move v3, v4

    :cond_4
    return v3

    :cond_5
    return v4
.end method

.method public final keySet()Ljava/util/Set;
    .locals 2

    iget-object v0, p0, Lcom/google/common/cache/P;->o:Lcom/google/common/cache/u;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/google/common/cache/u;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/google/common/cache/u;-><init>(Lcom/google/common/cache/P;I)V

    iput-object v0, p0, Lcom/google/common/cache/P;->o:Lcom/google/common/cache/u;

    :goto_0
    return-object v0
.end method

.method public final put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0, p1}, Lcom/google/common/cache/P;->c(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/common/cache/P;->d(I)Lcom/google/common/cache/y;

    move-result-object p0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, p2, v1}, Lcom/google/common/cache/y;->l(ILjava/lang/Object;Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final putAll(Ljava/util/Map;)V
    .locals 2

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/google/common/cache/P;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0, p1}, Lcom/google/common/cache/P;->c(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/common/cache/P;->d(I)Lcom/google/common/cache/y;

    move-result-object p0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, p1, p2, v1}, Lcom/google/common/cache/y;->l(ILjava/lang/Object;Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/common/cache/P;->c(Ljava/lang/Object;)I

    move-result v5

    invoke-virtual {p0, v5}, Lcom/google/common/cache/P;->d(I)Lcom/google/common/cache/y;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    iget-object v1, p0, Lcom/google/common/cache/y;->a:Lcom/google/common/cache/P;

    iget-object v1, v1, Lcom/google/common/cache/P;->m:Lcom/google/common/base/C;

    invoke-virtual {v1}, Lcom/google/common/base/C;->t()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lcom/google/common/cache/y;->s(J)V

    iget-object v9, p0, Lcom/google/common/cache/y;->f:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-virtual {v9}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    and-int v10, v5, v1

    invoke-virtual {v9, v10}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/google/common/cache/Q;

    move-object v3, v2

    :goto_0
    if-eqz v3, :cond_2

    invoke-interface {v3}, Lcom/google/common/cache/Q;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3}, Lcom/google/common/cache/Q;->h()I

    move-result v1

    if-ne v1, v5, :cond_3

    if-eqz v4, :cond_3

    iget-object v1, p0, Lcom/google/common/cache/y;->a:Lcom/google/common/cache/P;

    iget-object v1, v1, Lcom/google/common/cache/P;->e:Lcom/google/common/base/n;

    invoke-virtual {v1, p1, v4}, Lcom/google/common/base/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v3}, Lcom/google/common/cache/Q;->d()Lcom/google/common/cache/I;

    move-result-object v7

    invoke-interface {v7}, Lcom/google/common/cache/I;->get()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_1

    sget-object v0, Lcom/google/common/cache/X;->EXPLICIT:Lcom/google/common/cache/X;

    :goto_1
    move-object v8, v0

    goto :goto_2

    :catchall_0
    move-exception p1

    goto :goto_4

    :cond_1
    invoke-interface {v7}, Lcom/google/common/cache/I;->b()Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object v0, Lcom/google/common/cache/X;->COLLECTED:Lcom/google/common/cache/X;

    goto :goto_1

    :goto_2
    iget v0, p0, Lcom/google/common/cache/y;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/common/cache/y;->d:I

    move-object v1, p0

    move-object v6, p1

    invoke-virtual/range {v1 .. v8}, Lcom/google/common/cache/y;->r(Lcom/google/common/cache/Q;Lcom/google/common/cache/Q;Ljava/lang/Object;ILjava/lang/Object;Lcom/google/common/cache/I;Lcom/google/common/cache/X;)Lcom/google/common/cache/Q;

    move-result-object v0

    iget v1, p0, Lcom/google/common/cache/y;->b:I

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v9, v10, v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    iput v1, p0, Lcom/google/common/cache/y;->b:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    invoke-virtual {p0}, Lcom/google/common/cache/y;->t()V

    move-object v0, p1

    goto :goto_3

    :cond_2
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    invoke-virtual {p0}, Lcom/google/common/cache/y;->t()V

    goto :goto_3

    :cond_3
    :try_start_1
    invoke-interface {v3}, Lcom/google/common/cache/Q;->n()Lcom/google/common/cache/Q;

    move-result-object v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :goto_3
    return-object v0

    :goto_4
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    invoke-virtual {p0}, Lcom/google/common/cache/y;->t()V

    throw p1
.end method

.method public final remove(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 12

    const/4 v0, 0x0

    if-eqz p1, :cond_4

    if-nez p2, :cond_0

    goto/16 :goto_4

    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/common/cache/P;->c(Ljava/lang/Object;)I

    move-result v5

    invoke-virtual {p0, v5}, Lcom/google/common/cache/P;->d(I)Lcom/google/common/cache/y;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    iget-object v1, p0, Lcom/google/common/cache/y;->a:Lcom/google/common/cache/P;

    iget-object v1, v1, Lcom/google/common/cache/P;->m:Lcom/google/common/base/C;

    invoke-virtual {v1}, Lcom/google/common/base/C;->t()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lcom/google/common/cache/y;->s(J)V

    iget-object v9, p0, Lcom/google/common/cache/y;->f:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-virtual {v9}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v1

    const/4 v10, 0x1

    sub-int/2addr v1, v10

    and-int v11, v5, v1

    invoke-virtual {v9, v11}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/google/common/cache/Q;

    move-object v3, v2

    :goto_0
    if-eqz v3, :cond_2

    invoke-interface {v3}, Lcom/google/common/cache/Q;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3}, Lcom/google/common/cache/Q;->h()I

    move-result v1

    if-ne v1, v5, :cond_3

    if-eqz v4, :cond_3

    iget-object v1, p0, Lcom/google/common/cache/y;->a:Lcom/google/common/cache/P;

    iget-object v1, v1, Lcom/google/common/cache/P;->e:Lcom/google/common/base/n;

    invoke-virtual {v1, p1, v4}, Lcom/google/common/base/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v3}, Lcom/google/common/cache/Q;->d()Lcom/google/common/cache/I;

    move-result-object v7

    invoke-interface {v7}, Lcom/google/common/cache/I;->get()Ljava/lang/Object;

    move-result-object v6

    iget-object p1, p0, Lcom/google/common/cache/y;->a:Lcom/google/common/cache/P;

    iget-object p1, p1, Lcom/google/common/cache/P;->f:Lcom/google/common/base/n;

    invoke-virtual {p1, p2, v6}, Lcom/google/common/base/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    sget-object p1, Lcom/google/common/cache/X;->EXPLICIT:Lcom/google/common/cache/X;

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_3

    :cond_1
    if-nez v6, :cond_2

    invoke-interface {v7}, Lcom/google/common/cache/I;->b()Z

    move-result p1

    if-eqz p1, :cond_2

    sget-object p1, Lcom/google/common/cache/X;->COLLECTED:Lcom/google/common/cache/X;

    :goto_1
    iget p2, p0, Lcom/google/common/cache/y;->d:I

    add-int/2addr p2, v10

    iput p2, p0, Lcom/google/common/cache/y;->d:I

    move-object v1, p0

    move-object v8, p1

    invoke-virtual/range {v1 .. v8}, Lcom/google/common/cache/y;->r(Lcom/google/common/cache/Q;Lcom/google/common/cache/Q;Ljava/lang/Object;ILjava/lang/Object;Lcom/google/common/cache/I;Lcom/google/common/cache/X;)Lcom/google/common/cache/Q;

    move-result-object p2

    iget v1, p0, Lcom/google/common/cache/y;->b:I

    sub-int/2addr v1, v10

    invoke-virtual {v9, v11, p2}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    iput v1, p0, Lcom/google/common/cache/y;->b:I

    sget-object p2, Lcom/google/common/cache/X;->EXPLICIT:Lcom/google/common/cache/X;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne p1, p2, :cond_2

    move v0, v10

    :cond_2
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    invoke-virtual {p0}, Lcom/google/common/cache/y;->t()V

    goto :goto_2

    :cond_3
    :try_start_1
    invoke-interface {v3}, Lcom/google/common/cache/Q;->n()Lcom/google/common/cache/Q;

    move-result-object v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :goto_2
    return v0

    :goto_3
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    invoke-virtual {p0}, Lcom/google/common/cache/y;->t()V

    throw p1

    :cond_4
    :goto_4
    return v0
.end method

.method public final replace(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0, p1}, Lcom/google/common/cache/P;->c(Ljava/lang/Object;)I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/google/common/cache/P;->d(I)Lcom/google/common/cache/y;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    iget-object v0, p0, Lcom/google/common/cache/y;->a:Lcom/google/common/cache/P;

    iget-object v0, v0, Lcom/google/common/cache/P;->m:Lcom/google/common/base/C;

    invoke-virtual {v0}, Lcom/google/common/base/C;->t()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/common/cache/y;->s(J)V

    iget-object v8, p0, Lcom/google/common/cache/y;->f:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-virtual {v8}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    and-int v9, v4, v2

    invoke-virtual {v8, v9}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/common/cache/Q;

    move-object v3, v2

    :goto_0
    const/4 v10, 0x0

    if-eqz v3, :cond_0

    invoke-interface {v3}, Lcom/google/common/cache/Q;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v3}, Lcom/google/common/cache/Q;->h()I

    move-result v6

    if-ne v6, v4, :cond_2

    if-eqz v5, :cond_2

    iget-object v6, p0, Lcom/google/common/cache/y;->a:Lcom/google/common/cache/P;

    iget-object v6, v6, Lcom/google/common/cache/P;->e:Lcom/google/common/base/n;

    invoke-virtual {v6, p1, v5}, Lcom/google/common/base/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v3}, Lcom/google/common/cache/Q;->d()Lcom/google/common/cache/I;

    move-result-object v6

    invoke-interface {v6}, Lcom/google/common/cache/I;->get()Ljava/lang/Object;

    move-result-object v7

    if-nez v7, :cond_1

    invoke-interface {v6}, Lcom/google/common/cache/I;->b()Z

    move-result p1

    if-eqz p1, :cond_0

    iget p1, p0, Lcom/google/common/cache/y;->d:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/common/cache/y;->d:I

    sget-object p1, Lcom/google/common/cache/X;->COLLECTED:Lcom/google/common/cache/X;

    move-object v0, p0

    move-object v1, v2

    move-object v2, v3

    move-object v3, v5

    move-object v5, v7

    move-object v7, p1

    invoke-virtual/range {v0 .. v7}, Lcom/google/common/cache/y;->r(Lcom/google/common/cache/Q;Lcom/google/common/cache/Q;Ljava/lang/Object;ILjava/lang/Object;Lcom/google/common/cache/I;Lcom/google/common/cache/X;)Lcom/google/common/cache/Q;

    move-result-object p1

    iget p2, p0, Lcom/google/common/cache/y;->b:I

    add-int/lit8 p2, p2, -0x1

    invoke-virtual {v8, v9, p1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    iput p2, p0, Lcom/google/common/cache/y;->b:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_3

    :cond_0
    :goto_1
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    invoke-virtual {p0}, Lcom/google/common/cache/y;->t()V

    goto :goto_2

    :cond_1
    :try_start_1
    iget v2, p0, Lcom/google/common/cache/y;->d:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/google/common/cache/y;->d:I

    invoke-interface {v6}, Lcom/google/common/cache/I;->c()I

    move-result v2

    sget-object v4, Lcom/google/common/cache/X;->REPLACED:Lcom/google/common/cache/X;

    invoke-virtual {p0, p1, v7, v2, v4}, Lcom/google/common/cache/y;->d(Ljava/lang/Object;Ljava/lang/Object;ILcom/google/common/cache/X;)V

    invoke-virtual {p0, v3, p2, v0, v1}, Lcom/google/common/cache/y;->u(Lcom/google/common/cache/Q;Ljava/lang/Object;J)V

    invoke-virtual {p0, v3}, Lcom/google/common/cache/y;->e(Lcom/google/common/cache/Q;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    invoke-virtual {p0}, Lcom/google/common/cache/y;->t()V

    move-object v10, v7

    goto :goto_2

    :cond_2
    :try_start_2
    invoke-interface {v3}, Lcom/google/common/cache/Q;->n()Lcom/google/common/cache/Q;

    move-result-object v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :goto_2
    return-object v10

    :goto_3
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    invoke-virtual {p0}, Lcom/google/common/cache/y;->t()V

    throw p1
.end method

.method public final replace(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 12

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    if-nez p2, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/common/cache/P;->c(Ljava/lang/Object;)I

    move-result v5

    invoke-virtual {p0, v5}, Lcom/google/common/cache/P;->d(I)Lcom/google/common/cache/y;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    iget-object v1, p0, Lcom/google/common/cache/y;->a:Lcom/google/common/cache/P;

    iget-object v1, v1, Lcom/google/common/cache/P;->m:Lcom/google/common/base/C;

    invoke-virtual {v1}, Lcom/google/common/base/C;->t()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lcom/google/common/cache/y;->s(J)V

    iget-object v9, p0, Lcom/google/common/cache/y;->f:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-virtual {v9}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v3

    const/4 v10, 0x1

    sub-int/2addr v3, v10

    and-int v11, v5, v3

    invoke-virtual {v9, v11}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/common/cache/Q;

    move-object v4, v3

    :goto_0
    if-eqz v4, :cond_1

    invoke-interface {v4}, Lcom/google/common/cache/Q;->getKey()Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v4}, Lcom/google/common/cache/Q;->h()I

    move-result v7

    if-ne v7, v5, :cond_4

    if-eqz v6, :cond_4

    iget-object v7, p0, Lcom/google/common/cache/y;->a:Lcom/google/common/cache/P;

    iget-object v7, v7, Lcom/google/common/cache/P;->e:Lcom/google/common/base/n;

    invoke-virtual {v7, p1, v6}, Lcom/google/common/base/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v4}, Lcom/google/common/cache/Q;->d()Lcom/google/common/cache/I;

    move-result-object v7

    invoke-interface {v7}, Lcom/google/common/cache/I;->get()Ljava/lang/Object;

    move-result-object v8

    if-nez v8, :cond_2

    invoke-interface {v7}, Lcom/google/common/cache/I;->b()Z

    move-result p1

    if-eqz p1, :cond_1

    iget p1, p0, Lcom/google/common/cache/y;->d:I

    add-int/2addr p1, v10

    iput p1, p0, Lcom/google/common/cache/y;->d:I

    sget-object p1, Lcom/google/common/cache/X;->COLLECTED:Lcom/google/common/cache/X;

    move-object v1, p0

    move-object v2, v3

    move-object v3, v4

    move-object v4, v6

    move-object v6, v8

    move-object v8, p1

    invoke-virtual/range {v1 .. v8}, Lcom/google/common/cache/y;->r(Lcom/google/common/cache/Q;Lcom/google/common/cache/Q;Ljava/lang/Object;ILjava/lang/Object;Lcom/google/common/cache/I;Lcom/google/common/cache/X;)Lcom/google/common/cache/Q;

    move-result-object p1

    iget p2, p0, Lcom/google/common/cache/y;->b:I

    sub-int/2addr p2, v10

    invoke-virtual {v9, v11, p1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    iput p2, p0, Lcom/google/common/cache/y;->b:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_3

    :cond_1
    :goto_1
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    invoke-virtual {p0}, Lcom/google/common/cache/y;->t()V

    goto :goto_2

    :cond_2
    :try_start_1
    iget-object v3, p0, Lcom/google/common/cache/y;->a:Lcom/google/common/cache/P;

    iget-object v3, v3, Lcom/google/common/cache/P;->f:Lcom/google/common/base/n;

    invoke-virtual {v3, p2, v8}, Lcom/google/common/base/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    iget p2, p0, Lcom/google/common/cache/y;->d:I

    add-int/2addr p2, v10

    iput p2, p0, Lcom/google/common/cache/y;->d:I

    invoke-interface {v7}, Lcom/google/common/cache/I;->c()I

    move-result p2

    sget-object v0, Lcom/google/common/cache/X;->REPLACED:Lcom/google/common/cache/X;

    invoke-virtual {p0, p1, v8, p2, v0}, Lcom/google/common/cache/y;->d(Ljava/lang/Object;Ljava/lang/Object;ILcom/google/common/cache/X;)V

    invoke-virtual {p0, v4, p3, v1, v2}, Lcom/google/common/cache/y;->u(Lcom/google/common/cache/Q;Ljava/lang/Object;J)V

    invoke-virtual {p0, v4}, Lcom/google/common/cache/y;->e(Lcom/google/common/cache/Q;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    invoke-virtual {p0}, Lcom/google/common/cache/y;->t()V

    move v0, v10

    goto :goto_2

    :cond_3
    :try_start_2
    invoke-virtual {p0, v4, v1, v2}, Lcom/google/common/cache/y;->m(Lcom/google/common/cache/Q;J)V

    goto :goto_1

    :cond_4
    invoke-interface {v4}, Lcom/google/common/cache/Q;->n()Lcom/google/common/cache/Q;

    move-result-object v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :goto_2
    return v0

    :goto_3
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    invoke-virtual {p0}, Lcom/google/common/cache/y;->t()V

    throw p1
.end method

.method public final size()I
    .locals 7

    iget-object p0, p0, Lcom/google/common/cache/P;->c:[Lcom/google/common/cache/y;

    array-length v0, p0

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v0, :cond_0

    aget-object v5, p0, v4

    iget v5, v5, Lcom/google/common/cache/y;->b:I

    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    int-to-long v5, v5

    add-long/2addr v1, v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    const-wide/32 v3, 0x7fffffff

    cmp-long p0, v1, v3

    if-lez p0, :cond_1

    const p0, 0x7fffffff

    goto :goto_1

    :cond_1
    const-wide/32 v3, -0x80000000

    cmp-long p0, v1, v3

    if-gez p0, :cond_2

    const/high16 p0, -0x80000000

    goto :goto_1

    :cond_2
    long-to-int p0, v1

    :goto_1
    return p0
.end method

.method public final values()Ljava/util/Collection;
    .locals 2

    iget-object v0, p0, Lcom/google/common/cache/P;->p:Lcom/google/common/cache/J;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/google/common/cache/J;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/common/cache/J;-><init>(Ljava/util/AbstractMap;I)V

    iput-object v0, p0, Lcom/google/common/cache/P;->p:Lcom/google/common/cache/J;

    :goto_0
    return-object v0
.end method
