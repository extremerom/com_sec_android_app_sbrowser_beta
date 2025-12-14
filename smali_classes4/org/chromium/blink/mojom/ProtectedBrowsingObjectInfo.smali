.class public final Lorg/chromium/blink/mojom/ProtectedBrowsingObjectInfo;
.super Lorg/chromium/mojo/bindings/Struct;
.source "SourceFile"


# annotations
.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# static fields
.field private static final DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

.field private static final VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;


# instance fields
.field public buttonCount:J

.field public etcCount:J

.field public imageCount:J

.field public isBigLinkDetected:Z

.field public isBigListenerDetected:Z

.field public linkCount:J

.field public ogtagCount:J

.field public playGoogleCount:J

.field public textCount:J

.field public textLength:J

.field public totalCount:J

.field public uniqueLinkCount:J

.field public uniqueLinkUrl:Ljava/lang/String;

.field public videoCount:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/chromium/mojo/bindings/DataHeader;

    const/16 v1, 0x70

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/chromium/mojo/bindings/DataHeader;-><init>(II)V

    filled-new-array {v0}, [Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v0

    sput-object v0, Lorg/chromium/blink/mojom/ProtectedBrowsingObjectInfo;->VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;

    aget-object v0, v0, v2

    sput-object v0, Lorg/chromium/blink/mojom/ProtectedBrowsingObjectInfo;->DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

    return-void
.end method


# virtual methods
.method public final encode(Lorg/chromium/mojo/bindings/Encoder;)V
    .locals 4

    sget-object v0, Lorg/chromium/blink/mojom/ProtectedBrowsingObjectInfo;->DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

    invoke-virtual {p1, v0}, Lorg/chromium/mojo/bindings/Encoder;->getEncoderAtDataOffset(Lorg/chromium/mojo/bindings/DataHeader;)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object p1

    iget-wide v0, p0, Lorg/chromium/blink/mojom/ProtectedBrowsingObjectInfo;->textCount:J

    const/16 v2, 0x8

    invoke-virtual {p1, v0, v1, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(JI)V

    iget-wide v0, p0, Lorg/chromium/blink/mojom/ProtectedBrowsingObjectInfo;->linkCount:J

    const/16 v2, 0x10

    invoke-virtual {p1, v0, v1, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(JI)V

    iget-wide v0, p0, Lorg/chromium/blink/mojom/ProtectedBrowsingObjectInfo;->imageCount:J

    const/16 v2, 0x18

    invoke-virtual {p1, v0, v1, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(JI)V

    iget-wide v0, p0, Lorg/chromium/blink/mojom/ProtectedBrowsingObjectInfo;->videoCount:J

    const/16 v2, 0x20

    invoke-virtual {p1, v0, v1, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(JI)V

    iget-wide v0, p0, Lorg/chromium/blink/mojom/ProtectedBrowsingObjectInfo;->buttonCount:J

    const/16 v2, 0x28

    invoke-virtual {p1, v0, v1, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(JI)V

    iget-wide v0, p0, Lorg/chromium/blink/mojom/ProtectedBrowsingObjectInfo;->etcCount:J

    const/16 v2, 0x30

    invoke-virtual {p1, v0, v1, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(JI)V

    iget-wide v0, p0, Lorg/chromium/blink/mojom/ProtectedBrowsingObjectInfo;->totalCount:J

    const/16 v2, 0x38

    invoke-virtual {p1, v0, v1, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(JI)V

    iget-wide v0, p0, Lorg/chromium/blink/mojom/ProtectedBrowsingObjectInfo;->ogtagCount:J

    const/16 v2, 0x40

    invoke-virtual {p1, v0, v1, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(JI)V

    iget-wide v0, p0, Lorg/chromium/blink/mojom/ProtectedBrowsingObjectInfo;->playGoogleCount:J

    const/16 v2, 0x48

    invoke-virtual {p1, v0, v1, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(JI)V

    iget-boolean v0, p0, Lorg/chromium/blink/mojom/ProtectedBrowsingObjectInfo;->isBigLinkDetected:Z

    const/16 v1, 0x50

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget-boolean v0, p0, Lorg/chromium/blink/mojom/ProtectedBrowsingObjectInfo;->isBigListenerDetected:Z

    const/4 v3, 0x1

    invoke-virtual {p1, v0, v1, v3}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget-wide v0, p0, Lorg/chromium/blink/mojom/ProtectedBrowsingObjectInfo;->uniqueLinkCount:J

    const/16 v3, 0x58

    invoke-virtual {p1, v0, v1, v3}, Lorg/chromium/mojo/bindings/Encoder;->encode(JI)V

    iget-wide v0, p0, Lorg/chromium/blink/mojom/ProtectedBrowsingObjectInfo;->textLength:J

    const/16 v3, 0x60

    invoke-virtual {p1, v0, v1, v3}, Lorg/chromium/mojo/bindings/Encoder;->encode(JI)V

    iget-object p0, p0, Lorg/chromium/blink/mojom/ProtectedBrowsingObjectInfo;->uniqueLinkUrl:Ljava/lang/String;

    const/16 v0, 0x68

    invoke-virtual {p1, p0, v0, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(Ljava/lang/String;IZ)V

    return-void
.end method
