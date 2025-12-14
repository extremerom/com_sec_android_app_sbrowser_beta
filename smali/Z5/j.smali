.class public final LZ5/j;
.super Ljava/io/OutputStream;
.source "SourceFile"


# instance fields
.field public final a:Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;

.field public volatile b:LZ5/d;


# direct methods
.method public constructor <init>(Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;)V
    .locals 0

    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    iput-object p1, p0, LZ5/j;->a:Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;

    return-void
.end method


# virtual methods
.method public final a(Ljava/io/IOException;)Ljava/io/IOException;
    .locals 1

    iget-object p0, p0, LZ5/j;->b:LZ5/d;

    if-eqz p0, :cond_1

    const-string p0, "ChannelOutputStream"

    const/4 v0, 0x2

    invoke-static {p0, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Caught IOException, but channel has been closed. Translating to ChannelIOException."

    invoke-static {p0, v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    new-instance p0, LK3/a;

    const-string p1, "Channel closed unexpectedly before stream was finished"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    return-object p0

    :cond_1
    return-object p1
.end method

.method public final close()V
    .locals 1

    :try_start_0
    iget-object v0, p0, LZ5/j;->a:Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {p0, v0}, LZ5/j;->a(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object p0

    throw p0
.end method

.method public final flush()V
    .locals 1

    :try_start_0
    iget-object v0, p0, LZ5/j;->a:Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {p0, v0}, LZ5/j;->a(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object p0

    throw p0
.end method

.method public final write(I)V
    .locals 1

    :try_start_0
    iget-object v0, p0, LZ5/j;->a:Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    invoke-virtual {p0, p1}, LZ5/j;->a(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object p0

    throw p0
.end method

.method public final write([B)V
    .locals 1

    :try_start_0
    iget-object v0, p0, LZ5/j;->a:Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    invoke-virtual {p0, p1}, LZ5/j;->a(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object p0

    throw p0
.end method

.method public final write([BII)V
    .locals 1

    :try_start_0
    iget-object v0, p0, LZ5/j;->a:Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    invoke-virtual {p0, p1}, LZ5/j;->a(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object p0

    throw p0
.end method
