.class public final Lcc/Q;
.super Lic/p;
.source "SourceFile"


# static fields
.field public static final h:Lcc/Q;

.field public static final i:Lcc/a;


# instance fields
.field public final a:Lic/e;

.field public b:I

.field public c:Lcc/P;

.field public d:Lcc/T;

.field public e:I

.field public f:B

.field public g:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcc/a;

    const/16 v1, 0x12

    invoke-direct {v0, v1}, Lcc/a;-><init>(I)V

    sput-object v0, Lcc/Q;->i:Lcc/a;

    new-instance v0, Lcc/Q;

    invoke-direct {v0}, Lcc/Q;-><init>()V

    sput-object v0, Lcc/Q;->h:Lcc/Q;

    sget-object v1, Lcc/P;->INV:Lcc/P;

    iput-object v1, v0, Lcc/Q;->c:Lcc/P;

    sget-object v1, Lcc/T;->t:Lcc/T;

    iput-object v1, v0, Lcc/Q;->d:Lcc/T;

    const/4 v1, 0x0

    iput v1, v0, Lcc/Q;->e:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lic/b;-><init>()V

    const/4 v0, -0x1

    iput-byte v0, p0, Lcc/Q;->f:B

    iput v0, p0, Lcc/Q;->g:I

    sget-object v0, Lic/e;->a:Lic/w;

    iput-object v0, p0, Lcc/Q;->a:Lic/e;

    return-void
.end method

.method public constructor <init>(Lcc/O;)V
    .locals 1

    invoke-direct {p0}, Lic/b;-><init>()V

    const/4 v0, -0x1

    iput-byte v0, p0, Lcc/Q;->f:B

    iput v0, p0, Lcc/Q;->g:I

    iget-object p1, p1, Lic/k;->a:Lic/e;

    iput-object p1, p0, Lcc/Q;->a:Lic/e;

    return-void
.end method

.method public constructor <init>(Lcom/google/crypto/tink/shaded/protobuf/i;Lic/g;)V
    .locals 8

    invoke-direct {p0}, Lic/b;-><init>()V

    const/4 v0, -0x1

    iput-byte v0, p0, Lcc/Q;->f:B

    iput v0, p0, Lcc/Q;->g:I

    sget-object v0, Lcc/P;->INV:Lcc/P;

    iput-object v0, p0, Lcc/Q;->c:Lcc/P;

    sget-object v0, Lcc/T;->t:Lcc/T;

    iput-object v0, p0, Lcc/Q;->d:Lcc/T;

    const/4 v0, 0x0

    iput v0, p0, Lcc/Q;->e:I

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

    const/4 v6, 0x0

    const/4 v7, 0x2

    if-eq v4, v5, :cond_6

    const/16 v5, 0x12

    if-eq v4, v5, :cond_3

    const/16 v5, 0x18

    if-eq v4, v5, :cond_2

    invoke-virtual {p1, v4, v3}, Lcom/google/crypto/tink/shaded/protobuf/i;->v(ILK6/q;)Z

    move-result v4

    if-nez v4, :cond_0

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    iget v4, p0, Lcc/Q;->b:I

    or-int/lit8 v4, v4, 0x4

    iput v4, p0, Lcc/Q;->b:I

    invoke-virtual {p1}, Lcom/google/crypto/tink/shaded/protobuf/i;->p()I

    move-result v4

    iput v4, p0, Lcc/Q;->e:I

    goto :goto_0

    :catchall_0
    move-exception p1

    goto/16 :goto_4

    :catch_0
    move-exception p1

    goto :goto_2

    :catch_1
    move-exception p1

    goto :goto_3

    :cond_3
    iget v4, p0, Lcc/Q;->b:I

    and-int/2addr v4, v7

    if-ne v4, v7, :cond_4

    iget-object v4, p0, Lcc/Q;->d:Lcc/T;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v4}, Lcc/T;->p(Lcc/T;)Lcc/S;

    move-result-object v6

    :cond_4
    sget-object v4, Lcc/T;->u:Lcc/a;

    invoke-virtual {p1, v4, p2}, Lcom/google/crypto/tink/shaded/protobuf/i;->l(Lic/y;Lic/g;)Lic/b;

    move-result-object v4

    check-cast v4, Lcc/T;

    iput-object v4, p0, Lcc/Q;->d:Lcc/T;

    if-eqz v6, :cond_5

    invoke-virtual {v6, v4}, Lcc/S;->g(Lcc/T;)Lcc/S;

    invoke-virtual {v6}, Lcc/S;->e()Lcc/T;

    move-result-object v4

    iput-object v4, p0, Lcc/Q;->d:Lcc/T;

    :cond_5
    iget v4, p0, Lcc/Q;->b:I

    or-int/2addr v4, v7

    iput v4, p0, Lcc/Q;->b:I

    goto :goto_0

    :cond_6
    invoke-virtual {p1}, Lcom/google/crypto/tink/shaded/protobuf/i;->p()I

    move-result v5

    if-eqz v5, :cond_a

    if-eq v5, v2, :cond_9

    if-eq v5, v7, :cond_8

    const/4 v7, 0x3

    if-eq v5, v7, :cond_7

    goto :goto_1

    :cond_7
    sget-object v6, Lcc/P;->STAR:Lcc/P;

    goto :goto_1

    :cond_8
    sget-object v6, Lcc/P;->INV:Lcc/P;

    goto :goto_1

    :cond_9
    sget-object v6, Lcc/P;->OUT:Lcc/P;

    goto :goto_1

    :cond_a
    sget-object v6, Lcc/P;->IN:Lcc/P;

    :goto_1
    if-nez v6, :cond_b

    invoke-virtual {v3, v4}, LK6/q;->v(I)V

    invoke-virtual {v3, v5}, LK6/q;->v(I)V

    goto :goto_0

    :cond_b
    iget v4, p0, Lcc/Q;->b:I

    or-int/2addr v4, v2

    iput v4, p0, Lcc/Q;->b:I

    iput-object v6, p0, Lcc/Q;->c:Lcc/P;
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
    invoke-virtual {v3}, LK6/q;->i()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catch_2
    invoke-virtual {v1}, Lic/d;->c()Lic/e;

    move-result-object p2

    iput-object p2, p0, Lcc/Q;->a:Lic/e;

    goto :goto_5

    :catchall_1
    move-exception p1

    invoke-virtual {v1}, Lic/d;->c()Lic/e;

    move-result-object p2

    iput-object p2, p0, Lcc/Q;->a:Lic/e;

    throw p1

    :goto_5
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

    iput-object p1, p0, Lcc/Q;->a:Lic/e;

    goto :goto_6

    :catchall_2
    move-exception p1

    invoke-virtual {v1}, Lic/d;->c()Lic/e;

    move-result-object p2

    iput-object p2, p0, Lcc/Q;->a:Lic/e;

    throw p1

    :goto_6
    return-void
