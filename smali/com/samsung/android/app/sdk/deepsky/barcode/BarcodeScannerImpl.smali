.class public final Lcom/samsung/android/app/sdk/deepsky/barcode/BarcodeScannerImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/sdk/deepsky/barcode/BarcodeScanner;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/sdk/deepsky/barcode/BarcodeScannerImpl$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000T\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0015\n\u0000\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\u0008\u0000\u0018\u0000 \u001b2\u00020\u0001:\u0001\u001bB\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u0016\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\u000b2\u0006\u0010\r\u001a\u00020\u000eH\u0016J\u0010\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u0012H\u0002J\u001b\u0010\u0013\u001a\u0008\u0012\u0004\u0012\u00020\u00150\u00142\u0006\u0010\u0011\u001a\u00020\u0012H\u0002\u00a2\u0006\u0002\u0010\u0016J\u0010\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u0019\u001a\u00020\u001aH\u0002R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001c"
    }
    d2 = {
        "Lcom/samsung/android/app/sdk/deepsky/barcode/BarcodeScannerImpl;",
        "Lcom/samsung/android/app/sdk/deepsky/barcode/BarcodeScanner;",
        "context",
        "Landroid/content/Context;",
        "<init>",
        "(Landroid/content/Context;)V",
        "engine",
        "Lcom/samsung/android/app/sdk/deepsky/barcode/detection/BarcodeEngine;",
        "parser",
        "Lcom/samsung/android/app/sdk/deepsky/barcode/parser/BarcodeParser;",
        "process",
        "",
        "Lcom/samsung/android/app/sdk/deepsky/barcode/result/Barcode;",
        "bitmap",
        "Landroid/graphics/Bitmap;",
        "getRectFromIntArray",
        "Landroid/graphics/Rect;",
        "qrPositionArray",
        "",
        "getArrayPoint",
        "",
        "Landroid/graphics/Point;",
        "([I)[Landroid/graphics/Point;",
        "getActionUIResource",
        "Lcom/samsung/android/app/sdk/deepsky/barcode/result/ActionUIResource;",
        "rawData",
        "",
        "Companion",
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


# static fields
.field public static final Companion:Lcom/samsung/android/app/sdk/deepsky/barcode/BarcodeScannerImpl$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final engine:Lcom/samsung/android/app/sdk/deepsky/barcode/detection/BarcodeEngine;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final parser:Lcom/samsung/android/app/sdk/deepsky/barcode/parser/BarcodeParser;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/samsung/android/app/sdk/deepsky/barcode/BarcodeScannerImpl$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/app/sdk/deepsky/barcode/BarcodeScannerImpl$Companion;-><init>(Ltb/f;)V

    sput-object v0, Lcom/samsung/android/app/sdk/deepsky/barcode/BarcodeScannerImpl;->Companion:Lcom/samsung/android/app/sdk/deepsky/barcode/BarcodeScannerImpl$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/samsung/android/app/sdk/deepsky/barcode/detection/BarcodeEngineAdapter;

    invoke-direct {v0}, Lcom/samsung/android/app/sdk/deepsky/barcode/detection/BarcodeEngineAdapter;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/sdk/deepsky/barcode/BarcodeScannerImpl;->engine:Lcom/samsung/android/app/sdk/deepsky/barcode/detection/BarcodeEngine;

    new-instance v0, Lcom/samsung/android/app/sdk/deepsky/barcode/parser/BarcodeParserImpl;

    new-instance v1, Lcom/samsung/android/app/sdk/deepsky/barcode/parser/LegacyParserAdapter;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string v2, "getApplicationContext(...)"

    invoke-static {p1, v2}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v1, p1}, Lcom/samsung/android/app/sdk/deepsky/barcode/parser/LegacyParserAdapter;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, v1}, Lcom/samsung/android/app/sdk/deepsky/barcode/parser/BarcodeParserImpl;-><init>(Lcom/samsung/android/app/sdk/deepsky/barcode/parser/LegacyParserAdapter;)V

    iput-object v0, p0, Lcom/samsung/android/app/sdk/deepsky/barcode/BarcodeScannerImpl;->parser:Lcom/samsung/android/app/sdk/deepsky/barcode/parser/BarcodeParser;

    return-void
.end method

.method private final getActionUIResource(Ljava/lang/String;)Lcom/samsung/android/app/sdk/deepsky/barcode/result/ActionUIResource;
    .locals 3

    iget-object p0, p0, Lcom/samsung/android/app/sdk/deepsky/barcode/BarcodeScannerImpl;->parser:Lcom/samsung/android/app/sdk/deepsky/barcode/parser/BarcodeParser;

    invoke-interface {p0, p1}, Lcom/samsung/android/app/sdk/deepsky/barcode/parser/BarcodeParser;->getParsedBarcodeResult(Ljava/lang/String;)Lcom/samsung/android/app/sdk/deepsky/barcode/parser/adapter/BarcodeParsedResult;

    move-result-object p0

    new-instance p1, Lcom/samsung/android/app/sdk/deepsky/barcode/result/ActionUIResource;

    invoke-interface {p0}, Lcom/samsung/android/app/sdk/deepsky/barcode/parser/adapter/BarcodeParsedResult;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0}, Lcom/samsung/android/app/sdk/deepsky/barcode/parser/adapter/BarcodeParsedResult;->getBody()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0}, Lcom/samsung/android/app/sdk/deepsky/barcode/parser/adapter/BarcodeParsedResult;->getBodyTts()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0}, Lcom/samsung/android/app/sdk/deepsky/barcode/parser/adapter/BarcodeParsedResult;->getActions()Ljava/util/List;

    move-result-object p0

    invoke-direct {p1, v0, v1, v2, p0}, Lcom/samsung/android/app/sdk/deepsky/barcode/result/ActionUIResource;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    return-object p1
