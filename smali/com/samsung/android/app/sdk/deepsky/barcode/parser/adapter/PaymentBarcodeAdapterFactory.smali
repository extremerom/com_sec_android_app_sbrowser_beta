.class public final Lcom/samsung/android/app/sdk/deepsky/barcode/parser/adapter/PaymentBarcodeAdapterFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/sdk/deepsky/barcode/parser/adapter/PaymentBarcodeAdapterFactory$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0018\u0000 \u00132\u00020\u0001:\u0001\u0013B\u0011\u0008\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u0017\u0010\t\u001a\u00020\u00082\u0006\u0010\u0007\u001a\u00020\u0006H\u0002\u00a2\u0006\u0004\u0008\t\u0010\nJ\u0017\u0010\u000b\u001a\u00020\u00082\u0006\u0010\u0007\u001a\u00020\u0006H\u0002\u00a2\u0006\u0004\u0008\u000b\u0010\nJ\u0017\u0010\u000c\u001a\u00020\u00082\u0006\u0010\u0007\u001a\u00020\u0006H\u0002\u00a2\u0006\u0004\u0008\u000c\u0010\nJ\u0017\u0010\r\u001a\u00020\u00082\u0006\u0010\u0007\u001a\u00020\u0006H\u0002\u00a2\u0006\u0004\u0008\r\u0010\nJ\u0015\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\u0007\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\u000f\u0010\u0010R\u0014\u0010\u0011\u001a\u00020\u00028\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0011\u0010\u0012\u00a8\u0006\u0014"
    }
    d2 = {
        "Lcom/samsung/android/app/sdk/deepsky/barcode/parser/adapter/PaymentBarcodeAdapterFactory;",
        "",
        "Landroid/content/Context;",
        "context",
        "<init>",
        "(Landroid/content/Context;)V",
        "LY7/r;",
        "parsedResult",
        "",
        "isSamsungPayIndiaType",
        "(LY7/r;)Z",
        "isSamsungPayIndonesiaType",
        "isPixType",
        "isUriType",
        "Lcom/samsung/android/app/sdk/deepsky/barcode/parser/adapter/BarcodeParsedResult;",
        "create",
        "(LY7/r;)Lcom/samsung/android/app/sdk/deepsky/barcode/parser/adapter/BarcodeParsedResult;",
        "appContext",
        "Landroid/content/Context;",
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
.field public static final Companion:Lcom/samsung/android/app/sdk/deepsky/barcode/parser/adapter/PaymentBarcodeAdapterFactory$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static volatile instance:Lcom/samsung/android/app/sdk/deepsky/barcode/parser/adapter/PaymentBarcodeAdapterFactory;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# instance fields
.field private final appContext:Landroid/content/Context;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/samsung/android/app/sdk/deepsky/barcode/parser/adapter/PaymentBarcodeAdapterFactory$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/app/sdk/deepsky/barcode/parser/adapter/PaymentBarcodeAdapterFactory$Companion;-><init>(Ltb/f;)V

    sput-object v0, Lcom/samsung/android/app/sdk/deepsky/barcode/parser/adapter/PaymentBarcodeAdapterFactory;->Companion:Lcom/samsung/android/app/sdk/deepsky/barcode/parser/adapter/PaymentBarcodeAdapterFactory$Companion;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "getApplicationContext(...)"

    invoke-static {p1, v0}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/samsung/android/app/sdk/deepsky/barcode/parser/adapter/PaymentBarcodeAdapterFactory;->appContext:Landroid/content/Context;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Ltb/f;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/app/sdk/deepsky/barcode/parser/adapter/PaymentBarcodeAdapterFactory;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public static final synthetic access$getInstance$cp()Lcom/samsung/android/app/sdk/deepsky/barcode/parser/adapter/PaymentBarcodeAdapterFactory;
    .locals 1

    sget-object v0, Lcom/samsung/android/app/sdk/deepsky/barcode/parser/adapter/PaymentBarcodeAdapterFactory;->instance:Lcom/samsung/android/app/sdk/deepsky/barcode/parser/adapter/PaymentBarcodeAdapterFactory;

    return-object v0
.end method

.method public static final synthetic access$setInstance$cp(Lcom/samsung/android/app/sdk/deepsky/barcode/parser/adapter/PaymentBarcodeAdapterFactory;)V
    .locals 0

    sput-object p0, Lcom/samsung/android/app/sdk/deepsky/barcode/parser/adapter/PaymentBarcodeAdapterFactory;->instance:Lcom/samsung/android/app/sdk/deepsky/barcode/parser/adapter/PaymentBarcodeAdapterFactory;

    return-void
.end method

.method private final isPixType(LY7/r;)Z
    .locals 0

    const-string p0, "null cannot be cast to non-null type com.google.zxing.client.result.pay.PayParsedResult"

    invoke-static {p1, p0}, Ltb/k;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, La8/a;

    invoke-virtual {p1}, La8/a;->d()La8/c;

    move-result-object p0

    sget-object p1, La8/c;->PIX:La8/c;

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private final isSamsungPayIndiaType(LY7/r;)Z
    .locals 0

    const-string p0, "null cannot be cast to non-null type com.google.zxing.client.result.pay.PayParsedResult"

    invoke-static {p1, p0}, Ltb/k;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, La8/a;

    invoke-virtual {p1}, La8/a;->d()La8/c;

    move-result-object p0

    sget-object p1, La8/c;->SAMSUNG_PAY_INDIA:La8/c;

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private final isSamsungPayIndonesiaType(LY7/r;)Z
    .locals 0

    const-string p0, "null cannot be cast to non-null type com.google.zxing.client.result.pay.PayParsedResult"

    invoke-static {p1, p0}, Ltb/k;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, La8/a;

    invoke-virtual {p1}, La8/a;->d()La8/c;

    move-result-object p0

    sget-object p1, La8/c;->SAMSUNG_PAY_INDONESIA:La8/c;

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private final isUriType(LY7/r;)Z
    .locals 5

    const-string p0, "null cannot be cast to non-null type com.google.zxing.client.result.pay.PayParsedResult"

    invoke-static {p1, p0}, Ltb/k;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, La8/a;

    sget-object p0, La8/a;->e:[LY7/u;

    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p0, v2

    iget-object v4, p1, La8/a;->d:Lcom/samsung/android/motionphoto/utils/ex/e;

    invoke-virtual {v3, v4}, LY7/u;->e(Lcom/samsung/android/motionphoto/utils/ex/e;)LY7/r;

    move-result-object v3

    if-eqz v3, :cond_0

    const/4 v1, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return v1
.end method


# virtual methods
.method public final create(LY7/r;)Lcom/samsung/android/app/sdk/deepsky/barcode/parser/adapter/BarcodeParsedResult;
    .locals 2
    .param p1    # LY7/r;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "parsedResult"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/samsung/android/app/sdk/deepsky/barcode/parser/adapter/PaymentBarcodeAdapterFactory;->isSamsungPayIndiaType(LY7/r;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/samsung/android/app/sdk/deepsky/barcode/action/common/ActionUtil;->INSTANCE:Lcom/samsung/android/app/sdk/deepsky/barcode/action/common/ActionUtil;

    iget-object v1, p0, Lcom/samsung/android/app/sdk/deepsky/barcode/parser/adapter/PaymentBarcodeAdapterFactory;->appContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/sdk/deepsky/barcode/action/common/ActionUtil;->isSamsungPayIndiaSupported(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/samsung/android/app/sdk/deepsky/barcode/parser/adapter/SamsungPayBarcodeAdapter;

    iget-object p0, p0, Lcom/samsung/android/app/sdk/deepsky/barcode/parser/adapter/PaymentBarcodeAdapterFactory;->appContext:Landroid/content/Context;

    check-cast p1, La8/a;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/app/sdk/deepsky/barcode/parser/adapter/SamsungPayBarcodeAdapter;-><init>(Landroid/content/Context;La8/a;)V

    return-object v0

    :cond_0
    invoke-direct {p0, p1}, Lcom/samsung/android/app/sdk/deepsky/barcode/parser/adapter/PaymentBarcodeAdapterFactory;->isSamsungPayIndonesiaType(LY7/r;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/samsung/android/app/sdk/deepsky/barcode/action/common/ActionUtil;->INSTANCE:Lcom/samsung/android/app/sdk/deepsky/barcode/action/common/ActionUtil;

    iget-object v1, p0, Lcom/samsung/android/app/sdk/deepsky/barcode/parser/adapter/PaymentBarcodeAdapterFactory;->appContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/sdk/deepsky/barcode/action/common/ActionUtil;->isSamsungPayIndonesiaSupported(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/samsung/android/app/sdk/deepsky/barcode/parser/adapter/SamsungPayBarcodeAdapter;

    iget-object p0, p0, Lcom/samsung/android/app/sdk/deepsky/barcode/parser/adapter/PaymentBarcodeAdapterFactory;->appContext:Landroid/content/Context;

    check-cast p1, La8/a;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/app/sdk/deepsky/barcode/parser/adapter/SamsungPayBarcodeAdapter;-><init>(Landroid/content/Context;La8/a;)V

    return-object v0

    :cond_1
    invoke-direct {p0, p1}, Lcom/samsung/android/app/sdk/deepsky/barcode/parser/adapter/PaymentBarcodeAdapterFactory;->isPixType(LY7/r;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Lcom/samsung/android/app/sdk/deepsky/barcode/parser/adapter/PixBarcodeAdapter;

    iget-object p0, p0, Lcom/samsung/android/app/sdk/deepsky/barcode/parser/adapter/PaymentBarcodeAdapterFactory;->appContext:Landroid/content/Context;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/app/sdk/deepsky/barcode/parser/adapter/PixBarcodeAdapter;-><init>(Landroid/content/Context;LY7/r;)V

    return-object v0

    :cond_2
    invoke-direct {p0, p1}, Lcom/samsung/android/app/sdk/deepsky/barcode/parser/adapter/PaymentBarcodeAdapterFactory;->isUriType(LY7/r;)Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Lcom/samsung/android/app/sdk/deepsky/barcode/parser/adapter/UrlBarcodeAdapter;

    iget-object p0, p0, Lcom/samsung/android/app/sdk/deepsky/barcode/parser/adapter/PaymentBarcodeAdapterFactory;->appContext:Landroid/content/Context;

    check-cast p1, LY7/x;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/app/sdk/deepsky/barcode/parser/adapter/UrlBarcodeAdapter;-><init>(Landroid/content/Context;LY7/r;)V

    return-object v0

    :cond_3
    new-instance v0, Lcom/samsung/android/app/sdk/deepsky/barcode/parser/adapter/TextBarcodeAdapter;

    iget-object p0, p0, Lcom/samsung/android/app/sdk/deepsky/barcode/parser/adapter/PaymentBarcodeAdapterFactory;->appContext:Landroid/content/Context;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/app/sdk/deepsky/barcode/parser/adapter/TextBarcodeAdapter;-><init>(Landroid/content/Context;LY7/r;)V

    return-object v0
.end method
