.class public final Lorg/chromium/gpu/mojom/ExportedSharedImage;
.super Lorg/chromium/mojo/bindings/Struct;
.source "SourceFile"


# annotations
.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# static fields
.field private static final DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

.field private static final VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;


# instance fields
.field public bufferHandle:Lorg/chromium/gfx/mojom/GpuMemoryBufferHandle;

.field public bufferUsage:Ljava/lang/Integer;

.field public creationSyncToken:Lorg/chromium/gpu/mojom/SyncToken;

.field public mailbox:Lorg/chromium/gpu/mojom/Mailbox;

.field public metadata:Lorg/chromium/gpu/mojom/SharedImageMetadata;

.field public textureTarget:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/chromium/mojo/bindings/DataHeader;

    const/16 v1, 0x38

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/chromium/mojo/bindings/DataHeader;-><init>(II)V

    filled-new-array {v0}, [Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v0

    sput-object v0, Lorg/chromium/gpu/mojom/ExportedSharedImage;->VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;

    aget-object v0, v0, v2

    sput-object v0, Lorg/chromium/gpu/mojom/ExportedSharedImage;->DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

    return-void
.end method

.method private constructor <init>(I)V
    .locals 1

    const/16 v0, 0x38

    invoke-direct {p0, v0, p1}, Lorg/chromium/mojo/bindings/Struct;-><init>(II)V

    return-void
.end method

.method public static decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/gpu/mojom/ExportedSharedImage;
    .locals 5

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Decoder;->increaseStackDepth()V

    :try_start_0
    sget-object v1, Lorg/chromium/gpu/mojom/ExportedSharedImage;->VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;

    invoke-virtual {p0, v1}, Lorg/chromium/mojo/bindings/Decoder;->readAndValidateDataHeader([Lorg/chromium/mojo/bindings/DataHeader;)Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v1

    iget v1, v1, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    new-instance v2, Lorg/chromium/gpu/mojom/ExportedSharedImage;

    invoke-direct {v2, v1}, Lorg/chromium/gpu/mojom/ExportedSharedImage;-><init>(I)V

    const/16 v1, 0x8

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v3}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v1

    invoke-static {v1}, Lorg/chromium/gpu/mojom/Mailbox;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/gpu/mojom/Mailbox;

    move-result-object v1

    iput-object v1, v2, Lorg/chromium/gpu/mojom/ExportedSharedImage;->mailbox:Lorg/chromium/gpu/mojom/Mailbox;

    const/16 v1, 0x10

    invoke-virtual {p0, v1, v3}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v1

    invoke-static {v1}, Lorg/chromium/gpu/mojom/SharedImageMetadata;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/gpu/mojom/SharedImageMetadata;

    move-result-object v1

    iput-object v1, v2, Lorg/chromium/gpu/mojom/ExportedSharedImage;->metadata:Lorg/chromium/gpu/mojom/SharedImageMetadata;

    const/16 v1, 0x18

    invoke-virtual {p0, v1, v3}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v1

    invoke-static {v1}, Lorg/chromium/gpu/mojom/SyncToken;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/gpu/mojom/SyncToken;

    move-result-object v1

    iput-object v1, v2, Lorg/chromium/gpu/mojom/ExportedSharedImage;->creationSyncToken:Lorg/chromium/gpu/mojom/SyncToken;

    const/16 v1, 0x20

    const/4 v4, 0x1

    invoke-virtual {p0, v1, v4}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v1

    invoke-static {v1}, Lorg/chromium/gfx/mojom/GpuMemoryBufferHandle;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/gfx/mojom/GpuMemoryBufferHandle;

    move-result-object v1

    iput-object v1, v2, Lorg/chromium/gpu/mojom/ExportedSharedImage;->bufferHandle:Lorg/chromium/gfx/mojom/GpuMemoryBufferHandle;

    const/16 v1, 0x28

    invoke-virtual {p0, v1, v3}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v0, Ljava/lang/Integer;

    const/16 v1, 0x2c

    invoke-virtual {p0, v1}, Lorg/chromium/mojo/bindings/Decoder;->readInt(I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    iput-object v0, v2, Lorg/chromium/gpu/mojom/ExportedSharedImage;->bufferUsage:Ljava/lang/Integer;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_1
    iput-object v0, v2, Lorg/chromium/gpu/mojom/ExportedSharedImage;->bufferUsage:Ljava/lang/Integer;

    :goto_0
    const/16 v0, 0x30

    invoke-virtual {p0, v0}, Lorg/chromium/mojo/bindings/Decoder;->readInt(I)I

    move-result v0

    iput v0, v2, Lorg/chromium/gpu/mojom/ExportedSharedImage;->textureTarget:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Decoder;->decreaseStackDepth()V

    return-object v2

    :goto_1
    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Decoder;->decreaseStackDepth()V

    throw v0
.end method


# virtual methods
.method public final encode(Lorg/chromium/mojo/bindings/Encoder;)V
    .locals 4

    sget-object v0, Lorg/chromium/gpu/mojom/ExportedSharedImage;->DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

    invoke-virtual {p1, v0}, Lorg/chromium/mojo/bindings/Encoder;->getEncoderAtDataOffset(Lorg/chromium/mojo/bindings/DataHeader;)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object p1

    iget-object v0, p0, Lorg/chromium/gpu/mojom/ExportedSharedImage;->mailbox:Lorg/chromium/gpu/mojom/Mailbox;

    const/16 v1, 0x8

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    iget-object v0, p0, Lorg/chromium/gpu/mojom/ExportedSharedImage;->metadata:Lorg/chromium/gpu/mojom/SharedImageMetadata;

    const/16 v1, 0x10

    invoke-virtual {p1, v0, v1, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    iget-object v0, p0, Lorg/chromium/gpu/mojom/ExportedSharedImage;->creationSyncToken:Lorg/chromium/gpu/mojom/SyncToken;

    const/16 v1, 0x18

    invoke-virtual {p1, v0, v1, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    iget-object v0, p0, Lorg/chromium/gpu/mojom/ExportedSharedImage;->bufferHandle:Lorg/chromium/gfx/mojom/GpuMemoryBufferHandle;

    const/16 v1, 0x20

    const/4 v3, 0x1

    invoke-virtual {p1, v0, v1, v3}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    iget-object v0, p0, Lorg/chromium/gpu/mojom/ExportedSharedImage;->bufferUsage:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    if-eqz v3, :cond_1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_1

    :cond_1
    move v0, v2

    :goto_1
    const/16 v1, 0x28

    invoke-virtual {p1, v3, v1, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    const/16 v1, 0x2c

    invoke-virtual {p1, v0, v1}, Lorg/chromium/mojo/bindings/Encoder;->encode(II)V

    iget p0, p0, Lorg/chromium/gpu/mojom/ExportedSharedImage;->textureTarget:I

    const/16 v0, 0x30

    invoke-virtual {p1, p0, v0}, Lorg/chromium/mojo/bindings/Encoder;->encode(II)V

    return-void
.end method
