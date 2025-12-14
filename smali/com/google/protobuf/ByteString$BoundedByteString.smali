.class final Lcom/google/protobuf/ByteString$BoundedByteString;
.super Lcom/google/protobuf/ByteString$LiteralByteString;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/ByteString;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "BoundedByteString"
.end annotation


# instance fields
.field public final e:I

.field public final f:I


# direct methods
.method public constructor <init>([BII)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/google/protobuf/ByteString$LiteralByteString;-><init>([B)V

    add-int v0, p2, p3

    array-length p1, p1

    invoke-static {p2, v0, p1}, Lcom/google/protobuf/ByteString;->m(III)I

    iput p2, p0, Lcom/google/protobuf/ByteString$BoundedByteString;->e:I

    iput p3, p0, Lcom/google/protobuf/ByteString$BoundedByteString;->f:I

    return-void
.end method


# virtual methods
.method public final N()I
    .locals 0

    iget p0, p0, Lcom/google/protobuf/ByteString$BoundedByteString;->e:I

    return p0
.end method

.method public final i(I)B
    .locals 1

    iget v0, p0, Lcom/google/protobuf/ByteString$BoundedByteString;->f:I

    invoke-static {p1, v0}, Lcom/google/protobuf/ByteString;->l(II)V

    iget v0, p0, Lcom/google/protobuf/ByteString$BoundedByteString;->e:I

    add-int/2addr v0, p1

    iget-object p0, p0, Lcom/google/protobuf/ByteString$LiteralByteString;->d:[B

    aget-byte p0, p0, v0

    return p0
.end method

.method public final r([BIII)V
    .locals 1

    iget v0, p0, Lcom/google/protobuf/ByteString$BoundedByteString;->e:I

    add-int/2addr v0, p2

    iget-object p0, p0, Lcom/google/protobuf/ByteString$LiteralByteString;->d:[B

    invoke-static {p0, v0, p1, p3, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public final size()I
    .locals 0

    iget p0, p0, Lcom/google/protobuf/ByteString$BoundedByteString;->f:I

    return p0
.end method

.method public final u(I)B
    .locals 1

    iget v0, p0, Lcom/google/protobuf/ByteString$BoundedByteString;->e:I

    add-int/2addr v0, p1

    iget-object p0, p0, Lcom/google/protobuf/ByteString$LiteralByteString;->d:[B

    aget-byte p0, p0, v0

    return p0
.end method
