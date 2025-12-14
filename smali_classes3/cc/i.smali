.class public final Lcc/i;
.super Lic/l;
.source "SourceFile"


# instance fields
.field public A:Ljava/util/List;

.field public B:Lcc/g0;

.field public C:Ljava/util/List;

.field public d:I

.field public e:I

.field public f:I

.field public g:I

.field public h:Ljava/util/List;

.field public i:Ljava/util/List;

.field public j:Ljava/util/List;

.field public k:Ljava/util/List;

.field public l:Ljava/util/List;

.field public m:Ljava/util/List;

.field public n:Ljava/util/List;

.field public o:Ljava/util/List;

.field public p:Ljava/util/List;

.field public q:Ljava/util/List;

.field public r:Ljava/util/List;

.field public s:Ljava/util/List;

.field public t:I

.field public u:Lcc/T;

.field public v:I

.field public w:Ljava/util/List;

.field public x:Ljava/util/List;

.field public y:Ljava/util/List;

.field public z:Lcc/Z;


# direct methods
.method public static f()Lcc/i;
    .locals 2

    new-instance v0, Lcc/i;

    invoke-direct {v0}, Lic/l;-><init>()V

    const/4 v1, 0x6

    iput v1, v0, Lcc/i;->e:I

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcc/i;->h:Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcc/i;->i:Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcc/i;->j:Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcc/i;->k:Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcc/i;->l:Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcc/i;->m:Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcc/i;->n:Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcc/i;->o:Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcc/i;->p:Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcc/i;->q:Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcc/i;->r:Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcc/i;->s:Ljava/util/List;

    sget-object v1, Lcc/T;->t:Lcc/T;

    iput-object v1, v0, Lcc/i;->u:Lcc/T;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcc/i;->w:Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcc/i;->x:Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcc/i;->y:Ljava/util/List;

    sget-object v1, Lcc/Z;->g:Lcc/Z;

    iput-object v1, v0, Lcc/i;->z:Lcc/Z;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcc/i;->A:Ljava/util/List;

    sget-object v1, Lcc/g0;->e:Lcc/g0;

    iput-object v1, v0, Lcc/i;->B:Lcc/g0;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcc/i;->C:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public final a()Lic/b;
    .locals 1

    invoke-virtual {p0}, Lcc/i;->e()Lcc/k;

    move-result-object p0

    invoke-virtual {p0}, Lcc/k;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    new-instance p0, LI5/b;

    invoke-direct {p0}, LI5/b;-><init>()V

    throw p0
.end method

.method public final b(Lcom/google/crypto/tink/shaded/protobuf/i;Lic/g;)Lic/k;
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    sget-object v1, Lcc/k;->Y:Lcc/a;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lcc/k;

    invoke-direct {v1, p1, p2}, Lcc/k;-><init>(Lcom/google/crypto/tink/shaded/protobuf/i;Lic/g;)V
    :try_end_0
    .catch Lic/t; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0, v1}, Lcc/i;->g(Lcc/k;)V

    return-object p0

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    :try_start_1
    iget-object p2, p1, Lic/t;->a:Lic/b;

    check-cast p2, Lcc/k;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception p1

    move-object v0, p2

    :goto_0
    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lcc/i;->g(Lcc/k;)V

    :cond_0
    throw p1
.end method

.method public final bridge synthetic c(Lic/p;)Lic/k;
    .locals 0

    check-cast p1, Lcc/k;

    invoke-virtual {p0, p1}, Lcc/i;->g(Lcc/k;)V

    return-object p0
.end method

.method public final clone()Ljava/lang/Object;
    .locals 1

    invoke-static {}, Lcc/i;->f()Lcc/i;

    move-result-object v0

    invoke-virtual {p0}, Lcc/i;->e()Lcc/k;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcc/i;->g(Lcc/k;)V

    return-object v0
.end method

