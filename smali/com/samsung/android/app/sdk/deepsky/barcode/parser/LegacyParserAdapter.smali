.class public final Lcom/samsung/android/app/sdk/deepsky/barcode/parser/LegacyParserAdapter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/sdk/deepsky/barcode/parser/BarcodeParser;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u0017\u0010\t\u001a\u00020\u00082\u0006\u0010\u0007\u001a\u00020\u0006H\u0002\u00a2\u0006\u0004\u0008\t\u0010\nJ\u0017\u0010\r\u001a\u00020\u000c2\u0006\u0010\u000b\u001a\u00020\u0008H\u0002\u00a2\u0006\u0004\u0008\r\u0010\u000eJ\u0017\u0010\u000f\u001a\u00020\u000c2\u0006\u0010\u0007\u001a\u00020\u0006H\u0016\u00a2\u0006\u0004\u0008\u000f\u0010\u0010R\u001c\u0010\u0012\u001a\n \u0011*\u0004\u0018\u00010\u00020\u00028\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0012\u0010\u0013\u00a8\u0006\u0014"
    }
    d2 = {
        "Lcom/samsung/android/app/sdk/deepsky/barcode/parser/LegacyParserAdapter;",
        "Lcom/samsung/android/app/sdk/deepsky/barcode/parser/BarcodeParser;",
        "Landroid/content/Context;",
        "context",
        "<init>",
        "(Landroid/content/Context;)V",
        "",
        "rawData",
        "LY7/r;",
        "getParsedResultFromZxingParser",
        "(Ljava/lang/String;)LY7/r;",
        "parsedResult",
        "Lcom/samsung/android/app/sdk/deepsky/barcode/parser/adapter/BarcodeParsedResult;",
        "getBarcodeResult",
        "(LY7/r;)Lcom/samsung/android/app/sdk/deepsky/barcode/parser/adapter/BarcodeParsedResult;",
        "getParsedBarcodeResult",
        "(Ljava/lang/String;)Lcom/samsung/android/app/sdk/deepsky/barcode/parser/adapter/BarcodeParsedResult;",
        "kotlin.jvm.PlatformType",
        "appContext",
        "Landroid/content/Context;",
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
.field private final appContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/sdk/deepsky/barcode/parser/LegacyParserAdapter;->appContext:Landroid/content/Context;

    return-void
.end method

.method private final getBarcodeResult(LY7/r;)Lcom/samsung/android/app/sdk/deepsky/barcode/parser/adapter/BarcodeParsedResult;
    .locals 2

    iget-object v0, p1, LY7/r;->a:LY7/s;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/sdk/deepsky/barcode/parser/adapter/ParsedResultType;->valueOf(Ljava/lang/String;)Lcom/samsung/android/app/sdk/deepsky/barcode/parser/adapter/ParsedResultType;

    move-result-object v0

    iget-object p0, p0, Lcom/samsung/android/app/sdk/deepsky/barcode/parser/LegacyParserAdapter;->appContext:Landroid/content/Context;

    const-string v1, "appContext"

    invoke-static {p0, v1}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p0, p1}, Lcom/samsung/android/app/sdk/deepsky/barcode/parser/adapter/ParsedResultType;->getBarcodeResult(Landroid/content/Context;LY7/r;)Lcom/samsung/android/app/sdk/deepsky/barcode/parser/adapter/BarcodeParsedResult;

    move-result-object p0

    return-object p0
.end method

.method private final getParsedResultFromZxingParser(Ljava/lang/String;)LY7/r;
    .locals 3

    const-string p0, ":"

    const/4 v0, 0x0

    const/4 v1, 0x6

    invoke-static {p1, p0, v0, v0, v1}, LKc/k;->v(Ljava/lang/CharSequence;Ljava/lang/String;IZI)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "substring(...)"

    invoke-static {v1, v2}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0, v0, v0}, LKc/k;->H(Ljava/lang/CharSequence;[Ljava/lang/String;ZI)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Lcom/samsung/android/app/sdk/deepsky/barcode/parser/common/BarcodeFormat;->valueOf(Ljava/lang/String;)Lcom/samsung/android/app/sdk/deepsky/barcode/parser/common/BarcodeFormat;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/app/sdk/deepsky/barcode/parser/common/BarcodeFormat;->getZxingBarcodeFormat()LX7/a;

    move-result-object p0

    new-instance p1, Lcom/samsung/android/motionphoto/utils/ex/e;

    invoke-direct {p1, v1, p0}, Lcom/samsung/android/motionphoto/utils/ex/e;-><init>(Ljava/lang/String;LX7/a;)V

    sget-object p0, LY7/u;->a:[LY7/u;

    array-length v1, p0

    :goto_0
    if-ge v0, v1, :cond_1

    aget-object v2, p0, v0

    invoke-virtual {v2, p1}, LY7/u;->e(Lcom/samsung/android/motionphoto/utils/ex/e;)LY7/r;

    move-result-object v2

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    new-instance v2, LY7/p;

    iget-object p0, p1, Lcom/samsung/android/motionphoto/utils/ex/e;->b:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    const/4 p1, 0x3

    invoke-direct {v2, p0, p1}, LY7/p;-><init>(Ljava/lang/String;I)V

    :goto_1
    return-object v2
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

    invoke-direct {p0, p1}, Lcom/samsung/android/app/sdk/deepsky/barcode/parser/LegacyParserAdapter;->getParsedResultFromZxingParser(Ljava/lang/String;)LY7/r;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/samsung/android/app/sdk/deepsky/barcode/parser/LegacyParserAdapter;->getBarcodeResult(LY7/r;)Lcom/samsung/android/app/sdk/deepsky/barcode/parser/adapter/BarcodeParsedResult;

    move-result-object p0

    return-object p0
.end method