.end method


# virtual methods
.method public final a()I
    .locals 3

    iget v0, p0, Lcc/Q;->g:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    iget v0, p0, Lcc/Q;->b:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcc/Q;->c:Lcc/P;

    invoke-virtual {v0}, Lcc/P;->getNumber()I

    move-result v0

    invoke-static {v1, v0}, LK6/q;->a(II)I

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcc/Q;->b:I

    const/4 v2, 0x2

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Lcc/Q;->d:Lcc/T;

    invoke-static {v2, v1}, LK6/q;->d(ILic/b;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_2
    iget v1, p0, Lcc/Q;->b:I

    const/4 v2, 0x4

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_3

    const/4 v1, 0x3

    iget v2, p0, Lcc/Q;->e:I

    invoke-static {v1, v2}, LK6/q;->b(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_3
    iget-object v1, p0, Lcc/Q;->a:Lic/e;

    invoke-virtual {v1}, Lic/e;->size()I

    move-result v1

    add-int/2addr v1, v0

    iput v1, p0, Lcc/Q;->g:I

    return v1
.end method

.method public final b()Lic/k;
    .locals 0

    invoke-static {}, Lcc/O;->e()Lcc/O;

    move-result-object p0

    return-object p0
.end method

.method public final c()Lic/k;
    .locals 1

    invoke-static {}, Lcc/O;->e()Lcc/O;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcc/O;->f(Lcc/Q;)V

    return-object v0
.end method

.method public final d(LK6/q;)V
    .locals 2

    invoke-virtual {p0}, Lcc/Q;->a()I

    iget v0, p0, Lcc/Q;->b:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcc/Q;->c:Lcc/P;

    invoke-virtual {v0}, Lcc/P;->getNumber()I

    move-result v0

    invoke-virtual {p1, v1, v0}, LK6/q;->l(II)V

    :cond_0
    iget v0, p0, Lcc/Q;->b:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcc/Q;->d:Lcc/T;

    invoke-virtual {p1, v1, v0}, LK6/q;->o(ILic/b;)V

    :cond_1
    iget v0, p0, Lcc/Q;->b:I

    const/4 v1, 0x4

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_2

    const/4 v0, 0x3

    iget v1, p0, Lcc/Q;->e:I

    invoke-virtual {p1, v0, v1}, LK6/q;->m(II)V

    :cond_2
    iget-object p0, p0, Lcc/Q;->a:Lic/e;

    invoke-virtual {p1, p0}, LK6/q;->r(Lic/e;)V

    return-void
.end method

.method public final isInitialized()Z
    .locals 4

    iget-byte v0, p0, Lcc/Q;->f:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v2, 0x0

    if-nez v0, :cond_1

    return v2

    :cond_1
    iget v0, p0, Lcc/Q;->b:I

    const/4 v3, 0x2

    and-int/2addr v0, v3

    if-ne v0, v3, :cond_2

    iget-object v0, p0, Lcc/Q;->d:Lcc/T;

    invoke-virtual {v0}, Lcc/T;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_2

    iput-byte v2, p0, Lcc/Q;->f:B

    return v2

    :cond_2
    iput-byte v1, p0, Lcc/Q;->f:B

    return v1
.end method
