.class final Lcom/google/protobuf/RopeByteString;
.super Lcom/google/protobuf/ByteString;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protobuf/RopeByteString$Balancer;,
        Lcom/google/protobuf/RopeByteString$PieceIterator;,
        Lcom/google/protobuf/RopeByteString$RopeInputStream;
    }
.end annotation


# instance fields
.field public final d:I

.field public final e:Lcom/google/protobuf/ByteString;

.field public final f:Lcom/google/protobuf/ByteString;

.field public final g:I

.field public final h:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ByteString;)V
    .locals 2

    invoke-direct {p0}, Lcom/google/protobuf/ByteString;-><init>()V

    iput-object p1, p0, Lcom/google/protobuf/RopeByteString;->e:Lcom/google/protobuf/ByteString;

    iput-object p2, p0, Lcom/google/protobuf/RopeByteString;->f:Lcom/google/protobuf/ByteString;

    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->size()I

    move-result v0

    iput v0, p0, Lcom/google/protobuf/RopeByteString;->g:I

    invoke-virtual {p2}, Lcom/google/protobuf/ByteString;->size()I

    move-result v1

    add-int/2addr v1, v0

    iput v1, p0, Lcom/google/protobuf/RopeByteString;->d:I

    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->s()I

    move-result p1

    invoke-virtual {p2}, Lcom/google/protobuf/ByteString;->s()I

    move-result p2

    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/protobuf/RopeByteString;->h:I

    return-void
.end method


# virtual methods
.method public final A(III)I
    .locals 3

    add-int v0, p2, p3

    iget-object v1, p0, Lcom/google/protobuf/RopeByteString;->e:Lcom/google/protobuf/ByteString;

    iget v2, p0, Lcom/google/protobuf/RopeByteString;->g:I

    if-gt v0, v2, :cond_0

    invoke-virtual {v1, p1, p2, p3}, Lcom/google/protobuf/ByteString;->A(III)I

    move-result p0

    return p0

    :cond_0
    iget-object p0, p0, Lcom/google/protobuf/RopeByteString;->f:Lcom/google/protobuf/ByteString;

    if-lt p2, v2, :cond_1

    sub-int/2addr p2, v2

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/protobuf/ByteString;->A(III)I

    move-result p0

    return p0

    :cond_1
    sub-int/2addr v2, p2

    invoke-virtual {v1, p1, p2, v2}, Lcom/google/protobuf/ByteString;->A(III)I

    move-result p1

    const/4 p2, 0x0

    sub-int/2addr p3, v2

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/protobuf/ByteString;->A(III)I

    move-result p0

    return p0
.end method

.method public final C(II)Lcom/google/protobuf/ByteString;
    .locals 3

    iget v0, p0, Lcom/google/protobuf/RopeByteString;->d:I

    invoke-static {p1, p2, v0}, Lcom/google/protobuf/ByteString;->m(III)I

    move-result v1

    if-nez v1, :cond_0

    sget-object p0, Lcom/google/protobuf/ByteString;->b:Lcom/google/protobuf/ByteString;

    return-object p0

    :cond_0
    if-ne v1, v0, :cond_1

    return-object p0

    :cond_1
    iget-object v0, p0, Lcom/google/protobuf/RopeByteString;->e:Lcom/google/protobuf/ByteString;

    iget v1, p0, Lcom/google/protobuf/RopeByteString;->g:I

    if-gt p2, v1, :cond_2

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/ByteString;->C(II)Lcom/google/protobuf/ByteString;

    move-result-object p0

    return-object p0

    :cond_2
    iget-object p0, p0, Lcom/google/protobuf/RopeByteString;->f:Lcom/google/protobuf/ByteString;

    if-lt p1, v1, :cond_3

    sub-int/2addr p1, v1

    sub-int/2addr p2, v1

    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/ByteString;->C(II)Lcom/google/protobuf/ByteString;

    move-result-object p0

    return-object p0

    :cond_3
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->size()I

    move-result v2

    invoke-virtual {v0, p1, v2}, Lcom/google/protobuf/ByteString;->C(II)Lcom/google/protobuf/ByteString;

    move-result-object p1

    const/4 v0, 0x0

    sub-int/2addr p2, v1

    invoke-virtual {p0, v0, p2}, Lcom/google/protobuf/ByteString;->C(II)Lcom/google/protobuf/ByteString;

    move-result-object p0

    new-instance p2, Lcom/google/protobuf/RopeByteString;

    invoke-direct {p2, p1, p0}, Lcom/google/protobuf/RopeByteString;-><init>(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ByteString;)V

    return-object p2
