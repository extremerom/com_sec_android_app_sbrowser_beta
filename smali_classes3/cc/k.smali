.class public final Lcc/k;
.super Lic/m;
.source "SourceFile"


# static fields
.field public static final X:Lcc/k;

.field public static final Y:Lcc/a;


# instance fields
.field public A:I

.field public B:Ljava/util/List;

.field public C:Ljava/util/List;

.field public D:I

.field public E:Lcc/Z;

.field public F:Ljava/util/List;

.field public G:Lcc/g0;

.field public H:Ljava/util/List;

.field public I:B

.field public J:I

.field public final b:Lic/e;

.field public c:I

.field public d:I

.field public e:I

.field public f:I

.field public g:Ljava/util/List;

.field public h:Ljava/util/List;

.field public i:Ljava/util/List;

.field public j:I

.field public k:Ljava/util/List;

.field public l:I

.field public m:Ljava/util/List;

.field public n:Ljava/util/List;

.field public o:I

.field public p:Ljava/util/List;

.field public q:Ljava/util/List;

.field public r:Ljava/util/List;

.field public s:Ljava/util/List;

.field public t:Ljava/util/List;

.field public u:Ljava/util/List;

.field public v:I

.field public w:I

.field public x:Lcc/T;

.field public y:I

.field public z:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcc/a;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lcc/a;-><init>(I)V

    sput-object v0, Lcc/k;->Y:Lcc/a;

    new-instance v0, Lcc/k;

    invoke-direct {v0}, Lcc/k;-><init>()V

    sput-object v0, Lcc/k;->X:Lcc/k;

    invoke-virtual {v0}, Lcc/k;->n()V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lic/m;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcc/k;->j:I

    iput v0, p0, Lcc/k;->l:I

    iput v0, p0, Lcc/k;->o:I

    iput v0, p0, Lcc/k;->v:I

    iput v0, p0, Lcc/k;->A:I

    iput v0, p0, Lcc/k;->D:I

    iput-byte v0, p0, Lcc/k;->I:B

    iput v0, p0, Lcc/k;->J:I

    sget-object v0, Lic/e;->a:Lic/w;

    iput-object v0, p0, Lcc/k;->b:Lic/e;

    return-void
.end method

.method public constructor <init>(Lcc/i;)V
    .locals 1

    invoke-direct {p0, p1}, Lic/m;-><init>(Lic/l;)V

    const/4 v0, -0x1

    iput v0, p0, Lcc/k;->j:I

    iput v0, p0, Lcc/k;->l:I

    iput v0, p0, Lcc/k;->o:I

    iput v0, p0, Lcc/k;->v:I

    iput v0, p0, Lcc/k;->A:I

    iput v0, p0, Lcc/k;->D:I

    iput-byte v0, p0, Lcc/k;->I:B

    iput v0, p0, Lcc/k;->J:I

    iget-object p1, p1, Lic/k;->a:Lic/e;

    iput-object p1, p0, Lcc/k;->b:Lic/e;

    return-void
.end method

