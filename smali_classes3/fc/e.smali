.class public final Lfc/e;
.super Lic/p;
.source "SourceFile"


# static fields
.field public static final j:Lfc/e;

.field public static final k:Lcc/a;


# instance fields
.field public final a:Lic/e;

.field public b:I

.field public c:Lfc/b;

.field public d:Lfc/c;

.field public e:Lfc/c;

.field public f:Lfc/c;

.field public g:Lfc/c;

.field public h:B

.field public i:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcc/a;

    const/16 v1, 0x1b

    invoke-direct {v0, v1}, Lcc/a;-><init>(I)V

    sput-object v0, Lfc/e;->k:Lcc/a;

    new-instance v0, Lfc/e;

    invoke-direct {v0}, Lfc/e;-><init>()V

    sput-object v0, Lfc/e;->j:Lfc/e;

    sget-object v1, Lfc/b;->g:Lfc/b;

    iput-object v1, v0, Lfc/e;->c:Lfc/b;

    sget-object v1, Lfc/c;->g:Lfc/c;

    iput-object v1, v0, Lfc/e;->d:Lfc/c;

    iput-object v1, v0, Lfc/e;->e:Lfc/c;

    iput-object v1, v0, Lfc/e;->f:Lfc/c;

    iput-object v1, v0, Lfc/e;->g:Lfc/c;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lic/b;-><init>()V

    const/4 v0, -0x1

    iput-byte v0, p0, Lfc/e;->h:B

    iput v0, p0, Lfc/e;->i:I

    sget-object v0, Lic/e;->a:Lic/w;

    iput-object v0, p0, Lfc/e;->a:Lic/e;

    return-void
.end method

