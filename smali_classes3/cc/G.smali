.class public final Lcc/G;
.super Lic/m;
.source "SourceFile"


# static fields
.field public static final j:Lcc/G;

.field public static final k:Lcc/a;


# instance fields
.field public final b:Lic/e;

.field public c:I

.field public d:Lcc/N;

.field public e:Lcc/M;

.field public f:Lcc/E;

.field public g:Ljava/util/List;

.field public h:B

.field public i:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcc/a;

    const/16 v1, 0xc

    invoke-direct {v0, v1}, Lcc/a;-><init>(I)V

    sput-object v0, Lcc/G;->k:Lcc/a;

    new-instance v0, Lcc/G;

    invoke-direct {v0}, Lcc/G;-><init>()V

    sput-object v0, Lcc/G;->j:Lcc/G;

    sget-object v1, Lcc/N;->e:Lcc/N;

    iput-object v1, v0, Lcc/G;->d:Lcc/N;

    sget-object v1, Lcc/M;->e:Lcc/M;

    iput-object v1, v0, Lcc/G;->e:Lcc/M;

    sget-object v1, Lcc/E;->k:Lcc/E;

    iput-object v1, v0, Lcc/G;->f:Lcc/E;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcc/G;->g:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lic/m;-><init>()V

    const/4 v0, -0x1

    iput-byte v0, p0, Lcc/G;->h:B

    iput v0, p0, Lcc/G;->i:I

    sget-object v0, Lic/e;->a:Lic/w;

    iput-object v0, p0, Lcc/G;->b:Lic/e;

    return-void
.end method

.method public constructor <init>(Lcc/F;)V
    .locals 1

    invoke-direct {p0, p1}, Lic/m;-><init>(Lic/l;)V

    const/4 v0, -0x1

    iput-byte v0, p0, Lcc/G;->h:B

    iput v0, p0, Lcc/G;->i:I

    iget-object p1, p1, Lic/k;->a:Lic/e;

    iput-object p1, p0, Lcc/G;->b:Lic/e;

    return-void
.end method

