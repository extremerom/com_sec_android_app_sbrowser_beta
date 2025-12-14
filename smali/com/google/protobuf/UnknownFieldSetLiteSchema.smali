.class Lcom/google/protobuf/UnknownFieldSetLiteSchema;
.super Lcom/google/protobuf/UnknownFieldSchema;
.source "SourceFile"


# annotations
.annotation runtime Lcom/google/protobuf/CheckReturnValue;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/UnknownFieldSchema<",
        "Lcom/google/protobuf/UnknownFieldSetLite;",
        "Lcom/google/protobuf/UnknownFieldSetLite;",
        ">;"
    }
.end annotation


# virtual methods
.method public final a(IILjava/lang/Object;)V
    .locals 0

    check-cast p3, Lcom/google/protobuf/UnknownFieldSetLite;

    shl-int/lit8 p0, p1, 0x3

    or-int/lit8 p0, p0, 0x5

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p3, p0, p1}, Lcom/google/protobuf/UnknownFieldSetLite;->f(ILjava/lang/Object;)V

    return-void
.end method

.method public final b(JILjava/lang/Object;)V
    .locals 0

    check-cast p4, Lcom/google/protobuf/UnknownFieldSetLite;

    shl-int/lit8 p0, p3, 0x3

    or-int/lit8 p0, p0, 0x1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p4, p0, p1}, Lcom/google/protobuf/UnknownFieldSetLite;->f(ILjava/lang/Object;)V

    return-void
.end method

.method public final c(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Lcom/google/protobuf/UnknownFieldSetLite;

    check-cast p3, Lcom/google/protobuf/UnknownFieldSetLite;

    shl-int/lit8 p0, p1, 0x3

    or-int/lit8 p0, p0, 0x3

    invoke-virtual {p2, p0, p3}, Lcom/google/protobuf/UnknownFieldSetLite;->f(ILjava/lang/Object;)V

    return-void
.end method

.method public final d(Ljava/lang/Object;ILcom/google/protobuf/ByteString;)V
    .locals 0

    check-cast p1, Lcom/google/protobuf/UnknownFieldSetLite;

    shl-int/lit8 p0, p2, 0x3

    or-int/lit8 p0, p0, 0x2

    invoke-virtual {p1, p0, p3}, Lcom/google/protobuf/UnknownFieldSetLite;->f(ILjava/lang/Object;)V

    return-void
.end method

.method public final e(JILjava/lang/Object;)V
    .locals 0

    check-cast p4, Lcom/google/protobuf/UnknownFieldSetLite;

    shl-int/lit8 p0, p3, 0x3

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p4, p0, p1}, Lcom/google/protobuf/UnknownFieldSetLite;->f(ILjava/lang/Object;)V

    return-void
.end method

.method public final f(Ljava/lang/Object;)Lcom/google/protobuf/UnknownFieldSetLite;
    .locals 1

    check-cast p1, Lcom/google/protobuf/GeneratedMessageLite;

    iget-object p0, p1, Lcom/google/protobuf/GeneratedMessageLite;->unknownFields:Lcom/google/protobuf/UnknownFieldSetLite;

    sget-object v0, Lcom/google/protobuf/UnknownFieldSetLite;->f:Lcom/google/protobuf/UnknownFieldSetLite;

    if-ne p0, v0, :cond_0

    new-instance p0, Lcom/google/protobuf/UnknownFieldSetLite;

    invoke-direct {p0}, Lcom/google/protobuf/UnknownFieldSetLite;-><init>()V

    iput-object p0, p1, Lcom/google/protobuf/GeneratedMessageLite;->unknownFields:Lcom/google/protobuf/UnknownFieldSetLite;

    :cond_0
    return-object p0
.end method

.method public final g(Ljava/lang/Object;)Lcom/google/protobuf/UnknownFieldSetLite;
    .locals 0

    check-cast p1, Lcom/google/protobuf/GeneratedMessageLite;

    iget-object p0, p1, Lcom/google/protobuf/GeneratedMessageLite;->unknownFields:Lcom/google/protobuf/UnknownFieldSetLite;

    return-object p0
.end method