.method public constructor <init>(Lcom/google/crypto/tink/shaded/protobuf/i;Lic/g;)V
    .locals 17

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    invoke-direct/range {p0 .. p0}, Lic/m;-><init>()V

    const/4 v4, -0x1

    iput v4, v1, Lcc/k;->j:I

    iput v4, v1, Lcc/k;->l:I

    iput v4, v1, Lcc/k;->o:I

    iput v4, v1, Lcc/k;->v:I

    iput v4, v1, Lcc/k;->A:I

    iput v4, v1, Lcc/k;->D:I

    iput-byte v4, v1, Lcc/k;->I:B

    iput v4, v1, Lcc/k;->J:I

    invoke-virtual/range {p0 .. p0}, Lcc/k;->n()V

    invoke-static {}, Lic/e;->s()Lic/d;

    move-result-object v4

    const/4 v5, 0x1

    invoke-static {v4, v5}, LK6/q;->j(Ljava/io/OutputStream;I)LK6/q;

    move-result-object v6

    const/4 v7, 0x0

    move v8, v7

    :goto_0
    const/16 v9, 0x80

    const/16 v5, 0x40

    const/high16 v12, 0x80000

    const/high16 v13, 0x1000000

    const/high16 v11, 0x40000

    const/high16 v10, 0x100000

    const/high16 v15, 0x400000

    if-nez v7, :cond_37

    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lcom/google/crypto/tink/shaded/protobuf/i;->s()I

    move-result v14

    const/16 v16, 0x0

    sparse-switch v14, :sswitch_data_0

    invoke-virtual {v1, v2, v6, v3, v14}, Lic/m;->l(Lcom/google/crypto/tink/shaded/protobuf/i;LK6/q;Lic/g;I)Z

    move-result v5

    if-nez v5, :cond_0

    const/4 v7, 0x1

    :cond_0
    :goto_1
    const/4 v13, 0x1

    goto/16 :goto_9

    :catchall_0
    move-exception v0

    move-object v2, v0

    goto/16 :goto_c

    :catch_0
    move-exception v0

    move-object v2, v0

    goto/16 :goto_a

    :catch_1
    move-exception v0

    move-object v2, v0

    goto/16 :goto_b

    :sswitch_0
    and-int v14, v8, v13

    if-eq v14, v13, :cond_1

    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    iput-object v14, v1, Lcc/k;->H:Ljava/util/List;

    or-int/2addr v8, v13

    :cond_1
    iget-object v14, v1, Lcc/k;->H:Ljava/util/List;

    sget-object v13, Lcc/l;->h:Lcc/a;

    invoke-virtual {v2, v13, v3}, Lcom/google/crypto/tink/shaded/protobuf/i;->l(Lic/y;Lic/g;)Lic/b;

    move-result-object v13

    invoke-interface {v14, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :sswitch_1
    iget v13, v1, Lcc/k;->c:I

    and-int/2addr v13, v9

    if-ne v13, v9, :cond_2

    iget-object v13, v1, Lcc/k;->G:Lcc/g0;

    invoke-virtual {v13}, Lcc/g0;->g()Lcc/o;

    move-result-object v16

    :cond_2
    move-object/from16 v13, v16

    sget-object v14, Lcc/g0;->f:Lcc/a;

    invoke-virtual {v2, v14, v3}, Lcom/google/crypto/tink/shaded/protobuf/i;->l(Lic/y;Lic/g;)Lic/b;

    move-result-object v14

    check-cast v14, Lcc/g0;

    iput-object v14, v1, Lcc/k;->G:Lcc/g0;

    if-eqz v13, :cond_3

    invoke-virtual {v13, v14}, Lcc/o;->k(Lcc/g0;)V

    invoke-virtual {v13}, Lcc/o;->g()Lcc/g0;

    move-result-object v13

    iput-object v13, v1, Lcc/k;->G:Lcc/g0;

    :cond_3
    iget v13, v1, Lcc/k;->c:I

    or-int/2addr v13, v9

    iput v13, v1, Lcc/k;->c:I

    goto :goto_1

    :sswitch_2
    invoke-virtual/range {p1 .. p1}, Lcom/google/crypto/tink/shaded/protobuf/i;->p()I

    move-result v13

    invoke-virtual {v2, v13}, Lcom/google/crypto/tink/shaded/protobuf/i;->h(I)I

    move-result v13

    and-int v14, v8, v15

    if-eq v14, v15, :cond_4

    invoke-virtual/range {p1 .. p1}, Lcom/google/crypto/tink/shaded/protobuf/i;->d()I

    move-result v14

    if-lez v14, :cond_4

    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    iput-object v14, v1, Lcc/k;->F:Ljava/util/List;

    or-int/2addr v8, v15

    :cond_4
    :goto_2
    invoke-virtual/range {p1 .. p1}, Lcom/google/crypto/tink/shaded/protobuf/i;->d()I

    move-result v14

    if-lez v14, :cond_5

    iget-object v14, v1, Lcc/k;->F:Ljava/util/List;

    invoke-virtual/range {p1 .. p1}, Lcom/google/crypto/tink/shaded/protobuf/i;->k()I

    move-result v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v14, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/16 v9, 0x80

    goto :goto_2

    :cond_5
    invoke-virtual {v2, v13}, Lcom/google/crypto/tink/shaded/protobuf/i;->g(I)V

    goto/16 :goto_1

    :sswitch_3
    and-int v9, v8, v15

    if-eq v9, v15, :cond_6

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iput-object v9, v1, Lcc/k;->F:Ljava/util/List;

    or-int/2addr v8, v15

    :cond_6
    iget-object v9, v1, Lcc/k;->F:Ljava/util/List;

    invoke-virtual/range {p1 .. p1}, Lcom/google/crypto/tink/shaded/protobuf/i;->k()I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-interface {v9, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :sswitch_4
    iget v9, v1, Lcc/k;->c:I

    and-int/2addr v9, v5

    if-ne v9, v5, :cond_7

    iget-object v9, v1, Lcc/k;->E:Lcc/Z;

    invoke-virtual {v9}, Lcc/Z;->h()Lcc/g;

    move-result-object v16

    :cond_7
    move-object/from16 v9, v16

    sget-object v13, Lcc/Z;->h:Lcc/a;

    invoke-virtual {v2, v13, v3}, Lcom/google/crypto/tink/shaded/protobuf/i;->l(Lic/y;Lic/g;)Lic/b;

    move-result-object v13

    check-cast v13, Lcc/Z;

    iput-object v13, v1, Lcc/k;->E:Lcc/Z;

    if-eqz v9, :cond_8

    invoke-virtual {v9, v13}, Lcc/g;->h(Lcc/Z;)V

    invoke-virtual {v9}, Lcc/g;->e()Lcc/Z;

    move-result-object v9

    iput-object v9, v1, Lcc/k;->E:Lcc/Z;

    :cond_8
    iget v9, v1, Lcc/k;->c:I

    or-int/2addr v9, v5

    iput v9, v1, Lcc/k;->c:I

    goto/16 :goto_1

    :sswitch_5
    invoke-virtual/range {p1 .. p1}, Lcom/google/crypto/tink/shaded/protobuf/i;->p()I

    move-result v9

    invoke-virtual {v2, v9}, Lcom/google/crypto/tink/shaded/protobuf/i;->h(I)I

    move-result v9

    and-int v13, v8, v10

    if-eq v13, v10, :cond_9

    invoke-virtual/range {p1 .. p1}, Lcom/google/crypto/tink/shaded/protobuf/i;->d()I

    move-result v13

    if-lez v13, :cond_9

    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    iput-object v13, v1, Lcc/k;->C:Ljava/util/List;

    or-int/2addr v8, v10

    :cond_9
    :goto_3
    invoke-virtual/range {p1 .. p1}, Lcom/google/crypto/tink/shaded/protobuf/i;->d()I

    move-result v13

    if-lez v13, :cond_a

    iget-object v13, v1, Lcc/k;->C:Ljava/util/List;

    invoke-virtual/range {p1 .. p1}, Lcom/google/crypto/tink/shaded/protobuf/i;->k()I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-interface {v13, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_a
    invoke-virtual {v2, v9}, Lcom/google/crypto/tink/shaded/protobuf/i;->g(I)V

    goto/16 :goto_1

    :sswitch_6
    and-int v9, v8, v10

    if-eq v9, v10, :cond_b

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iput-object v9, v1, Lcc/k;->C:Ljava/util/List;

    or-int/2addr v8, v10

    :cond_b
    iget-object v9, v1, Lcc/k;->C:Ljava/util/List;

    invoke-virtual/range {p1 .. p1}, Lcom/google/crypto/tink/shaded/protobuf/i;->k()I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-interface {v9, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :sswitch_7
    and-int v9, v8, v12

    if-eq v9, v12, :cond_c

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iput-object v9, v1, Lcc/k;->B:Ljava/util/List;

    or-int/2addr v8, v12

    :cond_c
    iget-object v9, v1, Lcc/k;->B:Ljava/util/List;

    sget-object v13, Lcc/T;->u:Lcc/a;

    invoke-virtual {v2, v13, v3}, Lcom/google/crypto/tink/shaded/protobuf/i;->l(Lic/y;Lic/g;)Lic/b;

    move-result-object v13

    invoke-interface {v9, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :sswitch_8
    invoke-virtual/range {p1 .. p1}, Lcom/google/crypto/tink/shaded/protobuf/i;->p()I

    move-result v9

    invoke-virtual {v2, v9}, Lcom/google/crypto/tink/shaded/protobuf/i;->h(I)I

    move-result v9

    and-int v13, v8, v11

    if-eq v13, v11, :cond_d

    invoke-virtual/range {p1 .. p1}, Lcom/google/crypto/tink/shaded/protobuf/i;->d()I

    move-result v13

    if-lez v13, :cond_d

    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    iput-object v13, v1, Lcc/k;->z:Ljava/util/List;

    or-int/2addr v8, v11

    :cond_d
    :goto_4
    invoke-virtual/range {p1 .. p1}, Lcom/google/crypto/tink/shaded/protobuf/i;->d()I

    move-result v13

    if-lez v13, :cond_e

    iget-object v13, v1, Lcc/k;->z:Ljava/util/List;

    invoke-virtual/range {p1 .. p1}, Lcom/google/crypto/tink/shaded/protobuf/i;->k()I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-interface {v13, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_e
    invoke-virtual {v2, v9}, Lcom/google/crypto/tink/shaded/protobuf/i;->g(I)V

    goto/16 :goto_1

    :sswitch_9
    and-int v9, v8, v11

    if-eq v9, v11, :cond_f

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iput-object v9, v1, Lcc/k;->z:Ljava/util/List;

    or-int/2addr v8, v11

    :cond_f
    iget-object v9, v1, Lcc/k;->z:Ljava/util/List;

    invoke-virtual/range {p1 .. p1}, Lcom/google/crypto/tink/shaded/protobuf/i;->k()I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-interface {v9, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :sswitch_a
    invoke-virtual/range {p1 .. p1}, Lcom/google/crypto/tink/shaded/protobuf/i;->p()I

    move-result v9

    invoke-virtual {v2, v9}, Lcom/google/crypto/tink/shaded/protobuf/i;->h(I)I

    move-result v9

    and-int/lit16 v13, v8, 0x100

    const/16 v14, 0x100

    if-eq v13, v14, :cond_10

    invoke-virtual/range {p1 .. p1}, Lcom/google/crypto/tink/shaded/protobuf/i;->d()I

    move-result v13

    if-lez v13, :cond_10

    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    iput-object v13, v1, Lcc/k;->n:Ljava/util/List;

    or-int/lit16 v8, v8, 0x100

    :cond_10
    :goto_5
    invoke-virtual/range {p1 .. p1}, Lcom/google/crypto/tink/shaded/protobuf/i;->d()I

    move-result v13

    if-lez v13, :cond_11

    iget-object v13, v1, Lcc/k;->n:Ljava/util/List;

    invoke-virtual/range {p1 .. p1}, Lcom/google/crypto/tink/shaded/protobuf/i;->k()I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-interface {v13, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_11
    invoke-virtual {v2, v9}, Lcom/google/crypto/tink/shaded/protobuf/i;->g(I)V

    goto/16 :goto_1

    :sswitch_b
    and-int/lit16 v9, v8, 0x100

    const/16 v13, 0x100

    if-eq v9, v13, :cond_12

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iput-object v9, v1, Lcc/k;->n:Ljava/util/List;

    or-int/lit16 v8, v8, 0x100

    :cond_12
    iget-object v9, v1, Lcc/k;->n:Ljava/util/List;

    invoke-virtual/range {p1 .. p1}, Lcom/google/crypto/tink/shaded/protobuf/i;->k()I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-interface {v9, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :sswitch_c
    and-int/lit16 v9, v8, 0x80

    const/16 v13, 0x80

    if-eq v9, v13, :cond_13

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iput-object v9, v1, Lcc/k;->m:Ljava/util/List;

    or-int/lit16 v8, v8, 0x80

    :cond_13
    iget-object v9, v1, Lcc/k;->m:Ljava/util/List;

    sget-object v13, Lcc/T;->u:Lcc/a;

    invoke-virtual {v2, v13, v3}, Lcom/google/crypto/tink/shaded/protobuf/i;->l(Lic/y;Lic/g;)Lic/b;

    move-result-object v13

    invoke-interface {v9, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :sswitch_d
    iget v9, v1, Lcc/k;->c:I

    const/16 v13, 0x20

    or-int/2addr v9, v13

    iput v9, v1, Lcc/k;->c:I

    invoke-virtual/range {p1 .. p1}, Lcom/google/crypto/tink/shaded/protobuf/i;->k()I

    move-result v9

    iput v9, v1, Lcc/k;->y:I

    goto/16 :goto_1

    :sswitch_e
    iget v9, v1, Lcc/k;->c:I

    const/16 v13, 0x10

    and-int/2addr v9, v13

    if-ne v9, v13, :cond_14

    iget-object v9, v1, Lcc/k;->x:Lcc/T;

    invoke-virtual {v9}, Lcc/T;->q()Lcc/S;

    move-result-object v16

    :cond_14
    move-object/from16 v9, v16

    sget-object v13, Lcc/T;->u:Lcc/a;

    invoke-virtual {v2, v13, v3}, Lcom/google/crypto/tink/shaded/protobuf/i;->l(Lic/y;Lic/g;)Lic/b;

    move-result-object v13

    check-cast v13, Lcc/T;

    iput-object v13, v1, Lcc/k;->x:Lcc/T;

    if-eqz v9, :cond_15

    invoke-virtual {v9, v13}, Lcc/S;->g(Lcc/T;)Lcc/S;

    invoke-virtual {v9}, Lcc/S;->e()Lcc/T;

    move-result-object v9

    iput-object v9, v1, Lcc/k;->x:Lcc/T;

    :cond_15
    iget v9, v1, Lcc/k;->c:I

    const/16 v13, 0x10

    or-int/2addr v9, v13

    iput v9, v1, Lcc/k;->c:I

    goto/16 :goto_1

    :sswitch_f
    iget v9, v1, Lcc/k;->c:I

    const/16 v13, 0x8

    or-int/2addr v9, v13

    iput v9, v1, Lcc/k;->c:I

    invoke-virtual/range {p1 .. p1}, Lcom/google/crypto/tink/shaded/protobuf/i;->k()I

    move-result v9

    iput v9, v1, Lcc/k;->w:I

    goto/16 :goto_1

    :sswitch_10
    invoke-virtual/range {p1 .. p1}, Lcom/google/crypto/tink/shaded/protobuf/i;->p()I

    move-result v9

    invoke-virtual {v2, v9}, Lcom/google/crypto/tink/shaded/protobuf/i;->h(I)I

    move-result v9

    and-int/lit16 v13, v8, 0x4000

    const/16 v14, 0x4000

    if-eq v13, v14, :cond_16

    invoke-virtual/range {p1 .. p1}, Lcom/google/crypto/tink/shaded/protobuf/i;->d()I

    move-result v13

    if-lez v13, :cond_16

    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    iput-object v13, v1, Lcc/k;->u:Ljava/util/List;

    or-int/lit16 v8, v8, 0x4000

    :cond_16
    :goto_6
    invoke-virtual/range {p1 .. p1}, Lcom/google/crypto/tink/shaded/protobuf/i;->d()I

    move-result v13

    if-lez v13, :cond_17

    iget-object v13, v1, Lcc/k;->u:Ljava/util/List;

    invoke-virtual/range {p1 .. p1}, Lcom/google/crypto/tink/shaded/protobuf/i;->k()I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-interface {v13, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_17
    invoke-virtual {v2, v9}, Lcom/google/crypto/tink/shaded/protobuf/i;->g(I)V

    goto/16 :goto_1

    :sswitch_11
    and-int/lit16 v9, v8, 0x4000

    const/16 v13, 0x4000

    if-eq v9, v13, :cond_18

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iput-object v9, v1, Lcc/k;->u:Ljava/util/List;

    or-int/lit16 v8, v8, 0x4000

    :cond_18
    iget-object v9, v1, Lcc/k;->u:Ljava/util/List;

    invoke-virtual/range {p1 .. p1}, Lcom/google/crypto/tink/shaded/protobuf/i;->k()I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-interface {v9, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :sswitch_12
    and-int/lit16 v9, v8, 0x2000

    const/16 v13, 0x2000

    if-eq v9, v13, :cond_19

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iput-object v9, v1, Lcc/k;->t:Ljava/util/List;

    or-int/lit16 v8, v8, 0x2000

    :cond_19
    iget-object v9, v1, Lcc/k;->t:Ljava/util/List;

    sget-object v13, Lcc/v;->h:Lcc/a;

    invoke-virtual {v2, v13, v3}, Lcom/google/crypto/tink/shaded/protobuf/i;->l(Lic/y;Lic/g;)Lic/b;

    move-result-object v13

    invoke-interface {v9, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :sswitch_13
    and-int/lit16 v9, v8, 0x1000

    const/16 v13, 0x1000

    if-eq v9, v13, :cond_1a

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iput-object v9, v1, Lcc/k;->s:Ljava/util/List;

    or-int/lit16 v8, v8, 0x1000

    :cond_1a
    iget-object v9, v1, Lcc/k;->s:Ljava/util/List;

    sget-object v13, Lcc/V;->q:Lcc/a;

    invoke-virtual {v2, v13, v3}, Lcom/google/crypto/tink/shaded/protobuf/i;->l(Lic/y;Lic/g;)Lic/b;

    move-result-object v13

    invoke-interface {v9, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :sswitch_14
    and-int/lit16 v9, v8, 0x800

    const/16 v13, 0x800

    if-eq v9, v13, :cond_1b

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iput-object v9, v1, Lcc/k;->r:Ljava/util/List;

    or-int/lit16 v8, v8, 0x800

    :cond_1b
    iget-object v9, v1, Lcc/k;->r:Ljava/util/List;

    sget-object v13, Lcc/I;->w:Lcc/a;

    invoke-virtual {v2, v13, v3}, Lcom/google/crypto/tink/shaded/protobuf/i;->l(Lic/y;Lic/g;)Lic/b;

    move-result-object v13

    invoke-interface {v9, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :sswitch_15
    and-int/lit16 v9, v8, 0x400

    const/16 v13, 0x400

    if-eq v9, v13, :cond_1c

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iput-object v9, v1, Lcc/k;->q:Ljava/util/List;

    or-int/lit16 v8, v8, 0x400

    :cond_1c
    iget-object v9, v1, Lcc/k;->q:Ljava/util/List;

    sget-object v13, Lcc/A;->w:Lcc/a;

    invoke-virtual {v2, v13, v3}, Lcom/google/crypto/tink/shaded/protobuf/i;->l(Lic/y;Lic/g;)Lic/b;

    move-result-object v13

    invoke-interface {v9, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :sswitch_16
    and-int/lit16 v9, v8, 0x200

    const/16 v13, 0x200

    if-eq v9, v13, :cond_1d

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iput-object v9, v1, Lcc/k;->p:Ljava/util/List;

    or-int/lit16 v8, v8, 0x200

    :cond_1d
    iget-object v9, v1, Lcc/k;->p:Ljava/util/List;

    sget-object v13, Lcc/n;->k:Lcc/a;

    invoke-virtual {v2, v13, v3}, Lcom/google/crypto/tink/shaded/protobuf/i;->l(Lic/y;Lic/g;)Lic/b;

    move-result-object v13

    invoke-interface {v9, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :sswitch_17
    invoke-virtual/range {p1 .. p1}, Lcom/google/crypto/tink/shaded/protobuf/i;->p()I

    move-result v9

    invoke-virtual {v2, v9}, Lcom/google/crypto/tink/shaded/protobuf/i;->h(I)I

    move-result v9

    and-int/lit8 v13, v8, 0x40

    if-eq v13, v5, :cond_1e

    invoke-virtual/range {p1 .. p1}, Lcom/google/crypto/tink/shaded/protobuf/i;->d()I

    move-result v13

    if-lez v13, :cond_1e

    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    iput-object v13, v1, Lcc/k;->k:Ljava/util/List;

    or-int/lit8 v8, v8, 0x40

    :cond_1e
    :goto_7
    invoke-virtual/range {p1 .. p1}, Lcom/google/crypto/tink/shaded/protobuf/i;->d()I

    move-result v13

    if-lez v13, :cond_1f

    iget-object v13, v1, Lcc/k;->k:Ljava/util/List;

    invoke-virtual/range {p1 .. p1}, Lcom/google/crypto/tink/shaded/protobuf/i;->k()I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-interface {v13, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_7

    :cond_1f
    invoke-virtual {v2, v9}, Lcom/google/crypto/tink/shaded/protobuf/i;->g(I)V

    goto/16 :goto_1

    :sswitch_18
    and-int/lit8 v9, v8, 0x40

    if-eq v9, v5, :cond_20

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iput-object v9, v1, Lcc/k;->k:Ljava/util/List;

    or-int/lit8 v8, v8, 0x40

    :cond_20
    iget-object v9, v1, Lcc/k;->k:Ljava/util/List;

    invoke-virtual/range {p1 .. p1}, Lcom/google/crypto/tink/shaded/protobuf/i;->k()I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-interface {v9, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :sswitch_19
    and-int/lit8 v9, v8, 0x10

    const/16 v13, 0x10

    if-eq v9, v13, :cond_21

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iput-object v9, v1, Lcc/k;->h:Ljava/util/List;

    or-int/lit8 v8, v8, 0x10

    :cond_21
    iget-object v9, v1, Lcc/k;->h:Ljava/util/List;

    sget-object v13, Lcc/T;->u:Lcc/a;

    invoke-virtual {v2, v13, v3}, Lcom/google/crypto/tink/shaded/protobuf/i;->l(Lic/y;Lic/g;)Lic/b;

    move-result-object v13

    invoke-interface {v9, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :sswitch_1a
    and-int/lit8 v9, v8, 0x8

    const/16 v13, 0x8

    if-eq v9, v13, :cond_22

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iput-object v9, v1, Lcc/k;->g:Ljava/util/List;

    or-int/lit8 v8, v8, 0x8

    :cond_22
    iget-object v9, v1, Lcc/k;->g:Ljava/util/List;

    sget-object v13, Lcc/Y;->n:Lcc/a;

    invoke-virtual {v2, v13, v3}, Lcom/google/crypto/tink/shaded/protobuf/i;->l(Lic/y;Lic/g;)Lic/b;

    move-result-object v13

    invoke-interface {v9, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :sswitch_1b
    iget v9, v1, Lcc/k;->c:I

    or-int/lit8 v9, v9, 0x4

    iput v9, v1, Lcc/k;->c:I

    invoke-virtual/range {p1 .. p1}, Lcom/google/crypto/tink/shaded/protobuf/i;->k()I

    move-result v9

    iput v9, v1, Lcc/k;->f:I

    goto/16 :goto_1

    :sswitch_1c
    iget v9, v1, Lcc/k;->c:I

    or-int/lit8 v9, v9, 0x2

    iput v9, v1, Lcc/k;->c:I

    invoke-virtual/range {p1 .. p1}, Lcom/google/crypto/tink/shaded/protobuf/i;->k()I

    move-result v9

    iput v9, v1, Lcc/k;->e:I

    goto/16 :goto_1

    :sswitch_1d
    invoke-virtual/range {p1 .. p1}, Lcom/google/crypto/tink/shaded/protobuf/i;->p()I

    move-result v9

    invoke-virtual {v2, v9}, Lcom/google/crypto/tink/shaded/protobuf/i;->h(I)I

    move-result v9

    and-int/lit8 v13, v8, 0x20

    const/16 v14, 0x20

    if-eq v13, v14, :cond_23

    invoke-virtual/range {p1 .. p1}, Lcom/google/crypto/tink/shaded/protobuf/i;->d()I

    move-result v13

    if-lez v13, :cond_23

    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    iput-object v13, v1, Lcc/k;->i:Ljava/util/List;

    or-int/lit8 v8, v8, 0x20

    :cond_23
    :goto_8
    invoke-virtual/range {p1 .. p1}, Lcom/google/crypto/tink/shaded/protobuf/i;->d()I

    move-result v13

    if-lez v13, :cond_24

    iget-object v13, v1, Lcc/k;->i:Ljava/util/List;

    invoke-virtual/range {p1 .. p1}, Lcom/google/crypto/tink/shaded/protobuf/i;->k()I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-interface {v13, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_8

    :cond_24
    invoke-virtual {v2, v9}, Lcom/google/crypto/tink/shaded/protobuf/i;->g(I)V

    goto/16 :goto_1

    :sswitch_1e
    and-int/lit8 v9, v8, 0x20

    const/16 v13, 0x20

    if-eq v9, v13, :cond_25

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iput-object v9, v1, Lcc/k;->i:Ljava/util/List;

    or-int/lit8 v8, v8, 0x20

    :cond_25
    iget-object v9, v1, Lcc/k;->i:Ljava/util/List;

    invoke-virtual/range {p1 .. p1}, Lcom/google/crypto/tink/shaded/protobuf/i;->k()I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-interface {v9, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :sswitch_1f
    iget v9, v1, Lcc/k;->c:I

    const/4 v13, 0x1

    or-int/2addr v9, v13

    iput v9, v1, Lcc/k;->c:I

    invoke-virtual/range {p1 .. p1}, Lcom/google/crypto/tink/shaded/protobuf/i;->k()I

    move-result v9

    iput v9, v1, Lcc/k;->d:I
    :try_end_0
    .catch Lic/t; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_9

    :sswitch_20
    const/4 v13, 0x1

    move v7, v13

    :goto_9
    move v5, v13

    goto/16 :goto_0

    :goto_a
    :try_start_1
    new-instance v3, Lic/t;

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Lic/t;-><init>(Ljava/lang/String;)V

    iput-object v1, v3, Lic/t;->a:Lic/b;

    throw v3

    :goto_b
    iput-object v1, v2, Lic/t;->a:Lic/b;

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_c
    and-int/lit8 v3, v8, 0x20

    const/16 v7, 0x20

    if-ne v3, v7, :cond_26

    iget-object v3, v1, Lcc/k;->i:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, v1, Lcc/k;->i:Ljava/util/List;

    :cond_26
    and-int/lit8 v3, v8, 0x8

    const/16 v7, 0x8

    if-ne v3, v7, :cond_27

    iget-object v3, v1, Lcc/k;->g:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, v1, Lcc/k;->g:Ljava/util/List;

    :cond_27
    and-int/lit8 v3, v8, 0x10

    const/16 v7, 0x10

    if-ne v3, v7, :cond_28

    iget-object v3, v1, Lcc/k;->h:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, v1, Lcc/k;->h:Ljava/util/List;

    :cond_28
    and-int/lit8 v3, v8, 0x40

    if-ne v3, v5, :cond_29

    iget-object v3, v1, Lcc/k;->k:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, v1, Lcc/k;->k:Ljava/util/List;

    :cond_29
    and-int/lit16 v3, v8, 0x200

    const/16 v5, 0x200

    if-ne v3, v5, :cond_2a

    iget-object v3, v1, Lcc/k;->p:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, v1, Lcc/k;->p:Ljava/util/List;

    :cond_2a
    and-int/lit16 v3, v8, 0x400

    const/16 v5, 0x400

    if-ne v3, v5, :cond_2b

    iget-object v3, v1, Lcc/k;->q:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, v1, Lcc/k;->q:Ljava/util/List;

    :cond_2b
    and-int/lit16 v3, v8, 0x800

    const/16 v5, 0x800

    if-ne v3, v5, :cond_2c

    iget-object v3, v1, Lcc/k;->r:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, v1, Lcc/k;->r:Ljava/util/List;

    :cond_2c
    and-int/lit16 v3, v8, 0x1000

    const/16 v5, 0x1000

    if-ne v3, v5, :cond_2d

    iget-object v3, v1, Lcc/k;->s:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, v1, Lcc/k;->s:Ljava/util/List;

    :cond_2d
    and-int/lit16 v3, v8, 0x2000

    const/16 v5, 0x2000

    if-ne v3, v5, :cond_2e

    iget-object v3, v1, Lcc/k;->t:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, v1, Lcc/k;->t:Ljava/util/List;

    :cond_2e
    and-int/lit16 v3, v8, 0x4000

    const/16 v5, 0x4000

    if-ne v3, v5, :cond_2f

    iget-object v3, v1, Lcc/k;->u:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, v1, Lcc/k;->u:Ljava/util/List;

    :cond_2f
    and-int/lit16 v3, v8, 0x80

    const/16 v5, 0x80

    if-ne v3, v5, :cond_30

    iget-object v3, v1, Lcc/k;->m:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, v1, Lcc/k;->m:Ljava/util/List;

    :cond_30
    and-int/lit16 v3, v8, 0x100

    const/16 v5, 0x100

    if-ne v3, v5, :cond_31

    iget-object v3, v1, Lcc/k;->n:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, v1, Lcc/k;->n:Ljava/util/List;

    :cond_31
    and-int v3, v8, v11

    if-ne v3, v11, :cond_32

    iget-object v3, v1, Lcc/k;->z:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, v1, Lcc/k;->z:Ljava/util/List;

    :cond_32
    and-int v3, v8, v12

    if-ne v3, v12, :cond_33

    iget-object v3, v1, Lcc/k;->B:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, v1, Lcc/k;->B:Ljava/util/List;

    :cond_33
    and-int v3, v8, v10

    if-ne v3, v10, :cond_34

    iget-object v3, v1, Lcc/k;->C:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, v1, Lcc/k;->C:Ljava/util/List;

    :cond_34
    and-int v3, v8, v15

    if-ne v3, v15, :cond_35

    iget-object v3, v1, Lcc/k;->F:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, v1, Lcc/k;->F:Ljava/util/List;

    :cond_35
    const/high16 v3, 0x1000000

    and-int v5, v8, v3

    if-ne v5, v3, :cond_36

    iget-object v3, v1, Lcc/k;->H:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, v1, Lcc/k;->H:Ljava/util/List;

    :cond_36
    :try_start_2
    invoke-virtual {v6}, LK6/q;->i()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catch_2
    invoke-virtual {v4}, Lic/d;->c()Lic/e;

    move-result-object v3

    iput-object v3, v1, Lcc/k;->b:Lic/e;

    goto :goto_d

    :catchall_1
    move-exception v0

    move-object v2, v0

    invoke-virtual {v4}, Lic/d;->c()Lic/e;

    move-result-object v3

    iput-object v3, v1, Lcc/k;->b:Lic/e;

    throw v2

    :goto_d
    invoke-virtual/range {p0 .. p0}, Lic/m;->k()V

    throw v2

    :cond_37
    and-int/lit8 v2, v8, 0x20

    const/16 v3, 0x20

    if-ne v2, v3, :cond_38

    iget-object v2, v1, Lcc/k;->i:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, v1, Lcc/k;->i:Ljava/util/List;

    :cond_38
    and-int/lit8 v2, v8, 0x8

    const/16 v3, 0x8

    if-ne v2, v3, :cond_39

    iget-object v2, v1, Lcc/k;->g:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, v1, Lcc/k;->g:Ljava/util/List;

    :cond_39
    and-int/lit8 v2, v8, 0x10

    const/16 v3, 0x10

    if-ne v2, v3, :cond_3a

    iget-object v2, v1, Lcc/k;->h:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, v1, Lcc/k;->h:Ljava/util/List;

    :cond_3a
    and-int/lit8 v2, v8, 0x40

    if-ne v2, v5, :cond_3b

    iget-object v2, v1, Lcc/k;->k:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, v1, Lcc/k;->k:Ljava/util/List;

    :cond_3b
    and-int/lit16 v2, v8, 0x200

    const/16 v3, 0x200

    if-ne v2, v3, :cond_3c

    iget-object v2, v1, Lcc/k;->p:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, v1, Lcc/k;->p:Ljava/util/List;

    :cond_3c
    and-int/lit16 v2, v8, 0x400

    const/16 v3, 0x400

    if-ne v2, v3, :cond_3d

    iget-object v2, v1, Lcc/k;->q:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, v1, Lcc/k;->q:Ljava/util/List;

    :cond_3d
    and-int/lit16 v2, v8, 0x800

    const/16 v3, 0x800

    if-ne v2, v3, :cond_3e

    iget-object v2, v1, Lcc/k;->r:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, v1, Lcc/k;->r:Ljava/util/List;

    :cond_3e
    and-int/lit16 v2, v8, 0x1000

    const/16 v3, 0x1000

    if-ne v2, v3, :cond_3f

    iget-object v2, v1, Lcc/k;->s:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, v1, Lcc/k;->s:Ljava/util/List;

    :cond_3f
    and-int/lit16 v2, v8, 0x2000

    const/16 v3, 0x2000

    if-ne v2, v3, :cond_40

    iget-object v2, v1, Lcc/k;->t:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, v1, Lcc/k;->t:Ljava/util/List;

    :cond_40
    and-int/lit16 v2, v8, 0x4000

    const/16 v3, 0x4000

    if-ne v2, v3, :cond_41

    iget-object v2, v1, Lcc/k;->u:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, v1, Lcc/k;->u:Ljava/util/List;

    :cond_41
    and-int/lit16 v2, v8, 0x80

    const/16 v3, 0x80

    if-ne v2, v3, :cond_42

    iget-object v2, v1, Lcc/k;->m:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, v1, Lcc/k;->m:Ljava/util/List;

    :cond_42
    and-int/lit16 v2, v8, 0x100

    const/16 v3, 0x100

    if-ne v2, v3, :cond_43

    iget-object v2, v1, Lcc/k;->n:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, v1, Lcc/k;->n:Ljava/util/List;

    :cond_43
    and-int v2, v8, v11

    if-ne v2, v11, :cond_44

    iget-object v2, v1, Lcc/k;->z:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, v1, Lcc/k;->z:Ljava/util/List;

    :cond_44
    and-int v2, v8, v12

    if-ne v2, v12, :cond_45

    iget-object v2, v1, Lcc/k;->B:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, v1, Lcc/k;->B:Ljava/util/List;

    :cond_45
    and-int v2, v8, v10

    if-ne v2, v10, :cond_46

    iget-object v2, v1, Lcc/k;->C:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, v1, Lcc/k;->C:Ljava/util/List;

    :cond_46
    and-int v2, v8, v15

    if-ne v2, v15, :cond_47

    iget-object v2, v1, Lcc/k;->F:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, v1, Lcc/k;->F:Ljava/util/List;

    :cond_47
    const/high16 v2, 0x1000000

    and-int v3, v8, v2

    if-ne v3, v2, :cond_48

    iget-object v2, v1, Lcc/k;->H:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, v1, Lcc/k;->H:Ljava/util/List;

    :cond_48
    :try_start_3
    invoke-virtual {v6}, LK6/q;->i()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :catch_3
    invoke-virtual {v4}, Lic/d;->c()Lic/e;

    move-result-object v2

    iput-object v2, v1, Lcc/k;->b:Lic/e;

    goto :goto_e

    :catchall_2
    move-exception v0

    move-object v2, v0

    invoke-virtual {v4}, Lic/d;->c()Lic/e;

    move-result-object v3

    iput-object v3, v1, Lcc/k;->b:Lic/e;

    throw v2

    :goto_e
    invoke-virtual/range {p0 .. p0}, Lic/m;->k()V

    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_20
        0x8 -> :sswitch_1f
        0x10 -> :sswitch_1e
        0x12 -> :sswitch_1d
        0x18 -> :sswitch_1c
        0x20 -> :sswitch_1b
        0x2a -> :sswitch_1a
        0x32 -> :sswitch_19
        0x38 -> :sswitch_18
        0x3a -> :sswitch_17
        0x42 -> :sswitch_16
        0x4a -> :sswitch_15
        0x52 -> :sswitch_14
        0x5a -> :sswitch_13
        0x6a -> :sswitch_12
        0x80 -> :sswitch_11
        0x82 -> :sswitch_10
        0x88 -> :sswitch_f
        0x92 -> :sswitch_e
        0x98 -> :sswitch_d
        0xa2 -> :sswitch_c
        0xa8 -> :sswitch_b
        0xaa -> :sswitch_a
        0xb0 -> :sswitch_9
        0xb2 -> :sswitch_8
        0xba -> :sswitch_7
        0xc0 -> :sswitch_6
        0xc2 -> :sswitch_5
        0xf2 -> :sswitch_4
        0xf8 -> :sswitch_3
        0xfa -> :sswitch_2
        0x102 -> :sswitch_1
        0x10a -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method public final a()I
    .locals 7

    iget v0, p0, Lcc/k;->J:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    iget v0, p0, Lcc/k;->c:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    iget v0, p0, Lcc/k;->d:I

    invoke-static {v1, v0}, LK6/q;->b(II)I

    move-result v0

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    move v1, v2

    move v3, v1

    :goto_1
    iget-object v4, p0, Lcc/k;->i:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_2

    iget-object v4, p0, Lcc/k;->i:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v4}, LK6/q;->c(I)I

    move-result v4

    add-int/2addr v3, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    add-int/2addr v0, v3

    iget-object v1, p0, Lcc/k;->i:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    add-int/lit8 v0, v0, 0x1

    invoke-static {v3}, LK6/q;->c(I)I

    move-result v1

    add-int/2addr v0, v1

    :cond_3
    iput v3, p0, Lcc/k;->j:I

    iget v1, p0, Lcc/k;->c:I

    const/4 v3, 0x2

    and-int/2addr v1, v3

    if-ne v1, v3, :cond_4

    const/4 v1, 0x3

    iget v4, p0, Lcc/k;->e:I

    invoke-static {v1, v4}, LK6/q;->b(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_4
    iget v1, p0, Lcc/k;->c:I

    const/4 v4, 0x4

    and-int/2addr v1, v4

    if-ne v1, v4, :cond_5

    iget v1, p0, Lcc/k;->f:I

    invoke-static {v4, v1}, LK6/q;->b(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_5
    move v1, v2

    :goto_2
    iget-object v4, p0, Lcc/k;->g:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_6

    iget-object v4, p0, Lcc/k;->g:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lic/b;

    const/4 v5, 0x5

    invoke-static {v5, v4}, LK6/q;->d(ILic/b;)I

    move-result v4

    add-int/2addr v0, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_6
    move v1, v2

    :goto_3
    iget-object v4, p0, Lcc/k;->h:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_7

    iget-object v4, p0, Lcc/k;->h:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lic/b;

    const/4 v5, 0x6

    invoke-static {v5, v4}, LK6/q;->d(ILic/b;)I

    move-result v4

    add-int/2addr v0, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_7
    move v1, v2

    move v4, v1

    :goto_4
    iget-object v5, p0, Lcc/k;->k:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v1, v5, :cond_8

    iget-object v5, p0, Lcc/k;->k:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v5}, LK6/q;->c(I)I

    move-result v5

    add-int/2addr v4, v5

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_8
    add-int/2addr v0, v4

    iget-object v1, p0, Lcc/k;->k:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_9

    add-int/lit8 v0, v0, 0x1

    invoke-static {v4}, LK6/q;->c(I)I

    move-result v1

    add-int/2addr v0, v1

    :cond_9
    iput v4, p0, Lcc/k;->l:I

    move v1, v2

    :goto_5
    iget-object v4, p0, Lcc/k;->p:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    const/16 v5, 0x8

    if-ge v1, v4, :cond_a

    iget-object v4, p0, Lcc/k;->p:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lic/b;

    invoke-static {v5, v4}, LK6/q;->d(ILic/b;)I

    move-result v4

    add-int/2addr v0, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_a
    move v1, v2

    :goto_6
    iget-object v4, p0, Lcc/k;->q:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_b

    iget-object v4, p0, Lcc/k;->q:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lic/b;

    const/16 v6, 0x9

    invoke-static {v6, v4}, LK6/q;->d(ILic/b;)I

    move-result v4

    add-int/2addr v0, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_b
    move v1, v2

    :goto_7
    iget-object v4, p0, Lcc/k;->r:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_c

    iget-object v4, p0, Lcc/k;->r:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lic/b;

    const/16 v6, 0xa

    invoke-static {v6, v4}, LK6/q;->d(ILic/b;)I

    move-result v4

    add-int/2addr v0, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_c
    move v1, v2

    :goto_8
    iget-object v4, p0, Lcc/k;->s:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_d

    iget-object v4, p0, Lcc/k;->s:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lic/b;

    const/16 v6, 0xb

    invoke-static {v6, v4}, LK6/q;->d(ILic/b;)I

    move-result v4

    add-int/2addr v0, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :cond_d
    move v1, v2

    :goto_9
    iget-object v4, p0, Lcc/k;->t:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_e

    iget-object v4, p0, Lcc/k;->t:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lic/b;

    const/16 v6, 0xd

    invoke-static {v6, v4}, LK6/q;->d(ILic/b;)I

    move-result v4

    add-int/2addr v0, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_e
    move v1, v2

    move v4, v1

    :goto_a
    iget-object v6, p0, Lcc/k;->u:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v1, v6, :cond_f

    iget-object v6, p0, Lcc/k;->u:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static {v6}, LK6/q;->c(I)I

    move-result v6

    add-int/2addr v4, v6

    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    :cond_f
    add-int/2addr v0, v4

    iget-object v1, p0, Lcc/k;->u:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_10

    add-int/lit8 v0, v0, 0x2

    invoke-static {v4}, LK6/q;->c(I)I

    move-result v1

    add-int/2addr v0, v1

    :cond_10
    iput v4, p0, Lcc/k;->v:I

    iget v1, p0, Lcc/k;->c:I

    and-int/2addr v1, v5

    if-ne v1, v5, :cond_11

    const/16 v1, 0x11

    iget v4, p0, Lcc/k;->w:I

    invoke-static {v1, v4}, LK6/q;->b(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_11
    iget v1, p0, Lcc/k;->c:I

    const/16 v4, 0x10

    and-int/2addr v1, v4

    if-ne v1, v4, :cond_12

    const/16 v1, 0x12

    iget-object v4, p0, Lcc/k;->x:Lcc/T;

    invoke-static {v1, v4}, LK6/q;->d(ILic/b;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_12
    iget v1, p0, Lcc/k;->c:I

    const/16 v4, 0x20

    and-int/2addr v1, v4

    if-ne v1, v4, :cond_13

    const/16 v1, 0x13

    iget v5, p0, Lcc/k;->y:I

    invoke-static {v1, v5}, LK6/q;->b(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_13
    move v1, v2

    :goto_b
    iget-object v5, p0, Lcc/k;->m:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v1, v5, :cond_14

    iget-object v5, p0, Lcc/k;->m:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lic/b;

    const/16 v6, 0x14

    invoke-static {v6, v5}, LK6/q;->d(ILic/b;)I

    move-result v5

    add-int/2addr v0, v5

    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    :cond_14
    move v1, v2

    move v5, v1

    :goto_c
    iget-object v6, p0, Lcc/k;->n:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v1, v6, :cond_15

    iget-object v6, p0, Lcc/k;->n:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static {v6}, LK6/q;->c(I)I

    move-result v6

    add-int/2addr v5, v6

    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    :cond_15
    add-int/2addr v0, v5

    iget-object v1, p0, Lcc/k;->n:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_16

    add-int/lit8 v0, v0, 0x2

    invoke-static {v5}, LK6/q;->c(I)I

    move-result v1

    add-int/2addr v0, v1

    :cond_16
    iput v5, p0, Lcc/k;->o:I

    move v1, v2

    move v5, v1

    :goto_d
    iget-object v6, p0, Lcc/k;->z:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v1, v6, :cond_17

    iget-object v6, p0, Lcc/k;->z:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static {v6}, LK6/q;->c(I)I

    move-result v6

    add-int/2addr v5, v6

    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    :cond_17
    add-int/2addr v0, v5

    iget-object v1, p0, Lcc/k;->z:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_18

    add-int/lit8 v0, v0, 0x2

    invoke-static {v5}, LK6/q;->c(I)I

    move-result v1

    add-int/2addr v0, v1

    :cond_18
    iput v5, p0, Lcc/k;->A:I

    move v1, v2

    :goto_e
    iget-object v5, p0, Lcc/k;->B:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v1, v5, :cond_19

    iget-object v5, p0, Lcc/k;->B:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lic/b;

    const/16 v6, 0x17

    invoke-static {v6, v5}, LK6/q;->d(ILic/b;)I

    move-result v5

    add-int/2addr v0, v5

    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    :cond_19
    move v1, v2

    move v5, v1

    :goto_f
    iget-object v6, p0, Lcc/k;->C:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v1, v6, :cond_1a

    iget-object v6, p0, Lcc/k;->C:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static {v6}, LK6/q;->c(I)I

    move-result v6

    add-int/2addr v5, v6

    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    :cond_1a
    add-int/2addr v0, v5

    iget-object v1, p0, Lcc/k;->C:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1b

    add-int/lit8 v0, v0, 0x2

    invoke-static {v5}, LK6/q;->c(I)I

    move-result v1

    add-int/2addr v0, v1

    :cond_1b
    iput v5, p0, Lcc/k;->D:I

    iget v1, p0, Lcc/k;->c:I

    const/16 v5, 0x40

    and-int/2addr v1, v5

    if-ne v1, v5, :cond_1c

    const/16 v1, 0x1e

    iget-object v5, p0, Lcc/k;->E:Lcc/Z;

    invoke-static {v1, v5}, LK6/q;->d(ILic/b;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_1c
    move v1, v2

    move v5, v1

    :goto_10
    iget-object v6, p0, Lcc/k;->F:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v1, v6, :cond_1d

    iget-object v6, p0, Lcc/k;->F:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static {v6}, LK6/q;->c(I)I

    move-result v6

    add-int/2addr v5, v6

    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    :cond_1d
    add-int/2addr v0, v5

    iget-object v1, p0, Lcc/k;->F:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    mul-int/2addr v1, v3

    add-int/2addr v1, v0

    iget v0, p0, Lcc/k;->c:I

    const/16 v3, 0x80

    and-int/2addr v0, v3

    if-ne v0, v3, :cond_1e

    iget-object v0, p0, Lcc/k;->G:Lcc/g0;

    invoke-static {v4, v0}, LK6/q;->d(ILic/b;)I

    move-result v0

    add-int/2addr v1, v0

    :cond_1e
    :goto_11
    iget-object v0, p0, Lcc/k;->H:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_1f

    iget-object v0, p0, Lcc/k;->H:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lic/b;

    const/16 v3, 0x21

    invoke-static {v3, v0}, LK6/q;->d(ILic/b;)I

    move-result v0

    add-int/2addr v1, v0

    add-int/lit8 v2, v2, 0x1

    goto :goto_11

    :cond_1f
    invoke-virtual {p0}, Lic/m;->h()I

    move-result v0

    add-int/2addr v0, v1

    iget-object v1, p0, Lcc/k;->b:Lic/e;

    invoke-virtual {v1}, Lic/e;->size()I

    move-result v1

    add-int/2addr v1, v0

    iput v1, p0, Lcc/k;->J:I

    return v1
.end method

.method public final b()Lic/k;
    .locals 0

    invoke-static {}, Lcc/i;->f()Lcc/i;

    move-result-object p0

    return-object p0
.end method

.method public final c()Lic/k;
    .locals 1

    invoke-static {}, Lcc/i;->f()Lcc/i;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcc/i;->g(Lcc/k;)V

    return-object v0
.end method

.method public final d(LK6/q;)V
    .locals 7

    invoke-virtual {p0}, Lcc/k;->a()I

    new-instance v0, Lcom/samsung/android/motionphoto/utils/ex/e;

    invoke-direct {v0, p0}, Lcom/samsung/android/motionphoto/utils/ex/e;-><init>(Lic/m;)V

    iget v1, p0, Lcc/k;->c:I

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_0

    iget v1, p0, Lcc/k;->d:I

    invoke-virtual {p1, v2, v1}, LK6/q;->m(II)V

    :cond_0
    iget-object v1, p0, Lcc/k;->i:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/16 v2, 0x12

    if-lez v1, :cond_1

    invoke-virtual {p1, v2}, LK6/q;->v(I)V

    iget v1, p0, Lcc/k;->j:I

    invoke-virtual {p1, v1}, LK6/q;->v(I)V

    :cond_1
    const/4 v1, 0x0

    move v3, v1

    :goto_0
    iget-object v4, p0, Lcc/k;->i:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_2

    iget-object v4, p0, Lcc/k;->i:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {p1, v4}, LK6/q;->n(I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    iget v3, p0, Lcc/k;->c:I

    const/4 v4, 0x2

    and-int/2addr v3, v4

    if-ne v3, v4, :cond_3

    const/4 v3, 0x3

    iget v4, p0, Lcc/k;->e:I

    invoke-virtual {p1, v3, v4}, LK6/q;->m(II)V

    :cond_3
    iget v3, p0, Lcc/k;->c:I

    const/4 v4, 0x4

    and-int/2addr v3, v4

    if-ne v3, v4, :cond_4

    iget v3, p0, Lcc/k;->f:I

    invoke-virtual {p1, v4, v3}, LK6/q;->m(II)V

    :cond_4
    move v3, v1

    :goto_1
    iget-object v4, p0, Lcc/k;->g:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_5

    iget-object v4, p0, Lcc/k;->g:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lic/b;

    const/4 v5, 0x5

    invoke-virtual {p1, v5, v4}, LK6/q;->o(ILic/b;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_5
    move v3, v1

    :goto_2
    iget-object v4, p0, Lcc/k;->h:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_6

    iget-object v4, p0, Lcc/k;->h:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lic/b;

    const/4 v5, 0x6

    invoke-virtual {p1, v5, v4}, LK6/q;->o(ILic/b;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_6
    iget-object v3, p0, Lcc/k;->k:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_7

    const/16 v3, 0x3a

    invoke-virtual {p1, v3}, LK6/q;->v(I)V

    iget v3, p0, Lcc/k;->l:I

    invoke-virtual {p1, v3}, LK6/q;->v(I)V

    :cond_7
    move v3, v1

    :goto_3
    iget-object v4, p0, Lcc/k;->k:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_8

    iget-object v4, p0, Lcc/k;->k:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {p1, v4}, LK6/q;->n(I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_8
    move v3, v1

    :goto_4
    iget-object v4, p0, Lcc/k;->p:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    const/16 v5, 0x8

    if-ge v3, v4, :cond_9

    iget-object v4, p0, Lcc/k;->p:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lic/b;

    invoke-virtual {p1, v5, v4}, LK6/q;->o(ILic/b;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_9
    move v3, v1

    :goto_5
    iget-object v4, p0, Lcc/k;->q:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_a

    iget-object v4, p0, Lcc/k;->q:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lic/b;

    const/16 v6, 0x9

    invoke-virtual {p1, v6, v4}, LK6/q;->o(ILic/b;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :cond_a
    move v3, v1

    :goto_6
    iget-object v4, p0, Lcc/k;->r:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_b

    iget-object v4, p0, Lcc/k;->r:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lic/b;

    const/16 v6, 0xa

    invoke-virtual {p1, v6, v4}, LK6/q;->o(ILic/b;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    :cond_b
    move v3, v1

    :goto_7
    iget-object v4, p0, Lcc/k;->s:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_c

    iget-object v4, p0, Lcc/k;->s:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lic/b;

    const/16 v6, 0xb

    invoke-virtual {p1, v6, v4}, LK6/q;->o(ILic/b;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    :cond_c
    move v3, v1

    :goto_8
    iget-object v4, p0, Lcc/k;->t:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_d

    iget-object v4, p0, Lcc/k;->t:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lic/b;

    const/16 v6, 0xd

    invoke-virtual {p1, v6, v4}, LK6/q;->o(ILic/b;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    :cond_d
    iget-object v3, p0, Lcc/k;->u:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_e

    const/16 v3, 0x82

    invoke-virtual {p1, v3}, LK6/q;->v(I)V

    iget v3, p0, Lcc/k;->v:I

    invoke-virtual {p1, v3}, LK6/q;->v(I)V

    :cond_e
    move v3, v1

    :goto_9
    iget-object v4, p0, Lcc/k;->u:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_f

    iget-object v4, p0, Lcc/k;->u:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {p1, v4}, LK6/q;->n(I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    :cond_f
    iget v3, p0, Lcc/k;->c:I

    and-int/2addr v3, v5

    if-ne v3, v5, :cond_10

    const/16 v3, 0x11

    iget v4, p0, Lcc/k;->w:I

    invoke-virtual {p1, v3, v4}, LK6/q;->m(II)V

    :cond_10
    iget v3, p0, Lcc/k;->c:I

    const/16 v4, 0x10

    and-int/2addr v3, v4

    if-ne v3, v4, :cond_11

    iget-object v3, p0, Lcc/k;->x:Lcc/T;

    invoke-virtual {p1, v2, v3}, LK6/q;->o(ILic/b;)V

    :cond_11
    iget v2, p0, Lcc/k;->c:I

    const/16 v3, 0x20

    and-int/2addr v2, v3

    if-ne v2, v3, :cond_12

    const/16 v2, 0x13

    iget v4, p0, Lcc/k;->y:I

    invoke-virtual {p1, v2, v4}, LK6/q;->m(II)V

    :cond_12
    move v2, v1

    :goto_a
    iget-object v4, p0, Lcc/k;->m:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_13

    iget-object v4, p0, Lcc/k;->m:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lic/b;

    const/16 v5, 0x14

    invoke-virtual {p1, v5, v4}, LK6/q;->o(ILic/b;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    :cond_13
    iget-object v2, p0, Lcc/k;->n:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_14

    const/16 v2, 0xaa

    invoke-virtual {p1, v2}, LK6/q;->v(I)V

    iget v2, p0, Lcc/k;->o:I

    invoke-virtual {p1, v2}, LK6/q;->v(I)V

    :cond_14
    move v2, v1

    :goto_b
    iget-object v4, p0, Lcc/k;->n:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_15

    iget-object v4, p0, Lcc/k;->n:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {p1, v4}, LK6/q;->n(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    :cond_15
    iget-object v2, p0, Lcc/k;->z:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_16

    const/16 v2, 0xb2

    invoke-virtual {p1, v2}, LK6/q;->v(I)V

    iget v2, p0, Lcc/k;->A:I

    invoke-virtual {p1, v2}, LK6/q;->v(I)V

    :cond_16
    move v2, v1

    :goto_c
    iget-object v4, p0, Lcc/k;->z:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_17

    iget-object v4, p0, Lcc/k;->z:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {p1, v4}, LK6/q;->n(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    :cond_17
    move v2, v1

    :goto_d
    iget-object v4, p0, Lcc/k;->B:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_18

    iget-object v4, p0, Lcc/k;->B:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lic/b;

    const/16 v5, 0x17

    invoke-virtual {p1, v5, v4}, LK6/q;->o(ILic/b;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    :cond_18
    iget-object v2, p0, Lcc/k;->C:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_19

    const/16 v2, 0xc2

    invoke-virtual {p1, v2}, LK6/q;->v(I)V

    iget v2, p0, Lcc/k;->D:I

    invoke-virtual {p1, v2}, LK6/q;->v(I)V

    :cond_19
    move v2, v1

    :goto_e
    iget-object v4, p0, Lcc/k;->C:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_1a

    iget-object v4, p0, Lcc/k;->C:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {p1, v4}, LK6/q;->n(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    :cond_1a
    iget v2, p0, Lcc/k;->c:I

    const/16 v4, 0x40

    and-int/2addr v2, v4

    if-ne v2, v4, :cond_1b

    const/16 v2, 0x1e

    iget-object v4, p0, Lcc/k;->E:Lcc/Z;

    invoke-virtual {p1, v2, v4}, LK6/q;->o(ILic/b;)V

    :cond_1b
    move v2, v1

    :goto_f
    iget-object v4, p0, Lcc/k;->F:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_1c

    iget-object v4, p0, Lcc/k;->F:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/16 v5, 0x1f

    invoke-virtual {p1, v5, v4}, LK6/q;->m(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    :cond_1c
    iget v2, p0, Lcc/k;->c:I

    const/16 v4, 0x80

    and-int/2addr v2, v4

    if-ne v2, v4, :cond_1d

    iget-object v2, p0, Lcc/k;->G:Lcc/g0;

    invoke-virtual {p1, v3, v2}, LK6/q;->o(ILic/b;)V

    :cond_1d
    :goto_10
    iget-object v2, p0, Lcc/k;->H:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1e

    iget-object v2, p0, Lcc/k;->H:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lic/b;

    const/16 v3, 0x21

    invoke-virtual {p1, v3, v2}, LK6/q;->o(ILic/b;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    :cond_1e
    const/16 v1, 0x4a38

    invoke-virtual {v0, v1, p1}, Lcom/samsung/android/motionphoto/utils/ex/e;->y(ILK6/q;)V

    iget-object p0, p0, Lcc/k;->b:Lic/e;

    invoke-virtual {p1, p0}, LK6/q;->r(Lic/e;)V

    return-void
.end method

.method public final getDefaultInstanceForType()Lic/b;
    .locals 0

    sget-object p0, Lcc/k;->X:Lcc/k;

    return-object p0
.end method

.method public final isInitialized()Z
    .locals 4

    iget-byte v0, p0, Lcc/k;->I:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v2, 0x0

    if-nez v0, :cond_1

    return v2

    :cond_1
    iget v0, p0, Lcc/k;->c:I

    const/4 v3, 0x2

    and-int/2addr v0, v3

    if-ne v0, v3, :cond_19

    move v0, v2

    :goto_0
    iget-object v3, p0, Lcc/k;->g:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_3

    iget-object v3, p0, Lcc/k;->g:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcc/Y;

    invoke-virtual {v3}, Lcc/Y;->isInitialized()Z

    move-result v3

    if-nez v3, :cond_2

    iput-byte v2, p0, Lcc/k;->I:B

    return v2

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    move v0, v2

    :goto_1
    iget-object v3, p0, Lcc/k;->h:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_5

    iget-object v3, p0, Lcc/k;->h:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcc/T;

    invoke-virtual {v3}, Lcc/T;->isInitialized()Z

    move-result v3

    if-nez v3, :cond_4

    iput-byte v2, p0, Lcc/k;->I:B

    return v2

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_5
    move v0, v2

    :goto_2
    iget-object v3, p0, Lcc/k;->m:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_7

    iget-object v3, p0, Lcc/k;->m:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcc/T;

    invoke-virtual {v3}, Lcc/T;->isInitialized()Z

    move-result v3

    if-nez v3, :cond_6

    iput-byte v2, p0, Lcc/k;->I:B

    return v2

    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_7
    move v0, v2

    :goto_3
    iget-object v3, p0, Lcc/k;->p:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_9

    iget-object v3, p0, Lcc/k;->p:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcc/n;

    invoke-virtual {v3}, Lcc/n;->isInitialized()Z

    move-result v3

    if-nez v3, :cond_8

    iput-byte v2, p0, Lcc/k;->I:B

    return v2

    :cond_8
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_9
    move v0, v2

    :goto_4
    iget-object v3, p0, Lcc/k;->q:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_b

    iget-object v3, p0, Lcc/k;->q:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcc/A;

    invoke-virtual {v3}, Lcc/A;->isInitialized()Z

    move-result v3

    if-nez v3, :cond_a

    iput-byte v2, p0, Lcc/k;->I:B

    return v2

    :cond_a
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_b
    move v0, v2

    :goto_5
    iget-object v3, p0, Lcc/k;->r:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_d

    iget-object v3, p0, Lcc/k;->r:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcc/I;

    invoke-virtual {v3}, Lcc/I;->isInitialized()Z

    move-result v3

    if-nez v3, :cond_c

    iput-byte v2, p0, Lcc/k;->I:B

    return v2

    :cond_c
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_d
    move v0, v2

    :goto_6
    iget-object v3, p0, Lcc/k;->s:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_f

    iget-object v3, p0, Lcc/k;->s:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcc/V;

    invoke-virtual {v3}, Lcc/V;->isInitialized()Z

    move-result v3

    if-nez v3, :cond_e

    iput-byte v2, p0, Lcc/k;->I:B

    return v2

    :cond_e
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_f
    move v0, v2

    :goto_7
    iget-object v3, p0, Lcc/k;->t:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_11

    iget-object v3, p0, Lcc/k;->t:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcc/v;

    invoke-virtual {v3}, Lcc/v;->isInitialized()Z

    move-result v3

    if-nez v3, :cond_10

    iput-byte v2, p0, Lcc/k;->I:B

    return v2

    :cond_10
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_11
    iget v0, p0, Lcc/k;->c:I

    const/16 v3, 0x10

    and-int/2addr v0, v3

    if-ne v0, v3, :cond_12

    iget-object v0, p0, Lcc/k;->x:Lcc/T;

    invoke-virtual {v0}, Lcc/T;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_12

    iput-byte v2, p0, Lcc/k;->I:B

    return v2

    :cond_12
    move v0, v2

    :goto_8
    iget-object v3, p0, Lcc/k;->B:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_14

    iget-object v3, p0, Lcc/k;->B:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcc/T;

    invoke-virtual {v3}, Lcc/T;->isInitialized()Z

    move-result v3

    if-nez v3, :cond_13

    iput-byte v2, p0, Lcc/k;->I:B

    return v2

    :cond_13
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :cond_14
    iget v0, p0, Lcc/k;->c:I

    const/16 v3, 0x40

    and-int/2addr v0, v3

    if-ne v0, v3, :cond_15

    iget-object v0, p0, Lcc/k;->E:Lcc/Z;

    invoke-virtual {v0}, Lcc/Z;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_15

    iput-byte v2, p0, Lcc/k;->I:B

    return v2

    :cond_15
    move v0, v2

    :goto_9
    iget-object v3, p0, Lcc/k;->H:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_17

    iget-object v3, p0, Lcc/k;->H:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcc/l;

    invoke-virtual {v3}, Lcc/l;->isInitialized()Z

    move-result v3

    if-nez v3, :cond_16

    iput-byte v2, p0, Lcc/k;->I:B

    return v2

    :cond_16
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    :cond_17
    invoke-virtual {p0}, Lic/m;->g()Z

    move-result v0

    if-nez v0, :cond_18

    iput-byte v2, p0, Lcc/k;->I:B

    return v2

    :cond_18
    iput-byte v1, p0, Lcc/k;->I:B

    return v1

    :cond_19
    iput-byte v2, p0, Lcc/k;->I:B

    return v2
.end method

.method public final n()V
    .locals 2

    const/4 v0, 0x6

    iput v0, p0, Lcc/k;->d:I

    const/4 v0, 0x0

    iput v0, p0, Lcc/k;->e:I

    iput v0, p0, Lcc/k;->f:I

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcc/k;->g:Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcc/k;->h:Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcc/k;->i:Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcc/k;->k:Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcc/k;->m:Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcc/k;->n:Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcc/k;->p:Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcc/k;->q:Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcc/k;->r:Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcc/k;->s:Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcc/k;->t:Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcc/k;->u:Ljava/util/List;

    iput v0, p0, Lcc/k;->w:I

    sget-object v1, Lcc/T;->t:Lcc/T;

    iput-object v1, p0, Lcc/k;->x:Lcc/T;

    iput v0, p0, Lcc/k;->y:I

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcc/k;->z:Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcc/k;->B:Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcc/k;->C:Ljava/util/List;

    sget-object v0, Lcc/Z;->g:Lcc/Z;

    iput-object v0, p0, Lcc/k;->E:Lcc/Z;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcc/k;->F:Ljava/util/List;

    sget-object v0, Lcc/g0;->e:Lcc/g0;

    iput-object v0, p0, Lcc/k;->G:Lcc/g0;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcc/k;->H:Ljava/util/List;

    return-void
.end method
