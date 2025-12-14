.class abstract Lcom/google/protobuf/UnknownFieldSchema;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/google/protobuf/CheckReturnValue;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "B:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract a(IILjava/lang/Object;)V
.end method

.method public abstract b(JILjava/lang/Object;)V
.end method

.method public abstract c(ILjava/lang/Object;Ljava/lang/Object;)V
.end method

.method public abstract d(Ljava/lang/Object;ILcom/google/protobuf/ByteString;)V
.end method

.method public abstract e(JILjava/lang/Object;)V
.end method

.method public abstract f(Ljava/lang/Object;)Lcom/google/protobuf/UnknownFieldSetLite;
.end method

.method public abstract g(Ljava/lang/Object;)Lcom/google/protobuf/UnknownFieldSetLite;
.end method

.method public abstract h(Ljava/lang/Object;)I
.end method

.method public abstract i(Ljava/lang/Object;)I
.end method

.method public abstract j(Ljava/lang/Object;)V
.end method

.method public abstract k(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/protobuf/UnknownFieldSetLite;
.end method

.method public final l(ILcom/google/protobuf/Reader;Ljava/lang/Object;)Z
    .locals 6

    invoke-interface {p2}, Lcom/google/protobuf/Reader;->getTag()I

    move-result v0

    ushr-int/lit8 v1, v0, 0x3

    and-int/lit8 v0, v0, 0x7

    const/4 v2, 0x1

    if-eqz v0, :cond_a

    if-eq v0, v2, :cond_9

    const/4 v3, 0x2

    if-eq v0, v3, :cond_8

    const/4 v3, 0x3

    const/4 v4, 0x4

    if-eq v0, v3, :cond_3

    if-eq v0, v4, :cond_1

    const/4 p1, 0x5

    if-ne v0, p1, :cond_0

    invoke-interface {p2}, Lcom/google/protobuf/Reader;->z()I

    move-result p1

    invoke-virtual {p0, v1, p1, p3}, Lcom/google/protobuf/UnknownFieldSchema;->a(IILjava/lang/Object;)V

    return v2

    :cond_0
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->d()Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p0

    throw p0

    :cond_1
    if-eqz p1, :cond_2

    const/4 p0, 0x0

    return p0

    :cond_2
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->a()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p0

    throw p0

    :cond_3
    invoke-virtual {p0}, Lcom/google/protobuf/UnknownFieldSchema;->newBuilder()Ljava/lang/Object;

    move-result-object v0

    shl-int/lit8 v3, v1, 0x3

    or-int/2addr v3, v4

    add-int/2addr p1, v2

    const/16 v4, 0x64

    if-ge p1, v4, :cond_7

    :cond_4
    invoke-interface {p2}, Lcom/google/protobuf/Reader;->F()I

    move-result v4

    const v5, 0x7fffffff

    if-eq v4, v5, :cond_5

    invoke-virtual {p0, p1, p2, v0}, Lcom/google/protobuf/UnknownFieldSchema;->l(ILcom/google/protobuf/Reader;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    :cond_5
    invoke-interface {p2}, Lcom/google/protobuf/Reader;->getTag()I

    move-result p1

    if-ne v3, p1, :cond_6

    invoke-virtual {p0, v0}, Lcom/google/protobuf/UnknownFieldSchema;->o(Ljava/lang/Object;)Lcom/google/protobuf/UnknownFieldSetLite;

    move-result-object p1

    invoke-virtual {p0, v1, p3, p1}, Lcom/google/protobuf/UnknownFieldSchema;->c(ILjava/lang/Object;Ljava/lang/Object;)V

    return v2

    :cond_6
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->a()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p0

    throw p0

    :cond_7
    new-instance p0, Lcom/google/protobuf/InvalidProtocolBufferException;

    const-string p1, "Protocol message had too many levels of nesting.  May be malicious.  Use setRecursionLimit() to increase the recursion depth limit."

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_8
    invoke-interface {p2}, Lcom/google/protobuf/Reader;->r()Lcom/google/protobuf/ByteString;

    move-result-object p1

    invoke-virtual {p0, p3, v1, p1}, Lcom/google/protobuf/UnknownFieldSchema;->d(Ljava/lang/Object;ILcom/google/protobuf/ByteString;)V

    return v2

    :cond_9
    invoke-interface {p2}, Lcom/google/protobuf/Reader;->a()J

    move-result-wide p1

    invoke-virtual {p0, p1, p2, v1, p3}, Lcom/google/protobuf/UnknownFieldSchema;->b(JILjava/lang/Object;)V

    return v2

    :cond_a
    invoke-interface {p2}, Lcom/google/protobuf/Reader;->N()J

    move-result-wide p1

    invoke-virtual {p0, p1, p2, v1, p3}, Lcom/google/protobuf/UnknownFieldSchema;->e(JILjava/lang/Object;)V

    return v2
.end method

.method public abstract m(Ljava/lang/Object;Ljava/lang/Object;)V
.end method

.method public abstract n(Ljava/lang/Object;Ljava/lang/Object;)V
.end method

.method public abstract newBuilder()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TB;"
        }
    .end annotation
.end method

.method public abstract o(Ljava/lang/Object;)Lcom/google/protobuf/UnknownFieldSetLite;
.end method

.method public abstract p(Ljava/lang/Object;Lcom/google/protobuf/Writer;)V
.end method

.method public abstract q(Ljava/lang/Object;Lcom/google/protobuf/Writer;)V
.end method
