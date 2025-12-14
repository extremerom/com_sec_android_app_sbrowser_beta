.class public final Lcc/Z;
.super Lic/p;
.source "SourceFile"


# static fields
.field public static final g:Lcc/Z;

.field public static final h:Lcc/a;


# instance fields
.field public final a:Lic/e;

.field public b:I

.field public c:Ljava/util/List;

.field public d:I

.field public e:B

.field public f:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcc/a;

    const/16 v1, 0x15

    invoke-direct {v0, v1}, Lcc/a;-><init>(I)V

    sput-object v0, Lcc/Z;->h:Lcc/a;

    new-instance v0, Lcc/Z;

    invoke-direct {v0}, Lcc/Z;-><init>()V

    sput-object v0, Lcc/Z;->g:Lcc/Z;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcc/Z;->c:Ljava/util/List;

    const/4 v1, -0x1

    iput v1, v0, Lcc/Z;->d:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lic/b;-><init>()V

    const/4 v0, -0x1

    iput-byte v0, p0, Lcc/Z;->e:B

    iput v0, p0, Lcc/Z;->f:I

    sget-object v0, Lic/e;->a:Lic/w;

    iput-object v0, p0, Lcc/Z;->a:Lic/e;

    return-void
.end method

.method public constructor <init>(Lcc/g;)V
    .locals 1

    invoke-direct {p0}, Lic/b;-><init>()V

    const/4 v0, -0x1

    iput-byte v0, p0, Lcc/Z;->e:B

    iput v0, p0, Lcc/Z;->f:I

    iget-object p1, p1, Lic/k;->a:Lic/e;

    iput-object p1, p0, Lcc/Z;->a:Lic/e;

    return-void
.end method

.method public constructor <init>(Lcom/google/crypto/tink/shaded/protobuf/i;Lic/g;)V
    .locals 7

    invoke-direct {p0}, Lic/b;-><init>()V

    const/4 v0, -0x1

    iput-byte v0, p0, Lcc/Z;->e:B

    iput v0, p0, Lcc/Z;->f:I

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcc/Z;->c:Ljava/util/List;

    iput v0, p0, Lcc/Z;->d:I

    new-instance v0, Lic/d;

    invoke-direct {v0}, Lic/d;-><init>()V

    const/4 v1, 0x1

    invoke-static {v0, v1}, LK6/q;->j(Ljava/io/OutputStream;I)LK6/q;

    move-result-object v2

    const/4 v3, 0x0

    move v4, v3

    :cond_0
    :goto_0
    if-nez v3, :cond_6

    :try_start_0
    invoke-virtual {p1}, Lcom/google/crypto/tink/shaded/protobuf/i;->s()I

    move-result v5

    if-eqz v5, :cond_1

    const/16 v6, 0xa

    if-eq v5, v6, :cond_3

    const/16 v6, 0x10

    if-eq v5, v6, :cond_2

    invoke-virtual {p1, v5, v2}, Lcom/google/crypto/tink/shaded/protobuf/i;->v(ILK6/q;)Z

    move-result v5

    if-nez v5, :cond_0

    :cond_1
    move v3, v1

    goto :goto_0

    :cond_2
    iget v5, p0, Lcc/Z;->b:I

    or-int/2addr v5, v1

    iput v5, p0, Lcc/Z;->b:I

    invoke-virtual {p1}, Lcom/google/crypto/tink/shaded/protobuf/i;->p()I

    move-result v5

    iput v5, p0, Lcc/Z;->d:I

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
    if-eq v4, v1, :cond_4

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcc/Z;->c:Ljava/util/List;

    move v4, v1

    :cond_4
    iget-object v5, p0, Lcc/Z;->c:Ljava/util/List;

    sget-object v6, Lcc/T;->u:Lcc/a;

    invoke-virtual {p1, v6, p2}, Lcom/google/crypto/tink/shaded/protobuf/i;->l(Lic/y;Lic/g;)Lic/b;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lic/t; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

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
    if-ne v4, v1, :cond_5

    iget-object p2, p0, Lcc/Z;->c:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lcc/Z;->c:Ljava/util/List;

    :cond_5
    :try_start_2
    invoke-virtual {v2}, LK6/q;->i()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catch_2
    invoke-virtual {v0}, Lic/d;->c()Lic/e;

    move-result-object p2

    iput-object p2, p0, Lcc/Z;->a:Lic/e;

    goto :goto_4

    :catchall_1
    move-exception p1

    invoke-virtual {v0}, Lic/d;->c()Lic/e;

    move-result-object p2

    iput-object p2, p0, Lcc/Z;->a:Lic/e;

    throw p1

    :goto_4
    throw p1

    :cond_6
    if-ne v4, v1, :cond_7

    iget-object p1, p0, Lcc/Z;->c:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcc/Z;->c:Ljava/util/List;

    :cond_7
    :try_start_3
    invoke-virtual {v2}, LK6/q;->i()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :catch_3
    invoke-virtual {v0}, Lic/d;->c()Lic/e;

    move-result-object p1

    iput-object p1, p0, Lcc/Z;->a:Lic/e;

    goto :goto_5

    :catchall_2
    move-exception p1

    invoke-virtual {v0}, Lic/d;->c()Lic/e;

    move-result-object p2

    iput-object p2, p0, Lcc/Z;->a:Lic/e;

    throw p1

    :goto_5
    return-void
