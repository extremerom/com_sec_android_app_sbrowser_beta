.class public final Lod/r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lmd/d;


# static fields
.field public static final g:Ljava/util/List;

.field public static final h:Ljava/util/List;


# instance fields
.field public final a:Lld/k;

.field public final b:Lmd/f;

.field public final c:Lod/q;

.field public volatile d:Lod/y;

.field public final e:Lhd/K;

.field public volatile f:Z


# direct methods
.method static constructor <clinit>()V
    .locals 12

    const-string v8, ":method"

    const-string v9, ":path"

    const-string v0, "connection"

    const-string v1, "host"

    const-string v2, "keep-alive"

    const-string v3, "proxy-connection"

    const-string v4, "te"

    const-string v5, "transfer-encoding"

    const-string v6, "encoding"

    const-string v7, "upgrade"

    const-string v10, ":scheme"

    const-string v11, ":authority"

    filled-new-array/range {v0 .. v11}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lid/b;->k([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lod/r;->g:Ljava/util/List;

    const-string v5, "te"

    const-string v6, "transfer-encoding"

    const-string v1, "connection"

    const-string v2, "host"

    const-string v3, "keep-alive"

    const-string v4, "proxy-connection"

    const-string v7, "encoding"

    const-string v8, "upgrade"

    filled-new-array/range {v1 .. v8}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lid/b;->k([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lod/r;->h:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Lhd/I;Lld/k;Lmd/f;Lod/q;)V
    .locals 1

    const-string v0, "client"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "connection"

    invoke-static {p2, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "http2Connection"

    invoke-static {p4, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lod/r;->a:Lld/k;

    iput-object p3, p0, Lod/r;->b:Lmd/f;

    iput-object p4, p0, Lod/r;->c:Lod/q;

    sget-object p2, Lhd/K;->H2_PRIOR_KNOWLEDGE:Lhd/K;

    iget-object p1, p1, Lhd/I;->t:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    sget-object p2, Lhd/K;->HTTP_2:Lhd/K;

    :goto_0
    iput-object p2, p0, Lod/r;->e:Lhd/K;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    iget-object p0, p0, Lod/r;->d:Lod/y;

    invoke-static {p0}, Ltb/k;->c(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lod/y;->f()Lod/v;

    move-result-object p0

    invoke-virtual {p0}, Lod/v;->close()V

    return-void
.end method

.method public final b()Lld/k;
    .locals 0

    iget-object p0, p0, Lod/r;->a:Lld/k;

    return-object p0
.end method

.method public final c(Lhd/M;)V
    .locals 14

    const-string v0, "request"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lod/r;->d:Lod/y;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p1, Lhd/M;->d:Lhd/Q;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    new-instance v3, Ljava/util/ArrayList;

    iget-object v4, p1, Lhd/M;->c:Lhd/y;

    invoke-virtual {v4}, Lhd/y;->size()I

    move-result v5

    add-int/lit8 v5, v5, 0x4

    invoke-direct {v3, v5}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v5, Lod/d;

    sget-object v6, Lod/d;->f:Lwd/j;

    iget-object v7, p1, Lhd/M;->b:Ljava/lang/String;

    invoke-direct {v5, v6, v7}, Lod/d;-><init>(Lwd/j;Ljava/lang/String;)V

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v5, Lod/d;

    sget-object v6, Lod/d;->g:Lwd/j;

    const-string v7, "url"

    iget-object v8, p1, Lhd/M;->a:Lhd/A;

    invoke-static {v8, v7}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v8}, Lhd/A;->b()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8}, Lhd/A;->d()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_2

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v7, 0x3f

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    :cond_2
    invoke-direct {v5, v6, v7}, Lod/d;-><init>(Lwd/j;Ljava/lang/String;)V

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v5, "Host"

    iget-object p1, p1, Lhd/M;->c:Lhd/y;

    invoke-virtual {p1, v5}, Lhd/y;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_3

    new-instance v5, Lod/d;

    sget-object v6, Lod/d;->i:Lwd/j;

    invoke-direct {v5, v6, p1}, Lod/d;-><init>(Lwd/j;Ljava/lang/String;)V

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    new-instance p1, Lod/d;

    sget-object v5, Lod/d;->h:Lwd/j;

    iget-object v6, v8, Lhd/A;->a:Ljava/lang/String;

    invoke-direct {p1, v5, v6}, Lod/d;-><init>(Lwd/j;Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v4}, Lhd/y;->size()I

    move-result p1

    move v5, v2

    :goto_1
    if-ge v5, p1, :cond_6

    invoke-virtual {v4, v5}, Lhd/y;->i(I)Ljava/lang/String;

    move-result-object v6

    sget-object v7, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v8, "US"

    invoke-static {v7, v8}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v6, v7}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "this as java.lang.String).toLowerCase(locale)"

    invoke-static {v6, v7}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v7, Lod/r;->g:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    const-string v7, "te"

    invoke-virtual {v6, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-virtual {v4, v5}, Lhd/y;->n(I)Ljava/lang/String;

    move-result-object v7

    const-string v8, "trailers"

    invoke-static {v7, v8}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    :cond_4
    new-instance v7, Lod/d;

    invoke-virtual {v4, v5}, Lhd/y;->n(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v6, v8}, Lod/d;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_6
    iget-object p1, p0, Lod/r;->c:Lod/q;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    xor-int/lit8 v4, v0, 0x1

    iget-object v5, p1, Lod/q;->w:Lod/z;

    monitor-enter v5

    :try_start_0
    monitor-enter p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget v6, p1, Lod/q;->e:I

    const v7, 0x3fffffff    # 1.9999999f

    if-le v6, v7, :cond_7

    sget-object v6, Lod/c;->REFUSED_STREAM:Lod/c;

    invoke-virtual {p1, v6}, Lod/q;->e(Lod/c;)V

    goto :goto_2

    :catchall_0
    move-exception p0

    goto/16 :goto_4

    :cond_7
    :goto_2
    iget-boolean v6, p1, Lod/q;->f:Z

    if-nez v6, :cond_d

    iget v12, p1, Lod/q;->e:I

    add-int/lit8 v6, v12, 0x2

    iput v6, p1, Lod/q;->e:I

    new-instance v13, Lod/y;

    const/4 v11, 0x0

    const/4 v10, 0x0

    move-object v6, v13

    move v7, v12

    move-object v8, p1

    move v9, v4

    invoke-direct/range {v6 .. v11}, Lod/y;-><init>(ILod/q;ZZLhd/y;)V

    if-eqz v0, :cond_9

    iget-wide v6, p1, Lod/q;->t:J

    iget-wide v8, p1, Lod/q;->u:J

    cmp-long v0, v6, v8

    if-gez v0, :cond_9

    iget-wide v6, v13, Lod/y;->e:J

    iget-wide v8, v13, Lod/y;->f:J

    cmp-long v0, v6, v8

    if-ltz v0, :cond_8

    goto :goto_3

    :cond_8
    move v1, v2

    :cond_9
    :goto_3
    invoke-virtual {v13}, Lod/y;->h()Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p1, Lod/q;->b:Ljava/util/LinkedHashMap;

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_a
    :try_start_2
    monitor-exit p1

    iget-object v0, p1, Lod/q;->w:Lod/z;

    invoke-virtual {v0, v3, v12, v4}, Lod/z;->e(Ljava/util/ArrayList;IZ)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit v5

    if-eqz v1, :cond_b

    iget-object p1, p1, Lod/q;->w:Lod/z;

    invoke-virtual {p1}, Lod/z;->flush()V

    :cond_b
    iput-object v13, p0, Lod/r;->d:Lod/y;

    iget-boolean p1, p0, Lod/r;->f:Z

    if-nez p1, :cond_c

    iget-object p1, p0, Lod/r;->d:Lod/y;

    invoke-static {p1}, Ltb/k;->c(Ljava/lang/Object;)V

    iget-object p1, p1, Lod/y;->k:Lod/x;

    iget-object v0, p0, Lod/r;->b:Lmd/f;

    iget v0, v0, Lmd/f;->g:I

    int-to-long v0, v0

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v0, v1, v2}, Lwd/B;->g(JLjava/util/concurrent/TimeUnit;)Lwd/B;

    iget-object p1, p0, Lod/r;->d:Lod/y;

    invoke-static {p1}, Ltb/k;->c(Ljava/lang/Object;)V

    iget-object p1, p1, Lod/y;->l:Lod/x;

    iget-object p0, p0, Lod/r;->b:Lmd/f;

    iget p0, p0, Lmd/f;->h:I

    int-to-long v0, p0

    invoke-virtual {p1, v0, v1, v2}, Lwd/B;->g(JLjava/util/concurrent/TimeUnit;)Lwd/B;

    return-void

    :cond_c
    iget-object p0, p0, Lod/r;->d:Lod/y;

    invoke-static {p0}, Ltb/k;->c(Ljava/lang/Object;)V

    sget-object p1, Lod/c;->CANCEL:Lod/c;

    invoke-virtual {p0, p1}, Lod/y;->e(Lod/c;)V

    new-instance p0, Ljava/io/IOException;

    const-string p1, "Canceled"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_1
    move-exception p0

    goto :goto_5

    :cond_d
    :try_start_3
    new-instance p0, Lod/a;

    invoke-direct {p0}, Ljava/io/IOException;-><init>()V

    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_4
    :try_start_4
    monitor-exit p1

    throw p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :goto_5
    monitor-exit v5

    throw p0
.end method

.method public final cancel()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lod/r;->f:Z

    iget-object p0, p0, Lod/r;->d:Lod/y;

    if-eqz p0, :cond_0

    sget-object v0, Lod/c;->CANCEL:Lod/c;

    invoke-virtual {p0, v0}, Lod/y;->e(Lod/c;)V

    :cond_0
    return-void
.end method

.method public final d(Lhd/T;)J
    .locals 0

    invoke-static {p1}, Lmd/e;->a(Lhd/T;)Z

    move-result p0

    if-nez p0, :cond_0

    const-wide/16 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lid/b;->j(Lhd/T;)J

    move-result-wide p0

    :goto_0
    return-wide p0
.end method

.method public final e(Lhd/M;J)Lwd/x;
    .locals 0

    const-string p2, "request"

    invoke-static {p1, p2}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lod/r;->d:Lod/y;

    invoke-static {p0}, Ltb/k;->c(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lod/y;->f()Lod/v;

    move-result-object p0

    return-object p0
.end method

.method public final f(Z)Lhd/S;
    .locals 10

    iget-object v0, p0, Lod/r;->d:Lod/y;

    if-eqz v0, :cond_8

    monitor-enter v0

    :try_start_0
    iget-object v1, v0, Lod/y;->k:Lod/x;

    invoke-virtual {v1}, Lwd/d;->h()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :goto_0
    :try_start_1
    iget-object v1, v0, Lod/y;->g:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, v0, Lod/y;->m:Lod/c;

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lod/y;->k()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto/16 :goto_5

    :cond_0
    :try_start_2
    iget-object v1, v0, Lod/y;->k:Lod/x;

    invoke-virtual {v1}, Lod/x;->k()V

    iget-object v1, v0, Lod/y;->g:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_6

    iget-object v1, v0, Lod/y;->g:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    move-result-object v1

    const-string v2, "headersQueue.removeFirst()"

    invoke-static {v1, v2}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lhd/y;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit v0

    iget-object p0, p0, Lod/r;->e:Lhd/K;

    const-string v0, "protocol"

    invoke-static {p0, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    const/16 v2, 0x14

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v1}, Lhd/y;->size()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v6, v3

    move v5, v4

    :goto_1
    if-ge v5, v2, :cond_3

    invoke-virtual {v1, v5}, Lhd/y;->i(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v5}, Lhd/y;->n(I)Ljava/lang/String;

    move-result-object v8

    const-string v9, ":status"

    invoke-static {v7, v9}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "HTTP/1.1 "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lg3/p;->d(Ljava/lang/String;)LG5/g4;

    move-result-object v6

    goto :goto_2

    :cond_1
    sget-object v9, Lod/r;->h:Ljava/util/List;

    invoke-interface {v9, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_2

    const-string v9, "name"

    invoke-static {v7, v9}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v9, "value"

    invoke-static {v8, v9}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v8}, LKc/k;->Q(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_3
    if-eqz v6, :cond_5

    new-instance v1, Lhd/S;

    invoke-direct {v1}, Lhd/S;-><init>()V

    iput-object p0, v1, Lhd/S;->b:Lhd/K;

    iget p0, v6, LG5/g4;->b:I

    iput p0, v1, Lhd/S;->c:I

    iget-object p0, v6, LG5/g4;->d:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    iput-object p0, v1, Lhd/S;->d:Ljava/lang/String;

    new-instance p0, Lhd/y;

    new-array v2, v4, [Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    invoke-direct {p0, v0}, Lhd/y;-><init>([Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Lhd/S;->c(Lhd/y;)V

    if-eqz p1, :cond_4

    iget p0, v1, Lhd/S;->c:I

    const/16 p1, 0x64

    if-ne p0, p1, :cond_4

    goto :goto_3

    :cond_4
    move-object v3, v1

    :goto_3
    return-object v3

    :cond_5
    new-instance p0, Ljava/net/ProtocolException;

    const-string p1, "Expected \':status\' header not present"

    invoke-direct {p0, p1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_1
    move-exception p0

    goto :goto_6

    :cond_6
    :try_start_3
    iget-object p0, v0, Lod/y;->n:Ljava/io/IOException;

    if-eqz p0, :cond_7

    goto :goto_4

    :cond_7
    new-instance p0, Lod/D;

    iget-object p1, v0, Lod/y;->m:Lod/c;

    invoke-static {p1}, Ltb/k;->c(Ljava/lang/Object;)V

    invoke-direct {p0, p1}, Lod/D;-><init>(Lod/c;)V

    :goto_4
    throw p0

    :goto_5
    iget-object p1, v0, Lod/y;->k:Lod/x;

    invoke-virtual {p1}, Lod/x;->k()V

    throw p0

    :goto_6
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p0

    :cond_8
    new-instance p0, Ljava/io/IOException;

    const-string p1, "stream wasn\'t created"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final g()V
    .locals 0

    iget-object p0, p0, Lod/r;->c:Lod/q;

    invoke-virtual {p0}, Lod/q;->flush()V

    return-void
.end method

.method public final h(Lhd/T;)Lwd/z;
    .locals 0

    iget-object p0, p0, Lod/r;->d:Lod/y;

    invoke-static {p0}, Ltb/k;->c(Ljava/lang/Object;)V

    iget-object p0, p0, Lod/y;->i:Lod/w;

    return-object p0
.end method
