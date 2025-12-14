.class public final Lcc/N;
.super Lic/p;
.source "SourceFile"


# static fields
.field public static final e:Lcc/N;

.field public static final f:Lcc/a;


# instance fields
.field public final a:Lic/e;

.field public b:Lic/v;

.field public c:B

.field public d:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcc/a;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Lcc/a;-><init>(I)V

    sput-object v0, Lcc/N;->f:Lcc/a;

    new-instance v0, Lcc/N;

    invoke-direct {v0}, Lcc/N;-><init>()V

    sput-object v0, Lcc/N;->e:Lcc/N;

    sget-object v1, Lic/u;->b:Lic/H;

    iput-object v1, v0, Lcc/N;->b:Lic/v;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lic/b;-><init>()V

    const/4 v0, -0x1

    iput-byte v0, p0, Lcc/N;->c:B

    iput v0, p0, Lcc/N;->d:I

    sget-object v0, Lic/e;->a:Lic/w;

    iput-object v0, p0, Lcc/N;->a:Lic/e;

    return-void
.end method

.method public constructor <init>(Lcc/o;)V
    .locals 1

    invoke-direct {p0}, Lic/b;-><init>()V

    const/4 v0, -0x1

    iput-byte v0, p0, Lcc/N;->c:B

    iput v0, p0, Lcc/N;->d:I

    iget-object p1, p1, Lic/k;->a:Lic/e;

    iput-object p1, p0, Lcc/N;->a:Lic/e;

    return-void
.end method

.method public constructor <init>(Lcom/google/crypto/tink/shaded/protobuf/i;)V
    .locals 7

    invoke-direct {p0}, Lic/b;-><init>()V

    const/4 v0, -0x1

    iput-byte v0, p0, Lcc/N;->c:B

    iput v0, p0, Lcc/N;->d:I

    sget-object v0, Lic/u;->b:Lic/H;

    iput-object v0, p0, Lcc/N;->b:Lic/v;

    new-instance v0, Lic/d;

    invoke-direct {v0}, Lic/d;-><init>()V

    const/4 v1, 0x1

    invoke-static {v0, v1}, LK6/q;->j(Ljava/io/OutputStream;I)LK6/q;

    move-result-object v2

    const/4 v3, 0x0

    move v4, v3

    :cond_0
    :goto_0
    if-nez v3, :cond_5

    :try_start_0
    invoke-virtual {p1}, Lcom/google/crypto/tink/shaded/protobuf/i;->s()I

    move-result v5

    if-eqz v5, :cond_1

    const/16 v6, 0xa

    if-eq v5, v6, :cond_2

    invoke-virtual {p1, v5, v2}, Lcom/google/crypto/tink/shaded/protobuf/i;->v(ILK6/q;)Z

    move-result v5

    if-nez v5, :cond_0

    :cond_1
    move v3, v1

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lcom/google/crypto/tink/shaded/protobuf/i;->j()Lic/w;

    move-result-object v5

    if-eq v4, v1, :cond_3

    new-instance v6, Lic/u;

    invoke-direct {v6}, Lic/u;-><init>()V

    iput-object v6, p0, Lcc/N;->b:Lic/v;

    move v4, v1

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_4

    :catch_0
    move-exception p1

    goto :goto_2

    :catch_1
    move-exception p1

    goto :goto_3

    :cond_3
    :goto_1
    iget-object v6, p0, Lcc/N;->b:Lic/v;

    invoke-interface {v6, v5}, Lic/v;->T(Lic/w;)V
    :try_end_0
    .catch Lic/t; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :goto_2
    :try_start_1
    new-instance v3, Lic/t;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v3, p1}, Lic/t;-><init>(Ljava/lang/String;)V

    iput-object p0, v3, Lic/t;->a:Lic/b;

    throw v3

    :goto_3
    iput-object p0, p1, Lic/t;->a:Lic/b;

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_4
    if-ne v4, v1, :cond_4

    iget-object v1, p0, Lcc/N;->b:Lic/v;

    invoke-interface {v1}, Lic/v;->c()Lic/H;

    move-result-object v1

    iput-object v1, p0, Lcc/N;->b:Lic/v;

    :cond_4
    :try_start_2
    invoke-virtual {v2}, LK6/q;->i()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catch_2
    invoke-virtual {v0}, Lic/d;->c()Lic/e;

    move-result-object v0

    iput-object v0, p0, Lcc/N;->a:Lic/e;

    goto :goto_5

    :catchall_1
    move-exception p1

    invoke-virtual {v0}, Lic/d;->c()Lic/e;

    move-result-object v0

    iput-object v0, p0, Lcc/N;->a:Lic/e;

    throw p1

    :goto_5
    throw p1

    :cond_5
    if-ne v4, v1, :cond_6

    iget-object p1, p0, Lcc/N;->b:Lic/v;

    invoke-interface {p1}, Lic/v;->c()Lic/H;

    move-result-object p1

    iput-object p1, p0, Lcc/N;->b:Lic/v;

    :cond_6
    :try_start_3
    invoke-virtual {v2}, LK6/q;->i()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :catch_3
    invoke-virtual {v0}, Lic/d;->c()Lic/e;

    move-result-object p1

    iput-object p1, p0, Lcc/N;->a:Lic/e;

    goto :goto_6

    :catchall_2
    move-exception p1

    invoke-virtual {v0}, Lic/d;->c()Lic/e;

    move-result-object v0

    iput-object v0, p0, Lcc/N;->a:Lic/e;

    throw p1

    :goto_6
    return-void
