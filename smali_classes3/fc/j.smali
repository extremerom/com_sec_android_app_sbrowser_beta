.class public final Lfc/j;
.super Lic/p;
.source "SourceFile"


# static fields
.field public static final g:Lfc/j;

.field public static final h:Lcc/a;


# instance fields
.field public final a:Lic/e;

.field public b:Ljava/util/List;

.field public c:Ljava/util/List;

.field public d:I

.field public e:B

.field public f:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcc/a;

    const/16 v1, 0x1c

    invoke-direct {v0, v1}, Lcc/a;-><init>(I)V

    sput-object v0, Lfc/j;->h:Lcc/a;

    new-instance v0, Lfc/j;

    invoke-direct {v0}, Lfc/j;-><init>()V

    sput-object v0, Lfc/j;->g:Lfc/j;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lfc/j;->b:Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lfc/j;->c:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lic/b;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lfc/j;->d:I

    iput-byte v0, p0, Lfc/j;->e:B

    iput v0, p0, Lfc/j;->f:I

    sget-object v0, Lic/e;->a:Lic/w;

    iput-object v0, p0, Lfc/j;->a:Lic/e;

    return-void
.end method

.method public constructor <init>(Lcom/google/crypto/tink/shaded/protobuf/i;Lic/g;)V
    .locals 9

    invoke-direct {p0}, Lic/b;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lfc/j;->d:I

    iput-byte v0, p0, Lfc/j;->e:B

    iput v0, p0, Lfc/j;->f:I

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lfc/j;->b:Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lfc/j;->c:Ljava/util/List;

    new-instance v0, Lic/d;

    invoke-direct {v0}, Lic/d;-><init>()V

    const/4 v1, 0x1

    invoke-static {v0, v1}, LK6/q;->j(Ljava/io/OutputStream;I)LK6/q;

    move-result-object v2

    const/4 v3, 0x0

    move v4, v3

    :cond_0
    :goto_0
    const/4 v5, 0x2

    if-nez v3, :cond_b

    :try_start_0
    invoke-virtual {p1}, Lcom/google/crypto/tink/shaded/protobuf/i;->s()I

    move-result v6

    if-eqz v6, :cond_1

    const/16 v7, 0xa

    if-eq v6, v7, :cond_7

    const/16 v7, 0x28

    if-eq v6, v7, :cond_5

    const/16 v7, 0x2a

    if-eq v6, v7, :cond_2

    invoke-virtual {p1, v6, v2}, Lcom/google/crypto/tink/shaded/protobuf/i;->v(ILK6/q;)Z

    move-result v5

    if-nez v5, :cond_0

    :cond_1
    move v3, v1

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lcom/google/crypto/tink/shaded/protobuf/i;->p()I

    move-result v6

    invoke-virtual {p1, v6}, Lcom/google/crypto/tink/shaded/protobuf/i;->h(I)I

    move-result v6

    and-int/lit8 v7, v4, 0x2

    if-eq v7, v5, :cond_3

    invoke-virtual {p1}, Lcom/google/crypto/tink/shaded/protobuf/i;->d()I

    move-result v7

    if-lez v7, :cond_3

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, p0, Lfc/j;->c:Ljava/util/List;

    or-int/lit8 v4, v4, 0x2

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
    invoke-virtual {p1}, Lcom/google/crypto/tink/shaded/protobuf/i;->d()I

    move-result v7

    if-lez v7, :cond_4

    iget-object v7, p0, Lfc/j;->c:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/crypto/tink/shaded/protobuf/i;->p()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    invoke-virtual {p1, v6}, Lcom/google/crypto/tink/shaded/protobuf/i;->g(I)V

    goto :goto_0

    :cond_5
    and-int/lit8 v6, v4, 0x2

    if-eq v6, v5, :cond_6

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lfc/j;->c:Ljava/util/List;

    or-int/lit8 v4, v4, 0x2

    :cond_6
    iget-object v6, p0, Lfc/j;->c:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/crypto/tink/shaded/protobuf/i;->p()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_7
    and-int/lit8 v6, v4, 0x1

    if-eq v6, v1, :cond_8

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lfc/j;->b:Ljava/util/List;

    or-int/lit8 v4, v4, 0x1

    :cond_8
    iget-object v6, p0, Lfc/j;->b:Ljava/util/List;

    sget-object v7, Lfc/i;->n:Lcc/a;

    invoke-virtual {p1, v7, p2}, Lcom/google/crypto/tink/shaded/protobuf/i;->l(Lic/y;Lic/g;)Lic/b;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
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
    and-int/lit8 p2, v4, 0x1

    if-ne p2, v1, :cond_9

    iget-object p2, p0, Lfc/j;->b:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lfc/j;->b:Ljava/util/List;

    :cond_9
    and-int/lit8 p2, v4, 0x2

    if-ne p2, v5, :cond_a

    iget-object p2, p0, Lfc/j;->c:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lfc/j;->c:Ljava/util/List;

    :cond_a
    :try_start_2
    invoke-virtual {v2}, LK6/q;->i()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catch_2
    invoke-virtual {v0}, Lic/d;->c()Lic/e;

    move-result-object p2

    iput-object p2, p0, Lfc/j;->a:Lic/e;

    goto :goto_5

    :catchall_1
    move-exception p1

    invoke-virtual {v0}, Lic/d;->c()Lic/e;

    move-result-object p2

    iput-object p2, p0, Lfc/j;->a:Lic/e;

    throw p1

    :goto_5
    throw p1

    :cond_b
    and-int/lit8 p1, v4, 0x1

    if-ne p1, v1, :cond_c

    iget-object p1, p0, Lfc/j;->b:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lfc/j;->b:Ljava/util/List;

    :cond_c
    and-int/lit8 p1, v4, 0x2

    if-ne p1, v5, :cond_d

    iget-object p1, p0, Lfc/j;->c:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lfc/j;->c:Ljava/util/List;

    :cond_d
    :try_start_3
    invoke-virtual {v2}, LK6/q;->i()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :catch_3
    invoke-virtual {v0}, Lic/d;->c()Lic/e;

    move-result-object p1

    iput-object p1, p0, Lfc/j;->a:Lic/e;

    goto :goto_6

    :catchall_2
    move-exception p1

    invoke-virtual {v0}, Lic/d;->c()Lic/e;

    move-result-object p2

    iput-object p2, p0, Lfc/j;->a:Lic/e;

    throw p1

    :goto_6
    return-void
