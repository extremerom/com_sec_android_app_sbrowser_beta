.class final Lcom/google/protobuf/CodedInputStreamReader;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/Reader;


# annotations
.annotation runtime Lcom/google/protobuf/CheckReturnValue;
.end annotation


# instance fields
.field public final a:Lcom/google/protobuf/CodedInputStream;

.field public b:I

.field public c:I

.field public d:I


# direct methods
.method public constructor <init>(Lcom/google/protobuf/CodedInputStream;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/protobuf/CodedInputStreamReader;->d:I

    const-string v0, "input"

    invoke-static {p1, v0}, Lcom/google/protobuf/Internal;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/google/protobuf/CodedInputStreamReader;->a:Lcom/google/protobuf/CodedInputStream;

    iput-object p0, p1, Lcom/google/protobuf/CodedInputStream;->c:Lcom/google/protobuf/CodedInputStreamReader;

    return-void
.end method

.method public static V(I)V
    .locals 0

    and-int/lit8 p0, p0, 0x3

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->g()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p0

    throw p0
.end method

.method public static W(I)V
    .locals 0

    and-int/lit8 p0, p0, 0x7

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->g()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p0

    throw p0
.end method


# virtual methods
.method public final A(Ljava/util/List;)V
    .locals 4

    instance-of v0, p1, Lcom/google/protobuf/LongArrayList;

    const/4 v1, 0x2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/google/protobuf/CodedInputStreamReader;->a:Lcom/google/protobuf/CodedInputStream;

    if-eqz v0, :cond_4

    move-object v0, p1

    check-cast v0, Lcom/google/protobuf/LongArrayList;

    iget p1, p0, Lcom/google/protobuf/CodedInputStreamReader;->b:I

    and-int/lit8 p1, p1, 0x7

    if-eq p1, v2, :cond_2

    if-ne p1, v1, :cond_1

    invoke-virtual {v3}, Lcom/google/protobuf/CodedInputStream;->C()I

    move-result p0

    invoke-static {p0}, Lcom/google/protobuf/CodedInputStreamReader;->W(I)V

    invoke-virtual {v3}, Lcom/google/protobuf/CodedInputStream;->d()I

    move-result p1

    add-int/2addr p1, p0

    :cond_0
    invoke-virtual {v3}, Lcom/google/protobuf/CodedInputStream;->w()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/LongArrayList;->i(J)V

    invoke-virtual {v3}, Lcom/google/protobuf/CodedInputStream;->d()I

    move-result p0

    if-lt p0, p1, :cond_0

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->d()Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p0

    throw p0

    :cond_2
    invoke-virtual {v3}, Lcom/google/protobuf/CodedInputStream;->w()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/LongArrayList;->i(J)V

    invoke-virtual {v3}, Lcom/google/protobuf/CodedInputStream;->e()Z

    move-result p1

    if-eqz p1, :cond_3

    return-void

    :cond_3
    invoke-virtual {v3}, Lcom/google/protobuf/CodedInputStream;->B()I

    move-result p1

    iget v1, p0, Lcom/google/protobuf/CodedInputStreamReader;->b:I

    if-eq p1, v1, :cond_2

    iput p1, p0, Lcom/google/protobuf/CodedInputStreamReader;->d:I

    return-void

    :cond_4
    iget v0, p0, Lcom/google/protobuf/CodedInputStreamReader;->b:I

    and-int/lit8 v0, v0, 0x7

    if-eq v0, v2, :cond_7

    if-ne v0, v1, :cond_6

    invoke-virtual {v3}, Lcom/google/protobuf/CodedInputStream;->C()I

    move-result p0

    invoke-static {p0}, Lcom/google/protobuf/CodedInputStreamReader;->W(I)V

    invoke-virtual {v3}, Lcom/google/protobuf/CodedInputStream;->d()I

    move-result v0

    add-int/2addr v0, p0

    :cond_5
    invoke-virtual {v3}, Lcom/google/protobuf/CodedInputStream;->w()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v3}, Lcom/google/protobuf/CodedInputStream;->d()I

    move-result p0

    if-lt p0, v0, :cond_5

    :goto_0
    return-void

    :cond_6
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->d()Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p0

    throw p0

    :cond_7
    invoke-virtual {v3}, Lcom/google/protobuf/CodedInputStream;->w()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v3}, Lcom/google/protobuf/CodedInputStream;->e()Z

    move-result v0

    if-eqz v0, :cond_8

    return-void

    :cond_8
    invoke-virtual {v3}, Lcom/google/protobuf/CodedInputStream;->B()I

    move-result v0

    iget v1, p0, Lcom/google/protobuf/CodedInputStreamReader;->b:I

    if-eq v0, v1, :cond_7

    iput v0, p0, Lcom/google/protobuf/CodedInputStreamReader;->d:I

    return-void
.end method

.method public final B(Ljava/util/List;)V
    .locals 3

    instance-of v0, p1, Lcom/google/protobuf/IntArrayList;

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/protobuf/CodedInputStreamReader;->a:Lcom/google/protobuf/CodedInputStream;

    if-eqz v0, :cond_4

    move-object v0, p1

    check-cast v0, Lcom/google/protobuf/IntArrayList;

    iget p1, p0, Lcom/google/protobuf/CodedInputStreamReader;->b:I

    and-int/lit8 p1, p1, 0x7

    if-eqz p1, :cond_2

    if-ne p1, v1, :cond_1

    invoke-virtual {v2}, Lcom/google/protobuf/CodedInputStream;->C()I

    move-result p1

    invoke-virtual {v2}, Lcom/google/protobuf/CodedInputStream;->d()I

    move-result v1

    add-int/2addr v1, p1

    :cond_0
    invoke-virtual {v2}, Lcom/google/protobuf/CodedInputStream;->r()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/protobuf/IntArrayList;->i(I)V

    invoke-virtual {v2}, Lcom/google/protobuf/CodedInputStream;->d()I

    move-result p1

    if-lt p1, v1, :cond_0

    invoke-virtual {p0, v1}, Lcom/google/protobuf/CodedInputStreamReader;->T(I)V

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->d()Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p0

    throw p0

    :cond_2
    invoke-virtual {v2}, Lcom/google/protobuf/CodedInputStream;->r()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/protobuf/IntArrayList;->i(I)V

    invoke-virtual {v2}, Lcom/google/protobuf/CodedInputStream;->e()Z

    move-result p1

    if-eqz p1, :cond_3

    return-void

    :cond_3
    invoke-virtual {v2}, Lcom/google/protobuf/CodedInputStream;->B()I

    move-result p1

    iget v1, p0, Lcom/google/protobuf/CodedInputStreamReader;->b:I

    if-eq p1, v1, :cond_2

    iput p1, p0, Lcom/google/protobuf/CodedInputStreamReader;->d:I

    return-void

    :cond_4
    iget v0, p0, Lcom/google/protobuf/CodedInputStreamReader;->b:I

    and-int/lit8 v0, v0, 0x7

    if-eqz v0, :cond_7

    if-ne v0, v1, :cond_6

    invoke-virtual {v2}, Lcom/google/protobuf/CodedInputStream;->C()I

    move-result v0

    invoke-virtual {v2}, Lcom/google/protobuf/CodedInputStream;->d()I

    move-result v1

    add-int/2addr v1, v0

    :cond_5
    invoke-virtual {v2}, Lcom/google/protobuf/CodedInputStream;->r()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2}, Lcom/google/protobuf/CodedInputStream;->d()I

    move-result v0

    if-lt v0, v1, :cond_5

    invoke-virtual {p0, v1}, Lcom/google/protobuf/CodedInputStreamReader;->T(I)V

    :goto_0
    return-void

    :cond_6
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->d()Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p0

    throw p0

    :cond_7
    invoke-virtual {v2}, Lcom/google/protobuf/CodedInputStream;->r()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2}, Lcom/google/protobuf/CodedInputStream;->e()Z

    move-result v0

    if-eqz v0, :cond_8

    return-void

    :cond_8
    invoke-virtual {v2}, Lcom/google/protobuf/CodedInputStream;->B()I

    move-result v0

    iget v1, p0, Lcom/google/protobuf/CodedInputStreamReader;->b:I

    if-eq v0, v1, :cond_7

    iput v0, p0, Lcom/google/protobuf/CodedInputStreamReader;->d:I

    return-void
.end method

