.class public final Lcc/v;
.super Lic/m;
.source "SourceFile"


# static fields
.field public static final g:Lcc/v;

.field public static final h:Lcc/a;


# instance fields
.field public final b:Lic/e;

.field public c:I

.field public d:I

.field public e:B

.field public f:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcc/a;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Lcc/a;-><init>(I)V

    sput-object v0, Lcc/v;->h:Lcc/a;

    new-instance v0, Lcc/v;

    invoke-direct {v0}, Lcc/v;-><init>()V

    sput-object v0, Lcc/v;->g:Lcc/v;

    const/4 v1, 0x0

    iput v1, v0, Lcc/v;->d:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lic/m;-><init>()V

    const/4 v0, -0x1

    iput-byte v0, p0, Lcc/v;->e:B

    iput v0, p0, Lcc/v;->f:I

    sget-object v0, Lic/e;->a:Lic/w;

    iput-object v0, p0, Lcc/v;->b:Lic/e;

    return-void
.end method

.method public constructor <init>(Lcc/u;)V
    .locals 1

    invoke-direct {p0, p1}, Lic/m;-><init>(Lic/l;)V

    const/4 v0, -0x1

    iput-byte v0, p0, Lcc/v;->e:B

    iput v0, p0, Lcc/v;->f:I

    iget-object p1, p1, Lic/k;->a:Lic/e;

    iput-object p1, p0, Lcc/v;->b:Lic/e;

    return-void
.end method

.method public constructor <init>(Lcom/google/crypto/tink/shaded/protobuf/i;Lic/g;)V
    .locals 6

    invoke-direct {p0}, Lic/m;-><init>()V

    const/4 v0, -0x1

    iput-byte v0, p0, Lcc/v;->e:B

    iput v0, p0, Lcc/v;->f:I

    const/4 v0, 0x0

    iput v0, p0, Lcc/v;->d:I

    new-instance v1, Lic/d;

    invoke-direct {v1}, Lic/d;-><init>()V

    const/4 v2, 0x1

    invoke-static {v1, v2}, LK6/q;->j(Ljava/io/OutputStream;I)LK6/q;

    move-result-object v3

    :cond_0
    :goto_0
    if-nez v0, :cond_3

    :try_start_0
    invoke-virtual {p1}, Lcom/google/crypto/tink/shaded/protobuf/i;->s()I

    move-result v4

    if-eqz v4, :cond_1

    const/16 v5, 0x8

    if-eq v4, v5, :cond_2

    invoke-virtual {p0, p1, v3, p2, v4}, Lic/m;->l(Lcom/google/crypto/tink/shaded/protobuf/i;LK6/q;Lic/g;I)Z

    move-result v4

    if-nez v4, :cond_0

    :cond_1
    move v0, v2

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

    :cond_2
    iget v4, p0, Lcc/v;->c:I

    or-int/2addr v4, v2

    iput v4, p0, Lcc/v;->c:I

    invoke-virtual {p1}, Lcom/google/crypto/tink/shaded/protobuf/i;->p()I

    move-result v4

    iput v4, p0, Lcc/v;->d:I
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
    :try_start_2
    invoke-virtual {v3}, LK6/q;->i()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catch_2
    invoke-virtual {v1}, Lic/d;->c()Lic/e;

    move-result-object p2

    iput-object p2, p0, Lcc/v;->b:Lic/e;

    goto :goto_4

    :catchall_1
    move-exception p1

    invoke-virtual {v1}, Lic/d;->c()Lic/e;

    move-result-object p2

    iput-object p2, p0, Lcc/v;->b:Lic/e;

    throw p1

    :goto_4
    invoke-virtual {p0}, Lic/m;->k()V

    throw p1

    :cond_3
    :try_start_3
    invoke-virtual {v3}, LK6/q;->i()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :catch_3
    invoke-virtual {v1}, Lic/d;->c()Lic/e;

    move-result-object p1

    iput-object p1, p0, Lcc/v;->b:Lic/e;

    goto :goto_5

    :catchall_2
    move-exception p1

    invoke-virtual {v1}, Lic/d;->c()Lic/e;

    move-result-object p2

    iput-object p2, p0, Lcc/v;->b:Lic/e;

    throw p1

    :goto_5
    invoke-virtual {p0}, Lic/m;->k()V

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 2

    iget v0, p0, Lcc/v;->f:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    iget v0, p0, Lcc/v;->c:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_1

    iget v0, p0, Lcc/v;->d:I

    invoke-static {v1, v0}, LK6/q;->b(II)I

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lic/m;->h()I

    move-result v1

    add-int/2addr v1, v0

    iget-object v0, p0, Lcc/v;->b:Lic/e;

    invoke-virtual {v0}, Lic/e;->size()I

    move-result v0

    add-int/2addr v0, v1

    iput v0, p0, Lcc/v;->f:I

    return v0
.end method

.method public final b()Lic/k;
    .locals 0

    new-instance p0, Lcc/u;

    invoke-direct {p0}, Lic/l;-><init>()V

    return-object p0
.end method

.method public final c()Lic/k;
    .locals 1

    new-instance v0, Lcc/u;

    invoke-direct {v0}, Lic/l;-><init>()V

    invoke-virtual {v0, p0}, Lcc/u;->e(Lcc/v;)V

    return-object v0
.end method

.method public final d(LK6/q;)V
    .locals 3

    invoke-virtual {p0}, Lcc/v;->a()I

    new-instance v0, Lcom/samsung/android/motionphoto/utils/ex/e;

    invoke-direct {v0, p0}, Lcom/samsung/android/motionphoto/utils/ex/e;-><init>(Lic/m;)V

    iget v1, p0, Lcc/v;->c:I

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_0

    iget v1, p0, Lcc/v;->d:I

    invoke-virtual {p1, v2, v1}, LK6/q;->m(II)V

    :cond_0
    const/16 v1, 0xc8

    invoke-virtual {v0, v1, p1}, Lcom/samsung/android/motionphoto/utils/ex/e;->y(ILK6/q;)V

    iget-object p0, p0, Lcc/v;->b:Lic/e;

    invoke-virtual {p1, p0}, LK6/q;->r(Lic/e;)V

    return-void
.end method

.method public final getDefaultInstanceForType()Lic/b;
    .locals 0

    sget-object p0, Lcc/v;->g:Lcc/v;

    return-object p0
.end method

.method public final isInitialized()Z
    .locals 3

    iget-byte v0, p0, Lcc/v;->e:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v2, 0x0

    if-nez v0, :cond_1

    return v2

    :cond_1
    invoke-virtual {p0}, Lic/m;->g()Z

    move-result v0

    if-nez v0, :cond_2

    iput-byte v2, p0, Lcc/v;->e:B

    return v2

    :cond_2
    iput-byte v1, p0, Lcc/v;->e:B

    return v1
.end method
