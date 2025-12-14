.class public final Lcc/I;
.super Lic/m;
.source "SourceFile"


# static fields
.field public static final v:Lcc/I;

.field public static final w:Lcc/a;


# instance fields
.field public final b:Lic/e;

.field public c:I

.field public d:I

.field public e:I

.field public f:I

.field public g:Lcc/T;

.field public h:I

.field public i:Ljava/util/List;

.field public j:Lcc/T;

.field public k:I

.field public l:Ljava/util/List;

.field public m:Ljava/util/List;

.field public n:I

.field public o:Lcc/b0;

.field public p:I

.field public q:I

.field public r:Ljava/util/List;

.field public s:Ljava/util/List;

.field public t:B

.field public u:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcc/a;

    const/16 v1, 0xd

    invoke-direct {v0, v1}, Lcc/a;-><init>(I)V

    sput-object v0, Lcc/I;->w:Lcc/a;

    new-instance v0, Lcc/I;

    invoke-direct {v0}, Lcc/I;-><init>()V

    sput-object v0, Lcc/I;->v:Lcc/I;

    invoke-virtual {v0}, Lcc/I;->o()V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lic/m;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcc/I;->n:I

    iput-byte v0, p0, Lcc/I;->t:B

    iput v0, p0, Lcc/I;->u:I

    sget-object v0, Lic/e;->a:Lic/w;

    iput-object v0, p0, Lcc/I;->b:Lic/e;

    return-void
.end method

.method public constructor <init>(Lcc/H;)V
    .locals 1

    invoke-direct {p0, p1}, Lic/m;-><init>(Lic/l;)V

    const/4 v0, -0x1

    iput v0, p0, Lcc/I;->n:I

    iput-byte v0, p0, Lcc/I;->t:B

    iput v0, p0, Lcc/I;->u:I

    iget-object p1, p1, Lic/k;->a:Lic/e;

    iput-object p1, p0, Lcc/I;->b:Lic/e;

    return-void
.end method

