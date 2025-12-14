.class public final Lcc/l;
.super Lic/p;
.source "SourceFile"


# static fields
.field public static final g:Lcc/l;

.field public static final h:Lcc/a;


# instance fields
.field public final a:Lic/e;

.field public b:I

.field public c:I

.field public d:Lic/w;

.field public e:B

.field public f:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcc/a;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lcc/a;-><init>(I)V

    sput-object v0, Lcc/l;->h:Lcc/a;

    new-instance v0, Lcc/l;

    invoke-direct {v0}, Lcc/l;-><init>()V

    sput-object v0, Lcc/l;->g:Lcc/l;

    const/4 v1, 0x0

    iput v1, v0, Lcc/l;->c:I

    sget-object v1, Lic/e;->a:Lic/w;

    iput-object v1, v0, Lcc/l;->d:Lic/w;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lic/b;-><init>()V

    const/4 v0, -0x1

    iput-byte v0, p0, Lcc/l;->e:B

    iput v0, p0, Lcc/l;->f:I

    sget-object v0, Lic/e;->a:Lic/w;

    iput-object v0, p0, Lcc/l;->a:Lic/e;

    return-void
.end method

.method public constructor <init>(Lcc/b;)V
    .locals 1

    invoke-direct {p0}, Lic/b;-><init>()V

    const/4 v0, -0x1

    iput-byte v0, p0, Lcc/l;->e:B

    iput v0, p0, Lcc/l;->f:I

    iget-object p1, p1, Lic/k;->a:Lic/e;

    iput-object p1, p0, Lcc/l;->a:Lic/e;

    return-void
.end method

.method public constructor <init>(Lcom/google/crypto/tink/shaded/protobuf/i;)V
    .locals 6

    invoke-direct {p0}, Lic/b;-><init>()V

    const/4 v0, -0x1

    iput-byte v0, p0, Lcc/l;->e:B

    iput v0, p0, Lcc/l;->f:I

    const/4 v0, 0x0

    iput v0, p0, Lcc/l;->c:I

    sget-object v1, Lic/e;->a:Lic/w;

    iput-object v1, p0, Lcc/l;->d:Lic/w;

    new-instance v1, Lic/d;

    invoke-direct {v1}, Lic/d;-><init>()V

    const/4 v2, 0x1

    invoke-static {v1, v2}, LK6/q;->j(Ljava/io/OutputStream;I)LK6/q;

    move-result-object v3

    :cond_0
    :goto_0
    if-nez v0, :cond_4

    :try_start_0
    invoke-virtual {p1}, Lcom/google/crypto/tink/shaded/protobuf/i;->s()I

    move-result v4

    if-eqz v4, :cond_1

    const/16 v5, 0x8

    if-eq v4, v5, :cond_3

    const/16 v5, 0x12

    if-eq v4, v5, :cond_2

    invoke-virtual {p1, v4, v3}, Lcom/google/crypto/tink/shaded/protobuf/i;->v(ILK6/q;)Z

    move-result v4

    if-nez v4, :cond_0

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    iget v4, p0, Lcc/l;->b:I

    or-int/lit8 v4, v4, 0x2

    iput v4, p0, Lcc/l;->b:I

    invoke-virtual {p1}, Lcom/google/crypto/tink/shaded/protobuf/i;->j()Lic/w;

    move-result-object v4

    iput-object v4, p0, Lcc/l;->d:Lic/w;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_3

    :catch_0
    move-exception p1

    goto :goto_1

    :catch_1
    move-exception p1

    goto :goto_2

    :cond_3
    iget v4, p0, Lcc/l;->b:I

    or-int/2addr v4, v2

    iput v4, p0, Lcc/l;->b:I

    invoke-virtual {p1}, Lcom/google/crypto/tink/shaded/protobuf/i;->p()I

    move-result v4

    iput v4, p0, Lcc/l;->c:I
    :try_end_0
    .catch Lic/t; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :goto_1
    :try_start_1
    new-instance v0, Lic/t;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lic/t;-><init>(Ljava/lang/String;)V

    iput-object p0, v0, Lic/t;->a:Lic/b;

    throw v0

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

    move-result-object v0

    iput-object v0, p0, Lcc/l;->a:Lic/e;

    goto :goto_4

    :catchall_1
    move-exception p1

    invoke-virtual {v1}, Lic/d;->c()Lic/e;

    move-result-object v0

    iput-object v0, p0, Lcc/l;->a:Lic/e;

    throw p1

    :goto_4
    throw p1

    :cond_4
    :try_start_3
    invoke-virtual {v3}, LK6/q;->i()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :catch_3
    invoke-virtual {v1}, Lic/d;->c()Lic/e;

    move-result-object p1

    iput-object p1, p0, Lcc/l;->a:Lic/e;

    goto :goto_5

    :catchall_2
    move-exception p1

    invoke-virtual {v1}, Lic/d;->c()Lic/e;

    move-result-object v0

    iput-object v0, p0, Lcc/l;->a:Lic/e;

    throw p1

    :goto_5
    return-void