.end method


# virtual methods
.method public final a()I
    .locals 4

    iget v0, p0, Lcc/N;->d:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lcc/N;->b:Lic/v;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Lcc/N;->b:Lic/v;

    invoke-interface {v2, v0}, Lic/v;->J(I)Lic/e;

    move-result-object v2

    invoke-virtual {v2}, Lic/e;->size()I

    move-result v3

    invoke-static {v3}, LK6/q;->f(I)I

    move-result v3

    invoke-virtual {v2}, Lic/e;->size()I

    move-result v2

    add-int/2addr v2, v3

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcc/N;->b:Lic/v;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/2addr v0, v1

    iget-object v1, p0, Lcc/N;->a:Lic/e;

    invoke-virtual {v1}, Lic/e;->size()I

    move-result v1

    add-int/2addr v1, v0

    iput v1, p0, Lcc/N;->d:I

    return v1
.end method

.method public final b()Lic/k;
    .locals 1

    new-instance p0, Lcc/o;

    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcc/o;-><init>(I)V

    sget-object v0, Lic/u;->b:Lic/H;

    iput-object v0, p0, Lcc/o;->d:Ljava/util/List;

    return-object p0
.end method

.method public final c()Lic/k;
    .locals 2

    new-instance v0, Lcc/o;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lcc/o;-><init>(I)V

    sget-object v1, Lic/u;->b:Lic/H;

    iput-object v1, v0, Lcc/o;->d:Ljava/util/List;

    invoke-virtual {v0, p0}, Lcc/o;->j(Lcc/N;)V

    return-object v0
.end method

.method public final d(LK6/q;)V
    .locals 4

    invoke-virtual {p0}, Lcc/N;->a()I

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcc/N;->b:Lic/v;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcc/N;->b:Lic/v;

    invoke-interface {v1, v0}, Lic/v;->J(I)Lic/e;

    move-result-object v1

    const/4 v2, 0x2

    const/4 v3, 0x1

    invoke-virtual {p1, v3, v2}, LK6/q;->x(II)V

    invoke-virtual {v1}, Lic/e;->size()I

    move-result v2

    invoke-virtual {p1, v2}, LK6/q;->v(I)V

    invoke-virtual {p1, v1}, LK6/q;->r(Lic/e;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcc/N;->a:Lic/e;

    invoke-virtual {p1, p0}, LK6/q;->r(Lic/e;)V

    return-void
.end method

.method public final isInitialized()Z
    .locals 2

    iget-byte v0, p0, Lcc/N;->c:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    if-nez v0, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    iput-byte v1, p0, Lcc/N;->c:B

    return v1
.end method
