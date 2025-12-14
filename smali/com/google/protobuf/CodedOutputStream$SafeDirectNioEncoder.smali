.class final Lcom/google/protobuf/CodedOutputStream$SafeDirectNioEncoder;
.super Lcom/google/protobuf/CodedOutputStream;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/CodedOutputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SafeDirectNioEncoder"
.end annotation


# virtual methods
.method public final A0(I)V
    .locals 3

    const/4 v0, 0x0

    if-ltz p1, :cond_0

    invoke-virtual {p0, p1}, Lcom/google/protobuf/CodedOutputStream$SafeDirectNioEncoder;->I0(I)V

    throw v0

    :cond_0
    int-to-long v1, p1

    invoke-virtual {p0, v1, v2}, Lcom/google/protobuf/CodedOutputStream$SafeDirectNioEncoder;->J0(J)V

    throw v0
.end method

.method public final B0(ILcom/google/protobuf/MessageLite;)V
    .locals 0

    const/4 p2, 0x2

    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/CodedOutputStream$SafeDirectNioEncoder;->H0(II)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final C(IZ)V
    .locals 0

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/CodedOutputStream$SafeDirectNioEncoder;->H0(II)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final C0(ILcom/google/protobuf/MessageLite;Lcom/google/protobuf/Schema;)V
    .locals 0

    const/4 p2, 0x2

    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/CodedOutputStream$SafeDirectNioEncoder;->H0(II)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final D0(Lcom/google/protobuf/MessageLite;)V
    .locals 0

    invoke-interface {p1}, Lcom/google/protobuf/MessageLite;->getSerializedSize()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/protobuf/CodedOutputStream$SafeDirectNioEncoder;->I0(I)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final E0(ILcom/google/protobuf/MessageLite;)V
    .locals 0

    const/4 p1, 0x1

    const/4 p2, 0x3

    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/CodedOutputStream$SafeDirectNioEncoder;->H0(II)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final F0(ILcom/google/protobuf/ByteString;)V
    .locals 0

    const/4 p1, 0x1

    const/4 p2, 0x3

    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/CodedOutputStream$SafeDirectNioEncoder;->H0(II)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final G0(Ljava/lang/String;)V
    .locals 0

    const/4 p0, 0x0

    throw p0
.end method

.method public final H0(II)V
    .locals 0

    shl-int/lit8 p1, p1, 0x3

    or-int/2addr p1, p2

    invoke-virtual {p0, p1}, Lcom/google/protobuf/CodedOutputStream$SafeDirectNioEncoder;->I0(I)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final I0(I)V
    .locals 0

    and-int/lit8 p0, p1, -0x80

    const/4 p1, 0x0

    if-nez p0, :cond_0

    throw p1

    :cond_0
    throw p1
.end method

.method public final J0(J)V
    .locals 2

    const-wide/16 v0, -0x80

    and-long p0, p1, v0

    const-wide/16 v0, 0x0

    cmp-long p0, p0, v0

    const/4 p1, 0x0

    if-nez p0, :cond_0

    throw p1

    :cond_0
    throw p1
.end method

.method public final Q(Ljava/nio/ByteBuffer;)V
    .locals 0

    const/4 p0, 0x0

    throw p0
.end method

.method public final R([BII)V
    .locals 0

    const/4 p0, 0x0

    throw p0
.end method

.method public final d(II)V
    .locals 0

    const/4 p2, 0x5

    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/CodedOutputStream$SafeDirectNioEncoder;->H0(II)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final f(ILjava/lang/String;)V
    .locals 0

    const/4 p2, 0x2

    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/CodedOutputStream$SafeDirectNioEncoder;->H0(II)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final g(IJ)V
    .locals 0

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/CodedOutputStream$SafeDirectNioEncoder;->H0(II)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final j(ILcom/google/protobuf/ByteString;)V
    .locals 0

    const/4 p2, 0x2

    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/CodedOutputStream$SafeDirectNioEncoder;->H0(II)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final k(II)V
    .locals 0

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/CodedOutputStream$SafeDirectNioEncoder;->H0(II)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final t(II)V
    .locals 0

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/CodedOutputStream$SafeDirectNioEncoder;->H0(II)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final u0()I
    .locals 0

    const/4 p0, 0x0

    throw p0
.end method

.method public final v0(B)V
    .locals 0

    const/4 p0, 0x0

    throw p0
.end method

.method public final w0(I[B)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/protobuf/CodedOutputStream$SafeDirectNioEncoder;->I0(I)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final x(IJ)V
    .locals 0

    const/4 p2, 0x1

    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/CodedOutputStream$SafeDirectNioEncoder;->H0(II)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final x0(Lcom/google/protobuf/ByteString;)V
    .locals 0

    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->size()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/protobuf/CodedOutputStream$SafeDirectNioEncoder;->I0(I)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final y0(I)V
    .locals 0

    const/4 p0, 0x0

    throw p0
.end method

.method public final z0(J)V
    .locals 0

    const/4 p0, 0x0

    throw p0
.end method
