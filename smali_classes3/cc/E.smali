.class public final Lcc/E;
.super Lic/m;
.source "SourceFile"


# static fields
.field public static final k:Lcc/E;

.field public static final l:Lcc/a;


# instance fields
.field public final b:Lic/e;

.field public c:I

.field public d:Ljava/util/List;

.field public e:Ljava/util/List;

.field public f:Ljava/util/List;

.field public g:Lcc/Z;

.field public h:Lcc/g0;

.field public i:B

.field public j:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcc/a;

    const/16 v1, 0xb

    invoke-direct {v0, v1}, Lcc/a;-><init>(I)V

    sput-object v0, Lcc/E;->l:Lcc/a;

    new-instance v0, Lcc/E;

    invoke-direct {v0}, Lcc/E;-><init>()V

    sput-object v0, Lcc/E;->k:Lcc/E;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcc/E;->d:Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcc/E;->e:Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcc/E;->f:Ljava/util/List;

    sget-object v1, Lcc/Z;->g:Lcc/Z;

    iput-object v1, v0, Lcc/E;->g:Lcc/Z;

    sget-object v1, Lcc/g0;->e:Lcc/g0;

    iput-object v1, v0, Lcc/E;->h:Lcc/g0;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lic/m;-><init>()V

    const/4 v0, -0x1

    iput-byte v0, p0, Lcc/E;->i:B

    iput v0, p0, Lcc/E;->j:I

    sget-object v0, Lic/e;->a:Lic/w;

    iput-object v0, p0, Lcc/E;->b:Lic/e;

    return-void
.end method

.method public constructor <init>(Lcc/D;)V
    .locals 1

    invoke-direct {p0, p1}, Lic/m;-><init>(Lic/l;)V

    const/4 v0, -0x1

    iput-byte v0, p0, Lcc/E;->i:B

    iput v0, p0, Lcc/E;->j:I

    iget-object p1, p1, Lic/k;->a:Lic/e;

    iput-object p1, p0, Lcc/E;->b:Lic/e;

    return-void
.end method

