.class public abstract Lcom/google/crypto/tink/shaded/protobuf/g0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/Class;

.field public static final b:Lcom/google/crypto/tink/shaded/protobuf/i0;

.field public static final c:Lcom/google/crypto/tink/shaded/protobuf/i0;

.field public static final d:Lcom/google/crypto/tink/shaded/protobuf/i0;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    :try_start_0
    const-string v0, "com.google.crypto.tink.shaded.protobuf.GeneratedMessageV3"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    const/4 v0, 0x0

    :goto_0
    sput-object v0, Lcom/google/crypto/tink/shaded/protobuf/g0;->a:Ljava/lang/Class;

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/google/crypto/tink/shaded/protobuf/g0;->A(Z)Lcom/google/crypto/tink/shaded/protobuf/i0;

    move-result-object v0

    sput-object v0, Lcom/google/crypto/tink/shaded/protobuf/g0;->b:Lcom/google/crypto/tink/shaded/protobuf/i0;

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/google/crypto/tink/shaded/protobuf/g0;->A(Z)Lcom/google/crypto/tink/shaded/protobuf/i0;

    move-result-object v0

    sput-object v0, Lcom/google/crypto/tink/shaded/protobuf/g0;->c:Lcom/google/crypto/tink/shaded/protobuf/i0;

    new-instance v0, Lcom/google/crypto/tink/shaded/protobuf/i0;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/crypto/tink/shaded/protobuf/g0;->d:Lcom/google/crypto/tink/shaded/protobuf/i0;

    return-void
.end method

