.class public final Lorg/chromium/network/mojom/NetworkContextFilePaths;
.super Lorg/chromium/mojo/bindings/Struct;
.source "SourceFile"


# annotations
.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# static fields
.field private static final DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

.field private static final VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;


# instance fields
.field public cookieDatabaseName:Lorg/chromium/mojo_base/mojom/FilePath;

.field public dataDirectory:Lorg/chromium/network/mojom/TransferableDirectory;

.field public deviceBoundSessionsDatabaseName:Lorg/chromium/mojo_base/mojom/FilePath;

.field public httpCacheDirectory:Lorg/chromium/network/mojom/TransferableDirectory;

.field public httpServerPropertiesFileName:Lorg/chromium/mojo_base/mojom/FilePath;

.field public reportingAndNelStoreDatabaseName:Lorg/chromium/mojo_base/mojom/FilePath;

.field public sctAuditingPendingReportsFileName:Lorg/chromium/mojo_base/mojom/FilePath;

.field public sharedDictionaryDirectory:Lorg/chromium/network/mojom/TransferableDirectory;

.field public transportSecurityPersisterFileName:Lorg/chromium/mojo_base/mojom/FilePath;

.field public triggerMigration:Z

.field public trustTokenDatabaseName:Lorg/chromium/mojo_base/mojom/FilePath;