.method public constructor <init>(Lcom/google/crypto/tink/shaded/protobuf/i;Lic/g;)V
    .locals 10

    invoke-direct {p0}, Lic/m;-><init>()V

    const/4 v0, -0x1

    iput-byte v0, p0, Lcc/E;->i:B

    iput v0, p0, Lcc/E;->j:I

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcc/E;->d:Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcc/E;->e:Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcc/E;->f:Ljava/util/List;

    sget-object v0, Lcc/Z;->g:Lcc/Z;

    iput-object v0, p0, Lcc/E;->g:Lcc/Z;

    sget-object v0, Lcc/g0;->e:Lcc/g0;

    iput-object v0, p0, Lcc/E;->h:Lcc/g0;

    new-instance v0, Lic/d;

    invoke-direct {v0}, Lic/d;-><init>()V

    const/4 v1, 0x1

    invoke-static {v0, v1}, LK6/q;->j(Ljava/io/OutputStream;I)LK6/q;

    move-result-object v2

    const/4 v3, 0x0

    move v4, v3

    :cond_0
    :goto_0
    const/4 v5, 0x4

    const/4 v6, 0x2

    if-nez v3, :cond_11

    :try_start_0
    invoke-virtual {p1}, Lcom/google/crypto/tink/shaded/protobuf/i;->s()I

    move-result v7

    if-eqz v7, :cond_1

    const/16 v8, 0x1a

    if-eq v7, v8, :cond_c

    const/16 v8, 0x22

    if-eq v7, v8, :cond_a

    const/16 v8, 0x2a

    if-eq v7, v8, :cond_8

    const/16 v8, 0xf2

    const/4 v9, 0x0

    if-eq v7, v8, :cond_5

    const/16 v8, 0x102

    if-eq v7, v8, :cond_2

    invoke-virtual {p0, p1, v2, p2, v7}, Lic/m;->l(Lcom/google/crypto/tink/shaded/protobuf/i;LK6/q;Lic/g;I)Z

    move-result v5

    if-nez v5, :cond_0

    :cond_1
    move v3, v1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto/16 :goto_3

    :catch_0
    move-exception p1

    goto/16 :goto_1

    :catch_1
    move-exception p1

    goto/16 :goto_2

    :cond_2
    iget v7, p0, Lcc/E;->c:I

    and-int/2addr v7, v6

    if-ne v7, v6, :cond_3

    iget-object v7, p0, Lcc/E;->h:Lcc/g0;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v9, Lcc/o;

    const/4 v8, 0x2

    invoke-direct {v9, v8}, Lcc/o;-><init>(I)V

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v8

    iput-object v8, v9, Lcc/o;->d:Ljava/util/List;

    invoke-virtual {v9, v7}, Lcc/o;->k(Lcc/g0;)V

    :cond_3
    sget-object v7, Lcc/g0;->f:Lcc/a;

    invoke-virtual {p1, v7, p2}, Lcom/google/crypto/tink/shaded/protobuf/i;->l(Lic/y;Lic/g;)Lic/b;

    move-result-object v7

    check-cast v7, Lcc/g0;

    iput-object v7, p0, Lcc/E;->h:Lcc/g0;

    if-eqz v9, :cond_4

    invoke-virtual {v9, v7}, Lcc/o;->k(Lcc/g0;)V

    invoke-virtual {v9}, Lcc/o;->g()Lcc/g0;

    move-result-object v7

    iput-object v7, p0, Lcc/E;->h:Lcc/g0;

    :cond_4
    iget v7, p0, Lcc/E;->c:I

    or-int/2addr v7, v6

    iput v7, p0, Lcc/E;->c:I

    goto :goto_0

    :cond_5
    iget v7, p0, Lcc/E;->c:I

    and-int/2addr v7, v1

    if-ne v7, v1, :cond_6

    iget-object v7, p0, Lcc/E;->g:Lcc/Z;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v7}, Lcc/Z;->g(Lcc/Z;)Lcc/g;

    move-result-object v9

    :cond_6
    sget-object v7, Lcc/Z;->h:Lcc/a;

    invoke-virtual {p1, v7, p2}, Lcom/google/crypto/tink/shaded/protobuf/i;->l(Lic/y;Lic/g;)Lic/b;

    move-result-object v7

    check-cast v7, Lcc/Z;

    iput-object v7, p0, Lcc/E;->g:Lcc/Z;

    if-eqz v9, :cond_7

    invoke-virtual {v9, v7}, Lcc/g;->h(Lcc/Z;)V

    invoke-virtual {v9}, Lcc/g;->e()Lcc/Z;

    move-result-object v7

    iput-object v7, p0, Lcc/E;->g:Lcc/Z;

    :cond_7
    iget v7, p0, Lcc/E;->c:I

    or-int/2addr v7, v1

    iput v7, p0, Lcc/E;->c:I

    goto/16 :goto_0

    :cond_8
    and-int/lit8 v7, v4, 0x4

    if-eq v7, v5, :cond_9

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, p0, Lcc/E;->f:Ljava/util/List;

    or-int/lit8 v4, v4, 0x4

    :cond_9
    iget-object v7, p0, Lcc/E;->f:Ljava/util/List;

    sget-object v8, Lcc/V;->q:Lcc/a;

    invoke-virtual {p1, v8, p2}, Lcom/google/crypto/tink/shaded/protobuf/i;->l(Lic/y;Lic/g;)Lic/b;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_a
    and-int/lit8 v7, v4, 0x2

    if-eq v7, v6, :cond_b

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, p0, Lcc/E;->e:Ljava/util/List;

    or-int/lit8 v4, v4, 0x2

    :cond_b
    iget-object v7, p0, Lcc/E;->e:Ljava/util/List;

    sget-object v8, Lcc/I;->w:Lcc/a;

    invoke-virtual {p1, v8, p2}, Lcom/google/crypto/tink/shaded/protobuf/i;->l(Lic/y;Lic/g;)Lic/b;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_c
    and-int/lit8 v7, v4, 0x1

    if-eq v7, v1, :cond_d

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, p0, Lcc/E;->d:Ljava/util/List;

    or-int/lit8 v4, v4, 0x1

    :cond_d
    iget-object v7, p0, Lcc/E;->d:Ljava/util/List;

    sget-object v8, Lcc/A;->w:Lcc/a;

    invoke-virtual {p1, v8, p2}, Lcom/google/crypto/tink/shaded/protobuf/i;->l(Lic/y;Lic/g;)Lic/b;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lic/t; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    :goto_1
    :try_start_1
    new-instance p2, Lic/t;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lic/t;-><init>(Ljava/lang/String;)V

    iput-object p0, p2, Lic/t;->a:Lic/b;

    throw p2

    :goto_2
    iput-object p0, p1, Lic/t;->a:Lic/b;

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_3
    and-int/lit8 p2, v4, 0x1

    if-ne p2, v1, :cond_e

    iget-object p2, p0, Lcc/E;->d:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lcc/E;->d:Ljava/util/List;

    :cond_e
    and-int/lit8 p2, v4, 0x2

    if-ne p2, v6, :cond_f

    iget-object p2, p0, Lcc/E;->e:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lcc/E;->e:Ljava/util/List;

    :cond_f
    and-int/lit8 p2, v4, 0x4

    if-ne p2, v5, :cond_10

    iget-object p2, p0, Lcc/E;->f:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lcc/E;->f:Ljava/util/List;

    :cond_10
    :try_start_2
    invoke-virtual {v2}, LK6/q;->i()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catch_2
    invoke-virtual {v0}, Lic/d;->c()Lic/e;

    move-result-object p2

    iput-object p2, p0, Lcc/E;->b:Lic/e;

    goto :goto_4

    :catchall_1
    move-exception p1

    invoke-virtual {v0}, Lic/d;->c()Lic/e;

    move-result-object p2

    iput-object p2, p0, Lcc/E;->b:Lic/e;

    throw p1

    :goto_4
    invoke-virtual {p0}, Lic/m;->k()V

    throw p1

    :cond_11
    and-int/lit8 p1, v4, 0x1

    if-ne p1, v1, :cond_12

    iget-object p1, p0, Lcc/E;->d:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcc/E;->d:Ljava/util/List;

    :cond_12
    and-int/lit8 p1, v4, 0x2

    if-ne p1, v6, :cond_13

    iget-object p1, p0, Lcc/E;->e:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcc/E;->e:Ljava/util/List;

    :cond_13
    and-int/lit8 p1, v4, 0x4

    if-ne p1, v5, :cond_14

    iget-object p1, p0, Lcc/E;->f:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcc/E;->f:Ljava/util/List;

    :cond_14
    :try_start_3
    invoke-virtual {v2}, LK6/q;->i()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :catch_3
    invoke-virtual {v0}, Lic/d;->c()Lic/e;

    move-result-object p1

    iput-object p1, p0, Lcc/E;->b:Lic/e;

    goto :goto_5

    :catchall_2
    move-exception p1

    invoke-virtual {v0}, Lic/d;->c()Lic/e;

    move-result-object p2

    iput-object p2, p0, Lcc/E;->b:Lic/e;

    throw p1

    :goto_5
    invoke-virtual {p0}, Lic/m;->k()V

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 5

    iget v0, p0, Lcc/E;->j:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    :goto_0
    iget-object v3, p0, Lcc/E;->d:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    iget-object v3, p0, Lcc/E;->d:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lic/b;

    const/4 v4, 0x3

    invoke-static {v4, v3}, LK6/q;->d(ILic/b;)I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    move v1, v0

    :goto_1
    iget-object v3, p0, Lcc/E;->e:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_2

    iget-object v3, p0, Lcc/E;->e:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lic/b;

    const/4 v4, 0x4

    invoke-static {v4, v3}, LK6/q;->d(ILic/b;)I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    iget-object v1, p0, Lcc/E;->f:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    iget-object v1, p0, Lcc/E;->f:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lic/b;

    const/4 v3, 0x5

    invoke-static {v3, v1}, LK6/q;->d(ILic/b;)I

    move-result v1

    add-int/2addr v2, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    iget v0, p0, Lcc/E;->c:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_4

    const/16 v0, 0x1e

    iget-object v1, p0, Lcc/E;->g:Lcc/Z;

    invoke-static {v0, v1}, LK6/q;->d(ILic/b;)I

    move-result v0

    add-int/2addr v2, v0

    :cond_4
    iget v0, p0, Lcc/E;->c:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_5

    const/16 v0, 0x20

    iget-object v1, p0, Lcc/E;->h:Lcc/g0;

    invoke-static {v0, v1}, LK6/q;->d(ILic/b;)I

    move-result v0

    add-int/2addr v2, v0

    :cond_5
    invoke-virtual {p0}, Lic/m;->h()I

    move-result v0

    add-int/2addr v0, v2

    iget-object v1, p0, Lcc/E;->b:Lic/e;

    invoke-virtual {v1}, Lic/e;->size()I

    move-result v1

    add-int/2addr v1, v0

    iput v1, p0, Lcc/E;->j:I

    return v1
