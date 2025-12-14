.class Lcom/google/protobuf/RopeByteString$1;
.super Lcom/google/protobuf/ByteString$AbstractByteIterator;
.source "SourceFile"


# instance fields
.field public final a:Lcom/google/protobuf/RopeByteString$PieceIterator;

.field public b:Lcom/google/protobuf/ByteString$ByteIterator;


# direct methods
.method public constructor <init>(Lcom/google/protobuf/RopeByteString;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/protobuf/RopeByteString$PieceIterator;

    invoke-direct {v0, p1}, Lcom/google/protobuf/RopeByteString$PieceIterator;-><init>(Lcom/google/protobuf/ByteString;)V

    iput-object v0, p0, Lcom/google/protobuf/RopeByteString$1;->a:Lcom/google/protobuf/RopeByteString$PieceIterator;

    invoke-virtual {p0}, Lcom/google/protobuf/RopeByteString$1;->b()Lcom/google/protobuf/ByteString$ByteIterator;

    move-result-object p1

    iput-object p1, p0, Lcom/google/protobuf/RopeByteString$1;->b:Lcom/google/protobuf/ByteString$ByteIterator;

    return-void
.end method


# virtual methods
.method public final a()B
    .locals 2

    iget-object v0, p0, Lcom/google/protobuf/RopeByteString$1;->b:Lcom/google/protobuf/ByteString$ByteIterator;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/google/protobuf/ByteString$ByteIterator;->a()B

    move-result v0

    iget-object v1, p0, Lcom/google/protobuf/RopeByteString$1;->b:Lcom/google/protobuf/ByteString$ByteIterator;

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/google/protobuf/RopeByteString$1;->b()Lcom/google/protobuf/ByteString$ByteIterator;

    move-result-object v1

    iput-object v1, p0, Lcom/google/protobuf/RopeByteString$1;->b:Lcom/google/protobuf/ByteString$ByteIterator;

    :cond_0
    return v0

    :cond_1
    new-instance p0, Ljava/util/NoSuchElementException;

    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    throw p0
.end method

.method public final b()Lcom/google/protobuf/ByteString$ByteIterator;
    .locals 1

    iget-object p0, p0, Lcom/google/protobuf/RopeByteString$1;->a:Lcom/google/protobuf/RopeByteString$PieceIterator;

    invoke-virtual {p0}, Lcom/google/protobuf/RopeByteString$PieceIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/protobuf/RopeByteString$PieceIterator;->b()Lcom/google/protobuf/ByteString$LeafByteString;

    move-result-object p0

    new-instance v0, Lcom/google/protobuf/ByteString$1;

    invoke-direct {v0, p0}, Lcom/google/protobuf/ByteString$1;-><init>(Lcom/google/protobuf/ByteString;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public final hasNext()Z
    .locals 0

    iget-object p0, p0, Lcom/google/protobuf/RopeByteString$1;->b:Lcom/google/protobuf/ByteString$ByteIterator;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