.end method

.method private final getArrayPoint([I)[Landroid/graphics/Point;
    .locals 5

    new-instance p0, Landroid/graphics/Point;

    const/4 v0, 0x0

    aget v0, p1, v0

    const/4 v1, 0x1

    aget v1, p1, v1

    invoke-direct {p0, v0, v1}, Landroid/graphics/Point;-><init>(II)V

    new-instance v0, Landroid/graphics/Point;

    const/4 v1, 0x2

    aget v1, p1, v1

    const/4 v2, 0x3

    aget v2, p1, v2

    invoke-direct {v0, v1, v2}, Landroid/graphics/Point;-><init>(II)V

    new-instance v1, Landroid/graphics/Point;

    const/4 v2, 0x4

    aget v2, p1, v2

    const/4 v3, 0x5

    aget v3, p1, v3

    invoke-direct {v1, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    new-instance v2, Landroid/graphics/Point;

    const/4 v3, 0x6

    aget v3, p1, v3

    const/4 v4, 0x7

    aget p1, p1, v4

    invoke-direct {v2, v3, p1}, Landroid/graphics/Point;-><init>(II)V

    filled-new-array {p0, v0, v1, v2}, [Landroid/graphics/Point;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "toString(...)"

    invoke-static {p1, v0}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "getArrayPoint array="

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "BarcodeScannerImpl"

    invoke-static {v0, p1}, Lcom/samsung/android/app/sdk/deepsky/barcode/logger/LibLogger;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0
.end method

.method private final getRectFromIntArray([I)Landroid/graphics/Rect;
    .locals 4

    new-instance p0, Landroid/graphics/Rect;

    const/4 v0, 0x0

    aget v0, p1, v0

    const/4 v1, 0x1

    aget v1, p1, v1

    const/4 v2, 0x4

    aget v2, p1, v2

    const/4 v3, 0x5

    aget p1, p1, v3

    invoke-direct {p0, v0, v1, v2, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "getRectFromIntArray rect="

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "BarcodeScannerImpl"

    invoke-static {v0, p1}, Lcom/samsung/android/app/sdk/deepsky/barcode/logger/LibLogger;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0
.end method


# virtual methods
.method public process(Landroid/graphics/Bitmap;)Ljava/util/List;
    .locals 7
    .param p1    # Landroid/graphics/Bitmap;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Bitmap;",
            ")",
            "Ljava/util/List<",
            "Lcom/samsung/android/app/sdk/deepsky/barcode/result/Barcode;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "bitmap"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/samsung/android/app/sdk/deepsky/barcode/logger/LogUtil;->INSTANCE:Lcom/samsung/android/app/sdk/deepsky/barcode/logger/LogUtil;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/sdk/deepsky/barcode/logger/LogUtil;->logString(Landroid/graphics/Bitmap;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "process barcode with "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BarcodeScannerImpl"

    invoke-static {v1, v0}, Lcom/samsung/android/app/sdk/deepsky/barcode/logger/LibLogger;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/app/sdk/deepsky/barcode/BarcodeScannerImpl;->engine:Lcom/samsung/android/app/sdk/deepsky/barcode/detection/BarcodeEngine;

    invoke-interface {v2, p1}, Lcom/samsung/android/app/sdk/deepsky/barcode/detection/BarcodeEngine;->process(Landroid/graphics/Bitmap;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/app/sdk/deepsky/barcode/detection/BarcodeScanResult;

    invoke-virtual {v2}, Lcom/samsung/android/app/sdk/deepsky/barcode/detection/BarcodeScanResult;->getRawData()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    new-instance v3, Lcom/samsung/android/app/sdk/deepsky/barcode/result/Barcode;

    invoke-virtual {v2}, Lcom/samsung/android/app/sdk/deepsky/barcode/detection/BarcodeScanResult;->getRawData()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Lcom/samsung/android/app/sdk/deepsky/barcode/detection/BarcodeScanResult;->getQrPositionArray()[I

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/samsung/android/app/sdk/deepsky/barcode/BarcodeScannerImpl;->getRectFromIntArray([I)Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v2}, Lcom/samsung/android/app/sdk/deepsky/barcode/detection/BarcodeScanResult;->getQrPositionArray()[I

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/samsung/android/app/sdk/deepsky/barcode/BarcodeScannerImpl;->getArrayPoint([I)[Landroid/graphics/Point;

    move-result-object v6

    invoke-virtual {v2}, Lcom/samsung/android/app/sdk/deepsky/barcode/detection/BarcodeScanResult;->getRawData()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/samsung/android/app/sdk/deepsky/barcode/BarcodeScannerImpl;->getActionUIResource(Ljava/lang/String;)Lcom/samsung/android/app/sdk/deepsky/barcode/result/ActionUIResource;

    move-result-object v2

    invoke-direct {v3, v4, v5, v6, v2}, Lcom/samsung/android/app/sdk/deepsky/barcode/result/Barcode;-><init>(Ljava/lang/String;Landroid/graphics/Rect;[Landroid/graphics/Point;Lcom/samsung/android/app/sdk/deepsky/barcode/result/ActionUIResource;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_1
    return-object v0

    :goto_1
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "process barcode failed: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/samsung/android/app/sdk/deepsky/barcode/logger/LibLogger;->w(Ljava/lang/String;Ljava/lang/String;)I

    sget-object p0, Lfb/v;->a:Lfb/v;

    return-object p0
.end method