.end method

.method public final b()Lic/k;
    .locals 0

    invoke-static {}, Lcc/D;->f()Lcc/D;

    move-result-object p0

    return-object p0
.end method

.method public final c()Lic/k;
    .locals 1

    invoke-static {}, Lcc/D;->f()Lcc/D;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcc/D;->g(Lcc/E;)V

    return-object v0
.end method

.method public final d(LK6/q;)V
    .locals 5

    invoke-virtual {p0}, Lcc/E;->a()I

    new-instance v0, Lcom/samsung/android/motionphoto/utils/ex/e;

    invoke-direct {v0, p0}, Lcom/samsung/android/motionphoto/utils/ex/e;-><init>(Lic/m;)V

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    iget-object v3, p0, Lcc/E;->d:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    iget-object v3, p0, Lcc/E;->d:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lic/b;

    const/4 v4, 0x3

    invoke-virtual {p1, v4, v3}, LK6/q;->o(ILic/b;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_1
    iget-object v3, p0, Lcc/E;->e:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    iget-object v3, p0, Lcc/E;->e:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lic/b;

    const/4 v4, 0x4

    invoke-virtual {p1, v4, v3}, LK6/q;->o(ILic/b;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    :goto_2
    iget-object v2, p0, Lcc/E;->f:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    iget-object v2, p0, Lcc/E;->f:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lic/b;

    const/4 v3, 0x5

    invoke-virtual {p1, v3, v2}, LK6/q;->o(ILic/b;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_2
    iget v1, p0, Lcc/E;->c:I

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_3

    const/16 v1, 0x1e

    iget-object v2, p0, Lcc/E;->g:Lcc/Z;

    invoke-virtual {p1, v1, v2}, LK6/q;->o(ILic/b;)V

    :cond_3
    iget v1, p0, Lcc/E;->c:I

    const/4 v2, 0x2

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_4

    const/16 v1, 0x20

    iget-object v2, p0, Lcc/E;->h:Lcc/g0;

    invoke-virtual {p1, v1, v2}, LK6/q;->o(ILic/b;)V

    :cond_4
    const/16 v1, 0xc8

    invoke-virtual {v0, v1, p1}, Lcom/samsung/android/motionphoto/utils/ex/e;->y(ILK6/q;)V

    iget-object p0, p0, Lcc/E;->b:Lic/e;

    invoke-virtual {p1, p0}, LK6/q;->r(Lic/e;)V

    return-void
.end method

.method public final getDefaultInstanceForType()Lic/b;
    .locals 0

    sget-object p0, Lcc/E;->k:Lcc/E;

    return-object p0
.end method

.method public final isInitialized()Z
    .locals 4

    iget-byte v0, p0, Lcc/E;->i:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v2, 0x0

    if-nez v0, :cond_1

    return v2

    :cond_1
    move v0, v2

    :goto_0
    iget-object v3, p0, Lcc/E;->d:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_3

    iget-object v3, p0, Lcc/E;->d:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcc/A;

    invoke-virtual {v3}, Lcc/A;->isInitialized()Z

    move-result v3

    if-nez v3, :cond_2

    iput-byte v2, p0, Lcc/E;->i:B

    return v2

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    move v0, v2

    :goto_1
    iget-object v3, p0, Lcc/E;->e:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_5

    iget-object v3, p0, Lcc/E;->e:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcc/I;

    invoke-virtual {v3}, Lcc/I;->isInitialized()Z

    move-result v3

    if-nez v3, :cond_4

    iput-byte v2, p0, Lcc/E;->i:B

    return v2

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_5
    move v0, v2

    :goto_2
    iget-object v3, p0, Lcc/E;->f:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_7

    iget-object v3, p0, Lcc/E;->f:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcc/V;

    invoke-virtual {v3}, Lcc/V;->isInitialized()Z

    move-result v3

    if-nez v3, :cond_6

    iput-byte v2, p0, Lcc/E;->i:B

    return v2

    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_7
    iget v0, p0, Lcc/E;->c:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_8

    iget-object v0, p0, Lcc/E;->g:Lcc/Z;

    invoke-virtual {v0}, Lcc/Z;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_8

    iput-byte v2, p0, Lcc/E;->i:B

    return v2

    :cond_8
    invoke-virtual {p0}, Lic/m;->g()Z

    move-result v0

    if-nez v0, :cond_9

    iput-byte v2, p0, Lcc/E;->i:B

    return v2

    :cond_9
    iput-byte v1, p0, Lcc/E;->i:B

    return v1
.end method