.field public unsandboxedDataPath:Lorg/chromium/mojo_base/mojom/FilePath;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/chromium/mojo/bindings/DataHeader;

    const/16 v1, 0x80

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/chromium/mojo/bindings/DataHeader;-><init>(II)V

    filled-new-array {v0}, [Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v0

    sput-object v0, Lorg/chromium/network/mojom/NetworkContextFilePaths;->VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;

    aget-object v0, v0, v2

    sput-object v0, Lorg/chromium/network/mojom/NetworkContextFilePaths;->DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

    return-void
.end method

.method private constructor <init>(I)V
    .locals 1

    const/16 v0, 0x80

    invoke-direct {p0, v0, p1}, Lorg/chromium/mojo/bindings/Struct;-><init>(II)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lorg/chromium/network/mojom/NetworkContextFilePaths;->triggerMigration:Z

    return-void
.end method

.method public static decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/network/mojom/NetworkContextFilePaths;
    .locals 3

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Decoder;->increaseStackDepth()V

    :try_start_0
    sget-object v0, Lorg/chromium/network/mojom/NetworkContextFilePaths;->VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;

    invoke-virtual {p0, v0}, Lorg/chromium/mojo/bindings/Decoder;->readAndValidateDataHeader([Lorg/chromium/mojo/bindings/DataHeader;)Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v0

    iget v0, v0, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    new-instance v1, Lorg/chromium/network/mojom/NetworkContextFilePaths;

    invoke-direct {v1, v0}, Lorg/chromium/network/mojom/NetworkContextFilePaths;-><init>(I)V

    const/16 v0, 0x8

    invoke-static {p0, v0}, Lorg/chromium/network/mojom/TransferableDirectory;->decode(Lorg/chromium/mojo/bindings/Decoder;I)Lorg/chromium/network/mojom/TransferableDirectory;

    move-result-object v0

    iput-object v0, v1, Lorg/chromium/network/mojom/NetworkContextFilePaths;->sharedDictionaryDirectory:Lorg/chromium/network/mojom/TransferableDirectory;

    const/16 v0, 0x18

    invoke-static {p0, v0}, Lorg/chromium/network/mojom/TransferableDirectory;->decode(Lorg/chromium/mojo/bindings/Decoder;I)Lorg/chromium/network/mojom/TransferableDirectory;

    move-result-object v0

    iput-object v0, v1, Lorg/chromium/network/mojom/NetworkContextFilePaths;->httpCacheDirectory:Lorg/chromium/network/mojom/TransferableDirectory;

    const/16 v0, 0x28

    invoke-static {p0, v0}, Lorg/chromium/network/mojom/TransferableDirectory;->decode(Lorg/chromium/mojo/bindings/Decoder;I)Lorg/chromium/network/mojom/TransferableDirectory;

    move-result-object v0

    iput-object v0, v1, Lorg/chromium/network/mojom/NetworkContextFilePaths;->dataDirectory:Lorg/chromium/network/mojom/TransferableDirectory;

    const/16 v0, 0x38

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v2}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/mojo_base/mojom/FilePath;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/mojo_base/mojom/FilePath;

    move-result-object v0

    iput-object v0, v1, Lorg/chromium/network/mojom/NetworkContextFilePaths;->unsandboxedDataPath:Lorg/chromium/mojo_base/mojom/FilePath;

    const/16 v0, 0x40

    invoke-virtual {p0, v0, v2}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/mojo_base/mojom/FilePath;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/mojo_base/mojom/FilePath;

    move-result-object v0

    iput-object v0, v1, Lorg/chromium/network/mojom/NetworkContextFilePaths;->cookieDatabaseName:Lorg/chromium/mojo_base/mojom/FilePath;

    const/16 v0, 0x48

    invoke-virtual {p0, v0, v2}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/mojo_base/mojom/FilePath;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/mojo_base/mojom/FilePath;

    move-result-object v0

    iput-object v0, v1, Lorg/chromium/network/mojom/NetworkContextFilePaths;->deviceBoundSessionsDatabaseName:Lorg/chromium/mojo_base/mojom/FilePath;

    const/16 v0, 0x50

    invoke-virtual {p0, v0, v2}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/mojo_base/mojom/FilePath;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/mojo_base/mojom/FilePath;

    move-result-object v0

    iput-object v0, v1, Lorg/chromium/network/mojom/NetworkContextFilePaths;->trustTokenDatabaseName:Lorg/chromium/mojo_base/mojom/FilePath;

    const/16 v0, 0x58

    invoke-virtual {p0, v0, v2}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/mojo_base/mojom/FilePath;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/mojo_base/mojom/FilePath;

    move-result-object v0

    iput-object v0, v1, Lorg/chromium/network/mojom/NetworkContextFilePaths;->httpServerPropertiesFileName:Lorg/chromium/mojo_base/mojom/FilePath;

    const/16 v0, 0x60

    invoke-virtual {p0, v0, v2}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/mojo_base/mojom/FilePath;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/mojo_base/mojom/FilePath;

    move-result-object v0

    iput-object v0, v1, Lorg/chromium/network/mojom/NetworkContextFilePaths;->transportSecurityPersisterFileName:Lorg/chromium/mojo_base/mojom/FilePath;

    const/16 v0, 0x68

    invoke-virtual {p0, v0, v2}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/mojo_base/mojom/FilePath;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/mojo_base/mojom/FilePath;

    move-result-object v0

    iput-object v0, v1, Lorg/chromium/network/mojom/NetworkContextFilePaths;->reportingAndNelStoreDatabaseName:Lorg/chromium/mojo_base/mojom/FilePath;

    const/16 v0, 0x70

    invoke-virtual {p0, v0, v2}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/mojo_base/mojom/FilePath;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/mojo_base/mojom/FilePath;

    move-result-object v0

    iput-object v0, v1, Lorg/chromium/network/mojom/NetworkContextFilePaths;->sctAuditingPendingReportsFileName:Lorg/chromium/mojo_base/mojom/FilePath;

    const/16 v0, 0x78

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v0

    iput-boolean v0, v1, Lorg/chromium/network/mojom/NetworkContextFilePaths;->triggerMigration:Z
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

    sget-object v0, Lorg/chromium/network/mojom/NetworkContextFilePaths;->DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

    invoke-virtual {p1, v0}, Lorg/chromium/mojo/bindings/Encoder;->getEncoderAtDataOffset(Lorg/chromium/mojo/bindings/DataHeader;)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object p1

    iget-object v0, p0, Lorg/chromium/network/mojom/NetworkContextFilePaths;->sharedDictionaryDirectory:Lorg/chromium/network/mojom/TransferableDirectory;

    const/16 v1, 0x8

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v1, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Union;IZ)V

    iget-object v0, p0, Lorg/chromium/network/mojom/NetworkContextFilePaths;->httpCacheDirectory:Lorg/chromium/network/mojom/TransferableDirectory;

    const/16 v1, 0x18

    invoke-virtual {p1, v0, v1, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Union;IZ)V

    iget-object v0, p0, Lorg/chromium/network/mojom/NetworkContextFilePaths;->dataDirectory:Lorg/chromium/network/mojom/TransferableDirectory;

    const/16 v1, 0x28

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v1, v3}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Union;IZ)V

    iget-object v0, p0, Lorg/chromium/network/mojom/NetworkContextFilePaths;->unsandboxedDataPath:Lorg/chromium/mojo_base/mojom/FilePath;

    const/16 v1, 0x38

    invoke-virtual {p1, v0, v1, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    iget-object v0, p0, Lorg/chromium/network/mojom/NetworkContextFilePaths;->cookieDatabaseName:Lorg/chromium/mojo_base/mojom/FilePath;

    const/16 v1, 0x40

    invoke-virtual {p1, v0, v1, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    iget-object v0, p0, Lorg/chromium/network/mojom/NetworkContextFilePaths;->deviceBoundSessionsDatabaseName:Lorg/chromium/mojo_base/mojom/FilePath;

    const/16 v1, 0x48

    invoke-virtual {p1, v0, v1, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    iget-object v0, p0, Lorg/chromium/network/mojom/NetworkContextFilePaths;->trustTokenDatabaseName:Lorg/chromium/mojo_base/mojom/FilePath;

    const/16 v1, 0x50

    invoke-virtual {p1, v0, v1, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    iget-object v0, p0, Lorg/chromium/network/mojom/NetworkContextFilePaths;->httpServerPropertiesFileName:Lorg/chromium/mojo_base/mojom/FilePath;

    const/16 v1, 0x58

    invoke-virtual {p1, v0, v1, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    iget-object v0, p0, Lorg/chromium/network/mojom/NetworkContextFilePaths;->transportSecurityPersisterFileName:Lorg/chromium/mojo_base/mojom/FilePath;

    const/16 v1, 0x60

    invoke-virtual {p1, v0, v1, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    iget-object v0, p0, Lorg/chromium/network/mojom/NetworkContextFilePaths;->reportingAndNelStoreDatabaseName:Lorg/chromium/mojo_base/mojom/FilePath;

    const/16 v1, 0x68

    invoke-virtual {p1, v0, v1, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    iget-object v0, p0, Lorg/chromium/network/mojom/NetworkContextFilePaths;->sctAuditingPendingReportsFileName:Lorg/chromium/mojo_base/mojom/FilePath;

    const/16 v1, 0x70

    invoke-virtual {p1, v0, v1, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    iget-boolean p0, p0, Lorg/chromium/network/mojom/NetworkContextFilePaths;->triggerMigration:Z

    const/16 v0, 0x78

    invoke-virtual {p1, p0, v0, v3}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    return-void
.end method