.method public constructor <init>(Lcom/google/crypto/tink/shaded/protobuf/i;Lic/g;)V
    .locals 16

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    invoke-direct/range {p0 .. p0}, Lic/m;-><init>()V

    const/4 v3, -0x1

    iput v3, v1, Lcc/I;->n:I

    iput-byte v3, v1, Lcc/I;->t:B

    iput v3, v1, Lcc/I;->u:I

    invoke-virtual/range {p0 .. p0}, Lcc/I;->o()V

    new-instance v3, Lic/d;

    invoke-direct {v3}, Lic/d;-><init>()V

    const/4 v4, 0x1

    invoke-static {v3, v4}, LK6/q;->j(Ljava/io/OutputStream;I)LK6/q;

    move-result-object v5

    const/4 v6, 0x0

    move v7, v6

    :goto_0
    const/16 v8, 0x4000

    const/16 v9, 0x100

    const/16 v10, 0x20

    const/16 v11, 0x2000

    const/16 v12, 0x200

    if-nez v6, :cond_15

    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lcom/google/crypto/tink/shaded/protobuf/i;->s()I

    move-result v13

    const/4 v14, 0x0

    sparse-switch v13, :sswitch_data_0

    invoke-virtual {v1, v0, v5, v2, v13}, Lic/m;->l(Lcom/google/crypto/tink/shaded/protobuf/i;LK6/q;Lic/g;I)Z

    move-result v8

    if-nez v8, :cond_f

    move v6, v4

    goto/16 :goto_3

    :catchall_0
    move-exception v0

    goto/16 :goto_6

    :catch_0
    move-exception v0

    goto/16 :goto_4

    :catch_1
    move-exception v0

    goto/16 :goto_5

    :sswitch_0
    and-int/lit16 v13, v7, 0x4000

    if-eq v13, v8, :cond_0

    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    iput-object v13, v1, Lcc/I;->s:Ljava/util/List;

    or-int/lit16 v7, v7, 0x4000

    :cond_0
    iget-object v13, v1, Lcc/I;->s:Ljava/util/List;

    sget-object v14, Lcc/l;->h:Lcc/a;

    invoke-virtual {v0, v14, v2}, Lcom/google/crypto/tink/shaded/protobuf/i;->l(Lic/y;Lic/g;)Lic/b;

    move-result-object v14

    invoke-interface {v13, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    :sswitch_1
    invoke-virtual/range {p1 .. p1}, Lcom/google/crypto/tink/shaded/protobuf/i;->p()I

    move-result v13

    invoke-virtual {v0, v13}, Lcom/google/crypto/tink/shaded/protobuf/i;->h(I)I

    move-result v13

    and-int/lit16 v14, v7, 0x2000

    if-eq v14, v11, :cond_1

    invoke-virtual/range {p1 .. p1}, Lcom/google/crypto/tink/shaded/protobuf/i;->d()I

    move-result v14

    if-lez v14, :cond_1

    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    iput-object v14, v1, Lcc/I;->r:Ljava/util/List;

    or-int/lit16 v7, v7, 0x2000

    :cond_1
    :goto_1
    invoke-virtual/range {p1 .. p1}, Lcom/google/crypto/tink/shaded/protobuf/i;->d()I

    move-result v14

    if-lez v14, :cond_2

    iget-object v14, v1, Lcc/I;->r:Ljava/util/List;

    invoke-virtual/range {p1 .. p1}, Lcom/google/crypto/tink/shaded/protobuf/i;->p()I

    move-result v15

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-interface {v14, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    invoke-virtual {v0, v13}, Lcom/google/crypto/tink/shaded/protobuf/i;->g(I)V

    goto/16 :goto_3

    :sswitch_2
    and-int/lit16 v13, v7, 0x2000

    if-eq v13, v11, :cond_3

    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    iput-object v13, v1, Lcc/I;->r:Ljava/util/List;

    or-int/lit16 v7, v7, 0x2000

    :cond_3
    iget-object v13, v1, Lcc/I;->r:Ljava/util/List;

    invoke-virtual/range {p1 .. p1}, Lcom/google/crypto/tink/shaded/protobuf/i;->p()I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-interface {v13, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    :sswitch_3
    invoke-virtual/range {p1 .. p1}, Lcom/google/crypto/tink/shaded/protobuf/i;->p()I

    move-result v13

    invoke-virtual {v0, v13}, Lcom/google/crypto/tink/shaded/protobuf/i;->h(I)I

    move-result v13

    and-int/lit16 v14, v7, 0x200

    if-eq v14, v12, :cond_4

    invoke-virtual/range {p1 .. p1}, Lcom/google/crypto/tink/shaded/protobuf/i;->d()I

    move-result v14

    if-lez v14, :cond_4

    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    iput-object v14, v1, Lcc/I;->m:Ljava/util/List;

    or-int/lit16 v7, v7, 0x200

    :cond_4
    :goto_2
    invoke-virtual/range {p1 .. p1}, Lcom/google/crypto/tink/shaded/protobuf/i;->d()I

    move-result v14

    if-lez v14, :cond_5

    iget-object v14, v1, Lcc/I;->m:Ljava/util/List;

    invoke-virtual/range {p1 .. p1}, Lcom/google/crypto/tink/shaded/protobuf/i;->p()I

    move-result v15

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-interface {v14, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_5
    invoke-virtual {v0, v13}, Lcom/google/crypto/tink/shaded/protobuf/i;->g(I)V

    goto/16 :goto_3

    :sswitch_4
    and-int/lit16 v13, v7, 0x200

    if-eq v13, v12, :cond_6

    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    iput-object v13, v1, Lcc/I;->m:Ljava/util/List;

    or-int/lit16 v7, v7, 0x200

    :cond_6
    iget-object v13, v1, Lcc/I;->m:Ljava/util/List;

    invoke-virtual/range {p1 .. p1}, Lcom/google/crypto/tink/shaded/protobuf/i;->p()I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-interface {v13, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    :sswitch_5
    and-int/lit16 v13, v7, 0x100

    if-eq v13, v9, :cond_7

    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    iput-object v13, v1, Lcc/I;->l:Ljava/util/List;

    or-int/lit16 v7, v7, 0x100

    :cond_7
    iget-object v13, v1, Lcc/I;->l:Ljava/util/List;

    sget-object v14, Lcc/T;->u:Lcc/a;

    invoke-virtual {v0, v14, v2}, Lcom/google/crypto/tink/shaded/protobuf/i;->l(Lic/y;Lic/g;)Lic/b;

    move-result-object v14

    invoke-interface {v13, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    :sswitch_6
    iget v13, v1, Lcc/I;->c:I

    or-int/2addr v13, v4

    iput v13, v1, Lcc/I;->c:I

    invoke-virtual/range {p1 .. p1}, Lcom/google/crypto/tink/shaded/protobuf/i;->p()I

    move-result v13

    iput v13, v1, Lcc/I;->d:I

    goto/16 :goto_3

    :sswitch_7
    iget v13, v1, Lcc/I;->c:I

    or-int/lit8 v13, v13, 0x40

    iput v13, v1, Lcc/I;->c:I

    invoke-virtual/range {p1 .. p1}, Lcom/google/crypto/tink/shaded/protobuf/i;->p()I

    move-result v13

    iput v13, v1, Lcc/I;->k:I

    goto/16 :goto_3

    :sswitch_8
    iget v13, v1, Lcc/I;->c:I

    or-int/lit8 v13, v13, 0x10

    iput v13, v1, Lcc/I;->c:I

    invoke-virtual/range {p1 .. p1}, Lcom/google/crypto/tink/shaded/protobuf/i;->p()I

    move-result v13

    iput v13, v1, Lcc/I;->h:I

    goto/16 :goto_3

    :sswitch_9
    iget v13, v1, Lcc/I;->c:I

    or-int/2addr v13, v12

    iput v13, v1, Lcc/I;->c:I

    invoke-virtual/range {p1 .. p1}, Lcom/google/crypto/tink/shaded/protobuf/i;->p()I

    move-result v13

    iput v13, v1, Lcc/I;->q:I

    goto/16 :goto_3

    :sswitch_a
    iget v13, v1, Lcc/I;->c:I

    or-int/2addr v13, v9

    iput v13, v1, Lcc/I;->c:I

    invoke-virtual/range {p1 .. p1}, Lcom/google/crypto/tink/shaded/protobuf/i;->p()I

    move-result v13

    iput v13, v1, Lcc/I;->p:I

    goto/16 :goto_3

    :sswitch_b
    iget v13, v1, Lcc/I;->c:I

    const/16 v15, 0x80

    and-int/2addr v13, v15

    if-ne v13, v15, :cond_8

    iget-object v13, v1, Lcc/I;->o:Lcc/b0;

    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v14, Lcc/a0;

    invoke-direct {v14}, Lic/l;-><init>()V

    sget-object v4, Lcc/T;->t:Lcc/T;

    iput-object v4, v14, Lcc/a0;->g:Lcc/T;

    iput-object v4, v14, Lcc/a0;->i:Lcc/T;

    invoke-virtual {v14, v13}, Lcc/a0;->f(Lcc/b0;)V

    :cond_8
    sget-object v4, Lcc/b0;->m:Lcc/a;

    invoke-virtual {v0, v4, v2}, Lcom/google/crypto/tink/shaded/protobuf/i;->l(Lic/y;Lic/g;)Lic/b;

    move-result-object v4

    check-cast v4, Lcc/b0;

    iput-object v4, v1, Lcc/I;->o:Lcc/b0;

    if-eqz v14, :cond_9

    invoke-virtual {v14, v4}, Lcc/a0;->f(Lcc/b0;)V

    invoke-virtual {v14}, Lcc/a0;->e()Lcc/b0;

    move-result-object v4

    iput-object v4, v1, Lcc/I;->o:Lcc/b0;

    :cond_9
    iget v4, v1, Lcc/I;->c:I

    or-int/2addr v4, v15

    iput v4, v1, Lcc/I;->c:I

    goto/16 :goto_3

    :sswitch_c
    iget v4, v1, Lcc/I;->c:I

    and-int/2addr v4, v10

    if-ne v4, v10, :cond_a

    iget-object v4, v1, Lcc/I;->j:Lcc/T;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v4}, Lcc/T;->p(Lcc/T;)Lcc/S;

    move-result-object v14

    :cond_a
    sget-object v4, Lcc/T;->u:Lcc/a;

    invoke-virtual {v0, v4, v2}, Lcom/google/crypto/tink/shaded/protobuf/i;->l(Lic/y;Lic/g;)Lic/b;

    move-result-object v4

    check-cast v4, Lcc/T;

    iput-object v4, v1, Lcc/I;->j:Lcc/T;

    if-eqz v14, :cond_b

    invoke-virtual {v14, v4}, Lcc/S;->g(Lcc/T;)Lcc/S;

    invoke-virtual {v14}, Lcc/S;->e()Lcc/T;

    move-result-object v4

    iput-object v4, v1, Lcc/I;->j:Lcc/T;

    :cond_b
    iget v4, v1, Lcc/I;->c:I

    or-int/2addr v4, v10

    iput v4, v1, Lcc/I;->c:I

    goto :goto_3

    :sswitch_d
    and-int/lit8 v4, v7, 0x20

    if-eq v4, v10, :cond_c

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, v1, Lcc/I;->i:Ljava/util/List;

    or-int/lit8 v7, v7, 0x20

    :cond_c
    iget-object v4, v1, Lcc/I;->i:Ljava/util/List;

    sget-object v13, Lcc/Y;->n:Lcc/a;

    invoke-virtual {v0, v13, v2}, Lcom/google/crypto/tink/shaded/protobuf/i;->l(Lic/y;Lic/g;)Lic/b;

    move-result-object v13

    invoke-interface {v4, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :sswitch_e
    iget v4, v1, Lcc/I;->c:I

    const/16 v13, 0x8

    and-int/2addr v4, v13

    if-ne v4, v13, :cond_d

    iget-object v4, v1, Lcc/I;->g:Lcc/T;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v4}, Lcc/T;->p(Lcc/T;)Lcc/S;

    move-result-object v14

    :cond_d
    sget-object v4, Lcc/T;->u:Lcc/a;

    invoke-virtual {v0, v4, v2}, Lcom/google/crypto/tink/shaded/protobuf/i;->l(Lic/y;Lic/g;)Lic/b;

    move-result-object v4

    check-cast v4, Lcc/T;

    iput-object v4, v1, Lcc/I;->g:Lcc/T;

    if-eqz v14, :cond_e

    invoke-virtual {v14, v4}, Lcc/S;->g(Lcc/T;)Lcc/S;

    invoke-virtual {v14}, Lcc/S;->e()Lcc/T;

    move-result-object v4

    iput-object v4, v1, Lcc/I;->g:Lcc/T;

    :cond_e
    iget v4, v1, Lcc/I;->c:I

    or-int/2addr v4, v13

    iput v4, v1, Lcc/I;->c:I

    goto :goto_3

    :sswitch_f
    iget v4, v1, Lcc/I;->c:I

    or-int/lit8 v4, v4, 0x4

    iput v4, v1, Lcc/I;->c:I

    invoke-virtual/range {p1 .. p1}, Lcom/google/crypto/tink/shaded/protobuf/i;->p()I

    move-result v4

    iput v4, v1, Lcc/I;->f:I

    goto :goto_3

    :sswitch_10
    iget v4, v1, Lcc/I;->c:I

    or-int/lit8 v4, v4, 0x2

    iput v4, v1, Lcc/I;->c:I

    invoke-virtual/range {p1 .. p1}, Lcom/google/crypto/tink/shaded/protobuf/i;->p()I

    move-result v4

    iput v4, v1, Lcc/I;->e:I
    :try_end_0
    .catch Lic/t; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :sswitch_11
    const/4 v6, 0x1

    :cond_f
    :goto_3
    const/4 v4, 0x1

    goto/16 :goto_0

    :goto_4
    :try_start_1
    new-instance v2, Lic/t;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lic/t;-><init>(Ljava/lang/String;)V

    iput-object v1, v2, Lic/t;->a:Lic/b;

    throw v2

    :goto_5
    iput-object v1, v0, Lic/t;->a:Lic/b;

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_6
    and-int/lit8 v2, v7, 0x20

    if-ne v2, v10, :cond_10

    iget-object v2, v1, Lcc/I;->i:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, v1, Lcc/I;->i:Ljava/util/List;

    :cond_10
    and-int/lit16 v2, v7, 0x100

    if-ne v2, v9, :cond_11

    iget-object v2, v1, Lcc/I;->l:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, v1, Lcc/I;->l:Ljava/util/List;

    :cond_11
    and-int/lit16 v2, v7, 0x200

    if-ne v2, v12, :cond_12

    iget-object v2, v1, Lcc/I;->m:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, v1, Lcc/I;->m:Ljava/util/List;

    :cond_12
    and-int/lit16 v2, v7, 0x2000

    if-ne v2, v11, :cond_13

    iget-object v2, v1, Lcc/I;->r:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, v1, Lcc/I;->r:Ljava/util/List;

    :cond_13
    and-int/lit16 v2, v7, 0x4000

    if-ne v2, v8, :cond_14

    iget-object v2, v1, Lcc/I;->s:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, v1, Lcc/I;->s:Ljava/util/List;

    :cond_14
    :try_start_2
    invoke-virtual {v5}, LK6/q;->i()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catch_2
    invoke-virtual {v3}, Lic/d;->c()Lic/e;

    move-result-object v2

    iput-object v2, v1, Lcc/I;->b:Lic/e;

    goto :goto_7

    :catchall_1
    move-exception v0

    move-object v2, v0

    invoke-virtual {v3}, Lic/d;->c()Lic/e;

    move-result-object v0

    iput-object v0, v1, Lcc/I;->b:Lic/e;

    throw v2

    :goto_7
    invoke-virtual/range {p0 .. p0}, Lic/m;->k()V

    throw v0

    :cond_15
    and-int/lit8 v0, v7, 0x20

    if-ne v0, v10, :cond_16

    iget-object v0, v1, Lcc/I;->i:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, v1, Lcc/I;->i:Ljava/util/List;

    :cond_16
    and-int/lit16 v0, v7, 0x100

    if-ne v0, v9, :cond_17

    iget-object v0, v1, Lcc/I;->l:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, v1, Lcc/I;->l:Ljava/util/List;

    :cond_17
    and-int/lit16 v0, v7, 0x200

    if-ne v0, v12, :cond_18

    iget-object v0, v1, Lcc/I;->m:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, v1, Lcc/I;->m:Ljava/util/List;

    :cond_18
    and-int/lit16 v0, v7, 0x2000

    if-ne v0, v11, :cond_19

    iget-object v0, v1, Lcc/I;->r:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, v1, Lcc/I;->r:Ljava/util/List;

    :cond_19
    and-int/lit16 v0, v7, 0x4000

    if-ne v0, v8, :cond_1a

    iget-object v0, v1, Lcc/I;->s:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, v1, Lcc/I;->s:Ljava/util/List;

    :cond_1a
    :try_start_3
    invoke-virtual {v5}, LK6/q;->i()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :catch_3
    invoke-virtual {v3}, Lic/d;->c()Lic/e;

    move-result-object v0

    iput-object v0, v1, Lcc/I;->b:Lic/e;

    goto :goto_8

    :catchall_2
    move-exception v0

    move-object v2, v0

    invoke-virtual {v3}, Lic/d;->c()Lic/e;

    move-result-object v0

    iput-object v0, v1, Lcc/I;->b:Lic/e;

    throw v2

    :goto_8
    invoke-virtual/range {p0 .. p0}, Lic/m;->k()V

    return-void

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_11
        0x8 -> :sswitch_10
        0x10 -> :sswitch_f
        0x1a -> :sswitch_e
        0x22 -> :sswitch_d
        0x2a -> :sswitch_c
        0x32 -> :sswitch_b
        0x38 -> :sswitch_a
        0x40 -> :sswitch_9
        0x48 -> :sswitch_8
        0x50 -> :sswitch_7
        0x58 -> :sswitch_6
        0x62 -> :sswitch_5
        0x68 -> :sswitch_4
        0x6a -> :sswitch_3
        0xf8 -> :sswitch_2
        0xfa -> :sswitch_1
        0x102 -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method public final a()I
    .locals 8

    iget v0, p0, Lcc/I;->u:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    iget v0, p0, Lcc/I;->c:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_1

    iget v0, p0, Lcc/I;->e:I

    invoke-static {v3, v0}, LK6/q;->b(II)I

    move-result v0

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    iget v4, p0, Lcc/I;->c:I

    const/4 v5, 0x4

    and-int/2addr v4, v5

    if-ne v4, v5, :cond_2

    iget v4, p0, Lcc/I;->f:I

    invoke-static {v1, v4}, LK6/q;->b(II)I

    move-result v4

    add-int/2addr v0, v4

    :cond_2
    iget v4, p0, Lcc/I;->c:I

    const/16 v6, 0x8

    and-int/2addr v4, v6

    if-ne v4, v6, :cond_3

    const/4 v4, 0x3

    iget-object v7, p0, Lcc/I;->g:Lcc/T;

    invoke-static {v4, v7}, LK6/q;->d(ILic/b;)I

    move-result v4

    add-int/2addr v0, v4

    :cond_3
    move v4, v2

    :goto_1
    iget-object v7, p0, Lcc/I;->i:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-ge v4, v7, :cond_4

    iget-object v7, p0, Lcc/I;->i:Ljava/util/List;

    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lic/b;

    invoke-static {v5, v7}, LK6/q;->d(ILic/b;)I

    move-result v7

    add-int/2addr v0, v7

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_4
    iget v4, p0, Lcc/I;->c:I

    const/16 v5, 0x20

    and-int/2addr v4, v5

    if-ne v4, v5, :cond_5

    const/4 v4, 0x5

    iget-object v7, p0, Lcc/I;->j:Lcc/T;

    invoke-static {v4, v7}, LK6/q;->d(ILic/b;)I

    move-result v4

    add-int/2addr v0, v4

    :cond_5
    iget v4, p0, Lcc/I;->c:I

    const/16 v7, 0x80

    and-int/2addr v4, v7

    if-ne v4, v7, :cond_6

    const/4 v4, 0x6

    iget-object v7, p0, Lcc/I;->o:Lcc/b0;

    invoke-static {v4, v7}, LK6/q;->d(ILic/b;)I

    move-result v4

    add-int/2addr v0, v4

    :cond_6
    iget v4, p0, Lcc/I;->c:I

    const/16 v7, 0x100

    and-int/2addr v4, v7

    if-ne v4, v7, :cond_7

    const/4 v4, 0x7

    iget v7, p0, Lcc/I;->p:I

    invoke-static {v4, v7}, LK6/q;->b(II)I

    move-result v4

    add-int/2addr v0, v4

    :cond_7
    iget v4, p0, Lcc/I;->c:I

    const/16 v7, 0x200

    and-int/2addr v4, v7

    if-ne v4, v7, :cond_8

    iget v4, p0, Lcc/I;->q:I

    invoke-static {v6, v4}, LK6/q;->b(II)I

    move-result v4

    add-int/2addr v0, v4

    :cond_8
    iget v4, p0, Lcc/I;->c:I

    const/16 v6, 0x10

    and-int/2addr v4, v6

    if-ne v4, v6, :cond_9

    const/16 v4, 0x9

    iget v6, p0, Lcc/I;->h:I

    invoke-static {v4, v6}, LK6/q;->b(II)I

    move-result v4

    add-int/2addr v0, v4

    :cond_9
    iget v4, p0, Lcc/I;->c:I

    const/16 v6, 0x40

    and-int/2addr v4, v6

    if-ne v4, v6, :cond_a

    const/16 v4, 0xa

    iget v6, p0, Lcc/I;->k:I

    invoke-static {v4, v6}, LK6/q;->b(II)I

    move-result v4

    add-int/2addr v0, v4

    :cond_a
    iget v4, p0, Lcc/I;->c:I

    and-int/2addr v4, v3

    if-ne v4, v3, :cond_b

    const/16 v3, 0xb

    iget v4, p0, Lcc/I;->d:I

    invoke-static {v3, v4}, LK6/q;->b(II)I

    move-result v3

    add-int/2addr v0, v3

    :cond_b
    move v3, v2

    :goto_2
    iget-object v4, p0, Lcc/I;->l:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_c

    iget-object v4, p0, Lcc/I;->l:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lic/b;

    const/16 v6, 0xc

    invoke-static {v6, v4}, LK6/q;->d(ILic/b;)I

    move-result v4

    add-int/2addr v0, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_c
    move v3, v2

    move v4, v3

    :goto_3
    iget-object v6, p0, Lcc/I;->m:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v3, v6, :cond_d

    iget-object v6, p0, Lcc/I;->m:Ljava/util/List;

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static {v6}, LK6/q;->c(I)I

    move-result v6

    add-int/2addr v4, v6

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_d
    add-int/2addr v0, v4

    iget-object v3, p0, Lcc/I;->m:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_e

    add-int/lit8 v0, v0, 0x1

    invoke-static {v4}, LK6/q;->c(I)I

    move-result v3

    add-int/2addr v0, v3

    :cond_e
    iput v4, p0, Lcc/I;->n:I

    move v3, v2

    move v4, v3

    :goto_4
    iget-object v6, p0, Lcc/I;->r:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v3, v6, :cond_f

    iget-object v6, p0, Lcc/I;->r:Ljava/util/List;

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static {v6}, LK6/q;->c(I)I

    move-result v6

    add-int/2addr v4, v6

    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_f
    add-int/2addr v0, v4

    iget-object v3, p0, Lcc/I;->r:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    mul-int/2addr v3, v1

    add-int/2addr v3, v0

    :goto_5
    iget-object v0, p0, Lcc/I;->s:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_10

    iget-object v0, p0, Lcc/I;->s:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lic/b;

    invoke-static {v5, v0}, LK6/q;->d(ILic/b;)I

    move-result v0

    add-int/2addr v3, v0

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_10
    invoke-virtual {p0}, Lic/m;->h()I

    move-result v0

    add-int/2addr v0, v3

    iget-object v1, p0, Lcc/I;->b:Lic/e;

    invoke-virtual {v1}, Lic/e;->size()I

    move-result v1

    add-int/2addr v1, v0

    iput v1, p0, Lcc/I;->u:I

    return v1
.end method

.method public final b()Lic/k;
    .locals 0

    invoke-static {}, Lcc/H;->f()Lcc/H;

    move-result-object p0

    return-object p0
.end method

.method public final c()Lic/k;
    .locals 1

    invoke-static {}, Lcc/H;->f()Lcc/H;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcc/H;->g(Lcc/I;)V

    return-object v0
.end method

.method public final d(LK6/q;)V
    .locals 7

    invoke-virtual {p0}, Lcc/I;->a()I

    new-instance v0, Lcom/samsung/android/motionphoto/utils/ex/e;

    invoke-direct {v0, p0}, Lcom/samsung/android/motionphoto/utils/ex/e;-><init>(Lic/m;)V

    iget v1, p0, Lcc/I;->c:I

    const/4 v2, 0x2

    and-int/2addr v1, v2

    const/4 v3, 0x1

    if-ne v1, v2, :cond_0

    iget v1, p0, Lcc/I;->e:I

    invoke-virtual {p1, v3, v1}, LK6/q;->m(II)V

    :cond_0
    iget v1, p0, Lcc/I;->c:I

    const/4 v4, 0x4

    and-int/2addr v1, v4

    if-ne v1, v4, :cond_1

    iget v1, p0, Lcc/I;->f:I

    invoke-virtual {p1, v2, v1}, LK6/q;->m(II)V

    :cond_1
    iget v1, p0, Lcc/I;->c:I

    const/16 v2, 0x8

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_2

    const/4 v1, 0x3

    iget-object v5, p0, Lcc/I;->g:Lcc/T;

    invoke-virtual {p1, v1, v5}, LK6/q;->o(ILic/b;)V

    :cond_2
    const/4 v1, 0x0

    move v5, v1

    :goto_0
    iget-object v6, p0, Lcc/I;->i:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_3

    iget-object v6, p0, Lcc/I;->i:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lic/b;

    invoke-virtual {p1, v4, v6}, LK6/q;->o(ILic/b;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_3
    iget v4, p0, Lcc/I;->c:I

    const/16 v5, 0x20

    and-int/2addr v4, v5

    if-ne v4, v5, :cond_4

    const/4 v4, 0x5

    iget-object v6, p0, Lcc/I;->j:Lcc/T;

    invoke-virtual {p1, v4, v6}, LK6/q;->o(ILic/b;)V

    :cond_4
    iget v4, p0, Lcc/I;->c:I

    const/16 v6, 0x80

    and-int/2addr v4, v6

    if-ne v4, v6, :cond_5

    const/4 v4, 0x6

    iget-object v6, p0, Lcc/I;->o:Lcc/b0;

    invoke-virtual {p1, v4, v6}, LK6/q;->o(ILic/b;)V

    :cond_5
    iget v4, p0, Lcc/I;->c:I

    const/16 v6, 0x100

    and-int/2addr v4, v6

    if-ne v4, v6, :cond_6

    const/4 v4, 0x7

    iget v6, p0, Lcc/I;->p:I

    invoke-virtual {p1, v4, v6}, LK6/q;->m(II)V

    :cond_6
    iget v4, p0, Lcc/I;->c:I

    const/16 v6, 0x200

    and-int/2addr v4, v6

    if-ne v4, v6, :cond_7

    iget v4, p0, Lcc/I;->q:I

    invoke-virtual {p1, v2, v4}, LK6/q;->m(II)V

    :cond_7
    iget v2, p0, Lcc/I;->c:I

    const/16 v4, 0x10

    and-int/2addr v2, v4

    if-ne v2, v4, :cond_8

    const/16 v2, 0x9

    iget v4, p0, Lcc/I;->h:I

    invoke-virtual {p1, v2, v4}, LK6/q;->m(II)V

    :cond_8
    iget v2, p0, Lcc/I;->c:I

    const/16 v4, 0x40

    and-int/2addr v2, v4

    if-ne v2, v4, :cond_9

    const/16 v2, 0xa

    iget v4, p0, Lcc/I;->k:I

    invoke-virtual {p1, v2, v4}, LK6/q;->m(II)V

    :cond_9
    iget v2, p0, Lcc/I;->c:I

    and-int/2addr v2, v3

    if-ne v2, v3, :cond_a

    const/16 v2, 0xb

    iget v3, p0, Lcc/I;->d:I

    invoke-virtual {p1, v2, v3}, LK6/q;->m(II)V

    :cond_a
    move v2, v1

    :goto_1
    iget-object v3, p0, Lcc/I;->l:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_b

    iget-object v3, p0, Lcc/I;->l:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lic/b;

    const/16 v4, 0xc

    invoke-virtual {p1, v4, v3}, LK6/q;->o(ILic/b;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_b
    iget-object v2, p0, Lcc/I;->m:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_c

    const/16 v2, 0x6a

    invoke-virtual {p1, v2}, LK6/q;->v(I)V

    iget v2, p0, Lcc/I;->n:I

    invoke-virtual {p1, v2}, LK6/q;->v(I)V

    :cond_c
    move v2, v1

    :goto_2
    iget-object v3, p0, Lcc/I;->m:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_d

    iget-object v3, p0, Lcc/I;->m:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p1, v3}, LK6/q;->n(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_d
    move v2, v1

    :goto_3
    iget-object v3, p0, Lcc/I;->r:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_e

    iget-object v3, p0, Lcc/I;->r:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/16 v4, 0x1f

    invoke-virtual {p1, v4, v3}, LK6/q;->m(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_e
    :goto_4
    iget-object v2, p0, Lcc/I;->s:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_f

    iget-object v2, p0, Lcc/I;->s:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lic/b;

    invoke-virtual {p1, v5, v2}, LK6/q;->o(ILic/b;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_f
    const/16 v1, 0x4a38

    invoke-virtual {v0, v1, p1}, Lcom/samsung/android/motionphoto/utils/ex/e;->y(ILK6/q;)V

    iget-object p0, p0, Lcc/I;->b:Lic/e;

    invoke-virtual {p1, p0}, LK6/q;->r(Lic/e;)V

    return-void
.end method

.method public final getDefaultInstanceForType()Lic/b;
    .locals 0

    sget-object p0, Lcc/I;->v:Lcc/I;

    return-object p0
.end method

.method public final isInitialized()Z
    .locals 5

    iget-byte v0, p0, Lcc/I;->t:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v2, 0x0

    if-nez v0, :cond_1

    return v2

    :cond_1
    iget v0, p0, Lcc/I;->c:I

    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_c

    const/16 v3, 0x8

    and-int/2addr v0, v3

    if-ne v0, v3, :cond_2

    iget-object v0, p0, Lcc/I;->g:Lcc/T;

    invoke-virtual {v0}, Lcc/T;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_2

    iput-byte v2, p0, Lcc/I;->t:B

    return v2

    :cond_2
    move v0, v2

    :goto_0
    iget-object v3, p0, Lcc/I;->i:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_4

    iget-object v3, p0, Lcc/I;->i:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcc/Y;

    invoke-virtual {v3}, Lcc/Y;->isInitialized()Z

    move-result v3

    if-nez v3, :cond_3

    iput-byte v2, p0, Lcc/I;->t:B

    return v2

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Lcc/I;->n()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcc/I;->j:Lcc/T;

    invoke-virtual {v0}, Lcc/T;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_5

    iput-byte v2, p0, Lcc/I;->t:B

    return v2

    :cond_5
    move v0, v2

    :goto_1
    iget-object v3, p0, Lcc/I;->l:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_7

    iget-object v3, p0, Lcc/I;->l:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcc/T;

    invoke-virtual {v3}, Lcc/T;->isInitialized()Z

    move-result v3

    if-nez v3, :cond_6

    iput-byte v2, p0, Lcc/I;->t:B

    return v2

    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_7
    iget v0, p0, Lcc/I;->c:I

    const/16 v3, 0x80

    and-int/2addr v0, v3

    if-ne v0, v3, :cond_8

    iget-object v0, p0, Lcc/I;->o:Lcc/b0;

    invoke-virtual {v0}, Lcc/b0;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_8

    iput-byte v2, p0, Lcc/I;->t:B

    return v2

    :cond_8
    move v0, v2

    :goto_2
    iget-object v3, p0, Lcc/I;->s:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_a

    iget-object v3, p0, Lcc/I;->s:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcc/l;

    invoke-virtual {v3}, Lcc/l;->isInitialized()Z

    move-result v3

    if-nez v3, :cond_9

    iput-byte v2, p0, Lcc/I;->t:B

    return v2

    :cond_9
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_a
    invoke-virtual {p0}, Lic/m;->g()Z

    move-result v0

    if-nez v0, :cond_b

    iput-byte v2, p0, Lcc/I;->t:B

    return v2

    :cond_b
    iput-byte v1, p0, Lcc/I;->t:B

    return v1

    :cond_c
    iput-byte v2, p0, Lcc/I;->t:B

    return v2
.end method

.method public final n()Z
    .locals 1

    iget p0, p0, Lcc/I;->c:I

    const/16 v0, 0x20

    and-int/2addr p0, v0

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final o()V
    .locals 3

    const/16 v0, 0x206

    iput v0, p0, Lcc/I;->d:I

    const/16 v0, 0x806

    iput v0, p0, Lcc/I;->e:I

    const/4 v0, 0x0

    iput v0, p0, Lcc/I;->f:I

    sget-object v1, Lcc/T;->t:Lcc/T;

    iput-object v1, p0, Lcc/I;->g:Lcc/T;

    iput v0, p0, Lcc/I;->h:I

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcc/I;->i:Ljava/util/List;

    iput-object v1, p0, Lcc/I;->j:Lcc/T;

    iput v0, p0, Lcc/I;->k:I

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcc/I;->l:Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcc/I;->m:Ljava/util/List;

    sget-object v1, Lcc/b0;->l:Lcc/b0;

    iput-object v1, p0, Lcc/I;->o:Lcc/b0;

    iput v0, p0, Lcc/I;->p:I

    iput v0, p0, Lcc/I;->q:I

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcc/I;->r:Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcc/I;->s:Ljava/util/List;

    return-void
.end method
