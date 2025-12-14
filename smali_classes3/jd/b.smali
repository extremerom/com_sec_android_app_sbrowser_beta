.class public final Ljd/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lhd/C;


# instance fields
.field public final a:Lhd/g;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lhd/g;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljd/b;->a:Lhd/g;

    return-void
.end method


# virtual methods
.method public final intercept(Lhd/B;)Lhd/T;
    .locals 42

    move-object/from16 v0, p0

    move-object/from16 v2, p1

    check-cast v2, Lmd/f;

    iget-object v3, v2, Lmd/f;->a:Lld/i;

    iget-object v4, v0, Ljd/b;->a:Lhd/g;

    const/4 v5, 0x0

    const/4 v6, 0x0

    if-eqz v4, :cond_4

    iget-object v7, v2, Lmd/f;->e:Lhd/M;

    const-string v8, "request"

    invoke-static {v7, v8}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v8, v7, Lhd/M;->a:Lhd/A;

    invoke-static {v8}, LG5/F3;->h(Lhd/A;)Ljava/lang/String;

    move-result-object v9

    :try_start_0
    iget-object v4, v4, Lhd/g;->a:Ljd/g;

    invoke-virtual {v4, v9}, Ljd/g;->d(Ljava/lang/String;)Ljd/e;

    move-result-object v4
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    if-nez v4, :cond_0

    move-object v1, v6

    goto/16 :goto_1

    :cond_0
    :try_start_1
    new-instance v9, Lhd/e;

    iget-object v10, v4, Ljd/e;->c:Ljava/util/ArrayList;

    invoke-virtual {v10, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lwd/z;

    invoke-direct {v9, v10}, Lhd/e;-><init>(Lwd/z;)V

    iget-object v10, v9, Lhd/e;->b:Lhd/y;

    iget-object v11, v9, Lhd/e;->c:Ljava/lang/String;

    iget-object v12, v9, Lhd/e;->a:Lhd/A;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    iget-object v13, v9, Lhd/e;->g:Lhd/y;

    const-string v14, "Content-Type"

    invoke-virtual {v13, v14}, Lhd/y;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    const-string v15, "Content-Length"

    invoke-virtual {v13, v15}, Lhd/y;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    new-instance v5, Lhd/L;

    invoke-direct {v5}, Lhd/L;-><init>()V

    const-string v1, "url"

    invoke-static {v12, v1}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v12, v5, Lhd/L;->a:Lhd/A;

    invoke-virtual {v5, v11, v6}, Lhd/L;->d(Ljava/lang/String;Lhd/Q;)V

    const-string v1, "headers"

    invoke-static {v10, v1}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v10}, Lhd/y;->m()Lhd/x;

    move-result-object v1

    iput-object v1, v5, Lhd/L;->c:Lhd/x;

    invoke-virtual {v5}, Lhd/L;->b()Lhd/M;

    move-result-object v1

    new-instance v5, Lhd/S;

    invoke-direct {v5}, Lhd/S;-><init>()V

    iput-object v1, v5, Lhd/S;->a:Lhd/M;

    iget-object v1, v9, Lhd/e;->d:Lhd/K;

    const-string v6, "protocol"

    invoke-static {v1, v6}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v1, v5, Lhd/S;->b:Lhd/K;

    iget v1, v9, Lhd/e;->e:I

    iput v1, v5, Lhd/S;->c:I

    iget-object v1, v9, Lhd/e;->f:Ljava/lang/String;

    const-string v6, "message"

    invoke-static {v1, v6}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v1, v5, Lhd/S;->d:Ljava/lang/String;

    invoke-virtual {v5, v13}, Lhd/S;->c(Lhd/y;)V

    new-instance v1, Lhd/d;

    invoke-direct {v1, v4, v14, v15}, Lhd/d;-><init>(Ljd/e;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, v5, Lhd/S;->g:Lhd/X;

    iget-object v1, v9, Lhd/e;->h:Lhd/w;

    iput-object v1, v5, Lhd/S;->e:Lhd/w;

    iget-wide v13, v9, Lhd/e;->i:J

    iput-wide v13, v5, Lhd/S;->k:J

    iget-wide v13, v9, Lhd/e;->j:J

    iput-wide v13, v5, Lhd/S;->l:J

    invoke-virtual {v5}, Lhd/S;->a()Lhd/T;

    move-result-object v1

    invoke-virtual {v12, v8}, Lhd/A;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, v7, Lhd/M;->b:Ljava/lang/String;

    invoke-virtual {v11, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, v1, Lhd/T;->f:Lhd/y;

    invoke-static {v4}, LG5/F3;->l(Lhd/y;)Ljava/util/Set;

    move-result-object v4

    check-cast v4, Ljava/lang/Iterable;

    instance-of v5, v4, Ljava/util/Collection;

    if-eqz v5, :cond_1

    move-object v5, v4

    check-cast v5, Ljava/util/Collection;

    invoke-interface {v5}, Ljava/util/Collection;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_1

    :cond_1
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v10, v5}, Lhd/y;->p(Ljava/lang/String;)Ljava/util/List;

    move-result-object v6

    iget-object v8, v7, Lhd/M;->c:Lhd/y;

    invoke-virtual {v8, v5}, Lhd/y;->p(Ljava/lang/String;)Ljava/util/List;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    :cond_3
    iget-object v1, v1, Lhd/T;->g:Lhd/X;

    if-eqz v1, :cond_4

    invoke-static {v1}, Lid/b;->c(Ljava/io/Closeable;)V

    goto :goto_0

    :catch_0
    invoke-static {v4}, Lid/b;->c(Ljava/io/Closeable;)V

    :catch_1
    :cond_4
    :goto_0
    const/4 v1, 0x0

    :cond_5
    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-object v6, v2, Lmd/f;->e:Lhd/M;

    const-string v7, "request"

    invoke-static {v6, v7}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v1, :cond_c

    iget-wide v10, v1, Lhd/T;->k:J

    iget-wide v12, v1, Lhd/T;->l:J

    iget-object v14, v1, Lhd/T;->f:Lhd/y;

    invoke-virtual {v14}, Lhd/y;->size()I

    move-result v15

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, -0x1

    :goto_2
    if-ge v8, v15, :cond_b

    invoke-virtual {v14, v8}, Lhd/y;->i(I)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v22, v9

    invoke-virtual {v14, v8}, Lhd/y;->n(I)Ljava/lang/String;

    move-result-object v9

    move-wide/from16 v23, v10

    const-string v10, "Date"

    const/4 v11, 0x1

    invoke-static {v7, v10, v11}, LKc/r;->i(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v10

    if-eqz v10, :cond_6

    invoke-static {v9}, Lmd/c;->a(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v7

    move-object/from16 v20, v9

    move-object v9, v7

    goto :goto_4

    :cond_6
    const-string v10, "Expires"

    invoke-static {v7, v10, v11}, LKc/r;->i(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v10

    if-eqz v10, :cond_8

    invoke-static {v9}, Lmd/c;->a(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v7

    move-object/from16 v17, v7

    :cond_7
    :goto_3
    move-object/from16 v9, v22

    goto :goto_4

    :cond_8
    const-string v10, "Last-Modified"

    invoke-static {v7, v10, v11}, LKc/r;->i(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v10

    if-eqz v10, :cond_9

    invoke-static {v9}, Lmd/c;->a(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v7

    move-object/from16 v16, v7

    move-object/from16 v19, v9

    goto :goto_3

    :cond_9
    const-string v10, "ETag"

    invoke-static {v7, v10, v11}, LKc/r;->i(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v10

    if-eqz v10, :cond_a

    move-object/from16 v18, v9

    goto :goto_3

    :cond_a
    const-string v10, "Age"

    invoke-static {v7, v10, v11}, LKc/r;->i(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v7

    if-eqz v7, :cond_7

    const/4 v7, -0x1

    invoke-static {v7, v9}, Lid/b;->x(ILjava/lang/String;)I

    move-result v21

    goto :goto_3

    :goto_4
    add-int/2addr v8, v11

    move-wide/from16 v10, v23

    goto :goto_2

    :cond_b
    move-object/from16 v22, v9

    move-wide/from16 v23, v10

    move/from16 v7, v21

    goto :goto_5

    :cond_c
    const/4 v7, -0x1

    const-wide/16 v10, 0x0

    const-wide/16 v12, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v22, 0x0

    :goto_5
    if-nez v1, :cond_d

    new-instance v4, Lo3/e;

    const/4 v8, 0x0

    invoke-direct {v4, v6, v8}, Lo3/e;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_6
    move-object/from16 v21, v2

    move-object/from16 v25, v3

    move-object v3, v6

    goto/16 :goto_12

    :cond_d
    const/4 v8, 0x0

    iget-object v9, v6, Lhd/M;->a:Lhd/A;

    iget-boolean v9, v9, Lhd/A;->j:Z

    if-eqz v9, :cond_e

    iget-object v9, v1, Lhd/T;->e:Lhd/w;

    if-nez v9, :cond_e

    new-instance v4, Lo3/e;

    invoke-direct {v4, v6, v8}, Lo3/e;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_6

    :cond_e
    invoke-static {v1, v6}, LG5/X3;->c(Lhd/T;Lhd/M;)Z

    move-result v9

    if-nez v9, :cond_f

    new-instance v4, Lo3/e;

    invoke-direct {v4, v6, v8}, Lo3/e;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_6

    :cond_f
    iget-object v8, v6, Lhd/M;->f:Lhd/h;

    if-nez v8, :cond_10

    sget v8, Lhd/h;->n:I

    iget-object v8, v6, Lhd/M;->c:Lhd/y;

    invoke-static {v8}, LG5/G3;->c(Lhd/y;)Lhd/h;

    move-result-object v8

    iput-object v8, v6, Lhd/M;->f:Lhd/h;

    :cond_10
    iget-boolean v9, v8, Lhd/h;->a:Z

    if-nez v9, :cond_25

    const-string v9, "If-Modified-Since"

    iget-object v14, v6, Lhd/M;->c:Lhd/y;

    invoke-virtual {v14, v9}, Lhd/y;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    if-nez v14, :cond_25

    const-string v14, "If-None-Match"

    iget-object v15, v6, Lhd/M;->c:Lhd/y;

    invoke-virtual {v15, v14}, Lhd/y;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    if-eqz v15, :cond_11

    goto/16 :goto_11

    :cond_11
    invoke-virtual {v1}, Lhd/T;->a()Lhd/h;

    move-result-object v15

    if-eqz v22, :cond_12

    invoke-virtual/range {v22 .. v22}, Ljava/util/Date;->getTime()J

    move-result-wide v23

    move-object/from16 v21, v2

    move-object/from16 v25, v3

    sub-long v2, v12, v23

    move-object/from16 v23, v14

    move-object/from16 v24, v15

    const-wide/16 v14, 0x0

    invoke-static {v14, v15, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    :goto_7
    const/4 v14, -0x1

    goto :goto_8

    :cond_12
    move-object/from16 v21, v2

    move-object/from16 v25, v3

    move-object/from16 v23, v14

    move-object/from16 v24, v15

    const-wide/16 v2, 0x0

    goto :goto_7

    :goto_8
    if-eq v7, v14, :cond_13

    sget-object v14, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    move-object v15, v6

    int-to-long v6, v7

    invoke-virtual {v14, v6, v7}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v6

    invoke-static {v2, v3, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    goto :goto_9

    :cond_13
    move-object v15, v6

    :goto_9
    sub-long v6, v12, v10

    sub-long/2addr v4, v12

    add-long/2addr v2, v6

    add-long/2addr v2, v4

    invoke-virtual {v1}, Lhd/T;->a()Lhd/h;

    move-result-object v4

    iget v4, v4, Lhd/h;->c:I

    const/4 v5, -0x1

    if-eq v4, v5, :cond_14

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    int-to-long v6, v4

    invoke-virtual {v5, v6, v7}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v4

    :goto_a
    move-wide v6, v4

    const-wide/16 v4, 0x0

    goto :goto_c

    :cond_14
    if-eqz v17, :cond_17

    if-eqz v22, :cond_15

    invoke-virtual/range {v22 .. v22}, Ljava/util/Date;->getTime()J

    move-result-wide v12

    :cond_15
    invoke-virtual/range {v17 .. v17}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    sub-long/2addr v4, v12

    const-wide/16 v6, 0x0

    cmp-long v10, v4, v6

    if-lez v10, :cond_16

    goto :goto_a

    :cond_16
    const-wide/16 v4, 0x0

    goto :goto_a

    :cond_17
    if-eqz v16, :cond_1a

    iget-object v4, v1, Lhd/T;->a:Lhd/M;

    iget-object v4, v4, Lhd/M;->a:Lhd/A;

    iget-object v4, v4, Lhd/A;->g:Ljava/util/ArrayList;

    if-nez v4, :cond_18

    const/4 v4, 0x0

    goto :goto_b

    :cond_18
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v4, v5}, Lhd/b;->g(Ljava/util/ArrayList;Ljava/lang/StringBuilder;)V

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_b
    if-nez v4, :cond_1a

    if-eqz v22, :cond_19

    invoke-virtual/range {v22 .. v22}, Ljava/util/Date;->getTime()J

    move-result-wide v10

    :cond_19
    invoke-virtual/range {v16 .. v16}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    sub-long/2addr v10, v4

    const-wide/16 v4, 0x0

    cmp-long v6, v10, v4

    if-lez v6, :cond_1b

    const/16 v6, 0xa

    int-to-long v6, v6

    div-long v6, v10, v6

    goto :goto_c

    :cond_1a
    const-wide/16 v4, 0x0

    :cond_1b
    move-wide v6, v4

    :goto_c
    iget v10, v8, Lhd/h;->c:I

    const/4 v11, -0x1

    if-eq v10, v11, :cond_1c

    sget-object v12, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    int-to-long v13, v10

    invoke-virtual {v12, v13, v14}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v12

    invoke-static {v6, v7, v12, v13}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v6

    :cond_1c
    iget v10, v8, Lhd/h;->i:I

    if-eq v10, v11, :cond_1d

    sget-object v12, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    int-to-long v13, v10

    invoke-virtual {v12, v13, v14}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v12

    :goto_d
    move-object/from16 v10, v24

    goto :goto_e

    :cond_1d
    move-wide v12, v4

    goto :goto_d

    :goto_e
    iget-boolean v14, v10, Lhd/h;->g:Z

    if-nez v14, :cond_1e

    iget v8, v8, Lhd/h;->h:I

    if-eq v8, v11, :cond_1e

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    move-object v11, v9

    int-to-long v8, v8

    invoke-virtual {v4, v8, v9}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v8

    goto :goto_f

    :cond_1e
    move-object v11, v9

    move-wide v8, v4

    :goto_f
    iget-boolean v4, v10, Lhd/h;->a:Z

    if-nez v4, :cond_21

    add-long/2addr v12, v2

    add-long/2addr v8, v6

    cmp-long v4, v12, v8

    if-gez v4, :cond_21

    invoke-virtual {v1}, Lhd/T;->c()Lhd/S;

    move-result-object v4

    cmp-long v5, v12, v6

    if-ltz v5, :cond_1f

    const-string v5, "110 HttpURLConnection \"Response is stale\""

    const-string v6, "Warning"

    iget-object v7, v4, Lhd/S;->f:Lhd/x;

    invoke-virtual {v7, v6, v5}, Lhd/x;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1f
    const-wide/32 v5, 0x5265c00

    cmp-long v2, v2, v5

    if-lez v2, :cond_20

    invoke-virtual {v1}, Lhd/T;->a()Lhd/h;

    move-result-object v2

    iget v2, v2, Lhd/h;->c:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_20

    if-nez v17, :cond_20

    const-string v2, "113 HttpURLConnection \"Heuristic expiration\""

    const-string v3, "Warning"

    iget-object v5, v4, Lhd/S;->f:Lhd/x;

    invoke-virtual {v5, v3, v2}, Lhd/x;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_20
    new-instance v2, Lo3/e;

    invoke-virtual {v4}, Lhd/S;->a()Lhd/T;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v2, v4, v3}, Lo3/e;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v4, v2

    move-object v3, v15

    goto :goto_12

    :cond_21
    if-eqz v18, :cond_22

    move-object v3, v15

    move-object/from16 v2, v18

    move-object/from16 v9, v23

    goto :goto_10

    :cond_22
    if-eqz v16, :cond_23

    move-object v9, v11

    move-object v3, v15

    move-object/from16 v2, v19

    goto :goto_10

    :cond_23
    if-eqz v22, :cond_24

    move-object v9, v11

    move-object v3, v15

    move-object/from16 v2, v20

    :goto_10
    iget-object v4, v3, Lhd/M;->c:Lhd/y;

    invoke-virtual {v4}, Lhd/y;->m()Lhd/x;

    move-result-object v4

    invoke-static {v2}, Ltb/k;->c(Ljava/lang/Object;)V

    invoke-virtual {v4, v9, v2}, Lhd/x;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3}, Lhd/M;->a()Lhd/L;

    move-result-object v2

    invoke-virtual {v4}, Lhd/x;->d()Lhd/y;

    move-result-object v4

    invoke-virtual {v4}, Lhd/y;->m()Lhd/x;

    move-result-object v4

    iput-object v4, v2, Lhd/L;->c:Lhd/x;

    invoke-virtual {v2}, Lhd/L;->b()Lhd/M;

    move-result-object v2

    new-instance v4, Lo3/e;

    invoke-direct {v4, v2, v1}, Lo3/e;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_12

    :cond_24
    move-object v3, v15

    new-instance v4, Lo3/e;

    const/4 v2, 0x0

    invoke-direct {v4, v3, v2}, Lo3/e;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_12

    :cond_25
    :goto_11
    move-object/from16 v21, v2

    move-object/from16 v25, v3

    move-object v3, v6

    const/4 v2, 0x0

    new-instance v4, Lo3/e;

    invoke-direct {v4, v3, v2}, Lo3/e;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_12
    iget-object v2, v4, Lo3/e;->a:Ljava/lang/Object;

    check-cast v2, Lhd/M;

    if-eqz v2, :cond_27

    iget-object v2, v3, Lhd/M;->f:Lhd/h;

    if-nez v2, :cond_26

    sget v2, Lhd/h;->n:I

    iget-object v2, v3, Lhd/M;->c:Lhd/y;

    invoke-static {v2}, LG5/G3;->c(Lhd/y;)Lhd/h;

    move-result-object v2

    iput-object v2, v3, Lhd/M;->f:Lhd/h;

    :cond_26
    iget-boolean v2, v2, Lhd/h;->j:Z

    if-eqz v2, :cond_27

    new-instance v4, Lo3/e;

    const/4 v8, 0x0

    invoke-direct {v4, v8, v8}, Lo3/e;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_13

    :cond_27
    const/4 v8, 0x0

    :goto_13
    iget-object v2, v4, Lo3/e;->a:Ljava/lang/Object;

    check-cast v2, Lhd/M;

    iget-object v3, v4, Lo3/e;->b:Ljava/lang/Object;

    check-cast v3, Lhd/T;

    iget-object v4, v0, Ljd/b;->a:Lhd/g;

    if-eqz v4, :cond_28

    monitor-enter v4

    monitor-exit v4

    :cond_28
    if-eqz v1, :cond_29

    if-nez v3, :cond_29

    iget-object v4, v1, Lhd/T;->g:Lhd/X;

    if-eqz v4, :cond_29

    invoke-static {v4}, Lid/b;->c(Ljava/io/Closeable;)V

    :cond_29
    const-wide/16 v4, -0x1

    if-nez v2, :cond_2a

    if-nez v3, :cond_2a

    new-instance v0, Lhd/x;

    invoke-direct {v0}, Lhd/x;-><init>()V

    move-object/from16 v1, v21

    iget-object v1, v1, Lmd/f;->e:Lhd/M;

    const-string v2, "request"

    invoke-static {v1, v2}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v2, Lhd/K;->HTTP_1_1:Lhd/K;

    const-string v3, "protocol"

    invoke-static {v2, v3}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v29, "Unsatisfiable Request (only-if-cached)"

    sget-object v33, Lid/b;->c:Lhd/V;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v39

    invoke-virtual {v0}, Lhd/x;->d()Lhd/y;

    move-result-object v32

    new-instance v0, Lhd/T;

    const/16 v30, 0x1f8

    const/16 v31, 0x0

    const/16 v34, 0x0

    const/16 v35, 0x0

    const/16 v36, 0x0

    const/16 v41, 0x0

    move-object/from16 v26, v0

    move-object/from16 v27, v1

    move-object/from16 v28, v2

    move-wide/from16 v37, v4

    invoke-direct/range {v26 .. v41}, Lhd/T;-><init>(Lhd/M;Lhd/K;Ljava/lang/String;ILhd/w;Lhd/y;Lhd/X;Lhd/T;Lhd/T;Lhd/T;JJLU0/h;)V

    const-string v1, "call"

    move-object/from16 v6, v25

    invoke-static {v6, v1}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0

    :cond_2a
    move-object/from16 v6, v25

    if-nez v2, :cond_2b

    invoke-static {v3}, Ltb/k;->c(Ljava/lang/Object;)V

    invoke-virtual {v3}, Lhd/T;->c()Lhd/S;

    move-result-object v0

    invoke-static {v3}, LF6/e;->h(Lhd/T;)Lhd/T;

    move-result-object v1

    const-string v2, "cacheResponse"

    invoke-static {v1, v2}, Lhd/S;->b(Lhd/T;Ljava/lang/String;)V

    iput-object v1, v0, Lhd/S;->i:Lhd/T;

    invoke-virtual {v0}, Lhd/S;->a()Lhd/T;

    move-result-object v0

    const-string v1, "call"

    invoke-static {v6, v1}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0

    :cond_2b
    if-eqz v3, :cond_2c

    const-string v7, "call"

    invoke-static {v6, v7}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_14

    :cond_2c
    iget-object v7, v0, Ljd/b;->a:Lhd/g;

    if-eqz v7, :cond_2d

    const-string v7, "call"

    invoke-static {v6, v7}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_2d
    :goto_14
    :try_start_2
    move-object/from16 v7, p1

    check-cast v7, Lmd/f;

    invoke-virtual {v7, v2}, Lmd/f;->b(Lhd/M;)Lhd/T;

    move-result-object v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v3, :cond_39

    iget v7, v1, Lhd/T;->d:I

    const/16 v9, 0x130

    if-ne v7, v9, :cond_38

    invoke-virtual {v3}, Lhd/T;->c()Lhd/S;

    move-result-object v2

    iget-object v4, v3, Lhd/T;->f:Lhd/y;

    iget-object v5, v1, Lhd/T;->f:Lhd/y;

    new-instance v7, Ljava/util/ArrayList;

    const/16 v9, 0x14

    invoke-direct {v7, v9}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v4}, Lhd/y;->size()I

    move-result v9

    const/4 v10, 0x0

    :goto_15
    if-ge v10, v9, :cond_32

    invoke-virtual {v4, v10}, Lhd/y;->i(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v4, v10}, Lhd/y;->n(I)Ljava/lang/String;

    move-result-object v12

    const-string v13, "Warning"

    invoke-virtual {v13, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_2f

    const-string v13, "1"

    const/4 v14, 0x0

    invoke-static {v12, v13, v14}, LKc/r;->n(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v13

    if-eqz v13, :cond_2f

    :cond_2e
    :goto_16
    const/4 v11, 0x1

    goto :goto_18

    :cond_2f
    const-string v13, "Content-Length"

    invoke-virtual {v13, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_31

    const-string v13, "Content-Encoding"

    invoke-virtual {v13, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_31

    const-string v13, "Content-Type"

    invoke-virtual {v13, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_30

    goto :goto_17

    :cond_30
    invoke-static {v11}, LF6/e;->l(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_31

    invoke-virtual {v5, v11}, Lhd/y;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    if-nez v13, :cond_2e

    :cond_31
    :goto_17
    const-string v13, "name"

    invoke-static {v11, v13}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v13, "value"

    invoke-static {v12, v13}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v7, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v12}, LKc/k;->Q(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_16

    :goto_18
    add-int/2addr v10, v11

    goto :goto_15

    :cond_32
    invoke-virtual {v5}, Lhd/y;->size()I

    move-result v4

    const/4 v14, 0x0

    :goto_19
    if-ge v14, v4, :cond_35

    invoke-virtual {v5, v14}, Lhd/y;->i(I)Ljava/lang/String;

    move-result-object v9

    const-string v10, "Content-Length"

    invoke-virtual {v10, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_34

    const-string v10, "Content-Encoding"

    invoke-virtual {v10, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_34

    const-string v10, "Content-Type"

    invoke-virtual {v10, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_33

    goto :goto_1a

    :cond_33
    invoke-static {v9}, LF6/e;->l(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_34

    invoke-virtual {v5, v14}, Lhd/y;->n(I)Ljava/lang/String;

    move-result-object v10

    const-string v11, "name"

    invoke-static {v9, v11}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v11, "value"

    invoke-static {v10, v11}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v10}, LKc/k;->Q(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_34
    :goto_1a
    const/4 v9, 0x1

    add-int/2addr v14, v9

    goto :goto_19

    :cond_35
    new-instance v4, Lhd/y;

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/String;

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/String;

    invoke-direct {v4, v5}, Lhd/y;-><init>([Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Lhd/S;->c(Lhd/y;)V

    iget-wide v4, v1, Lhd/T;->k:J

    iput-wide v4, v2, Lhd/S;->k:J

    iget-wide v4, v1, Lhd/T;->l:J

    iput-wide v4, v2, Lhd/S;->l:J

    invoke-static {v3}, LF6/e;->h(Lhd/T;)Lhd/T;

    move-result-object v4

    const-string v5, "cacheResponse"

    invoke-static {v4, v5}, Lhd/S;->b(Lhd/T;Ljava/lang/String;)V

    iput-object v4, v2, Lhd/S;->i:Lhd/T;

    invoke-static {v1}, LF6/e;->h(Lhd/T;)Lhd/T;

    move-result-object v4

    const-string v5, "networkResponse"

    invoke-static {v4, v5}, Lhd/S;->b(Lhd/T;Ljava/lang/String;)V

    iput-object v4, v2, Lhd/S;->h:Lhd/T;

    invoke-virtual {v2}, Lhd/S;->a()Lhd/T;

    move-result-object v2

    iget-object v1, v1, Lhd/T;->g:Lhd/X;

    invoke-static {v1}, Ltb/k;->c(Ljava/lang/Object;)V

    invoke-virtual {v1}, Lhd/X;->close()V

    iget-object v1, v0, Ljd/b;->a:Lhd/g;

    invoke-static {v1}, Ltb/k;->c(Ljava/lang/Object;)V

    monitor-enter v1

    monitor-exit v1

    iget-object v0, v0, Ljd/b;->a:Lhd/g;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lhd/e;

    invoke-direct {v0, v2}, Lhd/e;-><init>(Lhd/T;)V

    const-string v1, "null cannot be cast to non-null type okhttp3.Cache.CacheResponseBody"

    iget-object v3, v3, Lhd/T;->g:Lhd/X;

    invoke-static {v3, v1}, Ltb/k;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Lhd/d;

    iget-object v1, v3, Lhd/d;->a:Ljd/e;

    :try_start_3
    iget-object v3, v1, Ljd/e;->a:Ljava/lang/String;

    iget-wide v4, v1, Ljd/e;->b:J

    iget-object v1, v1, Ljd/e;->d:Ljd/g;

    invoke-virtual {v1, v4, v5, v3}, Ljd/g;->c(JLjava/lang/String;)Lcom/samsung/android/scloud/lib/setting/e;

    move-result-object v1
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    if-nez v1, :cond_36

    goto :goto_1b

    :cond_36
    :try_start_4
    invoke-virtual {v0, v1}, Lhd/e;->c(Lcom/samsung/android/scloud/lib/setting/e;)V

    invoke-virtual {v1}, Lcom/samsung/android/scloud/lib/setting/e;->b()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_1b

    :catch_2
    move-object v1, v8

    :catch_3
    if-eqz v1, :cond_37

    :try_start_5
    invoke-virtual {v1}, Lcom/samsung/android/scloud/lib/setting/e;->a()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    :catch_4
    :cond_37
    :goto_1b
    const-string v0, "call"

    invoke-static {v6, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v2

    :cond_38
    iget-object v7, v3, Lhd/T;->g:Lhd/X;

    if-eqz v7, :cond_39

    invoke-static {v7}, Lid/b;->c(Ljava/io/Closeable;)V

    :cond_39
    invoke-virtual {v1}, Lhd/T;->c()Lhd/S;

    move-result-object v7

    invoke-static {v3}, LF6/e;->h(Lhd/T;)Lhd/T;

    move-result-object v9

    const-string v10, "cacheResponse"

    invoke-static {v9, v10}, Lhd/S;->b(Lhd/T;Ljava/lang/String;)V

    iput-object v9, v7, Lhd/S;->i:Lhd/T;

    invoke-static {v1}, LF6/e;->h(Lhd/T;)Lhd/T;

    move-result-object v1

    const-string v9, "networkResponse"

    invoke-static {v1, v9}, Lhd/S;->b(Lhd/T;Ljava/lang/String;)V

    iput-object v1, v7, Lhd/S;->h:Lhd/T;

    invoke-virtual {v7}, Lhd/S;->a()Lhd/T;

    move-result-object v1

    iget-object v7, v0, Ljd/b;->a:Lhd/g;

    if-eqz v7, :cond_44

    invoke-static {v1}, Lmd/e;->a(Lhd/T;)Z

    move-result v7

    if-eqz v7, :cond_42

    invoke-static {v1, v2}, LG5/X3;->c(Lhd/T;Lhd/M;)Z

    move-result v7

    if-eqz v7, :cond_42

    iget-object v0, v0, Ljd/b;->a:Lhd/g;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, v1, Lhd/T;->a:Lhd/M;

    iget-object v7, v2, Lhd/M;->b:Ljava/lang/String;

    const-string v9, "method"

    invoke-static {v7, v9}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v9, "POST"

    invoke-virtual {v7, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_3e

    const-string v9, "PATCH"

    invoke-virtual {v7, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_3e

    const-string v9, "PUT"

    invoke-virtual {v7, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_3e

    const-string v9, "DELETE"

    invoke-virtual {v7, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_3e

    const-string v9, "MOVE"

    invoke-virtual {v7, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3a

    goto :goto_1c

    :cond_3a
    const-string v9, "GET"

    invoke-virtual {v7, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3b

    goto :goto_1d

    :cond_3b
    iget-object v7, v1, Lhd/T;->f:Lhd/y;

    invoke-static {v7}, LG5/F3;->l(Lhd/y;)Ljava/util/Set;

    move-result-object v7

    const-string v9, "*"

    invoke-interface {v7, v9}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3c

    goto :goto_1d

    :cond_3c
    new-instance v7, Lhd/e;

    invoke-direct {v7, v1}, Lhd/e;-><init>(Lhd/T;)V

    :try_start_6
    iget-object v9, v0, Lhd/g;->a:Ljd/g;

    iget-object v2, v2, Lhd/M;->a:Lhd/A;

    invoke-static {v2}, LG5/F3;->h(Lhd/A;)Ljava/lang/String;

    move-result-object v2

    sget-object v10, Ljd/g;->r:LKc/j;

    invoke-virtual {v9, v4, v5, v2}, Ljd/g;->c(JLjava/lang/String;)Lcom/samsung/android/scloud/lib/setting/e;

    move-result-object v2
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    if-nez v2, :cond_3d

    goto :goto_1d

    :cond_3d
    :try_start_7
    invoke-virtual {v7, v2}, Lhd/e;->c(Lcom/samsung/android/scloud/lib/setting/e;)V

    new-instance v4, Lcom/google/firebase/messaging/l;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    iput-object v0, v4, Lcom/google/firebase/messaging/l;->e:Ljava/lang/Object;

    iput-object v2, v4, Lcom/google/firebase/messaging/l;->b:Ljava/lang/Object;

    const/4 v5, 0x1

    invoke-virtual {v2, v5}, Lcom/samsung/android/scloud/lib/setting/e;->j(I)Lwd/x;

    move-result-object v5

    iput-object v5, v4, Lcom/google/firebase/messaging/l;->c:Ljava/lang/Object;

    new-instance v7, Lhd/f;

    invoke-direct {v7, v0, v4, v5}, Lhd/f;-><init>(Lhd/g;Lcom/google/firebase/messaging/l;Lwd/x;)V

    iput-object v7, v4, Lcom/google/firebase/messaging/l;->d:Ljava/lang/Object;
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_6

    move-object v8, v4

    goto :goto_1d

    :catch_5
    move-object v2, v8

    :catch_6
    if-eqz v2, :cond_3f

    :try_start_8
    invoke-virtual {v2}, Lcom/samsung/android/scloud/lib/setting/e;->a()V

    goto :goto_1d

    :cond_3e
    :goto_1c
    invoke-virtual {v0, v2}, Lhd/g;->a(Lhd/M;)V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_7

    :catch_7
    :cond_3f
    :goto_1d
    if-nez v8, :cond_40

    goto :goto_1e

    :cond_40
    iget-object v0, v8, Lcom/google/firebase/messaging/l;->d:Ljava/lang/Object;

    check-cast v0, Lhd/f;

    iget-object v2, v1, Lhd/T;->g:Lhd/X;

    invoke-static {v2}, Ltb/k;->c(Ljava/lang/Object;)V

    invoke-virtual {v2}, Lhd/X;->source()Lwd/i;

    move-result-object v2

    invoke-static {v0}, LG5/u2;->b(Lwd/x;)Lwd/s;

    move-result-object v0

    new-instance v4, Ljd/a;

    invoke-direct {v4, v2, v8, v0}, Ljd/a;-><init>(Lwd/i;Lcom/google/firebase/messaging/l;Lwd/s;)V

    const-string v0, "Content-Type"

    invoke-static {v1, v0}, Lhd/T;->b(Lhd/T;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iget-object v0, v1, Lhd/T;->g:Lhd/X;

    invoke-virtual {v0}, Lhd/X;->contentLength()J

    move-result-wide v9

    invoke-virtual {v1}, Lhd/T;->c()Lhd/S;

    move-result-object v0

    new-instance v1, Lhd/V;

    invoke-static {v4}, LG5/u2;->c(Lwd/z;)Lwd/t;

    move-result-object v11

    const/4 v12, 0x1

    move-object v7, v1

    invoke-direct/range {v7 .. v12}, Lhd/V;-><init>(Ljava/lang/Object;JLwd/i;I)V

    iput-object v1, v0, Lhd/S;->g:Lhd/X;

    invoke-virtual {v0}, Lhd/S;->a()Lhd/T;

    move-result-object v1

    :goto_1e
    if-eqz v3, :cond_41

    const-string v0, "call"

    invoke-static {v6, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_41
    return-object v1

    :cond_42
    iget-object v3, v2, Lhd/M;->b:Ljava/lang/String;

    const-string v4, "method"

    invoke-static {v3, v4}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "POST"

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_43

    const-string v4, "PATCH"

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_43

    const-string v4, "PUT"

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_43

    const-string v4, "DELETE"

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_43

    const-string v4, "MOVE"

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_44

    :cond_43
    :try_start_9
    iget-object v0, v0, Ljd/b;->a:Lhd/g;

    invoke-virtual {v0, v2}, Lhd/g;->a(Lhd/M;)V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_8

    :catch_8
    :cond_44
    return-object v1

    :catchall_0
    move-exception v0

    if-eqz v1, :cond_45

    iget-object v1, v1, Lhd/T;->g:Lhd/X;

    if-eqz v1, :cond_45

    invoke-static {v1}, Lid/b;->c(Ljava/io/Closeable;)V

    :cond_45
    throw v0
.end method
