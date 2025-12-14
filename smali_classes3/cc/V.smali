.class public final Lcc/V;
.super Lic/m;
.source "SourceFile"


# static fields
.field public static final p:Lcc/V;

.field public static final q:Lcc/a;


# instance fields
.field public final b:Lic/e;

.field public c:I

.field public d:I

.field public e:I

.field public f:Ljava/util/List;

.field public g:Lcc/T;

.field public h:I

.field public i:Lcc/T;

.field public j:I

.field public k:Ljava/util/List;

.field public l:Ljava/util/List;

.field public m:Ljava/util/List;

.field public n:B

.field public o:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcc/a;

    const/16 v1, 0x13

    invoke-direct {v0, v1}, Lcc/a;-><init>(I)V

    sput-object v0, Lcc/V;->q:Lcc/a;

    new-instance v0, Lcc/V;

    invoke-direct {v0}, Lcc/V;-><init>()V

    sput-object v0, Lcc/V;->p:Lcc/V;

    invoke-virtual {v0}, Lcc/V;->n()V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lic/m;-><init>()V

    const/4 v0, -0x1

    iput-byte v0, p0, Lcc/V;->n:B

    iput v0, p0, Lcc/V;->o:I

    sget-object v0, Lic/e;->a:Lic/w;

    iput-object v0, p0, Lcc/V;->b:Lic/e;

    return-void
.end method

.method public constructor <init>(Lcc/U;)V
    .locals 1

    invoke-direct {p0, p1}, Lic/m;-><init>(Lic/l;)V

    const/4 v0, -0x1

    iput-byte v0, p0, Lcc/V;->n:B

    iput v0, p0, Lcc/V;->o:I

    iget-object p1, p1, Lic/k;->a:Lic/e;

    iput-object p1, p0, Lcc/V;->b:Lic/e;

    return-void
.end method

