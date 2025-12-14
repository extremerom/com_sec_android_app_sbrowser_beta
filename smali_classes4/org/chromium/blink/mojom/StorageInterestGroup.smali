.class public final Lorg/chromium/blink/mojom/StorageInterestGroup;
.super Lorg/chromium/mojo/bindings/Struct;
.source "SourceFile"


# annotations
.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# static fields
.field private static final DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

.field private static final VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;


# instance fields
.field public biddingBrowserSignals:Lorg/chromium/blink/mojom/BiddingBrowserSignals;

.field public estimatedSize:J

.field public interestGroup:Lorg/chromium/blink/mojom/InterestGroup;

.field public joinTime:Lorg/chromium/mojo_base/mojom/Time;

.field public joiningOrigin:Lorg/chromium/url/internal/mojom/Origin;

.field public lastUpdated:Lorg/chromium/mojo_base/mojom/Time;

.field public nextUpdateAfter:Lorg/chromium/mojo_base/mojom/Time;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/chromium/mojo/bindings/DataHeader;

    const/16 v1, 0x40

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/chromium/mojo/bindings/DataHeader;-><init>(II)V

    filled-new-array {v0}, [Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v0

    sput-object v0, Lorg/chromium/blink/mojom/StorageInterestGroup;->VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;

    aget-object v0, v0, v2

    sput-object v0, Lorg/chromium/blink/mojom/StorageInterestGroup;->DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

    return-void
.end method


# virtual methods
.method public final encode(Lorg/chromium/mojo/bindings/Encoder;)V
    .locals 3

    sget-object v0, Lorg/chromium/blink/mojom/StorageInterestGroup;->DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

    invoke-virtual {p1, v0}, Lorg/chromium/mojo/bindings/Encoder;->getEncoderAtDataOffset(Lorg/chromium/mojo/bindings/DataHeader;)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object p1

    iget-object v0, p0, Lorg/chromium/blink/mojom/StorageInterestGroup;->interestGroup:Lorg/chromium/blink/mojom/InterestGroup;

    const/16 v1, 0x8

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    iget-object v0, p0, Lorg/chromium/blink/mojom/StorageInterestGroup;->biddingBrowserSignals:Lorg/chromium/blink/mojom/BiddingBrowserSignals;

    const/16 v1, 0x10

    invoke-virtual {p1, v0, v1, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    iget-object v0, p0, Lorg/chromium/blink/mojom/StorageInterestGroup;->joiningOrigin:Lorg/chromium/url/internal/mojom/Origin;

    const/16 v1, 0x18

    invoke-virtual {p1, v0, v1, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    iget-object v0, p0, Lorg/chromium/blink/mojom/StorageInterestGroup;->joinTime:Lorg/chromium/mojo_base/mojom/Time;

    const/16 v1, 0x20

    invoke-virtual {p1, v0, v1, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    iget-object v0, p0, Lorg/chromium/blink/mojom/StorageInterestGroup;->lastUpdated:Lorg/chromium/mojo_base/mojom/Time;

    const/16 v1, 0x28

    invoke-virtual {p1, v0, v1, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    iget-object v0, p0, Lorg/chromium/blink/mojom/StorageInterestGroup;->nextUpdateAfter:Lorg/chromium/mojo_base/mojom/Time;

    const/16 v1, 0x30

    invoke-virtual {p1, v0, v1, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    iget-wide v0, p0, Lorg/chromium/blink/mojom/StorageInterestGroup;->estimatedSize:J

    const/16 p0, 0x38

    invoke-virtual {p1, v0, v1, p0}, Lorg/chromium/mojo/bindings/Encoder;->encode(JI)V

    return-void
.end method
