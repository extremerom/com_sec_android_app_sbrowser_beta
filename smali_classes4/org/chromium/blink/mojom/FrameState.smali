.class public final Lorg/chromium/blink/mojom/FrameState;
.super Lorg/chromium/mojo/bindings/Struct;
.source "SourceFile"


# annotations
.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# static fields
.field private static final DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

.field private static final VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;


# instance fields
.field public children:[Lorg/chromium/blink/mojom/FrameState;

.field public documentSequenceNumber:J

.field public documentState:[Lorg/chromium/mojo_base/mojom/String16;

.field public httpBody:Lorg/chromium/blink/mojom/HttpBody;

.field public initiatorBaseUrlString:Lorg/chromium/mojo_base/mojom/String16;

.field public initiatorOrigin:Ljava/lang/String;

.field public itemSequenceNumber:J

.field public navigationApiId:Lorg/chromium/mojo_base/mojom/String16;

.field public navigationApiKey:Lorg/chromium/mojo_base/mojom/String16;

.field public navigationApiState:Lorg/chromium/mojo_base/mojom/String16;

.field public protectUrlInNavigationApi:Z

.field public referrer:Lorg/chromium/mojo_base/mojom/String16;

.field public referrerPolicy:I

.field public scrollRestorationType:I

.field public stateObject:Lorg/chromium/mojo_base/mojom/String16;

.field public target:Lorg/chromium/mojo_base/mojom/String16;

.field public urlString:Lorg/chromium/mojo_base/mojom/String16;

.field public viewState:Lorg/chromium/blink/mojom/ViewState;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    new-instance v0, Lorg/chromium/mojo/bindings/DataHeader;

    const/16 v1, 0x60

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/chromium/mojo/bindings/DataHeader;-><init>(II)V

    new-instance v1, Lorg/chromium/mojo/bindings/DataHeader;

    const/16 v2, 0x68

    const/4 v3, 0x2

    invoke-direct {v1, v2, v3}, Lorg/chromium/mojo/bindings/DataHeader;-><init>(II)V

    new-instance v2, Lorg/chromium/mojo/bindings/DataHeader;

    const/16 v3, 0x78

    const/4 v4, 0x3

    invoke-direct {v2, v3, v4}, Lorg/chromium/mojo/bindings/DataHeader;-><init>(II)V

    new-instance v3, Lorg/chromium/mojo/bindings/DataHeader;

    const/16 v4, 0x80

    const/4 v5, 0x4

    invoke-direct {v3, v4, v5}, Lorg/chromium/mojo/bindings/DataHeader;-><init>(II)V

    new-instance v4, Lorg/chromium/mojo/bindings/DataHeader;

    const/16 v5, 0x88

    const/4 v6, 0x5

    invoke-direct {v4, v5, v6}, Lorg/chromium/mojo/bindings/DataHeader;-><init>(II)V

    new-instance v5, Lorg/chromium/mojo/bindings/DataHeader;

    const/16 v7, 0x90

    const/4 v8, 0x6

    invoke-direct {v5, v7, v8}, Lorg/chromium/mojo/bindings/DataHeader;-><init>(II)V

    filled-new-array/range {v0 .. v5}, [Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v0

    sput-object v0, Lorg/chromium/blink/mojom/FrameState;->VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;

    aget-object v0, v0, v6

    sput-object v0, Lorg/chromium/blink/mojom/FrameState;->DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

    return-void
.end method


# virtual methods
.method public final encode(Lorg/chromium/mojo/bindings/Encoder;)V
    .locals 12

    sget-object v0, Lorg/chromium/blink/mojom/FrameState;->DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

    invoke-virtual {p1, v0}, Lorg/chromium/mojo/bindings/Encoder;->getEncoderAtDataOffset(Lorg/chromium/mojo/bindings/DataHeader;)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object p1

    iget-object v0, p0, Lorg/chromium/blink/mojom/FrameState;->urlString:Lorg/chromium/mojo_base/mojom/String16;

    const/16 v8, 0x8

    const/4 v9, 0x1

    invoke-virtual {p1, v0, v8, v9}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    iget-object v0, p0, Lorg/chromium/blink/mojom/FrameState;->referrer:Lorg/chromium/mojo_base/mojom/String16;

    const/16 v1, 0x10

    invoke-virtual {p1, v0, v1, v9}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    iget-object v0, p0, Lorg/chromium/blink/mojom/FrameState;->target:Lorg/chromium/mojo_base/mojom/String16;

    const/16 v1, 0x18

    invoke-virtual {p1, v0, v1, v9}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    iget-object v0, p0, Lorg/chromium/blink/mojom/FrameState;->stateObject:Lorg/chromium/mojo_base/mojom/String16;

    const/16 v1, 0x20

    invoke-virtual {p1, v0, v1, v9}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    iget-object v0, p0, Lorg/chromium/blink/mojom/FrameState;->documentState:[Lorg/chromium/mojo_base/mojom/String16;

    const/4 v10, -0x1

    const/16 v1, 0x28

    const/4 v11, 0x0

    if-nez v0, :cond_0

    invoke-virtual {p1, v1, v11}, Lorg/chromium/mojo/bindings/Encoder;->encodeNullPointer(IZ)V

    goto :goto_1

    :cond_0
    array-length v0, v0

    invoke-virtual {p1, v0, v1, v10}, Lorg/chromium/mojo/bindings/Encoder;->encodePointerArray(III)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object v0

    move v6, v11

    :goto_0
    iget-object v1, p0, Lorg/chromium/blink/mojom/FrameState;->documentState:[Lorg/chromium/mojo_base/mojom/String16;

    array-length v2, v1

    if-ge v6, v2, :cond_1

    aget-object v4, v1, v6

    mul-int/lit8 v1, v6, 0x8

    const/4 v7, 0x1

    move v2, v8

    move-object v3, v0

    move v5, v9

    invoke-static/range {v1 .. v7}, Lcom/sec/android/app/sbrowser/autofill/password/k;->c(IILorg/chromium/mojo/bindings/Encoder;Lorg/chromium/mojo_base/mojom/String16;ZII)I

    move-result v6

    goto :goto_0

    :cond_1
    :goto_1
    iget v0, p0, Lorg/chromium/blink/mojom/FrameState;->scrollRestorationType:I

    const/16 v1, 0x30

    invoke-virtual {p1, v0, v1}, Lorg/chromium/mojo/bindings/Encoder;->encode(II)V

    iget v0, p0, Lorg/chromium/blink/mojom/FrameState;->referrerPolicy:I

    const/16 v1, 0x34

    invoke-virtual {p1, v0, v1}, Lorg/chromium/mojo/bindings/Encoder;->encode(II)V

    iget-object v0, p0, Lorg/chromium/blink/mojom/FrameState;->viewState:Lorg/chromium/blink/mojom/ViewState;

    const/16 v1, 0x38

    invoke-virtual {p1, v0, v1, v9}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    iget-wide v0, p0, Lorg/chromium/blink/mojom/FrameState;->itemSequenceNumber:J

    const/16 v2, 0x40

    invoke-virtual {p1, v0, v1, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(JI)V

    iget-wide v0, p0, Lorg/chromium/blink/mojom/FrameState;->documentSequenceNumber:J

    const/16 v2, 0x48

    invoke-virtual {p1, v0, v1, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(JI)V

    iget-object v0, p0, Lorg/chromium/blink/mojom/FrameState;->httpBody:Lorg/chromium/blink/mojom/HttpBody;

    const/16 v1, 0x50

    invoke-virtual {p1, v0, v1, v11}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    iget-object v0, p0, Lorg/chromium/blink/mojom/FrameState;->children:[Lorg/chromium/blink/mojom/FrameState;

    const/16 v1, 0x58

    if-nez v0, :cond_2

    invoke-virtual {p1, v1, v11}, Lorg/chromium/mojo/bindings/Encoder;->encodeNullPointer(IZ)V

    goto :goto_3

    :cond_2
    array-length v0, v0

    invoke-virtual {p1, v0, v1, v10}, Lorg/chromium/mojo/bindings/Encoder;->encodePointerArray(III)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object v0

    move v1, v11

    :goto_2
    iget-object v2, p0, Lorg/chromium/blink/mojom/FrameState;->children:[Lorg/chromium/blink/mojom/FrameState;

    array-length v3, v2

    if-ge v1, v3, :cond_3

    aget-object v2, v2, v1

    mul-int/lit8 v3, v1, 0x8

    add-int/2addr v3, v8

    invoke-virtual {v0, v2, v3, v11}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_3
    :goto_3
    iget-object v0, p0, Lorg/chromium/blink/mojom/FrameState;->initiatorOrigin:Ljava/lang/String;

    const/16 v1, 0x60

    invoke-virtual {p1, v0, v1, v9}, Lorg/chromium/mojo/bindings/Encoder;->encode(Ljava/lang/String;IZ)V

    iget-object v0, p0, Lorg/chromium/blink/mojom/FrameState;->navigationApiKey:Lorg/chromium/mojo_base/mojom/String16;

    const/16 v1, 0x68

    invoke-virtual {p1, v0, v1, v9}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    iget-object v0, p0, Lorg/chromium/blink/mojom/FrameState;->navigationApiId:Lorg/chromium/mojo_base/mojom/String16;

    const/16 v1, 0x70

    invoke-virtual {p1, v0, v1, v9}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    iget-object v0, p0, Lorg/chromium/blink/mojom/FrameState;->navigationApiState:Lorg/chromium/mojo_base/mojom/String16;

    const/16 v1, 0x78

    invoke-virtual {p1, v0, v1, v9}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    iget-boolean v0, p0, Lorg/chromium/blink/mojom/FrameState;->protectUrlInNavigationApi:Z

    const/16 v1, 0x80

    invoke-virtual {p1, v0, v1, v11}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget-object p0, p0, Lorg/chromium/blink/mojom/FrameState;->initiatorBaseUrlString:Lorg/chromium/mojo_base/mojom/String16;

    const/16 v0, 0x88

    invoke-virtual {p1, p0, v0, v9}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    return-void
.end method
