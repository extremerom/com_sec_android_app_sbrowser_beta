.class public final Lmd/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lhd/C;


# virtual methods
.method public final intercept(Lhd/B;)Lhd/T;
    .locals 17

    const-string v1, "Connection"

    const-string v2, "close"

    const-string v3, "call"

    const-string v4, "HTTP "

    move-object/from16 v0, p1

    check-cast v0, Lmd/f;

    iget-object v5, v0, Lmd/f;->d:LU0/h;

    invoke-static {v5}, Ltb/k;->c(Ljava/lang/Object;)V

    iget-object v6, v5, LU0/h;->c:Ljava/lang/Object;

    check-cast v6, Lld/i;

    iget-object v7, v5, LU0/h;->e:Ljava/lang/Object;

    check-cast v7, Lmd/d;

    iget-object v8, v5, LU0/h;->f:Ljava/lang/Object;

    check-cast v8, Lld/k;

    iget-object v9, v0, Lmd/f;->e:Lhd/M;

    iget-object v0, v9, Lhd/M;->d:Lhd/Q;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    const/4 v14, 0x1

    :try_start_0
    invoke-static {v6, v3}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v7, v9}, Lmd/d;->c(Lhd/M;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_a

    :try_start_1
    iget-object v15, v9, Lhd/M;->b:Ljava/lang/String;

    invoke-static {v15}, Le7/a;->e(Ljava/lang/String;)Z

    move-result v15
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_9

    if-eqz v15, :cond_5

    if-eqz v0, :cond_5

    :try_start_2
    const-string v15, "100-continue"

    const-string v12, "Expect"

    iget-object v13, v9, Lhd/M;->c:Lhd/y;

    invoke-virtual {v13, v12}, Lhd/y;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v15, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    if-eqz v12, :cond_0

    :try_start_3
    invoke-interface {v7}, Lmd/d;->g()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    :try_start_4
    invoke-virtual {v5, v14}, LU0/h;->e(Z)Lhd/S;

    move-result-object v12
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    :try_start_5
    invoke-static {v6, v3}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    move-object v13, v12

    const/4 v12, 0x0

    goto :goto_1

    :catch_0
    move-exception v0

    move-object v13, v12

    :goto_0
    const/4 v12, 0x0

    goto/16 :goto_8

    :catch_1
    move-exception v0

    const/4 v12, 0x0

    const/4 v13, 0x0

    goto/16 :goto_8

    :catch_2
    move-exception v0

    move-object v12, v0

    :try_start_6
    invoke-static {v6, v3}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v5, v12}, LU0/h;->f(Ljava/io/IOException;)V

    throw v12
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    :cond_0
    move v12, v14

    const/4 v13, 0x0

    :goto_1
    if-nez v13, :cond_2

    :try_start_7
    invoke-virtual {v0}, Lhd/Q;->isDuplex()Z

    move-result v15
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    if-eqz v15, :cond_1

    :try_start_8
    invoke-interface {v7}, Lmd/d;->g()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4

    :try_start_9
    invoke-virtual {v5, v9, v14}, LU0/h;->c(Lhd/M;Z)Lld/c;

    move-result-object v14

    invoke-static {v14}, LG5/u2;->b(Lwd/x;)Lwd/s;

    move-result-object v14

    invoke-virtual {v0, v14}, Lhd/Q;->writeTo(Lwd/h;)V

    :goto_2
    move/from16 v16, v12

    goto :goto_4

    :catch_3
    move-exception v0

    move v14, v12

    goto :goto_0

    :catch_4
    move-exception v0

    move-object v14, v0

    invoke-static {v6, v3}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v5, v14}, LU0/h;->f(Ljava/io/IOException;)V

    throw v14

    :cond_1
    const/4 v14, 0x0

    invoke-virtual {v5, v9, v14}, LU0/h;->c(Lhd/M;Z)Lld/c;

    move-result-object v15

    invoke-static {v15}, LG5/u2;->b(Lwd/x;)Lwd/s;

    move-result-object v14

    invoke-virtual {v0, v14}, Lhd/Q;->writeTo(Lwd/h;)V

    invoke-virtual {v14}, Lwd/s;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_3

    goto :goto_2

    :cond_2
    move/from16 v16, v12

    const/4 v12, 0x0

    const/4 v15, 0x0

    :try_start_a
    invoke-virtual {v6, v5, v14, v12, v15}, Lld/i;->f(LU0/h;ZZLjava/io/IOException;)Ljava/io/IOException;

    iget-object v12, v8, Lld/k;->g:Lod/q;

    if-eqz v12, :cond_3

    goto :goto_3

    :cond_3
    const/4 v14, 0x0

    :goto_3
    if-nez v14, :cond_4

    invoke-interface {v7}, Lmd/d;->b()Lld/k;

    move-result-object v12

    invoke-virtual {v12}, Lld/k;->k()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_5

    goto :goto_4

    :catch_5
    move-exception v0

    move/from16 v14, v16

    goto :goto_0

    :cond_4
    :goto_4
    move/from16 v14, v16

    const/4 v12, 0x0

    goto :goto_5

    :cond_5
    const/4 v12, 0x0

    const/4 v13, 0x0

    :try_start_b
    invoke-virtual {v6, v5, v14, v13, v12}, Lld/i;->f(LU0/h;ZZLjava/io/IOException;)Ljava/io/IOException;
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_8

    move-object v13, v12

    :goto_5
    if-eqz v0, :cond_6

    :try_start_c
    invoke-virtual {v0}, Lhd/Q;->isDuplex()Z

    move-result v0
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_6

    if-nez v0, :cond_7

    goto :goto_6

    :catch_6
    move-exception v0

    goto :goto_8

    :cond_6
    :goto_6
    :try_start_d
    invoke-interface {v7}, Lmd/d;->a()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_7

    :cond_7
    move-object v15, v12

    goto :goto_9

    :catch_7
    move-exception v0

    move-object v15, v0

    :try_start_e
    invoke-virtual {v5, v15}, LU0/h;->f(Ljava/io/IOException;)V

    throw v15
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_6

    :catch_8
    move-exception v0

    :goto_7
    move-object v13, v12

    goto :goto_8

    :catch_9
    move-exception v0

    const/4 v12, 0x0

    goto :goto_7

    :catch_a
    move-exception v0

    const/4 v12, 0x0

    :try_start_f
    invoke-static {v6, v3}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v5, v0}, LU0/h;->f(Ljava/io/IOException;)V

    throw v0
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_8

    :goto_8
    instance-of v15, v0, Lod/a;

    if-nez v15, :cond_14

    iget-boolean v15, v5, LU0/h;->b:Z

    if-eqz v15, :cond_13

    move-object v15, v0

    :goto_9
    if-nez v13, :cond_8

    const/4 v12, 0x0

    :try_start_10
    invoke-virtual {v5, v12}, LU0/h;->e(Z)Lhd/S;

    move-result-object v13

    invoke-static {v13}, Ltb/k;->c(Ljava/lang/Object;)V

    if-eqz v14, :cond_8

    invoke-static {v6, v3}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v14, 0x0

    goto :goto_a

    :catch_b
    move-exception v0

    goto/16 :goto_f

    :cond_8
    :goto_a
    iput-object v9, v13, Lhd/S;->a:Lhd/M;

    iget-object v0, v8, Lld/k;->e:Lhd/w;

    iput-object v0, v13, Lhd/S;->e:Lhd/w;

    iput-wide v10, v13, Lhd/S;->k:J

    move-object v12, v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, v13, Lhd/S;->l:J

    invoke-virtual {v13}, Lhd/S;->a()Lhd/T;

    move-result-object v0

    iget v1, v0, Lhd/T;->d:I

    const/16 v13, 0x64

    if-ne v1, v13, :cond_9

    :goto_b
    const/4 v1, 0x0

    goto :goto_c

    :cond_9
    const/16 v13, 0x66

    if-gt v13, v1, :cond_b

    const/16 v13, 0xc8

    if-ge v1, v13, :cond_b

    goto :goto_b

    :goto_c
    invoke-virtual {v5, v1}, LU0/h;->e(Z)Lhd/S;

    move-result-object v0

    invoke-static {v0}, Ltb/k;->c(Ljava/lang/Object;)V

    if-eqz v14, :cond_a

    invoke-static {v6, v3}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_a
    iput-object v9, v0, Lhd/S;->a:Lhd/M;

    iget-object v1, v8, Lld/k;->e:Lhd/w;

    iput-object v1, v0, Lhd/S;->e:Lhd/w;

    iput-wide v10, v0, Lhd/S;->k:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iput-wide v8, v0, Lhd/S;->l:J

    invoke-virtual {v0}, Lhd/S;->a()Lhd/T;

    move-result-object v0

    iget v1, v0, Lhd/T;->d:I

    :cond_b
    invoke-static {v6, v3}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lhd/T;->c()Lhd/S;

    move-result-object v3

    invoke-virtual {v5, v0}, LU0/h;->d(Lhd/T;)Lhd/V;

    move-result-object v0

    iput-object v0, v3, Lhd/S;->g:Lhd/X;

    invoke-virtual {v3}, Lhd/S;->a()Lhd/T;

    move-result-object v0

    iget-object v3, v0, Lhd/T;->a:Lhd/M;

    iget-object v3, v3, Lhd/M;->c:Lhd/y;

    invoke-virtual {v3, v12}, Lhd/y;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_c

    invoke-static {v0, v12}, Lhd/T;->b(Lhd/T;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_d

    :cond_c
    invoke-interface {v7}, Lmd/d;->b()Lld/k;

    move-result-object v2

    invoke-virtual {v2}, Lld/k;->k()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_b

    :cond_d
    const/16 v2, 0xcc

    if-eq v1, v2, :cond_e

    const/16 v2, 0xcd

    if-ne v1, v2, :cond_11

    :cond_e
    iget-object v2, v0, Lhd/T;->g:Lhd/X;

    if-eqz v2, :cond_f

    :try_start_11
    invoke-virtual {v2}, Lhd/X;->contentLength()J

    move-result-wide v5

    goto :goto_d

    :cond_f
    const-wide/16 v5, -0x1

    :goto_d
    const-wide/16 v7, 0x0

    cmp-long v3, v5, v7

    if-lez v3, :cond_11

    new-instance v0, Ljava/net/ProtocolException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " had non-zero Content-Length: "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v2, :cond_10

    invoke-virtual {v2}, Lhd/X;->contentLength()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    goto :goto_e

    :cond_10
    const/4 v12, 0x0

    :goto_e
    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_b

    :cond_11
    return-object v0

    :goto_f
    if-eqz v15, :cond_12

    invoke-static {v15, v0}, LG5/y2;->b(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    throw v15

    :cond_12
    throw v0

    :cond_13
    throw v0

    :cond_14
    throw v0
.end method
