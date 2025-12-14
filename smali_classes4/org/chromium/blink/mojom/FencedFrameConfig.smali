.class public final Lorg/chromium/blink/mojom/FencedFrameConfig;
.super Lorg/chromium/mojo/bindings/Struct;
.source "SourceFile"


# annotations
.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# static fields
.field private static final DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

.field private static final VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;


# instance fields
.field public adAuctionData:Lorg/chromium/blink/mojom/PotentiallyOpaqueAdAuctionData;

.field public containerSize:Lorg/chromium/blink/mojom/PotentiallyOpaqueSize;

.field public contentSize:Lorg/chromium/blink/mojom/PotentiallyOpaqueSize;

.field public deprecatedShouldFreezeInitialSize:Lorg/chromium/blink/mojom/PotentiallyOpaqueBool;

.field public effectiveEnabledPermissions:[I

.field public mappedUrl:Lorg/chromium/blink/mojom/PotentiallyOpaqueUrl;

.field public mode:I

.field public nestedConfigs:Lorg/chromium/blink/mojom/PotentiallyOpaqueConfigVector;

.field public parentPermissionsInfo:Lorg/chromium/blink/mojom/ParentPermissionsInfo;

.field public sharedStorageBudgetMetadata:Lorg/chromium/blink/mojom/PotentiallyOpaqueSharedStorageBudgetMetadata;

.field public urnUuid:Lorg/chromium/url/mojom/Url;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/chromium/mojo/bindings/DataHeader;

    const/16 v1, 0x98

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/chromium/mojo/bindings/DataHeader;-><init>(II)V

    filled-new-array {v0}, [Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v0

    sput-object v0, Lorg/chromium/blink/mojom/FencedFrameConfig;->VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;

    aget-object v0, v0, v2

    sput-object v0, Lorg/chromium/blink/mojom/FencedFrameConfig;->DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

    return-void
.end method

.method private constructor <init>(I)V
    .locals 1

    const/16 v0, 0x98

    invoke-direct {p0, v0, p1}, Lorg/chromium/mojo/bindings/Struct;-><init>(II)V

    return-void
.end method

.method public static decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/blink/mojom/FencedFrameConfig;
    .locals 4

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Decoder;->increaseStackDepth()V

    :try_start_0
    sget-object v0, Lorg/chromium/blink/mojom/FencedFrameConfig;->VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;

    invoke-virtual {p0, v0}, Lorg/chromium/mojo/bindings/Decoder;->readAndValidateDataHeader([Lorg/chromium/mojo/bindings/DataHeader;)Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v0

    iget v0, v0, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    new-instance v1, Lorg/chromium/blink/mojom/FencedFrameConfig;

    invoke-direct {v1, v0}, Lorg/chromium/blink/mojom/FencedFrameConfig;-><init>(I)V

    const/16 v0, 0x8

    invoke-static {p0, v0}, Lorg/chromium/blink/mojom/PotentiallyOpaqueUrl;->decode(Lorg/chromium/mojo/bindings/Decoder;I)Lorg/chromium/blink/mojom/PotentiallyOpaqueUrl;

    move-result-object v0

    iput-object v0, v1, Lorg/chromium/blink/mojom/FencedFrameConfig;->mappedUrl:Lorg/chromium/blink/mojom/PotentiallyOpaqueUrl;

    const/16 v0, 0x18

    invoke-static {p0, v0}, Lorg/chromium/blink/mojom/PotentiallyOpaqueSize;->decode(Lorg/chromium/mojo/bindings/Decoder;I)Lorg/chromium/blink/mojom/PotentiallyOpaqueSize;

    move-result-object v0

    iput-object v0, v1, Lorg/chromium/blink/mojom/FencedFrameConfig;->containerSize:Lorg/chromium/blink/mojom/PotentiallyOpaqueSize;

    const/16 v0, 0x28

    invoke-static {p0, v0}, Lorg/chromium/blink/mojom/PotentiallyOpaqueSize;->decode(Lorg/chromium/mojo/bindings/Decoder;I)Lorg/chromium/blink/mojom/PotentiallyOpaqueSize;

    move-result-object v0

    iput-object v0, v1, Lorg/chromium/blink/mojom/FencedFrameConfig;->contentSize:Lorg/chromium/blink/mojom/PotentiallyOpaqueSize;

    const/16 v0, 0x38

    invoke-static {p0, v0}, Lorg/chromium/blink/mojom/PotentiallyOpaqueBool;->decode(Lorg/chromium/mojo/bindings/Decoder;I)Lorg/chromium/blink/mojom/PotentiallyOpaqueBool;

    move-result-object v0

    iput-object v0, v1, Lorg/chromium/blink/mojom/FencedFrameConfig;->deprecatedShouldFreezeInitialSize:Lorg/chromium/blink/mojom/PotentiallyOpaqueBool;

    const/16 v0, 0x48

    invoke-static {p0, v0}, Lorg/chromium/blink/mojom/PotentiallyOpaqueAdAuctionData;->decode(Lorg/chromium/mojo/bindings/Decoder;I)Lorg/chromium/blink/mojom/PotentiallyOpaqueAdAuctionData;

    move-result-object v0

    iput-object v0, v1, Lorg/chromium/blink/mojom/FencedFrameConfig;->adAuctionData:Lorg/chromium/blink/mojom/PotentiallyOpaqueAdAuctionData;

    const/16 v0, 0x58

    invoke-static {p0, v0}, Lorg/chromium/blink/mojom/PotentiallyOpaqueConfigVector;->decode(Lorg/chromium/mojo/bindings/Decoder;I)Lorg/chromium/blink/mojom/PotentiallyOpaqueConfigVector;

    move-result-object v0

    iput-object v0, v1, Lorg/chromium/blink/mojom/FencedFrameConfig;->nestedConfigs:Lorg/chromium/blink/mojom/PotentiallyOpaqueConfigVector;

    const/16 v0, 0x68

    invoke-static {p0, v0}, Lorg/chromium/blink/mojom/PotentiallyOpaqueSharedStorageBudgetMetadata;->decode(Lorg/chromium/mojo/bindings/Decoder;I)Lorg/chromium/blink/mojom/PotentiallyOpaqueSharedStorageBudgetMetadata;

    move-result-object v0

    iput-object v0, v1, Lorg/chromium/blink/mojom/FencedFrameConfig;->sharedStorageBudgetMetadata:Lorg/chromium/blink/mojom/PotentiallyOpaqueSharedStorageBudgetMetadata;

    const/16 v0, 0x78

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/url/mojom/Url;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/url/mojom/Url;

    move-result-object v0

    iput-object v0, v1, Lorg/chromium/blink/mojom/FencedFrameConfig;->urnUuid:Lorg/chromium/url/mojom/Url;

    const/16 v0, 0x80

    invoke-virtual {p0, v0}, Lorg/chromium/mojo/bindings/Decoder;->readInt(I)I

    move-result v0

    iput v0, v1, Lorg/chromium/blink/mojom/FencedFrameConfig;->mode:I

    invoke-static {v0}, Lorg/chromium/blink/mojom/DeprecatedFencedFrameMode;->validate(I)V

    iget v0, v1, Lorg/chromium/blink/mojom/FencedFrameConfig;->mode:I

    invoke-static {v0}, Lorg/chromium/blink/mojom/DeprecatedFencedFrameMode;->toKnownValue(I)I

    move-result v0

    iput v0, v1, Lorg/chromium/blink/mojom/FencedFrameConfig;->mode:I

    const/16 v0, 0x88

    const/4 v3, -0x1

    invoke-virtual {p0, v0, v2, v3}, Lorg/chromium/mojo/bindings/Decoder;->readInts(III)[I

    move-result-object v0

    iput-object v0, v1, Lorg/chromium/blink/mojom/FencedFrameConfig;->effectiveEnabledPermissions:[I

    :goto_0
    iget-object v0, v1, Lorg/chromium/blink/mojom/FencedFrameConfig;->effectiveEnabledPermissions:[I

    array-length v3, v0

    if-ge v2, v3, :cond_1

    aget v0, v0, v2

    invoke-static {v0}, Lorg/chromium/network/mojom/PermissionsPolicyFeature;->validate(I)V

    iget-object v0, v1, Lorg/chromium/blink/mojom/FencedFrameConfig;->effectiveEnabledPermissions:[I

    aget v3, v0, v2

    invoke-static {v3}, Lorg/chromium/network/mojom/PermissionsPolicyFeature;->toKnownValue(I)I

    move-result v3

    aput v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_1
    const/16 v0, 0x90

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v2}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/blink/mojom/ParentPermissionsInfo;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/blink/mojom/ParentPermissionsInfo;

    move-result-object v0

    iput-object v0, v1, Lorg/chromium/blink/mojom/FencedFrameConfig;->parentPermissionsInfo:Lorg/chromium/blink/mojom/ParentPermissionsInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Decoder;->decreaseStackDepth()V

    return-object v1

    :goto_1
    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Decoder;->decreaseStackDepth()V

    throw v0
.end method


# virtual methods
.method public final encode(Lorg/chromium/mojo/bindings/Encoder;)V
    .locals 5

    sget-object v0, Lorg/chromium/blink/mojom/FencedFrameConfig;->DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

    invoke-virtual {p1, v0}, Lorg/chromium/mojo/bindings/Encoder;->getEncoderAtDataOffset(Lorg/chromium/mojo/bindings/DataHeader;)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object p1

    iget-object v0, p0, Lorg/chromium/blink/mojom/FencedFrameConfig;->mappedUrl:Lorg/chromium/blink/mojom/PotentiallyOpaqueUrl;

    const/16 v1, 0x8

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v1, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Union;IZ)V

    iget-object v0, p0, Lorg/chromium/blink/mojom/FencedFrameConfig;->containerSize:Lorg/chromium/blink/mojom/PotentiallyOpaqueSize;

    const/16 v1, 0x18

    invoke-virtual {p1, v0, v1, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Union;IZ)V

    iget-object v0, p0, Lorg/chromium/blink/mojom/FencedFrameConfig;->contentSize:Lorg/chromium/blink/mojom/PotentiallyOpaqueSize;

    const/16 v1, 0x28

    invoke-virtual {p1, v0, v1, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Union;IZ)V

    iget-object v0, p0, Lorg/chromium/blink/mojom/FencedFrameConfig;->deprecatedShouldFreezeInitialSize:Lorg/chromium/blink/mojom/PotentiallyOpaqueBool;

    const/16 v1, 0x38

    invoke-virtual {p1, v0, v1, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Union;IZ)V

    iget-object v0, p0, Lorg/chromium/blink/mojom/FencedFrameConfig;->adAuctionData:Lorg/chromium/blink/mojom/PotentiallyOpaqueAdAuctionData;

    const/16 v1, 0x48

    invoke-virtual {p1, v0, v1, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Union;IZ)V

    iget-object v0, p0, Lorg/chromium/blink/mojom/FencedFrameConfig;->nestedConfigs:Lorg/chromium/blink/mojom/PotentiallyOpaqueConfigVector;

    const/16 v1, 0x58

    invoke-virtual {p1, v0, v1, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Union;IZ)V

    iget-object v0, p0, Lorg/chromium/blink/mojom/FencedFrameConfig;->sharedStorageBudgetMetadata:Lorg/chromium/blink/mojom/PotentiallyOpaqueSharedStorageBudgetMetadata;

    const/16 v1, 0x68

    invoke-virtual {p1, v0, v1, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Union;IZ)V

    iget-object v0, p0, Lorg/chromium/blink/mojom/FencedFrameConfig;->urnUuid:Lorg/chromium/url/mojom/Url;

    const/16 v1, 0x78

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v1, v3}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    iget v0, p0, Lorg/chromium/blink/mojom/FencedFrameConfig;->mode:I

    const/16 v1, 0x80

    invoke-virtual {p1, v0, v1}, Lorg/chromium/mojo/bindings/Encoder;->encode(II)V

    iget-object v0, p0, Lorg/chromium/blink/mojom/FencedFrameConfig;->effectiveEnabledPermissions:[I

    const/16 v1, 0x88

    const/4 v4, -0x1

    invoke-virtual {p1, v0, v1, v3, v4}, Lorg/chromium/mojo/bindings/Encoder;->encode([IIII)V

    iget-object p0, p0, Lorg/chromium/blink/mojom/FencedFrameConfig;->parentPermissionsInfo:Lorg/chromium/blink/mojom/ParentPermissionsInfo;

    const/16 v0, 0x90

    invoke-virtual {p1, p0, v0, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    return-void
.end method
