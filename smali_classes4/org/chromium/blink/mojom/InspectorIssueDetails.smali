.class public final Lorg/chromium/blink/mojom/InspectorIssueDetails;
.super Lorg/chromium/mojo/bindings/Struct;
.source "SourceFile"


# annotations
.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# static fields
.field private static final DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

.field private static final VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;


# instance fields
.field public attributionReportingIssueDetails:Lorg/chromium/blink/mojom/AttributionReportingIssueDetails;

.field public blockedByResponseIssueDetails:Lorg/chromium/blink/mojom/BlockedByResponseIssueDetails;

.field public bounceTrackingIssueDetails:Lorg/chromium/blink/mojom/BounceTrackingIssueDetails;

.field public cookieDeprecationMetadataIssueDetails:Lorg/chromium/blink/mojom/CookieDeprecationMetadataIssueDetails;

.field public cookieIssueDetails:Lorg/chromium/blink/mojom/CookieIssueDetails;

.field public cspIssueDetails:Lorg/chromium/blink/mojom/ContentSecurityPolicyIssueDetails;

.field public deprecationIssueDetails:Lorg/chromium/blink/mojom/DeprecationIssueDetails;

.field public federatedAuthRequestDetails:Lorg/chromium/blink/mojom/FederatedAuthRequestIssueDetails;

.field public federatedAuthUserInfoRequestDetails:Lorg/chromium/blink/mojom/FederatedAuthUserInfoRequestIssueDetails;

.field public genericIssueDetails:Lorg/chromium/blink/mojom/GenericIssueDetails;

.field public heavyAdIssueDetails:Lorg/chromium/blink/mojom/HeavyAdIssueDetails;

.field public issueId:Lorg/chromium/mojo_base/mojom/UnguessableToken;

.field public lowTextContrastDetails:Lorg/chromium/blink/mojom/LowTextContrastIssue;

.field public mixedContentIssueDetails:Lorg/chromium/blink/mojom/MixedContentIssueDetails;

.field public partitioningBlobUrlIssueDetails:Lorg/chromium/blink/mojom/PartitioningBlobUrlIssueDetails;

.field public sabIssueDetails:Lorg/chromium/blink/mojom/SharedArrayBufferIssueDetails;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/chromium/mojo/bindings/DataHeader;

    const/16 v1, 0x88

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/chromium/mojo/bindings/DataHeader;-><init>(II)V

    filled-new-array {v0}, [Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v0

    sput-object v0, Lorg/chromium/blink/mojom/InspectorIssueDetails;->VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;

    aget-object v0, v0, v2

    sput-object v0, Lorg/chromium/blink/mojom/InspectorIssueDetails;->DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

    return-void
.end method


# virtual methods
.method public final encode(Lorg/chromium/mojo/bindings/Encoder;)V
    .locals 3

    sget-object v0, Lorg/chromium/blink/mojom/InspectorIssueDetails;->DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

    invoke-virtual {p1, v0}, Lorg/chromium/mojo/bindings/Encoder;->getEncoderAtDataOffset(Lorg/chromium/mojo/bindings/DataHeader;)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object p1

    iget-object v0, p0, Lorg/chromium/blink/mojom/InspectorIssueDetails;->cookieIssueDetails:Lorg/chromium/blink/mojom/CookieIssueDetails;

    const/16 v1, 0x8

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v1, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    iget-object v0, p0, Lorg/chromium/blink/mojom/InspectorIssueDetails;->mixedContentIssueDetails:Lorg/chromium/blink/mojom/MixedContentIssueDetails;

    const/16 v1, 0x10

    invoke-virtual {p1, v0, v1, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    iget-object v0, p0, Lorg/chromium/blink/mojom/InspectorIssueDetails;->blockedByResponseIssueDetails:Lorg/chromium/blink/mojom/BlockedByResponseIssueDetails;

    const/16 v1, 0x18

    invoke-virtual {p1, v0, v1, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    iget-object v0, p0, Lorg/chromium/blink/mojom/InspectorIssueDetails;->cspIssueDetails:Lorg/chromium/blink/mojom/ContentSecurityPolicyIssueDetails;

    const/16 v1, 0x20

    invoke-virtual {p1, v0, v1, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    iget-object v0, p0, Lorg/chromium/blink/mojom/InspectorIssueDetails;->sabIssueDetails:Lorg/chromium/blink/mojom/SharedArrayBufferIssueDetails;

    const/16 v1, 0x28

    invoke-virtual {p1, v0, v1, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    iget-object v0, p0, Lorg/chromium/blink/mojom/InspectorIssueDetails;->heavyAdIssueDetails:Lorg/chromium/blink/mojom/HeavyAdIssueDetails;

    const/16 v1, 0x30

    invoke-virtual {p1, v0, v1, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    iget-object v0, p0, Lorg/chromium/blink/mojom/InspectorIssueDetails;->attributionReportingIssueDetails:Lorg/chromium/blink/mojom/AttributionReportingIssueDetails;

    const/16 v1, 0x38

    invoke-virtual {p1, v0, v1, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    iget-object v0, p0, Lorg/chromium/blink/mojom/InspectorIssueDetails;->lowTextContrastDetails:Lorg/chromium/blink/mojom/LowTextContrastIssue;

    const/16 v1, 0x40

    invoke-virtual {p1, v0, v1, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    iget-object v0, p0, Lorg/chromium/blink/mojom/InspectorIssueDetails;->federatedAuthRequestDetails:Lorg/chromium/blink/mojom/FederatedAuthRequestIssueDetails;

    const/16 v1, 0x48

    invoke-virtual {p1, v0, v1, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    iget-object v0, p0, Lorg/chromium/blink/mojom/InspectorIssueDetails;->bounceTrackingIssueDetails:Lorg/chromium/blink/mojom/BounceTrackingIssueDetails;

    const/16 v1, 0x50

    invoke-virtual {p1, v0, v1, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    iget-object v0, p0, Lorg/chromium/blink/mojom/InspectorIssueDetails;->partitioningBlobUrlIssueDetails:Lorg/chromium/blink/mojom/PartitioningBlobUrlIssueDetails;

    const/16 v1, 0x58

    invoke-virtual {p1, v0, v1, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    iget-object v0, p0, Lorg/chromium/blink/mojom/InspectorIssueDetails;->cookieDeprecationMetadataIssueDetails:Lorg/chromium/blink/mojom/CookieDeprecationMetadataIssueDetails;

    const/16 v1, 0x60

    invoke-virtual {p1, v0, v1, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    iget-object v0, p0, Lorg/chromium/blink/mojom/InspectorIssueDetails;->genericIssueDetails:Lorg/chromium/blink/mojom/GenericIssueDetails;

    const/16 v1, 0x68

    invoke-virtual {p1, v0, v1, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    iget-object v0, p0, Lorg/chromium/blink/mojom/InspectorIssueDetails;->deprecationIssueDetails:Lorg/chromium/blink/mojom/DeprecationIssueDetails;

    const/16 v1, 0x70

    invoke-virtual {p1, v0, v1, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    iget-object v0, p0, Lorg/chromium/blink/mojom/InspectorIssueDetails;->federatedAuthUserInfoRequestDetails:Lorg/chromium/blink/mojom/FederatedAuthUserInfoRequestIssueDetails;

    const/16 v1, 0x78

    invoke-virtual {p1, v0, v1, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    iget-object p0, p0, Lorg/chromium/blink/mojom/InspectorIssueDetails;->issueId:Lorg/chromium/mojo_base/mojom/UnguessableToken;

    const/16 v0, 0x80

    invoke-virtual {p1, p0, v0, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    return-void
.end method