.method public final C(Ljava/util/List;)V
    .locals 5

    instance-of v0, p1, Lcom/google/protobuf/IntArrayList;

    const/4 v1, 0x5

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/google/protobuf/CodedInputStreamReader;->a:Lcom/google/protobuf/CodedInputStream;

    if-eqz v0, :cond_5

    move-object v0, p1

    check-cast v0, Lcom/google/protobuf/IntArrayList;

    iget p1, p0, Lcom/google/protobuf/CodedInputStreamReader;->b:I

    and-int/lit8 p1, p1, 0x7

    if-eq p1, v2, :cond_3

    if-ne p1, v1, :cond_2

    :cond_0
    invoke-virtual {v3}, Lcom/google/protobuf/CodedInputStream;->o()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/protobuf/IntArrayList;->i(I)V

    invoke-virtual {v3}, Lcom/google/protobuf/CodedInputStream;->e()Z

    move-result p1

    if-eqz p1, :cond_1

    return-void

    :cond_1
    invoke-virtual {v3}, Lcom/google/protobuf/CodedInputStream;->B()I

    move-result p1

    iget v1, p0, Lcom/google/protobuf/CodedInputStreamReader;->b:I

    if-eq p1, v1, :cond_0

    iput p1, p0, Lcom/google/protobuf/CodedInputStreamReader;->d:I

    return-void

    :cond_2
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->d()Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p0

    throw p0

    :cond_3
    invoke-virtual {v3}, Lcom/google/protobuf/CodedInputStream;->C()I

    move-result p0

    invoke-static {p0}, Lcom/google/protobuf/CodedInputStreamReader;->V(I)V

    invoke-virtual {v3}, Lcom/google/protobuf/CodedInputStream;->d()I

    move-result p1

    add-int v4, p1, p0

    :cond_4
    invoke-virtual {v3}, Lcom/google/protobuf/CodedInputStream;->o()I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/IntArrayList;->i(I)V

    invoke-virtual {v3}, Lcom/google/protobuf/CodedInputStream;->d()I

    move-result p0

    if-lt p0, v4, :cond_4

    goto :goto_0

    :cond_5
    iget v0, p0, Lcom/google/protobuf/CodedInputStreamReader;->b:I

    and-int/lit8 v0, v0, 0x7

    if-eq v0, v2, :cond_9

    if-ne v0, v1, :cond_8

    :cond_6
    invoke-virtual {v3}, Lcom/google/protobuf/CodedInputStream;->o()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v3}, Lcom/google/protobuf/CodedInputStream;->e()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    :cond_7
    invoke-virtual {v3}, Lcom/google/protobuf/CodedInputStream;->B()I

    move-result v0

    iget v1, p0, Lcom/google/protobuf/CodedInputStreamReader;->b:I

    if-eq v0, v1, :cond_6

    iput v0, p0, Lcom/google/protobuf/CodedInputStreamReader;->d:I

    return-void

    :cond_8
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->d()Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p0

    throw p0

    :cond_9
    invoke-virtual {v3}, Lcom/google/protobuf/CodedInputStream;->C()I

    move-result p0

    invoke-static {p0}, Lcom/google/protobuf/CodedInputStreamReader;->V(I)V

    invoke-virtual {v3}, Lcom/google/protobuf/CodedInputStream;->d()I

    move-result v0

    add-int/2addr v0, p0

    :cond_a
    invoke-virtual {v3}, Lcom/google/protobuf/CodedInputStream;->o()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v3}, Lcom/google/protobuf/CodedInputStream;->d()I

    move-result p0

    if-lt p0, v0, :cond_a

    :goto_0
    return-void
.end method

.method public final D()J
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/protobuf/CodedInputStreamReader;->U(I)V

    iget-object p0, p0, Lcom/google/protobuf/CodedInputStreamReader;->a:Lcom/google/protobuf/CodedInputStream;

    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream;->y()J

    move-result-wide v0

    return-wide v0
.end method

.method public final E()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/google/protobuf/CodedInputStreamReader;->U(I)V

    iget-object p0, p0, Lcom/google/protobuf/CodedInputStreamReader;->a:Lcom/google/protobuf/CodedInputStream;

    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream;->z()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final F()I
    .locals 1

    iget v0, p0, Lcom/google/protobuf/CodedInputStreamReader;->d:I

    if-eqz v0, :cond_0

    iput v0, p0, Lcom/google/protobuf/CodedInputStreamReader;->b:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/protobuf/CodedInputStreamReader;->d:I

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/CodedInputStreamReader;->a:Lcom/google/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/google/protobuf/CodedInputStream;->B()I

    move-result v0

    iput v0, p0, Lcom/google/protobuf/CodedInputStreamReader;->b:I

    :goto_0
    iget v0, p0, Lcom/google/protobuf/CodedInputStreamReader;->b:I

    if-eqz v0, :cond_2

    iget p0, p0, Lcom/google/protobuf/CodedInputStreamReader;->c:I

    if-ne v0, p0, :cond_1

    goto :goto_1

    :cond_1
    ushr-int/lit8 p0, v0, 0x3

    return p0

    :cond_2
    :goto_1
    const p0, 0x7fffffff

    return p0
.end method

.method public final G(Ljava/util/List;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/CodedInputStreamReader;->S(Ljava/util/List;Z)V

    return-void
.end method

.method public final H(Ljava/lang/Object;Lcom/google/protobuf/Schema;Lcom/google/protobuf/ExtensionRegistryLite;)V
    .locals 1

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/google/protobuf/CodedInputStreamReader;->U(I)V

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/protobuf/CodedInputStreamReader;->Q(Ljava/lang/Object;Lcom/google/protobuf/Schema;Lcom/google/protobuf/ExtensionRegistryLite;)V

    return-void
.end method

.method public final I(Ljava/util/List;)V
    .locals 5

    instance-of v0, p1, Lcom/google/protobuf/FloatArrayList;

    const/4 v1, 0x5

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/google/protobuf/CodedInputStreamReader;->a:Lcom/google/protobuf/CodedInputStream;

    if-eqz v0, :cond_5

    move-object v0, p1

    check-cast v0, Lcom/google/protobuf/FloatArrayList;

    iget p1, p0, Lcom/google/protobuf/CodedInputStreamReader;->b:I

    and-int/lit8 p1, p1, 0x7

    if-eq p1, v2, :cond_3

    if-ne p1, v1, :cond_2

    :cond_0
    invoke-virtual {v3}, Lcom/google/protobuf/CodedInputStream;->q()F

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/protobuf/FloatArrayList;->q(F)V

    invoke-virtual {v3}, Lcom/google/protobuf/CodedInputStream;->e()Z

    move-result p1

    if-eqz p1, :cond_1

    return-void

    :cond_1
    invoke-virtual {v3}, Lcom/google/protobuf/CodedInputStream;->B()I

    move-result p1

    iget v1, p0, Lcom/google/protobuf/CodedInputStreamReader;->b:I

    if-eq p1, v1, :cond_0

    iput p1, p0, Lcom/google/protobuf/CodedInputStreamReader;->d:I

    return-void

    :cond_2
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->d()Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p0

    throw p0

    :cond_3
    invoke-virtual {v3}, Lcom/google/protobuf/CodedInputStream;->C()I

    move-result p0

    invoke-static {p0}, Lcom/google/protobuf/CodedInputStreamReader;->V(I)V

    invoke-virtual {v3}, Lcom/google/protobuf/CodedInputStream;->d()I

    move-result p1

    add-int v4, p1, p0

    :cond_4
    invoke-virtual {v3}, Lcom/google/protobuf/CodedInputStream;->q()F

    move-result p0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/FloatArrayList;->q(F)V

    invoke-virtual {v3}, Lcom/google/protobuf/CodedInputStream;->d()I

    move-result p0

    if-lt p0, v4, :cond_4

    goto :goto_0

    :cond_5
    iget v0, p0, Lcom/google/protobuf/CodedInputStreamReader;->b:I

    and-int/lit8 v0, v0, 0x7

    if-eq v0, v2, :cond_9

    if-ne v0, v1, :cond_8

    :cond_6
    invoke-virtual {v3}, Lcom/google/protobuf/CodedInputStream;->q()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v3}, Lcom/google/protobuf/CodedInputStream;->e()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    :cond_7
    invoke-virtual {v3}, Lcom/google/protobuf/CodedInputStream;->B()I

    move-result v0

    iget v1, p0, Lcom/google/protobuf/CodedInputStreamReader;->b:I

    if-eq v0, v1, :cond_6

    iput v0, p0, Lcom/google/protobuf/CodedInputStreamReader;->d:I

    return-void

    :cond_8
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->d()Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p0

    throw p0

    :cond_9
    invoke-virtual {v3}, Lcom/google/protobuf/CodedInputStream;->C()I

    move-result p0

    invoke-static {p0}, Lcom/google/protobuf/CodedInputStreamReader;->V(I)V

    invoke-virtual {v3}, Lcom/google/protobuf/CodedInputStream;->d()I

    move-result v0

    add-int/2addr v0, p0

    :cond_a
    invoke-virtual {v3}, Lcom/google/protobuf/CodedInputStream;->q()F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v3}, Lcom/google/protobuf/CodedInputStream;->d()I

    move-result p0

    if-lt p0, v0, :cond_a

    :goto_0
    return-void
.end method

.method public final J()Z
    .locals 2

    iget-object v0, p0, Lcom/google/protobuf/CodedInputStreamReader;->a:Lcom/google/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/google/protobuf/CodedInputStream;->e()Z

    move-result v1

    if-nez v1, :cond_1

    iget v1, p0, Lcom/google/protobuf/CodedInputStreamReader;->b:I

    iget p0, p0, Lcom/google/protobuf/CodedInputStreamReader;->c:I

    if-ne v1, p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v1}, Lcom/google/protobuf/CodedInputStream;->E(I)Z

    move-result p0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public final K()I
    .locals 1

    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/google/protobuf/CodedInputStreamReader;->U(I)V

    iget-object p0, p0, Lcom/google/protobuf/CodedInputStreamReader;->a:Lcom/google/protobuf/CodedInputStream;

    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream;->v()I

    move-result p0

    return p0
.end method

