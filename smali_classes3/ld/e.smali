.class public final Lld/e;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:LV/M;

.field public final b:Lhd/a;

.field public final c:Lld/i;

.field public d:LMd/c;

.field public e:Lbc/c;

.field public f:I

.field public g:I

.field public h:I

.field public i:Lhd/Y;


# direct methods
.method public constructor <init>(LV/M;Lhd/a;Lld/i;)V
    .locals 1

    const-string v0, "connectionPool"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "call"

    invoke-static {p3, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lld/e;->a:LV/M;

    iput-object p2, p0, Lld/e;->b:Lhd/a;

    iput-object p3, p0, Lld/e;->c:Lld/i;

    return-void
.end method


# virtual methods
.method public final a(IIIZZ)Lld/k;
    .locals 13

    move-object v1, p0

    const/4 v0, 0x1

    :cond_0
    :goto_0
    iget-object v2, v1, Lld/e;->c:Lld/i;

    iget-boolean v2, v2, Lld/i;->n:Z

    if-nez v2, :cond_25

    iget-object v2, v1, Lld/e;->c:Lld/i;

    iget-object v2, v2, Lld/i;->h:Lld/k;

    const/4 v3, 0x0

    if-eqz v2, :cond_6

    monitor-enter v2

    :try_start_0
    iget-boolean v4, v2, Lld/k;->j:Z

    if-nez v4, :cond_2

    iget-object v4, v2, Lld/k;->b:Lhd/Y;

    iget-object v4, v4, Lhd/Y;->a:Lhd/a;

    iget-object v4, v4, Lhd/a;->i:Lhd/A;

    invoke-virtual {p0, v4}, Lld/e;->b(Lhd/A;)Z

    move-result v4

    if-nez v4, :cond_1

    goto :goto_1

    :cond_1
    move-object v4, v3

    goto :goto_2

    :catchall_0
    move-exception v0

    goto :goto_4

    :cond_2
    :goto_1
    iget-object v4, v1, Lld/e;->c:Lld/i;

    invoke-virtual {v4}, Lld/i;->h()Ljava/net/Socket;

    move-result-object v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_2
    monitor-exit v2

    iget-object v5, v1, Lld/e;->c:Lld/i;

    iget-object v5, v5, Lld/i;->h:Lld/k;

    if-eqz v5, :cond_4

    if-nez v4, :cond_3

    :goto_3
    move/from16 v3, p5

    goto/16 :goto_11

    :cond_3
    const-string v0, "Check failed."

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_4
    if-eqz v4, :cond_5

    invoke-static {v4}, Lid/b;->d(Ljava/net/Socket;)V

    :cond_5
    iget-object v2, v1, Lld/e;->c:Lld/i;

    const-string v4, "call"

    invoke-static {v2, v4}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_5

    :goto_4
    monitor-exit v2

    throw v0

    :cond_6
    :goto_5
    const/4 v2, 0x0

    iput v2, v1, Lld/e;->f:I

    iput v2, v1, Lld/e;->g:I

    iput v2, v1, Lld/e;->h:I

    iget-object v4, v1, Lld/e;->a:LV/M;

    iget-object v5, v1, Lld/e;->b:Lhd/a;

    iget-object v6, v1, Lld/e;->c:Lld/i;

    invoke-virtual {v4, v5, v6, v3, v2}, LV/M;->a(Lhd/a;Lld/i;Ljava/util/ArrayList;Z)Z

    move-result v4

    if-eqz v4, :cond_7

    iget-object v2, v1, Lld/e;->c:Lld/i;

    iget-object v2, v2, Lld/i;->h:Lld/k;

    invoke-static {v2}, Ltb/k;->c(Ljava/lang/Object;)V

    iget-object v3, v1, Lld/e;->c:Lld/i;

    const-string v4, "call"

    invoke-static {v3, v4}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_3

    :cond_7
    iget-object v4, v1, Lld/e;->i:Lhd/Y;

    if-eqz v4, :cond_8

    iput-object v3, v1, Lld/e;->i:Lhd/Y;

    :goto_6
    move-object v5, v3

    goto/16 :goto_10

    :cond_8
    iget-object v4, v1, Lld/e;->d:LMd/c;

    if-eqz v4, :cond_a

    invoke-virtual {v4}, LMd/c;->e()Z

    move-result v4

    if-eqz v4, :cond_a

    iget-object v2, v1, Lld/e;->d:LMd/c;

    invoke-static {v2}, Ltb/k;->c(Ljava/lang/Object;)V

    invoke-virtual {v2}, LMd/c;->e()Z

    move-result v4

    if-eqz v4, :cond_9

    iget v4, v2, LMd/c;->b:I

    add-int/lit8 v5, v4, 0x1

    iput v5, v2, LMd/c;->b:I

    iget-object v2, v2, LMd/c;->c:Ljava/lang/Object;

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Lhd/Y;

    goto :goto_6

    :cond_9
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    :cond_a
    iget-object v4, v1, Lld/e;->e:Lbc/c;

    if-nez v4, :cond_b

    new-instance v4, Lbc/c;

    iget-object v5, v1, Lld/e;->b:Lhd/a;

    iget-object v6, v1, Lld/e;->c:Lld/i;

    iget-object v7, v6, Lld/i;->a:Lhd/I;

    iget-object v7, v7, Lhd/I;->A:LI3/c;

    invoke-direct {v4, v5, v7, v6}, Lbc/c;-><init>(Lhd/a;LI3/c;Lhd/j;)V

    iput-object v4, v1, Lld/e;->e:Lbc/c;

    :cond_b
    invoke-virtual {v4}, Lbc/c;->i()Z

    move-result v5

    if-eqz v5, :cond_24

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    :cond_c
    iget v6, v4, Lbc/c;->b:I

    iget-object v7, v4, Lbc/c;->f:Ljava/lang/Object;

    check-cast v7, Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-ge v6, v7, :cond_1a

    iget v6, v4, Lbc/c;->b:I

    iget-object v7, v4, Lbc/c;->f:Ljava/lang/Object;

    check-cast v7, Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-ge v6, v7, :cond_d

    move v6, v0

    goto :goto_7

    :cond_d
    move v6, v2

    :goto_7
    iget-object v7, v4, Lbc/c;->c:Ljava/lang/Object;

    check-cast v7, Lhd/a;

    const-string v8, "No route to "

    if-eqz v6, :cond_19

    iget-object v6, v4, Lbc/c;->f:Ljava/lang/Object;

    check-cast v6, Ljava/util/List;

    iget v9, v4, Lbc/c;->b:I

    add-int/lit8 v10, v9, 0x1

    iput v10, v4, Lbc/c;->b:I

    invoke-interface {v6, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/net/Proxy;

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iput-object v9, v4, Lbc/c;->g:Ljava/lang/Object;

    invoke-virtual {v6}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v10

    sget-object v11, Ljava/net/Proxy$Type;->DIRECT:Ljava/net/Proxy$Type;

    if-eq v10, v11, :cond_11

    invoke-virtual {v6}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v10

    sget-object v11, Ljava/net/Proxy$Type;->SOCKS:Ljava/net/Proxy$Type;

    if-ne v10, v11, :cond_e

    goto :goto_9

    :cond_e
    invoke-virtual {v6}, Ljava/net/Proxy;->address()Ljava/net/SocketAddress;

    move-result-object v10

    instance-of v11, v10, Ljava/net/InetSocketAddress;

    if-eqz v11, :cond_10

    const-string v11, "proxyAddress"

    invoke-static {v10, v11}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v10, Ljava/net/InetSocketAddress;

    const-string v11, "<this>"

    invoke-static {v10, v11}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v10}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v11

    if-nez v11, :cond_f

    invoke-virtual {v10}, Ljava/net/InetSocketAddress;->getHostName()Ljava/lang/String;

    move-result-object v11

    const-string v12, "hostName"

    invoke-static {v11, v12}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_8

    :cond_f
    invoke-virtual {v11}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v11

    const-string v12, "address.hostAddress"

    invoke-static {v11, v12}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_8
    invoke-virtual {v10}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v10

    goto :goto_a

    :cond_10
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Proxy.address() is not an InetSocketAddress: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_11
    :goto_9
    iget-object v10, v7, Lhd/a;->i:Lhd/A;

    iget-object v11, v10, Lhd/A;->d:Ljava/lang/String;

    iget v10, v10, Lhd/A;->e:I

    :goto_a
    if-gt v0, v10, :cond_18

    const/high16 v12, 0x10000

    if-ge v10, v12, :cond_18

    invoke-virtual {v6}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v8

    sget-object v12, Ljava/net/Proxy$Type;->SOCKS:Ljava/net/Proxy$Type;

    if-ne v8, v12, :cond_12

    invoke-static {v11, v10}, Ljava/net/InetSocketAddress;->createUnresolved(Ljava/lang/String;I)Ljava/net/InetSocketAddress;

    move-result-object v7

    invoke-virtual {v9, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_d

    :cond_12
    sget-object v8, Lid/b;->a:[B

    const-string v8, "<this>"

    invoke-static {v11, v8}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v8, Lid/b;->f:LKc/j;

    invoke-virtual {v8, v11}, LKc/j;->b(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_13

    invoke-static {v11}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v7

    invoke-static {v7}, LG5/o3;->d(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    goto :goto_b

    :cond_13
    iget-object v8, v4, Lbc/c;->e:Ljava/lang/Object;

    check-cast v8, Lhd/j;

    const-string v12, "call"

    invoke-static {v8, v12}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v8, v7, Lhd/a;->a:Lhd/b;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_1
    invoke-static {v11}, Ljava/net/InetAddress;->getAllByName(Ljava/lang/String;)[Ljava/net/InetAddress;

    move-result-object v8

    const-string v12, "getAllByName(hostname)"

    invoke-static {v8, v12}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v8}, Lfb/l;->F([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_17

    move-object v7, v8

    :goto_b
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_c
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_14

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/net/InetAddress;

    new-instance v11, Ljava/net/InetSocketAddress;

    invoke-direct {v11, v8, v10}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_c

    :cond_14
    :goto_d
    iget-object v7, v4, Lbc/c;->g:Ljava/lang/Object;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_e
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_16

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/net/InetSocketAddress;

    new-instance v9, Lhd/Y;

    iget-object v10, v4, Lbc/c;->c:Ljava/lang/Object;

    check-cast v10, Lhd/a;

    invoke-direct {v9, v10, v6, v8}, Lhd/Y;-><init>(Lhd/a;Ljava/net/Proxy;Ljava/net/InetSocketAddress;)V

    iget-object v8, v4, Lbc/c;->d:Ljava/lang/Object;

    check-cast v8, LI3/c;

    monitor-enter v8

    :try_start_2
    iget-object v10, v8, LI3/c;->b:Ljava/lang/Object;

    check-cast v10, Ljava/util/LinkedHashSet;

    invoke-interface {v10, v9}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v10
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit v8

    if-eqz v10, :cond_15

    iget-object v8, v4, Lbc/c;->h:Ljava/lang/Object;

    check-cast v8, Ljava/util/ArrayList;

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_e

    :cond_15
    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_e

    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0

    :cond_16
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_c

    goto :goto_f

    :cond_17
    new-instance v0, Ljava/net/UnknownHostException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v7, Lhd/a;->a:Lhd/b;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " returned no addresses for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/net/UnknownHostException;

    const-string v2, "Broken system behaviour for dns lookup of "

    invoke-virtual {v2, v11}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    throw v1

    :cond_18
    new-instance v0, Ljava/net/SocketException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x3a

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "; port is out of range"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_19
    new-instance v0, Ljava/net/SocketException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v7, Lhd/a;->i:Lhd/A;

    iget-object v2, v2, Lhd/A;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "; exhausted proxy configurations: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v4, Lbc/c;->f:Ljava/lang/Object;

    check-cast v2, Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1a
    :goto_f
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_1b

    iget-object v6, v4, Lbc/c;->h:Ljava/lang/Object;

    check-cast v6, Ljava/util/ArrayList;

    invoke-static {v6, v5}, Lfb/t;->q(Ljava/lang/Iterable;Ljava/util/Collection;)V

    iget-object v4, v4, Lbc/c;->h:Ljava/lang/Object;

    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    :cond_1b
    new-instance v4, LMd/c;

    invoke-direct {v4, v5}, LMd/c;-><init>(Ljava/util/ArrayList;)V

    iput-object v4, v1, Lld/e;->d:LMd/c;

    iget-object v6, v1, Lld/e;->c:Lld/i;

    iget-boolean v6, v6, Lld/i;->n:Z

    if-nez v6, :cond_23

    iget-object v6, v1, Lld/e;->a:LV/M;

    iget-object v7, v1, Lld/e;->b:Lhd/a;

    iget-object v8, v1, Lld/e;->c:Lld/i;

    invoke-virtual {v6, v7, v8, v5, v2}, LV/M;->a(Lhd/a;Lld/i;Ljava/util/ArrayList;Z)Z

    move-result v2

    if-eqz v2, :cond_1c

    iget-object v2, v1, Lld/e;->c:Lld/i;

    iget-object v2, v2, Lld/i;->h:Lld/k;

    invoke-static {v2}, Ltb/k;->c(Ljava/lang/Object;)V

    iget-object v3, v1, Lld/e;->c:Lld/i;

    const-string v4, "call"

    invoke-static {v3, v4}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_1c
    invoke-virtual {v4}, LMd/c;->e()Z

    move-result v2

    if-eqz v2, :cond_22

    iget v2, v4, LMd/c;->b:I

    add-int/lit8 v6, v2, 0x1

    iput v6, v4, LMd/c;->b:I

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Lhd/Y;

    :goto_10
    new-instance v2, Lld/k;

    iget-object v6, v1, Lld/e;->a:LV/M;

    invoke-direct {v2, v6, v4}, Lld/k;-><init>(LV/M;Lhd/Y;)V

    iget-object v6, v1, Lld/e;->c:Lld/i;

    iput-object v2, v6, Lld/i;->p:Lld/k;

    :try_start_4
    iget-object v11, v1, Lld/e;->c:Lld/i;

    move-object v6, v2

    move v7, p1

    move v8, p2

    move/from16 v9, p3

    move/from16 v10, p4

    invoke-virtual/range {v6 .. v11}, Lld/k;->c(IIIZLhd/j;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    iget-object v6, v1, Lld/e;->c:Lld/i;

    iput-object v3, v6, Lld/i;->p:Lld/k;

    iget-object v3, v1, Lld/e;->c:Lld/i;

    iget-object v3, v3, Lld/i;->a:Lhd/I;

    iget-object v6, v3, Lhd/I;->A:LI3/c;

    monitor-enter v6

    :try_start_5
    iget-object v3, v6, LI3/c;->b:Ljava/lang/Object;

    check-cast v3, Ljava/util/LinkedHashSet;

    invoke-interface {v3, v4}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    monitor-exit v6

    iget-object v3, v1, Lld/e;->a:LV/M;

    iget-object v6, v1, Lld/e;->b:Lhd/a;

    iget-object v7, v1, Lld/e;->c:Lld/i;

    invoke-virtual {v3, v6, v7, v5, v0}, LV/M;->a(Lhd/a;Lld/i;Ljava/util/ArrayList;Z)Z

    move-result v3

    if-eqz v3, :cond_1d

    iget-object v3, v1, Lld/e;->c:Lld/i;

    iget-object v3, v3, Lld/i;->h:Lld/k;

    invoke-static {v3}, Ltb/k;->c(Ljava/lang/Object;)V

    iput-object v4, v1, Lld/e;->i:Lhd/Y;

    iget-object v2, v2, Lld/k;->d:Ljava/net/Socket;

    invoke-static {v2}, Ltb/k;->c(Ljava/lang/Object;)V

    invoke-static {v2}, Lid/b;->d(Ljava/net/Socket;)V

    iget-object v2, v1, Lld/e;->c:Lld/i;

    const-string v4, "call"

    invoke-static {v2, v4}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v2, v3

    goto/16 :goto_3

    :cond_1d
    monitor-enter v2

    :try_start_6
    iget-object v3, v1, Lld/e;->a:LV/M;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v4, Lid/b;->a:[B

    iget-object v4, v3, LV/M;->d:Ljava/lang/Object;

    check-cast v4, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v4, v2}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    iget-object v4, v3, LV/M;->b:Ljava/lang/Object;

    check-cast v4, Lkd/b;

    iget-object v3, v3, LV/M;->c:Ljava/lang/Object;

    check-cast v3, Ljd/f;

    invoke-static {v4, v3}, Lkd/b;->d(Lkd/b;Lkd/a;)V

    iget-object v3, v1, Lld/e;->c:Lld/i;

    invoke-virtual {v3, v2}, Lld/i;->a(Lld/k;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    monitor-exit v2

    iget-object v3, v1, Lld/e;->c:Lld/i;

    const-string v4, "call"

    invoke-static {v3, v4}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_3

    :goto_11
    invoke-virtual {v2, v3}, Lld/k;->i(Z)Z

    move-result v4

    if-eqz v4, :cond_1e

    return-object v2

    :cond_1e
    invoke-virtual {v2}, Lld/k;->k()V

    iget-object v2, v1, Lld/e;->i:Lhd/Y;

    if-nez v2, :cond_0

    iget-object v2, v1, Lld/e;->d:LMd/c;

    if-eqz v2, :cond_1f

    invoke-virtual {v2}, LMd/c;->e()Z

    move-result v2

    goto :goto_12

    :cond_1f
    move v2, v0

    :goto_12
    if-nez v2, :cond_0

    iget-object v2, v1, Lld/e;->e:Lbc/c;

    if-eqz v2, :cond_20

    invoke-virtual {v2}, Lbc/c;->i()Z

    move-result v2

    goto :goto_13

    :cond_20
    move v2, v0

    :goto_13
    if-eqz v2, :cond_21

    goto/16 :goto_0

    :cond_21
    new-instance v0, Ljava/io/IOException;

    const-string v1, "exhausted all routes"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_2
    move-exception v0

    monitor-exit v2

    throw v0

    :catchall_3
    move-exception v0

    :try_start_7
    monitor-exit v6
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    throw v0

    :catchall_4
    move-exception v0

    iget-object v1, v1, Lld/e;->c:Lld/i;

    iput-object v3, v1, Lld/i;->p:Lld/k;

    throw v0

    :cond_22
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    :cond_23
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Canceled"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_24
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    :cond_25
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Canceled"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final b(Lhd/A;)Z
    .locals 2

    const-string v0, "url"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lld/e;->b:Lhd/a;

    iget-object p0, p0, Lhd/a;->i:Lhd/A;

    iget v0, p0, Lhd/A;->e:I

    iget v1, p1, Lhd/A;->e:I

    if-ne v1, v0, :cond_0

    iget-object p1, p1, Lhd/A;->d:Ljava/lang/String;

    iget-object p0, p0, Lhd/A;->d:Ljava/lang/String;

    invoke-static {p1, p0}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final c(Ljava/io/IOException;)V
    .locals 2

    const-string v0, "e"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lld/e;->i:Lhd/Y;

    instance-of v0, p1, Lod/D;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lod/D;

    iget-object v0, v0, Lod/D;->a:Lod/c;

    sget-object v1, Lod/c;->REFUSED_STREAM:Lod/c;

    if-ne v0, v1, :cond_0

    iget p1, p0, Lld/e;->f:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lld/e;->f:I

    goto :goto_0

    :cond_0
    instance-of p1, p1, Lod/a;

    if-eqz p1, :cond_1

    iget p1, p0, Lld/e;->g:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lld/e;->g:I

    goto :goto_0

    :cond_1
    iget p1, p0, Lld/e;->h:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lld/e;->h:I

    :goto_0
    return-void
.end method