.end method


# virtual methods
.method public final a()I
    .locals 4

    iget v0, p0, Lcc/l;->f:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    iget v0, p0, Lcc/l;->b:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_1

    iget v0, p0, Lcc/l;->c:I

    invoke-static {v1, v0}, LK6/q;->b(II)I

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcc/l;->b:I

    const/4 v2, 0x2

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Lcc/l;->d:Lic/w;

    invoke-static {v2}, LK6/q;->h(I)I

    move-result v2

    invoke-virtual {v1}, Lic/w;->size()I

    move-result v3

    invoke-static {v3}, LK6/q;->f(I)I

    move-result v3

    invoke-virtual {v1}, Lic/w;->size()I

    move-result v1

    add-int/2addr v1, v3

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    :cond_2
    iget-object v1, p0, Lcc/l;->a:Lic/e;

    invoke-virtual {v1}, Lic/e;->size()I

    move-result v1

    add-int/2addr v1, v0

    iput v1, p0, Lcc/l;->f:I

    return v1
.end method

.method public final b()Lic/k;
    .locals 1

    new-instance p0, Lcc/b;

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcc/b;-><init>(I)V

    sget-object v0, Lic/e;->a:Lic/w;

    iput-object v0, p0, Lcc/b;->e:Ljava/lang/Object;

    return-object p0
.end method

.method public final c()Lic/k;
    .locals 2

    new-instance v0, Lcc/b;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcc/b;-><init>(I)V

    sget-object v1, Lic/e;->a:Lic/w;

    iput-object v1, v0, Lcc/b;->e:Ljava/lang/Object;

    invoke-virtual {v0, p0}, Lcc/b;->g(Lcc/l;)V

    return-object v0
.end method

.method public final d(LK6/q;)V
    .locals 2

    invoke-virtual {p0}, Lcc/l;->a()I

    iget v0, p0, Lcc/l;->b:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcc/l;->c:I

    invoke-virtual {p1, v1, v0}, LK6/q;->m(II)V

    :cond_0
    iget v0, p0, Lcc/l;->b:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcc/l;->d:Lic/w;

    invoke-virtual {p1, v1, v1}, LK6/q;->x(II)V

    invoke-virtual {v0}, Lic/w;->size()I

    move-result v1

    invoke-virtual {p1, v1}, LK6/q;->v(I)V

    invoke-virtual {p1, v0}, LK6/q;->r(Lic/e;)V

    :cond_1
    iget-object p0, p0, Lcc/l;->a:Lic/e;

    invoke-virtual {p1, p0}, LK6/q;->r(Lic/e;)V

    return-void
.end method

.method public final isInitialized()Z
    .locals 4

    iget-byte v0, p0, Lcc/l;->e:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v2, 0x0

    if-nez v0, :cond_1

    return v2

    :cond_1
    iget v0, p0, Lcc/l;->b:I

    and-int/lit8 v3, v0, 0x1

    if-ne v3, v1, :cond_3

    const/4 v3, 0x2

    and-int/2addr v0, v3

    if-ne v0, v3, :cond_2

    iput-byte v1, p0, Lcc/l;->e:B

    return v1

    :cond_2
    iput-byte v2, p0, Lcc/l;->e:B

    return v2

    :cond_3
    iput-byte v2, p0, Lcc/l;->e:B

    return v2
.end method
