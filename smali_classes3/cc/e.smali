.class public final Lcc/e;
.super Lic/p;
.source "SourceFile"


# static fields
.field public static final p:Lcc/e;

.field public static final q:Lcc/a;


# instance fields
.field public final a:Lic/e;

.field public b:I

.field public c:Lcc/d;

.field public d:J

.field public e:F

.field public f:D

.field public g:I

.field public h:I

.field public i:I

.field public j:Lcc/h;

.field public k:Ljava/util/List;

.field public l:I

.field public m:I

.field public n:B

.field public o:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcc/a;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcc/a;-><init>(I)V

    sput-object v0, Lcc/e;->q:Lcc/a;

    new-instance v0, Lcc/e;

    invoke-direct {v0}, Lcc/e;-><init>()V

    sput-object v0, Lcc/e;->p:Lcc/e;

    invoke-virtual {v0}, Lcc/e;->g()V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lic/b;-><init>()V

    const/4 v0, -0x1

    iput-byte v0, p0, Lcc/e;->n:B

    iput v0, p0, Lcc/e;->o:I

    sget-object v0, Lic/e;->a:Lic/w;

    iput-object v0, p0, Lcc/e;->a:Lic/e;

    return-void
.end method

.method public constructor <init>(Lcc/c;)V
    .locals 1

    invoke-direct {p0}, Lic/b;-><init>()V

    const/4 v0, -0x1

    iput-byte v0, p0, Lcc/e;->n:B

    iput v0, p0, Lcc/e;->o:I

    iget-object p1, p1, Lic/k;->a:Lic/e;

    iput-object p1, p0, Lcc/e;->a:Lic/e;

    return-void
.end method