.method public final L(Ljava/util/List;)V
    .locals 2

    iget v0, p0, Lcom/google/protobuf/CodedInputStreamReader;->b:I

    and-int/lit8 v0, v0, 0x7

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    :cond_0
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStreamReader;->r()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/protobuf/CodedInputStreamReader;->a:Lcom/google/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/google/protobuf/CodedInputStream;->e()Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    :cond_1
    invoke-virtual {v0}, Lcom/google/protobuf/CodedInputStream;->B()I

    move-result v0

    iget v1, p0, Lcom/google/protobuf/CodedInputStreamReader;->b:I

    if-eq v0, v1, :cond_0

    iput v0, p0, Lcom/google/protobuf/CodedInputStreamReader;->d:I

    return-void

    :cond_2
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->d()Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p0

    throw p0
.end method

.method public final M(Ljava/util/List;)V
    .locals 4

    instance-of v0, p1, Lcom/google/protobuf/DoubleArrayList;

    const/4 v1, 0x2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/google/protobuf/CodedInputStreamReader;->a:Lcom/google/protobuf/CodedInputStream;

    if-eqz v0, :cond_4

    move-object v0, p1

    check-cast v0, Lcom/google/protobuf/DoubleArrayList;

    iget p1, p0, Lcom/google/protobuf/CodedInputStreamReader;->b:I

    and-int/lit8 p1, p1, 0x7

    if-eq p1, v2, :cond_2

    if-ne p1, v1, :cond_1

    invoke-virtual {v3}, Lcom/google/protobuf/CodedInputStream;->C()I

    move-result p0

    invoke-static {p0}, Lcom/google/protobuf/CodedInputStreamReader;->W(I)V

    invoke-virtual {v3}, Lcom/google/protobuf/CodedInputStream;->d()I

    move-result p1

    add-int/2addr p1, p0

    :cond_0
    invoke-virtual {v3}, Lcom/google/protobuf/CodedInputStream;->m()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/DoubleArrayList;->i(D)V

    invoke-virtual {v3}, Lcom/google/protobuf/CodedInputStream;->d()I

    move-result p0

    if-lt p0, p1, :cond_0

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->d()Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p0

    throw p0

    :cond_2
    invoke-virtual {v3}, Lcom/google/protobuf/CodedInputStream;->m()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/DoubleArrayList;->i(D)V

    invoke-virtual {v3}, Lcom/google/protobuf/CodedInputStream;->e()Z

    move-result p1

    if-eqz p1, :cond_3

    return-void

    :cond_3
    invoke-virtual {v3}, Lcom/google/protobuf/CodedInputStream;->B()I

    move-result p1

    iget v1, p0, Lcom/google/protobuf/CodedInputStreamReader;->b:I

    if-eq p1, v1, :cond_2

    iput p1, p0, Lcom/google/protobuf/CodedInputStreamReader;->d:I

    return-void

    :cond_4
    iget v0, p0, Lcom/google/protobuf/CodedInputStreamReader;->b:I

    and-int/lit8 v0, v0, 0x7

    if-eq v0, v2, :cond_7

    if-ne v0, v1, :cond_6

    invoke-virtual {v3}, Lcom/google/protobuf/CodedInputStream;->C()I

    move-result p0

    invoke-static {p0}, Lcom/google/protobuf/CodedInputStreamReader;->W(I)V

    invoke-virtual {v3}, Lcom/google/protobuf/CodedInputStream;->d()I

    move-result v0

    add-int/2addr v0, p0

    :cond_5
    invoke-virtual {v3}, Lcom/google/protobuf/CodedInputStream;->m()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v3}, Lcom/google/protobuf/CodedInputStream;->d()I

    move-result p0

    if-lt p0, v0, :cond_5

    :goto_0
    return-void

    :cond_6
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->d()Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p0

    throw p0

    :cond_7
    invoke-virtual {v3}, Lcom/google/protobuf/CodedInputStream;->m()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v3}, Lcom/google/protobuf/CodedInputStream;->e()Z

    move-result v0

    if-eqz v0, :cond_8

    return-void

    :cond_8
    invoke-virtual {v3}, Lcom/google/protobuf/CodedInputStream;->B()I

    move-result v0

    iget v1, p0, Lcom/google/protobuf/CodedInputStreamReader;->b:I

    if-eq v0, v1, :cond_7

    iput v0, p0, Lcom/google/protobuf/CodedInputStreamReader;->d:I

    return-void
.end method

.method public final N()J
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/protobuf/CodedInputStreamReader;->U(I)V

    iget-object p0, p0, Lcom/google/protobuf/CodedInputStreamReader;->a:Lcom/google/protobuf/CodedInputStream;

    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream;->s()J

    move-result-wide v0

    return-wide v0
.end method

.method public final O()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/google/protobuf/CodedInputStreamReader;->U(I)V

    iget-object p0, p0, Lcom/google/protobuf/CodedInputStreamReader;->a:Lcom/google/protobuf/CodedInputStream;

    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream;->A()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final P(Ljava/lang/Object;Lcom/google/protobuf/Schema;Lcom/google/protobuf/ExtensionRegistryLite;)V
    .locals 2

    iget v0, p0, Lcom/google/protobuf/CodedInputStreamReader;->c:I

    iget v1, p0, Lcom/google/protobuf/CodedInputStreamReader;->b:I

    ushr-int/lit8 v1, v1, 0x3

    shl-int/lit8 v1, v1, 0x3

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/google/protobuf/CodedInputStreamReader;->c:I

    :try_start_0
    invoke-interface {p2, p1, p0, p3}, Lcom/google/protobuf/Schema;->g(Ljava/lang/Object;Lcom/google/protobuf/Reader;Lcom/google/protobuf/ExtensionRegistryLite;)V

    iget p1, p0, Lcom/google/protobuf/CodedInputStreamReader;->b:I

    iget p2, p0, Lcom/google/protobuf/CodedInputStreamReader;->c:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne p1, p2, :cond_0

    iput v0, p0, Lcom/google/protobuf/CodedInputStreamReader;->c:I

    return-void

    :cond_0
    :try_start_1
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->g()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    iput v0, p0, Lcom/google/protobuf/CodedInputStreamReader;->c:I

    throw p1
.end method