.end method

.method public final F(Ljava/nio/charset/Charset;)Ljava/lang/String;
    .locals 1

    new-instance v0, Ljava/lang/String;

    invoke-virtual {p0}, Lcom/google/protobuf/ByteString;->D()[B

    move-result-object p0

    invoke-direct {v0, p0, p1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object v0
.end method

.method public final K(Lcom/google/protobuf/ByteOutput;)V
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/RopeByteString;->e:Lcom/google/protobuf/ByteString;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/ByteString;->K(Lcom/google/protobuf/ByteOutput;)V

    iget-object p0, p0, Lcom/google/protobuf/RopeByteString;->f:Lcom/google/protobuf/ByteString;

    invoke-virtual {p0, p1}, Lcom/google/protobuf/ByteString;->K(Lcom/google/protobuf/ByteOutput;)V

    return-void
.end method

.method public final L(Lcom/google/protobuf/ByteOutput;)V
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/RopeByteString;->f:Lcom/google/protobuf/ByteString;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/ByteString;->L(Lcom/google/protobuf/ByteOutput;)V

    iget-object p0, p0, Lcom/google/protobuf/RopeByteString;->e:Lcom/google/protobuf/ByteString;

    invoke-virtual {p0, p1}, Lcom/google/protobuf/ByteString;->L(Lcom/google/protobuf/ByteOutput;)V

    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 12

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/google/protobuf/ByteString;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/google/protobuf/ByteString;

    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->size()I

    move-result v1

    iget v3, p0, Lcom/google/protobuf/RopeByteString;->d:I

    if-eq v3, v1, :cond_2

    return v2

    :cond_2
    if-nez v3, :cond_3

    return v0

    :cond_3
    iget v1, p0, Lcom/google/protobuf/ByteString;->a:I

    iget v4, p1, Lcom/google/protobuf/ByteString;->a:I

    if-eqz v1, :cond_4

    if-eqz v4, :cond_4

    if-eq v1, v4, :cond_4

    return v2

    :cond_4
    new-instance v1, Lcom/google/protobuf/RopeByteString$PieceIterator;

    invoke-direct {v1, p0}, Lcom/google/protobuf/RopeByteString$PieceIterator;-><init>(Lcom/google/protobuf/ByteString;)V

    invoke-virtual {v1}, Lcom/google/protobuf/RopeByteString$PieceIterator;->b()Lcom/google/protobuf/ByteString$LeafByteString;

    move-result-object p0

    new-instance v4, Lcom/google/protobuf/RopeByteString$PieceIterator;

    invoke-direct {v4, p1}, Lcom/google/protobuf/RopeByteString$PieceIterator;-><init>(Lcom/google/protobuf/ByteString;)V

    invoke-virtual {v4}, Lcom/google/protobuf/RopeByteString$PieceIterator;->b()Lcom/google/protobuf/ByteString$LeafByteString;

    move-result-object p1

    move v5, v2

    move v6, v5

    move v7, v6

    :goto_0
    invoke-virtual {p0}, Lcom/google/protobuf/ByteString;->size()I

    move-result v8

    sub-int/2addr v8, v5

    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->size()I

    move-result v9

    sub-int/2addr v9, v6

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v10

    if-nez v5, :cond_5

    invoke-virtual {p0, p1, v6, v10}, Lcom/google/protobuf/ByteString$LeafByteString;->M(Lcom/google/protobuf/ByteString;II)Z

    move-result v11

    goto :goto_1

    :cond_5
    invoke-virtual {p1, p0, v5, v10}, Lcom/google/protobuf/ByteString$LeafByteString;->M(Lcom/google/protobuf/ByteString;II)Z

    move-result v11

    :goto_1
    if-nez v11, :cond_6

    move v0, v2

    goto :goto_2

    :cond_6
    add-int/2addr v7, v10

    if-lt v7, v3, :cond_8

    if-ne v7, v3, :cond_7

    :goto_2
    return v0

    :cond_7
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0

    :cond_8
    if-ne v10, v8, :cond_9

    invoke-virtual {v1}, Lcom/google/protobuf/RopeByteString$PieceIterator;->b()Lcom/google/protobuf/ByteString$LeafByteString;

    move-result-object p0

    move v5, v2

    goto :goto_3

    :cond_9
    add-int/2addr v5, v10

    :goto_3
    if-ne v10, v9, :cond_a

    invoke-virtual {v4}, Lcom/google/protobuf/RopeByteString$PieceIterator;->b()Lcom/google/protobuf/ByteString$LeafByteString;

    move-result-object p1

    move v6, v2

    goto :goto_0

    :cond_a
    add-int/2addr v6, v10

    goto :goto_0
.end method

.method public final g()Ljava/nio/ByteBuffer;
    .locals 0

    invoke-virtual {p0}, Lcom/google/protobuf/ByteString;->D()[B

    move-result-object p0

    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->asReadOnlyBuffer()Ljava/nio/ByteBuffer;

    move-result-object p0

    return-object p0
.end method

.method public final i(I)B
    .locals 1

    iget v0, p0, Lcom/google/protobuf/RopeByteString;->d:I

    invoke-static {p1, v0}, Lcom/google/protobuf/ByteString;->l(II)V

    invoke-virtual {p0, p1}, Lcom/google/protobuf/RopeByteString;->u(I)B

    move-result p0

    return p0
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 1

    new-instance v0, Lcom/google/protobuf/RopeByteString$1;

    invoke-direct {v0, p0}, Lcom/google/protobuf/RopeByteString$1;-><init>(Lcom/google/protobuf/RopeByteString;)V

    return-object v0
.end method

.method public final r([BIII)V
    .locals 3

    add-int v0, p2, p4

    iget-object v1, p0, Lcom/google/protobuf/RopeByteString;->e:Lcom/google/protobuf/ByteString;

    iget v2, p0, Lcom/google/protobuf/RopeByteString;->g:I

    if-gt v0, v2, :cond_0

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/google/protobuf/ByteString;->r([BIII)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/google/protobuf/RopeByteString;->f:Lcom/google/protobuf/ByteString;

    if-lt p2, v2, :cond_1

    sub-int/2addr p2, v2

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/google/protobuf/ByteString;->r([BIII)V

    goto :goto_0

    :cond_1
    sub-int/2addr v2, p2

    invoke-virtual {v1, p1, p2, p3, v2}, Lcom/google/protobuf/ByteString;->r([BIII)V

    add-int/2addr p3, v2

    sub-int/2addr p4, v2

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/google/protobuf/ByteString;->r([BIII)V

    :goto_0
    return-void
.end method

.method public final s()I
    .locals 0

    iget p0, p0, Lcom/google/protobuf/RopeByteString;->h:I

    return p0
.end method

.method public final size()I
    .locals 0

    iget p0, p0, Lcom/google/protobuf/RopeByteString;->d:I

    return p0
.end method

.method public final u(I)B
    .locals 1

    iget v0, p0, Lcom/google/protobuf/RopeByteString;->g:I

    if-ge p1, v0, :cond_0

    iget-object p0, p0, Lcom/google/protobuf/RopeByteString;->e:Lcom/google/protobuf/ByteString;

    invoke-virtual {p0, p1}, Lcom/google/protobuf/ByteString;->u(I)B

    move-result p0

    return p0

    :cond_0
    iget-object p0, p0, Lcom/google/protobuf/RopeByteString;->f:Lcom/google/protobuf/ByteString;

    sub-int/2addr p1, v0

    invoke-virtual {p0, p1}, Lcom/google/protobuf/ByteString;->u(I)B

    move-result p0

    return p0
.end method

.method public final w()Z
    .locals 3

    iget v0, p0, Lcom/google/protobuf/RopeByteString;->g:I

    iget-object v1, p0, Lcom/google/protobuf/RopeByteString;->e:Lcom/google/protobuf/ByteString;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v2, v0}, Lcom/google/protobuf/ByteString;->A(III)I

    move-result v0

    iget-object p0, p0, Lcom/google/protobuf/RopeByteString;->f:Lcom/google/protobuf/ByteString;

    invoke-virtual {p0}, Lcom/google/protobuf/ByteString;->size()I

    move-result v1

    invoke-virtual {p0, v0, v2, v1}, Lcom/google/protobuf/ByteString;->A(III)I

    move-result p0

    if-nez p0, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2
.end method

.method public final x()Lcom/google/protobuf/ByteString$ByteIterator;
    .locals 1

    new-instance v0, Lcom/google/protobuf/RopeByteString$1;

    invoke-direct {v0, p0}, Lcom/google/protobuf/RopeByteString$1;-><init>(Lcom/google/protobuf/RopeByteString;)V

    return-object v0
.end method

.method public final y()Lcom/google/protobuf/CodedInputStream;
    .locals 6

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lcom/google/protobuf/RopeByteString$PieceIterator;

    invoke-direct {v1, p0}, Lcom/google/protobuf/RopeByteString$PieceIterator;-><init>(Lcom/google/protobuf/ByteString;)V

    :goto_0
    invoke-virtual {v1}, Lcom/google/protobuf/RopeByteString$PieceIterator;->hasNext()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-virtual {v1}, Lcom/google/protobuf/RopeByteString$PieceIterator;->b()Lcom/google/protobuf/ByteString$LeafByteString;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/protobuf/ByteString;->g()Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/Buffer;->remaining()I

    move-result v5

    add-int/2addr v3, v5

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v5

    if-eqz v5, :cond_1

    or-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v4

    if-eqz v4, :cond_2

    or-int/lit8 v2, v2, 0x2

    goto :goto_1

    :cond_2
    or-int/lit8 v2, v2, 0x4

    goto :goto_1

    :cond_3
    const/4 p0, 0x2

    if-ne v2, p0, :cond_4

    new-instance p0, Lcom/google/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;

    invoke-direct {p0, v3, v0}, Lcom/google/protobuf/CodedInputStream$IterableDirectByteBufferDecoder;-><init>(ILjava/util/ArrayList;)V

    goto :goto_3

    :cond_4
    new-instance p0, Lcom/google/protobuf/IterableByteBufferInputStream;

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    iput-object v2, p0, Lcom/google/protobuf/IterableByteBufferInputStream;->a:Ljava/util/Iterator;

    iput v1, p0, Lcom/google/protobuf/IterableByteBufferInputStream;->c:I

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/nio/ByteBuffer;

    iget v2, p0, Lcom/google/protobuf/IterableByteBufferInputStream;->c:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/google/protobuf/IterableByteBufferInputStream;->c:I

    goto :goto_2

    :cond_5
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/protobuf/IterableByteBufferInputStream;->d:I

    invoke-virtual {p0}, Lcom/google/protobuf/IterableByteBufferInputStream;->a()Z

    move-result v0

    if-nez v0, :cond_6

    sget-object v0, Lcom/google/protobuf/Internal;->c:Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lcom/google/protobuf/IterableByteBufferInputStream;->b:Ljava/nio/ByteBuffer;

    iput v1, p0, Lcom/google/protobuf/IterableByteBufferInputStream;->d:I

    iput v1, p0, Lcom/google/protobuf/IterableByteBufferInputStream;->e:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/protobuf/IterableByteBufferInputStream;->i:J

    :cond_6
    invoke-static {p0}, Lcom/google/protobuf/CodedInputStream;->f(Ljava/io/InputStream;)Lcom/google/protobuf/CodedInputStream;

    move-result-object p0

    :goto_3
    return-object p0
.end method

.method public final z(III)I
    .locals 3

    add-int v0, p2, p3

    iget-object v1, p0, Lcom/google/protobuf/RopeByteString;->e:Lcom/google/protobuf/ByteString;

    iget v2, p0, Lcom/google/protobuf/RopeByteString;->g:I

    if-gt v0, v2, :cond_0

    invoke-virtual {v1, p1, p2, p3}, Lcom/google/protobuf/ByteString;->z(III)I

    move-result p0

    return p0

    :cond_0
    iget-object p0, p0, Lcom/google/protobuf/RopeByteString;->f:Lcom/google/protobuf/ByteString;

    if-lt p2, v2, :cond_1

    sub-int/2addr p2, v2

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/protobuf/ByteString;->z(III)I

    move-result p0

    return p0

    :cond_1
    sub-int/2addr v2, p2

    invoke-virtual {v1, p1, p2, v2}, Lcom/google/protobuf/ByteString;->z(III)I

    move-result p1

    const/4 p2, 0x0

    sub-int/2addr p3, v2

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/protobuf/ByteString;->z(III)I

    move-result p0

    return p0
.end method
