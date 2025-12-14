.class public final Lvd/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lhd/C;


# instance fields
.field public final a:Lvd/b;

.field public volatile b:Ljava/lang/Object;

.field public volatile c:Lvd/a;


# direct methods
.method public synthetic constructor <init>()V
    .locals 1

    sget-object v0, Lvd/b;->b0:LE5/v;

    invoke-direct {p0, v0}, Lvd/c;-><init>(Lvd/b;)V

    return-void
.end method

.method public constructor <init>(Lvd/b;)V
    .locals 1

    const-string v0, "logger"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lvd/c;->a:Lvd/b;

    sget-object p1, Lfb/x;->a:Lfb/x;

    iput-object p1, p0, Lvd/c;->b:Ljava/lang/Object;

    sget-object p1, Lvd/a;->NONE:Lvd/a;

    iput-object p1, p0, Lvd/c;->c:Lvd/a;

    return-void
.end method


# virtual methods
.method public final a(Lhd/y;I)V
    .locals 2

    iget-object v0, p0, Lvd/c;->b:Ljava/lang/Object;

    invoke-virtual {p1, p2}, Lhd/y;->i(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "\u2588\u2588"

    goto :goto_0

    :cond_0
    invoke-virtual {p1, p2}, Lhd/y;->n(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    iget-object p0, p0, Lvd/c;->a:Lvd/b;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p2}, Lhd/y;->i(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lvd/b;->c(Ljava/lang/String;)V

    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 3

    new-instance v0, Ljava/util/TreeSet;

    sget-object v1, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    const-string v2, "CASE_INSENSITIVE_ORDER"

    invoke-static {v1, v2}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    iget-object v1, p0, Lvd/c;->b:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Iterable;

    invoke-static {v1, v0}, Lfb/t;->q(Ljava/lang/Iterable;Ljava/util/Collection;)V

    invoke-virtual {v0, p1}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    iput-object v0, p0, Lvd/c;->b:Ljava/lang/Object;

    return-void
.end method

.method public final c(Lvd/a;)V
    .locals 1

    const-string v0, "level"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lvd/c;->c:Lvd/a;

    return-void
.end method

.method public final intercept(Lhd/B;)Lhd/T;
    .locals 24

    move-object/from16 v1, p0

    iget-object v0, v1, Lvd/c;->c:Lvd/a;

    move-object/from16 v2, p1

    check-cast v2, Lmd/f;

    iget-object v3, v2, Lmd/f;->e:Lhd/M;

    sget-object v4, Lvd/a;->NONE:Lvd/a;

    if-ne v0, v4, :cond_0

    invoke-virtual {v2, v3}, Lmd/f;->b(Lhd/M;)Lhd/T;

    move-result-object v0

    return-object v0

    :cond_0
    sget-object v4, Lvd/a;->BODY:Lvd/a;

    const/4 v5, 0x1

    if-ne v0, v4, :cond_1

    move v4, v5

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    :goto_0
    if-nez v4, :cond_3

    sget-object v7, Lvd/a;->HEADERS:Lvd/a;

    if-ne v0, v7, :cond_2

    goto :goto_1

    :cond_2
    const/4 v5, 0x0

    :cond_3
    :goto_1
    iget-object v0, v3, Lhd/M;->d:Lhd/Q;

    iget-object v2, v2, Lmd/f;->d:LU0/h;

    if-eqz v2, :cond_4

    iget-object v2, v2, LU0/h;->f:Ljava/lang/Object;

    check-cast v2, Lld/k;

    goto :goto_2

    :cond_4
    const/4 v2, 0x0

    :goto_2
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "--> "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v9, v3, Lhd/M;->b:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v9, 0x20

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v10, v3, Lhd/M;->a:Lhd/A;

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v10, " "

    const-string v11, ""

    if-eqz v2, :cond_5

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v2, Lld/k;->f:Lhd/K;

    invoke-static {v2}, Ltb/k;->c(Ljava/lang/Object;)V

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_3

    :cond_5
    move-object v2, v11

    :goto_3
    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v8, "-byte body)"

    const-string v12, " ("

    if-nez v5, :cond_6

    if-eqz v0, :cond_6

    invoke-static {v2, v12}, Lt/b;->n(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lhd/Q;->contentLength()J

    move-result-wide v13

    invoke-virtual {v2, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_6
    iget-object v13, v1, Lvd/c;->a:Lvd/b;

    invoke-interface {v13, v2}, Lvd/b;->c(Ljava/lang/String;)V

    const-string v2, "identity"

    const-string v13, "gzip"

    const-string v14, "Content-Encoding"

    const-string v15, "-byte body omitted)"

    const-string v6, "UTF_8"

    const-wide/16 v16, -0x1

    if-eqz v5, :cond_14

    iget-object v7, v3, Lhd/M;->c:Lhd/y;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lhd/Q;->contentType()Lhd/D;

    move-result-object v9

    move/from16 v18, v5

    if-eqz v9, :cond_7

    const-string v5, "Content-Type"

    invoke-virtual {v7, v5}, Lhd/y;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_7

    iget-object v5, v1, Lvd/c;->a:Lvd/b;

    move-object/from16 v19, v10

    new-instance v10, Ljava/lang/StringBuilder;

    move-object/from16 v20, v15

    const-string v15, "Content-Type: "

    invoke-direct {v10, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v5, v9}, Lvd/b;->c(Ljava/lang/String;)V

    goto :goto_4

    :cond_7
    move-object/from16 v19, v10

    move-object/from16 v20, v15

    :goto_4
    invoke-virtual {v0}, Lhd/Q;->contentLength()J

    move-result-wide v9

    cmp-long v5, v9, v16

    if-eqz v5, :cond_8

    const-string v5, "Content-Length"

    invoke-virtual {v7, v5}, Lhd/y;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_8

    iget-object v5, v1, Lvd/c;->a:Lvd/b;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "Content-Length: "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v15, v11

    invoke-virtual {v0}, Lhd/Q;->contentLength()J

    move-result-wide v10

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v5, v9}, Lvd/b;->c(Ljava/lang/String;)V

    goto :goto_6

    :cond_8
    :goto_5
    move-object v15, v11

    goto :goto_6

    :cond_9
    move/from16 v18, v5

    move-object/from16 v19, v10

    move-object/from16 v20, v15

    goto :goto_5

    :goto_6
    invoke-virtual {v7}, Lhd/y;->size()I

    move-result v5

    const/4 v9, 0x0

    :goto_7
    if-ge v9, v5, :cond_a

    invoke-virtual {v1, v7, v9}, Lvd/c;->a(Lhd/y;I)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_7

    :cond_a
    const-string v5, "--> END "

    if-eqz v4, :cond_b

    if-nez v0, :cond_c

    :cond_b
    move-object/from16 v21, v14

    move-object v11, v15

    move-object/from16 v0, v20

    move-object v15, v13

    goto/16 :goto_b

    :cond_c
    iget-object v7, v3, Lhd/M;->c:Lhd/y;

    invoke-virtual {v7, v14}, Lhd/y;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_d

    goto :goto_a

    :cond_d
    invoke-virtual {v7, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_e

    invoke-virtual {v7, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_e

    iget-object v0, v1, Lvd/c;->a:Lvd/b;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, v3, Lhd/M;->b:Ljava/lang/String;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " (encoded body omitted)"

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v5}, Lvd/b;->c(Ljava/lang/String;)V

    :goto_8
    move-object/from16 v21, v14

    move-object v11, v15

    move-object/from16 v0, v20

    :goto_9
    move-object v15, v13

    goto/16 :goto_c

    :cond_e
    :goto_a
    invoke-virtual {v0}, Lhd/Q;->isDuplex()Z

    move-result v7

    if-eqz v7, :cond_f

    iget-object v0, v1, Lvd/c;->a:Lvd/b;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, v3, Lhd/M;->b:Ljava/lang/String;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " (duplex request body omitted)"

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v5}, Lvd/b;->c(Ljava/lang/String;)V

    goto :goto_8

    :cond_f
    invoke-virtual {v0}, Lhd/Q;->isOneShot()Z

    move-result v7

    if-eqz v7, :cond_10

    iget-object v0, v1, Lvd/c;->a:Lvd/b;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, v3, Lhd/M;->b:Ljava/lang/String;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " (one-shot body omitted)"

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v5}, Lvd/b;->c(Ljava/lang/String;)V

    goto :goto_8

    :cond_10
    new-instance v7, Lwd/g;

    invoke-direct {v7}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v0, v7}, Lhd/Q;->writeTo(Lwd/h;)V

    invoke-virtual {v0}, Lhd/Q;->contentType()Lhd/D;

    move-result-object v9

    if-eqz v9, :cond_11

    sget-object v10, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v9, v10}, Lhd/D;->a(Ljava/nio/charset/Charset;)Ljava/nio/charset/Charset;

    move-result-object v9

    if-nez v9, :cond_12

    :cond_11
    sget-object v9, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-static {v9, v6}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_12
    iget-object v10, v1, Lvd/c;->a:Lvd/b;

    move-object v11, v15

    invoke-interface {v10, v11}, Lvd/b;->c(Ljava/lang/String;)V

    invoke-static {v7}, LG5/r2;->h(Lwd/g;)Z

    move-result v10

    if-eqz v10, :cond_13

    iget-object v10, v1, Lvd/c;->a:Lvd/b;

    move-object v15, v13

    move-object/from16 v21, v14

    iget-wide v13, v7, Lwd/g;->b:J

    invoke-virtual {v7, v13, v14, v9}, Lwd/g;->G(JLjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v10, v7}, Lvd/b;->c(Ljava/lang/String;)V

    iget-object v7, v1, Lvd/c;->a:Lvd/b;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, v3, Lhd/M;->b:Ljava/lang/String;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lhd/Q;->contentLength()J

    move-result-wide v13

    invoke-virtual {v9, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v7, v0}, Lvd/b;->c(Ljava/lang/String;)V

    move-object/from16 v0, v20

    goto :goto_c

    :cond_13
    move-object v15, v13

    move-object/from16 v21, v14

    iget-object v7, v1, Lvd/c;->a:Lvd/b;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, v3, Lhd/M;->b:Ljava/lang/String;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " (binary "

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lhd/Q;->contentLength()J

    move-result-wide v13

    invoke-virtual {v9, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-object/from16 v0, v20

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v7, v5}, Lvd/b;->c(Ljava/lang/String;)V

    goto :goto_c

    :goto_b
    iget-object v7, v1, Lvd/c;->a:Lvd/b;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, v3, Lhd/M;->b:Ljava/lang/String;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v7, v5}, Lvd/b;->c(Ljava/lang/String;)V

    goto :goto_c

    :cond_14
    move/from16 v18, v5

    move-object/from16 v19, v10

    move-object/from16 v21, v14

    move-object v0, v15

    goto/16 :goto_9

    :goto_c
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v9

    :try_start_0
    move-object/from16 v5, p1

    check-cast v5, Lmd/f;

    invoke-virtual {v5, v3}, Lmd/f;->b(Lhd/M;)Lhd/T;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    sget-object v5, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v13

    sub-long/2addr v13, v9

    invoke-virtual {v5, v13, v14}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v9

    iget-object v5, v3, Lhd/T;->g:Lhd/X;

    invoke-static {v5}, Ltb/k;->c(Ljava/lang/Object;)V

    invoke-virtual {v5}, Lhd/X;->contentLength()J

    move-result-wide v13

    cmp-long v7, v13, v16

    if-eqz v7, :cond_15

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-object/from16 v16, v15

    const-string v15, "-byte"

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_d

    :cond_15
    move-object/from16 v16, v15

    const-string v7, "unknown-length"

    :goto_d
    iget-object v15, v1, Lvd/c;->a:Lvd/b;

    move-object/from16 v17, v8

    new-instance v8, Ljava/lang/StringBuilder;

    move-wide/from16 v22, v13

    const-string v13, "<-- "

    invoke-direct {v8, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v13, v3, Lhd/T;->d:I

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object v13, v3, Lhd/T;->c:Ljava/lang/String;

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v13

    if-nez v13, :cond_16

    move-object v13, v11

    goto :goto_e

    :cond_16
    iget-object v13, v3, Lhd/T;->c:Ljava/lang/String;

    move-object/from16 v14, v19

    invoke-static {v14, v13}, Lt/b;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    :goto_e
    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v13, 0x20

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v13, v3, Lhd/T;->a:Lhd/M;

    iget-object v13, v13, Lhd/M;->a:Lhd/A;

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v9, "ms"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v18, :cond_17

    const-string v9, ", "

    const-string v10, " body"

    invoke-static {v9, v7, v10}, LV0/c;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    goto :goto_f

    :cond_17
    move-object v7, v11

    :goto_f
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v7, 0x29

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v15, v7}, Lvd/b;->c(Ljava/lang/String;)V

    if-eqz v18, :cond_24

    iget-object v7, v3, Lhd/T;->f:Lhd/y;

    invoke-virtual {v7}, Lhd/y;->size()I

    move-result v8

    const/4 v9, 0x0

    :goto_10
    if-ge v9, v8, :cond_18

    invoke-virtual {v1, v7, v9}, Lvd/c;->a(Lhd/y;I)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_10

    :cond_18
    if-eqz v4, :cond_23

    invoke-static {v3}, Lmd/e;->a(Lhd/T;)Z

    move-result v4

    if-nez v4, :cond_19

    goto/16 :goto_13

    :cond_19
    iget-object v4, v3, Lhd/T;->f:Lhd/y;

    move-object/from16 v8, v21

    invoke-virtual {v4, v8}, Lhd/y;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_1b

    :cond_1a
    move-object/from16 v2, v16

    goto :goto_11

    :cond_1b
    invoke-virtual {v4, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1a

    move-object/from16 v2, v16

    invoke-virtual {v4, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1c

    iget-object v0, v1, Lvd/c;->a:Lvd/b;

    const-string v1, "<-- END HTTP (encoded body omitted)"

    invoke-interface {v0, v1}, Lvd/b;->c(Ljava/lang/String;)V

    goto/16 :goto_14

    :cond_1c
    :goto_11
    invoke-virtual {v5}, Lhd/X;->source()Lwd/i;

    move-result-object v4

    const-wide v9, 0x7fffffffffffffffL

    invoke-interface {v4, v9, v10}, Lwd/i;->I(J)Z

    invoke-interface {v4}, Lwd/i;->g()Lwd/g;

    move-result-object v4

    invoke-virtual {v7, v8}, Lhd/y;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1d

    iget-wide v7, v4, Lwd/g;->b:J

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    new-instance v7, Lwd/n;

    invoke-virtual {v4}, Lwd/g;->b()Lwd/g;

    move-result-object v4

    invoke-direct {v7, v4}, Lwd/n;-><init>(Lwd/z;)V

    :try_start_1
    new-instance v4, Lwd/g;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v4, v7}, Lwd/g;->o0(Lwd/z;)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v8, 0x0

    invoke-static {v7, v8}, LG5/q;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    move-object v7, v2

    goto :goto_12

    :catchall_0
    move-exception v0

    move-object v1, v0

    :try_start_2
    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception v0

    move-object v2, v0

    invoke-static {v7, v1}, LG5/q;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v2

    :cond_1d
    const/4 v8, 0x0

    move-object v7, v8

    :goto_12
    invoke-virtual {v5}, Lhd/X;->contentType()Lhd/D;

    move-result-object v2

    if-eqz v2, :cond_1e

    sget-object v5, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v2, v5}, Lhd/D;->a(Ljava/nio/charset/Charset;)Ljava/nio/charset/Charset;

    move-result-object v2

    if-nez v2, :cond_1f

    :cond_1e
    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-static {v2, v6}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_1f
    invoke-static {v4}, LG5/r2;->h(Lwd/g;)Z

    move-result v5

    if-nez v5, :cond_20

    iget-object v2, v1, Lvd/c;->a:Lvd/b;

    invoke-interface {v2, v11}, Lvd/b;->c(Ljava/lang/String;)V

    iget-object v1, v1, Lvd/c;->a:Lvd/b;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, "<-- END HTTP (binary "

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v4, v4, Lwd/g;->b:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lvd/b;->c(Ljava/lang/String;)V

    return-object v3

    :cond_20
    const-wide/16 v5, 0x0

    cmp-long v0, v22, v5

    if-eqz v0, :cond_21

    iget-object v0, v1, Lvd/c;->a:Lvd/b;

    invoke-interface {v0, v11}, Lvd/b;->c(Ljava/lang/String;)V

    iget-object v0, v1, Lvd/c;->a:Lvd/b;

    invoke-virtual {v4}, Lwd/g;->b()Lwd/g;

    move-result-object v5

    iget-wide v8, v5, Lwd/g;->b:J

    invoke-virtual {v5, v8, v9, v2}, Lwd/g;->G(JLjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lvd/b;->c(Ljava/lang/String;)V

    :cond_21
    const-string v0, "<-- END HTTP ("

    if-eqz v7, :cond_22

    iget-object v1, v1, Lvd/c;->a:Lvd/b;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v4, v4, Lwd/g;->b:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "-byte, "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "-gzipped-byte body)"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lvd/b;->c(Ljava/lang/String;)V

    goto :goto_14

    :cond_22
    iget-object v1, v1, Lvd/c;->a:Lvd/b;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v4, v4, Lwd/g;->b:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lvd/b;->c(Ljava/lang/String;)V

    goto :goto_14

    :cond_23
    :goto_13
    iget-object v0, v1, Lvd/c;->a:Lvd/b;

    const-string v1, "<-- END HTTP"

    invoke-interface {v0, v1}, Lvd/b;->c(Ljava/lang/String;)V

    :cond_24
    :goto_14
    return-object v3

    :catch_0
    move-exception v0

    iget-object v1, v1, Lvd/c;->a:Lvd/b;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "<-- HTTP FAILED: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lvd/b;->c(Ljava/lang/String;)V

    throw v0
.end method