.method public constructor <init>(Lcom/google/crypto/tink/shaded/protobuf/i;Lic/g;)V
    .locals 7

    invoke-direct {p0}, Lic/b;-><init>()V

    const/4 v0, -0x1

    iput-byte v0, p0, Lfc/e;->h:B

    iput v0, p0, Lfc/e;->i:I

    sget-object v0, Lfc/b;->g:Lfc/b;

    iput-object v0, p0, Lfc/e;->c:Lfc/b;

    sget-object v0, Lfc/c;->g:Lfc/c;

    iput-object v0, p0, Lfc/e;->d:Lfc/c;

    iput-object v0, p0, Lfc/e;->e:Lfc/c;

    iput-object v0, p0, Lfc/e;->f:Lfc/c;

    iput-object v0, p0, Lfc/e;->g:Lfc/c;

    new-instance v0, Lic/d;

    invoke-direct {v0}, Lic/d;-><init>()V

    const/4 v1, 0x1

    invoke-static {v0, v1}, LK6/q;->j(Ljava/io/OutputStream;I)LK6/q;

    move-result-object v2

    const/4 v3, 0x0

    :cond_0
    :goto_0
    if-nez v3, :cond_11

    :try_start_0
    invoke-virtual {p1}, Lcom/google/crypto/tink/shaded/protobuf/i;->s()I

    move-result v4

    if-eqz v4, :cond_1

    const/16 v5, 0xa

    const/4 v6, 0x0

    if-eq v4, v5, :cond_e

    const/16 v5, 0x12

    if-eq v4, v5, :cond_b

    const/16 v5, 0x1a

    if-eq v4, v5, :cond_8

    const/16 v5, 0x22

    if-eq v4, v5, :cond_5

    const/16 v5, 0x2a

    if-eq v4, v5, :cond_2

    invoke-virtual {p1, v4, v2}, Lcom/google/crypto/tink/shaded/protobuf/i;->v(ILK6/q;)Z

    move-result v4

    if-nez v4, :cond_0

    :cond_1
    move v3, v1

    goto :goto_0

    :cond_2
    iget v4, p0, Lfc/e;->b:I

    const/16 v5, 0x10

    and-int/2addr v4, v5

    if-ne v4, v5, :cond_3

    iget-object v4, p0, Lfc/e;->g:Lfc/c;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v4}, Lfc/c;->g(Lfc/c;)Lfc/a;

    move-result-object v6

    goto :goto_1

    :catchall_0
    move-exception p1

    goto/16 :goto_4

    :catch_0
    move-exception p1

    goto/16 :goto_2

    :catch_1
    move-exception p1

    goto/16 :goto_3

    :cond_3
    :goto_1
    sget-object v4, Lfc/c;->h:Lcc/a;

    invoke-virtual {p1, v4, p2}, Lcom/google/crypto/tink/shaded/protobuf/i;->l(Lic/y;Lic/g;)Lic/b;

    move-result-object v4

    check-cast v4, Lfc/c;

    iput-object v4, p0, Lfc/e;->g:Lfc/c;

    if-eqz v6, :cond_4

    invoke-virtual {v6, v4}, Lfc/a;->g(Lfc/c;)V

    invoke-virtual {v6}, Lfc/a;->e()Lfc/c;

    move-result-object v4

    iput-object v4, p0, Lfc/e;->g:Lfc/c;

    :cond_4
    iget v4, p0, Lfc/e;->b:I

    or-int/2addr v4, v5

    iput v4, p0, Lfc/e;->b:I

    goto :goto_0

    :cond_5
    iget v4, p0, Lfc/e;->b:I

    const/16 v5, 0x8

    and-int/2addr v4, v5

    if-ne v4, v5, :cond_6

    iget-object v4, p0, Lfc/e;->f:Lfc/c;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v4}, Lfc/c;->g(Lfc/c;)Lfc/a;

    move-result-object v6

    :cond_6
    sget-object v4, Lfc/c;->h:Lcc/a;

    invoke-virtual {p1, v4, p2}, Lcom/google/crypto/tink/shaded/protobuf/i;->l(Lic/y;Lic/g;)Lic/b;

    move-result-object v4

    check-cast v4, Lfc/c;

    iput-object v4, p0, Lfc/e;->f:Lfc/c;

    if-eqz v6, :cond_7

    invoke-virtual {v6, v4}, Lfc/a;->g(Lfc/c;)V

    invoke-virtual {v6}, Lfc/a;->e()Lfc/c;

    move-result-object v4

    iput-object v4, p0, Lfc/e;->f:Lfc/c;

    :cond_7
    iget v4, p0, Lfc/e;->b:I

    or-int/2addr v4, v5

    iput v4, p0, Lfc/e;->b:I

    goto/16 :goto_0

    :cond_8
    iget v4, p0, Lfc/e;->b:I

    const/4 v5, 0x4

    and-int/2addr v4, v5

    if-ne v4, v5, :cond_9

    iget-object v4, p0, Lfc/e;->e:Lfc/c;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v4}, Lfc/c;->g(Lfc/c;)Lfc/a;

    move-result-object v6

    :cond_9
    sget-object v4, Lfc/c;->h:Lcc/a;

    invoke-virtual {p1, v4, p2}, Lcom/google/crypto/tink/shaded/protobuf/i;->l(Lic/y;Lic/g;)Lic/b;

    move-result-object v4

    check-cast v4, Lfc/c;

    iput-object v4, p0, Lfc/e;->e:Lfc/c;

    if-eqz v6, :cond_a

    invoke-virtual {v6, v4}, Lfc/a;->g(Lfc/c;)V

    invoke-virtual {v6}, Lfc/a;->e()Lfc/c;

    move-result-object v4

    iput-object v4, p0, Lfc/e;->e:Lfc/c;

    :cond_a
    iget v4, p0, Lfc/e;->b:I

    or-int/2addr v4, v5

    iput v4, p0, Lfc/e;->b:I

    goto/16 :goto_0

    :cond_b
    iget v4, p0, Lfc/e;->b:I

    const/4 v5, 0x2

    and-int/2addr v4, v5

    if-ne v4, v5, :cond_c

    iget-object v4, p0, Lfc/e;->d:Lfc/c;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v4}, Lfc/c;->g(Lfc/c;)Lfc/a;

    move-result-object v6

    :cond_c
    sget-object v4, Lfc/c;->h:Lcc/a;

    invoke-virtual {p1, v4, p2}, Lcom/google/crypto/tink/shaded/protobuf/i;->l(Lic/y;Lic/g;)Lic/b;

    move-result-object v4

    check-cast v4, Lfc/c;

    iput-object v4, p0, Lfc/e;->d:Lfc/c;

    if-eqz v6, :cond_d

    invoke-virtual {v6, v4}, Lfc/a;->g(Lfc/c;)V

    invoke-virtual {v6}, Lfc/a;->e()Lfc/c;

    move-result-object v4

    iput-object v4, p0, Lfc/e;->d:Lfc/c;

    :cond_d
    iget v4, p0, Lfc/e;->b:I

    or-int/2addr v4, v5

    iput v4, p0, Lfc/e;->b:I

    goto/16 :goto_0

    :cond_e
    iget v4, p0, Lfc/e;->b:I

    and-int/2addr v4, v1

    if-ne v4, v1, :cond_f

    iget-object v4, p0, Lfc/e;->c:Lfc/b;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v6, Lfc/a;

    const/4 v5, 0x0

    invoke-direct {v6, v5}, Lfc/a;-><init>(I)V

    invoke-virtual {v6, v4}, Lfc/a;->f(Lfc/b;)V

    :cond_f
    sget-object v4, Lfc/b;->h:Lcc/a;

    invoke-virtual {p1, v4, p2}, Lcom/google/crypto/tink/shaded/protobuf/i;->l(Lic/y;Lic/g;)Lic/b;

    move-result-object v4

    check-cast v4, Lfc/b;

    iput-object v4, p0, Lfc/e;->c:Lfc/b;

    if-eqz v6, :cond_10

    invoke-virtual {v6, v4}, Lfc/a;->f(Lfc/b;)V

    invoke-virtual {v6}, Lfc/a;->d()Lfc/b;

    move-result-object v4

    iput-object v4, p0, Lfc/e;->c:Lfc/b;

    :cond_10
    iget v4, p0, Lfc/e;->b:I

    or-int/2addr v4, v1

    iput v4, p0, Lfc/e;->b:I
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
    :try_start_2
    invoke-virtual {v2}, LK6/q;->i()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catch_2
    invoke-virtual {v0}, Lic/d;->c()Lic/e;

    move-result-object p2

    iput-object p2, p0, Lfc/e;->a:Lic/e;

    goto :goto_5

    :catchall_1
    move-exception p1

    invoke-virtual {v0}, Lic/d;->c()Lic/e;

    move-result-object p2

    iput-object p2, p0, Lfc/e;->a:Lic/e;

    throw p1

    :goto_5
    throw p1

    :cond_11
    :try_start_3
    invoke-virtual {v2}, LK6/q;->i()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :catch_3
    invoke-virtual {v0}, Lic/d;->c()Lic/e;

    move-result-object p1

    iput-object p1, p0, Lfc/e;->a:Lic/e;

    goto :goto_6

    :catchall_2
    move-exception p1

    invoke-virtual {v0}, Lic/d;->c()Lic/e;

    move-result-object p2

    iput-object p2, p0, Lfc/e;->a:Lic/e;

    throw p1

    :goto_6
    return-void
