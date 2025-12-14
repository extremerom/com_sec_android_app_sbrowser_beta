.class public Lorg/chromium/mojo/bindings/Encoder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/mojo/bindings/Encoder$EncoderState;
    }
.end annotation

.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# instance fields
.field private mBaseOffset:I

.field private final mEncoderState:Lorg/chromium/mojo/bindings/Encoder$EncoderState;


# direct methods
.method private constructor <init>(Lorg/chromium/mojo/bindings/Encoder$EncoderState;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/chromium/mojo/bindings/Encoder;->mEncoderState:Lorg/chromium/mojo/bindings/Encoder$EncoderState;

    iget p1, p1, Lorg/chromium/mojo/bindings/Encoder$EncoderState;->dataEnd:I

    iput p1, p0, Lorg/chromium/mojo/bindings/Encoder;->mBaseOffset:I

    return-void
.end method

.method public constructor <init>(Lorg/chromium/mojo/system/Core;I)V
    .locals 2

    new-instance v0, Lorg/chromium/mojo/bindings/Encoder$EncoderState;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Lorg/chromium/mojo/bindings/Encoder$EncoderState;-><init>(Lorg/chromium/mojo/system/Core;II)V

    invoke-direct {p0, v0}, Lorg/chromium/mojo/bindings/Encoder;-><init>(Lorg/chromium/mojo/bindings/Encoder$EncoderState;)V

    return-void
.end method

.method private append([B)V
    .locals 0

    iget-object p0, p0, Lorg/chromium/mojo/bindings/Encoder;->mEncoderState:Lorg/chromium/mojo/bindings/Encoder$EncoderState;

    iget-object p0, p0, Lorg/chromium/mojo/bindings/Encoder$EncoderState;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    return-void
.end method

.method private append([D)V
    .locals 0

    iget-object p0, p0, Lorg/chromium/mojo/bindings/Encoder;->mEncoderState:Lorg/chromium/mojo/bindings/Encoder$EncoderState;

    iget-object p0, p0, Lorg/chromium/mojo/bindings/Encoder$EncoderState;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->asDoubleBuffer()Ljava/nio/DoubleBuffer;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/nio/DoubleBuffer;->put([D)Ljava/nio/DoubleBuffer;

    return-void
.end method

.method private append([F)V
    .locals 0

    iget-object p0, p0, Lorg/chromium/mojo/bindings/Encoder;->mEncoderState:Lorg/chromium/mojo/bindings/Encoder$EncoderState;

    iget-object p0, p0, Lorg/chromium/mojo/bindings/Encoder$EncoderState;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    return-void
.end method

.method private append([I)V
    .locals 0

    iget-object p0, p0, Lorg/chromium/mojo/bindings/Encoder;->mEncoderState:Lorg/chromium/mojo/bindings/Encoder$EncoderState;

    iget-object p0, p0, Lorg/chromium/mojo/bindings/Encoder$EncoderState;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/nio/IntBuffer;->put([I)Ljava/nio/IntBuffer;

    return-void
.end method

.method private append([J)V
    .locals 0

    iget-object p0, p0, Lorg/chromium/mojo/bindings/Encoder;->mEncoderState:Lorg/chromium/mojo/bindings/Encoder$EncoderState;

    iget-object p0, p0, Lorg/chromium/mojo/bindings/Encoder$EncoderState;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->asLongBuffer()Ljava/nio/LongBuffer;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/nio/LongBuffer;->put([J)Ljava/nio/LongBuffer;

    return-void
.end method

.method private append([S)V
    .locals 0

    iget-object p0, p0, Lorg/chromium/mojo/bindings/Encoder;->mEncoderState:Lorg/chromium/mojo/bindings/Encoder$EncoderState;

    iget-object p0, p0, Lorg/chromium/mojo/bindings/Encoder$EncoderState;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/nio/ShortBuffer;->put([S)Ljava/nio/ShortBuffer;

    return-void
.end method

.method private encodePointerToNextUnclaimedData(I)V
    .locals 4

    iget-object v0, p0, Lorg/chromium/mojo/bindings/Encoder;->mEncoderState:Lorg/chromium/mojo/bindings/Encoder$EncoderState;

    iget v0, v0, Lorg/chromium/mojo/bindings/Encoder$EncoderState;->dataEnd:I

    int-to-long v0, v0

    iget v2, p0, Lorg/chromium/mojo/bindings/Encoder;->mBaseOffset:I

    add-int/2addr v2, p1

    int-to-long v2, v2

    sub-long/2addr v0, v2

    invoke-virtual {p0, v0, v1, p1}, Lorg/chromium/mojo/bindings/Encoder;->encode(JI)V

    return-void
.end method

.method private encoderForArray(IIII)Lorg/chromium/mojo/bindings/Encoder;
    .locals 1

    const/4 v0, -0x1

    if-eq p4, v0, :cond_1

    if-ne p4, p2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Lorg/chromium/mojo/bindings/SerializationException;

    const-string p1, "Trying to encode a fixed array of incorrect length."

    invoke-direct {p0, p1}, Lorg/chromium/mojo/bindings/SerializationException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    mul-int/2addr p1, p2

    invoke-direct {p0, p1, p2, p3}, Lorg/chromium/mojo/bindings/Encoder;->encoderForArrayByTotalSize(III)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object p0

    return-object p0
.end method

.method private encoderForArrayByTotalSize(III)Lorg/chromium/mojo/bindings/Encoder;
    .locals 0

    invoke-direct {p0, p3}, Lorg/chromium/mojo/bindings/Encoder;->encodePointerToNextUnclaimedData(I)V

    new-instance p3, Lorg/chromium/mojo/bindings/DataHeader;

    add-int/lit8 p1, p1, 0x8

    invoke-direct {p3, p1, p2}, Lorg/chromium/mojo/bindings/DataHeader;-><init>(II)V

    invoke-virtual {p0, p3}, Lorg/chromium/mojo/bindings/Encoder;->getEncoderAtDataOffset(Lorg/chromium/mojo/bindings/DataHeader;)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object p0

    return-object p0
.end method

.method private encoderForArrayOfElements(IIII)Lorg/chromium/mojo/bindings/Encoder;
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/chromium/mojo/bindings/Encoder;->encoderForArray(IIII)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object p0

    iget-object p1, p0, Lorg/chromium/mojo/bindings/Encoder;->mEncoderState:Lorg/chromium/mojo/bindings/Encoder$EncoderState;

    iget-object p1, p1, Lorg/chromium/mojo/bindings/Encoder$EncoderState;->byteBuffer:Ljava/nio/ByteBuffer;

    iget p2, p0, Lorg/chromium/mojo/bindings/Encoder;->mBaseOffset:I

    add-int/lit8 p2, p2, 0x8

    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    return-object p0
.end method

.method private static packBoolsToBitfield([ZI)[B
    .locals 5

    int-to-long v0, p1

    array-length p1, p0

    invoke-static {v0, v1, p1}, Lorg/chromium/mojo/bindings/BindingsHelper;->computeBitfieldSize(JI)I

    move-result p1

    new-array p1, p1, [B

    const/4 v0, 0x0

    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_1

    aget-boolean v1, p0, v0

    if-eqz v1, :cond_0

    div-int/lit8 v1, v0, 0x8

    rem-int/lit8 v2, v0, 0x8

    aget-byte v3, p1, v1

    const/4 v4, 0x1

    shl-int v2, v4, v2

    int-to-byte v2, v2

    or-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, p1, v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-object p1
.end method


# virtual methods
.method public encode(BI)V
    .locals 1

    iget-object v0, p0, Lorg/chromium/mojo/bindings/Encoder;->mEncoderState:Lorg/chromium/mojo/bindings/Encoder$EncoderState;

    iget-object v0, v0, Lorg/chromium/mojo/bindings/Encoder$EncoderState;->byteBuffer:Ljava/nio/ByteBuffer;

    iget p0, p0, Lorg/chromium/mojo/bindings/Encoder;->mBaseOffset:I

    add-int/2addr p0, p2

    invoke-virtual {v0, p0, p1}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    return-void
.end method

.method public encode(DI)V
    .locals 1

    iget-object v0, p0, Lorg/chromium/mojo/bindings/Encoder;->mEncoderState:Lorg/chromium/mojo/bindings/Encoder$EncoderState;

    iget-object v0, v0, Lorg/chromium/mojo/bindings/Encoder$EncoderState;->byteBuffer:Ljava/nio/ByteBuffer;

    iget p0, p0, Lorg/chromium/mojo/bindings/Encoder;->mBaseOffset:I

    add-int/2addr p0, p3

    invoke-virtual {v0, p0, p1, p2}, Ljava/nio/ByteBuffer;->putDouble(ID)Ljava/nio/ByteBuffer;

    return-void
.end method

.method public encode(FI)V
    .locals 1

    iget-object v0, p0, Lorg/chromium/mojo/bindings/Encoder;->mEncoderState:Lorg/chromium/mojo/bindings/Encoder$EncoderState;

    iget-object v0, v0, Lorg/chromium/mojo/bindings/Encoder$EncoderState;->byteBuffer:Ljava/nio/ByteBuffer;

    iget p0, p0, Lorg/chromium/mojo/bindings/Encoder;->mBaseOffset:I

    add-int/2addr p0, p2

    invoke-virtual {v0, p0, p1}, Ljava/nio/ByteBuffer;->putFloat(IF)Ljava/nio/ByteBuffer;

    return-void
.end method

.method public encode(II)V
    .locals 1

    iget-object v0, p0, Lorg/chromium/mojo/bindings/Encoder;->mEncoderState:Lorg/chromium/mojo/bindings/Encoder$EncoderState;

    iget-object v0, v0, Lorg/chromium/mojo/bindings/Encoder$EncoderState;->byteBuffer:Ljava/nio/ByteBuffer;

    iget p0, p0, Lorg/chromium/mojo/bindings/Encoder;->mBaseOffset:I

    add-int/2addr p0, p2

    invoke-virtual {v0, p0, p1}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    return-void
.end method

.method public encode(JI)V
    .locals 1

    iget-object v0, p0, Lorg/chromium/mojo/bindings/Encoder;->mEncoderState:Lorg/chromium/mojo/bindings/Encoder$EncoderState;

    iget-object v0, v0, Lorg/chromium/mojo/bindings/Encoder$EncoderState;->byteBuffer:Ljava/nio/ByteBuffer;

    iget p0, p0, Lorg/chromium/mojo/bindings/Encoder;->mBaseOffset:I

    add-int/2addr p0, p3

    invoke-virtual {v0, p0, p1, p2}, Ljava/nio/ByteBuffer;->putLong(IJ)Ljava/nio/ByteBuffer;

    return-void
.end method

.method public encode(Ljava/lang/String;IZ)V
    .locals 1

    if-nez p1, :cond_0

    invoke-virtual {p0, p2, p3}, Lorg/chromium/mojo/bindings/Encoder;->encodeNullPointer(IZ)V

    return-void

    :cond_0
    const-string v0, "utf8"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    const/4 v0, -0x1

    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/chromium/mojo/bindings/Encoder;->encode([BIII)V

    return-void
.end method

.method public encode(Lorg/chromium/mojo/bindings/AssociatedInterfaceNotSupported;IZ)V
    .locals 0

    return-void
.end method

.method public encode(Lorg/chromium/mojo/bindings/AssociatedInterfaceRequestNotSupported;IZ)V
    .locals 0

    return-void
.end method

.method public encode(Lorg/chromium/mojo/bindings/DataHeader;)V
    .locals 2

    iget-object v0, p0, Lorg/chromium/mojo/bindings/Encoder;->mEncoderState:Lorg/chromium/mojo/bindings/Encoder$EncoderState;

    iget v1, p1, Lorg/chromium/mojo/bindings/DataHeader;->size:I

    invoke-static {v1}, Lorg/chromium/mojo/bindings/BindingsHelper;->align(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/chromium/mojo/bindings/Encoder$EncoderState;->claimMemory(I)V

    iget v0, p1, Lorg/chromium/mojo/bindings/DataHeader;->size:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lorg/chromium/mojo/bindings/Encoder;->encode(II)V

    iget p1, p1, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    const/4 v0, 0x4

    invoke-virtual {p0, p1, v0}, Lorg/chromium/mojo/bindings/Encoder;->encode(II)V

    return-void
.end method

.method public encode(Lorg/chromium/mojo/bindings/Interface;IZLorg/chromium/mojo/bindings/Interface$Manager;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lorg/chromium/mojo/bindings/Interface;",
            ">(TT;IZ",
            "Lorg/chromium/mojo/bindings/Interface$Manager<",
            "TT;*>;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    invoke-virtual {p0, p2, p3}, Lorg/chromium/mojo/bindings/Encoder;->encodeInvalidHandle(IZ)V

    const/4 p1, 0x0

    add-int/lit8 p2, p2, 0x4

    invoke-virtual {p0, p1, p2}, Lorg/chromium/mojo/bindings/Encoder;->encode(II)V

    return-void

    :cond_0
    iget-object v0, p0, Lorg/chromium/mojo/bindings/Encoder;->mEncoderState:Lorg/chromium/mojo/bindings/Encoder$EncoderState;

    iget-object v0, v0, Lorg/chromium/mojo/bindings/Encoder$EncoderState;->core:Lorg/chromium/mojo/system/Core;

    if-eqz v0, :cond_2

    instance-of v1, p1, Lorg/chromium/mojo/bindings/Interface$Proxy;

    if-eqz v1, :cond_1

    check-cast p1, Lorg/chromium/mojo/bindings/Interface$Proxy;

    invoke-interface {p1}, Lorg/chromium/mojo/bindings/Interface$Proxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$Proxy$Handler;

    move-result-object p1

    invoke-interface {p1}, Lorg/chromium/mojo/bindings/Interface$Proxy$Handler;->passHandle()Lorg/chromium/mojo/system/MessagePipeHandle;

    move-result-object p4

    invoke-virtual {p0, p4, p2, p3}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/system/Handle;IZ)V

    invoke-interface {p1}, Lorg/chromium/mojo/bindings/Interface$Proxy$Handler;->getVersion()I

    move-result p1

    add-int/lit8 p2, p2, 0x4

    invoke-virtual {p0, p1, p2}, Lorg/chromium/mojo/bindings/Encoder;->encode(II)V

    return-void

    :cond_1
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lorg/chromium/mojo/system/Core;->createMessagePipe(Lorg/chromium/mojo/system/MessagePipeHandle$CreateOptions;)Lorg/chromium/mojo/system/Pair;

    move-result-object v0

    iget-object v1, v0, Lorg/chromium/mojo/system/Pair;->first:Ljava/lang/Object;

    check-cast v1, Lorg/chromium/mojo/system/MessagePipeHandle;

    invoke-virtual {p4, p1, v1}, Lorg/chromium/mojo/bindings/Interface$Manager;->bind(Lorg/chromium/mojo/bindings/Interface;Lorg/chromium/mojo/system/MessagePipeHandle;)Lorg/chromium/mojo/bindings/Router;

    iget-object p1, v0, Lorg/chromium/mojo/system/Pair;->second:Ljava/lang/Object;

    check-cast p1, Lorg/chromium/mojo/system/Handle;

    invoke-virtual {p0, p1, p2, p3}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/system/Handle;IZ)V

    invoke-virtual {p4}, Lorg/chromium/mojo/bindings/Interface$Manager;->getVersion()I

    move-result p1

    add-int/lit8 p2, p2, 0x4

    invoke-virtual {p0, p1, p2}, Lorg/chromium/mojo/bindings/Encoder;->encode(II)V

    return-void

    :cond_2
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "The encoder has been created without a Core. It can\'t encode an interface."

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public encode(Lorg/chromium/mojo/bindings/InterfaceRequest;IZ)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<I::",
            "Lorg/chromium/mojo/bindings/Interface;",
            ">(",
            "Lorg/chromium/mojo/bindings/InterfaceRequest<",
            "TI;>;IZ)V"
        }
    .end annotation

    if-nez p1, :cond_0

    invoke-virtual {p0, p2, p3}, Lorg/chromium/mojo/bindings/Encoder;->encodeInvalidHandle(IZ)V

    return-void

    :cond_0
    iget-object v0, p0, Lorg/chromium/mojo/bindings/Encoder;->mEncoderState:Lorg/chromium/mojo/bindings/Encoder$EncoderState;

    iget-object v0, v0, Lorg/chromium/mojo/bindings/Encoder$EncoderState;->core:Lorg/chromium/mojo/system/Core;

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/InterfaceRequest;->passHandle()Lorg/chromium/mojo/system/MessagePipeHandle;

    move-result-object p1

    invoke-virtual {p0, p1, p2, p3}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/system/Handle;IZ)V

    return-void

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "The encoder has been created without a Core. It can\'t encode an interface."

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public encode(Lorg/chromium/mojo/bindings/Struct;IZ)V
    .locals 0

    if-nez p1, :cond_0

    invoke-virtual {p0, p2, p3}, Lorg/chromium/mojo/bindings/Encoder;->encodeNullPointer(IZ)V

    return-void

    :cond_0
    invoke-direct {p0, p2}, Lorg/chromium/mojo/bindings/Encoder;->encodePointerToNextUnclaimedData(I)V

    invoke-virtual {p1, p0}, Lorg/chromium/mojo/bindings/Struct;->encode(Lorg/chromium/mojo/bindings/Encoder;)V

    return-void
.end method

.method public encode(Lorg/chromium/mojo/bindings/Union;IZ)V
    .locals 2

    if-nez p1, :cond_1

    if-eqz p3, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Lorg/chromium/mojo/bindings/SerializationException;

    const-string p1, "Trying to encode a null pointer for a non-nullable type."

    invoke-direct {p0, p1}, Lorg/chromium/mojo/bindings/SerializationException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    if-nez p1, :cond_2

    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1, p2}, Lorg/chromium/mojo/bindings/Encoder;->encode(JI)V

    add-int/lit8 p2, p2, 0x8

    invoke-virtual {p0, v0, v1, p2}, Lorg/chromium/mojo/bindings/Encoder;->encode(JI)V

    return-void

    :cond_2
    invoke-virtual {p1, p0, p2}, Lorg/chromium/mojo/bindings/Union;->encode(Lorg/chromium/mojo/bindings/Encoder;I)V

    return-void
.end method

.method public encode(Lorg/chromium/mojo/system/Handle;IZ)V
    .locals 1

    if-eqz p1, :cond_1

    invoke-interface {p1}, Lorg/chromium/mojo/system/Handle;->isValid()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p3, p0, Lorg/chromium/mojo/bindings/Encoder;->mEncoderState:Lorg/chromium/mojo/bindings/Encoder$EncoderState;

    iget-object p3, p3, Lorg/chromium/mojo/bindings/Encoder$EncoderState;->handles:Ljava/util/List;

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p3

    invoke-virtual {p0, p3, p2}, Lorg/chromium/mojo/bindings/Encoder;->encode(II)V

    iget-object p0, p0, Lorg/chromium/mojo/bindings/Encoder;->mEncoderState:Lorg/chromium/mojo/bindings/Encoder$EncoderState;

    iget-object p0, p0, Lorg/chromium/mojo/bindings/Encoder$EncoderState;->handles:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    :goto_0
    invoke-virtual {p0, p2, p3}, Lorg/chromium/mojo/bindings/Encoder;->encodeInvalidHandle(IZ)V

    :goto_1
    return-void
.end method

.method public encode(SI)V
    .locals 1

    iget-object v0, p0, Lorg/chromium/mojo/bindings/Encoder;->mEncoderState:Lorg/chromium/mojo/bindings/Encoder$EncoderState;

    iget-object v0, v0, Lorg/chromium/mojo/bindings/Encoder$EncoderState;->byteBuffer:Ljava/nio/ByteBuffer;

    iget p0, p0, Lorg/chromium/mojo/bindings/Encoder;->mBaseOffset:I

    add-int/2addr p0, p2

    invoke-virtual {v0, p0, p1}, Ljava/nio/ByteBuffer;->putShort(IS)Ljava/nio/ByteBuffer;

    return-void
.end method

.method public encode(ZII)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/chromium/mojo/bindings/Encoder;->mEncoderState:Lorg/chromium/mojo/bindings/Encoder$EncoderState;

    iget-object p1, p1, Lorg/chromium/mojo/bindings/Encoder$EncoderState;->byteBuffer:Ljava/nio/ByteBuffer;

    iget v0, p0, Lorg/chromium/mojo/bindings/Encoder;->mBaseOffset:I

    add-int/2addr v0, p2

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result p1

    const/4 v0, 0x1

    shl-int p3, v0, p3

    int-to-byte p3, p3

    or-int/2addr p1, p3

    int-to-byte p1, p1

    iget-object p3, p0, Lorg/chromium/mojo/bindings/Encoder;->mEncoderState:Lorg/chromium/mojo/bindings/Encoder$EncoderState;

    iget-object p3, p3, Lorg/chromium/mojo/bindings/Encoder$EncoderState;->byteBuffer:Ljava/nio/ByteBuffer;

    iget p0, p0, Lorg/chromium/mojo/bindings/Encoder;->mBaseOffset:I

    add-int/2addr p0, p2

    invoke-virtual {p3, p0, p1}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    :cond_0
    return-void
.end method

.method public encode([BIII)V
    .locals 1

    if-nez p1, :cond_0

    invoke-static {p3}, Lorg/chromium/mojo/bindings/BindingsHelper;->isArrayNullable(I)Z

    move-result p1

    invoke-virtual {p0, p2, p1}, Lorg/chromium/mojo/bindings/Encoder;->encodeNullPointer(IZ)V

    return-void

    :cond_0
    const/4 p3, 0x1

    array-length v0, p1

    invoke-direct {p0, p3, v0, p2, p4}, Lorg/chromium/mojo/bindings/Encoder;->encoderForArrayOfElements(IIII)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object p0

    invoke-direct {p0, p1}, Lorg/chromium/mojo/bindings/Encoder;->append([B)V

    return-void
.end method

.method public encode([DIII)V
    .locals 1

    if-nez p1, :cond_0

    invoke-static {p3}, Lorg/chromium/mojo/bindings/BindingsHelper;->isArrayNullable(I)Z

    move-result p1

    invoke-virtual {p0, p2, p1}, Lorg/chromium/mojo/bindings/Encoder;->encodeNullPointer(IZ)V

    return-void

    :cond_0
    const/16 p3, 0x8

    array-length v0, p1

    invoke-direct {p0, p3, v0, p2, p4}, Lorg/chromium/mojo/bindings/Encoder;->encoderForArrayOfElements(IIII)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object p0

    invoke-direct {p0, p1}, Lorg/chromium/mojo/bindings/Encoder;->append([D)V

    return-void
.end method

.method public encode([FIII)V
    .locals 1

    if-nez p1, :cond_0

    invoke-static {p3}, Lorg/chromium/mojo/bindings/BindingsHelper;->isArrayNullable(I)Z

    move-result p1

    invoke-virtual {p0, p2, p1}, Lorg/chromium/mojo/bindings/Encoder;->encodeNullPointer(IZ)V

    return-void

    :cond_0
    const/4 p3, 0x4

    array-length v0, p1

    invoke-direct {p0, p3, v0, p2, p4}, Lorg/chromium/mojo/bindings/Encoder;->encoderForArrayOfElements(IIII)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object p0

    invoke-direct {p0, p1}, Lorg/chromium/mojo/bindings/Encoder;->append([F)V

    return-void
.end method

.method public encode([IIII)V
    .locals 1

    if-nez p1, :cond_0

    invoke-static {p3}, Lorg/chromium/mojo/bindings/BindingsHelper;->isArrayNullable(I)Z

    move-result p1

    invoke-virtual {p0, p2, p1}, Lorg/chromium/mojo/bindings/Encoder;->encodeNullPointer(IZ)V

    return-void

    :cond_0
    const/4 p3, 0x4

    array-length v0, p1

    invoke-direct {p0, p3, v0, p2, p4}, Lorg/chromium/mojo/bindings/Encoder;->encoderForArrayOfElements(IIII)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object p0

    invoke-direct {p0, p1}, Lorg/chromium/mojo/bindings/Encoder;->append([I)V

    return-void
.end method

.method public encode([JIII)V
    .locals 1

    if-nez p1, :cond_0

    invoke-static {p3}, Lorg/chromium/mojo/bindings/BindingsHelper;->isArrayNullable(I)Z

    move-result p1

    invoke-virtual {p0, p2, p1}, Lorg/chromium/mojo/bindings/Encoder;->encodeNullPointer(IZ)V

    return-void

    :cond_0
    const/16 p3, 0x8

    array-length v0, p1

    invoke-direct {p0, p3, v0, p2, p4}, Lorg/chromium/mojo/bindings/Encoder;->encoderForArrayOfElements(IIII)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object p0

    invoke-direct {p0, p1}, Lorg/chromium/mojo/bindings/Encoder;->append([J)V

    return-void
.end method

.method public encode([Lorg/chromium/mojo/bindings/Interface;IIILorg/chromium/mojo/bindings/Interface$Manager;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lorg/chromium/mojo/bindings/Interface;",
            ">([TT;III",
            "Lorg/chromium/mojo/bindings/Interface$Manager<",
            "TT;*>;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    invoke-static {p3}, Lorg/chromium/mojo/bindings/BindingsHelper;->isArrayNullable(I)Z

    move-result p1

    invoke-virtual {p0, p2, p1}, Lorg/chromium/mojo/bindings/Encoder;->encodeNullPointer(IZ)V

    return-void

    :cond_0
    array-length v0, p1

    const/16 v1, 0x8

    invoke-direct {p0, v1, v0, p2, p4}, Lorg/chromium/mojo/bindings/Encoder;->encoderForArray(IIII)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object p0

    const/4 p2, 0x0

    :goto_0
    array-length p4, p1

    if-ge p2, p4, :cond_1

    aget-object p4, p1, p2

    mul-int/lit8 v0, p2, 0x8

    add-int/2addr v0, v1

    invoke-static {p3}, Lorg/chromium/mojo/bindings/BindingsHelper;->isElementNullable(I)Z

    move-result v2

    invoke-virtual {p0, p4, v0, v2, p5}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Interface;IZLorg/chromium/mojo/bindings/Interface$Manager;)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public encode([SIII)V
    .locals 1

    if-nez p1, :cond_0

    invoke-static {p3}, Lorg/chromium/mojo/bindings/BindingsHelper;->isArrayNullable(I)Z

    move-result p1

    invoke-virtual {p0, p2, p1}, Lorg/chromium/mojo/bindings/Encoder;->encodeNullPointer(IZ)V

    return-void

    :cond_0
    const/4 p3, 0x2

    array-length v0, p1

    invoke-direct {p0, p3, v0, p2, p4}, Lorg/chromium/mojo/bindings/Encoder;->encoderForArrayOfElements(IIII)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object p0

    invoke-direct {p0, p1}, Lorg/chromium/mojo/bindings/Encoder;->append([S)V

    return-void
.end method

.method public encode([ZIII)V
    .locals 0

    if-nez p1, :cond_0

    invoke-static {p3}, Lorg/chromium/mojo/bindings/BindingsHelper;->isArrayNullable(I)Z

    move-result p1

    invoke-virtual {p0, p2, p1}, Lorg/chromium/mojo/bindings/Encoder;->encodeNullPointer(IZ)V

    return-void

    :cond_0
    const/4 p3, -0x1

    if-eq p4, p3, :cond_2

    array-length p3, p1

    if-ne p4, p3, :cond_1

    goto :goto_0

    :cond_1
    new-instance p0, Lorg/chromium/mojo/bindings/SerializationException;

    const-string p1, "Trying to encode a fixed array of incorrect length."

    invoke-direct {p0, p1}, Lorg/chromium/mojo/bindings/SerializationException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    :goto_0
    const/4 p3, 0x1

    invoke-static {p1, p3}, Lorg/chromium/mojo/bindings/Encoder;->packBoolsToBitfield([ZI)[B

    move-result-object p3

    array-length p4, p3

    array-length p1, p1

    invoke-direct {p0, p4, p1, p2}, Lorg/chromium/mojo/bindings/Encoder;->encoderForArrayByTotalSize(III)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object p0

    iget-object p1, p0, Lorg/chromium/mojo/bindings/Encoder;->mEncoderState:Lorg/chromium/mojo/bindings/Encoder$EncoderState;

    iget-object p1, p1, Lorg/chromium/mojo/bindings/Encoder$EncoderState;->byteBuffer:Ljava/nio/ByteBuffer;

    iget p2, p0, Lorg/chromium/mojo/bindings/Encoder;->mBaseOffset:I

    add-int/lit8 p2, p2, 0x8

    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    invoke-direct {p0, p3}, Lorg/chromium/mojo/bindings/Encoder;->append([B)V

    return-void
.end method

.method public encodeInvalidHandle(IZ)V
    .locals 0

    if-eqz p2, :cond_0

    iget-object p2, p0, Lorg/chromium/mojo/bindings/Encoder;->mEncoderState:Lorg/chromium/mojo/bindings/Encoder$EncoderState;

    iget-object p2, p2, Lorg/chromium/mojo/bindings/Encoder$EncoderState;->byteBuffer:Ljava/nio/ByteBuffer;

    iget p0, p0, Lorg/chromium/mojo/bindings/Encoder;->mBaseOffset:I

    add-int/2addr p0, p1

    const/4 p1, -0x1

    invoke-virtual {p2, p0, p1}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    return-void

    :cond_0
    new-instance p0, Lorg/chromium/mojo/bindings/SerializationException;

    const-string p1, "Trying to encode an invalid handle for a non-nullable type."

    invoke-direct {p0, p1}, Lorg/chromium/mojo/bindings/SerializationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public encodeNullPointer(IZ)V
    .locals 2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lorg/chromium/mojo/bindings/Encoder;->mEncoderState:Lorg/chromium/mojo/bindings/Encoder$EncoderState;

    iget-object p2, p2, Lorg/chromium/mojo/bindings/Encoder$EncoderState;->byteBuffer:Ljava/nio/ByteBuffer;

    iget p0, p0, Lorg/chromium/mojo/bindings/Encoder;->mBaseOffset:I

    add-int/2addr p0, p1

    const-wide/16 v0, 0x0

    invoke-virtual {p2, p0, v0, v1}, Ljava/nio/ByteBuffer;->putLong(IJ)Ljava/nio/ByteBuffer;

    return-void

    :cond_0
    new-instance p0, Lorg/chromium/mojo/bindings/SerializationException;

    const-string p1, "Trying to encode a null pointer for a non-nullable type."

    invoke-direct {p0, p1}, Lorg/chromium/mojo/bindings/SerializationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public encodePointerArray(III)Lorg/chromium/mojo/bindings/Encoder;
    .locals 1

    const/16 v0, 0x8

    invoke-direct {p0, v0, p1, p2, p3}, Lorg/chromium/mojo/bindings/Encoder;->encoderForArray(IIII)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object p0

    return-object p0
.end method

.method public encodeUnionArray(III)Lorg/chromium/mojo/bindings/Encoder;
    .locals 1

    const/16 v0, 0x10

    invoke-direct {p0, v0, p1, p2, p3}, Lorg/chromium/mojo/bindings/Encoder;->encoderForArray(IIII)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object p0

    return-object p0
.end method

.method public encoderForMap(I)Lorg/chromium/mojo/bindings/Encoder;
    .locals 0

    invoke-direct {p0, p1}, Lorg/chromium/mojo/bindings/Encoder;->encodePointerToNextUnclaimedData(I)V

    sget-object p1, Lorg/chromium/mojo/bindings/BindingsHelper;->MAP_STRUCT_HEADER:Lorg/chromium/mojo/bindings/DataHeader;

    invoke-virtual {p0, p1}, Lorg/chromium/mojo/bindings/Encoder;->getEncoderAtDataOffset(Lorg/chromium/mojo/bindings/DataHeader;)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object p0

    return-object p0
.end method

.method public encoderForUnionPointer(I)Lorg/chromium/mojo/bindings/Encoder;
    .locals 1

    invoke-direct {p0, p1}, Lorg/chromium/mojo/bindings/Encoder;->encodePointerToNextUnclaimedData(I)V

    new-instance p1, Lorg/chromium/mojo/bindings/Encoder;

    iget-object p0, p0, Lorg/chromium/mojo/bindings/Encoder;->mEncoderState:Lorg/chromium/mojo/bindings/Encoder$EncoderState;

    invoke-direct {p1, p0}, Lorg/chromium/mojo/bindings/Encoder;-><init>(Lorg/chromium/mojo/bindings/Encoder$EncoderState;)V

    iget-object p0, p1, Lorg/chromium/mojo/bindings/Encoder;->mEncoderState:Lorg/chromium/mojo/bindings/Encoder$EncoderState;

    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Lorg/chromium/mojo/bindings/Encoder$EncoderState;->claimMemory(I)V

    return-object p1
.end method

.method public getEncoderAtDataOffset(Lorg/chromium/mojo/bindings/DataHeader;)Lorg/chromium/mojo/bindings/Encoder;
    .locals 1

    new-instance v0, Lorg/chromium/mojo/bindings/Encoder;

    iget-object p0, p0, Lorg/chromium/mojo/bindings/Encoder;->mEncoderState:Lorg/chromium/mojo/bindings/Encoder$EncoderState;

    invoke-direct {v0, p0}, Lorg/chromium/mojo/bindings/Encoder;-><init>(Lorg/chromium/mojo/bindings/Encoder$EncoderState;)V

    invoke-virtual {v0, p1}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/DataHeader;)V

    return-object v0
.end method

.method public getMessage()Lorg/chromium/mojo/bindings/Message;
    .locals 2

    iget-object v0, p0, Lorg/chromium/mojo/bindings/Encoder;->mEncoderState:Lorg/chromium/mojo/bindings/Encoder$EncoderState;

    iget-object v0, v0, Lorg/chromium/mojo/bindings/Encoder$EncoderState;->byteBuffer:Ljava/nio/ByteBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    iget-object v0, p0, Lorg/chromium/mojo/bindings/Encoder;->mEncoderState:Lorg/chromium/mojo/bindings/Encoder$EncoderState;

    iget-object v1, v0, Lorg/chromium/mojo/bindings/Encoder$EncoderState;->byteBuffer:Ljava/nio/ByteBuffer;

    iget v0, v0, Lorg/chromium/mojo/bindings/Encoder$EncoderState;->dataEnd:I

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    new-instance v0, Lorg/chromium/mojo/bindings/Message;

    iget-object p0, p0, Lorg/chromium/mojo/bindings/Encoder;->mEncoderState:Lorg/chromium/mojo/bindings/Encoder$EncoderState;

    iget-object v1, p0, Lorg/chromium/mojo/bindings/Encoder$EncoderState;->byteBuffer:Ljava/nio/ByteBuffer;

    iget-object p0, p0, Lorg/chromium/mojo/bindings/Encoder$EncoderState;->handles:Ljava/util/List;

    invoke-direct {v0, v1, p0}, Lorg/chromium/mojo/bindings/Message;-><init>(Ljava/nio/ByteBuffer;Ljava/util/List;)V

    return-object v0
.end method
