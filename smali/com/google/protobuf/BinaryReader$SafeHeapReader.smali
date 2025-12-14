.class final Lcom/google/protobuf/BinaryReader$SafeHeapReader;
.super Lcom/google/protobuf/BinaryReader;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/BinaryReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SafeHeapReader"
.end annotation


# direct methods
.method public static Q(I)V
    .locals 0

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->d()Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p0

    throw p0
.end method


# virtual methods
.method public final A(Ljava/util/List;)V
    .locals 0

    instance-of p0, p1, Lcom/google/protobuf/LongArrayList;

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->d()Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p0

    throw p0

    :cond_0
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->d()Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p0

    throw p0
.end method

.method public final B(Ljava/util/List;)V
    .locals 1

    instance-of p1, p1, Lcom/google/protobuf/IntArrayList;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->s()I

    throw v0

    :cond_0
    invoke-virtual {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->s()I

    throw v0
.end method

.method public final C(Ljava/util/List;)V
    .locals 0

    instance-of p0, p1, Lcom/google/protobuf/IntArrayList;

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->d()Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p0

    throw p0

    :cond_0
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->d()Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p0

    throw p0
.end method

.method public final D()J
    .locals 0

    const/4 p0, 0x0

    invoke-static {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->Q(I)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final E()Ljava/lang/String;
    .locals 0

    const/4 p0, 0x2

    invoke-static {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->Q(I)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final F()I
    .locals 0

    const/4 p0, 0x0

    throw p0
.end method

.method public final G(Ljava/util/List;)V
    .locals 0

    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->d()Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p0

    throw p0
.end method

.method public final H(Ljava/lang/Object;Lcom/google/protobuf/Schema;Lcom/google/protobuf/ExtensionRegistryLite;)V
    .locals 0

    const/4 p0, 0x0

    throw p0
.end method

.method public final I(Ljava/util/List;)V
    .locals 0

    instance-of p0, p1, Lcom/google/protobuf/FloatArrayList;

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->d()Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p0

    throw p0

    :cond_0
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->d()Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p0

    throw p0
.end method

.method public final J()Z
    .locals 0

    const/4 p0, 0x0

    throw p0
.end method

.method public final K()I
    .locals 1

    const/4 v0, 0x5

    invoke-static {v0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->Q(I)V

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->P(I)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final L(Ljava/util/List;)V
    .locals 0

    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->d()Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p0

    throw p0
.end method

.method public final M(Ljava/util/List;)V
    .locals 0

    instance-of p0, p1, Lcom/google/protobuf/DoubleArrayList;

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->d()Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p0

    throw p0

    :cond_0
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->d()Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p0

    throw p0
.end method

.method public final N()J
    .locals 0

    const/4 p0, 0x0

    invoke-static {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->Q(I)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final O()Ljava/lang/String;
    .locals 0

    const/4 p0, 0x2

    invoke-static {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->Q(I)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final P(I)V
    .locals 0

    if-ltz p1, :cond_0

    const/4 p0, 0x0

    throw p0

    :cond_0
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->h()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p0

    throw p0
.end method

.method public final a()J
    .locals 1

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->Q(I)V

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->P(I)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final b(Ljava/util/List;)V
    .locals 0

    instance-of p0, p1, Lcom/google/protobuf/IntArrayList;

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->d()Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p0

    throw p0

    :cond_0
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->d()Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p0

    throw p0
.end method

.method public final c(Ljava/util/List;)V
    .locals 1

    instance-of p1, p1, Lcom/google/protobuf/LongArrayList;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->D()J

    throw v0

    :cond_0
    invoke-virtual {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->D()J

    throw v0
.end method

.method public final d(Ljava/util/List;Lcom/google/protobuf/Schema;Lcom/google/protobuf/ExtensionRegistryLite;)V
    .locals 0

    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->d()Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p0

    throw p0
.end method

.method public final e()Z
    .locals 0

    const/4 p0, 0x0

    invoke-static {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->Q(I)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final f(Ljava/util/List;Lcom/google/protobuf/Schema;Lcom/google/protobuf/ExtensionRegistryLite;)V
    .locals 0

    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->d()Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p0

    throw p0
.end method

.method public final g()J
    .locals 1

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->Q(I)V

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->P(I)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final getTag()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final h(Ljava/util/List;)V
    .locals 1

    instance-of p1, p1, Lcom/google/protobuf/LongArrayList;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->v()J

    throw v0

    :cond_0
    invoke-virtual {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->v()J

    throw v0
.end method

.method public final i()I
    .locals 0

    const/4 p0, 0x0

    invoke-static {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->Q(I)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final j(Ljava/util/List;)V
    .locals 1

    instance-of p1, p1, Lcom/google/protobuf/LongArrayList;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->N()J

    throw v0

    :cond_0
    invoke-virtual {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->N()J

    throw v0
.end method

.method public final k(Ljava/util/List;)V
    .locals 1

    instance-of p1, p1, Lcom/google/protobuf/IntArrayList;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->l()I

    throw v0

    :cond_0
    invoke-virtual {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->l()I

    throw v0
.end method

.method public final l()I
    .locals 0

    const/4 p0, 0x0

    invoke-static {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->Q(I)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final m()I
    .locals 0

    const/4 p0, 0x0

    invoke-static {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->Q(I)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final n(Ljava/util/List;)V
    .locals 1

    instance-of p1, p1, Lcom/google/protobuf/BooleanArrayList;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->e()Z

    throw v0

    :cond_0
    invoke-virtual {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->e()Z

    throw v0
.end method

.method public final o(Ljava/lang/Class;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x3

    invoke-static {v0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->Q(I)V

    sget-object v0, Lcom/google/protobuf/Protobuf;->c:Lcom/google/protobuf/Protobuf;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/Protobuf;->a(Ljava/lang/Class;)Lcom/google/protobuf/Schema;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/protobuf/Schema;->a()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p2}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->y(Ljava/lang/Object;Lcom/google/protobuf/Schema;Lcom/google/protobuf/ExtensionRegistryLite;)V

    invoke-interface {p1, v0}, Lcom/google/protobuf/Schema;->b(Ljava/lang/Object;)V

    return-object v0
.end method

.method public final p(Ljava/util/Map;Lcom/google/protobuf/MapEntryLite$Metadata;Lcom/google/protobuf/ExtensionRegistryLite;)V
    .locals 0

    const/4 p0, 0x2

    invoke-static {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->Q(I)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final q(Ljava/util/List;)V
    .locals 0

    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->d()Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p0

    throw p0
.end method

.method public final r()Lcom/google/protobuf/ByteString;
    .locals 0

    const/4 p0, 0x2

    invoke-static {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->Q(I)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final readDouble()D
    .locals 1

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->Q(I)V

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->P(I)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final readFloat()F
    .locals 1

    const/4 v0, 0x5

    invoke-static {v0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->Q(I)V

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->P(I)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final s()I
    .locals 0

    const/4 p0, 0x0

    invoke-static {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->Q(I)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final t(Ljava/util/List;)V
    .locals 0

    instance-of p0, p1, Lcom/google/protobuf/LongArrayList;

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->d()Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p0

    throw p0

    :cond_0
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->d()Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p0

    throw p0
.end method

.method public final u(Ljava/util/List;)V
    .locals 1

    instance-of p1, p1, Lcom/google/protobuf/IntArrayList;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->m()I

    throw v0

    :cond_0
    invoke-virtual {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->m()I

    throw v0
.end method

.method public final v()J
    .locals 0

    const/4 p0, 0x0

    invoke-static {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->Q(I)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final w(Ljava/util/List;)V
    .locals 1

    instance-of p1, p1, Lcom/google/protobuf/IntArrayList;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->i()I

    throw v0

    :cond_0
    invoke-virtual {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->i()I

    throw v0
.end method

.method public final x(Ljava/lang/Class;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;
    .locals 0

    const/4 p0, 0x2

    invoke-static {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->Q(I)V

    sget-object p0, Lcom/google/protobuf/Protobuf;->c:Lcom/google/protobuf/Protobuf;

    invoke-virtual {p0, p1}, Lcom/google/protobuf/Protobuf;->a(Ljava/lang/Class;)Lcom/google/protobuf/Schema;

    move-result-object p0

    invoke-interface {p0}, Lcom/google/protobuf/Schema;->a()Ljava/lang/Object;

    const/4 p0, 0x0

    throw p0
.end method

.method public final y(Ljava/lang/Object;Lcom/google/protobuf/Schema;Lcom/google/protobuf/ExtensionRegistryLite;)V
    .locals 0

    invoke-interface {p2, p1, p0, p3}, Lcom/google/protobuf/Schema;->g(Ljava/lang/Object;Lcom/google/protobuf/Reader;Lcom/google/protobuf/ExtensionRegistryLite;)V

    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->g()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p0

    throw p0
.end method

.method public final z()I
    .locals 1

    const/4 v0, 0x5

    invoke-static {v0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->Q(I)V

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->P(I)V

    const/4 p0, 0x0

    throw p0
.end method
