.class public final Lorg/chromium/blink/mojom/FencedFrameProperties;
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

.field public allowCrossOriginEventReporting:Z

.field public canDisableUntrustedNetwork:Z

.field public containerSize:Lorg/chromium/blink/mojom/PotentiallyOpaqueSize;

.field public contentSize:Lorg/chromium/blink/mojom/PotentiallyOpaqueSize;

.field public deprecatedShouldFreezeInitialSize:Lorg/chromium/blink/mojom/PotentiallyOpaqueBool;

.field public effectiveEnabledPermissions:[I

.field public isCrossOriginContent:Z

.field public mappedUrl:Lorg/chromium/blink/mojom/PotentiallyOpaqueUrl;

.field public mode:I

.field public nestedUrnConfigPairs:Lorg/chromium/blink/mojom/PotentiallyOpaqueUrnConfigVector;

.field public parentPermissionsInfo:Lorg/chromium/blink/mojom/ParentPermissionsInfo;

.field public sharedStorageBudgetMetadata:Lorg/chromium/blink/mojom/PotentiallyOpaqueSharedStorageBudgetMetadata;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/chromium/mojo/bindings/DataHeader;

    const/16 v1, 0x90

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/chromium/mojo/bindings/DataHeader;-><init>(II)V

    filled-new-array {v0}, [Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v0

    sput-object v0, Lorg/chromium/blink/mojom/FencedFrameProperties;->VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;

    aget-object v0, v0, v2

    sput-object v0, Lorg/chromium/blink/mojom/FencedFrameProperties;->DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

    return-void
.end method


# virtual methods
.method public final encode(Lorg/chromium/mojo/bindings/Encoder;)V
    .locals 5

    sget-object v0, Lorg/chromium/blink/mojom/FencedFrameProperties;->DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

    invoke-virtual {p1, v0}, Lorg/chromium/mojo/bindings/Encoder;->getEncoderAtDataOffset(Lorg/chromium/mojo/bindings/DataHeader;)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object p1

    iget-object v0, p0, Lorg/chromium/blink/mojom/FencedFrameProperties;->mappedUrl:Lorg/chromium/blink/mojom/PotentiallyOpaqueUrl;

    const/16 v1, 0x8

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v1, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Union;IZ)V

    iget-object v0, p0, Lorg/chromium/blink/mojom/FencedFrameProperties;->containerSize:Lorg/chromium/blink/mojom/PotentiallyOpaqueSize;

    const/16 v1, 0x18

    invoke-virtual {p1, v0, v1, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Union;IZ)V

    iget-object v0, p0, Lorg/chromium/blink/mojom/FencedFrameProperties;->contentSize:Lorg/chromium/blink/mojom/PotentiallyOpaqueSize;

    const/16 v1, 0x28

    invoke-virtual {p1, v0, v1, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Union;IZ)V

    iget-object v0, p0, Lorg/chromium/blink/mojom/FencedFrameProperties;->deprecatedShouldFreezeInitialSize:Lorg/chromium/blink/mojom/PotentiallyOpaqueBool;

    const/16 v1, 0x38

    invoke-virtual {p1, v0, v1, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Union;IZ)V

    iget-object v0, p0, Lorg/chromium/blink/mojom/FencedFrameProperties;->adAuctionData:Lorg/chromium/blink/mojom/PotentiallyOpaqueAdAuctionData;

    const/16 v1, 0x48

    invoke-virtual {p1, v0, v1, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Union;IZ)V

    iget-object v0, p0, Lorg/chromium/blink/mojom/FencedFrameProperties;->nestedUrnConfigPairs:Lorg/chromium/blink/mojom/PotentiallyOpaqueUrnConfigVector;

    const/16 v1, 0x58

    invoke-virtual {p1, v0, v1, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Union;IZ)V

    iget-object v0, p0, Lorg/chromium/blink/mojom/FencedFrameProperties;->sharedStorageBudgetMetadata:Lorg/chromium/blink/mojom/PotentiallyOpaqueSharedStorageBudgetMetadata;

    const/16 v1, 0x68

    invoke-virtual {p1, v0, v1, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Union;IZ)V

    iget v0, p0, Lorg/chromium/blink/mojom/FencedFrameProperties;->mode:I

    const/16 v1, 0x78

    invoke-virtual {p1, v0, v1}, Lorg/chromium/mojo/bindings/Encoder;->encode(II)V

    iget-boolean v0, p0, Lorg/chromium/blink/mojom/FencedFrameProperties;->canDisableUntrustedNetwork:Z

    const/16 v1, 0x7c

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v1, v3}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget-boolean v0, p0, Lorg/chromium/blink/mojom/FencedFrameProperties;->isCrossOriginContent:Z

    invoke-virtual {p1, v0, v1, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget-boolean v0, p0, Lorg/chromium/blink/mojom/FencedFrameProperties;->allowCrossOriginEventReporting:Z

    const/4 v4, 0x2

    invoke-virtual {p1, v0, v1, v4}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget-object v0, p0, Lorg/chromium/blink/mojom/FencedFrameProperties;->effectiveEnabledPermissions:[I

    const/16 v1, 0x80

    const/4 v4, -0x1

    invoke-virtual {p1, v0, v1, v3, v4}, Lorg/chromium/mojo/bindings/Encoder;->encode([IIII)V

    iget-object p0, p0, Lorg/chromium/blink/mojom/FencedFrameProperties;->parentPermissionsInfo:Lorg/chromium/blink/mojom/ParentPermissionsInfo;

    const/16 v0, 0x88

    invoke-virtual {p1, p0, v0, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    return-void
.end method