.method public final Q(Ljava/lang/Object;Lcom/google/protobuf/Schema;Lcom/google/protobuf/ExtensionRegistryLite;)V
    .locals 4

    iget-object v0, p0, Lcom/google/protobuf/CodedInputStreamReader;->a:Lcom/google/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/google/protobuf/CodedInputStream;->C()I

    move-result v1

    iget v2, v0, Lcom/google/protobuf/CodedInputStream;->a:I

    iget v3, v0, Lcom/google/protobuf/CodedInputStream;->b:I

    add-int/2addr v2, v3

    const/16 v3, 0x64

    if-ge v2, v3, :cond_0

    invoke-virtual {v0, v1}, Lcom/google/protobuf/CodedInputStream;->j(I)I

    move-result v1

    iget v2, v0, Lcom/google/protobuf/CodedInputStream;->a:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v0, Lcom/google/protobuf/CodedInputStream;->a:I

    invoke-interface {p2, p1, p0, p3}, Lcom/google/protobuf/Schema;->g(Ljava/lang/Object;Lcom/google/protobuf/Reader;Lcom/google/protobuf/ExtensionRegistryLite;)V

    const/4 p0, 0x0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/CodedInputStream;->a(I)V

    iget p0, v0, Lcom/google/protobuf/CodedInputStream;->a:I

    add-int/lit8 p0, p0, -0x1

    iput p0, v0, Lcom/google/protobuf/CodedInputStream;->a:I

    invoke-virtual {v0, v1}, Lcom/google/protobuf/CodedInputStream;->i(I)V

    return-void

    :cond_0
    new-instance p0, Lcom/google/protobuf/InvalidProtocolBufferException;

    const-string p1, "Protocol message had too many levels of nesting.  May be malicious.  Use setRecursionLimit() to increase the recursion depth limit."

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final R(Lcom/google/protobuf/WireFormat$FieldType;Ljava/lang/Class;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;
    .locals 1

    sget-object v0, Lcom/google/protobuf/CodedInputStreamReader$1;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_0

    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "unsupported field type."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_0
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStreamReader;->v()J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0

    :pswitch_1
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStreamReader;->i()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_2
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStreamReader;->O()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_3
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStreamReader;->D()J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0

    :pswitch_4
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStreamReader;->m()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_5
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStreamReader;->g()J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0

    :pswitch_6
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStreamReader;->K()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_7
    invoke-virtual {p0, p2, p3}, Lcom/google/protobuf/CodedInputStreamReader;->x(Ljava/lang/Class;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_8
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStreamReader;->N()J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0

    :pswitch_9
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStreamReader;->s()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_a
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStreamReader;->readFloat()F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0

    :pswitch_b
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStreamReader;->a()J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0

    :pswitch_c
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStreamReader;->z()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_d
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStreamReader;->l()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_e
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStreamReader;->readDouble()D

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0

    :pswitch_f
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStreamReader;->r()Lcom/google/protobuf/ByteString;

    move-result-object p0

    return-object p0

    :pswitch_10
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStreamReader;->e()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final S(Ljava/util/List;Z)V
    .locals 3

    iget v0, p0, Lcom/google/protobuf/CodedInputStreamReader;->b:I

    and-int/lit8 v0, v0, 0x7

    const/4 v1, 0x2

    if-ne v0, v1, :cond_5

    instance-of v0, p1, Lcom/google/protobuf/LazyStringList;

    iget-object v1, p0, Lcom/google/protobuf/CodedInputStreamReader;->a:Lcom/google/protobuf/CodedInputStream;

    if-eqz v0, :cond_2

    if-nez p2, :cond_2

    move-object v0, p1

    check-cast v0, Lcom/google/protobuf/LazyStringList;

    :cond_0
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStreamReader;->r()Lcom/google/protobuf/ByteString;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->v(Lcom/google/protobuf/ByteString;)V

    invoke-virtual {v1}, Lcom/google/protobuf/CodedInputStream;->e()Z

    move-result p1

    if-eqz p1, :cond_1

    return-void

    :cond_1
    invoke-virtual {v1}, Lcom/google/protobuf/CodedInputStream;->B()I

    move-result p1

    iget p2, p0, Lcom/google/protobuf/CodedInputStreamReader;->b:I

    if-eq p1, p2, :cond_0

    iput p1, p0, Lcom/google/protobuf/CodedInputStreamReader;->d:I

    return-void

    :cond_2
    if-eqz p2, :cond_3

    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStreamReader;->O()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStreamReader;->E()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1}, Lcom/google/protobuf/CodedInputStream;->e()Z

    move-result v0

    if-eqz v0, :cond_4

    return-void

    :cond_4
    invoke-virtual {v1}, Lcom/google/protobuf/CodedInputStream;->B()I

    move-result v0

    iget v2, p0, Lcom/google/protobuf/CodedInputStreamReader;->b:I

    if-eq v0, v2, :cond_2

    iput v0, p0, Lcom/google/protobuf/CodedInputStreamReader;->d:I

    return-void

    :cond_5
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->d()Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p0

    throw p0
.end method

.method public final T(I)V
    .locals 0

    iget-object p0, p0, Lcom/google/protobuf/CodedInputStreamReader;->a:Lcom/google/protobuf/CodedInputStream;

    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream;->d()I

    move-result p0

    if-ne p0, p1, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->h()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p0

    throw p0
.end method

.method public final U(I)V
    .locals 0

    iget p0, p0, Lcom/google/protobuf/CodedInputStreamReader;->b:I

    and-int/lit8 p0, p0, 0x7

    if-ne p0, p1, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->d()Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p0

    throw p0
.end method

.method public final a()J
    .locals 2

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/protobuf/CodedInputStreamReader;->U(I)V

    iget-object p0, p0, Lcom/google/protobuf/CodedInputStreamReader;->a:Lcom/google/protobuf/CodedInputStream;

    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream;->p()J

    move-result-wide v0

    return-wide v0
.end method

.method public final b(Ljava/util/List;)V
    .locals 5

    instance-of v0, p1, Lcom/google/protobuf/IntArrayList;

    const/4 v1, 0x5

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/google/protobuf/CodedInputStreamReader;->a:Lcom/google/protobuf/CodedInputStream;

    if-eqz v0, :cond_5

    move-object v0, p1

    check-cast v0, Lcom/google/protobuf/IntArrayList;

    iget p1, p0, Lcom/google/protobuf/CodedInputStreamReader;->b:I

    and-int/lit8 p1, p1, 0x7

    if-eq p1, v2, :cond_3

    if-ne p1, v1, :cond_2

    :cond_0
    invoke-virtual {v3}, Lcom/google/protobuf/CodedInputStream;->v()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/protobuf/IntArrayList;->i(I)V

    invoke-virtual {v3}, Lcom/google/protobuf/CodedInputStream;->e()Z

    move-result p1

    if-eqz p1, :cond_1

    return-void

    :cond_1
    invoke-virtual {v3}, Lcom/google/protobuf/CodedInputStream;->B()I

    move-result p1

    iget v1, p0, Lcom/google/protobuf/CodedInputStreamReader;->b:I

    if-eq p1, v1, :cond_0

    iput p1, p0, Lcom/google/protobuf/CodedInputStreamReader;->d:I

    return-void

    :cond_2
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->d()Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p0

    throw p0

    :cond_3
    invoke-virtual {v3}, Lcom/google/protobuf/CodedInputStream;->C()I

    move-result p0

    invoke-static {p0}, Lcom/google/protobuf/CodedInputStreamReader;->V(I)V

    invoke-virtual {v3}, Lcom/google/protobuf/CodedInputStream;->d()I

    move-result p1

    add-int v4, p1, p0

    :cond_4
    invoke-virtual {v3}, Lcom/google/protobuf/CodedInputStream;->v()I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/IntArrayList;->i(I)V

    invoke-virtual {v3}, Lcom/google/protobuf/CodedInputStream;->d()I

    move-result p0

    if-lt p0, v4, :cond_4

    goto :goto_0

    :cond_5
    iget v0, p0, Lcom/google/protobuf/CodedInputStreamReader;->b:I

    and-int/lit8 v0, v0, 0x7

    if-eq v0, v2, :cond_9

    if-ne v0, v1, :cond_8

    :cond_6
    invoke-virtual {v3}, Lcom/google/protobuf/CodedInputStream;->v()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v3}, Lcom/google/protobuf/CodedInputStream;->e()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    :cond_7
    invoke-virtual {v3}, Lcom/google/protobuf/CodedInputStream;->B()I

    move-result v0

    iget v1, p0, Lcom/google/protobuf/CodedInputStreamReader;->b:I

    if-eq v0, v1, :cond_6

    iput v0, p0, Lcom/google/protobuf/CodedInputStreamReader;->d:I

    return-void

    :cond_8
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->d()Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p0

    throw p0

    :cond_9
    invoke-virtual {v3}, Lcom/google/protobuf/CodedInputStream;->C()I

    move-result p0

    invoke-static {p0}, Lcom/google/protobuf/CodedInputStreamReader;->V(I)V

    invoke-virtual {v3}, Lcom/google/protobuf/CodedInputStream;->d()I

    move-result v0

    add-int/2addr v0, p0

    :cond_a
    invoke-virtual {v3}, Lcom/google/protobuf/CodedInputStream;->v()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v3}, Lcom/google/protobuf/CodedInputStream;->d()I

    move-result p0

    if-lt p0, v0, :cond_a

    :goto_0
    return-void
.end method

.method public final c(Ljava/util/List;)V
    .locals 5

    instance-of v0, p1, Lcom/google/protobuf/LongArrayList;

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/protobuf/CodedInputStreamReader;->a:Lcom/google/protobuf/CodedInputStream;

    if-eqz v0, :cond_4

    move-object v0, p1

    check-cast v0, Lcom/google/protobuf/LongArrayList;

    iget p1, p0, Lcom/google/protobuf/CodedInputStreamReader;->b:I

    and-int/lit8 p1, p1, 0x7

    if-eqz p1, :cond_2

    if-ne p1, v1, :cond_1

    invoke-virtual {v2}, Lcom/google/protobuf/CodedInputStream;->C()I

    move-result p1

    invoke-virtual {v2}, Lcom/google/protobuf/CodedInputStream;->d()I

    move-result v1

    add-int/2addr v1, p1

    :cond_0
    invoke-virtual {v2}, Lcom/google/protobuf/CodedInputStream;->y()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Lcom/google/protobuf/LongArrayList;->i(J)V

    invoke-virtual {v2}, Lcom/google/protobuf/CodedInputStream;->d()I

    move-result p1

    if-lt p1, v1, :cond_0

    invoke-virtual {p0, v1}, Lcom/google/protobuf/CodedInputStreamReader;->T(I)V

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->d()Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p0

    throw p0

    :cond_2
    invoke-virtual {v2}, Lcom/google/protobuf/CodedInputStream;->y()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Lcom/google/protobuf/LongArrayList;->i(J)V

    invoke-virtual {v2}, Lcom/google/protobuf/CodedInputStream;->e()Z

    move-result p1

    if-eqz p1, :cond_3

    return-void

    :cond_3
    invoke-virtual {v2}, Lcom/google/protobuf/CodedInputStream;->B()I

    move-result p1

    iget v1, p0, Lcom/google/protobuf/CodedInputStreamReader;->b:I

    if-eq p1, v1, :cond_2

    iput p1, p0, Lcom/google/protobuf/CodedInputStreamReader;->d:I

    return-void

    :cond_4
    iget v0, p0, Lcom/google/protobuf/CodedInputStreamReader;->b:I

    and-int/lit8 v0, v0, 0x7

    if-eqz v0, :cond_7

    if-ne v0, v1, :cond_6

    invoke-virtual {v2}, Lcom/google/protobuf/CodedInputStream;->C()I

    move-result v0

    invoke-virtual {v2}, Lcom/google/protobuf/CodedInputStream;->d()I

    move-result v1

    add-int/2addr v1, v0

    :cond_5
    invoke-virtual {v2}, Lcom/google/protobuf/CodedInputStream;->y()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2}, Lcom/google/protobuf/CodedInputStream;->d()I

    move-result v0

    if-lt v0, v1, :cond_5

    invoke-virtual {p0, v1}, Lcom/google/protobuf/CodedInputStreamReader;->T(I)V

    :goto_0
    return-void

    :cond_6
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->d()Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p0

    throw p0

    :cond_7
    invoke-virtual {v2}, Lcom/google/protobuf/CodedInputStream;->y()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2}, Lcom/google/protobuf/CodedInputStream;->e()Z

    move-result v0

    if-eqz v0, :cond_8

    return-void

    :cond_8
    invoke-virtual {v2}, Lcom/google/protobuf/CodedInputStream;->B()I

    move-result v0

    iget v1, p0, Lcom/google/protobuf/CodedInputStreamReader;->b:I

    if-eq v0, v1, :cond_7

    iput v0, p0, Lcom/google/protobuf/CodedInputStreamReader;->d:I

    return-void
