.class public final Lwd/f;
.super Ljava/io/InputStream;
.source "SourceFile"


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lwd/i;


# direct methods
.method public synthetic constructor <init>(Lwd/i;I)V
    .locals 0

    iput p2, p0, Lwd/f;->a:I

    iput-object p1, p0, Lwd/f;->b:Lwd/i;

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    return-void
.end method

.method private final a()V
    .locals 0

    return-void
.end method


# virtual methods
.method public final available()I
    .locals 4

    iget v0, p0, Lwd/f;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Lwd/f;->b:Lwd/i;

    check-cast p0, Lwd/t;

    iget-boolean v0, p0, Lwd/t;->c:Z

    if-nez v0, :cond_0

    iget-object p0, p0, Lwd/t;->b:Lwd/g;

    iget-wide v0, p0, Lwd/g;->b:J

    const p0, 0x7fffffff

    int-to-long v2, p0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int p0, v0

    return p0

    :cond_0
    new-instance p0, Ljava/io/IOException;

    const-string v0, "closed"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_0
    iget-object p0, p0, Lwd/f;->b:Lwd/i;

    check-cast p0, Lwd/g;

    iget-wide v0, p0, Lwd/g;->b:J

    const p0, 0x7fffffff

    int-to-long v2, p0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int p0, v0

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final close()V
    .locals 1

    iget v0, p0, Lwd/f;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Lwd/f;->b:Lwd/i;

    check-cast p0, Lwd/t;

    invoke-virtual {p0}, Lwd/t;->close()V

    :pswitch_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final read()I
    .locals 5

    iget v0, p0, Lwd/f;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Lwd/f;->b:Lwd/i;

    check-cast p0, Lwd/t;

    iget-boolean v0, p0, Lwd/t;->c:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lwd/t;->b:Lwd/g;

    iget-wide v1, v0, Lwd/g;->b:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    iget-object p0, p0, Lwd/t;->a:Lwd/z;

    const-wide/16 v1, 0x2000

    invoke-interface {p0, v0, v1, v2}, Lwd/z;->read(Lwd/g;J)J

    move-result-wide v1

    const-wide/16 v3, -0x1

    cmp-long p0, v1, v3

    if-nez p0, :cond_0

    const/4 p0, -0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lwd/g;->q()B

    move-result p0

    and-int/lit16 p0, p0, 0xff

    :goto_0
    return p0

    :cond_1
    new-instance p0, Ljava/io/IOException;

    const-string v0, "closed"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_0
    iget-object p0, p0, Lwd/f;->b:Lwd/i;

    check-cast p0, Lwd/g;

    iget-wide v0, p0, Lwd/g;->b:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_2

    invoke-virtual {p0}, Lwd/g;->q()B

    move-result p0

    and-int/lit16 p0, p0, 0xff

    goto :goto_1

    :cond_2
    const/4 p0, -0x1

    :goto_1
    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final read([BII)I
    .locals 7

    iget v0, p0, Lwd/f;->a:I

    packed-switch v0, :pswitch_data_0

    const-string v0, "data"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lwd/f;->b:Lwd/i;

    check-cast p0, Lwd/t;

    iget-boolean v0, p0, Lwd/t;->c:Z

    if-nez v0, :cond_1

    array-length v0, p1

    int-to-long v1, v0

    int-to-long v3, p2

    int-to-long v5, p3

    invoke-static/range {v1 .. v6}, LG5/s2;->c(JJJ)V

    iget-object v0, p0, Lwd/t;->b:Lwd/g;

    iget-wide v1, v0, Lwd/g;->b:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    iget-object p0, p0, Lwd/t;->a:Lwd/z;

    const-wide/16 v1, 0x2000

    invoke-interface {p0, v0, v1, v2}, Lwd/z;->read(Lwd/g;J)J

    move-result-wide v1

    const-wide/16 v3, -0x1

    cmp-long p0, v1, v3

    if-nez p0, :cond_0

    const/4 p0, -0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1, p2, p3}, Lwd/g;->o([BII)I

    move-result p0

    :goto_0
    return p0

    :cond_1
    new-instance p0, Ljava/io/IOException;

    const-string p1, "closed"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_0
    const-string v0, "sink"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lwd/f;->b:Lwd/i;

    check-cast p0, Lwd/g;

    invoke-virtual {p0, p1, p2, p3}, Lwd/g;->o([BII)I

    move-result p0

    return p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    iget v0, p0, Lwd/f;->a:I

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lwd/f;->b:Lwd/i;

    check-cast p0, Lwd/t;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ".inputStream()"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lwd/f;->b:Lwd/i;

    check-cast p0, Lwd/g;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ".inputStream()"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