.method public static A(Z)Lcom/google/crypto/tink/shaded/protobuf/i0;
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "com.google.crypto.tink.shaded.protobuf.UnknownFieldSetSchema"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-object v1, v0

    :goto_0
    if-nez v1, :cond_0

    return-object v0

    :cond_0
    :try_start_1
    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    filled-new-array {v2}, [Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/crypto/tink/shaded/protobuf/i0;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-object p0

    :catchall_1
    return-object v0
.end method

.method public static B(Lcom/google/crypto/tink/shaded/protobuf/i0;Lcom/google/crypto/tink/shaded/protobuf/z;Lcom/google/crypto/tink/shaded/protobuf/z;)V
    .locals 6

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p1, Lcom/google/crypto/tink/shaded/protobuf/z;->unknownFields:Lcom/google/crypto/tink/shaded/protobuf/h0;

    iget-object p2, p2, Lcom/google/crypto/tink/shaded/protobuf/z;->unknownFields:Lcom/google/crypto/tink/shaded/protobuf/h0;

    sget-object v0, Lcom/google/crypto/tink/shaded/protobuf/h0;->f:Lcom/google/crypto/tink/shaded/protobuf/h0;

    invoke-virtual {p2, v0}, Lcom/google/crypto/tink/shaded/protobuf/h0;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/google/crypto/tink/shaded/protobuf/h0;->a:I

    iget v1, p2, Lcom/google/crypto/tink/shaded/protobuf/h0;->a:I

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/google/crypto/tink/shaded/protobuf/h0;->b:[I

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v1

    iget-object v2, p2, Lcom/google/crypto/tink/shaded/protobuf/h0;->b:[I

    iget v3, p0, Lcom/google/crypto/tink/shaded/protobuf/h0;->a:I

    iget v4, p2, Lcom/google/crypto/tink/shaded/protobuf/h0;->a:I

    const/4 v5, 0x0

    invoke-static {v2, v5, v1, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v2, p0, Lcom/google/crypto/tink/shaded/protobuf/h0;->c:[Ljava/lang/Object;

    invoke-static {v2, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    iget-object v3, p2, Lcom/google/crypto/tink/shaded/protobuf/h0;->c:[Ljava/lang/Object;

    iget p0, p0, Lcom/google/crypto/tink/shaded/protobuf/h0;->a:I

    iget p2, p2, Lcom/google/crypto/tink/shaded/protobuf/h0;->a:I

    invoke-static {v3, v5, v2, p0, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance p0, Lcom/google/crypto/tink/shaded/protobuf/h0;

    const/4 p2, 0x1

    invoke-direct {p0, v0, v1, v2, p2}, Lcom/google/crypto/tink/shaded/protobuf/h0;-><init>(I[I[Ljava/lang/Object;Z)V

    :goto_0
    iput-object p0, p1, Lcom/google/crypto/tink/shaded/protobuf/z;->unknownFields:Lcom/google/crypto/tink/shaded/protobuf/h0;

    return-void
.end method

.method public static C(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    if-eq p0, p1, :cond_1

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static D(ILjava/util/List;Lcom/google/crypto/tink/shaded/protobuf/l;Z)V
    .locals 2

    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object p2, p2, Lcom/google/crypto/tink/shaded/protobuf/l;->a:Ljava/lang/Object;

    check-cast p2, Lcom/google/crypto/tink/shaded/protobuf/j;

    const/4 v0, 0x0

    if-eqz p3, :cond_1

    const/4 p3, 0x2

    invoke-virtual {p2, p0, p3}, Lcom/google/crypto/tink/shaded/protobuf/j;->B0(II)V

    move p0, v0

    move p3, p0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge p0, v1, :cond_0

    invoke-interface {p1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lcom/google/crypto/tink/shaded/protobuf/j;->e:Ljava/util/logging/Logger;

    add-int/lit8 p3, p3, 0x1

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p2, p3}, Lcom/google/crypto/tink/shaded/protobuf/j;->C0(I)V

    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p0

    if-ge v0, p0, :cond_2

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    int-to-byte p0, p0

    invoke-virtual {p2, p0}, Lcom/google/crypto/tink/shaded/protobuf/j;->u0(B)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    move p3, v0

    :goto_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge p3, v1, :cond_2

    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p2, p0, v0}, Lcom/google/crypto/tink/shaded/protobuf/j;->B0(II)V

    int-to-byte v1, v1

    invoke-virtual {p2, v1}, Lcom/google/crypto/tink/shaded/protobuf/j;->u0(B)V

    add-int/lit8 p3, p3, 0x1

    goto :goto_2

    :cond_2
    return-void
.end method

.method public static E(ILjava/util/List;Lcom/google/crypto/tink/shaded/protobuf/l;)V
    .locals 5

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/crypto/tink/shaded/protobuf/h;

    const/4 v2, 0x2

    iget-object v3, p2, Lcom/google/crypto/tink/shaded/protobuf/l;->a:Ljava/lang/Object;

    check-cast v3, Lcom/google/crypto/tink/shaded/protobuf/j;

    invoke-virtual {v3, p0, v2}, Lcom/google/crypto/tink/shaded/protobuf/j;->B0(II)V

    invoke-virtual {v1}, Lcom/google/crypto/tink/shaded/protobuf/h;->size()I

    move-result v2

    invoke-virtual {v3, v2}, Lcom/google/crypto/tink/shaded/protobuf/j;->C0(I)V

    check-cast v1, Lcom/google/crypto/tink/shaded/protobuf/g;

    invoke-virtual {v1}, Lcom/google/crypto/tink/shaded/protobuf/g;->r()I

    move-result v2

    invoke-virtual {v1}, Lcom/google/crypto/tink/shaded/protobuf/g;->size()I

    move-result v4

    iget-object v1, v1, Lcom/google/crypto/tink/shaded/protobuf/g;->d:[B

    invoke-virtual {v3, v1, v2, v4}, Lcom/google/crypto/tink/shaded/protobuf/j;->v0([BII)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static F(ILjava/util/List;Lcom/google/crypto/tink/shaded/protobuf/l;Z)V
    .locals 3

    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object p2, p2, Lcom/google/crypto/tink/shaded/protobuf/l;->a:Ljava/lang/Object;

    check-cast p2, Lcom/google/crypto/tink/shaded/protobuf/j;

    const/4 v0, 0x0

    if-eqz p3, :cond_1

    const/4 p3, 0x2

    invoke-virtual {p2, p0, p3}, Lcom/google/crypto/tink/shaded/protobuf/j;->B0(II)V

    move p0, v0

    move p3, p0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge p0, v1, :cond_0

    invoke-interface {p1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lcom/google/crypto/tink/shaded/protobuf/j;->e:Ljava/util/logging/Logger;

    add-int/lit8 p3, p3, 0x8

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p2, p3}, Lcom/google/crypto/tink/shaded/protobuf/j;->C0(I)V

    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p0

    if-ge v0, p0, :cond_2

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Double;

    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v1

    invoke-virtual {p2, v1, v2}, Lcom/google/crypto/tink/shaded/protobuf/j;->z0(J)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    :goto_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p3

    if-ge v0, p3, :cond_2

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Double;

    invoke-virtual {p3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1, v2}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v1

    invoke-virtual {p2, p0, v1, v2}, Lcom/google/crypto/tink/shaded/protobuf/j;->y0(IJ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    return-void
.end method

.method public static G(ILjava/util/List;Lcom/google/crypto/tink/shaded/protobuf/l;Z)V
    .locals 2

    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object p2, p2, Lcom/google/crypto/tink/shaded/protobuf/l;->a:Ljava/lang/Object;

    check-cast p2, Lcom/google/crypto/tink/shaded/protobuf/j;

    const/4 v0, 0x0

    if-eqz p3, :cond_1

    const/4 p3, 0x2

    invoke-virtual {p2, p0, p3}, Lcom/google/crypto/tink/shaded/protobuf/j;->B0(II)V

    move p0, v0

    move p3, p0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge p0, v1, :cond_0

    invoke-interface {p1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Lcom/google/crypto/tink/shaded/protobuf/j;->h0(I)I

    move-result v1

    add-int/2addr p3, v1

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p2, p3}, Lcom/google/crypto/tink/shaded/protobuf/j;->C0(I)V

    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p0

    if-ge v0, p0, :cond_2

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-virtual {p2, p0}, Lcom/google/crypto/tink/shaded/protobuf/j;->A0(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    move p3, v0

    :goto_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge p3, v1, :cond_2

    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p2, p0, v0}, Lcom/google/crypto/tink/shaded/protobuf/j;->B0(II)V

    invoke-virtual {p2, v1}, Lcom/google/crypto/tink/shaded/protobuf/j;->A0(I)V

    add-int/lit8 p3, p3, 0x1

    goto :goto_2

    :cond_2
    return-void
.end method

.method public static H(ILjava/util/List;Lcom/google/crypto/tink/shaded/protobuf/l;Z)V
    .locals 2

    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object p2, p2, Lcom/google/crypto/tink/shaded/protobuf/l;->a:Ljava/lang/Object;

    check-cast p2, Lcom/google/crypto/tink/shaded/protobuf/j;

    const/4 v0, 0x0

    if-eqz p3, :cond_1

    const/4 p3, 0x2

    invoke-virtual {p2, p0, p3}, Lcom/google/crypto/tink/shaded/protobuf/j;->B0(II)V

    move p0, v0

    move p3, p0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge p0, v1, :cond_0

    invoke-interface {p1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lcom/google/crypto/tink/shaded/protobuf/j;->e:Ljava/util/logging/Logger;

    add-int/lit8 p3, p3, 0x4

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p2, p3}, Lcom/google/crypto/tink/shaded/protobuf/j;->C0(I)V

    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p0

    if-ge v0, p0, :cond_2

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-virtual {p2, p0}, Lcom/google/crypto/tink/shaded/protobuf/j;->x0(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    :goto_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p3

    if-ge v0, p3, :cond_2

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    invoke-virtual {p2, p0, p3}, Lcom/google/crypto/tink/shaded/protobuf/j;->w0(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    return-void
.end method

.method public static I(ILjava/util/List;Lcom/google/crypto/tink/shaded/protobuf/l;Z)V
    .locals 3

    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object p2, p2, Lcom/google/crypto/tink/shaded/protobuf/l;->a:Ljava/lang/Object;

    check-cast p2, Lcom/google/crypto/tink/shaded/protobuf/j;

    const/4 v0, 0x0

    if-eqz p3, :cond_1

    const/4 p3, 0x2

    invoke-virtual {p2, p0, p3}, Lcom/google/crypto/tink/shaded/protobuf/j;->B0(II)V

    move p0, v0

    move p3, p0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge p0, v1, :cond_0

    invoke-interface {p1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lcom/google/crypto/tink/shaded/protobuf/j;->e:Ljava/util/logging/Logger;

    add-int/lit8 p3, p3, 0x8

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p2, p3}, Lcom/google/crypto/tink/shaded/protobuf/j;->C0(I)V

    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p0

    if-ge v0, p0, :cond_2

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {p2, v1, v2}, Lcom/google/crypto/tink/shaded/protobuf/j;->z0(J)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    :goto_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p3

    if-ge v0, p3, :cond_2

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Long;

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {p2, p0, v1, v2}, Lcom/google/crypto/tink/shaded/protobuf/j;->y0(IJ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    return-void
.end method

.method public static J(ILjava/util/List;Lcom/google/crypto/tink/shaded/protobuf/l;Z)V
    .locals 2

    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object p2, p2, Lcom/google/crypto/tink/shaded/protobuf/l;->a:Ljava/lang/Object;

    check-cast p2, Lcom/google/crypto/tink/shaded/protobuf/j;

    const/4 v0, 0x0

    if-eqz p3, :cond_1

    const/4 p3, 0x2

    invoke-virtual {p2, p0, p3}, Lcom/google/crypto/tink/shaded/protobuf/j;->B0(II)V

    move p0, v0

    move p3, p0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge p0, v1, :cond_0

    invoke-interface {p1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lcom/google/crypto/tink/shaded/protobuf/j;->e:Ljava/util/logging/Logger;

    add-int/lit8 p3, p3, 0x4

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p2, p3}, Lcom/google/crypto/tink/shaded/protobuf/j;->C0(I)V

    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p0

    if-ge v0, p0, :cond_2

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p0

    invoke-virtual {p2, p0}, Lcom/google/crypto/tink/shaded/protobuf/j;->x0(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    :goto_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p3

    if-ge v0, p3, :cond_2

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Float;

    invoke-virtual {p3}, Ljava/lang/Float;->floatValue()F

    move-result p3

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p3}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p3

    invoke-virtual {p2, p0, p3}, Lcom/google/crypto/tink/shaded/protobuf/j;->w0(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    return-void
.end method

.method public static K(ILjava/util/List;Lcom/google/crypto/tink/shaded/protobuf/l;Lcom/google/crypto/tink/shaded/protobuf/f0;)V
    .locals 2

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p2, p0, v1, p3}, Lcom/google/crypto/tink/shaded/protobuf/l;->h(ILjava/lang/Object;Lcom/google/crypto/tink/shaded/protobuf/f0;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static L(ILjava/util/List;Lcom/google/crypto/tink/shaded/protobuf/l;Z)V
    .locals 2

    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object p2, p2, Lcom/google/crypto/tink/shaded/protobuf/l;->a:Ljava/lang/Object;

    check-cast p2, Lcom/google/crypto/tink/shaded/protobuf/j;

    const/4 v0, 0x0

    if-eqz p3, :cond_1

    const/4 p3, 0x2

    invoke-virtual {p2, p0, p3}, Lcom/google/crypto/tink/shaded/protobuf/j;->B0(II)V

    move p0, v0

    move p3, p0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge p0, v1, :cond_0

    invoke-interface {p1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Lcom/google/crypto/tink/shaded/protobuf/j;->h0(I)I

    move-result v1

    add-int/2addr p3, v1

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p2, p3}, Lcom/google/crypto/tink/shaded/protobuf/j;->C0(I)V

    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p0

    if-ge v0, p0, :cond_2

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-virtual {p2, p0}, Lcom/google/crypto/tink/shaded/protobuf/j;->A0(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    move p3, v0

    :goto_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge p3, v1, :cond_2

    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p2, p0, v0}, Lcom/google/crypto/tink/shaded/protobuf/j;->B0(II)V

    invoke-virtual {p2, v1}, Lcom/google/crypto/tink/shaded/protobuf/j;->A0(I)V

    add-int/lit8 p3, p3, 0x1

    goto :goto_2

    :cond_2
    return-void
.end method

.method public static M(ILjava/util/List;Lcom/google/crypto/tink/shaded/protobuf/l;Z)V
    .locals 3

    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object p2, p2, Lcom/google/crypto/tink/shaded/protobuf/l;->a:Ljava/lang/Object;

    check-cast p2, Lcom/google/crypto/tink/shaded/protobuf/j;

    const/4 v0, 0x0

    if-eqz p3, :cond_1

    const/4 p3, 0x2

    invoke-virtual {p2, p0, p3}, Lcom/google/crypto/tink/shaded/protobuf/j;->B0(II)V

    move p0, v0

    move p3, p0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge p0, v1, :cond_0

    invoke-interface {p1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/google/crypto/tink/shaded/protobuf/j;->t0(J)I

    move-result v1

    add-int/2addr p3, v1

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p2, p3}, Lcom/google/crypto/tink/shaded/protobuf/j;->C0(I)V

    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p0

    if-ge v0, p0, :cond_2

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {p2, v1, v2}, Lcom/google/crypto/tink/shaded/protobuf/j;->E0(J)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    :goto_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p3

    if-ge v0, p3, :cond_2

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Long;

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {p2, p0, v1, v2}, Lcom/google/crypto/tink/shaded/protobuf/j;->D0(IJ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    return-void
.end method

.method public static N(ILjava/util/List;Lcom/google/crypto/tink/shaded/protobuf/l;Lcom/google/crypto/tink/shaded/protobuf/f0;)V
    .locals 2

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p2, p0, v1, p3}, Lcom/google/crypto/tink/shaded/protobuf/l;->k(ILjava/lang/Object;Lcom/google/crypto/tink/shaded/protobuf/f0;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static O(ILjava/util/List;Lcom/google/crypto/tink/shaded/protobuf/l;Z)V
    .locals 2

    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object p2, p2, Lcom/google/crypto/tink/shaded/protobuf/l;->a:Ljava/lang/Object;

    check-cast p2, Lcom/google/crypto/tink/shaded/protobuf/j;

    const/4 v0, 0x0

    if-eqz p3, :cond_1

    const/4 p3, 0x2

    invoke-virtual {p2, p0, p3}, Lcom/google/crypto/tink/shaded/protobuf/j;->B0(II)V

    move p0, v0

    move p3, p0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge p0, v1, :cond_0

    invoke-interface {p1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lcom/google/crypto/tink/shaded/protobuf/j;->e:Ljava/util/logging/Logger;

    add-int/lit8 p3, p3, 0x4

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p2, p3}, Lcom/google/crypto/tink/shaded/protobuf/j;->C0(I)V

    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p0

    if-ge v0, p0, :cond_2

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-virtual {p2, p0}, Lcom/google/crypto/tink/shaded/protobuf/j;->x0(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    :goto_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p3

    if-ge v0, p3, :cond_2

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    invoke-virtual {p2, p0, p3}, Lcom/google/crypto/tink/shaded/protobuf/j;->w0(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    return-void
.end method

.method public static P(ILjava/util/List;Lcom/google/crypto/tink/shaded/protobuf/l;Z)V
    .locals 3

    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object p2, p2, Lcom/google/crypto/tink/shaded/protobuf/l;->a:Ljava/lang/Object;

    check-cast p2, Lcom/google/crypto/tink/shaded/protobuf/j;

    const/4 v0, 0x0

    if-eqz p3, :cond_1

    const/4 p3, 0x2

    invoke-virtual {p2, p0, p3}, Lcom/google/crypto/tink/shaded/protobuf/j;->B0(II)V

    move p0, v0

    move p3, p0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge p0, v1, :cond_0

    invoke-interface {p1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lcom/google/crypto/tink/shaded/protobuf/j;->e:Ljava/util/logging/Logger;

    add-int/lit8 p3, p3, 0x8

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p2, p3}, Lcom/google/crypto/tink/shaded/protobuf/j;->C0(I)V

    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p0

    if-ge v0, p0, :cond_2

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {p2, v1, v2}, Lcom/google/crypto/tink/shaded/protobuf/j;->z0(J)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    :goto_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p3

    if-ge v0, p3, :cond_2

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Long;

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {p2, p0, v1, v2}, Lcom/google/crypto/tink/shaded/protobuf/j;->y0(IJ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    return-void
.end method

.method public static Q(ILjava/util/List;Lcom/google/crypto/tink/shaded/protobuf/l;Z)V
    .locals 3

    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object p2, p2, Lcom/google/crypto/tink/shaded/protobuf/l;->a:Ljava/lang/Object;

    check-cast p2, Lcom/google/crypto/tink/shaded/protobuf/j;

    const/4 v0, 0x0

    if-eqz p3, :cond_1

    const/4 p3, 0x2

    invoke-virtual {p2, p0, p3}, Lcom/google/crypto/tink/shaded/protobuf/j;->B0(II)V

    move p0, v0

    move p3, p0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge p0, v1, :cond_0

    invoke-interface {p1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    shl-int/lit8 v2, v1, 0x1

    shr-int/lit8 v1, v1, 0x1f

    xor-int/2addr v1, v2

    invoke-static {v1}, Lcom/google/crypto/tink/shaded/protobuf/j;->r0(I)I

    move-result v1

    add-int/2addr p3, v1

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p2, p3}, Lcom/google/crypto/tink/shaded/protobuf/j;->C0(I)V

    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p0

    if-ge v0, p0, :cond_2

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    shl-int/lit8 p3, p0, 0x1

    shr-int/lit8 p0, p0, 0x1f

    xor-int/2addr p0, p3

    invoke-virtual {p2, p0}, Lcom/google/crypto/tink/shaded/protobuf/j;->C0(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    move p3, v0

    :goto_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge p3, v1, :cond_2

    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    shl-int/lit8 v2, v1, 0x1

    shr-int/lit8 v1, v1, 0x1f

    xor-int/2addr v1, v2

    invoke-virtual {p2, p0, v0}, Lcom/google/crypto/tink/shaded/protobuf/j;->B0(II)V

    invoke-virtual {p2, v1}, Lcom/google/crypto/tink/shaded/protobuf/j;->C0(I)V

    add-int/lit8 p3, p3, 0x1

    goto :goto_2

    :cond_2
    return-void
.end method

.method public static R(ILjava/util/List;Lcom/google/crypto/tink/shaded/protobuf/l;Z)V
    .locals 7

    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object p2, p2, Lcom/google/crypto/tink/shaded/protobuf/l;->a:Ljava/lang/Object;

    check-cast p2, Lcom/google/crypto/tink/shaded/protobuf/j;

    const/16 v0, 0x3f

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p3, :cond_1

    const/4 p3, 0x2

    invoke-virtual {p2, p0, p3}, Lcom/google/crypto/tink/shaded/protobuf/j;->B0(II)V

    move p0, v2

    move p3, p0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge p0, v3, :cond_0

    invoke-interface {p1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    shl-long v5, v3, v1

    shr-long/2addr v3, v0

    xor-long/2addr v3, v5

    invoke-static {v3, v4}, Lcom/google/crypto/tink/shaded/protobuf/j;->t0(J)I

    move-result v3

    add-int/2addr p3, v3

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p2, p3}, Lcom/google/crypto/tink/shaded/protobuf/j;->C0(I)V

    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p0

    if-ge v2, p0, :cond_2

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    shl-long v5, v3, v1

    shr-long/2addr v3, v0

    xor-long/2addr v3, v5

    invoke-virtual {p2, v3, v4}, Lcom/google/crypto/tink/shaded/protobuf/j;->E0(J)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    :goto_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p3

    if-ge v2, p3, :cond_2

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Long;

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    shl-long v5, v3, v1

    shr-long/2addr v3, v0

    xor-long/2addr v3, v5

    invoke-virtual {p2, p0, v3, v4}, Lcom/google/crypto/tink/shaded/protobuf/j;->D0(IJ)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_2
    return-void
.end method

.method public static S(ILjava/util/List;Lcom/google/crypto/tink/shaded/protobuf/l;)V
    .locals 12

    if-eqz p1, :cond_4

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v0, p1, Lcom/google/crypto/tink/shaded/protobuf/J;

    const-string v1, "Converting ill-formed UTF-16. Your Protocol Buffer will not round trip correctly!"

    const/4 v2, 0x2

    const/4 v3, 0x0

    iget-object p2, p2, Lcom/google/crypto/tink/shaded/protobuf/l;->a:Ljava/lang/Object;

    check-cast p2, Lcom/google/crypto/tink/shaded/protobuf/j;

    if-eqz v0, :cond_2

    move-object v0, p1

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/J;

    move v4, v3

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_4

    invoke-interface {v0, v4}, Lcom/google/crypto/tink/shaded/protobuf/J;->e(I)Ljava/lang/Object;

    move-result-object v5

    instance-of v6, v5, Ljava/lang/String;

    if-eqz v6, :cond_1

    check-cast v5, Ljava/lang/String;

    invoke-virtual {p2, p0, v2}, Lcom/google/crypto/tink/shaded/protobuf/j;->B0(II)V

    iget v6, p2, Lcom/google/crypto/tink/shaded/protobuf/j;->d:I

    :try_start_0
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    mul-int/lit8 v7, v7, 0x3

    invoke-static {v7}, Lcom/google/crypto/tink/shaded/protobuf/j;->r0(I)I

    move-result v7

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v8

    invoke-static {v8}, Lcom/google/crypto/tink/shaded/protobuf/j;->r0(I)I

    move-result v8
    :try_end_0
    .catch Lcom/google/crypto/tink/shaded/protobuf/s0; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v9, p2, Lcom/google/crypto/tink/shaded/protobuf/j;->b:[B

    iget v10, p2, Lcom/google/crypto/tink/shaded/protobuf/j;->c:I

    if-ne v8, v7, :cond_0

    add-int v7, v6, v8

    :try_start_1
    iput v7, p2, Lcom/google/crypto/tink/shaded/protobuf/j;->d:I

    sub-int/2addr v10, v7

    sget-object v11, Lcom/google/crypto/tink/shaded/protobuf/t0;->a:Lcom/google/crypto/tink/shaded/protobuf/U;

    invoke-virtual {v11, v5, v9, v7, v10}, Lcom/google/crypto/tink/shaded/protobuf/U;->Q(Ljava/lang/String;[BII)I

    move-result v7

    iput v6, p2, Lcom/google/crypto/tink/shaded/protobuf/j;->d:I

    sub-int v9, v7, v6

    sub-int/2addr v9, v8

    invoke-virtual {p2, v9}, Lcom/google/crypto/tink/shaded/protobuf/j;->C0(I)V

    iput v7, p2, Lcom/google/crypto/tink/shaded/protobuf/j;->d:I

    goto :goto_5

    :catch_0
    move-exception p0

    goto :goto_1

    :catch_1
    move-exception v7

    goto :goto_2

    :cond_0
    invoke-static {v5}, Lcom/google/crypto/tink/shaded/protobuf/t0;->b(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {p2, v7}, Lcom/google/crypto/tink/shaded/protobuf/j;->C0(I)V

    iget v7, p2, Lcom/google/crypto/tink/shaded/protobuf/j;->d:I

    sub-int/2addr v10, v7

    sget-object v8, Lcom/google/crypto/tink/shaded/protobuf/t0;->a:Lcom/google/crypto/tink/shaded/protobuf/U;

    invoke-virtual {v8, v5, v9, v7, v10}, Lcom/google/crypto/tink/shaded/protobuf/U;->Q(Ljava/lang/String;[BII)I

    move-result v7

    iput v7, p2, Lcom/google/crypto/tink/shaded/protobuf/j;->d:I
    :try_end_1
    .catch Lcom/google/crypto/tink/shaded/protobuf/s0; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_5

    :goto_1
    new-instance p1, Lcom/google/crypto/tink/shaded/protobuf/k;

    invoke-direct {p1, p0}, Lcom/google/crypto/tink/shaded/protobuf/k;-><init>(Ljava/lang/IndexOutOfBoundsException;)V

    throw p1

    :goto_2
    iput v6, p2, Lcom/google/crypto/tink/shaded/protobuf/j;->d:I

    sget-object v6, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    sget-object v8, Lcom/google/crypto/tink/shaded/protobuf/j;->e:Ljava/util/logging/Logger;

    invoke-virtual {v8, v6, v1, v7}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    sget-object v6, Lcom/google/crypto/tink/shaded/protobuf/E;->a:Ljava/nio/charset/Charset;

    invoke-virtual {v5, v6}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v5

    :try_start_2
    array-length v6, v5

    invoke-virtual {p2, v6}, Lcom/google/crypto/tink/shaded/protobuf/j;->C0(I)V

    array-length v6, v5

    invoke-virtual {p2, v5, v3, v6}, Lcom/google/crypto/tink/shaded/protobuf/j;->v0([BII)V
    :try_end_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Lcom/google/crypto/tink/shaded/protobuf/k; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_5

    :catch_2
    move-exception p0

    goto :goto_3

    :catch_3
    move-exception p0

    goto :goto_4

    :goto_3
    throw p0

    :goto_4
    new-instance p1, Lcom/google/crypto/tink/shaded/protobuf/k;

    invoke-direct {p1, p0}, Lcom/google/crypto/tink/shaded/protobuf/k;-><init>(Ljava/lang/IndexOutOfBoundsException;)V

    throw p1

    :cond_1
    check-cast v5, Lcom/google/crypto/tink/shaded/protobuf/h;

    invoke-virtual {p2, p0, v2}, Lcom/google/crypto/tink/shaded/protobuf/j;->B0(II)V

    invoke-virtual {v5}, Lcom/google/crypto/tink/shaded/protobuf/h;->size()I

    move-result v6

    invoke-virtual {p2, v6}, Lcom/google/crypto/tink/shaded/protobuf/j;->C0(I)V

    check-cast v5, Lcom/google/crypto/tink/shaded/protobuf/g;

    invoke-virtual {v5}, Lcom/google/crypto/tink/shaded/protobuf/g;->r()I

    move-result v6

    invoke-virtual {v5}, Lcom/google/crypto/tink/shaded/protobuf/g;->size()I

    move-result v7

    iget-object v5, v5, Lcom/google/crypto/tink/shaded/protobuf/g;->d:[B

    invoke-virtual {p2, v5, v6, v7}, Lcom/google/crypto/tink/shaded/protobuf/j;->v0([BII)V

    :goto_5
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    :cond_2
    move v0, v3

    :goto_6
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v0, v4, :cond_4

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {p2, p0, v2}, Lcom/google/crypto/tink/shaded/protobuf/j;->B0(II)V

    iget v5, p2, Lcom/google/crypto/tink/shaded/protobuf/j;->d:I

    :try_start_3
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    mul-int/lit8 v6, v6, 0x3

    invoke-static {v6}, Lcom/google/crypto/tink/shaded/protobuf/j;->r0(I)I

    move-result v6

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v7

    invoke-static {v7}, Lcom/google/crypto/tink/shaded/protobuf/j;->r0(I)I

    move-result v7
    :try_end_3
    .catch Lcom/google/crypto/tink/shaded/protobuf/s0; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_3 .. :try_end_3} :catch_4

    iget-object v8, p2, Lcom/google/crypto/tink/shaded/protobuf/j;->b:[B

    iget v9, p2, Lcom/google/crypto/tink/shaded/protobuf/j;->c:I

    if-ne v7, v6, :cond_3

    add-int v6, v5, v7

    :try_start_4
    iput v6, p2, Lcom/google/crypto/tink/shaded/protobuf/j;->d:I

    sub-int/2addr v9, v6

    sget-object v10, Lcom/google/crypto/tink/shaded/protobuf/t0;->a:Lcom/google/crypto/tink/shaded/protobuf/U;

    invoke-virtual {v10, v4, v8, v6, v9}, Lcom/google/crypto/tink/shaded/protobuf/U;->Q(Ljava/lang/String;[BII)I

    move-result v6

    iput v5, p2, Lcom/google/crypto/tink/shaded/protobuf/j;->d:I

    sub-int v8, v6, v5

    sub-int/2addr v8, v7

    invoke-virtual {p2, v8}, Lcom/google/crypto/tink/shaded/protobuf/j;->C0(I)V

    iput v6, p2, Lcom/google/crypto/tink/shaded/protobuf/j;->d:I

    goto :goto_9

    :catch_4
    move-exception p0

    goto :goto_7

    :catch_5
    move-exception v6

    goto :goto_8

    :cond_3
    invoke-static {v4}, Lcom/google/crypto/tink/shaded/protobuf/t0;->b(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {p2, v6}, Lcom/google/crypto/tink/shaded/protobuf/j;->C0(I)V

    iget v6, p2, Lcom/google/crypto/tink/shaded/protobuf/j;->d:I

    sub-int/2addr v9, v6

    sget-object v7, Lcom/google/crypto/tink/shaded/protobuf/t0;->a:Lcom/google/crypto/tink/shaded/protobuf/U;

    invoke-virtual {v7, v4, v8, v6, v9}, Lcom/google/crypto/tink/shaded/protobuf/U;->Q(Ljava/lang/String;[BII)I

    move-result v6

    iput v6, p2, Lcom/google/crypto/tink/shaded/protobuf/j;->d:I
    :try_end_4
    .catch Lcom/google/crypto/tink/shaded/protobuf/s0; {:try_start_4 .. :try_end_4} :catch_5
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_9

    :goto_7
    new-instance p1, Lcom/google/crypto/tink/shaded/protobuf/k;

    invoke-direct {p1, p0}, Lcom/google/crypto/tink/shaded/protobuf/k;-><init>(Ljava/lang/IndexOutOfBoundsException;)V

    throw p1

    :goto_8
    iput v5, p2, Lcom/google/crypto/tink/shaded/protobuf/j;->d:I

    sget-object v5, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    sget-object v7, Lcom/google/crypto/tink/shaded/protobuf/j;->e:Ljava/util/logging/Logger;

    invoke-virtual {v7, v5, v1, v6}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    sget-object v5, Lcom/google/crypto/tink/shaded/protobuf/E;->a:Ljava/nio/charset/Charset;

    invoke-virtual {v4, v5}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v4

    :try_start_5
    array-length v5, v4

    invoke-virtual {p2, v5}, Lcom/google/crypto/tink/shaded/protobuf/j;->C0(I)V

    array-length v5, v4

    invoke-virtual {p2, v4, v3, v5}, Lcom/google/crypto/tink/shaded/protobuf/j;->v0([BII)V
    :try_end_5
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_5 .. :try_end_5} :catch_7
    .catch Lcom/google/crypto/tink/shaded/protobuf/k; {:try_start_5 .. :try_end_5} :catch_6

    :goto_9
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :catch_6
    move-exception p0

    goto :goto_a

    :catch_7
    move-exception p0

    goto :goto_b

    :goto_a
    throw p0

    :goto_b
    new-instance p1, Lcom/google/crypto/tink/shaded/protobuf/k;

    invoke-direct {p1, p0}, Lcom/google/crypto/tink/shaded/protobuf/k;-><init>(Ljava/lang/IndexOutOfBoundsException;)V

    throw p1

    :cond_4
    return-void
.end method

.method public static T(ILjava/util/List;Lcom/google/crypto/tink/shaded/protobuf/l;Z)V
    .locals 2

    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object p2, p2, Lcom/google/crypto/tink/shaded/protobuf/l;->a:Ljava/lang/Object;

    check-cast p2, Lcom/google/crypto/tink/shaded/protobuf/j;

    const/4 v0, 0x0

    if-eqz p3, :cond_1

    const/4 p3, 0x2

    invoke-virtual {p2, p0, p3}, Lcom/google/crypto/tink/shaded/protobuf/j;->B0(II)V

    move p0, v0

    move p3, p0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge p0, v1, :cond_0

    invoke-interface {p1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Lcom/google/crypto/tink/shaded/protobuf/j;->r0(I)I

    move-result v1

    add-int/2addr p3, v1

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p2, p3}, Lcom/google/crypto/tink/shaded/protobuf/j;->C0(I)V

    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p0

    if-ge v0, p0, :cond_2

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-virtual {p2, p0}, Lcom/google/crypto/tink/shaded/protobuf/j;->C0(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    move p3, v0

    :goto_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge p3, v1, :cond_2

    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p2, p0, v0}, Lcom/google/crypto/tink/shaded/protobuf/j;->B0(II)V

    invoke-virtual {p2, v1}, Lcom/google/crypto/tink/shaded/protobuf/j;->C0(I)V

    add-int/lit8 p3, p3, 0x1

    goto :goto_2

    :cond_2
    return-void
.end method

.method public static U(ILjava/util/List;Lcom/google/crypto/tink/shaded/protobuf/l;Z)V
    .locals 3

    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object p2, p2, Lcom/google/crypto/tink/shaded/protobuf/l;->a:Ljava/lang/Object;

    check-cast p2, Lcom/google/crypto/tink/shaded/protobuf/j;

    const/4 v0, 0x0

    if-eqz p3, :cond_1

    const/4 p3, 0x2

    invoke-virtual {p2, p0, p3}, Lcom/google/crypto/tink/shaded/protobuf/j;->B0(II)V

    move p0, v0

    move p3, p0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge p0, v1, :cond_0

    invoke-interface {p1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/google/crypto/tink/shaded/protobuf/j;->t0(J)I

    move-result v1

    add-int/2addr p3, v1

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p2, p3}, Lcom/google/crypto/tink/shaded/protobuf/j;->C0(I)V

    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p0

    if-ge v0, p0, :cond_2

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {p2, v1, v2}, Lcom/google/crypto/tink/shaded/protobuf/j;->E0(J)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    :goto_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p3

    if-ge v0, p3, :cond_2

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Long;

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {p2, p0, v1, v2}, Lcom/google/crypto/tink/shaded/protobuf/j;->D0(IJ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    return-void
.end method

.method public static a(ILjava/util/List;)I
    .locals 0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-static {p0}, Lcom/google/crypto/tink/shaded/protobuf/j;->X(I)I

    move-result p0

    mul-int/2addr p0, p1

    return p0
.end method

.method public static b(Ljava/util/List;)I
    .locals 0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public static c(ILjava/util/List;)I
    .locals 2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-static {p0}, Lcom/google/crypto/tink/shaded/protobuf/j;->p0(I)I

    move-result p0

    mul-int/2addr p0, v0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/h;

    invoke-static {v0}, Lcom/google/crypto/tink/shaded/protobuf/j;->Z(Lcom/google/crypto/tink/shaded/protobuf/h;)I

    move-result v0

    add-int/2addr p0, v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return p0
.end method

.method public static d(ILjava/util/List;)I
    .locals 1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-static {p1}, Lcom/google/crypto/tink/shaded/protobuf/g0;->e(Ljava/util/List;)I

    move-result p1

    invoke-static {p0}, Lcom/google/crypto/tink/shaded/protobuf/j;->p0(I)I

    move-result p0

    mul-int/2addr p0, v0

    add-int/2addr p0, p1

    return p0
.end method

.method public static e(Ljava/util/List;)I
    .locals 4

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    instance-of v2, p0, Lcom/google/crypto/tink/shaded/protobuf/A;

    if-eqz v2, :cond_2

    check-cast p0, Lcom/google/crypto/tink/shaded/protobuf/A;

    if-gtz v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0, v1}, Lcom/google/crypto/tink/shaded/protobuf/A;->l(I)V

    const/4 p0, 0x0

    throw p0

    :cond_2
    move v2, v1

    :goto_0
    if-ge v1, v0, :cond_3

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Lcom/google/crypto/tink/shaded/protobuf/j;->h0(I)I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    move v1, v2

    :goto_1
    return v1
.end method

.method public static f(ILjava/util/List;)I
    .locals 0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-static {p0}, Lcom/google/crypto/tink/shaded/protobuf/j;->c0(I)I

    move-result p0

    mul-int/2addr p0, p1

    return p0
.end method

.method public static g(Ljava/util/List;)I
    .locals 0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    mul-int/lit8 p0, p0, 0x4

    return p0
.end method

.method public static h(ILjava/util/List;)I
    .locals 0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-static {p0}, Lcom/google/crypto/tink/shaded/protobuf/j;->d0(I)I

    move-result p0

    mul-int/2addr p0, p1

    return p0
.end method

.method public static i(Ljava/util/List;)I
    .locals 0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    mul-int/lit8 p0, p0, 0x8

    return p0
.end method

.method public static j(ILjava/util/List;Lcom/google/crypto/tink/shaded/protobuf/f0;)I
    .locals 4

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    move v2, v1

    :goto_0
    if-ge v1, v0, :cond_1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/crypto/tink/shaded/protobuf/a;

    invoke-static {p0, v3, p2}, Lcom/google/crypto/tink/shaded/protobuf/j;->f0(ILcom/google/crypto/tink/shaded/protobuf/a;Lcom/google/crypto/tink/shaded/protobuf/f0;)I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method

.method public static k(ILjava/util/List;)I
    .locals 1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-static {p1}, Lcom/google/crypto/tink/shaded/protobuf/g0;->l(Ljava/util/List;)I

    move-result p1

    invoke-static {p0}, Lcom/google/crypto/tink/shaded/protobuf/j;->p0(I)I

    move-result p0

    mul-int/2addr p0, v0

    add-int/2addr p0, p1

    return p0
.end method

.method public static l(Ljava/util/List;)I
    .locals 4

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    instance-of v2, p0, Lcom/google/crypto/tink/shaded/protobuf/A;

    if-eqz v2, :cond_2

    check-cast p0, Lcom/google/crypto/tink/shaded/protobuf/A;

    if-gtz v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0, v1}, Lcom/google/crypto/tink/shaded/protobuf/A;->l(I)V

    const/4 p0, 0x0

    throw p0

    :cond_2
    move v2, v1

    :goto_0
    if-ge v1, v0, :cond_3

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Lcom/google/crypto/tink/shaded/protobuf/j;->h0(I)I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    move v1, v2

    :goto_1
    return v1
.end method

.method public static m(ILjava/util/List;)I
    .locals 1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-static {p1}, Lcom/google/crypto/tink/shaded/protobuf/g0;->n(Ljava/util/List;)I

    move-result v0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-static {p0}, Lcom/google/crypto/tink/shaded/protobuf/j;->p0(I)I

    move-result p0

    mul-int/2addr p0, p1

    add-int/2addr p0, v0

    return p0
.end method

.method public static n(Ljava/util/List;)I
    .locals 5

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    instance-of v2, p0, Lcom/google/crypto/tink/shaded/protobuf/N;

    if-eqz v2, :cond_2

    check-cast p0, Lcom/google/crypto/tink/shaded/protobuf/N;

    if-gtz v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0, v1}, Lcom/google/crypto/tink/shaded/protobuf/N;->l(I)V

    const/4 p0, 0x0

    throw p0

    :cond_2
    move v2, v1

    :goto_0
    if-ge v1, v0, :cond_3

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/google/crypto/tink/shaded/protobuf/j;->t0(J)I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    move v1, v2

    :goto_1
    return v1
.end method

.method public static o(ILjava/lang/Object;Lcom/google/crypto/tink/shaded/protobuf/f0;)I
    .locals 3

    check-cast p1, Lcom/google/crypto/tink/shaded/protobuf/a;

    invoke-static {p0}, Lcom/google/crypto/tink/shaded/protobuf/j;->p0(I)I

    move-result p0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object v0, p1

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/z;

    iget v1, v0, Lcom/google/crypto/tink/shaded/protobuf/z;->memoizedSerializedSize:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    invoke-interface {p2, p1}, Lcom/google/crypto/tink/shaded/protobuf/f0;->h(Lcom/google/crypto/tink/shaded/protobuf/a;)I

    move-result v1

    iput v1, v0, Lcom/google/crypto/tink/shaded/protobuf/z;->memoizedSerializedSize:I

    :cond_0
    invoke-static {v1}, Lcom/google/crypto/tink/shaded/protobuf/j;->r0(I)I

    move-result p1

    add-int/2addr p1, v1

    add-int/2addr p1, p0

    return p1
.end method

.method public static p(ILjava/util/List;Lcom/google/crypto/tink/shaded/protobuf/f0;)I
    .locals 6

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-static {p0}, Lcom/google/crypto/tink/shaded/protobuf/j;->p0(I)I

    move-result p0

    mul-int/2addr p0, v0

    :goto_0
    if-ge v1, v0, :cond_2

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/crypto/tink/shaded/protobuf/a;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object v3, v2

    check-cast v3, Lcom/google/crypto/tink/shaded/protobuf/z;

    iget v4, v3, Lcom/google/crypto/tink/shaded/protobuf/z;->memoizedSerializedSize:I

    const/4 v5, -0x1

    if-ne v4, v5, :cond_1

    invoke-interface {p2, v2}, Lcom/google/crypto/tink/shaded/protobuf/f0;->h(Lcom/google/crypto/tink/shaded/protobuf/a;)I

    move-result v4

    iput v4, v3, Lcom/google/crypto/tink/shaded/protobuf/z;->memoizedSerializedSize:I

    :cond_1
    invoke-static {v4}, Lcom/google/crypto/tink/shaded/protobuf/j;->r0(I)I

    move-result v2

    add-int/2addr v2, v4

    add-int/2addr p0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return p0
.end method

.method public static q(ILjava/util/List;)I
    .locals 1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-static {p1}, Lcom/google/crypto/tink/shaded/protobuf/g0;->r(Ljava/util/List;)I

    move-result p1

    invoke-static {p0}, Lcom/google/crypto/tink/shaded/protobuf/j;->p0(I)I

    move-result p0

    mul-int/2addr p0, v0

    add-int/2addr p0, p1

    return p0
.end method

.method public static r(Ljava/util/List;)I
    .locals 5

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    instance-of v2, p0, Lcom/google/crypto/tink/shaded/protobuf/A;

    if-eqz v2, :cond_2

    check-cast p0, Lcom/google/crypto/tink/shaded/protobuf/A;

    if-gtz v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0, v1}, Lcom/google/crypto/tink/shaded/protobuf/A;->l(I)V

    const/4 p0, 0x0

    throw p0

    :cond_2
    move v2, v1

    :goto_0
    if-ge v1, v0, :cond_3

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    shl-int/lit8 v4, v3, 0x1

    shr-int/lit8 v3, v3, 0x1f

    xor-int/2addr v3, v4

    invoke-static {v3}, Lcom/google/crypto/tink/shaded/protobuf/j;->r0(I)I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    move v1, v2

    :goto_1
    return v1
.end method

.method public static s(ILjava/util/List;)I
    .locals 1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-static {p1}, Lcom/google/crypto/tink/shaded/protobuf/g0;->t(Ljava/util/List;)I

    move-result p1

    invoke-static {p0}, Lcom/google/crypto/tink/shaded/protobuf/j;->p0(I)I

    move-result p0

    mul-int/2addr p0, v0

    add-int/2addr p0, p1

    return p0
.end method

.method public static t(Ljava/util/List;)I
    .locals 9

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    instance-of v2, p0, Lcom/google/crypto/tink/shaded/protobuf/N;

    const/16 v3, 0x3f

    const/4 v4, 0x1

    if-eqz v2, :cond_2

    check-cast p0, Lcom/google/crypto/tink/shaded/protobuf/N;

    if-gtz v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0, v1}, Lcom/google/crypto/tink/shaded/protobuf/N;->l(I)V

    const/4 p0, 0x0

    throw p0

    :cond_2
    move v2, v1

    :goto_0
    if-ge v1, v0, :cond_3

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    shl-long v7, v5, v4

    shr-long/2addr v5, v3

    xor-long/2addr v5, v7

    invoke-static {v5, v6}, Lcom/google/crypto/tink/shaded/protobuf/j;->t0(J)I

    move-result v5

    add-int/2addr v2, v5

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    move v1, v2

    :goto_1
    return v1
.end method

.method public static u(ILjava/util/List;)I
    .locals 4

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-static {p0}, Lcom/google/crypto/tink/shaded/protobuf/j;->p0(I)I

    move-result p0

    mul-int/2addr p0, v0

    instance-of v2, p1, Lcom/google/crypto/tink/shaded/protobuf/J;

    if-eqz v2, :cond_2

    check-cast p1, Lcom/google/crypto/tink/shaded/protobuf/J;

    :goto_0
    if-ge v1, v0, :cond_4

    invoke-interface {p1, v1}, Lcom/google/crypto/tink/shaded/protobuf/J;->e(I)Ljava/lang/Object;

    move-result-object v2

    instance-of v3, v2, Lcom/google/crypto/tink/shaded/protobuf/h;

    if-eqz v3, :cond_1

    check-cast v2, Lcom/google/crypto/tink/shaded/protobuf/h;

    invoke-static {v2}, Lcom/google/crypto/tink/shaded/protobuf/j;->Z(Lcom/google/crypto/tink/shaded/protobuf/h;)I

    move-result v2

    :goto_1
    add-int/2addr v2, p0

    move p0, v2

    goto :goto_2

    :cond_1
    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lcom/google/crypto/tink/shaded/protobuf/j;->o0(Ljava/lang/String;)I

    move-result v2

    goto :goto_1

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_3
    if-ge v1, v0, :cond_4

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    instance-of v3, v2, Lcom/google/crypto/tink/shaded/protobuf/h;

    if-eqz v3, :cond_3

    check-cast v2, Lcom/google/crypto/tink/shaded/protobuf/h;

    invoke-static {v2}, Lcom/google/crypto/tink/shaded/protobuf/j;->Z(Lcom/google/crypto/tink/shaded/protobuf/h;)I

    move-result v2

    :goto_4
    add-int/2addr v2, p0

    move p0, v2

    goto :goto_5

    :cond_3
    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lcom/google/crypto/tink/shaded/protobuf/j;->o0(Ljava/lang/String;)I

    move-result v2

    goto :goto_4

    :goto_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_4
    return p0
.end method

.method public static v(ILjava/util/List;)I
    .locals 1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-static {p1}, Lcom/google/crypto/tink/shaded/protobuf/g0;->w(Ljava/util/List;)I

    move-result p1

    invoke-static {p0}, Lcom/google/crypto/tink/shaded/protobuf/j;->p0(I)I

    move-result p0

    mul-int/2addr p0, v0

    add-int/2addr p0, p1

    return p0
.end method

.method public static w(Ljava/util/List;)I
    .locals 4

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    instance-of v2, p0, Lcom/google/crypto/tink/shaded/protobuf/A;

    if-eqz v2, :cond_2

    check-cast p0, Lcom/google/crypto/tink/shaded/protobuf/A;

    if-gtz v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0, v1}, Lcom/google/crypto/tink/shaded/protobuf/A;->l(I)V

    const/4 p0, 0x0

    throw p0

    :cond_2
    move v2, v1

    :goto_0
    if-ge v1, v0, :cond_3

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Lcom/google/crypto/tink/shaded/protobuf/j;->r0(I)I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    move v1, v2

    :goto_1
    return v1
.end method

.method public static x(ILjava/util/List;)I
    .locals 1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-static {p1}, Lcom/google/crypto/tink/shaded/protobuf/g0;->y(Ljava/util/List;)I

    move-result p1

    invoke-static {p0}, Lcom/google/crypto/tink/shaded/protobuf/j;->p0(I)I

    move-result p0

    mul-int/2addr p0, v0

    add-int/2addr p0, p1

    return p0
.end method

.method public static y(Ljava/util/List;)I
    .locals 5

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    instance-of v2, p0, Lcom/google/crypto/tink/shaded/protobuf/N;

    if-eqz v2, :cond_2

    check-cast p0, Lcom/google/crypto/tink/shaded/protobuf/N;

    if-gtz v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0, v1}, Lcom/google/crypto/tink/shaded/protobuf/N;->l(I)V

    const/4 p0, 0x0

    throw p0

    :cond_2
    move v2, v1

    :goto_0
    if-ge v1, v0, :cond_3

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/google/crypto/tink/shaded/protobuf/j;->t0(J)I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    move v1, v2

    :goto_1
    return v1
.end method

.method public static z(ILjava/util/List;Ljava/lang/Object;Lcom/google/crypto/tink/shaded/protobuf/i0;)Ljava/lang/Object;
    .locals 0

    return-object p2
.end method
