.class public final Lhd/N;
.super Lhd/Q;
.source "SourceFile"


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lhd/D;

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lhd/D;Ljava/lang/Object;I)V
    .locals 0

    iput p3, p0, Lhd/N;->a:I

    iput-object p1, p0, Lhd/N;->b:Lhd/D;

    iput-object p2, p0, Lhd/N;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final contentLength()J
    .locals 2

    iget v0, p0, Lhd/N;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Lhd/N;->c:Ljava/lang/Object;

    check-cast p0, Lwd/j;

    invoke-virtual {p0}, Lwd/j;->d()I

    move-result p0

    int-to-long v0, p0

    return-wide v0

    :pswitch_0
    iget-object p0, p0, Lhd/N;->c:Ljava/lang/Object;

    check-cast p0, Ljava/io/File;

    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v0

    return-wide v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final contentType()Lhd/D;
    .locals 1

    iget v0, p0, Lhd/N;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Lhd/N;->b:Lhd/D;

    return-object p0

    :pswitch_0
    iget-object p0, p0, Lhd/N;->b:Lhd/D;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final writeTo(Lwd/h;)V
    .locals 2

    iget-object v0, p0, Lhd/N;->c:Ljava/lang/Object;

    const-string v1, "sink"

    iget p0, p0, Lhd/N;->a:I

    invoke-static {p1, v1}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    packed-switch p0, :pswitch_data_0

    check-cast v0, Lwd/j;

    invoke-interface {p1, v0}, Lwd/h;->D(Lwd/j;)Lwd/h;

    return-void

    :pswitch_0
    sget-object p0, Lwd/p;->a:Ljava/util/logging/Logger;

    const-string p0, "<this>"

    check-cast v0, Ljava/io/File;

    invoke-static {v0, p0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lwd/c;

    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    sget-object v0, Lwd/B;->d:Lwd/A;

    invoke-direct {p0, v1, v0}, Lwd/c;-><init>(Ljava/io/InputStream;Lwd/B;)V

    :try_start_0
    invoke-interface {p1, p0}, Lwd/h;->o0(Lwd/z;)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x0

    invoke-static {p0, p1}, LG5/q;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v0

    invoke-static {p0, p1}, LG5/q;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
