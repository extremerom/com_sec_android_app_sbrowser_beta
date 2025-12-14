.class public final Lcom/samsung/android/app/sdk/deepsky/barcode/BarcodeProvider;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0010\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0007\u00a8\u0006\u0008"
    }
    d2 = {
        "Lcom/samsung/android/app/sdk/deepsky/barcode/BarcodeProvider;",
        "",
        "<init>",
        "()V",
        "getBarcodeScanner",
        "Lcom/samsung/android/app/sdk/deepsky/barcode/BarcodeScanner;",
        "context",
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


# static fields
.field public static final INSTANCE:Lcom/samsung/android/app/sdk/deepsky/barcode/BarcodeProvider;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/app/sdk/deepsky/barcode/BarcodeProvider;

    invoke-direct {v0}, Lcom/samsung/android/app/sdk/deepsky/barcode/BarcodeProvider;-><init>()V

    sput-object v0, Lcom/samsung/android/app/sdk/deepsky/barcode/BarcodeProvider;->INSTANCE:Lcom/samsung/android/app/sdk/deepsky/barcode/BarcodeProvider;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final getBarcodeScanner(Landroid/content/Context;)Lcom/samsung/android/app/sdk/deepsky/barcode/BarcodeScanner;
    .locals 2
    .param p0    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "context"

    invoke-static {p0, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/samsung/android/app/sdk/deepsky/barcode/BarcodeScannerImpl;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const-string v1, "getApplicationContext(...)"

    invoke-static {p0, v1}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, p0}, Lcom/samsung/android/app/sdk/deepsky/barcode/BarcodeScannerImpl;-><init>(Landroid/content/Context;)V

    return-object v0
.end method
