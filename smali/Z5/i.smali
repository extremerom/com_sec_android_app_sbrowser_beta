.class public final LZ5/i;
.super Ljava/io/InputStream;
.source "SourceFile"


# instance fields
.field public final a:Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;

.field public volatile b:LZ5/d;


# direct methods
.method public constructor <init>(Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;)V
    .locals 0

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    iput-object p1, p0, LZ5/i;->a:Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    iget-object p0, p0, LZ5/i;->b:LZ5/d;

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, LK3/a;

    const-string p1, "Channel closed unexpectedly before stream was finished"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    return-void
.end method

.method public final available()I
    .locals 0

    iget-object p0, p0, LZ5/i;->a:Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;

    invoke-virtual {p0}, Ljava/io/InputStream;->available()I

    move-result p0

    return p0
.end method

.method public final close()V
    .locals 0

    iget-object p0, p0, LZ5/i;->a:Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;

    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    return-void
.end method

.method public final mark(I)V
    .locals 0

    iget-object p0, p0, LZ5/i;->a:Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;

    invoke-virtual {p0, p1}, Ljava/io/InputStream;->mark(I)V

    return-void
.end method

.method public final markSupported()Z
    .locals 0

    iget-object p0, p0, LZ5/i;->a:Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;

    invoke-virtual {p0}, Ljava/io/InputStream;->markSupported()Z

    move-result p0

    return p0
.end method

.method public final read()I
    .locals 1

    iget-object v0, p0, LZ5/i;->a:Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    invoke-virtual {p0, v0}, LZ5/i;->a(I)V

    return v0
.end method

.method public final read([B)I
    .locals 1

    iget-object v0, p0, LZ5/i;->a:Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;

    invoke-virtual {v0, p1}, Ljava/io/InputStream;->read([B)I

    move-result p1

    invoke-virtual {p0, p1}, LZ5/i;->a(I)V

    return p1
.end method

.method public final read([BII)I
    .locals 1

    iget-object v0, p0, LZ5/i;->a:Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result p1

    invoke-virtual {p0, p1}, LZ5/i;->a(I)V

    return p1
.end method

.method public final reset()V
    .locals 0

    iget-object p0, p0, LZ5/i;->a:Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;

    invoke-virtual {p0}, Ljava/io/InputStream;->reset()V

    return-void
.end method

.method public final skip(J)J
    .locals 0

    iget-object p0, p0, LZ5/i;->a:Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;

    invoke-virtual {p0, p1, p2}, Ljava/io/InputStream;->skip(J)J

    move-result-wide p0

    return-wide p0
.end method