.end method

.method public final d(Ljava/util/List;Lcom/google/protobuf/Schema;Lcom/google/protobuf/ExtensionRegistryLite;)V
    .locals 3

    iget v0, p0, Lcom/google/protobuf/CodedInputStreamReader;->b:I

    and-int/lit8 v1, v0, 0x7

    const/4 v2, 0x3

    if-ne v1, v2, :cond_3

    :cond_0
    invoke-interface {p2}, Lcom/google/protobuf/Schema;->a()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v1, p2, p3}, Lcom/google/protobuf/CodedInputStreamReader;->P(Ljava/lang/Object;Lcom/google/protobuf/Schema;Lcom/google/protobuf/ExtensionRegistryLite;)V

    invoke-interface {p2, v1}, Lcom/google/protobuf/Schema;->b(Ljava/lang/Object;)V

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/google/protobuf/CodedInputStreamReader;->a:Lcom/google/protobuf/CodedInputStream;

    invoke-virtual {v1}, Lcom/google/protobuf/CodedInputStream;->e()Z

    move-result v2

    if-nez v2, :cond_2

    iget v2, p0, Lcom/google/protobuf/CodedInputStreamReader;->d:I

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Lcom/google/protobuf/CodedInputStream;->B()I

    move-result v1

    if-eq v1, v0, :cond_0

    iput v1, p0, Lcom/google/protobuf/CodedInputStreamReader;->d:I

    :cond_2
    :goto_0
    return-void

    :cond_3
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->d()Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p0

    throw p0
.end method

.method public final e()Z
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/protobuf/CodedInputStreamReader;->U(I)V

    iget-object p0, p0, Lcom/google/protobuf/CodedInputStreamReader;->a:Lcom/google/protobuf/CodedInputStream;

    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream;->k()Z

    move-result p0

    return p0
.end method

.method public final f(Ljava/util/List;Lcom/google/protobuf/Schema;Lcom/google/protobuf/ExtensionRegistryLite;)V
    .locals 3

    iget v0, p0, Lcom/google/protobuf/CodedInputStreamReader;->b:I

    and-int/lit8 v1, v0, 0x7

    const/4 v2, 0x2

    if-ne v1, v2, :cond_3

    :cond_0
    invoke-interface {p2}, Lcom/google/protobuf/Schema;->a()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v1, p2, p3}, Lcom/google/protobuf/CodedInputStreamReader;->Q(Ljava/lang/Object;Lcom/google/protobuf/Schema;Lcom/google/protobuf/ExtensionRegistryLite;)V

    invoke-interface {p2, v1}, Lcom/google/protobuf/Schema;->b(Ljava/lang/Object;)V

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/google/protobuf/CodedInputStreamReader;->a:Lcom/google/protobuf/CodedInputStream;

    invoke-virtual {v1}, Lcom/google/protobuf/CodedInputStream;->e()Z

    move-result v2

    if-nez v2, :cond_2

    iget v2, p0, Lcom/google/protobuf/CodedInputStreamReader;->d:I

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Lcom/google/protobuf/CodedInputStream;->B()I

    move-result v1

    if-eq v1, v0, :cond_0

    iput v1, p0, Lcom/google/protobuf/CodedInputStreamReader;->d:I

    :cond_2
    :goto_0
    return-void

    :cond_3
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->d()Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p0

    throw p0
.end method

.method public final g()J
    .locals 2

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/protobuf/CodedInputStreamReader;->U(I)V

    iget-object p0, p0, Lcom/google/protobuf/CodedInputStreamReader;->a:Lcom/google/protobuf/CodedInputStream;

    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream;->w()J

    move-result-wide v0

    return-wide v0
.end method

.method public final getTag()I
    .locals 0

    iget p0, p0, Lcom/google/protobuf/CodedInputStreamReader;->b:I

    return p0
.end method

.method public final h(Ljava/util/List;)V
    .locals 5

    instance-of v0, p1, Lcom/google/protobuf/LongArrayList;

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/protobuf/CodedInputStreamReader;->a:Lcom/google/protobuf/CodedInputStream;

    if-eqz v0, :cond_4

    move-object v0, p1

    check-cast v0, Lcom/google/protobuf/LongArrayList;

    iget p1, p0, Lcom/google/protobuf/CodedInputStreamReader;->b:I

    and-int/lit8 p1, p1, 0x7

    if-eqz p1, :cond_2

    if-ne p1, v1, :cond_1

    invoke-virtual {v2}, Lcom/google/protobuf/CodedInputStream;->C()I

    move-result p1

    invoke-virtual {v2}, Lcom/google/protobuf/CodedInputStream;->d()I

    move-result v1

    add-int/2addr v1, p1

    :cond_0
    invoke-virtual {v2}, Lcom/google/protobuf/CodedInputStream;->D()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Lcom/google/protobuf/LongArrayList;->i(J)V

    invoke-virtual {v2}, Lcom/google/protobuf/CodedInputStream;->d()I

    move-result p1

    if-lt p1, v1, :cond_0

    invoke-virtual {p0, v1}, Lcom/google/protobuf/CodedInputStreamReader;->T(I)V

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->d()Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p0

    throw p0

    :cond_2
    invoke-virtual {v2}, Lcom/google/protobuf/CodedInputStream;->D()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Lcom/google/protobuf/LongArrayList;->i(J)V

    invoke-virtual {v2}, Lcom/google/protobuf/CodedInputStream;->e()Z

    move-result p1

    if-eqz p1, :cond_3

    return-void

    :cond_3
    invoke-virtual {v2}, Lcom/google/protobuf/CodedInputStream;->B()I

    move-result p1

    iget v1, p0, Lcom/google/protobuf/CodedInputStreamReader;->b:I

    if-eq p1, v1, :cond_2

    iput p1, p0, Lcom/google/protobuf/CodedInputStreamReader;->d:I

    return-void

    :cond_4
    iget v0, p0, Lcom/google/protobuf/CodedInputStreamReader;->b:I

    and-int/lit8 v0, v0, 0x7

    if-eqz v0, :cond_7

    if-ne v0, v1, :cond_6

    invoke-virtual {v2}, Lcom/google/protobuf/CodedInputStream;->C()I

    move-result v0

    invoke-virtual {v2}, Lcom/google/protobuf/CodedInputStream;->d()I

    move-result v1

    add-int/2addr v1, v0

    :cond_5
    invoke-virtual {v2}, Lcom/google/protobuf/CodedInputStream;->D()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2}, Lcom/google/protobuf/CodedInputStream;->d()I

    move-result v0

    if-lt v0, v1, :cond_5

    invoke-virtual {p0, v1}, Lcom/google/protobuf/CodedInputStreamReader;->T(I)V

    :goto_0
    return-void

    :cond_6
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->d()Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p0

    throw p0

    :cond_7
    invoke-virtual {v2}, Lcom/google/protobuf/CodedInputStream;->D()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2}, Lcom/google/protobuf/CodedInputStream;->e()Z

    move-result v0

    if-eqz v0, :cond_8

    return-void

    :cond_8
    invoke-virtual {v2}, Lcom/google/protobuf/CodedInputStream;->B()I

    move-result v0

    iget v1, p0, Lcom/google/protobuf/CodedInputStreamReader;->b:I

    if-eq v0, v1, :cond_7

    iput v0, p0, Lcom/google/protobuf/CodedInputStreamReader;->d:I

    return-void
.end method

.method public final i()I
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/protobuf/CodedInputStreamReader;->U(I)V

    iget-object p0, p0, Lcom/google/protobuf/CodedInputStreamReader;->a:Lcom/google/protobuf/CodedInputStream;

    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream;->C()I

    move-result p0

    return p0
.end method

