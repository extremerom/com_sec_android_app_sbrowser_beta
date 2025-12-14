.class public abstract LG5/r;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(IILPc/a;)LPc/i;
    .locals 2

    and-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_0

    sget-object p2, LPc/a;->SUSPEND:LPc/a;

    :cond_0
    const/4 p1, 0x0

    const/4 v0, -0x2

    const/4 v1, 0x1

    if-eq p0, v0, :cond_7

    const/4 v0, -0x1

    if-eq p0, v0, :cond_5

    if-eqz p0, :cond_3

    const v0, 0x7fffffff

    if-eq p0, v0, :cond_2

    sget-object v0, LPc/a;->SUSPEND:LPc/a;

    if-ne p2, v0, :cond_1

    new-instance p2, LPc/i;

    invoke-direct {p2, p0, p1}, LPc/i;-><init>(ILsb/k;)V

    goto :goto_1

    :cond_1
    new-instance v0, LPc/t;

    invoke-direct {v0, p0, p2, p1}, LPc/t;-><init>(ILPc/a;Lsb/k;)V

    move-object p2, v0

    goto :goto_1

    :cond_2
    new-instance p2, LPc/i;

    invoke-direct {p2, v0, p1}, LPc/i;-><init>(ILsb/k;)V

    goto :goto_1

    :cond_3
    sget-object p0, LPc/a;->SUSPEND:LPc/a;

    if-ne p2, p0, :cond_4

    new-instance p0, LPc/i;

    const/4 p2, 0x0

    invoke-direct {p0, p2, p1}, LPc/i;-><init>(ILsb/k;)V

    :goto_0
    move-object p2, p0

    goto :goto_1

    :cond_4
    new-instance p0, LPc/t;

    invoke-direct {p0, v1, p2, p1}, LPc/t;-><init>(ILPc/a;Lsb/k;)V

    goto :goto_0

    :cond_5
    sget-object p0, LPc/a;->SUSPEND:LPc/a;

    if-ne p2, p0, :cond_6

    new-instance p2, LPc/t;

    sget-object p0, LPc/a;->DROP_OLDEST:LPc/a;

    invoke-direct {p2, v1, p0, p1}, LPc/t;-><init>(ILPc/a;Lsb/k;)V

    goto :goto_1

    :cond_6
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "CONFLATED capacity cannot be used with non-default onBufferOverflow"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_7
    sget-object p0, LPc/a;->SUSPEND:LPc/a;

    if-ne p2, p0, :cond_8

    new-instance p0, LPc/i;

    sget-object p2, LPc/m;->M:LPc/l;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget p2, LPc/l;->b:I

    invoke-direct {p0, p2, p1}, LPc/i;-><init>(ILsb/k;)V

    goto :goto_0

    :cond_8
    new-instance p0, LPc/t;

    invoke-direct {p0, v1, p2, p1}, LPc/t;-><init>(ILPc/a;Lsb/k;)V

    goto :goto_0

    :goto_1
    return-object p2
.end method

.method public static final b(Ljava/io/Reader;)Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    const/16 v1, 0x2000

    new-array v1, v1, [C

    invoke-virtual {p0, v1}, Ljava/io/Reader;->read([C)I

    move-result v2

    :goto_0
    if-ltz v2, :cond_0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/Writer;->write([CII)V

    invoke-virtual {p0, v1}, Ljava/io/Reader;->read([C)I

    move-result v2

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "toString(...)"

    invoke-static {p0, v0}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public static c(Ljava/util/concurrent/Callable;)Ljava/lang/Object;
    .locals 2

    invoke-static {}, Landroid/os/StrictMode;->getThreadPolicy()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v0

    :try_start_0
    sget-object v1, Landroid/os/StrictMode$ThreadPolicy;->LAX:Landroid/os/StrictMode$ThreadPolicy;

    invoke-static {v1}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    invoke-interface {p0}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    return-object p0

    :catchall_0
    move-exception p0

    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    throw p0
.end method