.method public constructor <init>(Lcom/google/crypto/tink/shaded/protobuf/i;Lic/g;)V
    .locals 12

    invoke-direct {p0}, Lic/m;-><init>()V

    const/4 v0, -0x1

    iput-byte v0, p0, Lcc/V;->n:B

    iput v0, p0, Lcc/V;->o:I

    invoke-virtual {p0}, Lcc/V;->n()V

    new-instance v0, Lic/d;

    invoke-direct {v0}, Lic/d;-><init>()V

    const/4 v1, 0x1

    invoke-static {v0, v1}, LK6/q;->j(Ljava/io/OutputStream;I)LK6/q;

    move-result-object v2

    const/4 v3, 0x0

    move v4, v3

    :cond_0
    :goto_0
    const/16 v5, 0x200

    const/16 v6, 0x80

    const/4 v7, 0x4

    const/16 v8, 0x100

    if-nez v3, :cond_f

    :try_start_0
    invoke-virtual {p1}, Lcom/google/crypto/tink/shaded/protobuf/i;->s()I

    move-result v9

    const/4 v10, 0x0

    sparse-switch v9, :sswitch_data_0

    invoke-virtual {p0, p1, v2, p2, v9}, Lic/m;->l(Lcom/google/crypto/tink/shaded/protobuf/i;LK6/q;Lic/g;I)Z

    move-result v5

    if-nez v5, :cond_0

    :sswitch_0
    move v3, v1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto/16 :goto_4

    :catch_0
    move-exception p1

    goto/16 :goto_2

    :catch_1
    move-exception p1

    goto/16 :goto_3

    :sswitch_1
    and-int/lit16 v9, v4, 0x200

    if-eq v9, v5, :cond_1

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iput-object v9, p0, Lcc/V;->m:Ljava/util/List;

    or-int/lit16 v4, v4, 0x200

    :cond_1
    iget-object v9, p0, Lcc/V;->m:Ljava/util/List;

    sget-object v10, Lcc/l;->h:Lcc/a;

    invoke-virtual {p1, v10, p2}, Lcom/google/crypto/tink/shaded/protobuf/i;->l(Lic/y;Lic/g;)Lic/b;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :sswitch_2
    invoke-virtual {p1}, Lcom/google/crypto/tink/shaded/protobuf/i;->p()I

    move-result v9

    invoke-virtual {p1, v9}, Lcom/google/crypto/tink/shaded/protobuf/i;->h(I)I

    move-result v9

    and-int/lit16 v10, v4, 0x100

    if-eq v10, v8, :cond_2

    invoke-virtual {p1}, Lcom/google/crypto/tink/shaded/protobuf/i;->d()I

    move-result v10

    if-lez v10, :cond_2

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    iput-object v10, p0, Lcc/V;->l:Ljava/util/List;

    or-int/lit16 v4, v4, 0x100

    :cond_2
    :goto_1
    invoke-virtual {p1}, Lcom/google/crypto/tink/shaded/protobuf/i;->d()I

    move-result v10

    if-lez v10, :cond_3

    iget-object v10, p0, Lcc/V;->l:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/crypto/tink/shaded/protobuf/i;->p()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    invoke-virtual {p1, v9}, Lcom/google/crypto/tink/shaded/protobuf/i;->g(I)V

    goto :goto_0

    :sswitch_3
    and-int/lit16 v9, v4, 0x100

    if-eq v9, v8, :cond_4

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iput-object v9, p0, Lcc/V;->l:Ljava/util/List;

    or-int/lit16 v4, v4, 0x100

    :cond_4
    iget-object v9, p0, Lcc/V;->l:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/crypto/tink/shaded/protobuf/i;->p()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :sswitch_4
    and-int/lit16 v9, v4, 0x80

    if-eq v9, v6, :cond_5

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iput-object v9, p0, Lcc/V;->k:Ljava/util/List;

    or-int/lit16 v4, v4, 0x80

    :cond_5
    iget-object v9, p0, Lcc/V;->k:Ljava/util/List;

    sget-object v10, Lcc/h;->h:Lcc/a;

    invoke-virtual {p1, v10, p2}, Lcom/google/crypto/tink/shaded/protobuf/i;->l(Lic/y;Lic/g;)Lic/b;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :sswitch_5
    iget v9, p0, Lcc/V;->c:I

    or-int/lit8 v9, v9, 0x20

    iput v9, p0, Lcc/V;->c:I

    invoke-virtual {p1}, Lcom/google/crypto/tink/shaded/protobuf/i;->p()I

    move-result v9

    iput v9, p0, Lcc/V;->j:I

    goto/16 :goto_0

    :sswitch_6
    iget v9, p0, Lcc/V;->c:I

    const/16 v11, 0x10

    and-int/2addr v9, v11

    if-ne v9, v11, :cond_6

    iget-object v9, p0, Lcc/V;->i:Lcc/T;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v9}, Lcc/T;->p(Lcc/T;)Lcc/S;

    move-result-object v10

    :cond_6
    sget-object v9, Lcc/T;->u:Lcc/a;

    invoke-virtual {p1, v9, p2}, Lcom/google/crypto/tink/shaded/protobuf/i;->l(Lic/y;Lic/g;)Lic/b;

    move-result-object v9

    check-cast v9, Lcc/T;

    iput-object v9, p0, Lcc/V;->i:Lcc/T;

    if-eqz v10, :cond_7

    invoke-virtual {v10, v9}, Lcc/S;->g(Lcc/T;)Lcc/S;

    invoke-virtual {v10}, Lcc/S;->e()Lcc/T;

    move-result-object v9

    iput-object v9, p0, Lcc/V;->i:Lcc/T;

    :cond_7
    iget v9, p0, Lcc/V;->c:I

    or-int/2addr v9, v11

    iput v9, p0, Lcc/V;->c:I

    goto/16 :goto_0

    :sswitch_7
    iget v9, p0, Lcc/V;->c:I

    or-int/lit8 v9, v9, 0x8

    iput v9, p0, Lcc/V;->c:I

    invoke-virtual {p1}, Lcom/google/crypto/tink/shaded/protobuf/i;->p()I

    move-result v9

    iput v9, p0, Lcc/V;->h:I

    goto/16 :goto_0

    :sswitch_8
    iget v9, p0, Lcc/V;->c:I

    and-int/2addr v9, v7

    if-ne v9, v7, :cond_8

    iget-object v9, p0, Lcc/V;->g:Lcc/T;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v9}, Lcc/T;->p(Lcc/T;)Lcc/S;

    move-result-object v10

    :cond_8
    sget-object v9, Lcc/T;->u:Lcc/a;

    invoke-virtual {p1, v9, p2}, Lcom/google/crypto/tink/shaded/protobuf/i;->l(Lic/y;Lic/g;)Lic/b;

    move-result-object v9

    check-cast v9, Lcc/T;

    iput-object v9, p0, Lcc/V;->g:Lcc/T;

    if-eqz v10, :cond_9

    invoke-virtual {v10, v9}, Lcc/S;->g(Lcc/T;)Lcc/S;

    invoke-virtual {v10}, Lcc/S;->e()Lcc/T;

    move-result-object v9

    iput-object v9, p0, Lcc/V;->g:Lcc/T;

    :cond_9
    iget v9, p0, Lcc/V;->c:I

    or-int/2addr v9, v7

    iput v9, p0, Lcc/V;->c:I

    goto/16 :goto_0

    :sswitch_9
    and-int/lit8 v9, v4, 0x4

    if-eq v9, v7, :cond_a

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iput-object v9, p0, Lcc/V;->f:Ljava/util/List;

    or-int/lit8 v4, v4, 0x4

    :cond_a
    iget-object v9, p0, Lcc/V;->f:Ljava/util/List;

    sget-object v10, Lcc/Y;->n:Lcc/a;

    invoke-virtual {p1, v10, p2}, Lcom/google/crypto/tink/shaded/protobuf/i;->l(Lic/y;Lic/g;)Lic/b;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :sswitch_a
    iget v9, p0, Lcc/V;->c:I

    or-int/lit8 v9, v9, 0x2

    iput v9, p0, Lcc/V;->c:I

    invoke-virtual {p1}, Lcom/google/crypto/tink/shaded/protobuf/i;->p()I

    move-result v9

    iput v9, p0, Lcc/V;->e:I

    goto/16 :goto_0

    :sswitch_b
    iget v9, p0, Lcc/V;->c:I

    or-int/2addr v9, v1

    iput v9, p0, Lcc/V;->c:I

    invoke-virtual {p1}, Lcom/google/crypto/tink/shaded/protobuf/i;->p()I

    move-result v9

    iput v9, p0, Lcc/V;->d:I
    :try_end_0
    .catch Lic/t; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    :goto_2
    :try_start_1
    new-instance p2, Lic/t;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lic/t;-><init>(Ljava/lang/String;)V

    iput-object p0, p2, Lic/t;->a:Lic/b;

    throw p2

    :goto_3
    iput-object p0, p1, Lic/t;->a:Lic/b;

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_4
    and-int/lit8 p2, v4, 0x4

    if-ne p2, v7, :cond_b

    iget-object p2, p0, Lcc/V;->f:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lcc/V;->f:Ljava/util/List;

    :cond_b
    and-int/lit16 p2, v4, 0x80

    if-ne p2, v6, :cond_c

    iget-object p2, p0, Lcc/V;->k:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lcc/V;->k:Ljava/util/List;

    :cond_c
    and-int/lit16 p2, v4, 0x100

    if-ne p2, v8, :cond_d

    iget-object p2, p0, Lcc/V;->l:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lcc/V;->l:Ljava/util/List;

    :cond_d
    and-int/lit16 p2, v4, 0x200

    if-ne p2, v5, :cond_e

    iget-object p2, p0, Lcc/V;->m:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lcc/V;->m:Ljava/util/List;

    :cond_e
    :try_start_2
    invoke-virtual {v2}, LK6/q;->i()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catch_2
    invoke-virtual {v0}, Lic/d;->c()Lic/e;

    move-result-object p2

    iput-object p2, p0, Lcc/V;->b:Lic/e;

    goto :goto_5

    :catchall_1
    move-exception p1

    invoke-virtual {v0}, Lic/d;->c()Lic/e;

    move-result-object p2

    iput-object p2, p0, Lcc/V;->b:Lic/e;

    throw p1

    :goto_5
    invoke-virtual {p0}, Lic/m;->k()V

    throw p1

    :cond_f
    and-int/lit8 p1, v4, 0x4

    if-ne p1, v7, :cond_10

    iget-object p1, p0, Lcc/V;->f:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcc/V;->f:Ljava/util/List;

    :cond_10
    and-int/lit16 p1, v4, 0x80

    if-ne p1, v6, :cond_11

    iget-object p1, p0, Lcc/V;->k:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcc/V;->k:Ljava/util/List;

    :cond_11
    and-int/lit16 p1, v4, 0x100

    if-ne p1, v8, :cond_12

    iget-object p1, p0, Lcc/V;->l:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcc/V;->l:Ljava/util/List;

    :cond_12
    and-int/lit16 p1, v4, 0x200

    if-ne p1, v5, :cond_13

    iget-object p1, p0, Lcc/V;->m:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcc/V;->m:Ljava/util/List;

    :cond_13
    :try_start_3
    invoke-virtual {v2}, LK6/q;->i()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :catch_3
    invoke-virtual {v0}, Lic/d;->c()Lic/e;

    move-result-object p1

    iput-object p1, p0, Lcc/V;->b:Lic/e;

    goto :goto_6

    :catchall_2
    move-exception p1

    invoke-virtual {v0}, Lic/d;->c()Lic/e;

    move-result-object p2

    iput-object p2, p0, Lcc/V;->b:Lic/e;

    throw p1

    :goto_6
    invoke-virtual {p0}, Lic/m;->k()V

    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_b
        0x10 -> :sswitch_a
        0x1a -> :sswitch_9
        0x22 -> :sswitch_8
        0x28 -> :sswitch_7
        0x32 -> :sswitch_6
        0x38 -> :sswitch_5
        0x42 -> :sswitch_4
        0xf8 -> :sswitch_3
        0xfa -> :sswitch_2
        0x102 -> :sswitch_1
    .end sparse-switch