.method public final j(Ljava/util/List;)V
    .locals 5

    instance-of v0, p1, Lcom/google/protobuf/LongArrayList;

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/protobuf/CodedInputStreamReader;->a:Lcom/google/protobuf/CodedInputStream;

    if-eqz v0, :cond_4

    move-object v0, p1

    check-cast v0, Lcom/google/protobuf/LongArrayList;

    iget p1, p0, Lcom/google/protobuf/CodedInputStreamReader;->b:I

    and-int/lit8 p1, p1, 0x7

    if-eqz p1, :cond_2

    if-ne p1, v1, :cond_1

    invoke-virtual {v2}, Lcom/google/protobuf/CodedInputStream;->C()I

    move-result p1

    invoke-virtual {v2}, Lcom/google/protobuf/CodedInputStream;->d()I

    move-result v1

    add-int/2addr v1, p1

    :cond_0
    invoke-virtual {v2}, Lcom/google/protobuf/CodedInputStream;->s()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Lcom/google/protobuf/LongArrayList;->i(J)V

    invoke-virtual {v2}, Lcom/google/protobuf/CodedInputStream;->d()I

    move-result p1

    if-lt p1, v1, :cond_0

    invoke-virtual {p0, v1}, Lcom/google/protobuf/CodedInputStreamReader;->T(I)V

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->d()Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p0

    throw p0

    :cond_2
    invoke-virtual {v2}, Lcom/google/protobuf/CodedInputStream;->s()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Lcom/google/protobuf/LongArrayList;->i(J)V

    invoke-virtual {v2}, Lcom/google/protobuf/CodedInputStream;->e()Z

    move-result p1

    if-eqz p1, :cond_3

    return-void

    :cond_3
    invoke-virtual {v2}, Lcom/google/protobuf/CodedInputStream;->B()I

    move-result p1

    iget v1, p0, Lcom/google/protobuf/CodedInputStreamReader;->b:I

    if-eq p1, v1, :cond_2

    iput p1, p0, Lcom/google/protobuf/CodedInputStreamReader;->d:I

    return-void

    :cond_4
    iget v0, p0, Lcom/google/protobuf/CodedInputStreamReader;->b:I

    and-int/lit8 v0, v0, 0x7

    if-eqz v0, :cond_7

    if-ne v0, v1, :cond_6

    invoke-virtual {v2}, Lcom/google/protobuf/CodedInputStream;->C()I

    move-result v0

    invoke-virtual {v2}, Lcom/google/protobuf/CodedInputStream;->d()I

    move-result v1

    add-int/2addr v1, v0

    :cond_5
    invoke-virtual {v2}, Lcom/google/protobuf/CodedInputStream;->s()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2}, Lcom/google/protobuf/CodedInputStream;->d()I

    move-result v0

    if-lt v0, v1, :cond_5

    invoke-virtual {p0, v1}, Lcom/google/protobuf/CodedInputStreamReader;->T(I)V

    :goto_0
    return-void

    :cond_6
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->d()Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p0

    throw p0

    :cond_7
    invoke-virtual {v2}, Lcom/google/protobuf/CodedInputStream;->s()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2}, Lcom/google/protobuf/CodedInputStream;->e()Z

    move-result v0

    if-eqz v0, :cond_8

    return-void

    :cond_8
    invoke-virtual {v2}, Lcom/google/protobuf/CodedInputStream;->B()I

    move-result v0

    iget v1, p0, Lcom/google/protobuf/CodedInputStreamReader;->b:I

    if-eq v0, v1, :cond_7

    iput v0, p0, Lcom/google/protobuf/CodedInputStreamReader;->d:I

    return-void
.end method

.method public final k(Ljava/util/List;)V
    .locals 3

    instance-of v0, p1, Lcom/google/protobuf/IntArrayList;

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/protobuf/CodedInputStreamReader;->a:Lcom/google/protobuf/CodedInputStream;

    if-eqz v0, :cond_4

    move-object v0, p1

    check-cast v0, Lcom/google/protobuf/IntArrayList;

    iget p1, p0, Lcom/google/protobuf/CodedInputStreamReader;->b:I

    and-int/lit8 p1, p1, 0x7

    if-eqz p1, :cond_2

    if-ne p1, v1, :cond_1

    invoke-virtual {v2}, Lcom/google/protobuf/CodedInputStream;->C()I

    move-result p1

    invoke-virtual {v2}, Lcom/google/protobuf/CodedInputStream;->d()I

    move-result v1

    add-int/2addr v1, p1

    :cond_0
    invoke-virtual {v2}, Lcom/google/protobuf/CodedInputStream;->n()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/protobuf/IntArrayList;->i(I)V

    invoke-virtual {v2}, Lcom/google/protobuf/CodedInputStream;->d()I

    move-result p1

    if-lt p1, v1, :cond_0

    invoke-virtual {p0, v1}, Lcom/google/protobuf/CodedInputStreamReader;->T(I)V

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->d()Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p0

    throw p0

    :cond_2
    invoke-virtual {v2}, Lcom/google/protobuf/CodedInputStream;->n()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/protobuf/IntArrayList;->i(I)V

    invoke-virtual {v2}, Lcom/google/protobuf/CodedInputStream;->e()Z

    move-result p1

    if-eqz p1, :cond_3

    return-void

    :cond_3
    invoke-virtual {v2}, Lcom/google/protobuf/CodedInputStream;->B()I

    move-result p1

    iget v1, p0, Lcom/google/protobuf/CodedInputStreamReader;->b:I

    if-eq p1, v1, :cond_2

    iput p1, p0, Lcom/google/protobuf/CodedInputStreamReader;->d:I

    return-void

    :cond_4
    iget v0, p0, Lcom/google/protobuf/CodedInputStreamReader;->b:I

    and-int/lit8 v0, v0, 0x7

    if-eqz v0, :cond_7

    if-ne v0, v1, :cond_6

    invoke-virtual {v2}, Lcom/google/protobuf/CodedInputStream;->C()I

    move-result v0

    invoke-virtual {v2}, Lcom/google/protobuf/CodedInputStream;->d()I

    move-result v1

    add-int/2addr v1, v0

    :cond_5
    invoke-virtual {v2}, Lcom/google/protobuf/CodedInputStream;->n()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2}, Lcom/google/protobuf/CodedInputStream;->d()I

    move-result v0

    if-lt v0, v1, :cond_5

    invoke-virtual {p0, v1}, Lcom/google/protobuf/CodedInputStreamReader;->T(I)V

    :goto_0
    return-void

    :cond_6
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->d()Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p0

    throw p0

    :cond_7
    invoke-virtual {v2}, Lcom/google/protobuf/CodedInputStream;->n()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2}, Lcom/google/protobuf/CodedInputStream;->e()Z

    move-result v0

    if-eqz v0, :cond_8

    return-void

    :cond_8
    invoke-virtual {v2}, Lcom/google/protobuf/CodedInputStream;->B()I

    move-result v0

    iget v1, p0, Lcom/google/protobuf/CodedInputStreamReader;->b:I

    if-eq v0, v1, :cond_7

    iput v0, p0, Lcom/google/protobuf/CodedInputStreamReader;->d:I

    return-void
.end method

.method public final l()I
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/protobuf/CodedInputStreamReader;->U(I)V

    iget-object p0, p0, Lcom/google/protobuf/CodedInputStreamReader;->a:Lcom/google/protobuf/CodedInputStream;

    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream;->n()I

    move-result p0

    return p0
.end method

.method public final m()I
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/protobuf/CodedInputStreamReader;->U(I)V

    iget-object p0, p0, Lcom/google/protobuf/CodedInputStreamReader;->a:Lcom/google/protobuf/CodedInputStream;

    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream;->x()I

    move-result p0

    return p0
.end method

.method public final n(Ljava/util/List;)V
    .locals 3

    instance-of v0, p1, Lcom/google/protobuf/BooleanArrayList;

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/protobuf/CodedInputStreamReader;->a:Lcom/google/protobuf/CodedInputStream;

    if-eqz v0, :cond_4

    move-object v0, p1

    check-cast v0, Lcom/google/protobuf/BooleanArrayList;

    iget p1, p0, Lcom/google/protobuf/CodedInputStreamReader;->b:I

    and-int/lit8 p1, p1, 0x7

    if-eqz p1, :cond_2

    if-ne p1, v1, :cond_1

    invoke-virtual {v2}, Lcom/google/protobuf/CodedInputStream;->C()I

    move-result p1

    invoke-virtual {v2}, Lcom/google/protobuf/CodedInputStream;->d()I

    move-result v1

    add-int/2addr v1, p1

    :cond_0
    invoke-virtual {v2}, Lcom/google/protobuf/CodedInputStream;->k()Z

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/protobuf/BooleanArrayList;->i(Z)V

    invoke-virtual {v2}, Lcom/google/protobuf/CodedInputStream;->d()I

    move-result p1

    if-lt p1, v1, :cond_0

    invoke-virtual {p0, v1}, Lcom/google/protobuf/CodedInputStreamReader;->T(I)V

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->d()Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p0

    throw p0

    :cond_2
    invoke-virtual {v2}, Lcom/google/protobuf/CodedInputStream;->k()Z

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/protobuf/BooleanArrayList;->i(Z)V

    invoke-virtual {v2}, Lcom/google/protobuf/CodedInputStream;->e()Z

    move-result p1

    if-eqz p1, :cond_3

    return-void

    :cond_3
    invoke-virtual {v2}, Lcom/google/protobuf/CodedInputStream;->B()I

    move-result p1

    iget v1, p0, Lcom/google/protobuf/CodedInputStreamReader;->b:I

    if-eq p1, v1, :cond_2

    iput p1, p0, Lcom/google/protobuf/CodedInputStreamReader;->d:I

    return-void

    :cond_4
    iget v0, p0, Lcom/google/protobuf/CodedInputStreamReader;->b:I

    and-int/lit8 v0, v0, 0x7

    if-eqz v0, :cond_7

    if-ne v0, v1, :cond_6

    invoke-virtual {v2}, Lcom/google/protobuf/CodedInputStream;->C()I

    move-result v0

    invoke-virtual {v2}, Lcom/google/protobuf/CodedInputStream;->d()I

    move-result v1

    add-int/2addr v1, v0

    :cond_5
    invoke-virtual {v2}, Lcom/google/protobuf/CodedInputStream;->k()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2}, Lcom/google/protobuf/CodedInputStream;->d()I

    move-result v0

    if-lt v0, v1, :cond_5

    invoke-virtual {p0, v1}, Lcom/google/protobuf/CodedInputStreamReader;->T(I)V

    :goto_0
    return-void

    :cond_6
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->d()Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p0

    throw p0

    :cond_7
    invoke-virtual {v2}, Lcom/google/protobuf/CodedInputStream;->k()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2}, Lcom/google/protobuf/CodedInputStream;->e()Z

    move-result v0

    if-eqz v0, :cond_8

    return-void

    :cond_8
    invoke-virtual {v2}, Lcom/google/protobuf/CodedInputStream;->B()I

    move-result v0

    iget v1, p0, Lcom/google/protobuf/CodedInputStreamReader;->b:I

    if-eq v0, v1, :cond_7

    iput v0, p0, Lcom/google/protobuf/CodedInputStreamReader;->d:I

    return-void
