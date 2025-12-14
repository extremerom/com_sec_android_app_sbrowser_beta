.class public final Lod/u;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;


# static fields
.field public static final d:Ljava/util/logging/Logger;


# instance fields
.field public final a:Lwd/t;

.field public final b:Lod/t;

.field public final c:Lod/e;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-class v0, Lod/h;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    const-string v1, "getLogger(Http2::class.java.name)"

    invoke-static {v0, v1}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v0, Lod/u;->d:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(Lwd/t;)V
    .locals 1

    const-string v0, "source"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lod/u;->a:Lwd/t;

    new-instance v0, Lod/t;

    invoke-direct {v0, p1}, Lod/t;-><init>(Lwd/t;)V

    iput-object v0, p0, Lod/u;->b:Lod/t;

    new-instance p1, Lod/e;

    invoke-direct {p1, v0}, Lod/e;-><init>(Lod/t;)V

    iput-object p1, p0, Lod/u;->c:Lod/e;

    return-void
.end method


# virtual methods
.method public final a(ZLDb/J;)Z
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    const/4 v2, 0x6

    const/4 v3, 0x2

    const/4 v4, 0x1

    const-string v5, "handler"

    invoke-static {v1, v5}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x0

    :try_start_0
    iget-object v6, v0, Lod/u;->a:Lwd/t;

    const-wide/16 v7, 0x9

    invoke-virtual {v6, v7, v8}, Lwd/t;->q(J)V
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v6, v0, Lod/u;->a:Lwd/t;

    invoke-static {v6}, Lid/b;->s(Lwd/t;)I

    move-result v6

    const/16 v7, 0x4000

    if-gt v6, v7, :cond_2d

    iget-object v8, v0, Lod/u;->a:Lwd/t;

    invoke-virtual {v8}, Lwd/t;->c()B

    move-result v8

    and-int/lit16 v8, v8, 0xff

    iget-object v9, v0, Lod/u;->a:Lwd/t;

    invoke-virtual {v9}, Lwd/t;->c()B

    move-result v9

    and-int/lit16 v10, v9, 0xff

    iget-object v11, v0, Lod/u;->a:Lwd/t;

    invoke-virtual {v11}, Lwd/t;->h()I

    move-result v11

    const v12, 0x7fffffff

    and-int/2addr v12, v11

    sget-object v13, Lod/u;->d:Ljava/util/logging/Logger;

    sget-object v14, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v13, v14}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v14

    if-eqz v14, :cond_0

    invoke-static {v12, v6, v8, v10, v4}, Lod/h;->a(IIIIZ)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    :cond_0
    const/4 v13, 0x4

    if-eqz p1, :cond_3

    if-ne v8, v13, :cond_1

    goto :goto_1

    :cond_1
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Expected a SETTINGS frame but was "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lod/h;->b:[Ljava/lang/String;

    array-length v3, v2

    if-ge v8, v3, :cond_2

    aget-object v2, v2, v8

    goto :goto_0

    :cond_2
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "0x%02x"

    invoke-static {v3, v2}, Lid/b;->h(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    :goto_1
    const/16 v7, 0x8

    const-wide/16 v14, 0x0

    packed-switch v8, :pswitch_data_0

    iget-object v0, v0, Lod/u;->a:Lwd/t;

    int-to-long v1, v6

    invoke-virtual {v0, v1, v2}, Lwd/t;->t(J)V

    goto/16 :goto_b

    :pswitch_0
    if-ne v6, v13, :cond_7

    iget-object v0, v0, Lod/u;->a:Lwd/t;

    invoke-virtual {v0}, Lwd/t;->h()I

    move-result v0

    int-to-long v2, v0

    const-wide/32 v5, 0x7fffffff

    and-long/2addr v2, v5

    cmp-long v0, v2, v14

    if-eqz v0, :cond_6

    if-nez v12, :cond_4

    iget-object v0, v1, LDb/J;->c:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lod/q;

    monitor-enter v1

    :try_start_1
    iget-wide v5, v1, Lod/q;->u:J

    add-long/2addr v5, v2

    iput-wide v5, v1, Lod/q;->u:J

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v1

    goto/16 :goto_b

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_4
    iget-object v1, v1, LDb/J;->c:Ljava/lang/Object;

    check-cast v1, Lod/q;

    invoke-virtual {v1, v12}, Lod/q;->c(I)Lod/y;

    move-result-object v1

    if-eqz v1, :cond_2c

    monitor-enter v1

    :try_start_2
    iget-wide v5, v1, Lod/y;->f:J

    add-long/2addr v5, v2

    iput-wide v5, v1, Lod/y;->f:J

    if-lez v0, :cond_5

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :cond_5
    monitor-exit v1

    goto/16 :goto_b

    :catchall_1
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_6
    new-instance v0, Ljava/io/IOException;

    const-string v1, "windowSizeIncrement was 0"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    new-instance v0, Ljava/io/IOException;

    const-string v1, "TYPE_WINDOW_UPDATE length !=4: "

    invoke-static {v6, v1}, Lcom/sec/android/app/sbrowser/autofill/password/k;->i(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_1
    if-lt v6, v7, :cond_e

    if-nez v12, :cond_d

    iget-object v2, v0, Lod/u;->a:Lwd/t;

    invoke-virtual {v2}, Lwd/t;->h()I

    move-result v2

    iget-object v3, v0, Lod/u;->a:Lwd/t;

    invoke-virtual {v3}, Lwd/t;->h()I

    move-result v3

    sub-int/2addr v6, v7

    sget-object v7, Lod/c;->Companion:Lod/b;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lod/c;->values()[Lod/c;

    move-result-object v7

    array-length v8, v7

    move v9, v5

    :goto_2
    if-ge v9, v8, :cond_9

    aget-object v10, v7, v9

    invoke-virtual {v10}, Lod/c;->a()I

    move-result v11

    if-ne v11, v3, :cond_8

    move-object v14, v10

    goto :goto_3

    :cond_8
    add-int/2addr v9, v4

    goto :goto_2

    :cond_9
    const/4 v14, 0x0

    :goto_3
    if-eqz v14, :cond_c

    sget-object v3, Lwd/j;->d:Lwd/j;

    if-lez v6, :cond_a

    iget-object v0, v0, Lod/u;->a:Lwd/t;

    int-to-long v6, v6

    invoke-virtual {v0, v6, v7}, Lwd/t;->d(J)Lwd/j;

    move-result-object v3

    :cond_a
    const-string v0, "debugData"

    invoke-static {v3, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Lwd/j;->d()I

    iget-object v0, v1, LDb/J;->c:Ljava/lang/Object;

    move-object v3, v0

    check-cast v3, Lod/q;

    monitor-enter v3

    :try_start_3
    iget-object v0, v3, Lod/q;->b:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    new-array v6, v5, [Lod/y;

    invoke-interface {v0, v6}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    iput-boolean v4, v3, Lod/q;->f:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    monitor-exit v3

    check-cast v0, [Lod/y;

    array-length v3, v0

    :goto_4
    if-ge v5, v3, :cond_2c

    aget-object v6, v0, v5

    iget v7, v6, Lod/y;->a:I

    if-le v7, v2, :cond_b

    invoke-virtual {v6}, Lod/y;->g()Z

    move-result v7

    if-eqz v7, :cond_b

    sget-object v7, Lod/c;->REFUSED_STREAM:Lod/c;

    invoke-virtual {v6, v7}, Lod/y;->j(Lod/c;)V

    iget-object v7, v1, LDb/J;->c:Ljava/lang/Object;

    check-cast v7, Lod/q;

    iget v6, v6, Lod/y;->a:I

    invoke-virtual {v7, v6}, Lod/q;->d(I)Lod/y;

    :cond_b
    add-int/2addr v5, v4

    goto :goto_4

    :catchall_2
    move-exception v0

    monitor-exit v3

    throw v0

    :cond_c
    new-instance v0, Ljava/io/IOException;

    const-string v1, "TYPE_GOAWAY unexpected error code: "

    invoke-static {v3, v1}, Lcom/sec/android/app/sbrowser/autofill/password/k;->i(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_d
    new-instance v0, Ljava/io/IOException;

    const-string v1, "TYPE_GOAWAY streamId != 0"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_e
    new-instance v0, Ljava/io/IOException;

    const-string v1, "TYPE_GOAWAY length < 8: "

    invoke-static {v6, v1}, Lcom/sec/android/app/sbrowser/autofill/password/k;->i(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_2
    if-ne v6, v7, :cond_14

    if-nez v12, :cond_13

    iget-object v2, v0, Lod/u;->a:Lwd/t;

    invoke-virtual {v2}, Lwd/t;->h()I

    move-result v2

    iget-object v0, v0, Lod/u;->a:Lwd/t;

    invoke-virtual {v0}, Lwd/t;->h()I

    move-result v0

    and-int/lit8 v5, v9, 0x1

    if-eqz v5, :cond_12

    iget-object v0, v1, LDb/J;->c:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lod/q;

    monitor-enter v1

    const-wide/16 v5, 0x1

    if-eq v2, v4, :cond_11

    if-eq v2, v3, :cond_10

    const/4 v0, 0x3

    if-eq v2, v0, :cond_f

    goto :goto_5

    :cond_f
    :try_start_4
    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    goto :goto_5

    :catchall_3
    move-exception v0

    goto :goto_6

    :cond_10
    iget-wide v2, v1, Lod/q;->n:J

    add-long/2addr v2, v5

    iput-wide v2, v1, Lod/q;->n:J

    goto :goto_5

    :cond_11
    iget-wide v2, v1, Lod/q;->l:J

    add-long/2addr v2, v5

    iput-wide v2, v1, Lod/q;->l:J
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    :goto_5
    monitor-exit v1

    goto/16 :goto_b

    :goto_6
    monitor-exit v1

    throw v0

    :cond_12
    iget-object v3, v1, LDb/J;->c:Ljava/lang/Object;

    check-cast v3, Lod/q;

    iget-object v3, v3, Lod/q;->h:Lkd/b;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, v1, LDb/J;->c:Ljava/lang/Object;

    check-cast v6, Lod/q;

    iget-object v6, v6, Lod/q;->c:Ljava/lang/String;

    const-string v7, " ping"

    invoke-static {v5, v6, v7}, Lt/b;->j(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iget-object v1, v1, LDb/J;->c:Ljava/lang/Object;

    check-cast v1, Lod/q;

    new-instance v6, Lod/l;

    invoke-direct {v6, v5, v1, v2, v0}, Lod/l;-><init>(Ljava/lang/String;Lod/q;II)V

    invoke-virtual {v3, v6, v14, v15}, Lkd/b;->c(Lkd/a;J)V

    goto/16 :goto_b

    :cond_13
    new-instance v0, Ljava/io/IOException;

    const-string v1, "TYPE_PING streamId != 0"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_14
    new-instance v0, Ljava/io/IOException;

    const-string v1, "TYPE_PING length != 8: "

    invoke-static {v6, v1}, Lcom/sec/android/app/sbrowser/autofill/password/k;->i(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_3
    invoke-virtual {v0, v1, v6, v10, v12}, Lod/u;->e(LDb/J;III)V

    goto/16 :goto_b

    :pswitch_4
    if-nez v12, :cond_23

    and-int/lit8 v7, v9, 0x1

    if-eqz v7, :cond_16

    if-nez v6, :cond_15

    goto/16 :goto_b

    :cond_15
    new-instance v0, Ljava/io/IOException;

    const-string v1, "FRAME_SIZE_ERROR ack frame should be empty!"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_16
    rem-int/lit8 v7, v6, 0x6

    if-nez v7, :cond_22

    new-instance v7, Lod/C;

    invoke-direct {v7}, Lod/C;-><init>()V

    invoke-static {v5, v6}, LG5/d3;->l(II)Lzb/d;

    move-result-object v5

    invoke-static {v2, v5}, LG5/d3;->k(ILzb/d;)Lzb/b;

    move-result-object v2

    iget v5, v2, Lzb/b;->a:I

    iget v6, v2, Lzb/b;->b:I

    iget v2, v2, Lzb/b;->c:I

    if-lez v2, :cond_17

    if-le v5, v6, :cond_18

    :cond_17
    if-gez v2, :cond_21

    if-gt v6, v5, :cond_21

    :cond_18
    :goto_7
    iget-object v8, v0, Lod/u;->a:Lwd/t;

    invoke-virtual {v8}, Lwd/t;->k()S

    move-result v9

    sget-object v10, Lid/b;->a:[B

    const v10, 0xffff

    and-int/2addr v9, v10

    invoke-virtual {v8}, Lwd/t;->h()I

    move-result v8

    if-eq v9, v3, :cond_1e

    const/4 v10, 0x3

    if-eq v9, v10, :cond_1d

    if-eq v9, v13, :cond_1b

    const/4 v11, 0x5

    if-eq v9, v11, :cond_19

    const/16 v11, 0x4000

    goto :goto_8

    :cond_19
    const/16 v11, 0x4000

    if-lt v8, v11, :cond_1a

    const v12, 0xffffff

    if-gt v8, v12, :cond_1a

    goto :goto_8

    :cond_1a
    new-instance v0, Ljava/io/IOException;

    const-string v1, "PROTOCOL_ERROR SETTINGS_MAX_FRAME_SIZE: "

    invoke-static {v8, v1}, Lcom/sec/android/app/sbrowser/autofill/password/k;->i(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1b
    const/16 v11, 0x4000

    if-ltz v8, :cond_1c

    const/4 v9, 0x7

    goto :goto_8

    :cond_1c
    new-instance v0, Ljava/io/IOException;

    const-string v1, "PROTOCOL_ERROR SETTINGS_INITIAL_WINDOW_SIZE > 2^31 - 1"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1d
    const/16 v11, 0x4000

    move v9, v13

    goto :goto_8

    :cond_1e
    const/4 v10, 0x3

    const/16 v11, 0x4000

    if-eqz v8, :cond_20

    if-ne v8, v4, :cond_1f

    goto :goto_8

    :cond_1f
    new-instance v0, Ljava/io/IOException;

    const-string v1, "PROTOCOL_ERROR SETTINGS_ENABLE_PUSH != 0 or 1"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_20
    :goto_8
    invoke-virtual {v7, v9, v8}, Lod/C;->c(II)V

    if-eq v5, v6, :cond_21

    add-int/2addr v5, v2

    goto :goto_7

    :cond_21
    iget-object v0, v1, LDb/J;->c:Ljava/lang/Object;

    check-cast v0, Lod/q;

    iget-object v2, v0, Lod/q;->h:Lkd/b;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, v0, Lod/q;->c:Ljava/lang/String;

    const-string v6, " applyAndAckSettings"

    invoke-static {v5, v0, v6}, Lt/b;->j(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v5, Lod/k;

    invoke-direct {v5, v3, v1, v7, v0}, Lod/k;-><init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v5, v14, v15}, Lkd/b;->c(Lkd/a;J)V

    goto/16 :goto_b

    :cond_22
    new-instance v0, Ljava/io/IOException;

    const-string v1, "TYPE_SETTINGS length % 6 != 0: "

    invoke-static {v6, v1}, Lcom/sec/android/app/sbrowser/autofill/password/k;->i(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_23
    new-instance v0, Ljava/io/IOException;

    const-string v1, "TYPE_SETTINGS streamId != 0"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_5
    if-ne v6, v13, :cond_29

    if-eqz v12, :cond_28

    iget-object v0, v0, Lod/u;->a:Lwd/t;

    invoke-virtual {v0}, Lwd/t;->h()I

    move-result v0

    sget-object v2, Lod/c;->Companion:Lod/b;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lod/c;->values()[Lod/c;

    move-result-object v2

    array-length v3, v2

    :goto_9
    if-ge v5, v3, :cond_25

    aget-object v6, v2, v5

    invoke-virtual {v6}, Lod/c;->a()I

    move-result v7

    if-ne v7, v0, :cond_24

    goto :goto_a

    :cond_24
    add-int/2addr v5, v4

    goto :goto_9

    :cond_25
    const/4 v6, 0x0

    :goto_a
    if-eqz v6, :cond_27

    iget-object v0, v1, LDb/J;->c:Ljava/lang/Object;

    check-cast v0, Lod/q;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz v12, :cond_26

    and-int/lit8 v1, v11, 0x1

    if-nez v1, :cond_26

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v0, Lod/q;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x5b

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "] onReset"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lod/o;

    invoke-direct {v2, v1, v0, v12, v6}, Lod/o;-><init>(Ljava/lang/String;Lod/q;ILod/c;)V

    iget-object v0, v0, Lod/q;->i:Lkd/b;

    invoke-virtual {v0, v2, v14, v15}, Lkd/b;->c(Lkd/a;J)V

    goto :goto_b

    :cond_26
    invoke-virtual {v0, v12}, Lod/q;->d(I)Lod/y;

    move-result-object v0

    if-eqz v0, :cond_2c

    invoke-virtual {v0, v6}, Lod/y;->j(Lod/c;)V

    goto :goto_b

    :cond_27
    new-instance v1, Ljava/io/IOException;

    const-string v2, "TYPE_RST_STREAM unexpected error code: "

    invoke-static {v0, v2}, Lcom/sec/android/app/sbrowser/autofill/password/k;->i(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_28
    new-instance v0, Ljava/io/IOException;

    const-string v1, "TYPE_RST_STREAM streamId == 0"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_29
    new-instance v0, Ljava/io/IOException;

    const-string v1, "TYPE_RST_STREAM length: "

    const-string v2, " != 4"

    invoke-static {v6, v1, v2}, Lt/b;->f(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_6
    const/4 v1, 0x5

    if-ne v6, v1, :cond_2b

    if-eqz v12, :cond_2a

    iget-object v0, v0, Lod/u;->a:Lwd/t;

    invoke-virtual {v0}, Lwd/t;->h()I

    invoke-virtual {v0}, Lwd/t;->c()B

    goto :goto_b

    :cond_2a
    new-instance v0, Ljava/io/IOException;

    const-string v1, "TYPE_PRIORITY streamId == 0"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2b
    new-instance v0, Ljava/io/IOException;

    const-string v1, "TYPE_PRIORITY length: "

    const-string v2, " != 5"

    invoke-static {v6, v1, v2}, Lt/b;->f(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_7
    invoke-virtual {v0, v1, v6, v10, v12}, Lod/u;->d(LDb/J;III)V

    goto :goto_b

    :pswitch_8
    invoke-virtual {v0, v1, v6, v10, v12}, Lod/u;->b(LDb/J;III)V

    :cond_2c
    :goto_b
    return v4

    :cond_2d
    new-instance v0, Ljava/io/IOException;

    const-string v1, "FRAME_SIZE_ERROR: "

    invoke-static {v6, v1}, Lcom/sec/android/app/sbrowser/autofill/password/k;->i(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_0
    return v5

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final b(LDb/J;III)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p3

    move/from16 v4, p4

    const/4 v3, 0x1

    if-eqz v4, :cond_f

    and-int/lit8 v5, v2, 0x1

    if-eqz v5, :cond_0

    move v7, v3

    goto :goto_0

    :cond_0
    const/4 v7, 0x0

    :goto_0
    and-int/lit8 v5, v2, 0x20

    if-nez v5, :cond_e

    and-int/lit8 v5, v2, 0x8

    if-eqz v5, :cond_1

    iget-object v5, v0, Lod/u;->a:Lwd/t;

    invoke-virtual {v5}, Lwd/t;->c()B

    move-result v5

    sget-object v8, Lid/b;->a:[B

    and-int/lit16 v5, v5, 0xff

    move v8, v5

    move/from16 v5, p2

    goto :goto_1

    :cond_1
    move/from16 v5, p2

    const/4 v8, 0x0

    :goto_1
    invoke-static {v5, v2, v8}, Lod/s;->a(III)I

    move-result v9

    iget-object v2, v0, Lod/u;->a:Lwd/t;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v5, "source"

    invoke-static {v2, v5}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v5, v1, LDb/J;->c:Ljava/lang/Object;

    check-cast v5, Lod/q;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz v4, :cond_2

    and-int/lit8 v5, v4, 0x1

    if-nez v5, :cond_2

    move v5, v3

    goto :goto_2

    :cond_2
    const/4 v5, 0x0

    :goto_2
    const-wide/16 v10, 0x0

    if-eqz v5, :cond_3

    iget-object v1, v1, LDb/J;->c:Ljava/lang/Object;

    move-object v12, v1

    check-cast v12, Lod/q;

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v5, Lwd/g;

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    int-to-long v13, v9

    invoke-virtual {v2, v13, v14}, Lwd/t;->q(J)V

    invoke-virtual {v2, v5, v13, v14}, Lwd/t;->read(Lwd/g;J)J

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v12, Lod/q;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x5b

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "] onData"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v13, Lod/m;

    move-object v1, v13

    move-object v3, v12

    move/from16 v4, p4

    move v6, v9

    invoke-direct/range {v1 .. v7}, Lod/m;-><init>(Ljava/lang/String;Lod/q;ILwd/g;IZ)V

    iget-object v1, v12, Lod/q;->i:Lkd/b;

    invoke-virtual {v1, v13, v10, v11}, Lkd/b;->c(Lkd/a;J)V

    goto/16 :goto_a

    :cond_3
    iget-object v5, v1, LDb/J;->c:Ljava/lang/Object;

    check-cast v5, Lod/q;

    invoke-virtual {v5, v4}, Lod/q;->c(I)Lod/y;

    move-result-object v5

    if-nez v5, :cond_4

    iget-object v3, v1, LDb/J;->c:Ljava/lang/Object;

    check-cast v3, Lod/q;

    sget-object v5, Lod/c;->PROTOCOL_ERROR:Lod/c;

    invoke-virtual {v3, v4, v5}, Lod/q;->j(ILod/c;)V

    iget-object v1, v1, LDb/J;->c:Ljava/lang/Object;

    check-cast v1, Lod/q;

    int-to-long v3, v9

    invoke-virtual {v1, v3, v4}, Lod/q;->f(J)V

    invoke-virtual {v2, v3, v4}, Lwd/t;->t(J)V

    goto/16 :goto_a

    :cond_4
    sget-object v1, Lid/b;->a:[B

    iget-object v1, v5, Lod/y;->i:Lod/w;

    int-to-long v12, v9

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-wide v14, v12

    :goto_3
    cmp-long v4, v14, v10

    if-lez v4, :cond_c

    iget-object v4, v1, Lod/w;->f:Lod/y;

    monitor-enter v4

    :try_start_0
    iget-boolean v9, v1, Lod/w;->b:Z

    iget-object v6, v1, Lod/w;->d:Lwd/g;

    iget-wide v10, v6, Lwd/g;->b:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    add-long/2addr v10, v14

    move-object/from16 p1, v4

    :try_start_1
    iget-wide v3, v1, Lod/w;->a:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    cmp-long v3, v10, v3

    if-lez v3, :cond_5

    const/4 v3, 0x1

    goto :goto_4

    :cond_5
    const/4 v3, 0x0

    :goto_4
    monitor-exit p1

    if-eqz v3, :cond_6

    invoke-virtual {v2, v14, v15}, Lwd/t;->t(J)V

    iget-object v1, v1, Lod/w;->f:Lod/y;

    sget-object v2, Lod/c;->FLOW_CONTROL_ERROR:Lod/c;

    invoke-virtual {v1, v2}, Lod/y;->e(Lod/c;)V

    goto :goto_9

    :cond_6
    if-eqz v9, :cond_7

    invoke-virtual {v2, v14, v15}, Lwd/t;->t(J)V

    goto :goto_9

    :cond_7
    iget-object v3, v1, Lod/w;->c:Lwd/g;

    invoke-virtual {v2, v3, v14, v15}, Lwd/t;->read(Lwd/g;J)J

    move-result-wide v3

    const-wide/16 v9, -0x1

    cmp-long v9, v3, v9

    if-eqz v9, :cond_b

    sub-long/2addr v14, v3

    iget-object v3, v1, Lod/w;->f:Lod/y;

    monitor-enter v3

    :try_start_2
    iget-boolean v4, v1, Lod/w;->e:Z

    if-eqz v4, :cond_8

    iget-object v4, v1, Lod/w;->c:Lwd/g;

    invoke-virtual {v4}, Lwd/g;->a()V

    const-wide/16 v16, 0x0

    goto :goto_6

    :catchall_0
    move-exception v0

    goto :goto_7

    :cond_8
    iget-object v4, v1, Lod/w;->d:Lwd/g;

    iget-wide v9, v4, Lwd/g;->b:J

    const-wide/16 v16, 0x0

    cmp-long v9, v9, v16

    if-nez v9, :cond_9

    const/4 v9, 0x1

    goto :goto_5

    :cond_9
    const/4 v9, 0x0

    :goto_5
    iget-object v10, v1, Lod/w;->c:Lwd/g;

    invoke-virtual {v4, v10}, Lwd/g;->o0(Lwd/z;)J

    if-eqz v9, :cond_a

    invoke-virtual {v3}, Ljava/lang/Object;->notifyAll()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_a
    :goto_6
    monitor-exit v3

    move-wide/from16 v10, v16

    const/4 v3, 0x1

    goto :goto_3

    :goto_7
    monitor-exit v3

    throw v0

    :cond_b
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_8

    :catchall_2
    move-exception v0

    move-object/from16 p1, v4

    :goto_8
    monitor-exit p1

    throw v0

    :cond_c
    sget-object v2, Lid/b;->a:[B

    iget-object v1, v1, Lod/w;->f:Lod/y;

    iget-object v1, v1, Lod/y;->b:Lod/q;

    invoke-virtual {v1, v12, v13}, Lod/q;->f(J)V

    :goto_9
    if-eqz v7, :cond_d

    sget-object v1, Lid/b;->b:Lhd/y;

    const/4 v2, 0x1

    invoke-virtual {v5, v1, v2}, Lod/y;->i(Lhd/y;Z)V

    :cond_d
    :goto_a
    iget-object v0, v0, Lod/u;->a:Lwd/t;

    int-to-long v1, v8

    invoke-virtual {v0, v1, v2}, Lwd/t;->t(J)V

    return-void

    :cond_e
    new-instance v0, Ljava/io/IOException;

    const-string v1, "PROTOCOL_ERROR: FLAG_COMPRESSED without SETTINGS_COMPRESS_DATA"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_f
    new-instance v0, Ljava/io/IOException;

    const-string v1, "PROTOCOL_ERROR: TYPE_DATA streamId == 0"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final c(IIII)Ljava/util/List;
    .locals 5

    const/16 v0, 0x20

    const/16 v1, 0x40

    const/16 v2, 0x80

    iget-object v3, p0, Lod/u;->b:Lod/t;

    iput p1, v3, Lod/t;->e:I

    iput p1, v3, Lod/t;->b:I

    iput p2, v3, Lod/t;->f:I

    iput p3, v3, Lod/t;->c:I

    iput p4, v3, Lod/t;->d:I

    :cond_0
    :goto_0
    iget-object p1, p0, Lod/u;->c:Lod/e;

    iget-object p2, p1, Lod/e;->c:Lwd/t;

    invoke-virtual {p2}, Lwd/t;->a()Z

    move-result p3

    iget-object p4, p1, Lod/e;->b:Ljava/util/ArrayList;

    if-nez p3, :cond_c

    invoke-virtual {p2}, Lwd/t;->c()B

    move-result p2

    sget-object p3, Lid/b;->a:[B

    and-int/lit16 p3, p2, 0xff

    if-eq p3, v2, :cond_b

    and-int/lit16 v3, p2, 0x80

    if-ne v3, v2, :cond_3

    const/16 p2, 0x7f

    invoke-virtual {p1, p3, p2}, Lod/e;->e(II)I

    move-result p2

    add-int/lit8 p3, p2, -0x1

    if-ltz p3, :cond_1

    sget-object v3, Lod/g;->a:[Lod/d;

    array-length v4, v3

    add-int/lit8 v4, v4, -0x1

    if-gt p3, v4, :cond_1

    aget-object p1, v3, p3

    invoke-virtual {p4, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    sget-object v3, Lod/g;->a:[Lod/d;

    array-length v3, v3

    sub-int/2addr p3, v3

    iget v3, p1, Lod/e;->e:I

    add-int/lit8 v3, v3, 0x1

    add-int/2addr v3, p3

    if-ltz v3, :cond_2

    iget-object p1, p1, Lod/e;->d:[Lod/d;

    array-length p3, p1

    if-ge v3, p3, :cond_2

    aget-object p1, p1, v3

    invoke-static {p1}, Ltb/k;->c(Ljava/lang/Object;)V

    invoke-virtual {p4, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Header index too large "

    invoke-static {p2, p1}, Lcom/sec/android/app/sbrowser/autofill/password/k;->i(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    if-ne p3, v1, :cond_4

    sget-object p2, Lod/g;->a:[Lod/d;

    invoke-virtual {p1}, Lod/e;->d()Lwd/j;

    move-result-object p2

    invoke-static {p2}, Lod/g;->a(Lwd/j;)V

    invoke-virtual {p1}, Lod/e;->d()Lwd/j;

    move-result-object p3

    new-instance p4, Lod/d;

    invoke-direct {p4, p2, p3}, Lod/d;-><init>(Lwd/j;Lwd/j;)V

    invoke-virtual {p1, p4}, Lod/e;->c(Lod/d;)V

    goto :goto_0

    :cond_4
    and-int/lit8 v3, p2, 0x40

    if-ne v3, v1, :cond_5

    const/16 p2, 0x3f

    invoke-virtual {p1, p3, p2}, Lod/e;->e(II)I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    invoke-virtual {p1, p2}, Lod/e;->b(I)Lwd/j;

    move-result-object p2

    invoke-virtual {p1}, Lod/e;->d()Lwd/j;

    move-result-object p3

    new-instance p4, Lod/d;

    invoke-direct {p4, p2, p3}, Lod/d;-><init>(Lwd/j;Lwd/j;)V

    invoke-virtual {p1, p4}, Lod/e;->c(Lod/d;)V

    goto/16 :goto_0

    :cond_5
    and-int/2addr p2, v0

    if-ne p2, v0, :cond_8

    const/16 p2, 0x1f

    invoke-virtual {p1, p3, p2}, Lod/e;->e(II)I

    move-result p2

    iput p2, p1, Lod/e;->a:I

    if-ltz p2, :cond_7

    const/16 p3, 0x1000

    if-gt p2, p3, :cond_7

    iget p3, p1, Lod/e;->g:I

    if-ge p2, p3, :cond_0

    if-nez p2, :cond_6

    iget-object p2, p1, Lod/e;->d:[Lod/d;

    const/4 p3, 0x0

    invoke-static {p2, p3}, Lfb/l;->p([Ljava/lang/Object;LQ6/i;)V

    iget-object p2, p1, Lod/e;->d:[Lod/d;

    array-length p2, p2

    add-int/lit8 p2, p2, -0x1

    iput p2, p1, Lod/e;->e:I

    const/4 p2, 0x0

    iput p2, p1, Lod/e;->f:I

    iput p2, p1, Lod/e;->g:I

    goto/16 :goto_0

    :cond_6
    sub-int/2addr p3, p2

    invoke-virtual {p1, p3}, Lod/e;->a(I)I

    goto/16 :goto_0

    :cond_7
    new-instance p0, Ljava/io/IOException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Invalid dynamic table size update "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p1, p1, Lod/e;->a:I

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_8
    const/16 p2, 0x10

    if-eq p3, p2, :cond_a

    if-nez p3, :cond_9

    goto :goto_1

    :cond_9
    const/16 p2, 0xf

    invoke-virtual {p1, p3, p2}, Lod/e;->e(II)I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    invoke-virtual {p1, p2}, Lod/e;->b(I)Lwd/j;

    move-result-object p2

    invoke-virtual {p1}, Lod/e;->d()Lwd/j;

    move-result-object p1

    new-instance p3, Lod/d;

    invoke-direct {p3, p2, p1}, Lod/d;-><init>(Lwd/j;Lwd/j;)V

    invoke-virtual {p4, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_a
    :goto_1
    sget-object p2, Lod/g;->a:[Lod/d;

    invoke-virtual {p1}, Lod/e;->d()Lwd/j;

    move-result-object p2

    invoke-static {p2}, Lod/g;->a(Lwd/j;)V

    invoke-virtual {p1}, Lod/e;->d()Lwd/j;

    move-result-object p1

    new-instance p3, Lod/d;

    invoke-direct {p3, p2, p1}, Lod/d;-><init>(Lwd/j;Lwd/j;)V

    invoke-virtual {p4, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_b
    new-instance p0, Ljava/io/IOException;

    const-string p1, "index == 0"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_c
    invoke-static {p4}, Lfb/n;->g0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p0

    invoke-virtual {p4}, Ljava/util/ArrayList;->clear()V

    return-object p0
.end method

.method public final close()V
    .locals 0

    iget-object p0, p0, Lod/u;->a:Lwd/t;

    invoke-virtual {p0}, Lwd/t;->close()V

    return-void
.end method

.method public final d(LDb/J;III)V
    .locals 9

    const/4 v0, 0x1

    if-eqz p4, :cond_9

    and-int/lit8 v1, p3, 0x1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    and-int/lit8 v3, p3, 0x8

    if-eqz v3, :cond_1

    iget-object v3, p0, Lod/u;->a:Lwd/t;

    invoke-virtual {v3}, Lwd/t;->c()B

    move-result v3

    sget-object v4, Lid/b;->a:[B

    and-int/lit16 v3, v3, 0xff

    goto :goto_1

    :cond_1
    move v3, v2

    :goto_1
    and-int/lit8 v4, p3, 0x20

    if-eqz v4, :cond_2

    iget-object v4, p0, Lod/u;->a:Lwd/t;

    invoke-virtual {v4}, Lwd/t;->h()I

    invoke-virtual {v4}, Lwd/t;->c()B

    sget-object v4, Lid/b;->a:[B

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    add-int/lit8 p2, p2, -0x5

    :cond_2
    invoke-static {p2, p3, v3}, Lod/s;->a(III)I

    move-result p2

    invoke-virtual {p0, p2, v3, p3, p4}, Lod/u;->c(IIII)Ljava/util/List;

    move-result-object v7

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p1, LDb/J;->c:Ljava/lang/Object;

    check-cast p0, Lod/q;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz p4, :cond_3

    and-int/lit8 p0, p4, 0x1

    if-nez p0, :cond_3

    move v2, v0

    :cond_3
    const-wide/16 p2, 0x0

    const/16 p0, 0x5b

    if-eqz v2, :cond_4

    iget-object p1, p1, LDb/J;->c:Ljava/lang/Object;

    check-cast p1, Lod/q;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p1, Lod/q;->c:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "] onHeaders"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance p0, Lod/n;

    move-object v3, p0

    move-object v5, p1

    move v6, p4

    move v8, v1

    invoke-direct/range {v3 .. v8}, Lod/n;-><init>(Ljava/lang/String;Lod/q;ILjava/util/List;Z)V

    iget-object p1, p1, Lod/q;->i:Lkd/b;

    invoke-virtual {p1, p0, p2, p3}, Lkd/b;->c(Lkd/a;J)V

    goto/16 :goto_2

    :cond_4
    iget-object p1, p1, LDb/J;->c:Ljava/lang/Object;

    check-cast p1, Lod/q;

    monitor-enter p1

    :try_start_0
    invoke-virtual {p1, p4}, Lod/q;->c(I)Lod/y;

    move-result-object v2

    if-nez v2, :cond_8

    iget-boolean v2, p1, Lod/q;->f:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_5

    monitor-exit p1

    goto :goto_2

    :cond_5
    :try_start_1
    iget v2, p1, Lod/q;->d:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-gt p4, v2, :cond_6

    monitor-exit p1

    goto :goto_2

    :cond_6
    :try_start_2
    rem-int/lit8 v2, p4, 0x2

    iget v3, p1, Lod/q;->e:I

    rem-int/lit8 v3, v3, 0x2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-ne v2, v3, :cond_7

    monitor-exit p1

    goto :goto_2

    :cond_7
    :try_start_3
    invoke-static {v7}, Lid/b;->u(Ljava/util/List;)Lhd/y;

    move-result-object v8

    new-instance v2, Lod/y;

    const/4 v6, 0x0

    move-object v3, v2

    move v4, p4

    move-object v5, p1

    move v7, v1

    invoke-direct/range {v3 .. v8}, Lod/y;-><init>(ILod/q;ZZLhd/y;)V

    iput p4, p1, Lod/q;->d:I

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v3, p1, Lod/q;->b:Ljava/util/LinkedHashMap;

    invoke-interface {v3, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p1, Lod/q;->g:Lkd/c;

    invoke-virtual {v1}, Lkd/c;->e()Lkd/b;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p1, Lod/q;->c:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "] onStream"

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p4, Lod/k;

    invoke-direct {p4, v0, p1, v2, p0}, Lod/k;-><init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, p4, p2, p3}, Lkd/b;->c(Lkd/a;J)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p1

    goto :goto_2

    :catchall_0
    move-exception p0

    goto :goto_3

    :cond_8
    monitor-exit p1

    invoke-static {v7}, Lid/b;->u(Ljava/util/List;)Lhd/y;

    move-result-object p0

    invoke-virtual {v2, p0, v1}, Lod/y;->i(Lhd/y;Z)V

    :goto_2
    return-void

    :goto_3
    monitor-exit p1

    throw p0

    :cond_9
    new-instance p0, Ljava/io/IOException;

    const-string p1, "PROTOCOL_ERROR: TYPE_HEADERS streamId == 0"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final e(LDb/J;III)V
    .locals 9

    if-eqz p4, :cond_2

    and-int/lit8 v0, p3, 0x8

    if-eqz v0, :cond_0

    iget-object v0, p0, Lod/u;->a:Lwd/t;

    invoke-virtual {v0}, Lwd/t;->c()B

    move-result v0

    sget-object v1, Lid/b;->a:[B

    and-int/lit16 v0, v0, 0xff

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lod/u;->a:Lwd/t;

    invoke-virtual {v1}, Lwd/t;->h()I

    move-result v1

    const v2, 0x7fffffff

    and-int v6, v1, v2

    add-int/lit8 p2, p2, -0x4

    invoke-static {p2, p3, v0}, Lod/s;->a(III)I

    move-result p2

    invoke-virtual {p0, p2, v0, p3, p4}, Lod/u;->c(IIII)Ljava/util/List;

    move-result-object v7

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p1, LDb/J;->c:Ljava/lang/Object;

    move-object v5, p0

    check-cast v5, Lod/q;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    monitor-enter v5

    :try_start_0
    iget-object p0, v5, Lod/q;->y:Ljava/util/LinkedHashSet;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    sget-object p0, Lod/c;->PROTOCOL_ERROR:Lod/c;

    invoke-virtual {v5, v6, p0}, Lod/q;->j(ILod/c;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v5

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_1
    :try_start_1
    iget-object p0, v5, Lod/q;->y:Ljava/util/LinkedHashSet;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v5

    iget-object p0, v5, Lod/q;->i:Lkd/b;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p2, v5, Lod/q;->c:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p2, 0x5b

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "] onRequest"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance p1, Lod/n;

    const/4 v8, 0x1

    move-object v3, p1

    invoke-direct/range {v3 .. v8}, Lod/n;-><init>(Ljava/lang/String;Lod/q;ILjava/lang/Object;I)V

    const-wide/16 p2, 0x0

    invoke-virtual {p0, p1, p2, p3}, Lkd/b;->c(Lkd/a;J)V

    :goto_1
    return-void

    :goto_2
    monitor-exit v5

    throw p0

    :cond_2
    new-instance p0, Ljava/io/IOException;

    const-string p1, "PROTOCOL_ERROR: TYPE_PUSH_PROMISE streamId == 0"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
