.class public final Lorg/chromium/autofill/mojom/FormFieldDataPredictions;
.super Lorg/chromium/mojo/bindings/Struct;
.source "SourceFile"


# annotations
.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# static fields
.field private static final DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

.field private static final VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;


# instance fields
.field public autofillAiType:Ljava/lang/String;

.field public formatString:Ljava/lang/String;

.field public heuristicType:Ljava/lang/String;

.field public hostFormSignature:Ljava/lang/String;

.field public htmlType:Ljava/lang/String;

.field public overallType:Ljava/lang/String;

.field public parseableLabel:Ljava/lang/String;

.field public parseableName:Ljava/lang/String;

.field public rank:I

.field public rankInHostForm:I

.field public rankInHostFormSignatureGroup:I

.field public rankInSignatureGroup:I

.field public section:Ljava/lang/String;

.field public serverType:Ljava/lang/String;

.field public signature:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/chromium/mojo/bindings/DataHeader;

    const/16 v1, 0x70

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/chromium/mojo/bindings/DataHeader;-><init>(II)V

    filled-new-array {v0}, [Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v0

    sput-object v0, Lorg/chromium/autofill/mojom/FormFieldDataPredictions;->VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;

    aget-object v0, v0, v2

    sput-object v0, Lorg/chromium/autofill/mojom/FormFieldDataPredictions;->DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

    return-void
.end method


# virtual methods
.method public final encode(Lorg/chromium/mojo/bindings/Encoder;)V
    .locals 4

    sget-object v0, Lorg/chromium/autofill/mojom/FormFieldDataPredictions;->DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

    invoke-virtual {p1, v0}, Lorg/chromium/mojo/bindings/Encoder;->getEncoderAtDataOffset(Lorg/chromium/mojo/bindings/DataHeader;)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object p1

    iget-object v0, p0, Lorg/chromium/autofill/mojom/FormFieldDataPredictions;->hostFormSignature:Ljava/lang/String;

    const/16 v1, 0x8

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(Ljava/lang/String;IZ)V

    iget-object v0, p0, Lorg/chromium/autofill/mojom/FormFieldDataPredictions;->signature:Ljava/lang/String;

    const/16 v1, 0x10

    invoke-virtual {p1, v0, v1, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(Ljava/lang/String;IZ)V

    iget-object v0, p0, Lorg/chromium/autofill/mojom/FormFieldDataPredictions;->heuristicType:Ljava/lang/String;

    const/16 v1, 0x18

    invoke-virtual {p1, v0, v1, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(Ljava/lang/String;IZ)V

    iget-object v0, p0, Lorg/chromium/autofill/mojom/FormFieldDataPredictions;->serverType:Ljava/lang/String;

    const/16 v1, 0x20

    const/4 v3, 0x1

    invoke-virtual {p1, v0, v1, v3}, Lorg/chromium/mojo/bindings/Encoder;->encode(Ljava/lang/String;IZ)V

    iget-object v0, p0, Lorg/chromium/autofill/mojom/FormFieldDataPredictions;->htmlType:Ljava/lang/String;

    const/16 v1, 0x28

    invoke-virtual {p1, v0, v1, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(Ljava/lang/String;IZ)V

    iget-object v0, p0, Lorg/chromium/autofill/mojom/FormFieldDataPredictions;->overallType:Ljava/lang/String;

    const/16 v1, 0x30

    invoke-virtual {p1, v0, v1, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(Ljava/lang/String;IZ)V

    iget-object v0, p0, Lorg/chromium/autofill/mojom/FormFieldDataPredictions;->autofillAiType:Ljava/lang/String;

    const/16 v1, 0x38

    invoke-virtual {p1, v0, v1, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(Ljava/lang/String;IZ)V

    iget-object v0, p0, Lorg/chromium/autofill/mojom/FormFieldDataPredictions;->formatString:Ljava/lang/String;

    const/16 v1, 0x40

    invoke-virtual {p1, v0, v1, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(Ljava/lang/String;IZ)V

    iget-object v0, p0, Lorg/chromium/autofill/mojom/FormFieldDataPredictions;->parseableName:Ljava/lang/String;

    const/16 v1, 0x48

    invoke-virtual {p1, v0, v1, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(Ljava/lang/String;IZ)V

    iget-object v0, p0, Lorg/chromium/autofill/mojom/FormFieldDataPredictions;->parseableLabel:Ljava/lang/String;

    const/16 v1, 0x50

    invoke-virtual {p1, v0, v1, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(Ljava/lang/String;IZ)V

    iget-object v0, p0, Lorg/chromium/autofill/mojom/FormFieldDataPredictions;->section:Ljava/lang/String;

    const/16 v1, 0x58

    invoke-virtual {p1, v0, v1, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(Ljava/lang/String;IZ)V

    iget v0, p0, Lorg/chromium/autofill/mojom/FormFieldDataPredictions;->rank:I

    const/16 v1, 0x60

    invoke-virtual {p1, v0, v1}, Lorg/chromium/mojo/bindings/Encoder;->encode(II)V

    iget v0, p0, Lorg/chromium/autofill/mojom/FormFieldDataPredictions;->rankInSignatureGroup:I

    const/16 v1, 0x64

    invoke-virtual {p1, v0, v1}, Lorg/chromium/mojo/bindings/Encoder;->encode(II)V

    iget v0, p0, Lorg/chromium/autofill/mojom/FormFieldDataPredictions;->rankInHostForm:I

    const/16 v1, 0x68

    invoke-virtual {p1, v0, v1}, Lorg/chromium/mojo/bindings/Encoder;->encode(II)V

    iget p0, p0, Lorg/chromium/autofill/mojom/FormFieldDataPredictions;->rankInHostFormSignatureGroup:I

    const/16 v0, 0x6c

    invoke-virtual {p1, p0, v0}, Lorg/chromium/mojo/bindings/Encoder;->encode(II)V

    return-void
.end method