.method public final e()Lcc/k;
    .locals 5

    new-instance v0, Lcc/k;

    invoke-direct {v0, p0}, Lcc/k;-><init>(Lcc/i;)V

    iget v1, p0, Lcc/i;->d:I

    and-int/lit8 v2, v1, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    iget v2, p0, Lcc/i;->e:I

    iput v2, v0, Lcc/k;->d:I

    and-int/lit8 v2, v1, 0x2

    const/4 v4, 0x2

    if-ne v2, v4, :cond_1

    or-int/lit8 v3, v3, 0x2

    :cond_1
    iget v2, p0, Lcc/i;->f:I

    iput v2, v0, Lcc/k;->e:I

    and-int/lit8 v2, v1, 0x4

    const/4 v4, 0x4

    if-ne v2, v4, :cond_2

    or-int/lit8 v3, v3, 0x4

    :cond_2
    iget v2, p0, Lcc/i;->g:I

    iput v2, v0, Lcc/k;->f:I

    and-int/lit8 v2, v1, 0x8

    const/16 v4, 0x8

    if-ne v2, v4, :cond_3

    iget-object v2, p0, Lcc/i;->h:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcc/i;->h:Ljava/util/List;

    iget v2, p0, Lcc/i;->d:I

    and-int/lit8 v2, v2, -0x9

    iput v2, p0, Lcc/i;->d:I

    :cond_3
    iget-object v2, p0, Lcc/i;->h:Ljava/util/List;

    iput-object v2, v0, Lcc/k;->g:Ljava/util/List;

    iget v2, p0, Lcc/i;->d:I

    const/16 v4, 0x10

    and-int/2addr v2, v4

    if-ne v2, v4, :cond_4

    iget-object v2, p0, Lcc/i;->i:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcc/i;->i:Ljava/util/List;

    iget v2, p0, Lcc/i;->d:I

    and-int/lit8 v2, v2, -0x11

    iput v2, p0, Lcc/i;->d:I

    :cond_4
    iget-object v2, p0, Lcc/i;->i:Ljava/util/List;

    iput-object v2, v0, Lcc/k;->h:Ljava/util/List;

    iget v2, p0, Lcc/i;->d:I

    const/16 v4, 0x20

    and-int/2addr v2, v4

    if-ne v2, v4, :cond_5

    iget-object v2, p0, Lcc/i;->j:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcc/i;->j:Ljava/util/List;

    iget v2, p0, Lcc/i;->d:I

    and-int/lit8 v2, v2, -0x21

    iput v2, p0, Lcc/i;->d:I

    :cond_5
    iget-object v2, p0, Lcc/i;->j:Ljava/util/List;

    iput-object v2, v0, Lcc/k;->i:Ljava/util/List;

    iget v2, p0, Lcc/i;->d:I

    const/16 v4, 0x40

    and-int/2addr v2, v4

    if-ne v2, v4, :cond_6

    iget-object v2, p0, Lcc/i;->k:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcc/i;->k:Ljava/util/List;

    iget v2, p0, Lcc/i;->d:I

    and-int/lit8 v2, v2, -0x41

    iput v2, p0, Lcc/i;->d:I

    :cond_6
    iget-object v2, p0, Lcc/i;->k:Ljava/util/List;

    iput-object v2, v0, Lcc/k;->k:Ljava/util/List;

    iget v2, p0, Lcc/i;->d:I

    const/16 v4, 0x80

    and-int/2addr v2, v4

    if-ne v2, v4, :cond_7

    iget-object v2, p0, Lcc/i;->l:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcc/i;->l:Ljava/util/List;

    iget v2, p0, Lcc/i;->d:I

    and-int/lit16 v2, v2, -0x81

    iput v2, p0, Lcc/i;->d:I

    :cond_7
    iget-object v2, p0, Lcc/i;->l:Ljava/util/List;

    iput-object v2, v0, Lcc/k;->m:Ljava/util/List;

    iget v2, p0, Lcc/i;->d:I

    const/16 v4, 0x100

    and-int/2addr v2, v4

    if-ne v2, v4, :cond_8

    iget-object v2, p0, Lcc/i;->m:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcc/i;->m:Ljava/util/List;

    iget v2, p0, Lcc/i;->d:I

    and-int/lit16 v2, v2, -0x101

    iput v2, p0, Lcc/i;->d:I

    :cond_8
    iget-object v2, p0, Lcc/i;->m:Ljava/util/List;

    iput-object v2, v0, Lcc/k;->n:Ljava/util/List;

    iget v2, p0, Lcc/i;->d:I

    const/16 v4, 0x200

    and-int/2addr v2, v4

    if-ne v2, v4, :cond_9

    iget-object v2, p0, Lcc/i;->n:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcc/i;->n:Ljava/util/List;

    iget v2, p0, Lcc/i;->d:I

    and-int/lit16 v2, v2, -0x201

    iput v2, p0, Lcc/i;->d:I

    :cond_9
    iget-object v2, p0, Lcc/i;->n:Ljava/util/List;

    iput-object v2, v0, Lcc/k;->p:Ljava/util/List;

    iget v2, p0, Lcc/i;->d:I

    const/16 v4, 0x400

    and-int/2addr v2, v4

    if-ne v2, v4, :cond_a

    iget-object v2, p0, Lcc/i;->o:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcc/i;->o:Ljava/util/List;

    iget v2, p0, Lcc/i;->d:I

    and-int/lit16 v2, v2, -0x401

    iput v2, p0, Lcc/i;->d:I

    :cond_a
    iget-object v2, p0, Lcc/i;->o:Ljava/util/List;

    iput-object v2, v0, Lcc/k;->q:Ljava/util/List;

    iget v2, p0, Lcc/i;->d:I

    const/16 v4, 0x800

    and-int/2addr v2, v4

    if-ne v2, v4, :cond_b

    iget-object v2, p0, Lcc/i;->p:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcc/i;->p:Ljava/util/List;

    iget v2, p0, Lcc/i;->d:I

    and-int/lit16 v2, v2, -0x801

    iput v2, p0, Lcc/i;->d:I

    :cond_b
    iget-object v2, p0, Lcc/i;->p:Ljava/util/List;

    iput-object v2, v0, Lcc/k;->r:Ljava/util/List;

    iget v2, p0, Lcc/i;->d:I

    const/16 v4, 0x1000

    and-int/2addr v2, v4

    if-ne v2, v4, :cond_c

    iget-object v2, p0, Lcc/i;->q:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcc/i;->q:Ljava/util/List;

    iget v2, p0, Lcc/i;->d:I

    and-int/lit16 v2, v2, -0x1001

    iput v2, p0, Lcc/i;->d:I

    :cond_c
    iget-object v2, p0, Lcc/i;->q:Ljava/util/List;

    iput-object v2, v0, Lcc/k;->s:Ljava/util/List;

    iget v2, p0, Lcc/i;->d:I

    const/16 v4, 0x2000

    and-int/2addr v2, v4

    if-ne v2, v4, :cond_d

    iget-object v2, p0, Lcc/i;->r:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcc/i;->r:Ljava/util/List;

    iget v2, p0, Lcc/i;->d:I

    and-int/lit16 v2, v2, -0x2001

    iput v2, p0, Lcc/i;->d:I

    :cond_d
    iget-object v2, p0, Lcc/i;->r:Ljava/util/List;

    iput-object v2, v0, Lcc/k;->t:Ljava/util/List;

    iget v2, p0, Lcc/i;->d:I

    const/16 v4, 0x4000

    and-int/2addr v2, v4

    if-ne v2, v4, :cond_e

    iget-object v2, p0, Lcc/i;->s:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcc/i;->s:Ljava/util/List;

    iget v2, p0, Lcc/i;->d:I

    and-int/lit16 v2, v2, -0x4001

    iput v2, p0, Lcc/i;->d:I

    :cond_e
    iget-object v2, p0, Lcc/i;->s:Ljava/util/List;

    iput-object v2, v0, Lcc/k;->u:Ljava/util/List;

    const v2, 0x8000

    and-int v4, v1, v2

    if-ne v4, v2, :cond_f

    or-int/lit8 v3, v3, 0x8

    :cond_f
    iget v2, p0, Lcc/i;->t:I

    iput v2, v0, Lcc/k;->w:I

    const/high16 v2, 0x10000

    and-int v4, v1, v2

    if-ne v4, v2, :cond_10

    or-int/lit8 v3, v3, 0x10

    :cond_10
    iget-object v2, p0, Lcc/i;->u:Lcc/T;

    iput-object v2, v0, Lcc/k;->x:Lcc/T;

    const/high16 v2, 0x20000

    and-int v4, v1, v2

    if-ne v4, v2, :cond_11

    or-int/lit8 v3, v3, 0x20

    :cond_11
    iget v2, p0, Lcc/i;->v:I

    iput v2, v0, Lcc/k;->y:I

    iget v2, p0, Lcc/i;->d:I

    const/high16 v4, 0x40000

    and-int/2addr v2, v4

    if-ne v2, v4, :cond_12

    iget-object v2, p0, Lcc/i;->w:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcc/i;->w:Ljava/util/List;

    iget v2, p0, Lcc/i;->d:I

    const v4, -0x40001

    and-int/2addr v2, v4

    iput v2, p0, Lcc/i;->d:I

    :cond_12
    iget-object v2, p0, Lcc/i;->w:Ljava/util/List;

    iput-object v2, v0, Lcc/k;->z:Ljava/util/List;

    iget v2, p0, Lcc/i;->d:I

    const/high16 v4, 0x80000

    and-int/2addr v2, v4

    if-ne v2, v4, :cond_13

    iget-object v2, p0, Lcc/i;->x:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcc/i;->x:Ljava/util/List;

    iget v2, p0, Lcc/i;->d:I

    const v4, -0x80001

    and-int/2addr v2, v4

    iput v2, p0, Lcc/i;->d:I

    :cond_13
    iget-object v2, p0, Lcc/i;->x:Ljava/util/List;

    iput-object v2, v0, Lcc/k;->B:Ljava/util/List;

    iget v2, p0, Lcc/i;->d:I

    const/high16 v4, 0x100000

    and-int/2addr v2, v4

    if-ne v2, v4, :cond_14

    iget-object v2, p0, Lcc/i;->y:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcc/i;->y:Ljava/util/List;

    iget v2, p0, Lcc/i;->d:I

    const v4, -0x100001

    and-int/2addr v2, v4

    iput v2, p0, Lcc/i;->d:I

    :cond_14
    iget-object v2, p0, Lcc/i;->y:Ljava/util/List;

    iput-object v2, v0, Lcc/k;->C:Ljava/util/List;

    const/high16 v2, 0x200000

    and-int v4, v1, v2

    if-ne v4, v2, :cond_15

    or-int/lit8 v3, v3, 0x40

    :cond_15
    iget-object v2, p0, Lcc/i;->z:Lcc/Z;

    iput-object v2, v0, Lcc/k;->E:Lcc/Z;

    iget v2, p0, Lcc/i;->d:I

    const/high16 v4, 0x400000

    and-int/2addr v2, v4

    if-ne v2, v4, :cond_16

    iget-object v2, p0, Lcc/i;->A:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcc/i;->A:Ljava/util/List;

    iget v2, p0, Lcc/i;->d:I

    const v4, -0x400001

    and-int/2addr v2, v4

    iput v2, p0, Lcc/i;->d:I

    :cond_16
    iget-object v2, p0, Lcc/i;->A:Ljava/util/List;

    iput-object v2, v0, Lcc/k;->F:Ljava/util/List;

    const/high16 v2, 0x800000

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_17

    or-int/lit16 v3, v3, 0x80

    :cond_17
    iget-object v1, p0, Lcc/i;->B:Lcc/g0;

    iput-object v1, v0, Lcc/k;->G:Lcc/g0;

    iget v1, p0, Lcc/i;->d:I

    const/high16 v2, 0x1000000

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_18

    iget-object v1, p0, Lcc/i;->C:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcc/i;->C:Ljava/util/List;

    iget v1, p0, Lcc/i;->d:I

    const v2, -0x1000001

    and-int/2addr v1, v2

    iput v1, p0, Lcc/i;->d:I

    :cond_18
    iget-object p0, p0, Lcc/i;->C:Ljava/util/List;

    iput-object p0, v0, Lcc/k;->H:Ljava/util/List;

    iput v3, v0, Lcc/k;->c:I

    return-object v0
