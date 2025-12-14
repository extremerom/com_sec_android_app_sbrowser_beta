.class public Lorg/chromium/mojo/bindings/Decoder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/mojo/bindings/Decoder$Validator;
    }
.end annotation

.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# instance fields
.field private final mBaseOffset:I

.field private final mMessage:Lorg/chromium/mojo/bindings/Message;

.field private final mValidator:Lorg/chromium/mojo/bindings/Decoder$Validator;


# direct methods
.method public constructor <init>(Lorg/chromium/mojo/bindings/Message;)V
    .locals 4

    new-instance v0, Lorg/chromium/mojo/bindings/Decoder$Validator;

    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/Message;->getData()Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/Buffer;->limit()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/Message;->getHandles()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lorg/chromium/mojo/bindings/Decoder$Validator;-><init>(JI)V

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lorg/chromium/mojo/bindings/Decoder;-><init>(Lorg/chromium/mojo/bindings/Message;Lorg/chromium/mojo/bindings/Decoder$Validator;I)V

    return-void
.end method

.method private constructor <init>(Lorg/chromium/mojo/bindings/Message;Lorg/chromium/mojo/bindings/Decoder$Validator;I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/chromium/mojo/bindings/Decoder;->mMessage:Lorg/chromium/mojo/bindings/Message;

    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/Message;->getData()Ljava/nio/ByteBuffer;

    move-result-object p1

    sget-object v0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    iput p3, p0, Lorg/chromium/mojo/bindings/Decoder;->mBaseOffset:I

    iput-object p2, p0, Lorg/chromium/mojo/bindings/Decoder;->mValidator:Lorg/chromium/mojo/bindings/Decoder$Validator;

    return-void
.end method

.method private getDecoderAtPosition(I)Lorg/chromium/mojo/bindings/Decoder;
    .locals 2

    new-instance v0, Lorg/chromium/mojo/bindings/Decoder;

    iget-object v1, p0, Lorg/chromium/mojo/bindings/Decoder;->mMessage:Lorg/chromium/mojo/bindings/Message;

    iget-object p0, p0, Lorg/chromium/mojo/bindings/Decoder;->mValidator:Lorg/chromium/mojo/bindings/Decoder$Validator;

    invoke-direct {v0, v1, p0, p1}, Lorg/chromium/mojo/bindings/Decoder;-><init>(Lorg/chromium/mojo/bindings/Message;Lorg/chromium/mojo/bindings/Decoder$Validator;I)V

    return-object v0
.end method

.method private readDataHeaderAtOffset(IZ)Lorg/chromium/mojo/bindings/DataHeader;
    .locals 1

    invoke-virtual {p0, p1}, Lorg/chromium/mojo/bindings/Decoder;->readInt(I)I

    move-result v0

    add-int/lit8 p1, p1, 0x4

    invoke-virtual {p0, p1}, Lorg/chromium/mojo/bindings/Decoder;->readInt(I)I

    move-result p0

    if-ltz v0, :cond_2

    if-gez p0, :cond_1

    if-eqz p2, :cond_0

    const/4 p1, -0x1

    if-ne p0, p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Lorg/chromium/mojo/bindings/DeserializationException;

    const-string p1, "Negative elements or version. Unsigned integers are not valid for java."

    invoke-direct {p0, p1}, Lorg/chromium/mojo/bindings/DeserializationException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    new-instance p1, Lorg/chromium/mojo/bindings/DataHeader;

    invoke-direct {p1, v0, p0}, Lorg/chromium/mojo/bindings/DataHeader;-><init>(II)V

    return-object p1

    :cond_2
    new-instance p0, Lorg/chromium/mojo/bindings/DeserializationException;

    const-string p1, "Negative size. Unsigned integers are not valid for java."

    invoke-direct {p0, p1}, Lorg/chromium/mojo/bindings/DeserializationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private readDataHeaderForArray(JIZ)Lorg/chromium/mojo/bindings/DataHeader;
    .locals 5

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Decoder;->readDataHeader()Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object p0

    iget v0, p0, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    int-to-long v1, v0

    mul-long/2addr v1, p1

    const-wide/16 v3, 0x8

    add-long/2addr v1, v3

    if-eqz p4, :cond_0

    invoke-static {p1, p2, v0}, Lorg/chromium/mojo/bindings/BindingsHelper;->computeBitfieldSize(JI)I

    move-result p1

    int-to-long p1, p1

    add-long/2addr v1, p1

    :cond_0
    iget p1, p0, Lorg/chromium/mojo/bindings/DataHeader;->size:I

    int-to-long p1, p1

    cmp-long p1, p1, v1

    if-ltz p1, :cond_3

    const/4 p1, -0x1

    if-eq p3, p1, :cond_2

    iget p1, p0, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    if-ne p1, p3, :cond_1

    goto :goto_0

    :cond_1
    new-instance p1, Lorg/chromium/mojo/bindings/DeserializationException;

    const-string p2, "Incorrect array length. Expected: "

    const-string p4, ", but got: "

    invoke-static {p3, p2, p4}, Lt/b;->l(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget p0, p0, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    const-string p3, "."

    invoke-static {p2, p0, p3}, LB/e;->p(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lorg/chromium/mojo/bindings/DeserializationException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    :goto_0
    return-object p0

    :cond_3
    new-instance p0, Lorg/chromium/mojo/bindings/DeserializationException;

    const-string p1, "Array header is incorrect."

    invoke-direct {p0, p1}, Lorg/chromium/mojo/bindings/DeserializationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private readDataHeaderForBooleanArray(IZ)Lorg/chromium/mojo/bindings/DataHeader;
    .locals 3

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Decoder;->readDataHeader()Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object p0

    iget v0, p0, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    add-int/lit8 v1, v0, 0x7

    div-int/lit8 v1, v1, 0x8

    add-int/lit8 v2, v1, 0x8

    if-eqz p2, :cond_0

    add-int/2addr v2, v1

    :cond_0
    iget p2, p0, Lorg/chromium/mojo/bindings/DataHeader;->size:I

    if-lt p2, v2, :cond_3

    const/4 p2, -0x1

    if-eq p1, p2, :cond_2

    if-ne v0, p1, :cond_1

    goto :goto_0

    :cond_1
    new-instance p2, Lorg/chromium/mojo/bindings/DeserializationException;

    const-string v0, "Incorrect array length. Expected: "

    const-string v1, ", but got: "

    invoke-static {p1, v0, v1}, Lt/b;->l(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget p0, p0, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    const-string v0, "."

    invoke-static {p1, p0, v0}, LB/e;->p(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Lorg/chromium/mojo/bindings/DeserializationException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_2
    :goto_0
    return-object p0

    :cond_3
    new-instance p0, Lorg/chromium/mojo/bindings/DeserializationException;

    const-string p1, "Array header is incorrect."

    invoke-direct {p0, p1}, Lorg/chromium/mojo/bindings/DeserializationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private validateBufferSize(II)V
    .locals 0

    iget-object p0, p0, Lorg/chromium/mojo/bindings/Decoder;->mMessage:Lorg/chromium/mojo/bindings/Message;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Message;->getData()Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/nio/Buffer;->limit()I

    move-result p0

    add-int/2addr p1, p2

    if-lt p0, p1, :cond_0

    return-void

    :cond_0
    new-instance p0, Lorg/chromium/mojo/bindings/DeserializationException;

    const-string p1, "Buffer is smaller than expected."

    invoke-direct {p0, p1}, Lorg/chromium/mojo/bindings/DeserializationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public decreaseStackDepth()V
    .locals 0

    iget-object p0, p0, Lorg/chromium/mojo/bindings/Decoder;->mValidator:Lorg/chromium/mojo/bindings/Decoder$Validator;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Decoder$Validator;->decreaseStackDepth()V

    return-void
.end method

.method public increaseStackDepth()V
    .locals 0

    iget-object p0, p0, Lorg/chromium/mojo/bindings/Decoder;->mValidator:Lorg/chromium/mojo/bindings/Decoder$Validator;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Decoder$Validator;->increaseStackDepth()V

    return-void
.end method

.method public readAndValidateDataHeader([Lorg/chromium/mojo/bindings/DataHeader;)Lorg/chromium/mojo/bindings/DataHeader;
    .locals 4

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Decoder;->readDataHeader()Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object p0

    array-length v0, p1

    add-int/lit8 v0, v0, -0x1

    iget v1, p0, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    aget-object v2, p1, v0

    iget v3, v2, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    if-gt v1, v3, :cond_3

    :goto_0
    if-ltz v0, :cond_1

    aget-object v1, p1, v0

    iget v2, p0, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    iget v3, v1, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    if-lt v2, v3, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_1
    if-eqz v1, :cond_2

    iget p1, v1, Lorg/chromium/mojo/bindings/DataHeader;->size:I

    iget v0, p0, Lorg/chromium/mojo/bindings/DataHeader;->size:I

    if-ne p1, v0, :cond_2

    goto :goto_2

    :cond_2
    new-instance p0, Lorg/chromium/mojo/bindings/DeserializationException;

    const-string p1, "Header doesn\'t correspond to any known version."

    invoke-direct {p0, p1}, Lorg/chromium/mojo/bindings/DeserializationException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    iget p1, p0, Lorg/chromium/mojo/bindings/DataHeader;->size:I

    iget v0, v2, Lorg/chromium/mojo/bindings/DataHeader;->size:I

    if-lt p1, v0, :cond_4

    :goto_2
    return-object p0

    :cond_4
    new-instance p0, Lorg/chromium/mojo/bindings/DeserializationException;

    const-string p1, "Message newer than the last known version cannot be shorter than required by the last known version."

    invoke-direct {p0, p1}, Lorg/chromium/mojo/bindings/DeserializationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public readAssociatedInterfaceRequestNotSupported(IZ)Lorg/chromium/mojo/bindings/AssociatedInterfaceRequestNotSupported;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public readAssociatedServiceInterfaceNotSupported(IZ)Lorg/chromium/mojo/bindings/AssociatedInterfaceNotSupported;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public readBoolean(II)Z
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lorg/chromium/mojo/bindings/Decoder;->validateBufferSize(II)V

    invoke-virtual {p0, p1}, Lorg/chromium/mojo/bindings/Decoder;->readByte(I)B

    move-result p0

    shl-int p1, v0, p2

    and-int/2addr p0, p1

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public readBooleans(III)[Z
    .locals 8

    invoke-static {p2}, Lorg/chromium/mojo/bindings/BindingsHelper;->isArrayNullable(I)Z

    move-result p2

    invoke-virtual {p0, p1, p2}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const/4 p1, 0x0

    invoke-direct {p0, p3, p1}, Lorg/chromium/mojo/bindings/Decoder;->readDataHeaderForBooleanArray(IZ)Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object p2

    iget p3, p2, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    add-int/lit8 p3, p3, 0x7

    const/16 v0, 0x8

    div-int/2addr p3, v0

    new-array v1, p3, [B

    iget-object v2, p0, Lorg/chromium/mojo/bindings/Decoder;->mMessage:Lorg/chromium/mojo/bindings/Message;

    invoke-virtual {v2}, Lorg/chromium/mojo/bindings/Message;->getData()Ljava/nio/ByteBuffer;

    move-result-object v2

    iget v3, p0, Lorg/chromium/mojo/bindings/Decoder;->mBaseOffset:I

    add-int/2addr v3, v0

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    iget-object p0, p0, Lorg/chromium/mojo/bindings/Decoder;->mMessage:Lorg/chromium/mojo/bindings/Message;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Message;->getData()Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    iget p0, p2, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    new-array p2, p0, [Z

    move v2, p1

    :goto_0
    if-ge v2, p3, :cond_4

    move v3, p1

    :goto_1
    if-ge v3, v0, :cond_3

    mul-int/lit8 v4, v2, 0x8

    add-int/2addr v4, v3

    if-ge v4, p0, :cond_2

    aget-byte v5, v1, v2

    const/4 v6, 0x1

    shl-int v7, v6, v3

    and-int/2addr v5, v7

    if-eqz v5, :cond_1

    goto :goto_2

    :cond_1
    move v6, p1

    :goto_2
    aput-boolean v6, p2, v4

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    return-object p2
.end method

.method public readByte(I)B
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lorg/chromium/mojo/bindings/Decoder;->validateBufferSize(II)V

    iget-object v0, p0, Lorg/chromium/mojo/bindings/Decoder;->mMessage:Lorg/chromium/mojo/bindings/Message;

    invoke-virtual {v0}, Lorg/chromium/mojo/bindings/Message;->getData()Ljava/nio/ByteBuffer;

    move-result-object v0

    iget p0, p0, Lorg/chromium/mojo/bindings/Decoder;->mBaseOffset:I

    add-int/2addr p0, p1

    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result p0

    return p0
.end method

.method public readBytes(III)[B
    .locals 1

    invoke-static {p2}, Lorg/chromium/mojo/bindings/BindingsHelper;->isArrayNullable(I)Z

    move-result p2

    invoke-virtual {p0, p1, p2}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-wide/16 p1, 0x1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/chromium/mojo/bindings/Decoder;->readDataHeaderForArray(JIZ)Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object p1

    iget p1, p1, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    new-array p1, p1, [B

    iget-object p2, p0, Lorg/chromium/mojo/bindings/Decoder;->mMessage:Lorg/chromium/mojo/bindings/Message;

    invoke-virtual {p2}, Lorg/chromium/mojo/bindings/Message;->getData()Ljava/nio/ByteBuffer;

    move-result-object p2

    iget p3, p0, Lorg/chromium/mojo/bindings/Decoder;->mBaseOffset:I

    add-int/lit8 p3, p3, 0x8

    invoke-virtual {p2, p3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    iget-object p0, p0, Lorg/chromium/mojo/bindings/Decoder;->mMessage:Lorg/chromium/mojo/bindings/Message;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Message;->getData()Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    return-object p1
.end method

.method public readConsumerHandle(IZ)Lorg/chromium/mojo/system/DataPipe$ConsumerHandle;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lorg/chromium/mojo/bindings/Decoder;->readUntypedHandle(IZ)Lorg/chromium/mojo/system/UntypedHandle;

    move-result-object p0

    invoke-interface {p0}, Lorg/chromium/mojo/system/UntypedHandle;->toDataPipeConsumerHandle()Lorg/chromium/mojo/system/DataPipe$ConsumerHandle;

    move-result-object p0

    return-object p0
.end method

.method public readDataHeader()Lorg/chromium/mojo/bindings/DataHeader;
    .locals 6

    iget-object v0, p0, Lorg/chromium/mojo/bindings/Decoder;->mValidator:Lorg/chromium/mojo/bindings/Decoder$Validator;

    iget v1, p0, Lorg/chromium/mojo/bindings/Decoder;->mBaseOffset:I

    int-to-long v2, v1

    add-int/lit8 v1, v1, 0x8

    int-to-long v4, v1

    invoke-virtual {v0, v2, v3, v4, v5}, Lorg/chromium/mojo/bindings/Decoder$Validator;->claimMemory(JJ)V

    const/4 v0, 0x0

    invoke-direct {p0, v0, v0}, Lorg/chromium/mojo/bindings/Decoder;->readDataHeaderAtOffset(IZ)Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v0

    iget-object v1, p0, Lorg/chromium/mojo/bindings/Decoder;->mValidator:Lorg/chromium/mojo/bindings/Decoder$Validator;

    iget p0, p0, Lorg/chromium/mojo/bindings/Decoder;->mBaseOffset:I

    add-int/lit8 v2, p0, 0x8

    int-to-long v2, v2

    iget v4, v0, Lorg/chromium/mojo/bindings/DataHeader;->size:I

    add-int/2addr p0, v4

    int-to-long v4, p0

    invoke-virtual {v1, v2, v3, v4, v5}, Lorg/chromium/mojo/bindings/Decoder$Validator;->claimMemory(JJ)V

    return-object v0
.end method

.method public readDataHeaderForMap()V
    .locals 3

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Decoder;->readDataHeader()Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object p0

    iget v0, p0, Lorg/chromium/mojo/bindings/DataHeader;->size:I

    sget-object v1, Lorg/chromium/mojo/bindings/BindingsHelper;->MAP_STRUCT_HEADER:Lorg/chromium/mojo/bindings/DataHeader;

    iget v2, v1, Lorg/chromium/mojo/bindings/DataHeader;->size:I

    if-ne v0, v2, :cond_1

    iget p0, p0, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    iget v0, v1, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    if-ne p0, v0, :cond_0

    return-void

    :cond_0
    new-instance p0, Lorg/chromium/mojo/bindings/DeserializationException;

    const-string v0, "Incorrect header for map. The version is incorrect."

    invoke-direct {p0, v0}, Lorg/chromium/mojo/bindings/DeserializationException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Lorg/chromium/mojo/bindings/DeserializationException;

    const-string v0, "Incorrect header for map. The size is incorrect."

    invoke-direct {p0, v0}, Lorg/chromium/mojo/bindings/DeserializationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public readDataHeaderForPointerArray(I)Lorg/chromium/mojo/bindings/DataHeader;
    .locals 3

    const-wide/16 v0, 0x8

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, p1, v2}, Lorg/chromium/mojo/bindings/Decoder;->readDataHeaderForArray(JIZ)Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object p0

    return-object p0
.end method

.method public readDataHeaderForUnion(I)Lorg/chromium/mojo/bindings/DataHeader;
    .locals 2

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lorg/chromium/mojo/bindings/Decoder;->readDataHeaderAtOffset(IZ)Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object p0

    iget p1, p0, Lorg/chromium/mojo/bindings/DataHeader;->size:I

    if-nez p1, :cond_1

    iget p1, p0, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Lorg/chromium/mojo/bindings/DeserializationException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unexpected version tag for a null union. Expecting 0, found: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p0, p0, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lorg/chromium/mojo/bindings/DeserializationException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    const/16 v0, 0x10

    if-ne p1, v0, :cond_2

    :goto_0
    return-object p0

    :cond_2
    new-instance p0, Lorg/chromium/mojo/bindings/DeserializationException;

    const-string p1, "Unexpected size of an union. The size must be 0 for a null union, or 16 for a non-null union."

    invoke-direct {p0, p1}, Lorg/chromium/mojo/bindings/DeserializationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public readDouble(I)D
    .locals 1

    const/16 v0, 0x8

    invoke-direct {p0, p1, v0}, Lorg/chromium/mojo/bindings/Decoder;->validateBufferSize(II)V

    iget-object v0, p0, Lorg/chromium/mojo/bindings/Decoder;->mMessage:Lorg/chromium/mojo/bindings/Message;

    invoke-virtual {v0}, Lorg/chromium/mojo/bindings/Message;->getData()Ljava/nio/ByteBuffer;

    move-result-object v0

    iget p0, p0, Lorg/chromium/mojo/bindings/Decoder;->mBaseOffset:I

    add-int/2addr p0, p1

    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->getDouble(I)D

    move-result-wide p0

    return-wide p0
.end method

.method public readDoubles(III)[D
    .locals 1

    invoke-static {p2}, Lorg/chromium/mojo/bindings/BindingsHelper;->isArrayNullable(I)Z

    move-result p2

    invoke-virtual {p0, p1, p2}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-wide/16 p1, 0x8

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/chromium/mojo/bindings/Decoder;->readDataHeaderForArray(JIZ)Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object p1

    iget p1, p1, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    new-array p1, p1, [D

    iget-object p2, p0, Lorg/chromium/mojo/bindings/Decoder;->mMessage:Lorg/chromium/mojo/bindings/Message;

    invoke-virtual {p2}, Lorg/chromium/mojo/bindings/Message;->getData()Ljava/nio/ByteBuffer;

    move-result-object p2

    iget p3, p0, Lorg/chromium/mojo/bindings/Decoder;->mBaseOffset:I

    add-int/lit8 p3, p3, 0x8

    invoke-virtual {p2, p3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    iget-object p0, p0, Lorg/chromium/mojo/bindings/Decoder;->mMessage:Lorg/chromium/mojo/bindings/Message;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Message;->getData()Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->asDoubleBuffer()Ljava/nio/DoubleBuffer;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/nio/DoubleBuffer;->get([D)Ljava/nio/DoubleBuffer;

    return-object p1
.end method

.method public readFloat(I)F
    .locals 1

    const/4 v0, 0x4

    invoke-direct {p0, p1, v0}, Lorg/chromium/mojo/bindings/Decoder;->validateBufferSize(II)V

    iget-object v0, p0, Lorg/chromium/mojo/bindings/Decoder;->mMessage:Lorg/chromium/mojo/bindings/Message;

    invoke-virtual {v0}, Lorg/chromium/mojo/bindings/Message;->getData()Ljava/nio/ByteBuffer;

    move-result-object v0

    iget p0, p0, Lorg/chromium/mojo/bindings/Decoder;->mBaseOffset:I

    add-int/2addr p0, p1

    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->getFloat(I)F

    move-result p0

    return p0
.end method

.method public readFloats(III)[F
    .locals 1

    invoke-static {p2}, Lorg/chromium/mojo/bindings/BindingsHelper;->isArrayNullable(I)Z

    move-result p2

    invoke-virtual {p0, p1, p2}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-wide/16 p1, 0x4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/chromium/mojo/bindings/Decoder;->readDataHeaderForArray(JIZ)Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object p1

    iget p1, p1, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    new-array p1, p1, [F

    iget-object p2, p0, Lorg/chromium/mojo/bindings/Decoder;->mMessage:Lorg/chromium/mojo/bindings/Message;

    invoke-virtual {p2}, Lorg/chromium/mojo/bindings/Message;->getData()Ljava/nio/ByteBuffer;

    move-result-object p2

    iget p3, p0, Lorg/chromium/mojo/bindings/Decoder;->mBaseOffset:I

    add-int/lit8 p3, p3, 0x8

    invoke-virtual {p2, p3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    iget-object p0, p0, Lorg/chromium/mojo/bindings/Decoder;->mMessage:Lorg/chromium/mojo/bindings/Message;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Message;->getData()Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/nio/FloatBuffer;->get([F)Ljava/nio/FloatBuffer;

    return-object p1
.end method

.method public readHandle(IZ)Lorg/chromium/mojo/system/Handle;
    .locals 1

    invoke-virtual {p0, p1}, Lorg/chromium/mojo/bindings/Decoder;->readInt(I)I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    if-eqz p2, :cond_0

    sget-object p0, Lorg/chromium/mojo/system/InvalidHandle;->INSTANCE:Lorg/chromium/mojo/system/InvalidHandle;

    return-object p0

    :cond_0
    new-instance p0, Lorg/chromium/mojo/bindings/DeserializationException;

    const-string p1, "Trying to decode an invalid handle for a non-nullable type."

    invoke-direct {p0, p1}, Lorg/chromium/mojo/bindings/DeserializationException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    iget-object p2, p0, Lorg/chromium/mojo/bindings/Decoder;->mValidator:Lorg/chromium/mojo/bindings/Decoder$Validator;

    invoke-virtual {p2, p1}, Lorg/chromium/mojo/bindings/Decoder$Validator;->claimHandle(I)V

    iget-object p0, p0, Lorg/chromium/mojo/bindings/Decoder;->mMessage:Lorg/chromium/mojo/bindings/Message;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Message;->getHandles()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/chromium/mojo/system/Handle;

    return-object p0
.end method

.method public readInt(I)I
    .locals 1

    const/4 v0, 0x4

    invoke-direct {p0, p1, v0}, Lorg/chromium/mojo/bindings/Decoder;->validateBufferSize(II)V

    iget-object v0, p0, Lorg/chromium/mojo/bindings/Decoder;->mMessage:Lorg/chromium/mojo/bindings/Message;

    invoke-virtual {v0}, Lorg/chromium/mojo/bindings/Message;->getData()Ljava/nio/ByteBuffer;

    move-result-object v0

    iget p0, p0, Lorg/chromium/mojo/bindings/Decoder;->mBaseOffset:I

    add-int/2addr p0, p1

    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result p0

    return p0
.end method

.method public readInterfaceRequest(IZ)Lorg/chromium/mojo/bindings/InterfaceRequest;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<I::",
            "Lorg/chromium/mojo/bindings/Interface;",
            ">(IZ)",
            "Lorg/chromium/mojo/bindings/InterfaceRequest<",
            "TI;>;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lorg/chromium/mojo/bindings/Decoder;->readMessagePipeHandle(IZ)Lorg/chromium/mojo/system/MessagePipeHandle;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance p1, Lorg/chromium/mojo/bindings/InterfaceRequest;

    invoke-direct {p1, p0}, Lorg/chromium/mojo/bindings/InterfaceRequest;-><init>(Lorg/chromium/mojo/system/MessagePipeHandle;)V

    return-object p1
.end method

.method public readInts(III)[I
    .locals 1

    invoke-static {p2}, Lorg/chromium/mojo/bindings/BindingsHelper;->isArrayNullable(I)Z

    move-result p2

    invoke-virtual {p0, p1, p2}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-wide/16 p1, 0x4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/chromium/mojo/bindings/Decoder;->readDataHeaderForArray(JIZ)Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object p1

    iget p1, p1, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    new-array p1, p1, [I

    iget-object p2, p0, Lorg/chromium/mojo/bindings/Decoder;->mMessage:Lorg/chromium/mojo/bindings/Message;

    invoke-virtual {p2}, Lorg/chromium/mojo/bindings/Message;->getData()Ljava/nio/ByteBuffer;

    move-result-object p2

    iget p3, p0, Lorg/chromium/mojo/bindings/Decoder;->mBaseOffset:I

    add-int/lit8 p3, p3, 0x8

    invoke-virtual {p2, p3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    iget-object p0, p0, Lorg/chromium/mojo/bindings/Decoder;->mMessage:Lorg/chromium/mojo/bindings/Message;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Message;->getData()Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/nio/IntBuffer;->get([I)Ljava/nio/IntBuffer;

    return-object p1
.end method

.method public readLong(I)J
    .locals 1

    const/16 v0, 0x8

    invoke-direct {p0, p1, v0}, Lorg/chromium/mojo/bindings/Decoder;->validateBufferSize(II)V

    iget-object v0, p0, Lorg/chromium/mojo/bindings/Decoder;->mMessage:Lorg/chromium/mojo/bindings/Message;

    invoke-virtual {v0}, Lorg/chromium/mojo/bindings/Message;->getData()Ljava/nio/ByteBuffer;

    move-result-object v0

    iget p0, p0, Lorg/chromium/mojo/bindings/Decoder;->mBaseOffset:I

    add-int/2addr p0, p1

    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->getLong(I)J

    move-result-wide p0

    return-wide p0
.end method

.method public readLongs(III)[J
    .locals 1

    invoke-static {p2}, Lorg/chromium/mojo/bindings/BindingsHelper;->isArrayNullable(I)Z

    move-result p2

    invoke-virtual {p0, p1, p2}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-wide/16 p1, 0x8

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/chromium/mojo/bindings/Decoder;->readDataHeaderForArray(JIZ)Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object p1

    iget p1, p1, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    new-array p1, p1, [J

    iget-object p2, p0, Lorg/chromium/mojo/bindings/Decoder;->mMessage:Lorg/chromium/mojo/bindings/Message;

    invoke-virtual {p2}, Lorg/chromium/mojo/bindings/Message;->getData()Ljava/nio/ByteBuffer;

    move-result-object p2

    iget p3, p0, Lorg/chromium/mojo/bindings/Decoder;->mBaseOffset:I

    add-int/lit8 p3, p3, 0x8

    invoke-virtual {p2, p3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    iget-object p0, p0, Lorg/chromium/mojo/bindings/Decoder;->mMessage:Lorg/chromium/mojo/bindings/Message;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Message;->getData()Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->asLongBuffer()Ljava/nio/LongBuffer;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/nio/LongBuffer;->get([J)Ljava/nio/LongBuffer;

    return-object p1
.end method

.method public readMessagePipeHandle(IZ)Lorg/chromium/mojo/system/MessagePipeHandle;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lorg/chromium/mojo/bindings/Decoder;->readUntypedHandle(IZ)Lorg/chromium/mojo/system/UntypedHandle;

    move-result-object p0

    invoke-interface {p0}, Lorg/chromium/mojo/system/UntypedHandle;->toMessagePipeHandle()Lorg/chromium/mojo/system/MessagePipeHandle;

    move-result-object p0

    return-object p0
.end method

.method public readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;
    .locals 5

    iget v0, p0, Lorg/chromium/mojo/bindings/Decoder;->mBaseOffset:I

    add-int/2addr v0, p1

    invoke-virtual {p0, p1}, Lorg/chromium/mojo/bindings/Decoder;->readLong(I)J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long p1, v1, v3

    if-nez p1, :cond_1

    if-eqz p2, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance p0, Lorg/chromium/mojo/bindings/DeserializationException;

    const-string p1, "Trying to decode null pointer for a non-nullable type."

    invoke-direct {p0, p1}, Lorg/chromium/mojo/bindings/DeserializationException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    int-to-long p1, v0

    add-long/2addr p1, v1

    long-to-int p1, p1

    invoke-direct {p0, p1}, Lorg/chromium/mojo/bindings/Decoder;->getDecoderAtPosition(I)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object p0

    return-object p0
.end method

.method public readProducerHandle(IZ)Lorg/chromium/mojo/system/DataPipe$ProducerHandle;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lorg/chromium/mojo/bindings/Decoder;->readUntypedHandle(IZ)Lorg/chromium/mojo/system/UntypedHandle;

    move-result-object p0

    invoke-interface {p0}, Lorg/chromium/mojo/system/UntypedHandle;->toDataPipeProducerHandle()Lorg/chromium/mojo/system/DataPipe$ProducerHandle;

    move-result-object p0

    return-object p0
.end method

.method public readServiceInterface(IZLorg/chromium/mojo/bindings/Interface$Manager;)Lorg/chromium/mojo/bindings/Interface$Proxy;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<P::",
            "Lorg/chromium/mojo/bindings/Interface$Proxy;",
            ">(IZ",
            "Lorg/chromium/mojo/bindings/Interface$Manager<",
            "*TP;>;)TP;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lorg/chromium/mojo/bindings/Decoder;->readMessagePipeHandle(IZ)Lorg/chromium/mojo/system/MessagePipeHandle;

    move-result-object p2

    invoke-interface {p2}, Lorg/chromium/mojo/system/Handle;->isValid()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    add-int/lit8 p1, p1, 0x4

    invoke-virtual {p0, p1}, Lorg/chromium/mojo/bindings/Decoder;->readInt(I)I

    move-result p0

    invoke-virtual {p3, p2, p0}, Lorg/chromium/mojo/bindings/Interface$Manager;->attachProxy(Lorg/chromium/mojo/system/MessagePipeHandle;I)Lorg/chromium/mojo/bindings/Interface$Proxy;

    move-result-object p0

    return-object p0
.end method

.method public readServiceInterfaces(IIILorg/chromium/mojo/bindings/Interface$Manager;)[Lorg/chromium/mojo/bindings/Interface;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S::",
            "Lorg/chromium/mojo/bindings/Interface;",
            "P::",
            "Lorg/chromium/mojo/bindings/Interface$Proxy;",
            ">(III",
            "Lorg/chromium/mojo/bindings/Interface$Manager<",
            "TS;TP;>;)[TS;"
        }
    .end annotation

    invoke-static {p2}, Lorg/chromium/mojo/bindings/BindingsHelper;->isArrayNullable(I)Z

    move-result v0

    invoke-virtual {p0, p1, v0}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-wide/16 v0, 0x8

    const/4 p1, 0x0

    invoke-direct {p0, v0, v1, p3, p1}, Lorg/chromium/mojo/bindings/Decoder;->readDataHeaderForArray(JIZ)Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object p3

    iget p3, p3, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    invoke-virtual {p4, p3}, Lorg/chromium/mojo/bindings/Interface$Manager;->buildArray(I)[Lorg/chromium/mojo/bindings/Interface;

    move-result-object p3

    :goto_0
    array-length v0, p3

    if-ge p1, v0, :cond_1

    mul-int/lit8 v0, p1, 0x8

    add-int/lit8 v0, v0, 0x8

    invoke-static {p2}, Lorg/chromium/mojo/bindings/BindingsHelper;->isElementNullable(I)Z

    move-result v1

    invoke-virtual {p0, v0, v1, p4}, Lorg/chromium/mojo/bindings/Decoder;->readServiceInterface(IZLorg/chromium/mojo/bindings/Interface$Manager;)Lorg/chromium/mojo/bindings/Interface$Proxy;

    move-result-object v0

    aput-object v0, p3, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    return-object p3
.end method

.method public readSharedBufferHandle(IZ)Lorg/chromium/mojo/system/SharedBufferHandle;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lorg/chromium/mojo/bindings/Decoder;->readUntypedHandle(IZ)Lorg/chromium/mojo/system/UntypedHandle;

    move-result-object p0

    invoke-interface {p0}, Lorg/chromium/mojo/system/UntypedHandle;->toSharedBufferHandle()Lorg/chromium/mojo/system/SharedBufferHandle;

    move-result-object p0

    return-object p0
.end method

.method public readShort(I)S
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, p1, v0}, Lorg/chromium/mojo/bindings/Decoder;->validateBufferSize(II)V

    iget-object v0, p0, Lorg/chromium/mojo/bindings/Decoder;->mMessage:Lorg/chromium/mojo/bindings/Message;

    invoke-virtual {v0}, Lorg/chromium/mojo/bindings/Message;->getData()Ljava/nio/ByteBuffer;

    move-result-object v0

    iget p0, p0, Lorg/chromium/mojo/bindings/Decoder;->mBaseOffset:I

    add-int/2addr p0, p1

    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result p0

    return p0
.end method

.method public readShorts(III)[S
    .locals 1

    invoke-static {p2}, Lorg/chromium/mojo/bindings/BindingsHelper;->isArrayNullable(I)Z

    move-result p2

    invoke-virtual {p0, p1, p2}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-wide/16 p1, 0x2

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/chromium/mojo/bindings/Decoder;->readDataHeaderForArray(JIZ)Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object p1

    iget p1, p1, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    new-array p1, p1, [S

    iget-object p2, p0, Lorg/chromium/mojo/bindings/Decoder;->mMessage:Lorg/chromium/mojo/bindings/Message;

    invoke-virtual {p2}, Lorg/chromium/mojo/bindings/Message;->getData()Ljava/nio/ByteBuffer;

    move-result-object p2

    iget p3, p0, Lorg/chromium/mojo/bindings/Decoder;->mBaseOffset:I

    add-int/lit8 p3, p3, 0x8

    invoke-virtual {p2, p3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    iget-object p0, p0, Lorg/chromium/mojo/bindings/Decoder;->mMessage:Lorg/chromium/mojo/bindings/Message;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Message;->getData()Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/nio/ShortBuffer;->get([S)Ljava/nio/ShortBuffer;

    return-object p1
.end method

.method public readString(IZ)Ljava/lang/String;
    .locals 1

    const/4 v0, -0x1

    invoke-virtual {p0, p1, p2, v0}, Lorg/chromium/mojo/bindings/Decoder;->readBytes(III)[B

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance p1, Ljava/lang/String;

    const-string p2, "utf8"

    invoke-static {p2}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object p2

    invoke-direct {p1, p0, p2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object p1
.end method

.method public readUntypedHandle(IZ)Lorg/chromium/mojo/system/UntypedHandle;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lorg/chromium/mojo/bindings/Decoder;->readHandle(IZ)Lorg/chromium/mojo/system/Handle;

    move-result-object p0

    invoke-interface {p0}, Lorg/chromium/mojo/system/Handle;->toUntypedHandle()Lorg/chromium/mojo/system/UntypedHandle;

    move-result-object p0

    return-object p0
.end method
