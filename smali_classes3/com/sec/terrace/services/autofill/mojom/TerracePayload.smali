.class public final Lcom/sec/terrace/services/autofill/mojom/TerracePayload;
.super Lorg/chromium/mojo/bindings/Union;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/terrace/services/autofill/mojom/TerracePayload$Tag;
    }
.end annotation

.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# instance fields
.field private mAutofillProfilePayload:Lcom/sec/terrace/services/autofill/mojom/TerraceAutofillProfilePayload;

.field private mGuid:Ljava/lang/String;

.field private mGurl:Lorg/chromium/url/mojom/Url;

.field private mInstrumentId:J

.field private mValueToFill:Lorg/chromium/mojo_base/mojom/String16;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/chromium/mojo/bindings/Union;-><init>()V

    return-void
.end method

.method public static final decode(Lorg/chromium/mojo/bindings/Decoder;I)Lcom/sec/terrace/services/autofill/mojom/TerracePayload;
    .locals 4

    invoke-virtual {p0, p1}, Lorg/chromium/mojo/bindings/Decoder;->readDataHeaderForUnion(I)Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v0

    iget v1, v0, Lorg/chromium/mojo/bindings/DataHeader;->size:I

    if-nez v1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v1, Lcom/sec/terrace/services/autofill/mojom/TerracePayload;

    invoke-direct {v1}, Lcom/sec/terrace/services/autofill/mojom/TerracePayload;-><init>()V

    iget v0, v0, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    const/4 v2, 0x0

    if-eqz v0, :cond_5

    const/4 v3, 0x1

    if-eq v0, v3, :cond_4

    const/4 v3, 0x2

    if-eq v0, v3, :cond_3

    const/4 v3, 0x3

    if-eq v0, v3, :cond_2

    const/4 v3, 0x4

    if-eq v0, v3, :cond_1

    goto :goto_0

    :cond_1
    add-int/lit8 p1, p1, 0x8

    invoke-virtual {p0, p1, v2}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object p0

    invoke-static {p0}, Lorg/chromium/mojo_base/mojom/String16;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/mojo_base/mojom/String16;

    move-result-object p0

    iput-object p0, v1, Lcom/sec/terrace/services/autofill/mojom/TerracePayload;->mValueToFill:Lorg/chromium/mojo_base/mojom/String16;

    iput v3, v1, Lorg/chromium/mojo/bindings/Union;->mTag:I

    goto :goto_0

    :cond_2
    add-int/lit8 p1, p1, 0x8

    invoke-virtual {p0, p1, v2}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object p0

    invoke-static {p0}, Lorg/chromium/url/mojom/Url;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/url/mojom/Url;

    move-result-object p0

    iput-object p0, v1, Lcom/sec/terrace/services/autofill/mojom/TerracePayload;->mGurl:Lorg/chromium/url/mojom/Url;

    iput v3, v1, Lorg/chromium/mojo/bindings/Union;->mTag:I

    goto :goto_0

    :cond_3
    add-int/lit8 p1, p1, 0x8

    invoke-virtual {p0, p1, v2}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/terrace/services/autofill/mojom/TerraceAutofillProfilePayload;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lcom/sec/terrace/services/autofill/mojom/TerraceAutofillProfilePayload;

    move-result-object p0

    iput-object p0, v1, Lcom/sec/terrace/services/autofill/mojom/TerracePayload;->mAutofillProfilePayload:Lcom/sec/terrace/services/autofill/mojom/TerraceAutofillProfilePayload;

    iput v3, v1, Lorg/chromium/mojo/bindings/Union;->mTag:I

    goto :goto_0

    :cond_4
    add-int/lit8 p1, p1, 0x8

    invoke-virtual {p0, p1}, Lorg/chromium/mojo/bindings/Decoder;->readLong(I)J

    move-result-wide p0

    iput-wide p0, v1, Lcom/sec/terrace/services/autofill/mojom/TerracePayload;->mInstrumentId:J

    iput v3, v1, Lorg/chromium/mojo/bindings/Union;->mTag:I

    goto :goto_0

    :cond_5
    add-int/lit8 p1, p1, 0x8

    invoke-virtual {p0, p1, v2}, Lorg/chromium/mojo/bindings/Decoder;->readString(IZ)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v1, Lcom/sec/terrace/services/autofill/mojom/TerracePayload;->mGuid:Ljava/lang/String;

    iput v2, v1, Lorg/chromium/mojo/bindings/Union;->mTag:I

    :goto_0
    return-object v1
.end method


# virtual methods
.method public final encode(Lorg/chromium/mojo/bindings/Encoder;I)V
    .locals 3

    const/16 v0, 0x10

    invoke-virtual {p1, v0, p2}, Lorg/chromium/mojo/bindings/Encoder;->encode(II)V

    iget v0, p0, Lorg/chromium/mojo/bindings/Union;->mTag:I

    add-int/lit8 v1, p2, 0x4

    invoke-virtual {p1, v0, v1}, Lorg/chromium/mojo/bindings/Encoder;->encode(II)V

    iget v0, p0, Lorg/chromium/mojo/bindings/Union;->mTag:I

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    const/4 v2, 0x1

    if-eq v0, v2, :cond_3

    const/4 v2, 0x2

    if-eq v0, v2, :cond_2

    const/4 v2, 0x3

    if-eq v0, v2, :cond_1

    const/4 v2, 0x4

    if-eq v0, v2, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/sec/terrace/services/autofill/mojom/TerracePayload;->mValueToFill:Lorg/chromium/mojo_base/mojom/String16;

    add-int/lit8 p2, p2, 0x8

    invoke-virtual {p1, p0, p2, v1}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/sec/terrace/services/autofill/mojom/TerracePayload;->mGurl:Lorg/chromium/url/mojom/Url;

    add-int/lit8 p2, p2, 0x8

    invoke-virtual {p1, p0, p2, v1}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    goto :goto_0

    :cond_2
    iget-object p0, p0, Lcom/sec/terrace/services/autofill/mojom/TerracePayload;->mAutofillProfilePayload:Lcom/sec/terrace/services/autofill/mojom/TerraceAutofillProfilePayload;

    add-int/lit8 p2, p2, 0x8

    invoke-virtual {p1, p0, p2, v1}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    goto :goto_0

    :cond_3
    iget-wide v0, p0, Lcom/sec/terrace/services/autofill/mojom/TerracePayload;->mInstrumentId:J

    add-int/lit8 p2, p2, 0x8

    invoke-virtual {p1, v0, v1, p2}, Lorg/chromium/mojo/bindings/Encoder;->encode(JI)V

    goto :goto_0

    :cond_4
    iget-object p0, p0, Lcom/sec/terrace/services/autofill/mojom/TerracePayload;->mGuid:Ljava/lang/String;

    add-int/lit8 p2, p2, 0x8

    invoke-virtual {p1, p0, p2, v1}, Lorg/chromium/mojo/bindings/Encoder;->encode(Ljava/lang/String;IZ)V

    :goto_0
    return-void
.end method

.method public getGuid()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/services/autofill/mojom/TerracePayload;->mGuid:Ljava/lang/String;

    return-object p0
.end method

.method public setGuid(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lorg/chromium/mojo/bindings/Union;->mTag:I

    iput-object p1, p0, Lcom/sec/terrace/services/autofill/mojom/TerracePayload;->mGuid:Ljava/lang/String;

    return-void
.end method
