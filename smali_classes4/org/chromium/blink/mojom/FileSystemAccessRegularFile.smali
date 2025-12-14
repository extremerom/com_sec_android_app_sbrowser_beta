.class public final Lorg/chromium/blink/mojom/FileSystemAccessRegularFile;
.super Lorg/chromium/mojo/bindings/Struct;
.source "SourceFile"


# annotations
.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# static fields
.field private static final DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

.field private static final VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;


# instance fields
.field public fileModificationHost:Lorg/chromium/blink/mojom/FileSystemAccessFileModificationHost;

.field public fileSize:J

.field public osFile:Lorg/chromium/mojo_base/mojom/File;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/chromium/mojo/bindings/DataHeader;

    const/16 v1, 0x20

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/chromium/mojo/bindings/DataHeader;-><init>(II)V

    filled-new-array {v0}, [Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v0

    sput-object v0, Lorg/chromium/blink/mojom/FileSystemAccessRegularFile;->VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;

    aget-object v0, v0, v2

    sput-object v0, Lorg/chromium/blink/mojom/FileSystemAccessRegularFile;->DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

    return-void
.end method

.method private constructor <init>(I)V
    .locals 1

    const/16 v0, 0x20

    invoke-direct {p0, v0, p1}, Lorg/chromium/mojo/bindings/Struct;-><init>(II)V

    return-void
.end method

.method public static decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/blink/mojom/FileSystemAccessRegularFile;
    .locals 5

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Decoder;->increaseStackDepth()V

    :try_start_0
    sget-object v0, Lorg/chromium/blink/mojom/FileSystemAccessRegularFile;->VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;

    invoke-virtual {p0, v0}, Lorg/chromium/mojo/bindings/Decoder;->readAndValidateDataHeader([Lorg/chromium/mojo/bindings/DataHeader;)Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v0

    iget v0, v0, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    new-instance v1, Lorg/chromium/blink/mojom/FileSystemAccessRegularFile;

    invoke-direct {v1, v0}, Lorg/chromium/blink/mojom/FileSystemAccessRegularFile;-><init>(I)V

    const/16 v0, 0x8

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/mojo_base/mojom/File;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/mojo_base/mojom/File;

    move-result-object v0

    iput-object v0, v1, Lorg/chromium/blink/mojom/FileSystemAccessRegularFile;->osFile:Lorg/chromium/mojo_base/mojom/File;

    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Lorg/chromium/mojo/bindings/Decoder;->readLong(I)J

    move-result-wide v3

    iput-wide v3, v1, Lorg/chromium/blink/mojom/FileSystemAccessRegularFile;->fileSize:J

    sget-object v0, Lorg/chromium/blink/mojom/FileSystemAccessFileModificationHost;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    const/16 v3, 0x18

    invoke-virtual {p0, v3, v2, v0}, Lorg/chromium/mojo/bindings/Decoder;->readServiceInterface(IZLorg/chromium/mojo/bindings/Interface$Manager;)Lorg/chromium/mojo/bindings/Interface$Proxy;

    move-result-object v0

    check-cast v0, Lorg/chromium/blink/mojom/FileSystemAccessFileModificationHost;

    iput-object v0, v1, Lorg/chromium/blink/mojom/FileSystemAccessRegularFile;->fileModificationHost:Lorg/chromium/blink/mojom/FileSystemAccessFileModificationHost;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Decoder;->decreaseStackDepth()V

    return-object v1

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Decoder;->decreaseStackDepth()V

    throw v0
.end method


# virtual methods
.method public final encode(Lorg/chromium/mojo/bindings/Encoder;)V
    .locals 4

    sget-object v0, Lorg/chromium/blink/mojom/FileSystemAccessRegularFile;->DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

    invoke-virtual {p1, v0}, Lorg/chromium/mojo/bindings/Encoder;->getEncoderAtDataOffset(Lorg/chromium/mojo/bindings/DataHeader;)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object p1

    iget-object v0, p0, Lorg/chromium/blink/mojom/FileSystemAccessRegularFile;->osFile:Lorg/chromium/mojo_base/mojom/File;

    const/16 v1, 0x8

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    iget-wide v0, p0, Lorg/chromium/blink/mojom/FileSystemAccessRegularFile;->fileSize:J

    const/16 v3, 0x10

    invoke-virtual {p1, v0, v1, v3}, Lorg/chromium/mojo/bindings/Encoder;->encode(JI)V

    iget-object p0, p0, Lorg/chromium/blink/mojom/FileSystemAccessRegularFile;->fileModificationHost:Lorg/chromium/blink/mojom/FileSystemAccessFileModificationHost;

    const/16 v0, 0x18

    sget-object v1, Lorg/chromium/blink/mojom/FileSystemAccessFileModificationHost;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    invoke-virtual {p1, p0, v0, v2, v1}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Interface;IZLorg/chromium/mojo/bindings/Interface$Manager;)V

    return-void
.end method