.method public constructor <init>(Lcom/google/crypto/tink/shaded/protobuf/i;Lic/g;)V
    .locals 12

    invoke-direct {p0}, Lic/b;-><init>()V

    const/4 v0, -0x1

    iput-byte v0, p0, Lcc/e;->n:B

    iput v0, p0, Lcc/e;->o:I

    invoke-virtual {p0}, Lcc/e;->g()V

    new-instance v0, Lic/d;

    invoke-direct {v0}, Lic/d;-><init>()V

    const/4 v1, 0x1

    invoke-static {v0, v1}, LK6/q;->j(Ljava/io/OutputStream;I)LK6/q;

    move-result-object v2

    const/4 v3, 0x0

    move v4, v3

    :cond_0
    :goto_0
    const/16 v5, 0x100

    if-nez v3, :cond_6

    :try_start_0
    invoke-virtual {p1}, Lcom/google/crypto/tink/shaded/protobuf/i;->s()I

    move-result v6

    sparse-switch v6, :sswitch_data_0

    invoke-virtual {p1, v6, v2}, Lcom/google/crypto/tink/shaded/protobuf/i;->v(ILK6/q;)Z

    move-result v5

    if-nez v5, :cond_0

    :sswitch_0
    move v3, v1

    goto :goto_0

    :sswitch_1
    iget v6, p0, Lcc/e;->b:I

    or-int/2addr v6, v5

    iput v6, p0, Lcc/e;->b:I

    invoke-virtual {p1}, Lcom/google/crypto/tink/shaded/protobuf/i;->p()I

    move-result v6

    iput v6, p0, Lcc/e;->l:I

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

    :sswitch_2
    iget v6, p0, Lcc/e;->b:I

    or-int/lit16 v6, v6, 0x200

    iput v6, p0, Lcc/e;->b:I

    invoke-virtual {p1}, Lcom/google/crypto/tink/shaded/protobuf/i;->p()I

    move-result v6

    iput v6, p0, Lcc/e;->m:I

    goto :goto_0

    :sswitch_3
    and-int/lit16 v6, v4, 0x100

    if-eq v6, v5, :cond_1

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lcc/e;->k:Ljava/util/List;

    move v4, v5

    :cond_1
    iget-object v6, p0, Lcc/e;->k:Ljava/util/List;

    sget-object v7, Lcc/e;->q:Lcc/a;

    invoke-virtual {p1, v7, p2}, Lcom/google/crypto/tink/shaded/protobuf/i;->l(Lic/y;Lic/g;)Lic/b;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :sswitch_4
    iget v6, p0, Lcc/e;->b:I

    const/16 v7, 0x80

    and-int/2addr v6, v7

    if-ne v6, v7, :cond_2

    iget-object v6, p0, Lcc/e;->j:Lcc/h;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v8, Lcc/g;

    const/4 v9, 0x0

    invoke-direct {v8, v9}, Lcc/g;-><init>(I)V

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v9

    iput-object v9, v8, Lcc/g;->d:Ljava/util/List;

    invoke-virtual {v8, v6}, Lcc/g;->g(Lcc/h;)V

    goto :goto_1

    :cond_2
    const/4 v8, 0x0

    :goto_1
    sget-object v6, Lcc/h;->h:Lcc/a;

    invoke-virtual {p1, v6, p2}, Lcom/google/crypto/tink/shaded/protobuf/i;->l(Lic/y;Lic/g;)Lic/b;

    move-result-object v6

    check-cast v6, Lcc/h;

    iput-object v6, p0, Lcc/e;->j:Lcc/h;

    if-eqz v8, :cond_3

    invoke-virtual {v8, v6}, Lcc/g;->g(Lcc/h;)V

    invoke-virtual {v8}, Lcc/g;->d()Lcc/h;

    move-result-object v6

    iput-object v6, p0, Lcc/e;->j:Lcc/h;

    :cond_3
    iget v6, p0, Lcc/e;->b:I

    or-int/2addr v6, v7

    iput v6, p0, Lcc/e;->b:I

    goto/16 :goto_0

    :sswitch_5
    iget v6, p0, Lcc/e;->b:I

    or-int/lit8 v6, v6, 0x40

    iput v6, p0, Lcc/e;->b:I

    invoke-virtual {p1}, Lcom/google/crypto/tink/shaded/protobuf/i;->p()I

    move-result v6

    iput v6, p0, Lcc/e;->i:I

    goto/16 :goto_0

    :sswitch_6
    iget v6, p0, Lcc/e;->b:I

    or-int/lit8 v6, v6, 0x20

    iput v6, p0, Lcc/e;->b:I

    invoke-virtual {p1}, Lcom/google/crypto/tink/shaded/protobuf/i;->p()I

    move-result v6

    iput v6, p0, Lcc/e;->h:I

    goto/16 :goto_0

    :sswitch_7
    iget v6, p0, Lcc/e;->b:I

    or-int/lit8 v6, v6, 0x10

    iput v6, p0, Lcc/e;->b:I

    invoke-virtual {p1}, Lcom/google/crypto/tink/shaded/protobuf/i;->p()I

    move-result v6

    iput v6, p0, Lcc/e;->g:I

    goto/16 :goto_0

    :sswitch_8
    iget v6, p0, Lcc/e;->b:I

    or-int/lit8 v6, v6, 0x8

    iput v6, p0, Lcc/e;->b:I

    invoke-virtual {p1}, Lcom/google/crypto/tink/shaded/protobuf/i;->o()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v6

    iput-wide v6, p0, Lcc/e;->f:D

    goto/16 :goto_0

    :sswitch_9
    iget v6, p0, Lcc/e;->b:I

    or-int/lit8 v6, v6, 0x4

    iput v6, p0, Lcc/e;->b:I

    invoke-virtual {p1}, Lcom/google/crypto/tink/shaded/protobuf/i;->n()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v6

    iput v6, p0, Lcc/e;->e:F

    goto/16 :goto_0

    :sswitch_a
    iget v6, p0, Lcc/e;->b:I

    or-int/lit8 v6, v6, 0x2

    iput v6, p0, Lcc/e;->b:I

    invoke-virtual {p1}, Lcom/google/crypto/tink/shaded/protobuf/i;->q()J

    move-result-wide v6

    ushr-long v8, v6, v1

    const-wide/16 v10, 0x1

    and-long/2addr v6, v10

    neg-long v6, v6

    xor-long/2addr v6, v8

    iput-wide v6, p0, Lcc/e;->d:J

    goto/16 :goto_0

    :sswitch_b
    invoke-virtual {p1}, Lcom/google/crypto/tink/shaded/protobuf/i;->p()I

    move-result v7

    invoke-static {v7}, Lcc/d;->a(I)Lcc/d;

    move-result-object v8

    if-nez v8, :cond_4

    invoke-virtual {v2, v6}, LK6/q;->v(I)V

    invoke-virtual {v2, v7}, LK6/q;->v(I)V

    goto/16 :goto_0

    :cond_4
    iget v6, p0, Lcc/e;->b:I

    or-int/2addr v6, v1

    iput v6, p0, Lcc/e;->b:I

    iput-object v8, p0, Lcc/e;->c:Lcc/d;
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
    and-int/lit16 p2, v4, 0x100

    if-ne p2, v5, :cond_5

    iget-object p2, p0, Lcc/e;->k:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lcc/e;->k:Ljava/util/List;

    :cond_5
    :try_start_2
    invoke-virtual {v2}, LK6/q;->i()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catch_2
    invoke-virtual {v0}, Lic/d;->c()Lic/e;

    move-result-object p2

    iput-object p2, p0, Lcc/e;->a:Lic/e;

    goto :goto_5

    :catchall_1
    move-exception p1

    invoke-virtual {v0}, Lic/d;->c()Lic/e;

    move-result-object p2

    iput-object p2, p0, Lcc/e;->a:Lic/e;

    throw p1

    :goto_5
    throw p1

    :cond_6
    and-int/lit16 p1, v4, 0x100

    if-ne p1, v5, :cond_7

    iget-object p1, p0, Lcc/e;->k:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcc/e;->k:Ljava/util/List;

    :cond_7
    :try_start_3
    invoke-virtual {v2}, LK6/q;->i()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :catch_3
    invoke-virtual {v0}, Lic/d;->c()Lic/e;

    move-result-object p1

    iput-object p1, p0, Lcc/e;->a:Lic/e;

    goto :goto_6

    :catchall_2
    move-exception p1

    invoke-virtual {v0}, Lic/d;->c()Lic/e;

    move-result-object p2

    iput-object p2, p0, Lcc/e;->a:Lic/e;

    throw p1

    :goto_6
    return-void

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_b
        0x10 -> :sswitch_a
        0x1d -> :sswitch_9
        0x21 -> :sswitch_8
        0x28 -> :sswitch_7
        0x30 -> :sswitch_6
        0x38 -> :sswitch_5
        0x42 -> :sswitch_4
        0x4a -> :sswitch_3
        0x50 -> :sswitch_2
        0x58 -> :sswitch_1
    .end sparse-switch
