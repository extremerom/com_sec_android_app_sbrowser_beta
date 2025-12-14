.class public final Lwd/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lwd/x;


# instance fields
.field public final synthetic a:I

.field public final b:Ljava/lang/Object;

.field public final c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    iput p1, p0, Lwd/b;->a:I

    iput-object p2, p0, Lwd/b;->b:Ljava/lang/Object;

    iput-object p3, p0, Lwd/b;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final R(Lwd/g;J)V
    .locals 7

    iget v0, p0, Lwd/b;->a:I

    packed-switch v0, :pswitch_data_0

    const-string v0, "source"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-wide v1, p1, Lwd/g;->b:J

    const-wide/16 v3, 0x0

    move-wide v5, p2

    invoke-static/range {v1 .. v6}, LG5/s2;->c(JJJ)V

    :cond_0
    :goto_0
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lwd/b;->c:Ljava/lang/Object;

    check-cast v0, Lwd/B;

    invoke-virtual {v0}, Lwd/B;->f()V

    iget-object v0, p1, Lwd/g;->a:Lwd/u;

    invoke-static {v0}, Ltb/k;->c(Ljava/lang/Object;)V

    iget v1, v0, Lwd/u;->c:I

    iget v2, v0, Lwd/u;->b:I

    sub-int/2addr v1, v2

    int-to-long v1, v1

    invoke-static {p2, p3, v1, v2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    long-to-int v1, v1

    iget-object v2, v0, Lwd/u;->a:[B

    iget v3, v0, Lwd/u;->b:I

    iget-object v4, p0, Lwd/b;->b:Ljava/lang/Object;

    check-cast v4, Ljava/io/OutputStream;

    invoke-virtual {v4, v2, v3, v1}, Ljava/io/OutputStream;->write([BII)V

    iget v2, v0, Lwd/u;->b:I

    add-int/2addr v2, v1

    iput v2, v0, Lwd/u;->b:I

    int-to-long v3, v1

    sub-long/2addr p2, v3

    iget-wide v5, p1, Lwd/g;->b:J

    sub-long/2addr v5, v3

    iput-wide v5, p1, Lwd/g;->b:J

    iget v1, v0, Lwd/u;->c:I

    if-ne v2, v1, :cond_0

    invoke-virtual {v0}, Lwd/u;->a()Lwd/u;

    move-result-object v1

    iput-object v1, p1, Lwd/g;->a:Lwd/u;

    invoke-static {v0}, Lwd/v;->a(Lwd/u;)V

    goto :goto_0

    :cond_1
    return-void

    :pswitch_0
    const-string v0, "source"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-wide v1, p1, Lwd/g;->b:J

    const-wide/16 v3, 0x0

    move-wide v5, p2

    invoke-static/range {v1 .. v6}, LG5/s2;->c(JJJ)V

    :goto_1
    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-lez v2, :cond_6

    iget-object v2, p1, Lwd/g;->a:Lwd/u;

    invoke-static {v2}, Ltb/k;->c(Ljava/lang/Object;)V

    :goto_2
    const-wide/32 v3, 0x10000

    cmp-long v3, v0, v3

    if-gez v3, :cond_3

    iget v3, v2, Lwd/u;->c:I

    iget v4, v2, Lwd/u;->b:I

    sub-int/2addr v3, v4

    int-to-long v3, v3

    add-long/2addr v0, v3

    cmp-long v3, v0, p2

    if-ltz v3, :cond_2

    move-wide v0, p2

    goto :goto_3

    :cond_2
    iget-object v2, v2, Lwd/u;->f:Lwd/u;

    invoke-static {v2}, Ltb/k;->c(Ljava/lang/Object;)V

    goto :goto_2

    :cond_3
    :goto_3
    iget-object v2, p0, Lwd/b;->c:Ljava/lang/Object;

    check-cast v2, Lwd/b;

    iget-object v3, p0, Lwd/b;->b:Ljava/lang/Object;

    check-cast v3, Lwd/y;

    invoke-virtual {v3}, Lwd/d;->h()V

    :try_start_0
    invoke-virtual {v2, p1, v0, v1}, Lwd/b;->R(Lwd/g;J)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v3}, Lwd/d;->i()Z

    move-result v2

    if-nez v2, :cond_4

    sub-long/2addr p2, v0

    goto :goto_1

    :cond_4
    const/4 p0, 0x0

    invoke-virtual {v3, p0}, Lwd/y;->k(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object p0

    throw p0

    :catchall_0
    move-exception p0

    goto :goto_5

    :catch_0
    move-exception p0

    :try_start_1
    invoke-virtual {v3}, Lwd/d;->i()Z

    move-result p1

    if-nez p1, :cond_5

    goto :goto_4

    :cond_5
    invoke-virtual {v3, p0}, Lwd/y;->k(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object p0

    :goto_4
    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_5
    invoke-virtual {v3}, Lwd/d;->i()Z

    throw p0

    :cond_6
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final close()V
    .locals 2

    iget v0, p0, Lwd/b;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Lwd/b;->b:Ljava/lang/Object;

    check-cast p0, Ljava/io/OutputStream;

    invoke-virtual {p0}, Ljava/io/OutputStream;->close()V

    return-void

    :pswitch_0
    iget-object v0, p0, Lwd/b;->c:Ljava/lang/Object;

    check-cast v0, Lwd/b;

    iget-object p0, p0, Lwd/b;->b:Ljava/lang/Object;

    check-cast p0, Lwd/y;

    invoke-virtual {p0}, Lwd/d;->h()V

    :try_start_0
    invoke-virtual {v0}, Lwd/b;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Lwd/d;->i()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lwd/y;->k(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object p0

    throw p0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_1
    invoke-virtual {p0}, Lwd/d;->i()Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v0}, Lwd/y;->k(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object v0

    :goto_0
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    invoke-virtual {p0}, Lwd/d;->i()Z

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final flush()V
    .locals 2

    iget v0, p0, Lwd/b;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Lwd/b;->b:Ljava/lang/Object;

    check-cast p0, Ljava/io/OutputStream;

    invoke-virtual {p0}, Ljava/io/OutputStream;->flush()V

    return-void

    :pswitch_0
    iget-object v0, p0, Lwd/b;->c:Ljava/lang/Object;

    check-cast v0, Lwd/b;

    iget-object p0, p0, Lwd/b;->b:Ljava/lang/Object;

    check-cast p0, Lwd/y;

    invoke-virtual {p0}, Lwd/d;->h()V

    :try_start_0
    invoke-virtual {v0}, Lwd/b;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Lwd/d;->i()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lwd/y;->k(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object p0

    throw p0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_1
    invoke-virtual {p0}, Lwd/d;->i()Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v0}, Lwd/y;->k(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object v0

    :goto_0
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    invoke-virtual {p0}, Lwd/d;->i()Z

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final timeout()Lwd/B;
    .locals 1

    iget v0, p0, Lwd/b;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Lwd/b;->c:Ljava/lang/Object;

    check-cast p0, Lwd/B;

    return-object p0

    :pswitch_0
    iget-object p0, p0, Lwd/b;->b:Ljava/lang/Object;

    check-cast p0, Lwd/y;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    iget v0, p0, Lwd/b;->a:I

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "sink("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lwd/b;->b:Ljava/lang/Object;

    check-cast p0, Ljava/io/OutputStream;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "AsyncTimeout.sink("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lwd/b;->c:Ljava/lang/Object;

    check-cast p0, Lwd/b;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
