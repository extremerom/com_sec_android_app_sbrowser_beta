.class public final Li7/e;
.super Li7/z;
.source "SourceFile"


# instance fields
.field public final e:Ll7/q;

.field public final f:Lo3/n;

.field public g:LP9/a;

.field public final h:Z

.field public final i:Lm7/b;


# direct methods
.method public constructor <init>(Ll7/q;Lo3/n;ZLm7/b;)V
    .locals 2

    const/4 v0, 0x4

    const/4 v1, -0x1

    invoke-direct {p0, v0, v1}, Li7/z;-><init>(II)V

    if-eqz p1, :cond_1

    if-eqz p4, :cond_0

    iput-object p1, p0, Li7/e;->e:Ll7/q;

    iput-object p2, p0, Li7/e;->f:Lo3/n;

    iput-boolean p3, p0, Li7/e;->h:Z

    iput-object p4, p0, Li7/e;->i:Lm7/b;

    const/4 p1, 0x0

    iput-object p1, p0, Li7/e;->g:LP9/a;

    return-void

    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "throwsList == null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "ref == null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final a(Li7/f;)V
    .locals 11

    iget-object v0, p1, Li7/f;->l:Li7/y;

    iget-object v0, p0, Li7/e;->f:Lo3/n;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, v0, Lo3/n;->a:Ljava/lang/Object;

    check-cast v1, LP0/j;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, v0, Lo3/n;->b:Ljava/lang/Object;

    check-cast v1, LZ3/x;

    iget-object v1, v1, LZ3/x;->b:Ljava/lang/Object;

    check-cast v1, LZ3/x;

    iget-object v1, v1, LZ3/x;->b:Ljava/lang/Object;

    check-cast v1, Lk7/b;

    iget-object v2, v1, Ln7/e;->b:[Ljava/lang/Object;

    array-length v2, v2

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    const/16 v5, 0x14

    if-ge v4, v2, :cond_4

    invoke-virtual {v1, v4}, Ln7/e;->e(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lk7/a;

    iget-object v6, v6, Lk7/a;->b:Lk7/g;

    invoke-virtual {v6}, Lk7/g;->h()Lk7/f;

    move-result-object v6

    invoke-virtual {v6}, Lk7/f;->d()Lm7/e;

    move-result-object v6

    check-cast v6, Ln7/e;

    iget-object v6, v6, Ln7/e;->b:[Ljava/lang/Object;

    array-length v6, v6

    if-eqz v6, :cond_3

    iget-object v1, v0, Lo3/n;->b:Ljava/lang/Object;

    check-cast v1, LZ3/x;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2, v5}, Ljava/util/HashSet;-><init>(I)V

    iget-object v1, v1, LZ3/x;->b:Ljava/lang/Object;

    check-cast v1, LZ3/x;

    iget-object v1, v1, LZ3/x;->b:Ljava/lang/Object;

    check-cast v1, Lk7/b;

    iget-object v4, v1, Ln7/e;->b:[Ljava/lang/Object;

    array-length v4, v4

    move v6, v3

    :goto_1
    if-ge v6, v4, :cond_1

    invoke-virtual {v1, v6}, Ln7/e;->e(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lk7/a;

    iget-object v7, v7, Lk7/a;->b:Lk7/g;

    invoke-virtual {v7}, Lk7/g;->h()Lk7/f;

    move-result-object v7

    invoke-virtual {v7}, Lk7/f;->d()Lm7/e;

    move-result-object v7

    move-object v8, v7

    check-cast v8, Ln7/e;

    iget-object v8, v8, Ln7/e;->b:[Ljava/lang/Object;

    array-length v8, v8

    move v9, v3

    :goto_2
    if-ge v9, v8, :cond_0

    invoke-interface {v7, v9}, Lm7/e;->getType(I)Lm7/c;

    move-result-object v10

    invoke-virtual {v2, v10}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lm7/c;

    iget-object v3, p1, Li7/f;->f:Li7/B;

    invoke-virtual {v3, v2}, Li7/B;->q(Lm7/c;)V

    goto :goto_3

    :cond_2
    new-instance v1, LP9/a;

    invoke-direct {v1, v0}, LP9/a;-><init>(Lo3/n;)V

    iput-object v1, p0, Li7/e;->g:LP9/a;

    goto :goto_4

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_4
    :goto_4
    iget-object p0, v0, Lo3/n;->a:Ljava/lang/Object;

    check-cast p0, LP0/j;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, v5}, Ljava/util/HashSet;-><init>(I)V

    iget-object p0, p0, LP0/j;->b:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_5
    :goto_5
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lg7/g;

    instance-of v2, v1, Lg7/f;

    if-eqz v2, :cond_6

    check-cast v1, Lg7/f;

    iget-object v1, v1, Lg7/f;->f:Ll7/a;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_6
    instance-of v2, v1, Lg7/p;

    if-nez v2, :cond_7

    instance-of v2, v1, Lg7/q;

    if-eqz v2, :cond_5

    check-cast v1, Lg7/q;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_5

    :cond_7
    check-cast v1, Lg7/p;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p0, 0x0

    throw p0

    :cond_8
    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_6
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ll7/a;

    invoke-virtual {p1, v0}, Li7/f;->a(Ll7/a;)V

    goto :goto_6

    :cond_9
    return-void
.end method

.method public final c()Li7/q;
    .locals 0

    sget-object p0, Li7/q;->TYPE_CODE_ITEM:Li7/q;

    return-object p0
.end method

.method public final l(Li7/y;I)V
    .locals 10

    new-instance p2, LG5/J2;

    iget-object p1, p1, Li7/C;->b:Li7/f;

    invoke-direct {p2, p1}, LG5/J2;-><init>(Ljava/lang/Object;)V

    iget-object v0, p0, Li7/e;->f:Lo3/n;

    iget-object v1, v0, Lo3/n;->a:Ljava/lang/Object;

    check-cast v1, LP0/j;

    iget-object v1, v1, LP0/j;->b:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lg7/g;

    instance-of v3, v2, Lg7/f;

    if-eqz v3, :cond_0

    check-cast v2, Lg7/f;

    iget-object v3, v2, Lg7/f;->f:Ll7/a;

    invoke-virtual {p2, v3}, LG5/J2;->a(Ll7/a;)I

    move-result v4

    if-ltz v4, :cond_1

    invoke-virtual {v2, v4}, Lg7/f;->n(I)V

    :cond_1
    instance-of v4, v3, Ll7/p;

    if-eqz v4, :cond_0

    check-cast v3, Ll7/p;

    iget-object v3, v3, Ll7/p;->a:Ll7/u;

    invoke-virtual {p2, v3}, LG5/J2;->a(Ll7/a;)I

    move-result v3

    if-ltz v3, :cond_0

    invoke-virtual {v2, v3}, Lg7/f;->m(I)V

    goto :goto_0

    :cond_2
    iget-object p2, p0, Li7/e;->g:LP9/a;

    const/4 v1, 0x0

    if-eqz p2, :cond_a

    invoke-virtual {p2}, LP9/a;->o()V

    iget-object p1, p1, Li7/f;->f:Li7/B;

    iget-object v2, p2, LP9/a;->d:Ljava/lang/Object;

    check-cast v2, Lg7/d;

    iget-object v2, v2, Ln7/e;->b:[Ljava/lang/Object;

    array-length v2, v2

    new-instance v3, Ljava/util/TreeMap;

    invoke-direct {v3}, Ljava/util/TreeMap;-><init>()V

    iput-object v3, p2, LP9/a;->f:Ljava/lang/Object;

    move v3, v1

    :goto_1
    if-ge v3, v2, :cond_3

    iget-object v4, p2, LP9/a;->f:Ljava/lang/Object;

    check-cast v4, Ljava/util/TreeMap;

    iget-object v5, p2, LP9/a;->d:Ljava/lang/Object;

    check-cast v5, Lg7/d;

    invoke-virtual {v5, v3}, Ln7/e;->e(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lg7/c;

    iget-object v5, v5, Lg7/c;->c:Lg7/b;

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    iget-object v2, p2, LP9/a;->f:Ljava/lang/Object;

    check-cast v2, Ljava/util/TreeMap;

    invoke-virtual {v2}, Ljava/util/TreeMap;->size()I

    move-result v2

    const v3, 0xffff

    if-gt v2, v3, :cond_9

    new-instance v2, Ln7/b;

    invoke-direct {v2}, Ln7/b;-><init>()V

    iget-object v3, p2, LP9/a;->f:Ljava/lang/Object;

    check-cast v3, Ljava/util/TreeMap;

    invoke-virtual {v3}, Ljava/util/TreeMap;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ln7/b;->m(I)I

    move-result v3

    iput v3, p2, LP9/a;->b:I

    iget-object v3, p2, LP9/a;->f:Ljava/lang/Object;

    check-cast v3, Ljava/util/TreeMap;

    invoke-virtual {v3}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_4
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lg7/b;

    iget-object v6, v5, Ln7/e;->b:[Ljava/lang/Object;

    array-length v7, v6

    array-length v6, v6

    if-nez v6, :cond_5

    move v6, v1

    goto :goto_3

    :cond_5
    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v5, v6}, Ln7/e;->e(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lg7/a;

    sget-object v8, Ll7/u;->d:Ll7/u;

    iget-object v6, v6, Lg7/a;->a:Ll7/u;

    invoke-virtual {v6, v8}, Ll7/u;->equals(Ljava/lang/Object;)Z

    move-result v6

    :goto_3
    iget v8, v2, Ln7/b;->c:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v4, v8}, Ljava/util/Map$Entry;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v6, :cond_6

    add-int/lit8 v4, v7, -0x1

    neg-int v4, v4

    invoke-virtual {v2, v4}, Ln7/b;->l(I)V

    add-int/lit8 v7, v7, -0x1

    goto :goto_4

    :cond_6
    invoke-virtual {v2, v7}, Ln7/b;->l(I)V

    :goto_4
    move v4, v1

    :goto_5
    if-ge v4, v7, :cond_7

    invoke-virtual {v5, v4}, Ln7/e;->e(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lg7/a;

    iget-object v9, v8, Lg7/a;->a:Ll7/u;

    invoke-virtual {p1, v9}, Li7/B;->m(Ll7/u;)I

    move-result v9

    invoke-virtual {v2, v9}, Ln7/b;->m(I)I

    iget v8, v8, Lg7/a;->b:I

    invoke-virtual {v2, v8}, Ln7/b;->m(I)I

    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    :cond_7
    if-eqz v6, :cond_4

    invoke-virtual {v5, v7}, Ln7/e;->e(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lg7/a;

    iget v4, v4, Lg7/a;->b:I

    invoke-virtual {v2, v4}, Ln7/b;->m(I)I

    goto :goto_2

    :cond_8
    iget p1, v2, Ln7/b;->c:I

    new-array v3, p1, [B

    iget-object v2, v2, Ln7/b;->b:[B

    invoke-static {v2, v1, v3, v1, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v3, p2, LP9/a;->e:Ljava/lang/Object;

    iget-object p1, p0, Li7/e;->g:LP9/a;

    invoke-virtual {p1}, LP9/a;->o()V

    iget-object p2, p1, LP9/a;->d:Ljava/lang/Object;

    check-cast p2, Lg7/d;

    iget-object p2, p2, Ln7/e;->b:[Ljava/lang/Object;

    array-length p2, p2

    mul-int/lit8 p2, p2, 0x8

    iget-object p1, p1, LP9/a;->e:Ljava/lang/Object;

    check-cast p1, [B

    array-length p1, p1

    add-int v1, p2, p1

    goto :goto_6

    :cond_9
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "too many catch handlers"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_a
    :goto_6
    invoke-virtual {v0}, Lo3/n;->s()V

    iget-object p1, v0, Lo3/n;->d:Ljava/lang/Object;

    check-cast p1, Lg7/h;

    invoke-virtual {p1}, Lg7/h;->h()I

    move-result p1

    and-int/lit8 p2, p1, 0x1

    if-eqz p2, :cond_b

    add-int/lit8 p1, p1, 0x1

    :cond_b
    mul-int/lit8 p1, p1, 0x2

    add-int/lit8 p1, p1, 0x10

    add-int/2addr p1, v1

    invoke-virtual {p0, p1}, Li7/z;->m(I)V

    return-void
.end method

.method public final n(Li7/f;Ln7/b;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual/range {p2 .. p2}, Ln7/b;->d()Z

    move-result v2

    iget-object v3, v0, Li7/e;->f:Lo3/n;

    invoke-virtual {v3}, Lo3/n;->s()V

    iget-object v4, v3, Lo3/n;->d:Ljava/lang/Object;

    check-cast v4, Lg7/h;

    iget v4, v4, Lg7/h;->c:I

    invoke-virtual {v3}, Lo3/n;->s()V

    iget-object v5, v3, Lo3/n;->d:Ljava/lang/Object;

    check-cast v5, Lg7/h;

    iget-object v6, v5, Ln7/e;->b:[Ljava/lang/Object;

    array-length v6, v6

    const/4 v7, 0x0

    move v8, v7

    move v9, v8

    :goto_0
    const/4 v10, 0x1

    if-ge v8, v6, :cond_4

    invoke-virtual {v5, v8}, Ln7/e;->e(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lg7/g;

    instance-of v12, v11, Lg7/f;

    if-nez v12, :cond_0

    goto :goto_2

    :cond_0
    move-object v12, v11

    check-cast v12, Lg7/f;

    iget-object v12, v12, Lg7/f;->f:Ll7/a;

    instance-of v13, v12, Ll7/q;

    if-nez v13, :cond_1

    goto :goto_2

    :cond_1
    iget-object v11, v11, Lg7/g;->b:Lg7/i;

    iget v11, v11, Lg7/i;->b:I

    const/16 v13, 0x71

    if-ne v11, v13, :cond_2

    goto :goto_1

    :cond_2
    move v10, v7

    :goto_1
    check-cast v12, Ll7/q;

    invoke-virtual {v12, v10}, Ll7/q;->g(Z)I

    move-result v10

    if-le v10, v9, :cond_3

    move v9, v10

    :cond_3
    :goto_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_4
    iget-object v5, v0, Li7/e;->e:Ll7/q;

    iget-boolean v6, v0, Li7/e;->h:Z

    invoke-virtual {v5, v6}, Ll7/q;->g(Z)I

    move-result v6

    invoke-virtual {v3}, Lo3/n;->s()V

    iget-object v8, v3, Lo3/n;->d:Ljava/lang/Object;

    check-cast v8, Lg7/h;

    invoke-virtual {v8}, Lg7/h;->h()I

    move-result v8

    and-int/lit8 v11, v8, 0x1

    if-eqz v11, :cond_5

    goto :goto_3

    :cond_5
    move v10, v7

    :goto_3
    iget-object v11, v0, Li7/e;->g:LP9/a;

    if-nez v11, :cond_6

    move v11, v7

    goto :goto_4

    :cond_6
    invoke-virtual {v11}, LP9/a;->o()V

    iget-object v11, v11, LP9/a;->d:Ljava/lang/Object;

    check-cast v11, Lg7/d;

    iget-object v11, v11, Ln7/e;->b:[Ljava/lang/Object;

    array-length v11, v11

    :goto_4
    const/4 v12, 0x2

    if-eqz v2, :cond_a

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Li7/z;->h()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v14, 0x20

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ll7/p;->a()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v1, v7, v13}, Ln7/b;->b(ILjava/lang/String;)V

    invoke-static {v4}, Lqd/d;->e(I)Ljava/lang/String;

    move-result-object v13

    const-string v14, "  registers_size: "

    invoke-virtual {v14, v13}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v1, v12, v13}, Ln7/b;->b(ILjava/lang/String;)V

    invoke-static {v6}, Lqd/d;->e(I)Ljava/lang/String;

    move-result-object v13

    const-string v14, "  ins_size:       "

    invoke-virtual {v14, v13}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v1, v12, v13}, Ln7/b;->b(ILjava/lang/String;)V

    invoke-static {v9}, Lqd/d;->e(I)Ljava/lang/String;

    move-result-object v13

    const-string v14, "  outs_size:      "

    invoke-virtual {v14, v13}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v1, v12, v13}, Ln7/b;->b(ILjava/lang/String;)V

    invoke-static {v11}, Lqd/d;->e(I)Ljava/lang/String;

    move-result-object v13

    const-string v14, "  tries_size:     "

    invoke-virtual {v14, v13}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v1, v12, v13}, Ln7/b;->b(ILjava/lang/String;)V

    invoke-static {v7}, Lqd/d;->f(I)Ljava/lang/String;

    move-result-object v13

    const-string v14, "  debug_off:      "

    invoke-virtual {v14, v13}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x4

    invoke-virtual {v1, v14, v13}, Ln7/b;->b(ILjava/lang/String;)V

    invoke-static {v8}, Lqd/d;->f(I)Ljava/lang/String;

    move-result-object v13

    const-string v15, "  insns_size:     "

    invoke-virtual {v15, v13}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v1, v14, v13}, Ln7/b;->b(ILjava/lang/String;)V

    iget-object v13, v0, Li7/e;->i:Lm7/b;

    iget-object v14, v13, Ln7/e;->b:[Ljava/lang/Object;

    array-length v14, v14

    if-eqz v14, :cond_a

    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "  throws "

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v15, v13, Ln7/e;->b:[Ljava/lang/Object;

    array-length v15, v15

    if-nez v15, :cond_7

    const-string v13, "<empty>"

    goto :goto_6

    :cond_7
    new-instance v12, Ljava/lang/StringBuffer;

    const/16 v7, 0x64

    invoke-direct {v12, v7}, Ljava/lang/StringBuffer;-><init>(I)V

    const/4 v7, 0x0

    :goto_5
    if-ge v7, v15, :cond_9

    move/from16 v16, v15

    if-eqz v7, :cond_8

    const-string v15, ", "

    invoke-virtual {v12, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_8
    invoke-virtual {v13, v7}, Ln7/e;->e(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lm7/c;

    invoke-virtual {v15}, Lm7/c;->a()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v12, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v7, v7, 0x1

    move/from16 v15, v16

    goto :goto_5

    :cond_9
    invoke-virtual {v12}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v13

    :goto_6
    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v12, 0x0

    invoke-virtual {v1, v12, v7}, Ln7/b;->b(ILjava/lang/String;)V

    goto :goto_7

    :cond_a
    move v12, v7

    :goto_7
    invoke-virtual {v1, v4}, Ln7/b;->k(I)V

    invoke-virtual {v1, v6}, Ln7/b;->k(I)V

    invoke-virtual {v1, v9}, Ln7/b;->k(I)V

    invoke-virtual {v1, v11}, Ln7/b;->k(I)V

    invoke-virtual {v1, v12}, Ln7/b;->j(I)V

    invoke-virtual {v1, v8}, Ln7/b;->j(I)V

    invoke-virtual {v3}, Lo3/n;->s()V

    iget-object v3, v3, Lo3/n;->d:Ljava/lang/Object;

    check-cast v3, Lg7/h;

    :try_start_0
    invoke-virtual {v3, v1}, Lg7/h;->k(Ln7/b;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v3, v0, Li7/e;->g:LP9/a;

    if-eqz v3, :cond_15

    if-eqz v10, :cond_c

    if-eqz v2, :cond_b

    const-string v2, "  padding: 0"

    const/4 v3, 0x2

    invoke-virtual {v1, v3, v2}, Ln7/b;->b(ILjava/lang/String;)V

    :cond_b
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ln7/b;->k(I)V

    :cond_c
    iget-object v0, v0, Li7/e;->g:LP9/a;

    invoke-virtual {v0}, LP9/a;->o()V

    invoke-virtual/range {p2 .. p2}, Ln7/b;->d()Z

    move-result v2

    const-string v3, ".."

    if-eqz v2, :cond_12

    invoke-virtual {v0}, LP9/a;->o()V

    iget-object v2, v0, LP9/a;->d:Ljava/lang/Object;

    check-cast v2, Lg7/d;

    iget-object v2, v2, Ln7/e;->b:[Ljava/lang/Object;

    array-length v2, v2

    const-string v4, "  tries:"

    const/4 v5, 0x0

    invoke-virtual {v1, v5, v4}, Ln7/b;->b(ILjava/lang/String;)V

    const/4 v12, 0x0

    :goto_8
    const-string v4, "    "

    if-ge v12, v2, :cond_f

    iget-object v5, v0, LP9/a;->d:Ljava/lang/Object;

    check-cast v5, Lg7/d;

    invoke-virtual {v5, v12}, Ln7/e;->e(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lg7/c;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "    try "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v7, v5, Lg7/c;->a:I

    int-to-char v8, v7

    if-ne v7, v8, :cond_d

    invoke-static {v7}, Lqd/d;->e(I)Ljava/lang/String;

    move-result-object v7

    goto :goto_9

    :cond_d
    invoke-static {v7}, Lqd/d;->f(I)Ljava/lang/String;

    move-result-object v7

    :goto_9
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v5, Lg7/c;->b:I

    int-to-char v8, v7

    if-ne v7, v8, :cond_e

    invoke-static {v7}, Lqd/d;->e(I)Ljava/lang/String;

    move-result-object v7

    goto :goto_a

    :cond_e
    invoke-static {v7}, Lqd/d;->f(I)Ljava/lang/String;

    move-result-object v7

    :goto_a
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iget-object v5, v5, Lg7/c;->c:Lg7/b;

    const-string v7, ""

    invoke-virtual {v5, v4, v7}, Lg7/b;->k(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x6

    invoke-virtual {v1, v5, v6}, Ln7/b;->b(ILjava/lang/String;)V

    const/4 v5, 0x2

    invoke-virtual {v1, v5, v4}, Ln7/b;->b(ILjava/lang/String;)V

    add-int/lit8 v12, v12, 0x1

    goto :goto_8

    :cond_f
    const-string v2, "  handlers:"

    const/4 v12, 0x0

    invoke-virtual {v1, v12, v2}, Ln7/b;->b(ILjava/lang/String;)V

    iget v2, v0, LP9/a;->b:I

    iget-object v5, v0, LP9/a;->f:Ljava/lang/Object;

    check-cast v5, Ljava/util/TreeMap;

    invoke-virtual {v5}, Ljava/util/TreeMap;->size()I

    move-result v5

    invoke-static {v5}, Lqd/d;->e(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "    size: "

    invoke-virtual {v6, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v2, v5}, Ln7/b;->b(ILjava/lang/String;)V

    iget-object v2, v0, LP9/a;->f:Ljava/lang/Object;

    check-cast v2, Ljava/util/TreeMap;

    invoke-virtual {v2}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v5, 0x0

    move v6, v12

    :goto_b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    const-string v8, ": "

    if-eqz v7, :cond_11

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lg7/b;

    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-eqz v5, :cond_10

    sub-int v10, v7, v6

    invoke-static {v6}, Lqd/d;->e(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v4, v6}, Lg7/b;->k(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v10, v5}, Ln7/b;->b(ILjava/lang/String;)V

    :cond_10
    move v6, v7

    move-object v5, v9

    goto :goto_b

    :cond_11
    iget-object v2, v0, LP9/a;->e:Ljava/lang/Object;

    check-cast v2, [B

    array-length v2, v2

    sub-int/2addr v2, v6

    invoke-static {v6}, Lqd/d;->e(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v4, v6}, Lg7/b;->k(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Ln7/b;->b(ILjava/lang/String;)V

    goto :goto_c

    :cond_12
    const/4 v12, 0x0

    :goto_c
    iget-object v2, v0, LP9/a;->d:Ljava/lang/Object;

    check-cast v2, Lg7/d;

    iget-object v2, v2, Ln7/e;->b:[Ljava/lang/Object;

    array-length v2, v2

    move v7, v12

    :goto_d
    if-ge v7, v2, :cond_14

    iget-object v4, v0, LP9/a;->d:Ljava/lang/Object;

    check-cast v4, Lg7/d;

    invoke-virtual {v4, v7}, Ln7/e;->e(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lg7/c;

    iget v5, v4, Lg7/c;->b:I

    iget v6, v4, Lg7/c;->a:I

    sub-int v8, v5, v6

    const/high16 v9, 0x10000

    if-ge v8, v9, :cond_13

    invoke-virtual {v1, v6}, Ln7/b;->j(I)V

    invoke-virtual {v1, v8}, Ln7/b;->k(I)V

    iget-object v5, v0, LP9/a;->f:Ljava/lang/Object;

    check-cast v5, Ljava/util/TreeMap;

    iget-object v4, v4, Lg7/c;->c:Lg7/b;

    invoke-virtual {v5, v4}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v1, v4}, Ln7/b;->k(I)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_d

    :cond_13
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "bogus exception range: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v6}, Lqd/d;->f(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v5}, Lqd/d;->f(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_14
    iget-object v0, v0, LP9/a;->e:Ljava/lang/Object;

    check-cast v0, [B

    invoke-virtual {v1, v0}, Ln7/b;->h([B)V

    :cond_15
    return-void

    :catch_0
    move-exception v0

    move-object v1, v0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "...while writing instructions for "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ll7/p;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Ln7/d;->a(Ljava/lang/String;Ljava/lang/Exception;)Ln7/d;

    move-result-object v0

    throw v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CodeItem{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Li7/e;->e:Ll7/q;

    invoke-virtual {p0}, Ll7/p;->a()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
