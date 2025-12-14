.class public final Lorg/chromium/blink/mojom/CommonNavigationParams;
.super Lorg/chromium/mojo/bindings/Struct;
.source "SourceFile"


# annotations
.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# static fields
.field private static final DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

.field private static final VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;


# instance fields
.field public baseUrlForDataUrl:Lorg/chromium/url/mojom/Url;

.field public downloadPolicy:Lorg/chromium/blink/mojom/NavigationDownloadPolicy;

.field public hasUserGesture:Z

.field public hrefTranslate:Ljava/lang/String;

.field public initiatorBaseUrl:Lorg/chromium/url/mojom/Url;

.field public initiatorOrigin:Lorg/chromium/url/internal/mojom/Origin;

.field public initiatorOriginTrialFeatures:[I

.field public inputStart:Lorg/chromium/mojo_base/mojom/TimeTicks;

.field public isHistoryNavigationInNewChildFrame:Z

.field public method:Ljava/lang/String;

.field public navigationStart:Lorg/chromium/mojo_base/mojom/TimeTicks;

.field public navigationType:I

.field public postData:Lorg/chromium/network/mojom/UrlRequestBody;

.field public referrer:Lorg/chromium/blink/mojom/Referrer;

.field public requestDestination:I

.field public shouldCheckMainWorldCsp:I

.field public shouldReplaceCurrentEntry:Z

.field public sourceLocation:Lorg/chromium/network/mojom/SourceLocation;

.field public startedFromContextMenu:Z

.field public textFragmentToken:Z

.field public transition:I

.field public url:Lorg/chromium/url/mojom/Url;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/chromium/mojo/bindings/DataHeader;

    const/16 v1, 0x88

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/chromium/mojo/bindings/DataHeader;-><init>(II)V

    filled-new-array {v0}, [Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v0

    sput-object v0, Lorg/chromium/blink/mojom/CommonNavigationParams;->VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;

    aget-object v0, v0, v2

    sput-object v0, Lorg/chromium/blink/mojom/CommonNavigationParams;->DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

    return-void
.end method


# virtual methods
.method public final encode(Lorg/chromium/mojo/bindings/Encoder;)V
    .locals 5

    sget-object v0, Lorg/chromium/blink/mojom/CommonNavigationParams;->DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

    invoke-virtual {p1, v0}, Lorg/chromium/mojo/bindings/Encoder;->getEncoderAtDataOffset(Lorg/chromium/mojo/bindings/DataHeader;)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object p1

    iget-object v0, p0, Lorg/chromium/blink/mojom/CommonNavigationParams;->url:Lorg/chromium/url/mojom/Url;

    const/16 v1, 0x8

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    iget-object v0, p0, Lorg/chromium/blink/mojom/CommonNavigationParams;->initiatorOrigin:Lorg/chromium/url/internal/mojom/Origin;

    const/16 v1, 0x10

    const/4 v3, 0x1

    invoke-virtual {p1, v0, v1, v3}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    iget-object v0, p0, Lorg/chromium/blink/mojom/CommonNavigationParams;->initiatorBaseUrl:Lorg/chromium/url/mojom/Url;

    const/16 v1, 0x18

    invoke-virtual {p1, v0, v1, v3}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    iget-object v0, p0, Lorg/chromium/blink/mojom/CommonNavigationParams;->referrer:Lorg/chromium/blink/mojom/Referrer;

    const/16 v1, 0x20

    invoke-virtual {p1, v0, v1, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    iget v0, p0, Lorg/chromium/blink/mojom/CommonNavigationParams;->transition:I

    const/16 v1, 0x28

    invoke-virtual {p1, v0, v1}, Lorg/chromium/mojo/bindings/Encoder;->encode(II)V

    iget v0, p0, Lorg/chromium/blink/mojom/CommonNavigationParams;->navigationType:I

    const/16 v1, 0x2c

    invoke-virtual {p1, v0, v1}, Lorg/chromium/mojo/bindings/Encoder;->encode(II)V

    iget-object v0, p0, Lorg/chromium/blink/mojom/CommonNavigationParams;->downloadPolicy:Lorg/chromium/blink/mojom/NavigationDownloadPolicy;

    const/16 v1, 0x30

    invoke-virtual {p1, v0, v1, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    iget-boolean v0, p0, Lorg/chromium/blink/mojom/CommonNavigationParams;->shouldReplaceCurrentEntry:Z

    const/16 v1, 0x38

    invoke-virtual {p1, v0, v1, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget-boolean v0, p0, Lorg/chromium/blink/mojom/CommonNavigationParams;->startedFromContextMenu:Z

    invoke-virtual {p1, v0, v1, v3}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget-boolean v0, p0, Lorg/chromium/blink/mojom/CommonNavigationParams;->hasUserGesture:Z

    const/4 v4, 0x2

    invoke-virtual {p1, v0, v1, v4}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget-boolean v0, p0, Lorg/chromium/blink/mojom/CommonNavigationParams;->textFragmentToken:Z

    const/4 v4, 0x3

    invoke-virtual {p1, v0, v1, v4}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget-boolean v0, p0, Lorg/chromium/blink/mojom/CommonNavigationParams;->isHistoryNavigationInNewChildFrame:Z

    const/4 v4, 0x4

    invoke-virtual {p1, v0, v1, v4}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget v0, p0, Lorg/chromium/blink/mojom/CommonNavigationParams;->shouldCheckMainWorldCsp:I

    const/16 v1, 0x3c

    invoke-virtual {p1, v0, v1}, Lorg/chromium/mojo/bindings/Encoder;->encode(II)V

    iget-object v0, p0, Lorg/chromium/blink/mojom/CommonNavigationParams;->baseUrlForDataUrl:Lorg/chromium/url/mojom/Url;

    const/16 v1, 0x40

    invoke-virtual {p1, v0, v1, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    iget-object v0, p0, Lorg/chromium/blink/mojom/CommonNavigationParams;->navigationStart:Lorg/chromium/mojo_base/mojom/TimeTicks;

    const/16 v1, 0x48

    invoke-virtual {p1, v0, v1, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    iget-object v0, p0, Lorg/chromium/blink/mojom/CommonNavigationParams;->method:Ljava/lang/String;

    const/16 v1, 0x50

    invoke-virtual {p1, v0, v1, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(Ljava/lang/String;IZ)V

    iget-object v0, p0, Lorg/chromium/blink/mojom/CommonNavigationParams;->postData:Lorg/chromium/network/mojom/UrlRequestBody;

    const/16 v1, 0x58

    invoke-virtual {p1, v0, v1, v3}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    iget-object v0, p0, Lorg/chromium/blink/mojom/CommonNavigationParams;->sourceLocation:Lorg/chromium/network/mojom/SourceLocation;

    const/16 v1, 0x60

    invoke-virtual {p1, v0, v1, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    iget-object v0, p0, Lorg/chromium/blink/mojom/CommonNavigationParams;->initiatorOriginTrialFeatures:[I

    const/16 v1, 0x68

    const/4 v3, -0x1

    invoke-virtual {p1, v0, v1, v2, v3}, Lorg/chromium/mojo/bindings/Encoder;->encode([IIII)V

    iget-object v0, p0, Lorg/chromium/blink/mojom/CommonNavigationParams;->hrefTranslate:Ljava/lang/String;

    const/16 v1, 0x70

    invoke-virtual {p1, v0, v1, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(Ljava/lang/String;IZ)V

    iget-object v0, p0, Lorg/chromium/blink/mojom/CommonNavigationParams;->inputStart:Lorg/chromium/mojo_base/mojom/TimeTicks;

    const/16 v1, 0x78

    invoke-virtual {p1, v0, v1, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    iget p0, p0, Lorg/chromium/blink/mojom/CommonNavigationParams;->requestDestination:I

    const/16 v0, 0x80

    invoke-virtual {p1, p0, v0}, Lorg/chromium/mojo/bindings/Encoder;->encode(II)V

    return-void
.end method
