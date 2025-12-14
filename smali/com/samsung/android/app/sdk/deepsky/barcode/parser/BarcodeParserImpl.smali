.class public final Lcom/samsung/android/app/sdk/deepsky/barcode/parser/BarcodeParserImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/sdk/deepsky/barcode/parser/BarcodeParser;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\u0008\u0000\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u0010\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\tH\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/samsung/android/app/sdk/deepsky/barcode/parser/BarcodeParserImpl;",
        "Lcom/samsung/android/app/sdk/deepsky/barcode/parser/BarcodeParser;",
        "legacyParserAdapter",
        "Lcom/samsung/android/app/sdk/deepsky/barcode/parser/LegacyParserAdapter;",
        "<init>",
        "(Lcom/samsung/android/app/sdk/deepsky/barcode/parser/LegacyParserAdapter;)V",
        "getParsedBarcodeResult",
        "Lcom/samsung/android/app/sdk/deepsky/barcode/parser/adapter/BarcodeParsedResult;",
        "rawData",
        "",
        "deepsky-sdk-barcode-1.0.11_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final legacyParserAdapter:Lcom/samsung/android/app/sdk/deepsky/barcode/parser/LegacyParserAdapter;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/sdk/deepsky/barcode/parser/LegacyParserAdapter;)V
    .locals 1
    .param p1    # Lcom/samsung/android/app/sdk/deepsky/barcode/parser/LegacyParserAdapter;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "legacyParserAdapter"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/sdk/deepsky/barcode/parser/BarcodeParserImpl;->legacyParserAdapter:Lcom/samsung/android/app/sdk/deepsky/barcode/parser/LegacyParserAdapter;

    return-void
.end method


# virtual methods
.method public getParsedBarcodeResult(Ljava/lang/String;)Lcom/samsung/android/app/sdk/deepsky/barcode/parser/adapter/BarcodeParsedResult;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "rawData"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/samsung/android/app/sdk/deepsky/barcode/parser/BarcodeParserImpl;->legacyParserAdapter:Lcom/samsung/android/app/sdk/deepsky/barcode/parser/LegacyParserAdapter;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/sdk/deepsky/barcode/parser/LegacyParserAdapter;->getParsedBarcodeResult(Ljava/lang/String;)Lcom/samsung/android/app/sdk/deepsky/barcode/parser/adapter/BarcodeParsedResult;

    move-result-object p0

    return-object p0
.end method