.end method

.method public final g(Lcc/k;)V
    .locals 8

    sget-object v0, Lcc/k;->X:Lcc/k;

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    iget v0, p1, Lcc/k;->c:I

    and-int/lit8 v1, v0, 0x1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    iget v1, p1, Lcc/k;->d:I

    iget v3, p0, Lcc/i;->d:I

    or-int/2addr v2, v3

    iput v2, p0, Lcc/i;->d:I

    iput v1, p0, Lcc/i;->e:I

    :cond_1
    and-int/lit8 v1, v0, 0x2

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    iget v1, p1, Lcc/k;->e:I

    iget v3, p0, Lcc/i;->d:I

    or-int/2addr v2, v3

    iput v2, p0, Lcc/i;->d:I

    iput v1, p0, Lcc/i;->f:I

    :cond_2
    const/4 v1, 0x4

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_3

    iget v0, p1, Lcc/k;->f:I

    iget v2, p0, Lcc/i;->d:I

    or-int/2addr v1, v2

    iput v1, p0, Lcc/i;->d:I

    iput v0, p0, Lcc/i;->g:I

    :cond_3
    iget-object v0, p1, Lcc/k;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/16 v1, 0x8

    if-nez v0, :cond_6

    iget-object v0, p0, Lcc/i;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p1, Lcc/k;->g:Ljava/util/List;

    iput-object v0, p0, Lcc/i;->h:Ljava/util/List;

    iget v0, p0, Lcc/i;->d:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcc/i;->d:I

    goto :goto_0

    :cond_4
    iget v0, p0, Lcc/i;->d:I

    and-int/2addr v0, v1

    if-eq v0, v1, :cond_5

    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lcc/i;->h:Ljava/util/List;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcc/i;->h:Ljava/util/List;

    iget v0, p0, Lcc/i;->d:I

    or-int/2addr v0, v1

    iput v0, p0, Lcc/i;->d:I

    :cond_5
    iget-object v0, p0, Lcc/i;->h:Ljava/util/List;

    iget-object v2, p1, Lcc/k;->g:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_6
    :goto_0
    iget-object v0, p1, Lcc/k;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/16 v2, 0x10

    if-nez v0, :cond_9

    iget-object v0, p0, Lcc/i;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p1, Lcc/k;->h:Ljava/util/List;

    iput-object v0, p0, Lcc/i;->i:Ljava/util/List;

    iget v0, p0, Lcc/i;->d:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcc/i;->d:I

    goto :goto_1

    :cond_7
    iget v0, p0, Lcc/i;->d:I

    and-int/2addr v0, v2

    if-eq v0, v2, :cond_8

    new-instance v0, Ljava/util/ArrayList;

    iget-object v3, p0, Lcc/i;->i:Ljava/util/List;

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcc/i;->i:Ljava/util/List;

    iget v0, p0, Lcc/i;->d:I

    or-int/2addr v0, v2

    iput v0, p0, Lcc/i;->d:I

    :cond_8
    iget-object v0, p0, Lcc/i;->i:Ljava/util/List;

    iget-object v3, p1, Lcc/k;->h:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_9
    :goto_1
    iget-object v0, p1, Lcc/k;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/16 v3, 0x20

    if-nez v0, :cond_c

    iget-object v0, p0, Lcc/i;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p1, Lcc/k;->i:Ljava/util/List;

    iput-object v0, p0, Lcc/i;->j:Ljava/util/List;

    iget v0, p0, Lcc/i;->d:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcc/i;->d:I

    goto :goto_2

    :cond_a
    iget v0, p0, Lcc/i;->d:I

    and-int/2addr v0, v3

    if-eq v0, v3, :cond_b

    new-instance v0, Ljava/util/ArrayList;

    iget-object v4, p0, Lcc/i;->j:Ljava/util/List;

    invoke-direct {v0, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcc/i;->j:Ljava/util/List;

    iget v0, p0, Lcc/i;->d:I

    or-int/2addr v0, v3

    iput v0, p0, Lcc/i;->d:I

    :cond_b
    iget-object v0, p0, Lcc/i;->j:Ljava/util/List;

    iget-object v4, p1, Lcc/k;->i:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_c
    :goto_2
    iget-object v0, p1, Lcc/k;->k:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/16 v4, 0x40

    if-nez v0, :cond_f

    iget-object v0, p0, Lcc/i;->k:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p1, Lcc/k;->k:Ljava/util/List;

    iput-object v0, p0, Lcc/i;->k:Ljava/util/List;

    iget v0, p0, Lcc/i;->d:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcc/i;->d:I

    goto :goto_3

    :cond_d
    iget v0, p0, Lcc/i;->d:I

    and-int/2addr v0, v4

    if-eq v0, v4, :cond_e

    new-instance v0, Ljava/util/ArrayList;

    iget-object v5, p0, Lcc/i;->k:Ljava/util/List;

    invoke-direct {v0, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcc/i;->k:Ljava/util/List;

    iget v0, p0, Lcc/i;->d:I

    or-int/2addr v0, v4

    iput v0, p0, Lcc/i;->d:I

    :cond_e
    iget-object v0, p0, Lcc/i;->k:Ljava/util/List;

    iget-object v5, p1, Lcc/k;->k:Ljava/util/List;

    invoke-interface {v0, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_f
    :goto_3
    iget-object v0, p1, Lcc/k;->m:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/16 v5, 0x80

    if-nez v0, :cond_12

    iget-object v0, p0, Lcc/i;->l:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, p1, Lcc/k;->m:Ljava/util/List;

    iput-object v0, p0, Lcc/i;->l:Ljava/util/List;

    iget v0, p0, Lcc/i;->d:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcc/i;->d:I

    goto :goto_4

    :cond_10
    iget v0, p0, Lcc/i;->d:I

    and-int/2addr v0, v5

    if-eq v0, v5, :cond_11

    new-instance v0, Ljava/util/ArrayList;

    iget-object v6, p0, Lcc/i;->l:Ljava/util/List;

    invoke-direct {v0, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcc/i;->l:Ljava/util/List;

    iget v0, p0, Lcc/i;->d:I

    or-int/2addr v0, v5

    iput v0, p0, Lcc/i;->d:I

    :cond_11
    iget-object v0, p0, Lcc/i;->l:Ljava/util/List;

    iget-object v6, p1, Lcc/k;->m:Ljava/util/List;

    invoke-interface {v0, v6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_12
    :goto_4
    iget-object v0, p1, Lcc/k;->n:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_15

    iget-object v0, p0, Lcc/i;->m:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_13

    iget-object v0, p1, Lcc/k;->n:Ljava/util/List;

    iput-object v0, p0, Lcc/i;->m:Ljava/util/List;

    iget v0, p0, Lcc/i;->d:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lcc/i;->d:I

    goto :goto_5

    :cond_13
    iget v0, p0, Lcc/i;->d:I

    const/16 v6, 0x100

    and-int/2addr v0, v6

    if-eq v0, v6, :cond_14

    new-instance v0, Ljava/util/ArrayList;

    iget-object v7, p0, Lcc/i;->m:Ljava/util/List;

    invoke-direct {v0, v7}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcc/i;->m:Ljava/util/List;

    iget v0, p0, Lcc/i;->d:I

    or-int/2addr v0, v6

    iput v0, p0, Lcc/i;->d:I

    :cond_14
    iget-object v0, p0, Lcc/i;->m:Ljava/util/List;

    iget-object v6, p1, Lcc/k;->n:Ljava/util/List;

    invoke-interface {v0, v6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_15
    :goto_5
    iget-object v0, p1, Lcc/k;->p:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_18

    iget-object v0, p0, Lcc/i;->n:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_16

    iget-object v0, p1, Lcc/k;->p:Ljava/util/List;

    iput-object v0, p0, Lcc/i;->n:Ljava/util/List;

    iget v0, p0, Lcc/i;->d:I

    and-int/lit16 v0, v0, -0x201

    iput v0, p0, Lcc/i;->d:I

    goto :goto_6

    :cond_16
    iget v0, p0, Lcc/i;->d:I

    const/16 v6, 0x200

    and-int/2addr v0, v6

    if-eq v0, v6, :cond_17

    new-instance v0, Ljava/util/ArrayList;

    iget-object v7, p0, Lcc/i;->n:Ljava/util/List;

    invoke-direct {v0, v7}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcc/i;->n:Ljava/util/List;

    iget v0, p0, Lcc/i;->d:I

    or-int/2addr v0, v6

    iput v0, p0, Lcc/i;->d:I

    :cond_17
    iget-object v0, p0, Lcc/i;->n:Ljava/util/List;

    iget-object v6, p1, Lcc/k;->p:Ljava/util/List;

    invoke-interface {v0, v6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_18
    :goto_6
    iget-object v0, p1, Lcc/k;->q:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1b

    iget-object v0, p0, Lcc/i;->o:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_19

    iget-object v0, p1, Lcc/k;->q:Ljava/util/List;

    iput-object v0, p0, Lcc/i;->o:Ljava/util/List;

    iget v0, p0, Lcc/i;->d:I

    and-int/lit16 v0, v0, -0x401

    iput v0, p0, Lcc/i;->d:I

    goto :goto_7

    :cond_19
    iget v0, p0, Lcc/i;->d:I

    const/16 v6, 0x400

    and-int/2addr v0, v6

    if-eq v0, v6, :cond_1a

    new-instance v0, Ljava/util/ArrayList;

    iget-object v7, p0, Lcc/i;->o:Ljava/util/List;

    invoke-direct {v0, v7}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcc/i;->o:Ljava/util/List;

    iget v0, p0, Lcc/i;->d:I

    or-int/2addr v0, v6

    iput v0, p0, Lcc/i;->d:I

    :cond_1a
    iget-object v0, p0, Lcc/i;->o:Ljava/util/List;

    iget-object v6, p1, Lcc/k;->q:Ljava/util/List;

    invoke-interface {v0, v6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_1b
    :goto_7
    iget-object v0, p1, Lcc/k;->r:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1e

    iget-object v0, p0, Lcc/i;->p:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1c

    iget-object v0, p1, Lcc/k;->r:Ljava/util/List;

    iput-object v0, p0, Lcc/i;->p:Ljava/util/List;

    iget v0, p0, Lcc/i;->d:I

    and-int/lit16 v0, v0, -0x801

    iput v0, p0, Lcc/i;->d:I

    goto :goto_8

    :cond_1c
    iget v0, p0, Lcc/i;->d:I

    const/16 v6, 0x800

    and-int/2addr v0, v6

    if-eq v0, v6, :cond_1d

    new-instance v0, Ljava/util/ArrayList;

    iget-object v7, p0, Lcc/i;->p:Ljava/util/List;

    invoke-direct {v0, v7}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcc/i;->p:Ljava/util/List;

    iget v0, p0, Lcc/i;->d:I

    or-int/2addr v0, v6

    iput v0, p0, Lcc/i;->d:I

    :cond_1d
    iget-object v0, p0, Lcc/i;->p:Ljava/util/List;

    iget-object v6, p1, Lcc/k;->r:Ljava/util/List;

    invoke-interface {v0, v6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_1e
    :goto_8
    iget-object v0, p1, Lcc/k;->s:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_21

    iget-object v0, p0, Lcc/i;->q:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1f

    iget-object v0, p1, Lcc/k;->s:Ljava/util/List;

    iput-object v0, p0, Lcc/i;->q:Ljava/util/List;

    iget v0, p0, Lcc/i;->d:I

    and-int/lit16 v0, v0, -0x1001

    iput v0, p0, Lcc/i;->d:I

    goto :goto_9

    :cond_1f
    iget v0, p0, Lcc/i;->d:I

    const/16 v6, 0x1000

    and-int/2addr v0, v6

    if-eq v0, v6, :cond_20

    new-instance v0, Ljava/util/ArrayList;

    iget-object v7, p0, Lcc/i;->q:Ljava/util/List;

    invoke-direct {v0, v7}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcc/i;->q:Ljava/util/List;

    iget v0, p0, Lcc/i;->d:I

    or-int/2addr v0, v6

    iput v0, p0, Lcc/i;->d:I

    :cond_20
    iget-object v0, p0, Lcc/i;->q:Ljava/util/List;

    iget-object v6, p1, Lcc/k;->s:Ljava/util/List;

    invoke-interface {v0, v6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_21
    :goto_9
    iget-object v0, p1, Lcc/k;->t:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_24

    iget-object v0, p0, Lcc/i;->r:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_22

    iget-object v0, p1, Lcc/k;->t:Ljava/util/List;

    iput-object v0, p0, Lcc/i;->r:Ljava/util/List;

    iget v0, p0, Lcc/i;->d:I

    and-int/lit16 v0, v0, -0x2001

    iput v0, p0, Lcc/i;->d:I

    goto :goto_a

    :cond_22
    iget v0, p0, Lcc/i;->d:I

    const/16 v6, 0x2000

    and-int/2addr v0, v6

    if-eq v0, v6, :cond_23

    new-instance v0, Ljava/util/ArrayList;

    iget-object v7, p0, Lcc/i;->r:Ljava/util/List;

    invoke-direct {v0, v7}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcc/i;->r:Ljava/util/List;

    iget v0, p0, Lcc/i;->d:I

    or-int/2addr v0, v6

    iput v0, p0, Lcc/i;->d:I

    :cond_23
    iget-object v0, p0, Lcc/i;->r:Ljava/util/List;

    iget-object v6, p1, Lcc/k;->t:Ljava/util/List;

    invoke-interface {v0, v6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_24
    :goto_a
    iget-object v0, p1, Lcc/k;->u:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_27

    iget-object v0, p0, Lcc/i;->s:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_25

    iget-object v0, p1, Lcc/k;->u:Ljava/util/List;

    iput-object v0, p0, Lcc/i;->s:Ljava/util/List;

    iget v0, p0, Lcc/i;->d:I

    and-int/lit16 v0, v0, -0x4001

    iput v0, p0, Lcc/i;->d:I

    goto :goto_b

    :cond_25
    iget v0, p0, Lcc/i;->d:I

    const/16 v6, 0x4000

    and-int/2addr v0, v6

    if-eq v0, v6, :cond_26

    new-instance v0, Ljava/util/ArrayList;

    iget-object v7, p0, Lcc/i;->s:Ljava/util/List;

    invoke-direct {v0, v7}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcc/i;->s:Ljava/util/List;

    iget v0, p0, Lcc/i;->d:I

    or-int/2addr v0, v6

    iput v0, p0, Lcc/i;->d:I

    :cond_26
    iget-object v0, p0, Lcc/i;->s:Ljava/util/List;

    iget-object v6, p1, Lcc/k;->u:Ljava/util/List;

    invoke-interface {v0, v6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_27
    :goto_b
    iget v0, p1, Lcc/k;->c:I

    and-int/lit8 v6, v0, 0x8

    if-ne v6, v1, :cond_28

    iget v1, p1, Lcc/k;->w:I

    iget v6, p0, Lcc/i;->d:I

    const v7, 0x8000

    or-int/2addr v6, v7

    iput v6, p0, Lcc/i;->d:I

    iput v1, p0, Lcc/i;->t:I

    :cond_28
    and-int/2addr v0, v2

    if-ne v0, v2, :cond_2a

    iget-object v0, p1, Lcc/k;->x:Lcc/T;

    iget v1, p0, Lcc/i;->d:I

    const/high16 v2, 0x10000

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_29

    iget-object v1, p0, Lcc/i;->u:Lcc/T;

    sget-object v6, Lcc/T;->t:Lcc/T;

    if-eq v1, v6, :cond_29

    invoke-static {v1}, Lcc/T;->p(Lcc/T;)Lcc/S;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcc/S;->g(Lcc/T;)Lcc/S;

    invoke-virtual {v1}, Lcc/S;->e()Lcc/T;

    move-result-object v0

    iput-object v0, p0, Lcc/i;->u:Lcc/T;

    goto :goto_c

    :cond_29
    iput-object v0, p0, Lcc/i;->u:Lcc/T;

    :goto_c
    iget v0, p0, Lcc/i;->d:I

    or-int/2addr v0, v2

    iput v0, p0, Lcc/i;->d:I

    :cond_2a
    iget v0, p1, Lcc/k;->c:I

    and-int/2addr v0, v3

    if-ne v0, v3, :cond_2b

    iget v0, p1, Lcc/k;->y:I

    iget v1, p0, Lcc/i;->d:I

    const/high16 v2, 0x20000

    or-int/2addr v1, v2

    iput v1, p0, Lcc/i;->d:I

    iput v0, p0, Lcc/i;->v:I

    :cond_2b
    iget-object v0, p1, Lcc/k;->z:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2e

    iget-object v0, p0, Lcc/i;->w:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2c

    iget-object v0, p1, Lcc/k;->z:Ljava/util/List;

    iput-object v0, p0, Lcc/i;->w:Ljava/util/List;

    iget v0, p0, Lcc/i;->d:I

    const v1, -0x40001

    and-int/2addr v0, v1

    iput v0, p0, Lcc/i;->d:I

    goto :goto_d

    :cond_2c
    iget v0, p0, Lcc/i;->d:I

    const/high16 v1, 0x40000

    and-int/2addr v0, v1

    if-eq v0, v1, :cond_2d

    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lcc/i;->w:Ljava/util/List;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcc/i;->w:Ljava/util/List;

    iget v0, p0, Lcc/i;->d:I

    or-int/2addr v0, v1

    iput v0, p0, Lcc/i;->d:I

    :cond_2d
    iget-object v0, p0, Lcc/i;->w:Ljava/util/List;

    iget-object v1, p1, Lcc/k;->z:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_2e
    :goto_d
    iget-object v0, p1, Lcc/k;->B:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_31

    iget-object v0, p0, Lcc/i;->x:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2f

    iget-object v0, p1, Lcc/k;->B:Ljava/util/List;

    iput-object v0, p0, Lcc/i;->x:Ljava/util/List;

    iget v0, p0, Lcc/i;->d:I

    const v1, -0x80001

    and-int/2addr v0, v1

    iput v0, p0, Lcc/i;->d:I

    goto :goto_e

    :cond_2f
    iget v0, p0, Lcc/i;->d:I

    const/high16 v1, 0x80000

    and-int/2addr v0, v1

    if-eq v0, v1, :cond_30

    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lcc/i;->x:Ljava/util/List;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcc/i;->x:Ljava/util/List;

    iget v0, p0, Lcc/i;->d:I

    or-int/2addr v0, v1

    iput v0, p0, Lcc/i;->d:I

    :cond_30
    iget-object v0, p0, Lcc/i;->x:Ljava/util/List;

    iget-object v1, p1, Lcc/k;->B:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_31
    :goto_e
    iget-object v0, p1, Lcc/k;->C:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_34

    iget-object v0, p0, Lcc/i;->y:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_32

    iget-object v0, p1, Lcc/k;->C:Ljava/util/List;

    iput-object v0, p0, Lcc/i;->y:Ljava/util/List;

    iget v0, p0, Lcc/i;->d:I

    const v1, -0x100001

    and-int/2addr v0, v1

    iput v0, p0, Lcc/i;->d:I

    goto :goto_f

    :cond_32
    iget v0, p0, Lcc/i;->d:I

    const/high16 v1, 0x100000

    and-int/2addr v0, v1

    if-eq v0, v1, :cond_33

    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lcc/i;->y:Ljava/util/List;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcc/i;->y:Ljava/util/List;

    iget v0, p0, Lcc/i;->d:I

    or-int/2addr v0, v1

    iput v0, p0, Lcc/i;->d:I

    :cond_33
    iget-object v0, p0, Lcc/i;->y:Ljava/util/List;

    iget-object v1, p1, Lcc/k;->C:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_34
    :goto_f
    iget v0, p1, Lcc/k;->c:I

    and-int/2addr v0, v4

    if-ne v0, v4, :cond_36

    iget-object v0, p1, Lcc/k;->E:Lcc/Z;

    iget v1, p0, Lcc/i;->d:I

    const/high16 v2, 0x200000

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_35

    iget-object v1, p0, Lcc/i;->z:Lcc/Z;

    sget-object v3, Lcc/Z;->g:Lcc/Z;

    if-eq v1, v3, :cond_35

    invoke-static {v1}, Lcc/Z;->g(Lcc/Z;)Lcc/g;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcc/g;->h(Lcc/Z;)V

    invoke-virtual {v1}, Lcc/g;->e()Lcc/Z;

    move-result-object v0

    iput-object v0, p0, Lcc/i;->z:Lcc/Z;

    goto :goto_10

    :cond_35
    iput-object v0, p0, Lcc/i;->z:Lcc/Z;

    :goto_10
    iget v0, p0, Lcc/i;->d:I

    or-int/2addr v0, v2

    iput v0, p0, Lcc/i;->d:I

    :cond_36
    iget-object v0, p1, Lcc/k;->F:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_39

    iget-object v0, p0, Lcc/i;->A:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_37

    iget-object v0, p1, Lcc/k;->F:Ljava/util/List;

    iput-object v0, p0, Lcc/i;->A:Ljava/util/List;

    iget v0, p0, Lcc/i;->d:I

    const v1, -0x400001

    and-int/2addr v0, v1

    iput v0, p0, Lcc/i;->d:I

    goto :goto_11

    :cond_37
    iget v0, p0, Lcc/i;->d:I

    const/high16 v1, 0x400000

    and-int/2addr v0, v1

    if-eq v0, v1, :cond_38

    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lcc/i;->A:Ljava/util/List;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcc/i;->A:Ljava/util/List;

    iget v0, p0, Lcc/i;->d:I

    or-int/2addr v0, v1

    iput v0, p0, Lcc/i;->d:I

    :cond_38
    iget-object v0, p0, Lcc/i;->A:Ljava/util/List;

    iget-object v1, p1, Lcc/k;->F:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_39
    :goto_11
    iget v0, p1, Lcc/k;->c:I

    and-int/2addr v0, v5

    if-ne v0, v5, :cond_3b

    iget-object v0, p1, Lcc/k;->G:Lcc/g0;

    iget v1, p0, Lcc/i;->d:I

    const/high16 v2, 0x800000

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_3a

    iget-object v1, p0, Lcc/i;->B:Lcc/g0;

    sget-object v3, Lcc/g0;->e:Lcc/g0;

    if-eq v1, v3, :cond_3a

    new-instance v3, Lcc/o;

    const/4 v4, 0x2

    invoke-direct {v3, v4}, Lcc/o;-><init>(I)V

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v4

    iput-object v4, v3, Lcc/o;->d:Ljava/util/List;

    invoke-virtual {v3, v1}, Lcc/o;->k(Lcc/g0;)V

    invoke-virtual {v3, v0}, Lcc/o;->k(Lcc/g0;)V

    invoke-virtual {v3}, Lcc/o;->g()Lcc/g0;

    move-result-object v0

    iput-object v0, p0, Lcc/i;->B:Lcc/g0;

    goto :goto_12

    :cond_3a
    iput-object v0, p0, Lcc/i;->B:Lcc/g0;

    :goto_12
    iget v0, p0, Lcc/i;->d:I

    or-int/2addr v0, v2

    iput v0, p0, Lcc/i;->d:I

    :cond_3b
    iget-object v0, p1, Lcc/k;->H:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3e

    iget-object v0, p0, Lcc/i;->C:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3c

    iget-object v0, p1, Lcc/k;->H:Ljava/util/List;

    iput-object v0, p0, Lcc/i;->C:Ljava/util/List;

    iget v0, p0, Lcc/i;->d:I

    const v1, -0x1000001

    and-int/2addr v0, v1

    iput v0, p0, Lcc/i;->d:I

    goto :goto_13

    :cond_3c
    iget v0, p0, Lcc/i;->d:I

    const/high16 v1, 0x1000000

    and-int/2addr v0, v1

    if-eq v0, v1, :cond_3d

    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lcc/i;->C:Ljava/util/List;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcc/i;->C:Ljava/util/List;

    iget v0, p0, Lcc/i;->d:I

    or-int/2addr v0, v1

    iput v0, p0, Lcc/i;->d:I

    :cond_3d
    iget-object v0, p0, Lcc/i;->C:Ljava/util/List;

    iget-object v1, p1, Lcc/k;->H:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_3e
    :goto_13
    invoke-virtual {p0, p1}, Lic/l;->d(Lic/m;)V

    iget-object v0, p0, Lic/k;->a:Lic/e;

    iget-object p1, p1, Lcc/k;->b:Lic/e;

    invoke-virtual {v0, p1}, Lic/e;->i(Lic/e;)Lic/e;

    move-result-object p1

    iput-object p1, p0, Lic/k;->a:Lic/e;

    return-void
.end method