.method public constructor <init>(Lcom/google/crypto/tink/shaded/protobuf/i;Lic/g;)V
    .locals 10

    invoke-direct {p0}, Lic/m;-><init>()V

    const/4 v0, -0x1

    iput-byte v0, p0, Lcc/G;->h:B

    iput v0, p0, Lcc/G;->i:I

    sget-object v0, Lcc/N;->e:Lcc/N;

    iput-object v0, p0, Lcc/G;->d:Lcc/N;

    sget-object v0, Lcc/M;->e:Lcc/M;

    iput-object v0, p0, Lcc/G;->e:Lcc/M;

    sget-object v0, Lcc/E;->k:Lcc/E;

    iput-object v0, p0, Lcc/G;->f:Lcc/E;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcc/G;->g:Ljava/util/List;

    new-instance v0, Lic/d;

    invoke-direct {v0}, Lic/d;-><init>()V

    const/4 v1, 0x1

    invoke-static {v0, v1}, LK6/q;->j(Ljava/io/OutputStream;I)LK6/q;

    move-result-object v2

    const/4 v3, 0x0

    move v4, v3

    :cond_0
    :goto_0
    const/16 v5, 0x8

    if-nez v3, :cond_e

    :try_start_0
    invoke-virtual {p1}, Lcom/google/crypto/tink/shaded/protobuf/i;->s()I

    move-result v6

    if-eqz v6, :cond_1

    const/16 v7, 0xa

    const/4 v8, 0x0

    if-eq v6, v7, :cond_a

    const/16 v7, 0x12

    if-eq v6, v7, :cond_7

    const/16 v7, 0x1a

    if-eq v6, v7, :cond_4

    const/16 v7, 0x22

    if-eq v6, v7, :cond_2

    invoke-virtual {p0, p1, v2, p2, v6}, Lic/m;->l(Lcom/google/crypto/tink/shaded/protobuf/i;LK6/q;Lic/g;I)Z

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
    and-int/lit8 v6, v4, 0x8

    if-eq v6, v5, :cond_3

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lcc/G;->g:Ljava/util/List;

    move v4, v5

    :cond_3
    iget-object v6, p0, Lcc/G;->g:Ljava/util/List;

    sget-object v7, Lcc/k;->Y:Lcc/a;

    invoke-virtual {p1, v7, p2}, Lcom/google/crypto/tink/shaded/protobuf/i;->l(Lic/y;Lic/g;)Lic/b;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    iget v6, p0, Lcc/G;->c:I

    const/4 v7, 0x4

    and-int/2addr v6, v7

    if-ne v6, v7, :cond_5

    iget-object v6, p0, Lcc/G;->f:Lcc/E;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcc/D;->f()Lcc/D;

    move-result-object v8

    invoke-virtual {v8, v6}, Lcc/D;->g(Lcc/E;)V

    :cond_5
    sget-object v6, Lcc/E;->l:Lcc/a;

    invoke-virtual {p1, v6, p2}, Lcom/google/crypto/tink/shaded/protobuf/i;->l(Lic/y;Lic/g;)Lic/b;

    move-result-object v6

    check-cast v6, Lcc/E;

    iput-object v6, p0, Lcc/G;->f:Lcc/E;

    if-eqz v8, :cond_6

    invoke-virtual {v8, v6}, Lcc/D;->g(Lcc/E;)V

    invoke-virtual {v8}, Lcc/D;->e()Lcc/E;

    move-result-object v6

    iput-object v6, p0, Lcc/G;->f:Lcc/E;

    :cond_6
    iget v6, p0, Lcc/G;->c:I

    or-int/2addr v6, v7

    iput v6, p0, Lcc/G;->c:I

    goto :goto_0

    :cond_7
    iget v6, p0, Lcc/G;->c:I

    const/4 v7, 0x2

    and-int/2addr v6, v7

    if-ne v6, v7, :cond_8

    iget-object v6, p0, Lcc/G;->e:Lcc/M;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v8, Lcc/o;

    const/4 v9, 0x1

    invoke-direct {v8, v9}, Lcc/o;-><init>(I)V

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v9

    iput-object v9, v8, Lcc/o;->d:Ljava/util/List;

    invoke-virtual {v8, v6}, Lcc/o;->i(Lcc/M;)V

    :cond_8
    sget-object v6, Lcc/M;->f:Lcc/a;

    invoke-virtual {p1, v6, p2}, Lcom/google/crypto/tink/shaded/protobuf/i;->l(Lic/y;Lic/g;)Lic/b;

    move-result-object v6

    check-cast v6, Lcc/M;

    iput-object v6, p0, Lcc/G;->e:Lcc/M;

    if-eqz v8, :cond_9

    invoke-virtual {v8, v6}, Lcc/o;->i(Lcc/M;)V

    invoke-virtual {v8}, Lcc/o;->e()Lcc/M;

    move-result-object v6

    iput-object v6, p0, Lcc/G;->e:Lcc/M;

    :cond_9
    iget v6, p0, Lcc/G;->c:I

    or-int/2addr v6, v7

    iput v6, p0, Lcc/G;->c:I

    goto/16 :goto_0

    :cond_a
    iget v6, p0, Lcc/G;->c:I

    and-int/2addr v6, v1

    if-ne v6, v1, :cond_b

    iget-object v6, p0, Lcc/G;->d:Lcc/N;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v8, Lcc/o;

    const/4 v7, 0x3

    invoke-direct {v8, v7}, Lcc/o;-><init>(I)V

    sget-object v7, Lic/u;->b:Lic/H;

    iput-object v7, v8, Lcc/o;->d:Ljava/util/List;

    invoke-virtual {v8, v6}, Lcc/o;->j(Lcc/N;)V

    :cond_b
    sget-object v6, Lcc/N;->f:Lcc/a;

    invoke-virtual {p1, v6, p2}, Lcom/google/crypto/tink/shaded/protobuf/i;->l(Lic/y;Lic/g;)Lic/b;

    move-result-object v6

    check-cast v6, Lcc/N;

    iput-object v6, p0, Lcc/G;->d:Lcc/N;

    if-eqz v8, :cond_c

    invoke-virtual {v8, v6}, Lcc/o;->j(Lcc/N;)V

    invoke-virtual {v8}, Lcc/o;->f()Lcc/N;

    move-result-object v6

    iput-object v6, p0, Lcc/G;->d:Lcc/N;

    :cond_c
    iget v6, p0, Lcc/G;->c:I

    or-int/2addr v6, v1

    iput v6, p0, Lcc/G;->c:I
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
    and-int/lit8 p2, v4, 0x8

    if-ne p2, v5, :cond_d

    iget-object p2, p0, Lcc/G;->g:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lcc/G;->g:Ljava/util/List;

    :cond_d
    :try_start_2
    invoke-virtual {v2}, LK6/q;->i()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catch_2
    invoke-virtual {v0}, Lic/d;->c()Lic/e;

    move-result-object p2

    iput-object p2, p0, Lcc/G;->b:Lic/e;

    goto :goto_4

    :catchall_1
    move-exception p1

    invoke-virtual {v0}, Lic/d;->c()Lic/e;

    move-result-object p2

    iput-object p2, p0, Lcc/G;->b:Lic/e;

    throw p1

    :goto_4
    invoke-virtual {p0}, Lic/m;->k()V

    throw p1

    :cond_e
    and-int/lit8 p1, v4, 0x8

    if-ne p1, v5, :cond_f

    iget-object p1, p0, Lcc/G;->g:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcc/G;->g:Ljava/util/List;

    :cond_f
    :try_start_3
    invoke-virtual {v2}, LK6/q;->i()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :catch_3
    invoke-virtual {v0}, Lic/d;->c()Lic/e;

    move-result-object p1

    iput-object p1, p0, Lcc/G;->b:Lic/e;

    goto :goto_5

    :catchall_2
    move-exception p1

    invoke-virtual {v0}, Lic/d;->c()Lic/e;

    move-result-object p2

    iput-object p2, p0, Lcc/G;->b:Lic/e;

    throw p1

    :goto_5
    invoke-virtual {p0}, Lic/m;->k()V

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 5

    iget v0, p0, Lcc/G;->i:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    iget v0, p0, Lcc/G;->c:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcc/G;->d:Lcc/N;

    invoke-static {v1, v0}, LK6/q;->d(ILic/b;)I

    move-result v0

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    iget v1, p0, Lcc/G;->c:I

    const/4 v3, 0x2

    and-int/2addr v1, v3

    if-ne v1, v3, :cond_2

    iget-object v1, p0, Lcc/G;->e:Lcc/M;

    invoke-static {v3, v1}, LK6/q;->d(ILic/b;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_2
    iget v1, p0, Lcc/G;->c:I

    const/4 v3, 0x4

    and-int/2addr v1, v3

    if-ne v1, v3, :cond_3

    const/4 v1, 0x3

    iget-object v4, p0, Lcc/G;->f:Lcc/E;

    invoke-static {v1, v4}, LK6/q;->d(ILic/b;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_3
    :goto_1
    iget-object v1, p0, Lcc/G;->g:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v2, v1, :cond_4

    iget-object v1, p0, Lcc/G;->g:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lic/b;

    invoke-static {v3, v1}, LK6/q;->d(ILic/b;)I

    move-result v1

    add-int/2addr v0, v1

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    invoke-virtual {p0}, Lic/m;->h()I

    move-result v1

    add-int/2addr v1, v0

    iget-object v0, p0, Lcc/G;->b:Lic/e;

    invoke-virtual {v0}, Lic/e;->size()I

    move-result v0

    add-int/2addr v0, v1

    iput v0, p0, Lcc/G;->i:I

    return v0
.end method

.method public final b()Lic/k;
    .locals 0

    invoke-static {}, Lcc/F;->f()Lcc/F;

    move-result-object p0

    return-object p0
.end method

.method public final c()Lic/k;
    .locals 1

    invoke-static {}, Lcc/F;->f()Lcc/F;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcc/F;->g(Lcc/G;)V

    return-object v0
.end method

.method public final d(LK6/q;)V
    .locals 4

    invoke-virtual {p0}, Lcc/G;->a()I

    new-instance v0, Lcom/samsung/android/motionphoto/utils/ex/e;

    invoke-direct {v0, p0}, Lcom/samsung/android/motionphoto/utils/ex/e;-><init>(Lic/m;)V

    iget v1, p0, Lcc/G;->c:I

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcc/G;->d:Lcc/N;

    invoke-virtual {p1, v2, v1}, LK6/q;->o(ILic/b;)V

    :cond_0
    iget v1, p0, Lcc/G;->c:I

    const/4 v2, 0x2

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcc/G;->e:Lcc/M;

    invoke-virtual {p1, v2, v1}, LK6/q;->o(ILic/b;)V

    :cond_1
    iget v1, p0, Lcc/G;->c:I

    const/4 v2, 0x4

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_2

    const/4 v1, 0x3

    iget-object v3, p0, Lcc/G;->f:Lcc/E;

    invoke-virtual {p1, v1, v3}, LK6/q;->o(ILic/b;)V

    :cond_2
    const/4 v1, 0x0

    :goto_0
    iget-object v3, p0, Lcc/G;->g:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_3

    iget-object v3, p0, Lcc/G;->g:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lic/b;

    invoke-virtual {p1, v2, v3}, LK6/q;->o(ILic/b;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    const/16 v1, 0xc8

    invoke-virtual {v0, v1, p1}, Lcom/samsung/android/motionphoto/utils/ex/e;->y(ILK6/q;)V

    iget-object p0, p0, Lcc/G;->b:Lic/e;

    invoke-virtual {p1, p0}, LK6/q;->r(Lic/e;)V

    return-void
.end method

.method public final getDefaultInstanceForType()Lic/b;
    .locals 0

    sget-object p0, Lcc/G;->j:Lcc/G;

    return-object p0
.end method

.method public final isInitialized()Z
    .locals 4

    iget-byte v0, p0, Lcc/G;->h:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v2, 0x0

    if-nez v0, :cond_1

    return v2

    :cond_1
    iget v0, p0, Lcc/G;->c:I

    const/4 v3, 0x2

    and-int/2addr v0, v3

    if-ne v0, v3, :cond_2

    iget-object v0, p0, Lcc/G;->e:Lcc/M;

    invoke-virtual {v0}, Lcc/M;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_2

    iput-byte v2, p0, Lcc/G;->h:B

    return v2

    :cond_2
    iget v0, p0, Lcc/G;->c:I

    const/4 v3, 0x4

    and-int/2addr v0, v3

    if-ne v0, v3, :cond_3

    iget-object v0, p0, Lcc/G;->f:Lcc/E;

    invoke-virtual {v0}, Lcc/E;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_3

    iput-byte v2, p0, Lcc/G;->h:B

    return v2

    :cond_3
    move v0, v2

    :goto_0
    iget-object v3, p0, Lcc/G;->g:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_5

    iget-object v3, p0, Lcc/G;->g:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcc/k;

    invoke-virtual {v3}, Lcc/k;->isInitialized()Z

    move-result v3

    if-nez v3, :cond_4

    iput-byte v2, p0, Lcc/G;->h:B

    return v2

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_5
    invoke-virtual {p0}, Lic/m;->g()Z

    move-result v0

    if-nez v0, :cond_6

    iput-byte v2, p0, Lcc/G;->h:B

    return v2

    :cond_6
    iput-byte v1, p0, Lcc/G;->h:B

    return v1
.end method
