.class public final Lbc/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lmd/d;


# instance fields
.field public final synthetic a:I

.field public b:I

.field public final c:Ljava/lang/Object;

.field public final d:Ljava/lang/Object;

.field public final e:Ljava/lang/Object;

.field public final f:Ljava/lang/Object;

.field public g:Ljava/lang/Object;

.field public h:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lbc/b;Lec/f;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lbc/c;->a:I

    const-string v0, "kind"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbc/c;->c:Ljava/lang/Object;

    iput-object p2, p0, Lbc/c;->d:Ljava/lang/Object;

    iput-object p3, p0, Lbc/c;->e:Ljava/lang/Object;

    iput-object p4, p0, Lbc/c;->f:Ljava/lang/Object;

    iput-object p5, p0, Lbc/c;->g:Ljava/lang/Object;

    iput-object p6, p0, Lbc/c;->h:Ljava/lang/Object;

    iput p7, p0, Lbc/c;->b:I

    return-void
.end method

.method public constructor <init>(Lhd/I;Lld/k;Lwd/t;Lwd/s;)V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, Lbc/c;->a:I

    const-string v0, "connection"

    invoke-static {p2, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "source"

    invoke-static {p3, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sink"

    invoke-static {p4, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbc/c;->c:Ljava/lang/Object;

    iput-object p2, p0, Lbc/c;->d:Ljava/lang/Object;

    iput-object p3, p0, Lbc/c;->e:Ljava/lang/Object;

    iput-object p4, p0, Lbc/c;->f:Ljava/lang/Object;

    new-instance p1, LD2/a;

    invoke-direct {p1, p3}, LD2/a;-><init>(Lwd/t;)V

    iput-object p1, p0, Lbc/c;->g:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lhd/a;LI3/c;Lhd/j;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lbc/c;->a:I

    const-string v0, "routeDatabase"

    invoke-static {p2, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "call"

    invoke-static {p3, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbc/c;->c:Ljava/lang/Object;

    iput-object p2, p0, Lbc/c;->d:Ljava/lang/Object;

    iput-object p3, p0, Lbc/c;->e:Ljava/lang/Object;

    sget-object p2, Lfb/v;->a:Lfb/v;

    iput-object p2, p0, Lbc/c;->f:Ljava/lang/Object;

    iput-object p2, p0, Lbc/c;->g:Ljava/lang/Object;

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lbc/c;->h:Ljava/lang/Object;

    iget-object p2, p1, Lhd/a;->i:Lhd/A;

    const-string p3, "url"

    invoke-static {p2, p3}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p3, p1, Lhd/a;->g:Ljava/net/Proxy;

    if-eqz p3, :cond_0

    invoke-static {p3}, LG5/o3;->d(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    goto :goto_1

    :cond_0
    invoke-virtual {p2}, Lhd/A;->h()Ljava/net/URI;

    move-result-object p2

    invoke-virtual {p2}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object p3

    if-nez p3, :cond_1

    sget-object p1, Ljava/net/Proxy;->NO_PROXY:Ljava/net/Proxy;

    filled-new-array {p1}, [Ljava/net/Proxy;

    move-result-object p1

    invoke-static {p1}, Lid/b;->k([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    goto :goto_1

    :cond_1
    iget-object p1, p1, Lhd/a;->h:Ljava/net/ProxySelector;

    invoke-virtual {p1, p2}, Ljava/net/ProxySelector;->select(Ljava/net/URI;)Ljava/util/List;

    move-result-object p1

    move-object p2, p1

    check-cast p2, Ljava/util/Collection;

    if-eqz p2, :cond_3

    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_2

    goto :goto_0

    :cond_2
    const-string p2, "proxiesOrNull"

    invoke-static {p1, p2}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lid/b;->w(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    goto :goto_1

    :cond_3
    :goto_0
    sget-object p1, Ljava/net/Proxy;->NO_PROXY:Ljava/net/Proxy;

    filled-new-array {p1}, [Ljava/net/Proxy;

    move-result-object p1

    invoke-static {p1}, Lid/b;->k([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    :goto_1
    iput-object p1, p0, Lbc/c;->f:Ljava/lang/Object;

    const/4 p1, 0x0

    iput p1, p0, Lbc/c;->b:I

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    iget-object p0, p0, Lbc/c;->f:Ljava/lang/Object;

    check-cast p0, Lwd/s;

    invoke-virtual {p0}, Lwd/s;->flush()V

    return-void
.end method

.method public b()Lld/k;
    .locals 0

    iget-object p0, p0, Lbc/c;->d:Ljava/lang/Object;

    check-cast p0, Lld/k;

    return-object p0
.end method

.method public c(Lhd/M;)V
    .locals 4

    const-string v0, "request"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lbc/c;->d:Ljava/lang/Object;

    check-cast v0, Lld/k;

    iget-object v0, v0, Lld/k;->b:Lhd/Y;

    iget-object v0, v0, Lhd/Y;->b:Ljava/net/Proxy;

    invoke-virtual {v0}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v0

    const-string v1, "connection.route().proxy.type()"

    invoke-static {v0, v1}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p1, Lhd/M;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lhd/M;->a:Lhd/A;

    iget-boolean v3, v2, Lhd/A;->j:Z

    if-nez v3, :cond_0

    sget-object v3, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    if-ne v0, v3, :cond_0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Lhd/A;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2}, Lhd/A;->d()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x3f

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    const-string v0, " HTTP/1.1"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StringBuilder().apply(builderAction).toString()"

    invoke-static {v0, v1}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p1, Lhd/M;->c:Lhd/y;

    invoke-virtual {p0, p1, v0}, Lbc/c;->k(Lhd/y;Ljava/lang/String;)V

    return-void
.end method

.method public cancel()V
    .locals 0

    iget-object p0, p0, Lbc/c;->d:Ljava/lang/Object;

    check-cast p0, Lld/k;

    iget-object p0, p0, Lld/k;->c:Ljava/net/Socket;

    if-eqz p0, :cond_0

    invoke-static {p0}, Lid/b;->d(Ljava/net/Socket;)V

    :cond_0
    return-void
.end method

.method public d(Lhd/T;)J
    .locals 1

    invoke-static {p1}, Lmd/e;->a(Lhd/T;)Z

    move-result p0

    if-nez p0, :cond_0

    const-wide/16 p0, 0x0

    goto :goto_0

    :cond_0
    const-string p0, "Transfer-Encoding"

    invoke-static {p1, p0}, Lhd/T;->b(Lhd/T;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "chunked"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    const-wide/16 p0, -0x1

    goto :goto_0

    :cond_1
    invoke-static {p1}, Lid/b;->j(Lhd/T;)J

    move-result-wide p0

    :goto_0
    return-wide p0
.end method

.method public e(Lhd/M;J)Lwd/x;
    .locals 5

    const-string v0, "request"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p1, Lhd/M;->d:Lhd/Q;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lhd/Q;->isDuplex()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/net/ProtocolException;

    const-string p1, "Duplex connections are not supported for HTTP/1"

    invoke-direct {p0, p1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    iget-object p1, p1, Lhd/M;->c:Lhd/y;

    const-string v0, "Transfer-Encoding"

    invoke-virtual {p1, v0}, Lhd/y;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "chunked"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    const-string v0, "state: "

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eqz p1, :cond_3

    iget p1, p0, Lbc/c;->b:I

    if-ne p1, v2, :cond_2

    iput v1, p0, Lbc/c;->b:I

    new-instance p1, Lnd/b;

    invoke-direct {p1, p0}, Lnd/b;-><init>(Lbc/c;)V

    goto :goto_1

    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p0, p0, Lbc/c;->b:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    const-wide/16 v3, -0x1

    cmp-long p1, p2, v3

    if-eqz p1, :cond_5

    iget p1, p0, Lbc/c;->b:I

    if-ne p1, v2, :cond_4

    iput v1, p0, Lbc/c;->b:I

    new-instance p1, Lnd/e;

    invoke-direct {p1, p0}, Lnd/e;-><init>(Lbc/c;)V

    :goto_1
    return-object p1

    :cond_4
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p0, p0, Lbc/c;->b:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Cannot stream a request body without chunked encoding or a known content length!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public f(Z)Lhd/S;
    .locals 10

    iget-object v0, p0, Lbc/c;->g:Ljava/lang/Object;

    check-cast v0, LD2/a;

    iget v1, p0, Lbc/c;->b:I

    const/4 v2, 0x1

    const/4 v3, 0x3

    if-eq v1, v2, :cond_1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    if-ne v1, v3, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "state: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p0, p0, Lbc/c;->b:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    :try_start_0
    iget-object v1, v0, LD2/a;->c:Ljava/lang/Object;

    check-cast v1, Lwd/t;

    iget-wide v4, v0, LD2/a;->b:J

    invoke-virtual {v1, v4, v5}, Lwd/t;->o(J)Ljava/lang/String;

    move-result-object v1

    iget-wide v4, v0, LD2/a;->b:J

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    int-to-long v6, v2

    sub-long/2addr v4, v6

    iput-wide v4, v0, LD2/a;->b:J

    invoke-static {v1}, Lg3/p;->d(Ljava/lang/String;)LG5/g4;

    move-result-object v1
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    iget v2, v1, LG5/g4;->b:I

    :try_start_1
    new-instance v4, Lhd/S;

    invoke-direct {v4}, Lhd/S;-><init>()V

    iget-object v5, v1, LG5/g4;->c:Ljava/lang/Object;

    check-cast v5, Lhd/K;

    const-string v6, "protocol"

    invoke-static {v5, v6}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v5, v4, Lhd/S;->b:Lhd/K;

    iput v2, v4, Lhd/S;->c:I

    iget-object v1, v1, LG5/g4;->d:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iput-object v1, v4, Lhd/S;->d:Ljava/lang/String;

    new-instance v1, Lhd/x;

    invoke-direct {v1}, Lhd/x;-><init>()V

    :goto_1
    iget-object v5, v0, LD2/a;->c:Ljava/lang/Object;

    check-cast v5, Lwd/t;

    iget-wide v6, v0, LD2/a;->b:J

    invoke-virtual {v5, v6, v7}, Lwd/t;->o(J)Ljava/lang/String;

    move-result-object v5

    iget-wide v6, v0, LD2/a;->b:J

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v8

    int-to-long v8, v8

    sub-long/2addr v6, v8

    iput-wide v6, v0, LD2/a;->b:J

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_5

    invoke-virtual {v1}, Lhd/x;->d()Lhd/y;

    move-result-object v0

    invoke-virtual {v4, v0}, Lhd/S;->c(Lhd/y;)V

    const/16 v0, 0x64

    if-eqz p1, :cond_2

    if-ne v2, v0, :cond_2

    const/4 v4, 0x0

    goto :goto_2

    :cond_2
    if-ne v2, v0, :cond_3

    iput v3, p0, Lbc/c;->b:I

    goto :goto_2

    :catch_0
    move-exception p1

    goto :goto_3

    :cond_3
    const/16 p1, 0x66

    if-gt p1, v2, :cond_4

    const/16 p1, 0xc8

    if-ge v2, p1, :cond_4

    iput v3, p0, Lbc/c;->b:I

    goto :goto_2

    :cond_4
    const/4 p1, 0x4

    iput p1, p0, Lbc/c;->b:I

    :goto_2
    return-object v4

    :cond_5
    invoke-virtual {v1, v5}, Lhd/x;->b(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/EOFException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :goto_3
    iget-object p0, p0, Lbc/c;->d:Ljava/lang/Object;

    check-cast p0, Lld/k;

    iget-object p0, p0, Lld/k;->b:Lhd/Y;

    iget-object p0, p0, Lhd/Y;->a:Lhd/a;

    iget-object p0, p0, Lhd/a;->i:Lhd/A;

    invoke-virtual {p0}, Lhd/A;->g()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/io/IOException;

    const-string v1, "unexpected end of stream on "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public g()V
    .locals 0

    iget-object p0, p0, Lbc/c;->f:Ljava/lang/Object;

    check-cast p0, Lwd/s;

    invoke-virtual {p0}, Lwd/s;->flush()V

    return-void
.end method

.method public h(Lhd/T;)Lwd/z;
    .locals 8

    invoke-static {p1}, Lmd/e;->a(Lhd/T;)Z

    move-result v0

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lbc/c;->j(J)Lnd/d;

    move-result-object p0

    goto :goto_0

    :cond_0
    const-string v0, "Transfer-Encoding"

    invoke-static {p1, v0}, Lhd/T;->b(Lhd/T;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "chunked"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "state: "

    const/4 v2, 0x5

    const/4 v3, 0x4

    if-eqz v0, :cond_2

    iget-object p1, p1, Lhd/T;->a:Lhd/M;

    iget-object p1, p1, Lhd/M;->a:Lhd/A;

    iget v0, p0, Lbc/c;->b:I

    if-ne v0, v3, :cond_1

    iput v2, p0, Lbc/c;->b:I

    new-instance v0, Lnd/c;

    invoke-direct {v0, p0, p1}, Lnd/c;-><init>(Lbc/c;Lhd/A;)V

    move-object p0, v0

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p0, p0, Lbc/c;->b:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p1}, Lid/b;->j(Lhd/T;)J

    move-result-wide v4

    const-wide/16 v6, -0x1

    cmp-long p1, v4, v6

    if-eqz p1, :cond_3

    invoke-virtual {p0, v4, v5}, Lbc/c;->j(J)Lnd/d;

    move-result-object p0

    goto :goto_0

    :cond_3
    iget p1, p0, Lbc/c;->b:I

    if-ne p1, v3, :cond_4

    iput v2, p0, Lbc/c;->b:I

    iget-object p1, p0, Lbc/c;->d:Ljava/lang/Object;

    check-cast p1, Lld/k;

    invoke-virtual {p1}, Lld/k;->k()V

    new-instance p1, Lnd/f;

    invoke-direct {p1, p0}, Lnd/a;-><init>(Lbc/c;)V

    move-object p0, p1

    :goto_0
    return-object p0

    :cond_4
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p0, p0, Lbc/c;->b:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public i()Z
    .locals 2

    iget v0, p0, Lbc/c;->b:I

    iget-object v1, p0, Lbc/c;->f:Ljava/lang/Object;

    check-cast v1, Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lbc/c;->h:Ljava/lang/Object;

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_1

    :goto_0
    const/4 p0, 0x1

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    :goto_1
    return p0
.end method

.method public j(J)Lnd/d;
    .locals 2

    iget v0, p0, Lbc/c;->b:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x5

    iput v0, p0, Lbc/c;->b:I

    new-instance v0, Lnd/d;

    invoke-direct {v0, p0, p1, p2}, Lnd/d;-><init>(Lbc/c;J)V

    return-object v0

    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "state: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p0, p0, Lbc/c;->b:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public k(Lhd/y;Ljava/lang/String;)V
    .locals 4

    const-string v0, "requestLine"

    invoke-static {p2, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget v0, p0, Lbc/c;->b:I

    if-nez v0, :cond_1

    iget-object v0, p0, Lbc/c;->f:Ljava/lang/Object;

    check-cast v0, Lwd/s;

    invoke-virtual {v0, p2}, Lwd/s;->C(Ljava/lang/String;)Lwd/h;

    const-string p2, "\r\n"

    invoke-virtual {v0, p2}, Lwd/s;->C(Ljava/lang/String;)Lwd/h;

    invoke-virtual {p1}, Lhd/y;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    invoke-virtual {p1, v2}, Lhd/y;->i(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lwd/s;->C(Ljava/lang/String;)Lwd/h;

    const-string v3, ": "

    invoke-virtual {v0, v3}, Lwd/s;->C(Ljava/lang/String;)Lwd/h;

    invoke-virtual {p1, v2}, Lhd/y;->n(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Lwd/h;->C(Ljava/lang/String;)Lwd/h;

    invoke-interface {v0, p2}, Lwd/h;->C(Ljava/lang/String;)Lwd/h;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p2}, Lwd/s;->C(Ljava/lang/String;)Lwd/h;

    const/4 p1, 0x1

    iput p1, p0, Lbc/c;->b:I

    return-void

    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "state: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p0, p0, Lbc/c;->b:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    iget v0, p0, Lbc/c;->a:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lbc/c;->c:Ljava/lang/Object;

    check-cast v1, Lbc/b;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " version="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lbc/c;->d:Ljava/lang/Object;

    check-cast p0, Lec/f;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
