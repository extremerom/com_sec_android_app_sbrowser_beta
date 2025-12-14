.class public abstract LJ2/f;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract bind(LS2/c;Ljava/lang/Object;)V
.end method

.method public abstract createQuery()Ljava/lang/String;
.end method

.method public final insert(LS2/a;Ljava/lang/Iterable;)V
    .locals 1
    .param p1    # LS2/a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Iterable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LS2/a;",
            "Ljava/lang/Iterable<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string v0, "connection"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p2, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, LJ2/f;->createQuery()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, LS2/a;->w0(Ljava/lang/String;)LS2/c;

    move-result-object p1

    :try_start_0
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_1
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1, v0}, LJ2/f;->bind(LS2/c;Ljava/lang/Object;)V

    invoke-interface {p1}, LS2/c;->t0()Z

    invoke-interface {p1}, LS2/c;->reset()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_2
    const/4 p0, 0x0

    invoke-static {p1, p0}, LG5/y;->a(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    return-void

    :goto_1
    :try_start_1
    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception p2

    invoke-static {p1, p0}, LG5/y;->a(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    throw p2
.end method

.method public final insert(LS2/a;Ljava/lang/Object;)V
    .locals 1
    .param p1    # LS2/a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LS2/a;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    const-string v0, "connection"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p2, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, LJ2/f;->createQuery()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, LS2/a;->w0(Ljava/lang/String;)LS2/c;

    move-result-object p1

    :try_start_0
    invoke-virtual {p0, p1, p2}, LJ2/f;->bind(LS2/c;Ljava/lang/Object;)V

    invoke-interface {p1}, LS2/c;->t0()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p0, 0x0

    invoke-static {p1, p0}, LG5/y;->a(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception p2

    invoke-static {p1, p0}, LG5/y;->a(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    throw p2
.end method

.method public final insertAndReturnId(LS2/a;Ljava/lang/Object;)J
    .locals 3
    .param p1    # LS2/a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LS2/a;",
            "Ljava/lang/Object;",
            ")J"
        }
    .end annotation

    const-string v0, "connection"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v0, -0x1

    if-nez p2, :cond_0

    return-wide v0

    :cond_0
    invoke-virtual {p0}, LJ2/f;->createQuery()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v2}, LS2/a;->w0(Ljava/lang/String;)LS2/c;

    move-result-object v2

    :try_start_0
    invoke-virtual {p0, v2, p2}, LJ2/f;->bind(LS2/c;Ljava/lang/Object;)V

    invoke-interface {v2}, LS2/c;->t0()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    const/4 p0, 0x0

    invoke-static {v2, p0}, LG5/y;->a(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    invoke-static {p1}, LAd/a;->e(LS2/a;)I

    move-result p2

    if-nez p2, :cond_1

    goto :goto_0

    :cond_1
    const-string p2, "SELECT last_insert_rowid()"

    invoke-interface {p1, p2}, LS2/a;->w0(Ljava/lang/String;)LS2/c;

    move-result-object p1

    :try_start_1
    invoke-interface {p1}, LS2/c;->t0()Z

    const/4 p2, 0x0

    invoke-interface {p1, p2}, LS2/c;->getLong(I)J

    move-result-wide v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {p1, p0}, LG5/y;->a(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    :goto_0
    return-wide v0

    :catchall_0
    move-exception p0

    :try_start_2
    throw p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception p2

    invoke-static {p1, p0}, LG5/y;->a(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    throw p2

    :catchall_2
    move-exception p0

    :try_start_3
    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    :catchall_3
    move-exception p1

    invoke-static {v2, p0}, LG5/y;->a(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    throw p1
.end method
