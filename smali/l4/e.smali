.class public final Ll4/e;
.super Ljava/io/InputStream;
.source "SourceFile"


# static fields
.field public static final c:Ljava/util/ArrayDeque;


# instance fields
.field public a:LZ3/z;

.field public b:Ljava/io/IOException;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget-object v0, Ll4/l;->a:[C

    new-instance v0, Ljava/util/ArrayDeque;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/ArrayDeque;-><init>(I)V

    sput-object v0, Ll4/e;->c:Ljava/util/ArrayDeque;

    return-void
.end method


# virtual methods
.method public final available()I
    .locals 0

    iget-object p0, p0, Ll4/e;->a:LZ3/z;

    invoke-virtual {p0}, LZ3/z;->available()I

    move-result p0

    return p0
.end method

.method public final close()V
    .locals 0

    iget-object p0, p0, Ll4/e;->a:LZ3/z;

    invoke-virtual {p0}, LZ3/z;->close()V

    return-void
.end method

.method public final mark(I)V
    .locals 0

    iget-object p0, p0, Ll4/e;->a:LZ3/z;

    invoke-virtual {p0, p1}, LZ3/z;->mark(I)V

    return-void
.end method

.method public final markSupported()Z
    .locals 0

    iget-object p0, p0, Ll4/e;->a:LZ3/z;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p0, 0x1

    return p0
.end method

.method public final read()I
    .locals 1

    :try_start_0
    iget-object v0, p0, Ll4/e;->a:LZ3/z;

    invoke-virtual {v0}, LZ3/z;->read()I

    move-result p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception v0

    iput-object v0, p0, Ll4/e;->b:Ljava/io/IOException;

    throw v0
.end method

.method public final read([B)I
    .locals 1

    :try_start_0
    iget-object v0, p0, Ll4/e;->a:LZ3/z;

    invoke-virtual {v0, p1}, Ljava/io/InputStream;->read([B)I

    move-result p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p1

    iput-object p1, p0, Ll4/e;->b:Ljava/io/IOException;

    throw p1
.end method

.method public final read([BII)I
    .locals 1

    :try_start_0
    iget-object v0, p0, Ll4/e;->a:LZ3/z;

    invoke-virtual {v0, p1, p2, p3}, LZ3/z;->read([BII)I

    move-result p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p1

    iput-object p1, p0, Ll4/e;->b:Ljava/io/IOException;

    throw p1
.end method

.method public final declared-synchronized reset()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Ll4/e;->a:LZ3/z;

    invoke-virtual {v0}, LZ3/z;->reset()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final skip(J)J
    .locals 1

    :try_start_0
    iget-object v0, p0, Ll4/e;->a:LZ3/z;

    invoke-virtual {v0, p1, p2}, LZ3/z;->skip(J)J

    move-result-wide p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide p0

    :catch_0
    move-exception p1

    iput-object p1, p0, Ll4/e;->b:Ljava/io/IOException;

    throw p1
.end method
