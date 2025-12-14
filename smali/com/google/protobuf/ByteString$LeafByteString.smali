.class abstract Lcom/google/protobuf/ByteString$LeafByteString;
.super Lcom/google/protobuf/ByteString;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/ByteString;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "LeafByteString"
.end annotation


# virtual methods
.method public final L(Lcom/google/protobuf/ByteOutput;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/protobuf/ByteString;->K(Lcom/google/protobuf/ByteOutput;)V

    return-void
.end method

.method public abstract M(Lcom/google/protobuf/ByteString;II)Z
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 1

    new-instance v0, Lcom/google/protobuf/ByteString$1;

    invoke-direct {v0, p0}, Lcom/google/protobuf/ByteString$1;-><init>(Lcom/google/protobuf/ByteString;)V

    return-object v0
.end method

.method public final s()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public u(I)B
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/protobuf/ByteString$LeafByteString;->i(I)B

    move-result p0

    return p0
.end method