.end method

.method public final o(Ljava/lang/Class;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/google/protobuf/CodedInputStreamReader;->U(I)V

    sget-object v0, Lcom/google/protobuf/Protobuf;->c:Lcom/google/protobuf/Protobuf;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/Protobuf;->a(Ljava/lang/Class;)Lcom/google/protobuf/Schema;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/protobuf/Schema;->a()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p2}, Lcom/google/protobuf/CodedInputStreamReader;->P(Ljava/lang/Object;Lcom/google/protobuf/Schema;Lcom/google/protobuf/ExtensionRegistryLite;)V

    invoke-interface {p1, v0}, Lcom/google/protobuf/Schema;->b(Ljava/lang/Object;)V

    return-object v0
.end method

.method public final p(Ljava/util/Map;Lcom/google/protobuf/MapEntryLite$Metadata;Lcom/google/protobuf/ExtensionRegistryLite;)V
    .locals 8

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/google/protobuf/CodedInputStreamReader;->U(I)V

    iget-object v1, p0, Lcom/google/protobuf/CodedInputStreamReader;->a:Lcom/google/protobuf/CodedInputStream;

    invoke-virtual {v1}, Lcom/google/protobuf/CodedInputStream;->C()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/google/protobuf/CodedInputStream;->j(I)I

    move-result v2

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v3, Lcom/google/protobuf/Value;->a:Lcom/google/protobuf/Value;

    const-string v4, ""

    :goto_0
    :try_start_0
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStreamReader;->F()I

    move-result v5

    const v6, 0x7fffffff

    if-eq v5, v6, :cond_5

    invoke-virtual {v1}, Lcom/google/protobuf/CodedInputStream;->e()Z

    move-result v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v6, :cond_0

    goto :goto_1

    :cond_0
    const/4 v6, 0x1

    const-string v7, "Unable to parse map entry."

    if-eq v5, v6, :cond_3

    if-eq v5, v0, :cond_2

    :try_start_1
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStreamReader;->J()Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_0

    :cond_1
    new-instance v5, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-direct {v5, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_2
    iget-object v5, p2, Lcom/google/protobuf/MapEntryLite$Metadata;->b:Lcom/google/protobuf/WireFormat$FieldType;

    const-class v6, Lcom/google/protobuf/Value;

    invoke-virtual {p0, v5, v6, p3}, Lcom/google/protobuf/CodedInputStreamReader;->R(Lcom/google/protobuf/WireFormat$FieldType;Ljava/lang/Class;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v3

    goto :goto_0

    :cond_3
    iget-object v5, p2, Lcom/google/protobuf/MapEntryLite$Metadata;->a:Lcom/google/protobuf/WireFormat$FieldType;

    const/4 v6, 0x0

    invoke-virtual {p0, v5, v6, v6}, Lcom/google/protobuf/CodedInputStreamReader;->R(Lcom/google/protobuf/WireFormat$FieldType;Ljava/lang/Class;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v4
    :try_end_1
    .catch Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    :try_start_2
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStreamReader;->J()Z

    move-result v5

    if-eqz v5, :cond_4

    goto :goto_0

    :cond_4
    new-instance p0, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-direct {p0, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    :goto_1
    invoke-interface {p1, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-virtual {v1, v2}, Lcom/google/protobuf/CodedInputStream;->i(I)V

    return-void

    :goto_2
    invoke-virtual {v1, v2}, Lcom/google/protobuf/CodedInputStream;->i(I)V

    throw p0
.end method

.method public final q(Ljava/util/List;)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/CodedInputStreamReader;->S(Ljava/util/List;Z)V

    return-void
.end method

.method public final r()Lcom/google/protobuf/ByteString;
    .locals 1

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/google/protobuf/CodedInputStreamReader;->U(I)V

    iget-object p0, p0, Lcom/google/protobuf/CodedInputStreamReader;->a:Lcom/google/protobuf/CodedInputStream;

    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream;->l()Lcom/google/protobuf/ByteString;

    move-result-object p0

    return-object p0
.end method

.method public final readDouble()D
    .locals 2

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/protobuf/CodedInputStreamReader;->U(I)V

    iget-object p0, p0, Lcom/google/protobuf/CodedInputStreamReader;->a:Lcom/google/protobuf/CodedInputStream;

    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream;->m()D

    move-result-wide v0

    return-wide v0
.end method

.method public final readFloat()F
    .locals 1

    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/google/protobuf/CodedInputStreamReader;->U(I)V

    iget-object p0, p0, Lcom/google/protobuf/CodedInputStreamReader;->a:Lcom/google/protobuf/CodedInputStream;

    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream;->q()F

    move-result p0

    return p0
.end method

.method public final s()I
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/protobuf/CodedInputStreamReader;->U(I)V

    iget-object p0, p0, Lcom/google/protobuf/CodedInputStreamReader;->a:Lcom/google/protobuf/CodedInputStream;

    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream;->r()I

    move-result p0

    return p0
.end method

.method public final t(Ljava/util/List;)V
    .locals 4

    instance-of v0, p1, Lcom/google/protobuf/LongArrayList;

    const/4 v1, 0x2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/google/protobuf/CodedInputStreamReader;->a:Lcom/google/protobuf/CodedInputStream;

    if-eqz v0, :cond_4

    move-object v0, p1

    check-cast v0, Lcom/google/protobuf/LongArrayList;

    iget p1, p0, Lcom/google/protobuf/CodedInputStreamReader;->b:I

    and-int/lit8 p1, p1, 0x7

    if-eq p1, v2, :cond_2

    if-ne p1, v1, :cond_1

    invoke-virtual {v3}, Lcom/google/protobuf/CodedInputStream;->C()I

    move-result p0

    invoke-static {p0}, Lcom/google/protobuf/CodedInputStreamReader;->W(I)V

    invoke-virtual {v3}, Lcom/google/protobuf/CodedInputStream;->d()I

    move-result p1

    add-int/2addr p1, p0

    :cond_0
    invoke-virtual {v3}, Lcom/google/protobuf/CodedInputStream;->p()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/LongArrayList;->i(J)V

    invoke-virtual {v3}, Lcom/google/protobuf/CodedInputStream;->d()I

    move-result p0

    if-lt p0, p1, :cond_0

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->d()Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p0

    throw p0

    :cond_2
    invoke-virtual {v3}, Lcom/google/protobuf/CodedInputStream;->p()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/LongArrayList;->i(J)V

    invoke-virtual {v3}, Lcom/google/protobuf/CodedInputStream;->e()Z

    move-result p1

    if-eqz p1, :cond_3

    return-void

    :cond_3
    invoke-virtual {v3}, Lcom/google/protobuf/CodedInputStream;->B()I

    move-result p1

    iget v1, p0, Lcom/google/protobuf/CodedInputStreamReader;->b:I

    if-eq p1, v1, :cond_2

    iput p1, p0, Lcom/google/protobuf/CodedInputStreamReader;->d:I

    return-void

    :cond_4
    iget v0, p0, Lcom/google/protobuf/CodedInputStreamReader;->b:I

    and-int/lit8 v0, v0, 0x7

    if-eq v0, v2, :cond_7

    if-ne v0, v1, :cond_6

    invoke-virtual {v3}, Lcom/google/protobuf/CodedInputStream;->C()I

    move-result p0

    invoke-static {p0}, Lcom/google/protobuf/CodedInputStreamReader;->W(I)V

    invoke-virtual {v3}, Lcom/google/protobuf/CodedInputStream;->d()I

    move-result v0

    add-int/2addr v0, p0

    :cond_5
    invoke-virtual {v3}, Lcom/google/protobuf/CodedInputStream;->p()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v3}, Lcom/google/protobuf/CodedInputStream;->d()I

    move-result p0

    if-lt p0, v0, :cond_5

    :goto_0
    return-void

    :cond_6
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->d()Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p0

    throw p0

    :cond_7
    invoke-virtual {v3}, Lcom/google/protobuf/CodedInputStream;->p()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v3}, Lcom/google/protobuf/CodedInputStream;->e()Z

    move-result v0

    if-eqz v0, :cond_8

    return-void

    :cond_8
    invoke-virtual {v3}, Lcom/google/protobuf/CodedInputStream;->B()I

    move-result v0

    iget v1, p0, Lcom/google/protobuf/CodedInputStreamReader;->b:I

    if-eq v0, v1, :cond_7

    iput v0, p0, Lcom/google/protobuf/CodedInputStreamReader;->d:I

    return-void
.end method

.method public final u(Ljava/util/List;)V
    .locals 3

    instance-of v0, p1, Lcom/google/protobuf/IntArrayList;

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/protobuf/CodedInputStreamReader;->a:Lcom/google/protobuf/CodedInputStream;

    if-eqz v0, :cond_4

    move-object v0, p1

    check-cast v0, Lcom/google/protobuf/IntArrayList;

    iget p1, p0, Lcom/google/protobuf/CodedInputStreamReader;->b:I

    and-int/lit8 p1, p1, 0x7

    if-eqz p1, :cond_2

    if-ne p1, v1, :cond_1

    invoke-virtual {v2}, Lcom/google/protobuf/CodedInputStream;->C()I

    move-result p1

    invoke-virtual {v2}, Lcom/google/protobuf/CodedInputStream;->d()I

    move-result v1

    add-int/2addr v1, p1

    :cond_0
    invoke-virtual {v2}, Lcom/google/protobuf/CodedInputStream;->x()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/protobuf/IntArrayList;->i(I)V

    invoke-virtual {v2}, Lcom/google/protobuf/CodedInputStream;->d()I

    move-result p1

    if-lt p1, v1, :cond_0

    invoke-virtual {p0, v1}, Lcom/google/protobuf/CodedInputStreamReader;->T(I)V

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->d()Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p0

    throw p0

    :cond_2
    invoke-virtual {v2}, Lcom/google/protobuf/CodedInputStream;->x()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/protobuf/IntArrayList;->i(I)V

    invoke-virtual {v2}, Lcom/google/protobuf/CodedInputStream;->e()Z

    move-result p1

    if-eqz p1, :cond_3

    return-void

    :cond_3
    invoke-virtual {v2}, Lcom/google/protobuf/CodedInputStream;->B()I

    move-result p1

    iget v1, p0, Lcom/google/protobuf/CodedInputStreamReader;->b:I

    if-eq p1, v1, :cond_2

    iput p1, p0, Lcom/google/protobuf/CodedInputStreamReader;->d:I

    return-void

    :cond_4
    iget v0, p0, Lcom/google/protobuf/CodedInputStreamReader;->b:I

    and-int/lit8 v0, v0, 0x7

    if-eqz v0, :cond_7

    if-ne v0, v1, :cond_6

    invoke-virtual {v2}, Lcom/google/protobuf/CodedInputStream;->C()I

    move-result v0

    invoke-virtual {v2}, Lcom/google/protobuf/CodedInputStream;->d()I

    move-result v1

    add-int/2addr v1, v0

    :cond_5
    invoke-virtual {v2}, Lcom/google/protobuf/CodedInputStream;->x()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2}, Lcom/google/protobuf/CodedInputStream;->d()I

    move-result v0

    if-lt v0, v1, :cond_5

    invoke-virtual {p0, v1}, Lcom/google/protobuf/CodedInputStreamReader;->T(I)V

    :goto_0
    return-void

    :cond_6
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->d()Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p0

    throw p0

    :cond_7
    invoke-virtual {v2}, Lcom/google/protobuf/CodedInputStream;->x()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2}, Lcom/google/protobuf/CodedInputStream;->e()Z

    move-result v0

    if-eqz v0, :cond_8

    return-void

    :cond_8
    invoke-virtual {v2}, Lcom/google/protobuf/CodedInputStream;->B()I

    move-result v0

    iget v1, p0, Lcom/google/protobuf/CodedInputStreamReader;->b:I

    if-eq v0, v1, :cond_7

    iput v0, p0, Lcom/google/protobuf/CodedInputStreamReader;->d:I

    return-void
.end method

.method public final v()J
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/protobuf/CodedInputStreamReader;->U(I)V

    iget-object p0, p0, Lcom/google/protobuf/CodedInputStreamReader;->a:Lcom/google/protobuf/CodedInputStream;

    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream;->D()J

    move-result-wide v0

    return-wide v0
.end method

.method public final w(Ljava/util/List;)V
    .locals 3

    instance-of v0, p1, Lcom/google/protobuf/IntArrayList;

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/protobuf/CodedInputStreamReader;->a:Lcom/google/protobuf/CodedInputStream;

    if-eqz v0, :cond_4

    move-object v0, p1

    check-cast v0, Lcom/google/protobuf/IntArrayList;

    iget p1, p0, Lcom/google/protobuf/CodedInputStreamReader;->b:I

    and-int/lit8 p1, p1, 0x7

    if-eqz p1, :cond_2

    if-ne p1, v1, :cond_1

    invoke-virtual {v2}, Lcom/google/protobuf/CodedInputStream;->C()I

    move-result p1

    invoke-virtual {v2}, Lcom/google/protobuf/CodedInputStream;->d()I

    move-result v1

    add-int/2addr v1, p1

    :cond_0
    invoke-virtual {v2}, Lcom/google/protobuf/CodedInputStream;->C()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/protobuf/IntArrayList;->i(I)V

    invoke-virtual {v2}, Lcom/google/protobuf/CodedInputStream;->d()I

    move-result p1

    if-lt p1, v1, :cond_0

    invoke-virtual {p0, v1}, Lcom/google/protobuf/CodedInputStreamReader;->T(I)V

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->d()Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p0

    throw p0

    :cond_2
    invoke-virtual {v2}, Lcom/google/protobuf/CodedInputStream;->C()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/protobuf/IntArrayList;->i(I)V

    invoke-virtual {v2}, Lcom/google/protobuf/CodedInputStream;->e()Z

    move-result p1

    if-eqz p1, :cond_3

    return-void

    :cond_3
    invoke-virtual {v2}, Lcom/google/protobuf/CodedInputStream;->B()I

    move-result p1

    iget v1, p0, Lcom/google/protobuf/CodedInputStreamReader;->b:I

    if-eq p1, v1, :cond_2

    iput p1, p0, Lcom/google/protobuf/CodedInputStreamReader;->d:I

    return-void

    :cond_4
    iget v0, p0, Lcom/google/protobuf/CodedInputStreamReader;->b:I

    and-int/lit8 v0, v0, 0x7

    if-eqz v0, :cond_7

    if-ne v0, v1, :cond_6

    invoke-virtual {v2}, Lcom/google/protobuf/CodedInputStream;->C()I

    move-result v0

    invoke-virtual {v2}, Lcom/google/protobuf/CodedInputStream;->d()I

    move-result v1

    add-int/2addr v1, v0

    :cond_5
    invoke-virtual {v2}, Lcom/google/protobuf/CodedInputStream;->C()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2}, Lcom/google/protobuf/CodedInputStream;->d()I

    move-result v0

    if-lt v0, v1, :cond_5

    invoke-virtual {p0, v1}, Lcom/google/protobuf/CodedInputStreamReader;->T(I)V

    :goto_0
    return-void

    :cond_6
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->d()Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p0

    throw p0

    :cond_7
    invoke-virtual {v2}, Lcom/google/protobuf/CodedInputStream;->C()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2}, Lcom/google/protobuf/CodedInputStream;->e()Z

    move-result v0

    if-eqz v0, :cond_8

    return-void

    :cond_8
    invoke-virtual {v2}, Lcom/google/protobuf/CodedInputStream;->B()I

    move-result v0

    iget v1, p0, Lcom/google/protobuf/CodedInputStreamReader;->b:I

    if-eq v0, v1, :cond_7

    iput v0, p0, Lcom/google/protobuf/CodedInputStreamReader;->d:I

    return-void
