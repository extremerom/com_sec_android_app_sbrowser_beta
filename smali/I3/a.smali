.class public final LI3/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;


# instance fields
.field public final synthetic a:I

.field public final b:Ljava/lang/Object;


# direct methods
.method public constructor <init>(LVa/d;)V
    .locals 7

    const/16 v0, 0x11

    const/4 v1, 0x1

    iput v1, p0, LI3/a;->a:I

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, LYa/a;->a()LI3/c;

    move-result-object v3

    sget-object v4, LYa/a;->b:LYa/b;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v4, LYa/c;->a:LR2/i;

    const-string v4, "context"

    iget-object v3, v3, LI3/c;->b:Ljava/lang/Object;

    check-cast v3, Lio/grpc/c;

    invoke-static {v3, v4}, LG6/a;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v4, v3, Lio/grpc/c;->a:LJ7/c;

    sget-object v5, LYa/c;->a:LR2/i;

    iget-object v4, v4, LJ7/c;->b:Ljava/lang/Object;

    check-cast v4, Lio/grpc/f;

    if-nez v4, :cond_0

    new-instance v2, LJ7/c;

    new-instance v4, Lio/grpc/d;

    invoke-direct {v4, v1, v5, p1}, Lio/grpc/d;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-direct {v2, v0, v4}, LJ7/c;-><init>(ILjava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance v1, LJ7/c;

    invoke-virtual {v5}, Ljava/lang/Object;->hashCode()I

    move-result v6

    invoke-interface {v4, v5, p1, v6, v2}, Lio/grpc/f;->b(LR2/i;LVa/h;II)Lio/grpc/f;

    move-result-object p1

    invoke-direct {v1, v0, p1}, LJ7/c;-><init>(ILjava/lang/Object;)V

    move-object v2, v1

    :goto_0
    new-instance p1, Lio/grpc/c;

    invoke-direct {p1, v3, v2}, Lio/grpc/c;-><init>(Lio/grpc/c;LJ7/c;)V

    new-instance v0, LI3/c;

    sget-object v1, Lio/grpc/a;->a:Lio/grpc/b;

    check-cast v1, Lio/grpc/g;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lio/grpc/g;->b:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/grpc/c;

    if-nez v2, :cond_1

    sget-object v2, Lio/grpc/c;->d:Lio/grpc/c;

    :cond_1
    invoke-virtual {v1, p1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    if-nez v2, :cond_2

    sget-object v2, Lio/grpc/c;->d:Lio/grpc/c;

    :cond_2
    const/16 p1, 0xd

    invoke-direct {v0, p1, v2}, LI3/c;-><init>(ILjava/lang/Object;)V

    iput-object v0, p0, LI3/a;->b:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/net/HttpURLConnection;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, LI3/a;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LI3/a;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 3

    iget-object p0, p0, LI3/a;->b:Ljava/lang/Object;

    check-cast p0, Ljava/net/HttpURLConnection;

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v1

    div-int/lit8 v1, v1, 0x64
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    :catch_0
    :cond_0
    if-eqz v0, :cond_1

    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unable to fetch "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/net/URLConnection;->getURL()Ljava/net/URL;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ". Failed with "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object p0

    invoke-direct {v2, p0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    :goto_0
    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0xa

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_2
    :try_start_3
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    :catch_1
    :try_start_4
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    :goto_1
    return-object p0

    :catch_2
    move-exception p0

    goto :goto_3

    :goto_2
    :try_start_5
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    :catch_3
    :try_start_6
    throw p0
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    :goto_3
    const-string v0, "get error failed "

    invoke-static {v0, p0}, LL3/b;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final close()V
    .locals 5

    iget v0, p0, LI3/a;->a:I

    packed-switch v0, :pswitch_data_0

    invoke-static {}, LYa/a;->a()LI3/c;

    move-result-object v0

    iget-object p0, p0, LI3/a;->b:Ljava/lang/Object;

    check-cast p0, LI3/c;

    iget-object p0, p0, LI3/c;->b:Ljava/lang/Object;

    check-cast p0, Lio/grpc/c;

    iget-object v0, v0, LI3/c;->b:Ljava/lang/Object;

    check-cast v0, Lio/grpc/c;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz p0, :cond_3

    sget-object v1, Lio/grpc/a;->a:Lio/grpc/b;

    check-cast v1, Lio/grpc/g;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lio/grpc/g;->b:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/grpc/c;

    if-nez v2, :cond_0

    sget-object v2, Lio/grpc/c;->d:Lio/grpc/c;

    :cond_0
    if-eq v2, v0, :cond_1

    sget-object v0, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v2}, Ljava/lang/Throwable;->fillInStackTrace()Ljava/lang/Throwable;

    move-result-object v2

    sget-object v3, Lio/grpc/g;->a:Ljava/util/logging/Logger;

    const-string v4, "Context was not attached when detaching"

    invoke-virtual {v3, v0, v4, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    sget-object v0, Lio/grpc/c;->d:Lio/grpc/c;

    if-eq p0, v0, :cond_2

    invoke-virtual {v1, p0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    invoke-virtual {v1, p0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_3
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "toAttach"

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_0
    iget-object p0, p0, LI3/a;->b:Ljava/lang/Object;

    check-cast p0, Ljava/net/HttpURLConnection;

    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->disconnect()V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
