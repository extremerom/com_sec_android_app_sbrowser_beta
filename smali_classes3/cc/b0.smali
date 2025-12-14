.class public final Lcc/b0;
.super Lic/m;
.source "SourceFile"


# static fields
.field public static final l:Lcc/b0;

.field public static final m:Lcc/a;


# instance fields
.field public final b:Lic/e;

.field public c:I

.field public d:I

.field public e:I

.field public f:Lcc/T;

.field public g:I

.field public h:Lcc/T;

.field public i:I

.field public j:B

.field public k:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcc/a;

    const/16 v1, 0x16

    invoke-direct {v0, v1}, Lcc/a;-><init>(I)V

    sput-object v0, Lcc/b0;->m:Lcc/a;

    new-instance v0, Lcc/b0;

    invoke-direct {v0}, Lcc/b0;-><init>()V

    sput-object v0, Lcc/b0;->l:Lcc/b0;

    const/4 v1, 0x0

    iput v1, v0, Lcc/b0;->d:I

    iput v1, v0, Lcc/b0;->e:I

    sget-object v2, Lcc/T;->t:Lcc/T;

    iput-object v2, v0, Lcc/b0;->f:Lcc/T;

    iput v1, v0, Lcc/b0;->g:I

    iput-object v2, v0, Lcc/b0;->h:Lcc/T;

    iput v1, v0, Lcc/b0;->i:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lic/m;-><init>()V

    const/4 v0, -0x1

    iput-byte v0, p0, Lcc/b0;->j:B

    iput v0, p0, Lcc/b0;->k:I

    sget-object v0, Lic/e;->a:Lic/w;

    iput-object v0, p0, Lcc/b0;->b:Lic/e;

    return-void
.end method

.method public constructor <init>(Lcc/a0;)V
    .locals 1

    invoke-direct {p0, p1}, Lic/m;-><init>(Lic/l;)V

    const/4 v0, -0x1

    iput-byte v0, p0, Lcc/b0;->j:B

    iput v0, p0, Lcc/b0;->k:I

    iget-object p1, p1, Lic/k;->a:Lic/e;

    iput-object p1, p0, Lcc/b0;->b:Lic/e;

    return-void
.end method