.end method

.method public final x(Ljava/lang/Class;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/google/protobuf/CodedInputStreamReader;->U(I)V

    sget-object v0, Lcom/google/protobuf/Protobuf;->c:Lcom/google/protobuf/Protobuf;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/Protobuf;->a(Ljava/lang/Class;)Lcom/google/protobuf/Schema;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/protobuf/Schema;->a()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p2}, Lcom/google/protobuf/CodedInputStreamReader;->Q(Ljava/lang/Object;Lcom/google/protobuf/Schema;Lcom/google/protobuf/ExtensionRegistryLite;)V

    invoke-interface {p1, v0}, Lcom/google/protobuf/Schema;->b(Ljava/lang/Object;)V

    return-object v0
.end method

.method public final y(Ljava/lang/Object;Lcom/google/protobuf/Schema;Lcom/google/protobuf/ExtensionRegistryLite;)V
    .locals 1

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/google/protobuf/CodedInputStreamReader;->U(I)V

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/protobuf/CodedInputStreamReader;->P(Ljava/lang/Object;Lcom/google/protobuf/Schema;Lcom/google/protobuf/ExtensionRegistryLite;)V

    return-void
.end method

.method public final z()I
    .locals 1

    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/google/protobuf/CodedInputStreamReader;->U(I)V

    iget-object p0, p0, Lcom/google/protobuf/CodedInputStreamReader;->a:Lcom/google/protobuf/CodedInputStream;

    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream;->o()I

    move-result p0

    return p0
.end method
