.class public final Lhd/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;
.implements Ljava/io/Flushable;


# instance fields
.field public final a:Ljd/g;


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljd/g;

    sget-object v1, Lkd/c;->i:Lkd/c;

    invoke-direct {v0, p1, v1}, Ljd/g;-><init>(Ljava/io/File;Lkd/c;)V

    iput-object v0, p0, Lhd/g;->a:Ljd/g;

    return-void
.end method


# virtual methods
.method public final a(Lhd/M;)V
    .locals 4

    const-string v0, "request"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lhd/g;->a:Ljd/g;

    iget-object p1, p1, Lhd/M;->a:Lhd/A;

    invoke-static {p1}, LG5/F3;->h(Lhd/A;)Ljava/lang/String;

    move-result-object p1

    monitor-enter p0

    :try_start_0
    const-string v0, "key"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljd/g;->e()V

    invoke-virtual {p0}, Ljd/g;->a()V

    invoke-static {p1}, Ljd/g;->B(Ljava/lang/String;)V

    iget-object v0, p0, Ljd/g;->g:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljd/d;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p1, :cond_0

    monitor-exit p0

    goto :goto_1

    :cond_0
    :try_start_1
    invoke-virtual {p0, p1}, Ljd/g;->t(Ljd/d;)V

    iget-wide v0, p0, Ljd/g;->e:J

    const-wide/32 v2, 0x100000

    cmp-long p1, v0, v2

    if-gtz p1, :cond_1

    const/4 p1, 0x0

    iput-boolean p1, p0, Ljd/g;->m:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_1
    :goto_0
    monitor-exit p0

    :goto_1
    return-void

    :goto_2
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public final close()V
    .locals 0

    iget-object p0, p0, Lhd/g;->a:Ljd/g;

    invoke-virtual {p0}, Ljd/g;->close()V

    return-void
.end method

.method public final flush()V
    .locals 0

    iget-object p0, p0, Lhd/g;->a:Ljd/g;

    invoke-virtual {p0}, Ljd/g;->flush()V

    return-void
.end method