.end method

.method public constructor <init>(Lfc/d;)V
    .locals 1

    invoke-direct {p0}, Lic/b;-><init>()V

    const/4 v0, -0x1

    iput-byte v0, p0, Lfc/e;->h:B

    iput v0, p0, Lfc/e;->i:I

    iget-object p1, p1, Lic/k;->a:Lic/e;

    iput-object p1, p0, Lfc/e;->a:Lic/e;

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 4

    iget v0, p0, Lfc/e;->i:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    iget v0, p0, Lfc/e;->b:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lfc/e;->c:Lfc/b;

    invoke-static {v1, v0}, LK6/q;->d(ILic/b;)I

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lfc/e;->b:I

    const/4 v2, 0x2

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Lfc/e;->d:Lfc/c;

    invoke-static {v2, v1}, LK6/q;->d(ILic/b;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_2
    iget v1, p0, Lfc/e;->b:I

    const/4 v2, 0x4

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_3

    const/4 v1, 0x3

    iget-object v3, p0, Lfc/e;->e:Lfc/c;

    invoke-static {v1, v3}, LK6/q;->d(ILic/b;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_3
    iget v1, p0, Lfc/e;->b:I

    const/16 v3, 0x8

    and-int/2addr v1, v3

    if-ne v1, v3, :cond_4

    iget-object v1, p0, Lfc/e;->f:Lfc/c;

    invoke-static {v2, v1}, LK6/q;->d(ILic/b;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_4
    iget v1, p0, Lfc/e;->b:I

    const/16 v2, 0x10

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_5

    const/4 v1, 0x5

    iget-object v2, p0, Lfc/e;->g:Lfc/c;

    invoke-static {v1, v2}, LK6/q;->d(ILic/b;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_5
    iget-object v1, p0, Lfc/e;->a:Lic/e;

    invoke-virtual {v1}, Lic/e;->size()I

    move-result v1

    add-int/2addr v1, v0

    iput v1, p0, Lfc/e;->i:I

    return v1
.end method

.method public final b()Lic/k;
    .locals 0

    invoke-static {}, Lfc/d;->e()Lfc/d;

    move-result-object p0

    return-object p0
.end method

.method public final c()Lic/k;
    .locals 1

    invoke-static {}, Lfc/d;->e()Lfc/d;

    move-result-object v0

    invoke-virtual {v0, p0}, Lfc/d;->f(Lfc/e;)V

    return-object v0
.end method

.method public final d(LK6/q;)V
    .locals 3

    invoke-virtual {p0}, Lfc/e;->a()I

    iget v0, p0, Lfc/e;->b:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lfc/e;->c:Lfc/b;

    invoke-virtual {p1, v1, v0}, LK6/q;->o(ILic/b;)V

    :cond_0
    iget v0, p0, Lfc/e;->b:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lfc/e;->d:Lfc/c;

    invoke-virtual {p1, v1, v0}, LK6/q;->o(ILic/b;)V

    :cond_1
    iget v0, p0, Lfc/e;->b:I

    const/4 v1, 0x4

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_2

    const/4 v0, 0x3

    iget-object v2, p0, Lfc/e;->e:Lfc/c;

    invoke-virtual {p1, v0, v2}, LK6/q;->o(ILic/b;)V

    :cond_2
    iget v0, p0, Lfc/e;->b:I

    const/16 v2, 0x8

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_3

    iget-object v0, p0, Lfc/e;->f:Lfc/c;

    invoke-virtual {p1, v1, v0}, LK6/q;->o(ILic/b;)V

    :cond_3
    iget v0, p0, Lfc/e;->b:I

    const/16 v1, 0x10

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_4

    const/4 v0, 0x5

    iget-object v1, p0, Lfc/e;->g:Lfc/c;

    invoke-virtual {p1, v0, v1}, LK6/q;->o(ILic/b;)V

    :cond_4
    iget-object p0, p0, Lfc/e;->a:Lic/e;

    invoke-virtual {p1, p0}, LK6/q;->r(Lic/e;)V

    return-void
.end method

.method public final isInitialized()Z
    .locals 2

    iget-byte v0, p0, Lfc/e;->h:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    if-nez v0, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    iput-byte v1, p0, Lfc/e;->h:B

    return v1
.end method