.method public final h(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/google/protobuf/UnknownFieldSetLite;

    invoke-virtual {p1}, Lcom/google/protobuf/UnknownFieldSetLite;->c()I

    move-result p0

    return p0
.end method

.method public final i(Ljava/lang/Object;)I
    .locals 6

    check-cast p1, Lcom/google/protobuf/UnknownFieldSetLite;

    iget p0, p1, Lcom/google/protobuf/UnknownFieldSetLite;->d:I

    const/4 v0, -0x1

    if-eq p0, v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 p0, 0x0

    move v0, p0

    :goto_0
    iget v1, p1, Lcom/google/protobuf/UnknownFieldSetLite;->a:I

    if-ge p0, v1, :cond_1

    iget-object v1, p1, Lcom/google/protobuf/UnknownFieldSetLite;->b:[I

    aget v1, v1, p0

    const/4 v2, 0x3

    ushr-int/2addr v1, v2

    iget-object v3, p1, Lcom/google/protobuf/UnknownFieldSetLite;->c:[Ljava/lang/Object;

    aget-object v3, v3, p0

    check-cast v3, Lcom/google/protobuf/ByteString;

    const/4 v4, 0x1

    invoke-static {v4}, Lcom/google/protobuf/CodedOutputStream;->m0(I)I

    move-result v4

    const/4 v5, 0x2

    mul-int/2addr v4, v5

    invoke-static {v5, v1}, Lcom/google/protobuf/CodedOutputStream;->n0(II)I

    move-result v1

    add-int/2addr v1, v4

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->T(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v2, v1

    add-int/2addr v0, v2

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_1
    iput v0, p1, Lcom/google/protobuf/UnknownFieldSetLite;->d:I

    move p0, v0

    :goto_1
    return p0
.end method

.method public final j(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/google/protobuf/GeneratedMessageLite;

    iget-object p0, p1, Lcom/google/protobuf/GeneratedMessageLite;->unknownFields:Lcom/google/protobuf/UnknownFieldSetLite;

    iget-boolean p1, p0, Lcom/google/protobuf/UnknownFieldSetLite;->e:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/protobuf/UnknownFieldSetLite;->e:Z

    :cond_0
    return-void
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/protobuf/UnknownFieldSetLite;
    .locals 5

    check-cast p1, Lcom/google/protobuf/UnknownFieldSetLite;

    check-cast p2, Lcom/google/protobuf/UnknownFieldSetLite;

    sget-object p0, Lcom/google/protobuf/UnknownFieldSetLite;->f:Lcom/google/protobuf/UnknownFieldSetLite;

    invoke-virtual {p0, p2}, Lcom/google/protobuf/UnknownFieldSetLite;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/protobuf/UnknownFieldSetLite;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p1, p2}, Lcom/google/protobuf/UnknownFieldSetLite;->e(Lcom/google/protobuf/UnknownFieldSetLite;Lcom/google/protobuf/UnknownFieldSetLite;)Lcom/google/protobuf/UnknownFieldSetLite;

    move-result-object p1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2, p0}, Lcom/google/protobuf/UnknownFieldSetLite;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lcom/google/protobuf/UnknownFieldSetLite;->a()V

    iget p0, p1, Lcom/google/protobuf/UnknownFieldSetLite;->a:I

    iget v0, p2, Lcom/google/protobuf/UnknownFieldSetLite;->a:I

    add-int/2addr p0, v0

    invoke-virtual {p1, p0}, Lcom/google/protobuf/UnknownFieldSetLite;->b(I)V

    iget-object v0, p2, Lcom/google/protobuf/UnknownFieldSetLite;->b:[I

    iget-object v1, p1, Lcom/google/protobuf/UnknownFieldSetLite;->b:[I

    iget v2, p1, Lcom/google/protobuf/UnknownFieldSetLite;->a:I

    iget v3, p2, Lcom/google/protobuf/UnknownFieldSetLite;->a:I

    const/4 v4, 0x0

    invoke-static {v0, v4, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p2, Lcom/google/protobuf/UnknownFieldSetLite;->c:[Ljava/lang/Object;

    iget-object v1, p1, Lcom/google/protobuf/UnknownFieldSetLite;->c:[Ljava/lang/Object;

    iget v2, p1, Lcom/google/protobuf/UnknownFieldSetLite;->a:I

    iget p2, p2, Lcom/google/protobuf/UnknownFieldSetLite;->a:I

    invoke-static {v0, v4, v1, v2, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput p0, p1, Lcom/google/protobuf/UnknownFieldSetLite;->a:I

    :goto_0
    return-object p1
.end method

.method public final m(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Lcom/google/protobuf/UnknownFieldSetLite;

    check-cast p1, Lcom/google/protobuf/GeneratedMessageLite;

    iput-object p2, p1, Lcom/google/protobuf/GeneratedMessageLite;->unknownFields:Lcom/google/protobuf/UnknownFieldSetLite;

    return-void
.end method

.method public final n(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Lcom/google/protobuf/UnknownFieldSetLite;

    check-cast p1, Lcom/google/protobuf/GeneratedMessageLite;

    iput-object p2, p1, Lcom/google/protobuf/GeneratedMessageLite;->unknownFields:Lcom/google/protobuf/UnknownFieldSetLite;

    return-void
.end method

.method public newBuilder()Lcom/google/protobuf/UnknownFieldSetLite;
    .locals 0

    new-instance p0, Lcom/google/protobuf/UnknownFieldSetLite;

    invoke-direct {p0}, Lcom/google/protobuf/UnknownFieldSetLite;-><init>()V

    return-object p0
.end method

.method public bridge synthetic newBuilder()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lcom/google/protobuf/UnknownFieldSetLiteSchema;->newBuilder()Lcom/google/protobuf/UnknownFieldSetLite;

    move-result-object p0

    return-object p0
.end method

.method public final o(Ljava/lang/Object;)Lcom/google/protobuf/UnknownFieldSetLite;
    .locals 0

    check-cast p1, Lcom/google/protobuf/UnknownFieldSetLite;

    iget-boolean p0, p1, Lcom/google/protobuf/UnknownFieldSetLite;->e:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    iput-boolean p0, p1, Lcom/google/protobuf/UnknownFieldSetLite;->e:Z

    :cond_0
    return-object p1
.end method

.method public final p(Ljava/lang/Object;Lcom/google/protobuf/Writer;)V
    .locals 2

    check-cast p1, Lcom/google/protobuf/UnknownFieldSetLite;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p2}, Lcom/google/protobuf/Writer;->y()Lcom/google/protobuf/Writer$FieldOrder;

    move-result-object p0

    sget-object v0, Lcom/google/protobuf/Writer$FieldOrder;->DESCENDING:Lcom/google/protobuf/Writer$FieldOrder;

    if-ne p0, v0, :cond_0

    iget p0, p1, Lcom/google/protobuf/UnknownFieldSetLite;->a:I

    add-int/lit8 p0, p0, -0x1

    :goto_0
    if-ltz p0, :cond_1

    iget-object v0, p1, Lcom/google/protobuf/UnknownFieldSetLite;->b:[I

    aget v0, v0, p0

    ushr-int/lit8 v0, v0, 0x3

    iget-object v1, p1, Lcom/google/protobuf/UnknownFieldSetLite;->c:[Ljava/lang/Object;

    aget-object v1, v1, p0

    invoke-interface {p2, v0, v1}, Lcom/google/protobuf/Writer;->c(ILjava/lang/Object;)V

    add-int/lit8 p0, p0, -0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_1
    iget v0, p1, Lcom/google/protobuf/UnknownFieldSetLite;->a:I

    if-ge p0, v0, :cond_1

    iget-object v0, p1, Lcom/google/protobuf/UnknownFieldSetLite;->b:[I

    aget v0, v0, p0

    ushr-int/lit8 v0, v0, 0x3

    iget-object v1, p1, Lcom/google/protobuf/UnknownFieldSetLite;->c:[Ljava/lang/Object;

    aget-object v1, v1, p0

    invoke-interface {p2, v0, v1}, Lcom/google/protobuf/Writer;->c(ILjava/lang/Object;)V

    add-int/lit8 p0, p0, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method public final q(Ljava/lang/Object;Lcom/google/protobuf/Writer;)V
    .locals 0

    check-cast p1, Lcom/google/protobuf/UnknownFieldSetLite;

    invoke-virtual {p1, p2}, Lcom/google/protobuf/UnknownFieldSetLite;->h(Lcom/google/protobuf/Writer;)V

    return-void
.end method
