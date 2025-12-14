.class public final Lcom/google/protobuf/UnknownFieldSetLite;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final f:Lcom/google/protobuf/UnknownFieldSetLite;


# instance fields
.field public a:I

.field public b:[I

.field public c:[Ljava/lang/Object;

.field public d:I

.field public e:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/google/protobuf/UnknownFieldSetLite;

    const/4 v1, 0x0

    new-array v2, v1, [I

    new-array v3, v1, [Ljava/lang/Object;

    invoke-direct {v0, v1, v2, v3, v1}, Lcom/google/protobuf/UnknownFieldSetLite;-><init>(I[I[Ljava/lang/Object;Z)V

    sput-object v0, Lcom/google/protobuf/UnknownFieldSetLite;->f:Lcom/google/protobuf/UnknownFieldSetLite;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    const/16 v0, 0x8

    new-array v1, v0, [I

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {p0, v3, v1, v0, v2}, Lcom/google/protobuf/UnknownFieldSetLite;-><init>(I[I[Ljava/lang/Object;Z)V

    return-void
.end method

.method public constructor <init>(I[I[Ljava/lang/Object;Z)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/protobuf/UnknownFieldSetLite;->d:I

    iput p1, p0, Lcom/google/protobuf/UnknownFieldSetLite;->a:I

    iput-object p2, p0, Lcom/google/protobuf/UnknownFieldSetLite;->b:[I

    iput-object p3, p0, Lcom/google/protobuf/UnknownFieldSetLite;->c:[Ljava/lang/Object;

    iput-boolean p4, p0, Lcom/google/protobuf/UnknownFieldSetLite;->e:Z

    return-void
.end method

.method public static e(Lcom/google/protobuf/UnknownFieldSetLite;Lcom/google/protobuf/UnknownFieldSetLite;)Lcom/google/protobuf/UnknownFieldSetLite;
    .locals 6

    iget v0, p0, Lcom/google/protobuf/UnknownFieldSetLite;->a:I

    iget v1, p1, Lcom/google/protobuf/UnknownFieldSetLite;->a:I

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/google/protobuf/UnknownFieldSetLite;->b:[I

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v1

    iget-object v2, p1, Lcom/google/protobuf/UnknownFieldSetLite;->b:[I

    iget v3, p0, Lcom/google/protobuf/UnknownFieldSetLite;->a:I

    iget v4, p1, Lcom/google/protobuf/UnknownFieldSetLite;->a:I

    const/4 v5, 0x0

    invoke-static {v2, v5, v1, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v2, p0, Lcom/google/protobuf/UnknownFieldSetLite;->c:[Ljava/lang/Object;

    invoke-static {v2, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    iget-object v3, p1, Lcom/google/protobuf/UnknownFieldSetLite;->c:[Ljava/lang/Object;

    iget p0, p0, Lcom/google/protobuf/UnknownFieldSetLite;->a:I

    iget p1, p1, Lcom/google/protobuf/UnknownFieldSetLite;->a:I

    invoke-static {v3, v5, v2, p0, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance p0, Lcom/google/protobuf/UnknownFieldSetLite;

    const/4 p1, 0x1

    invoke-direct {p0, v0, v1, v2, p1}, Lcom/google/protobuf/UnknownFieldSetLite;-><init>(I[I[Ljava/lang/Object;Z)V

    return-object p0
.end method

.method public static g(ILjava/lang/Object;Lcom/google/protobuf/Writer;)V
    .locals 2

    ushr-int/lit8 v0, p0, 0x3

    and-int/lit8 p0, p0, 0x7

    if-eqz p0, :cond_5

    const/4 v1, 0x1

    if-eq p0, v1, :cond_4

    const/4 v1, 0x2

    if-eq p0, v1, :cond_3

    const/4 v1, 0x3

    if-eq p0, v1, :cond_1

    const/4 v1, 0x5

    if-ne p0, v1, :cond_0

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-interface {p2, v0, p0}, Lcom/google/protobuf/Writer;->d(II)V

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->d()Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p0

    :cond_1
    invoke-interface {p2}, Lcom/google/protobuf/Writer;->y()Lcom/google/protobuf/Writer$FieldOrder;

    move-result-object p0

    sget-object v1, Lcom/google/protobuf/Writer$FieldOrder;->ASCENDING:Lcom/google/protobuf/Writer$FieldOrder;

    if-ne p0, v1, :cond_2

    invoke-interface {p2, v0}, Lcom/google/protobuf/Writer;->E(I)V

    check-cast p1, Lcom/google/protobuf/UnknownFieldSetLite;

    invoke-virtual {p1, p2}, Lcom/google/protobuf/UnknownFieldSetLite;->h(Lcom/google/protobuf/Writer;)V

    invoke-interface {p2, v0}, Lcom/google/protobuf/Writer;->J(I)V

    goto :goto_0

    :cond_2
    invoke-interface {p2, v0}, Lcom/google/protobuf/Writer;->J(I)V

    check-cast p1, Lcom/google/protobuf/UnknownFieldSetLite;

    invoke-virtual {p1, p2}, Lcom/google/protobuf/UnknownFieldSetLite;->h(Lcom/google/protobuf/Writer;)V

    invoke-interface {p2, v0}, Lcom/google/protobuf/Writer;->E(I)V

    goto :goto_0

    :cond_3
    check-cast p1, Lcom/google/protobuf/ByteString;

    invoke-interface {p2, v0, p1}, Lcom/google/protobuf/Writer;->j(ILcom/google/protobuf/ByteString;)V

    goto :goto_0

    :cond_4
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    invoke-interface {p2, v0, p0, p1}, Lcom/google/protobuf/Writer;->x(IJ)V

    goto :goto_0

    :cond_5
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    invoke-interface {p2, v0, p0, p1}, Lcom/google/protobuf/Writer;->B(IJ)V

    :goto_0
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    iget-boolean p0, p0, Lcom/google/protobuf/UnknownFieldSetLite;->e:Z

    if-eqz p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public final b(I)V
    .locals 3

    iget-object v0, p0, Lcom/google/protobuf/UnknownFieldSetLite;->b:[I

    array-length v1, v0

    if-le p1, v1, :cond_2

    iget v1, p0, Lcom/google/protobuf/UnknownFieldSetLite;->a:I

    div-int/lit8 v2, v1, 0x2

    add-int/2addr v2, v1

    if-ge v2, p1, :cond_0

    goto :goto_0

    :cond_0
    move p1, v2

    :goto_0
    const/16 v1, 0x8

    if-ge p1, v1, :cond_1

    move p1, v1

    :cond_1
    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/UnknownFieldSetLite;->b:[I

    iget-object v0, p0, Lcom/google/protobuf/UnknownFieldSetLite;->c:[Ljava/lang/Object;

    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/google/protobuf/UnknownFieldSetLite;->c:[Ljava/lang/Object;

    :cond_2
    return-void
.end method

.method public final c()I
    .locals 6

    iget v0, p0, Lcom/google/protobuf/UnknownFieldSetLite;->d:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget v2, p0, Lcom/google/protobuf/UnknownFieldSetLite;->a:I

    if-ge v0, v2, :cond_6

    iget-object v2, p0, Lcom/google/protobuf/UnknownFieldSetLite;->b:[I

    aget v2, v2, v0

    ushr-int/lit8 v3, v2, 0x3

    and-int/lit8 v2, v2, 0x7

    if-eqz v2, :cond_5

    const/4 v4, 0x1

    if-eq v2, v4, :cond_4

    const/4 v4, 0x2

    if-eq v2, v4, :cond_3

    const/4 v5, 0x3

    if-eq v2, v5, :cond_2

    const/4 v4, 0x5

    if-ne v2, v4, :cond_1

    iget-object v2, p0, Lcom/google/protobuf/UnknownFieldSetLite;->c:[Ljava/lang/Object;

    aget-object v2, v2, v0

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v3}, Lcom/google/protobuf/CodedOutputStream;->X(I)I

    move-result v2

    :goto_1
    add-int/2addr v2, v1

    move v1, v2

    goto :goto_2

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->d()Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw p0

    :cond_2
    invoke-static {v3}, Lcom/google/protobuf/CodedOutputStream;->m0(I)I

    move-result v2

    mul-int/2addr v2, v4

    iget-object v3, p0, Lcom/google/protobuf/UnknownFieldSetLite;->c:[Ljava/lang/Object;

    aget-object v3, v3, v0

    check-cast v3, Lcom/google/protobuf/UnknownFieldSetLite;

    invoke-virtual {v3}, Lcom/google/protobuf/UnknownFieldSetLite;->c()I

    move-result v3

    add-int/2addr v3, v2

    add-int/2addr v3, v1

    move v1, v3

    goto :goto_2

    :cond_3
    iget-object v2, p0, Lcom/google/protobuf/UnknownFieldSetLite;->c:[Ljava/lang/Object;

    aget-object v2, v2, v0

    check-cast v2, Lcom/google/protobuf/ByteString;

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->T(ILcom/google/protobuf/ByteString;)I

    move-result v2

    goto :goto_1

    :cond_4
    iget-object v2, p0, Lcom/google/protobuf/UnknownFieldSetLite;->c:[Ljava/lang/Object;

    aget-object v2, v2, v0

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v3}, Lcom/google/protobuf/CodedOutputStream;->Y(I)I

    move-result v2

    goto :goto_1

    :cond_5
    iget-object v2, p0, Lcom/google/protobuf/UnknownFieldSetLite;->c:[Ljava/lang/Object;

    aget-object v2, v2, v0

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v3, v4, v5}, Lcom/google/protobuf/CodedOutputStream;->p0(IJ)I

    move-result v2

    goto :goto_1

    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_6
    iput v1, p0, Lcom/google/protobuf/UnknownFieldSetLite;->d:I

    return v1
.end method

.method public final d(ILcom/google/protobuf/CodedInputStream;)Z
    .locals 6

    invoke-virtual {p0}, Lcom/google/protobuf/UnknownFieldSetLite;->a()V

    ushr-int/lit8 v0, p1, 0x3

    and-int/lit8 v1, p1, 0x7

    const/4 v2, 0x1

    if-eqz v1, :cond_8

    if-eq v1, v2, :cond_7

    const/4 v3, 0x2

    if-eq v1, v3, :cond_6

    const/4 v3, 0x3

    const/4 v4, 0x4

    if-eq v1, v3, :cond_3

    if-eq v1, v4, :cond_1

    const/4 v0, 0x5

    if-ne v1, v0, :cond_0

    invoke-virtual {p2}, Lcom/google/protobuf/CodedInputStream;->o()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/UnknownFieldSetLite;->f(ILjava/lang/Object;)V

    return v2

    :cond_0
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->d()Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p0

    throw p0

    :cond_1
    iget p0, p2, Lcom/google/protobuf/CodedInputStream;->b:I

    const/4 p1, 0x0

    if-nez p0, :cond_2

    invoke-virtual {p2, p1}, Lcom/google/protobuf/CodedInputStream;->a(I)V

    :cond_2
    return p1

    :cond_3
    new-instance v1, Lcom/google/protobuf/UnknownFieldSetLite;

    invoke-direct {v1}, Lcom/google/protobuf/UnknownFieldSetLite;-><init>()V

    :cond_4
    invoke-virtual {p2}, Lcom/google/protobuf/CodedInputStream;->B()I

    move-result v5

    if-eqz v5, :cond_5

    invoke-virtual {v1, v5, p2}, Lcom/google/protobuf/UnknownFieldSetLite;->d(ILcom/google/protobuf/CodedInputStream;)Z

    move-result v5

    if-nez v5, :cond_4

    :cond_5
    shl-int/2addr v0, v3

    or-int/2addr v0, v4

    invoke-virtual {p2, v0}, Lcom/google/protobuf/CodedInputStream;->a(I)V

    invoke-virtual {p0, p1, v1}, Lcom/google/protobuf/UnknownFieldSetLite;->f(ILjava/lang/Object;)V

    return v2

    :cond_6
    invoke-virtual {p2}, Lcom/google/protobuf/CodedInputStream;->l()Lcom/google/protobuf/ByteString;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/UnknownFieldSetLite;->f(ILjava/lang/Object;)V

    return v2

    :cond_7
    invoke-virtual {p2}, Lcom/google/protobuf/CodedInputStream;->p()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/UnknownFieldSetLite;->f(ILjava/lang/Object;)V

    return v2

    :cond_8
    invoke-virtual {p2}, Lcom/google/protobuf/CodedInputStream;->s()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/UnknownFieldSetLite;->f(ILjava/lang/Object;)V

    return v2
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 8

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    :cond_1
    instance-of v2, p1, Lcom/google/protobuf/UnknownFieldSetLite;

    if-nez v2, :cond_2

    return v1

    :cond_2
    check-cast p1, Lcom/google/protobuf/UnknownFieldSetLite;

    iget v2, p0, Lcom/google/protobuf/UnknownFieldSetLite;->a:I

    iget v3, p1, Lcom/google/protobuf/UnknownFieldSetLite;->a:I

    if-ne v2, v3, :cond_7

    iget-object v3, p0, Lcom/google/protobuf/UnknownFieldSetLite;->b:[I

    iget-object v4, p1, Lcom/google/protobuf/UnknownFieldSetLite;->b:[I

    move v5, v1

    :goto_0
    if-ge v5, v2, :cond_4

    aget v6, v3, v5

    aget v7, v4, v5

    if-eq v6, v7, :cond_3

    goto :goto_2

    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_4
    iget-object v2, p0, Lcom/google/protobuf/UnknownFieldSetLite;->c:[Ljava/lang/Object;

    iget-object p1, p1, Lcom/google/protobuf/UnknownFieldSetLite;->c:[Ljava/lang/Object;

    iget p0, p0, Lcom/google/protobuf/UnknownFieldSetLite;->a:I

    move v3, v1

    :goto_1
    if-ge v3, p0, :cond_6

    aget-object v4, v2, v3

    aget-object v5, p1, v3

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    goto :goto_2

    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_6
    return v0

    :cond_7
    :goto_2
    return v1
.end method

.method public final f(ILjava/lang/Object;)V
    .locals 2

    invoke-virtual {p0}, Lcom/google/protobuf/UnknownFieldSetLite;->a()V

    iget v0, p0, Lcom/google/protobuf/UnknownFieldSetLite;->a:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/protobuf/UnknownFieldSetLite;->b(I)V

    iget-object v0, p0, Lcom/google/protobuf/UnknownFieldSetLite;->b:[I

    iget v1, p0, Lcom/google/protobuf/UnknownFieldSetLite;->a:I

    aput p1, v0, v1

    iget-object p1, p0, Lcom/google/protobuf/UnknownFieldSetLite;->c:[Ljava/lang/Object;

    aput-object p2, p1, v1

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/protobuf/UnknownFieldSetLite;->a:I

    return-void
.end method

.method public final h(Lcom/google/protobuf/Writer;)V
    .locals 3

    iget v0, p0, Lcom/google/protobuf/UnknownFieldSetLite;->a:I

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {p1}, Lcom/google/protobuf/Writer;->y()Lcom/google/protobuf/Writer$FieldOrder;

    move-result-object v0

    sget-object v1, Lcom/google/protobuf/Writer$FieldOrder;->ASCENDING:Lcom/google/protobuf/Writer$FieldOrder;

    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcom/google/protobuf/UnknownFieldSetLite;->a:I

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Lcom/google/protobuf/UnknownFieldSetLite;->b:[I

    aget v1, v1, v0

    iget-object v2, p0, Lcom/google/protobuf/UnknownFieldSetLite;->c:[Ljava/lang/Object;

    aget-object v2, v2, v0

    invoke-static {v1, v2, p1}, Lcom/google/protobuf/UnknownFieldSetLite;->g(ILjava/lang/Object;Lcom/google/protobuf/Writer;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/google/protobuf/UnknownFieldSetLite;->a:I

    add-int/lit8 v0, v0, -0x1

    :goto_1
    if-ltz v0, :cond_2

    iget-object v1, p0, Lcom/google/protobuf/UnknownFieldSetLite;->b:[I

    aget v1, v1, v0

    iget-object v2, p0, Lcom/google/protobuf/UnknownFieldSetLite;->c:[Ljava/lang/Object;

    aget-object v2, v2, v0

    invoke-static {v1, v2, p1}, Lcom/google/protobuf/UnknownFieldSetLite;->g(ILjava/lang/Object;Lcom/google/protobuf/Writer;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method public final hashCode()I
    .locals 8

    iget v0, p0, Lcom/google/protobuf/UnknownFieldSetLite;->a:I

    const/16 v1, 0x20f

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v2, p0, Lcom/google/protobuf/UnknownFieldSetLite;->b:[I

    const/4 v3, 0x0

    const/16 v4, 0x11

    move v5, v3

    move v6, v4

    :goto_0
    if-ge v5, v0, :cond_0

    mul-int/lit8 v6, v6, 0x1f

    aget v7, v2, v5

    add-int/2addr v6, v7

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_0
    add-int/2addr v1, v6

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lcom/google/protobuf/UnknownFieldSetLite;->c:[Ljava/lang/Object;

    iget p0, p0, Lcom/google/protobuf/UnknownFieldSetLite;->a:I

    :goto_1
    if-ge v3, p0, :cond_1

    mul-int/lit8 v4, v4, 0x1f

    aget-object v2, v0, v3

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v4, v2

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    add-int/2addr v1, v4

    return v1
.end method