.end method


# virtual methods
.method public final a()I
    .locals 7

    iget v0, p0, Lcc/V;->o:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    iget v0, p0, Lcc/V;->c:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    iget v0, p0, Lcc/V;->d:I

    invoke-static {v1, v0}, LK6/q;->b(II)I

    move-result v0

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    iget v1, p0, Lcc/V;->c:I

    const/4 v3, 0x2

    and-int/2addr v1, v3

    if-ne v1, v3, :cond_2

    iget v1, p0, Lcc/V;->e:I

    invoke-static {v3, v1}, LK6/q;->b(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_2
    move v1, v2

    :goto_1
    iget-object v4, p0, Lcc/V;->f:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_3

    iget-object v4, p0, Lcc/V;->f:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lic/b;

    const/4 v5, 0x3

    invoke-static {v5, v4}, LK6/q;->d(ILic/b;)I

    move-result v4

    add-int/2addr v0, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    iget v1, p0, Lcc/V;->c:I

    const/4 v4, 0x4

    and-int/2addr v1, v4

    if-ne v1, v4, :cond_4

    iget-object v1, p0, Lcc/V;->g:Lcc/T;

    invoke-static {v4, v1}, LK6/q;->d(ILic/b;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_4
    iget v1, p0, Lcc/V;->c:I

    const/16 v4, 0x8

    and-int/2addr v1, v4

    if-ne v1, v4, :cond_5

    const/4 v1, 0x5

    iget v5, p0, Lcc/V;->h:I

    invoke-static {v1, v5}, LK6/q;->b(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_5
    iget v1, p0, Lcc/V;->c:I

    const/16 v5, 0x10

    and-int/2addr v1, v5

    if-ne v1, v5, :cond_6

    const/4 v1, 0x6

    iget-object v5, p0, Lcc/V;->i:Lcc/T;

    invoke-static {v1, v5}, LK6/q;->d(ILic/b;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_6
    iget v1, p0, Lcc/V;->c:I

    const/16 v5, 0x20

    and-int/2addr v1, v5

    if-ne v1, v5, :cond_7

    const/4 v1, 0x7

    iget v6, p0, Lcc/V;->j:I

    invoke-static {v1, v6}, LK6/q;->b(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_7
    move v1, v2

    :goto_2
    iget-object v6, p0, Lcc/V;->k:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v1, v6, :cond_8

    iget-object v6, p0, Lcc/V;->k:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lic/b;

    invoke-static {v4, v6}, LK6/q;->d(ILic/b;)I

    move-result v6

    add-int/2addr v0, v6

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_8
    move v1, v2

    move v4, v1

    :goto_3
    iget-object v6, p0, Lcc/V;->l:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v1, v6, :cond_9

    iget-object v6, p0, Lcc/V;->l:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static {v6}, LK6/q;->c(I)I

    move-result v6

    add-int/2addr v4, v6

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_9
    add-int/2addr v0, v4

    iget-object v1, p0, Lcc/V;->l:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    mul-int/2addr v1, v3

    add-int/2addr v1, v0

    :goto_4
    iget-object v0, p0, Lcc/V;->m:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_a

    iget-object v0, p0, Lcc/V;->m:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lic/b;

    invoke-static {v5, v0}, LK6/q;->d(ILic/b;)I

    move-result v0

    add-int/2addr v1, v0

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_a
    invoke-virtual {p0}, Lic/m;->h()I

    move-result v0

    add-int/2addr v0, v1

    iget-object v1, p0, Lcc/V;->b:Lic/e;

    invoke-virtual {v1}, Lic/e;->size()I

    move-result v1

    add-int/2addr v1, v0

    iput v1, p0, Lcc/V;->o:I

    return v1
.end method

.method public final b()Lic/k;
    .locals 0

    invoke-static {}, Lcc/U;->f()Lcc/U;

    move-result-object p0

    return-object p0
.end method

.method public final c()Lic/k;
    .locals 1

    invoke-static {}, Lcc/U;->f()Lcc/U;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcc/U;->g(Lcc/V;)V

    return-object v0
.end method

.method public final d(LK6/q;)V
    .locals 6

    invoke-virtual {p0}, Lcc/V;->a()I

    new-instance v0, Lcom/samsung/android/motionphoto/utils/ex/e;

    invoke-direct {v0, p0}, Lcom/samsung/android/motionphoto/utils/ex/e;-><init>(Lic/m;)V

    iget v1, p0, Lcc/V;->c:I

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_0

    iget v1, p0, Lcc/V;->d:I

    invoke-virtual {p1, v2, v1}, LK6/q;->m(II)V

    :cond_0
    iget v1, p0, Lcc/V;->c:I

    const/4 v2, 0x2

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_1

    iget v1, p0, Lcc/V;->e:I

    invoke-virtual {p1, v2, v1}, LK6/q;->m(II)V

    :cond_1
    const/4 v1, 0x0

    move v2, v1

    :goto_0
    iget-object v3, p0, Lcc/V;->f:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    iget-object v3, p0, Lcc/V;->f:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lic/b;

    const/4 v4, 0x3

    invoke-virtual {p1, v4, v3}, LK6/q;->o(ILic/b;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    iget v2, p0, Lcc/V;->c:I

    const/4 v3, 0x4

    and-int/2addr v2, v3

    if-ne v2, v3, :cond_3

    iget-object v2, p0, Lcc/V;->g:Lcc/T;

    invoke-virtual {p1, v3, v2}, LK6/q;->o(ILic/b;)V

    :cond_3
    iget v2, p0, Lcc/V;->c:I

    const/16 v3, 0x8

    and-int/2addr v2, v3

    if-ne v2, v3, :cond_4

    const/4 v2, 0x5

    iget v4, p0, Lcc/V;->h:I

    invoke-virtual {p1, v2, v4}, LK6/q;->m(II)V

    :cond_4
    iget v2, p0, Lcc/V;->c:I

    const/16 v4, 0x10

    and-int/2addr v2, v4

    if-ne v2, v4, :cond_5

    const/4 v2, 0x6

    iget-object v4, p0, Lcc/V;->i:Lcc/T;

    invoke-virtual {p1, v2, v4}, LK6/q;->o(ILic/b;)V

    :cond_5
    iget v2, p0, Lcc/V;->c:I

    const/16 v4, 0x20

    and-int/2addr v2, v4

    if-ne v2, v4, :cond_6

    const/4 v2, 0x7

    iget v5, p0, Lcc/V;->j:I

    invoke-virtual {p1, v2, v5}, LK6/q;->m(II)V

    :cond_6
    move v2, v1

    :goto_1
    iget-object v5, p0, Lcc/V;->k:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_7

    iget-object v5, p0, Lcc/V;->k:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lic/b;

    invoke-virtual {p1, v3, v5}, LK6/q;->o(ILic/b;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_7
    move v2, v1

    :goto_2
    iget-object v3, p0, Lcc/V;->l:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_8

    iget-object v3, p0, Lcc/V;->l:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/16 v5, 0x1f

    invoke-virtual {p1, v5, v3}, LK6/q;->m(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_8
    :goto_3
    iget-object v2, p0, Lcc/V;->m:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_9

    iget-object v2, p0, Lcc/V;->m:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lic/b;

    invoke-virtual {p1, v4, v2}, LK6/q;->o(ILic/b;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_9
    const/16 v1, 0xc8

    invoke-virtual {v0, v1, p1}, Lcom/samsung/android/motionphoto/utils/ex/e;->y(ILK6/q;)V

    iget-object p0, p0, Lcc/V;->b:Lic/e;

    invoke-virtual {p1, p0}, LK6/q;->r(Lic/e;)V

    return-void
.end method

.method public final getDefaultInstanceForType()Lic/b;
    .locals 0

    sget-object p0, Lcc/V;->p:Lcc/V;

    return-object p0
.end method

.method public final isInitialized()Z
    .locals 4

    iget-byte v0, p0, Lcc/V;->n:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v2, 0x0

    if-nez v0, :cond_1

    return v2

    :cond_1
    iget v0, p0, Lcc/V;->c:I

    const/4 v3, 0x2

    and-int/2addr v0, v3

    if-ne v0, v3, :cond_b

    move v0, v2

    :goto_0
    iget-object v3, p0, Lcc/V;->f:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_3

    iget-object v3, p0, Lcc/V;->f:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcc/Y;

    invoke-virtual {v3}, Lcc/Y;->isInitialized()Z

    move-result v3

    if-nez v3, :cond_2

    iput-byte v2, p0, Lcc/V;->n:B

    return v2

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    iget v0, p0, Lcc/V;->c:I

    const/4 v3, 0x4

    and-int/2addr v0, v3

    if-ne v0, v3, :cond_4

    iget-object v0, p0, Lcc/V;->g:Lcc/T;

    invoke-virtual {v0}, Lcc/T;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_4

    iput-byte v2, p0, Lcc/V;->n:B

    return v2

    :cond_4
    iget v0, p0, Lcc/V;->c:I

    const/16 v3, 0x10

    and-int/2addr v0, v3

    if-ne v0, v3, :cond_5

    iget-object v0, p0, Lcc/V;->i:Lcc/T;

    invoke-virtual {v0}, Lcc/T;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_5

    iput-byte v2, p0, Lcc/V;->n:B

    return v2

    :cond_5
    move v0, v2

    :goto_1
    iget-object v3, p0, Lcc/V;->k:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_7

    iget-object v3, p0, Lcc/V;->k:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcc/h;

    invoke-virtual {v3}, Lcc/h;->isInitialized()Z

    move-result v3

    if-nez v3, :cond_6

    iput-byte v2, p0, Lcc/V;->n:B

    return v2

    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_7
    move v0, v2

    :goto_2
    iget-object v3, p0, Lcc/V;->m:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_9

    iget-object v3, p0, Lcc/V;->m:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcc/l;

    invoke-virtual {v3}, Lcc/l;->isInitialized()Z

    move-result v3

    if-nez v3, :cond_8

    iput-byte v2, p0, Lcc/V;->n:B

    return v2

    :cond_8
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_9
    invoke-virtual {p0}, Lic/m;->g()Z

    move-result v0

    if-nez v0, :cond_a

    iput-byte v2, p0, Lcc/V;->n:B

    return v2

    :cond_a
    iput-byte v1, p0, Lcc/V;->n:B

    return v1

    :cond_b
    iput-byte v2, p0, Lcc/V;->n:B

    return v2
.end method

.method public final n()V
    .locals 2

    const/4 v0, 0x6

    iput v0, p0, Lcc/V;->d:I

    const/4 v0, 0x0

    iput v0, p0, Lcc/V;->e:I

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcc/V;->f:Ljava/util/List;

    sget-object v1, Lcc/T;->t:Lcc/T;

    iput-object v1, p0, Lcc/V;->g:Lcc/T;

    iput v0, p0, Lcc/V;->h:I

    iput-object v1, p0, Lcc/V;->i:Lcc/T;

    iput v0, p0, Lcc/V;->j:I

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcc/V;->k:Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcc/V;->l:Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcc/V;->m:Ljava/util/List;

    return-void
.end method