.end method


# virtual methods
.method public final a()I
    .locals 9

    iget v0, p0, Lcc/e;->o:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    iget v0, p0, Lcc/e;->b:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcc/e;->c:Lcc/d;

    invoke-virtual {v0}, Lcc/d;->getNumber()I

    move-result v0

    invoke-static {v1, v0}, LK6/q;->a(II)I

    move-result v0

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    iget v3, p0, Lcc/e;->b:I

    const/4 v4, 0x2

    and-int/2addr v3, v4

    if-ne v3, v4, :cond_2

    iget-wide v5, p0, Lcc/e;->d:J

    invoke-static {v4}, LK6/q;->h(I)I

    move-result v3

    shl-long v7, v5, v1

    const/16 v1, 0x3f

    shr-long v4, v5, v1

    xor-long/2addr v4, v7

    invoke-static {v4, v5}, LK6/q;->g(J)I

    move-result v1

    add-int/2addr v1, v3

    add-int/2addr v0, v1

    :cond_2
    iget v1, p0, Lcc/e;->b:I

    const/4 v3, 0x4

    and-int/2addr v1, v3

    if-ne v1, v3, :cond_3

    const/4 v1, 0x3

    invoke-static {v1}, LK6/q;->h(I)I

    move-result v1

    add-int/2addr v1, v3

    add-int/2addr v0, v1

    :cond_3
    iget v1, p0, Lcc/e;->b:I

    const/16 v4, 0x8

    and-int/2addr v1, v4

    if-ne v1, v4, :cond_4

    invoke-static {v3}, LK6/q;->h(I)I

    move-result v1

    add-int/2addr v1, v4

    add-int/2addr v0, v1

    :cond_4
    iget v1, p0, Lcc/e;->b:I

    const/16 v3, 0x10

    and-int/2addr v1, v3

    if-ne v1, v3, :cond_5

    const/4 v1, 0x5

    iget v3, p0, Lcc/e;->g:I

    invoke-static {v1, v3}, LK6/q;->b(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_5
    iget v1, p0, Lcc/e;->b:I

    const/16 v3, 0x20

    and-int/2addr v1, v3

    if-ne v1, v3, :cond_6

    const/4 v1, 0x6

    iget v3, p0, Lcc/e;->h:I

    invoke-static {v1, v3}, LK6/q;->b(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_6
    iget v1, p0, Lcc/e;->b:I

    const/16 v3, 0x40

    and-int/2addr v1, v3

    if-ne v1, v3, :cond_7

    const/4 v1, 0x7

    iget v3, p0, Lcc/e;->i:I

    invoke-static {v1, v3}, LK6/q;->b(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_7
    iget v1, p0, Lcc/e;->b:I

    const/16 v3, 0x80

    and-int/2addr v1, v3

    if-ne v1, v3, :cond_8

    iget-object v1, p0, Lcc/e;->j:Lcc/h;

    invoke-static {v4, v1}, LK6/q;->d(ILic/b;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_8
    :goto_1
    iget-object v1, p0, Lcc/e;->k:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v2, v1, :cond_9

    iget-object v1, p0, Lcc/e;->k:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lic/b;

    const/16 v3, 0x9

    invoke-static {v3, v1}, LK6/q;->d(ILic/b;)I

    move-result v1

    add-int/2addr v0, v1

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_9
    iget v1, p0, Lcc/e;->b:I

    const/16 v2, 0x200

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_a

    const/16 v1, 0xa

    iget v2, p0, Lcc/e;->m:I

    invoke-static {v1, v2}, LK6/q;->b(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_a
    iget v1, p0, Lcc/e;->b:I

    const/16 v2, 0x100

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_b

    const/16 v1, 0xb

    iget v2, p0, Lcc/e;->l:I

    invoke-static {v1, v2}, LK6/q;->b(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_b
    iget-object v1, p0, Lcc/e;->a:Lic/e;

    invoke-virtual {v1}, Lic/e;->size()I

    move-result v1

    add-int/2addr v1, v0

    iput v1, p0, Lcc/e;->o:I

    return v1
.end method

.method public final b()Lic/k;
    .locals 0

    invoke-static {}, Lcc/c;->e()Lcc/c;

    move-result-object p0

    return-object p0
.end method

.method public final c()Lic/k;
    .locals 1

    invoke-static {}, Lcc/c;->e()Lcc/c;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcc/c;->f(Lcc/e;)V

    return-object v0
.end method

.method public final d(LK6/q;)V
    .locals 8

    invoke-virtual {p0}, Lcc/e;->a()I

    iget v0, p0, Lcc/e;->b:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcc/e;->c:Lcc/d;

    invoke-virtual {v0}, Lcc/d;->getNumber()I

    move-result v0

    invoke-virtual {p1, v1, v0}, LK6/q;->l(II)V

    :cond_0
    iget v0, p0, Lcc/e;->b:I

    const/4 v2, 0x2

    and-int/2addr v0, v2

    const/4 v3, 0x0

    if-ne v0, v2, :cond_1

    iget-wide v4, p0, Lcc/e;->d:J

    invoke-virtual {p1, v2, v3}, LK6/q;->x(II)V

    shl-long v6, v4, v1

    const/16 v0, 0x3f

    shr-long/2addr v4, v0

    xor-long/2addr v4, v6

    invoke-virtual {p1, v4, v5}, LK6/q;->w(J)V

    :cond_1
    iget v0, p0, Lcc/e;->b:I

    const/4 v2, 0x4

    and-int/2addr v0, v2

    const/4 v4, 0x5

    if-ne v0, v2, :cond_2

    iget v0, p0, Lcc/e;->e:F

    const/4 v5, 0x3

    invoke-virtual {p1, v5, v4}, LK6/q;->x(II)V

    invoke-static {v0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    invoke-virtual {p1, v0}, LK6/q;->t(I)V

    :cond_2
    iget v0, p0, Lcc/e;->b:I

    const/16 v5, 0x8

    and-int/2addr v0, v5

    if-ne v0, v5, :cond_3

    iget-wide v6, p0, Lcc/e;->f:D

    invoke-virtual {p1, v2, v1}, LK6/q;->x(II)V

    invoke-static {v6, v7}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, LK6/q;->u(J)V

    :cond_3
    iget v0, p0, Lcc/e;->b:I

    const/16 v1, 0x10

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_4

    iget v0, p0, Lcc/e;->g:I

    invoke-virtual {p1, v4, v0}, LK6/q;->m(II)V

    :cond_4
    iget v0, p0, Lcc/e;->b:I

    const/16 v1, 0x20

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_5

    const/4 v0, 0x6

    iget v1, p0, Lcc/e;->h:I

    invoke-virtual {p1, v0, v1}, LK6/q;->m(II)V

    :cond_5
    iget v0, p0, Lcc/e;->b:I

    const/16 v1, 0x40

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_6

    const/4 v0, 0x7

    iget v1, p0, Lcc/e;->i:I

    invoke-virtual {p1, v0, v1}, LK6/q;->m(II)V

    :cond_6
    iget v0, p0, Lcc/e;->b:I

    const/16 v1, 0x80

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_7

    iget-object v0, p0, Lcc/e;->j:Lcc/h;

    invoke-virtual {p1, v5, v0}, LK6/q;->o(ILic/b;)V

    :cond_7
    :goto_0
    iget-object v0, p0, Lcc/e;->k:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v3, v0, :cond_8

    iget-object v0, p0, Lcc/e;->k:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lic/b;

    const/16 v1, 0x9

    invoke-virtual {p1, v1, v0}, LK6/q;->o(ILic/b;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_8
    iget v0, p0, Lcc/e;->b:I

    const/16 v1, 0x200

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_9

    const/16 v0, 0xa

    iget v1, p0, Lcc/e;->m:I

    invoke-virtual {p1, v0, v1}, LK6/q;->m(II)V

    :cond_9
    iget v0, p0, Lcc/e;->b:I

    const/16 v1, 0x100

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_a

    const/16 v0, 0xb

    iget v1, p0, Lcc/e;->l:I

    invoke-virtual {p1, v0, v1}, LK6/q;->m(II)V

    :cond_a
    iget-object p0, p0, Lcc/e;->a:Lic/e;

    invoke-virtual {p1, p0}, LK6/q;->r(Lic/e;)V

    return-void
.end method

.method public final g()V
    .locals 2

    sget-object v0, Lcc/d;->BYTE:Lcc/d;

    iput-object v0, p0, Lcc/e;->c:Lcc/d;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcc/e;->d:J

    const/4 v0, 0x0

    iput v0, p0, Lcc/e;->e:F

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcc/e;->f:D

    const/4 v0, 0x0

    iput v0, p0, Lcc/e;->g:I

    iput v0, p0, Lcc/e;->h:I

    iput v0, p0, Lcc/e;->i:I

    sget-object v1, Lcc/h;->g:Lcc/h;

    iput-object v1, p0, Lcc/e;->j:Lcc/h;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcc/e;->k:Ljava/util/List;

    iput v0, p0, Lcc/e;->l:I

    iput v0, p0, Lcc/e;->m:I

    return-void
.end method

.method public final isInitialized()Z
    .locals 4

    iget-byte v0, p0, Lcc/e;->n:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v2, 0x0

    if-nez v0, :cond_1

    return v2

    :cond_1
    iget v0, p0, Lcc/e;->b:I

    const/16 v3, 0x80

    and-int/2addr v0, v3

    if-ne v0, v3, :cond_2

    iget-object v0, p0, Lcc/e;->j:Lcc/h;

    invoke-virtual {v0}, Lcc/h;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_2

    iput-byte v2, p0, Lcc/e;->n:B

    return v2

    :cond_2
    move v0, v2

    :goto_0
    iget-object v3, p0, Lcc/e;->k:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_4

    iget-object v3, p0, Lcc/e;->k:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcc/e;

    invoke-virtual {v3}, Lcc/e;->isInitialized()Z

    move-result v3

    if-nez v3, :cond_3

    iput-byte v2, p0, Lcc/e;->n:B

    return v2

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    iput-byte v1, p0, Lcc/e;->n:B

    return v1
.end method