.end method

.method public constructor <init>(Lfc/f;)V
    .locals 1

    invoke-direct {p0}, Lic/b;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lfc/j;->d:I

    iput-byte v0, p0, Lfc/j;->e:B

    iput v0, p0, Lfc/j;->f:I

    iget-object p1, p1, Lic/k;->a:Lic/e;

    iput-object p1, p0, Lfc/j;->a:Lic/e;

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 5

    iget v0, p0, Lfc/j;->f:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    :goto_0
    iget-object v3, p0, Lfc/j;->b:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    iget-object v3, p0, Lfc/j;->b:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lic/b;

    const/4 v4, 0x1

    invoke-static {v4, v3}, LK6/q;->d(ILic/b;)I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    move v1, v0

    :goto_1
    iget-object v3, p0, Lfc/j;->c:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_2

    iget-object v3, p0, Lfc/j;->c:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, LK6/q;->c(I)I

    move-result v3

    add-int/2addr v1, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    add-int/2addr v2, v1

    iget-object v0, p0, Lfc/j;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    add-int/lit8 v2, v2, 0x1

    invoke-static {v1}, LK6/q;->c(I)I

    move-result v0

    add-int/2addr v2, v0

    :cond_3
    iput v1, p0, Lfc/j;->d:I

    iget-object v0, p0, Lfc/j;->a:Lic/e;

    invoke-virtual {v0}, Lic/e;->size()I

    move-result v0

    add-int/2addr v0, v2

    iput v0, p0, Lfc/j;->f:I

    return v0
.end method

.method public final b()Lic/k;
    .locals 0

    invoke-static {}, Lfc/f;->e()Lfc/f;

    move-result-object p0

    return-object p0
.end method

.method public final c()Lic/k;
    .locals 1

    invoke-static {}, Lfc/f;->e()Lfc/f;

    move-result-object v0

    invoke-virtual {v0, p0}, Lfc/f;->f(Lfc/j;)V

    return-object v0
.end method

.method public final d(LK6/q;)V
    .locals 4

    invoke-virtual {p0}, Lfc/j;->a()I

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lfc/j;->b:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lfc/j;->b:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lic/b;

    const/4 v3, 0x1

    invoke-virtual {p1, v3, v2}, LK6/q;->o(ILic/b;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lfc/j;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    const/16 v1, 0x2a

    invoke-virtual {p1, v1}, LK6/q;->v(I)V

    iget v1, p0, Lfc/j;->d:I

    invoke-virtual {p1, v1}, LK6/q;->v(I)V

    :cond_1
    :goto_1
    iget-object v1, p0, Lfc/j;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Lfc/j;->c:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v1}, LK6/q;->n(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    iget-object p0, p0, Lfc/j;->a:Lic/e;

    invoke-virtual {p1, p0}, LK6/q;->r(Lic/e;)V

    return-void
.end method

.method public final isInitialized()Z
    .locals 2

    iget-byte v0, p0, Lfc/j;->e:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    if-nez v0, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    iput-byte v1, p0, Lfc/j;->e:B

    return v1
.end method