.end method

.method public static g(Lcc/Z;)Lcc/g;
    .locals 1

    invoke-static {}, Lcc/g;->f()Lcc/g;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcc/g;->h(Lcc/Z;)V

    return-object v0
.end method


# virtual methods
.method public final a()I
    .locals 4

    iget v0, p0, Lcc/Z;->f:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lcc/Z;->c:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Lcc/Z;->c:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lic/b;

    invoke-static {v3, v2}, LK6/q;->d(ILic/b;)I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget v0, p0, Lcc/Z;->b:I

    and-int/2addr v0, v3

    if-ne v0, v3, :cond_2

    const/4 v0, 0x2

    iget v2, p0, Lcc/Z;->d:I

    invoke-static {v0, v2}, LK6/q;->b(II)I

    move-result v0

    add-int/2addr v1, v0

    :cond_2
    iget-object v0, p0, Lcc/Z;->a:Lic/e;

    invoke-virtual {v0}, Lic/e;->size()I

    move-result v0

    add-int/2addr v0, v1

    iput v0, p0, Lcc/Z;->f:I

    return v0
.end method

.method public final b()Lic/k;
    .locals 0

    invoke-static {}, Lcc/g;->f()Lcc/g;

    move-result-object p0

    return-object p0
.end method

.method public final c()Lic/k;
    .locals 0

    invoke-static {p0}, Lcc/Z;->g(Lcc/Z;)Lcc/g;

    move-result-object p0

    return-object p0
.end method

.method public final d(LK6/q;)V
    .locals 3

    invoke-virtual {p0}, Lcc/Z;->a()I

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcc/Z;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcc/Z;->c:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lic/b;

    invoke-virtual {p1, v2, v1}, LK6/q;->o(ILic/b;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget v0, p0, Lcc/Z;->b:I

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_1

    const/4 v0, 0x2

    iget v1, p0, Lcc/Z;->d:I

    invoke-virtual {p1, v0, v1}, LK6/q;->m(II)V

    :cond_1
    iget-object p0, p0, Lcc/Z;->a:Lic/e;

    invoke-virtual {p1, p0}, LK6/q;->r(Lic/e;)V

    return-void
.end method

.method public final h()Lcc/g;
    .locals 0

    invoke-static {p0}, Lcc/Z;->g(Lcc/Z;)Lcc/g;

    move-result-object p0

    return-object p0
.end method

.method public final isInitialized()Z
    .locals 4

    iget-byte v0, p0, Lcc/Z;->e:B

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
    iget-object v3, p0, Lcc/Z;->c:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_3

    iget-object v3, p0, Lcc/Z;->c:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcc/T;

    invoke-virtual {v3}, Lcc/T;->isInitialized()Z

    move-result v3

    if-nez v3, :cond_2

    iput-byte v2, p0, Lcc/Z;->e:B

    return v2

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    iput-byte v1, p0, Lcc/Z;->e:B

    return v1
.end method