.method public constructor <init>(Lcom/google/crypto/tink/shaded/protobuf/i;Lic/g;)V
    .locals 9

    invoke-direct {p0}, Lic/m;-><init>()V

    const/4 v0, -0x1

    iput-byte v0, p0, Lcc/b0;->j:B

    iput v0, p0, Lcc/b0;->k:I

    const/4 v0, 0x0

    iput v0, p0, Lcc/b0;->d:I

    iput v0, p0, Lcc/b0;->e:I

    sget-object v1, Lcc/T;->t:Lcc/T;

    iput-object v1, p0, Lcc/b0;->f:Lcc/T;

    iput v0, p0, Lcc/b0;->g:I

    iput-object v1, p0, Lcc/b0;->h:Lcc/T;

    iput v0, p0, Lcc/b0;->i:I

    new-instance v1, Lic/d;

    invoke-direct {v1}, Lic/d;-><init>()V

    const/4 v2, 0x1

    invoke-static {v1, v2}, LK6/q;->j(Ljava/io/OutputStream;I)LK6/q;

    move-result-object v3

    :cond_0
    :goto_0
    if-nez v0, :cond_c

    :try_start_0
    invoke-virtual {p1}, Lcom/google/crypto/tink/shaded/protobuf/i;->s()I

    move-result v4

    if-eqz v4, :cond_1

    const/16 v5, 0x8

    if-eq v4, v5, :cond_b

    const/16 v6, 0x10

    if-eq v4, v6, :cond_a

    const/16 v7, 0x1a

    const/4 v8, 0x0

    if-eq v4, v7, :cond_7

    const/16 v7, 0x22

    if-eq v4, v7, :cond_4

    const/16 v6, 0x28

    if-eq v4, v6, :cond_3

    const/16 v5, 0x30

    if-eq v4, v5, :cond_2

    invoke-virtual {p0, p1, v3, p2, v4}, Lic/m;->l(Lcom/google/crypto/tink/shaded/protobuf/i;LK6/q;Lic/g;I)Z

    move-result v4

    if-nez v4, :cond_0

    :cond_1
    move v0, v2

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
    iget v4, p0, Lcc/b0;->c:I

    or-int/lit8 v4, v4, 0x20

    iput v4, p0, Lcc/b0;->c:I

    invoke-virtual {p1}, Lcom/google/crypto/tink/shaded/protobuf/i;->p()I

    move-result v4

    iput v4, p0, Lcc/b0;->i:I

    goto :goto_0

    :cond_3
    iget v4, p0, Lcc/b0;->c:I

    or-int/2addr v4, v5

    iput v4, p0, Lcc/b0;->c:I

    invoke-virtual {p1}, Lcom/google/crypto/tink/shaded/protobuf/i;->p()I

    move-result v4

    iput v4, p0, Lcc/b0;->g:I

    goto :goto_0

    :cond_4
    iget v4, p0, Lcc/b0;->c:I

    and-int/2addr v4, v6

    if-ne v4, v6, :cond_5

    iget-object v4, p0, Lcc/b0;->h:Lcc/T;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v4}, Lcc/T;->p(Lcc/T;)Lcc/S;

    move-result-object v8

    :cond_5
    sget-object v4, Lcc/T;->u:Lcc/a;

    invoke-virtual {p1, v4, p2}, Lcom/google/crypto/tink/shaded/protobuf/i;->l(Lic/y;Lic/g;)Lic/b;

    move-result-object v4

    check-cast v4, Lcc/T;

    iput-object v4, p0, Lcc/b0;->h:Lcc/T;

    if-eqz v8, :cond_6

    invoke-virtual {v8, v4}, Lcc/S;->g(Lcc/T;)Lcc/S;

    invoke-virtual {v8}, Lcc/S;->e()Lcc/T;

    move-result-object v4

    iput-object v4, p0, Lcc/b0;->h:Lcc/T;

    :cond_6
    iget v4, p0, Lcc/b0;->c:I

    or-int/2addr v4, v6

    iput v4, p0, Lcc/b0;->c:I

    goto :goto_0

    :cond_7
    iget v4, p0, Lcc/b0;->c:I

    const/4 v5, 0x4

    and-int/2addr v4, v5

    if-ne v4, v5, :cond_8

    iget-object v4, p0, Lcc/b0;->f:Lcc/T;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v4}, Lcc/T;->p(Lcc/T;)Lcc/S;

    move-result-object v8

    :cond_8
    sget-object v4, Lcc/T;->u:Lcc/a;

    invoke-virtual {p1, v4, p2}, Lcom/google/crypto/tink/shaded/protobuf/i;->l(Lic/y;Lic/g;)Lic/b;

    move-result-object v4

    check-cast v4, Lcc/T;

    iput-object v4, p0, Lcc/b0;->f:Lcc/T;

    if-eqz v8, :cond_9

    invoke-virtual {v8, v4}, Lcc/S;->g(Lcc/T;)Lcc/S;

    invoke-virtual {v8}, Lcc/S;->e()Lcc/T;

    move-result-object v4

    iput-object v4, p0, Lcc/b0;->f:Lcc/T;

    :cond_9
    iget v4, p0, Lcc/b0;->c:I

    or-int/2addr v4, v5

    iput v4, p0, Lcc/b0;->c:I

    goto/16 :goto_0

    :cond_a
    iget v4, p0, Lcc/b0;->c:I

    or-int/lit8 v4, v4, 0x2

    iput v4, p0, Lcc/b0;->c:I

    invoke-virtual {p1}, Lcom/google/crypto/tink/shaded/protobuf/i;->p()I

    move-result v4

    iput v4, p0, Lcc/b0;->e:I

    goto/16 :goto_0

    :cond_b
    iget v4, p0, Lcc/b0;->c:I

    or-int/2addr v4, v2

    iput v4, p0, Lcc/b0;->c:I

    invoke-virtual {p1}, Lcom/google/crypto/tink/shaded/protobuf/i;->p()I

    move-result v4

    iput v4, p0, Lcc/b0;->d:I
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
    :try_start_2
    invoke-virtual {v3}, LK6/q;->i()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catch_2
    invoke-virtual {v1}, Lic/d;->c()Lic/e;

    move-result-object p2

    iput-object p2, p0, Lcc/b0;->b:Lic/e;

    goto :goto_4

    :catchall_1
    move-exception p1

    invoke-virtual {v1}, Lic/d;->c()Lic/e;

    move-result-object p2

    iput-object p2, p0, Lcc/b0;->b:Lic/e;

    throw p1

    :goto_4
    invoke-virtual {p0}, Lic/m;->k()V

    throw p1

    :cond_c
    :try_start_3
    invoke-virtual {v3}, LK6/q;->i()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :catch_3
    invoke-virtual {v1}, Lic/d;->c()Lic/e;

    move-result-object p1

    iput-object p1, p0, Lcc/b0;->b:Lic/e;

    goto :goto_5

    :catchall_2
    move-exception p1

    invoke-virtual {v1}, Lic/d;->c()Lic/e;

    move-result-object p2

    iput-object p2, p0, Lcc/b0;->b:Lic/e;

    throw p1

    :goto_5
    invoke-virtual {p0}, Lic/m;->k()V

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 4

    iget v0, p0, Lcc/b0;->k:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    iget v0, p0, Lcc/b0;->c:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_1

    iget v0, p0, Lcc/b0;->d:I

    invoke-static {v1, v0}, LK6/q;->b(II)I

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcc/b0;->c:I

    const/4 v2, 0x2

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_2

    iget v1, p0, Lcc/b0;->e:I

    invoke-static {v2, v1}, LK6/q;->b(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_2
    iget v1, p0, Lcc/b0;->c:I

    const/4 v2, 0x4

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_3

    const/4 v1, 0x3

    iget-object v3, p0, Lcc/b0;->f:Lcc/T;

    invoke-static {v1, v3}, LK6/q;->d(ILic/b;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_3
    iget v1, p0, Lcc/b0;->c:I

    const/16 v3, 0x10

    and-int/2addr v1, v3

    if-ne v1, v3, :cond_4

    iget-object v1, p0, Lcc/b0;->h:Lcc/T;

    invoke-static {v2, v1}, LK6/q;->d(ILic/b;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_4
    iget v1, p0, Lcc/b0;->c:I

    const/16 v2, 0x8

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_5

    const/4 v1, 0x5

    iget v2, p0, Lcc/b0;->g:I

    invoke-static {v1, v2}, LK6/q;->b(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_5
    iget v1, p0, Lcc/b0;->c:I

    const/16 v2, 0x20

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_6

    const/4 v1, 0x6

    iget v2, p0, Lcc/b0;->i:I

    invoke-static {v1, v2}, LK6/q;->b(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_6
    invoke-virtual {p0}, Lic/m;->h()I

    move-result v1

    add-int/2addr v1, v0

    iget-object v0, p0, Lcc/b0;->b:Lic/e;

    invoke-virtual {v0}, Lic/e;->size()I

    move-result v0

    add-int/2addr v0, v1

    iput v0, p0, Lcc/b0;->k:I

    return v0
.end method

.method public final b()Lic/k;
    .locals 1

    new-instance p0, Lcc/a0;

    invoke-direct {p0}, Lic/l;-><init>()V

    sget-object v0, Lcc/T;->t:Lcc/T;

    iput-object v0, p0, Lcc/a0;->g:Lcc/T;

    iput-object v0, p0, Lcc/a0;->i:Lcc/T;

    return-object p0
.end method

.method public final c()Lic/k;
    .locals 2

    new-instance v0, Lcc/a0;

    invoke-direct {v0}, Lic/l;-><init>()V

    sget-object v1, Lcc/T;->t:Lcc/T;

    iput-object v1, v0, Lcc/a0;->g:Lcc/T;

    iput-object v1, v0, Lcc/a0;->i:Lcc/T;

    invoke-virtual {v0, p0}, Lcc/a0;->f(Lcc/b0;)V

    return-object v0
.end method

.method public final d(LK6/q;)V
    .locals 4

    invoke-virtual {p0}, Lcc/b0;->a()I

    new-instance v0, Lcom/samsung/android/motionphoto/utils/ex/e;

    invoke-direct {v0, p0}, Lcom/samsung/android/motionphoto/utils/ex/e;-><init>(Lic/m;)V

    iget v1, p0, Lcc/b0;->c:I

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_0

    iget v1, p0, Lcc/b0;->d:I

    invoke-virtual {p1, v2, v1}, LK6/q;->m(II)V

    :cond_0
    iget v1, p0, Lcc/b0;->c:I

    const/4 v2, 0x2

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_1

    iget v1, p0, Lcc/b0;->e:I

    invoke-virtual {p1, v2, v1}, LK6/q;->m(II)V

    :cond_1
    iget v1, p0, Lcc/b0;->c:I

    const/4 v2, 0x4

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_2

    const/4 v1, 0x3

    iget-object v3, p0, Lcc/b0;->f:Lcc/T;

    invoke-virtual {p1, v1, v3}, LK6/q;->o(ILic/b;)V

    :cond_2
    iget v1, p0, Lcc/b0;->c:I

    const/16 v3, 0x10

    and-int/2addr v1, v3

    if-ne v1, v3, :cond_3

    iget-object v1, p0, Lcc/b0;->h:Lcc/T;

    invoke-virtual {p1, v2, v1}, LK6/q;->o(ILic/b;)V

    :cond_3
    iget v1, p0, Lcc/b0;->c:I

    const/16 v2, 0x8

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_4

    const/4 v1, 0x5

    iget v2, p0, Lcc/b0;->g:I

    invoke-virtual {p1, v1, v2}, LK6/q;->m(II)V

    :cond_4
    iget v1, p0, Lcc/b0;->c:I

    const/16 v2, 0x20

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_5

    const/4 v1, 0x6

    iget v2, p0, Lcc/b0;->i:I

    invoke-virtual {p1, v1, v2}, LK6/q;->m(II)V

    :cond_5
    const/16 v1, 0xc8

    invoke-virtual {v0, v1, p1}, Lcom/samsung/android/motionphoto/utils/ex/e;->y(ILK6/q;)V

    iget-object p0, p0, Lcc/b0;->b:Lic/e;

    invoke-virtual {p1, p0}, LK6/q;->r(Lic/e;)V

    return-void
.end method

.method public final getDefaultInstanceForType()Lic/b;
    .locals 0

    sget-object p0, Lcc/b0;->l:Lcc/b0;

    return-object p0
.end method

.method public final isInitialized()Z
    .locals 5

    iget-byte v0, p0, Lcc/b0;->j:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v2, 0x0

    if-nez v0, :cond_1

    return v2

    :cond_1
    iget v0, p0, Lcc/b0;->c:I

    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_5

    const/4 v3, 0x4

    and-int/2addr v0, v3

    if-ne v0, v3, :cond_2

    iget-object v0, p0, Lcc/b0;->f:Lcc/T;

    invoke-virtual {v0}, Lcc/T;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_2

    iput-byte v2, p0, Lcc/b0;->j:B

    return v2

    :cond_2
    iget v0, p0, Lcc/b0;->c:I

    const/16 v3, 0x10

    and-int/2addr v0, v3

    if-ne v0, v3, :cond_3

    iget-object v0, p0, Lcc/b0;->h:Lcc/T;

    invoke-virtual {v0}, Lcc/T;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_3

    iput-byte v2, p0, Lcc/b0;->j:B

    return v2

    :cond_3
    invoke-virtual {p0}, Lic/m;->g()Z

    move-result v0

    if-nez v0, :cond_4

    iput-byte v2, p0, Lcc/b0;->j:B

    return v2

    :cond_4
    iput-byte v1, p0, Lcc/b0;->j:B

    return v1

    :cond_5
    iput-byte v2, p0, Lcc/b0;->j:B

    return v2
.end method
