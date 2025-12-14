.class public final Lorg/chromium/media/mojom/SvcGenericMetadata;
.super Lorg/chromium/mojo/bindings/Struct;
.source "SourceFile"


# annotations
.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# static fields
.field private static final DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

.field private static final VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;


# instance fields
.field public followSvcSpec:Z

.field public referenceFlags:Ljava/lang/Short;

.field public refreshFlags:Ljava/lang/Short;

.field public spatialIdx:B

.field public temporalIdx:B


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/chromium/mojo/bindings/DataHeader;

    const/16 v1, 0x10

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/chromium/mojo/bindings/DataHeader;-><init>(II)V

    filled-new-array {v0}, [Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v0

    sput-object v0, Lorg/chromium/media/mojom/SvcGenericMetadata;->VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;

    aget-object v0, v0, v2

    sput-object v0, Lorg/chromium/media/mojom/SvcGenericMetadata;->DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

    return-void
.end method

.method private constructor <init>(I)V
    .locals 1

    const/16 v0, 0x10

    invoke-direct {p0, v0, p1}, Lorg/chromium/mojo/bindings/Struct;-><init>(II)V

    return-void
.end method

.method public static decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/media/mojom/SvcGenericMetadata;
    .locals 5

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Decoder;->increaseStackDepth()V

    :try_start_0
    sget-object v1, Lorg/chromium/media/mojom/SvcGenericMetadata;->VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;

    invoke-virtual {p0, v1}, Lorg/chromium/mojo/bindings/Decoder;->readAndValidateDataHeader([Lorg/chromium/mojo/bindings/DataHeader;)Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v1

    iget v1, v1, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    new-instance v2, Lorg/chromium/media/mojom/SvcGenericMetadata;

    invoke-direct {v2, v1}, Lorg/chromium/media/mojom/SvcGenericMetadata;-><init>(I)V

    const/4 v1, 0x0

    const/16 v3, 0x8

    invoke-virtual {p0, v3, v1}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v1

    iput-boolean v1, v2, Lorg/chromium/media/mojom/SvcGenericMetadata;->followSvcSpec:Z

    const/4 v1, 0x1

    invoke-virtual {p0, v3, v1}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/Short;

    const/16 v4, 0xc

    invoke-virtual {p0, v4}, Lorg/chromium/mojo/bindings/Decoder;->readShort(I)S

    move-result v4

    invoke-direct {v1, v4}, Ljava/lang/Short;-><init>(S)V

    iput-object v1, v2, Lorg/chromium/media/mojom/SvcGenericMetadata;->referenceFlags:Ljava/lang/Short;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_2

    :cond_1
    iput-object v0, v2, Lorg/chromium/media/mojom/SvcGenericMetadata;->referenceFlags:Ljava/lang/Short;

    :goto_0
    const/4 v1, 0x2

    invoke-virtual {p0, v3, v1}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v0, Ljava/lang/Short;

    const/16 v1, 0xe

    invoke-virtual {p0, v1}, Lorg/chromium/mojo/bindings/Decoder;->readShort(I)S

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/Short;-><init>(S)V

    iput-object v0, v2, Lorg/chromium/media/mojom/SvcGenericMetadata;->refreshFlags:Ljava/lang/Short;

    goto :goto_1

    :cond_2
    iput-object v0, v2, Lorg/chromium/media/mojom/SvcGenericMetadata;->refreshFlags:Ljava/lang/Short;

    :goto_1
    const/16 v0, 0x9

    invoke-virtual {p0, v0}, Lorg/chromium/mojo/bindings/Decoder;->readByte(I)B

    move-result v0

    iput-byte v0, v2, Lorg/chromium/media/mojom/SvcGenericMetadata;->temporalIdx:B

    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lorg/chromium/mojo/bindings/Decoder;->readByte(I)B

    move-result v0

    iput-byte v0, v2, Lorg/chromium/media/mojom/SvcGenericMetadata;->spatialIdx:B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Decoder;->decreaseStackDepth()V

    return-object v2

    :goto_2
    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Decoder;->decreaseStackDepth()V

    throw v0
.end method


# virtual methods
.method public final encode(Lorg/chromium/mojo/bindings/Encoder;)V
    .locals 5

    sget-object v0, Lorg/chromium/media/mojom/SvcGenericMetadata;->DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

    invoke-virtual {p1, v0}, Lorg/chromium/mojo/bindings/Encoder;->getEncoderAtDataOffset(Lorg/chromium/mojo/bindings/DataHeader;)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object p1

    iget-boolean v0, p0, Lorg/chromium/media/mojom/SvcGenericMetadata;->followSvcSpec:Z

    const/16 v1, 0x8

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget-object v0, p0, Lorg/chromium/media/mojom/SvcGenericMetadata;->referenceFlags:Ljava/lang/Short;

    const/4 v3, 0x1

    if-eqz v0, :cond_0

    move v4, v3

    goto :goto_0

    :cond_0
    move v4, v2

    :goto_0
    if-eqz v4, :cond_1

    invoke-virtual {v0}, Ljava/lang/Short;->shortValue()S

    move-result v0

    goto :goto_1

    :cond_1
    move v0, v2

    :goto_1
    invoke-virtual {p1, v4, v1, v3}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    const/16 v4, 0xc

    invoke-virtual {p1, v0, v4}, Lorg/chromium/mojo/bindings/Encoder;->encode(SI)V

    iget-object v0, p0, Lorg/chromium/media/mojom/SvcGenericMetadata;->refreshFlags:Ljava/lang/Short;

    if-eqz v0, :cond_2

    goto :goto_2

    :cond_2
    move v3, v2

    :goto_2
    if-eqz v3, :cond_3

    invoke-virtual {v0}, Ljava/lang/Short;->shortValue()S

    move-result v2

    :cond_3
    const/4 v0, 0x2

    invoke-virtual {p1, v3, v1, v0}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    const/16 v0, 0xe

    invoke-virtual {p1, v2, v0}, Lorg/chromium/mojo/bindings/Encoder;->encode(SI)V

    iget-byte v0, p0, Lorg/chromium/media/mojom/SvcGenericMetadata;->temporalIdx:B

    const/16 v1, 0x9

    invoke-virtual {p1, v0, v1}, Lorg/chromium/mojo/bindings/Encoder;->encode(BI)V

    iget-byte p0, p0, Lorg/chromium/media/mojom/SvcGenericMetadata;->spatialIdx:B

    const/16 v0, 0xa

    invoke-virtual {p1, p0, v0}, Lorg/chromium/mojo/bindings/Encoder;->encode(BI)V

    return-void
.end method
