.class public final enum Lcom/samsung/android/app/sdk/deepsky/barcode/parser/common/BarcodeFormat;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/app/sdk/deepsky/barcode/parser/common/BarcodeFormat;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0018\u0002\n\u0002\u0008\u0011\u0008\u0086\u0081\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u0011\u0008\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0004\u0010\u0005R\u0017\u0010\u0003\u001a\u00020\u00028\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0003\u0010\u0006\u001a\u0004\u0008\u0007\u0010\u0008j\u0002\u0008\tj\u0002\u0008\nj\u0002\u0008\u000bj\u0002\u0008\u000cj\u0002\u0008\rj\u0002\u0008\u000ej\u0002\u0008\u000fj\u0002\u0008\u0010j\u0002\u0008\u0011j\u0002\u0008\u0012\u00a8\u0006\u0013"
    }
    d2 = {
        "Lcom/samsung/android/app/sdk/deepsky/barcode/parser/common/BarcodeFormat;",
        "",
        "LX7/a;",
        "zxingBarcodeFormat",
        "<init>",
        "(Ljava/lang/String;ILX7/a;)V",
        "LX7/a;",
        "getZxingBarcodeFormat",
        "()LX7/a;",
        "QR",
        "EAN8",
        "EAN13",
        "UPCA",
        "UPCE",
        "CODE39",
        "CODE128",
        "DM",
        "PDF_417",
        "AZTEC",
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
.field private static final synthetic $ENTRIES:Llb/a;

.field private static final synthetic $VALUES:[Lcom/samsung/android/app/sdk/deepsky/barcode/parser/common/BarcodeFormat;

.field public static final enum AZTEC:Lcom/samsung/android/app/sdk/deepsky/barcode/parser/common/BarcodeFormat;

.field public static final enum CODE128:Lcom/samsung/android/app/sdk/deepsky/barcode/parser/common/BarcodeFormat;

.field public static final enum CODE39:Lcom/samsung/android/app/sdk/deepsky/barcode/parser/common/BarcodeFormat;

.field public static final enum DM:Lcom/samsung/android/app/sdk/deepsky/barcode/parser/common/BarcodeFormat;

.field public static final enum EAN13:Lcom/samsung/android/app/sdk/deepsky/barcode/parser/common/BarcodeFormat;

.field public static final enum EAN8:Lcom/samsung/android/app/sdk/deepsky/barcode/parser/common/BarcodeFormat;

.field public static final enum PDF_417:Lcom/samsung/android/app/sdk/deepsky/barcode/parser/common/BarcodeFormat;

.field public static final enum QR:Lcom/samsung/android/app/sdk/deepsky/barcode/parser/common/BarcodeFormat;

.field public static final enum UPCA:Lcom/samsung/android/app/sdk/deepsky/barcode/parser/common/BarcodeFormat;

.field public static final enum UPCE:Lcom/samsung/android/app/sdk/deepsky/barcode/parser/common/BarcodeFormat;


# instance fields
.field private final zxingBarcodeFormat:LX7/a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method private static final synthetic $values()[Lcom/samsung/android/app/sdk/deepsky/barcode/parser/common/BarcodeFormat;
    .locals 10

    sget-object v0, Lcom/samsung/android/app/sdk/deepsky/barcode/parser/common/BarcodeFormat;->QR:Lcom/samsung/android/app/sdk/deepsky/barcode/parser/common/BarcodeFormat;

    sget-object v1, Lcom/samsung/android/app/sdk/deepsky/barcode/parser/common/BarcodeFormat;->EAN8:Lcom/samsung/android/app/sdk/deepsky/barcode/parser/common/BarcodeFormat;

    sget-object v2, Lcom/samsung/android/app/sdk/deepsky/barcode/parser/common/BarcodeFormat;->EAN13:Lcom/samsung/android/app/sdk/deepsky/barcode/parser/common/BarcodeFormat;

    sget-object v3, Lcom/samsung/android/app/sdk/deepsky/barcode/parser/common/BarcodeFormat;->UPCA:Lcom/samsung/android/app/sdk/deepsky/barcode/parser/common/BarcodeFormat;

    sget-object v4, Lcom/samsung/android/app/sdk/deepsky/barcode/parser/common/BarcodeFormat;->UPCE:Lcom/samsung/android/app/sdk/deepsky/barcode/parser/common/BarcodeFormat;

    sget-object v5, Lcom/samsung/android/app/sdk/deepsky/barcode/parser/common/BarcodeFormat;->CODE39:Lcom/samsung/android/app/sdk/deepsky/barcode/parser/common/BarcodeFormat;

    sget-object v6, Lcom/samsung/android/app/sdk/deepsky/barcode/parser/common/BarcodeFormat;->CODE128:Lcom/samsung/android/app/sdk/deepsky/barcode/parser/common/BarcodeFormat;

    sget-object v7, Lcom/samsung/android/app/sdk/deepsky/barcode/parser/common/BarcodeFormat;->DM:Lcom/samsung/android/app/sdk/deepsky/barcode/parser/common/BarcodeFormat;

    sget-object v8, Lcom/samsung/android/app/sdk/deepsky/barcode/parser/common/BarcodeFormat;->PDF_417:Lcom/samsung/android/app/sdk/deepsky/barcode/parser/common/BarcodeFormat;

    sget-object v9, Lcom/samsung/android/app/sdk/deepsky/barcode/parser/common/BarcodeFormat;->AZTEC:Lcom/samsung/android/app/sdk/deepsky/barcode/parser/common/BarcodeFormat;

    filled-new-array/range {v0 .. v9}, [Lcom/samsung/android/app/sdk/deepsky/barcode/parser/common/BarcodeFormat;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/samsung/android/app/sdk/deepsky/barcode/parser/common/BarcodeFormat;

    sget-object v1, LX7/a;->QR_CODE:LX7/a;

    const-string v2, "QR"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lcom/samsung/android/app/sdk/deepsky/barcode/parser/common/BarcodeFormat;-><init>(Ljava/lang/String;ILX7/a;)V

    sput-object v0, Lcom/samsung/android/app/sdk/deepsky/barcode/parser/common/BarcodeFormat;->QR:Lcom/samsung/android/app/sdk/deepsky/barcode/parser/common/BarcodeFormat;

    new-instance v0, Lcom/samsung/android/app/sdk/deepsky/barcode/parser/common/BarcodeFormat;

    sget-object v1, LX7/a;->EAN_8:LX7/a;

    const-string v2, "EAN8"

    const/4 v3, 0x1

    invoke-direct {v0, v2, v3, v1}, Lcom/samsung/android/app/sdk/deepsky/barcode/parser/common/BarcodeFormat;-><init>(Ljava/lang/String;ILX7/a;)V

    sput-object v0, Lcom/samsung/android/app/sdk/deepsky/barcode/parser/common/BarcodeFormat;->EAN8:Lcom/samsung/android/app/sdk/deepsky/barcode/parser/common/BarcodeFormat;

    new-instance v0, Lcom/samsung/android/app/sdk/deepsky/barcode/parser/common/BarcodeFormat;

    sget-object v1, LX7/a;->EAN_13:LX7/a;

    const-string v2, "EAN13"

    const/4 v3, 0x2

    invoke-direct {v0, v2, v3, v1}, Lcom/samsung/android/app/sdk/deepsky/barcode/parser/common/BarcodeFormat;-><init>(Ljava/lang/String;ILX7/a;)V

    sput-object v0, Lcom/samsung/android/app/sdk/deepsky/barcode/parser/common/BarcodeFormat;->EAN13:Lcom/samsung/android/app/sdk/deepsky/barcode/parser/common/BarcodeFormat;

    new-instance v0, Lcom/samsung/android/app/sdk/deepsky/barcode/parser/common/BarcodeFormat;

    sget-object v1, LX7/a;->UPC_A:LX7/a;

    const-string v2, "UPCA"

    const/4 v3, 0x3

    invoke-direct {v0, v2, v3, v1}, Lcom/samsung/android/app/sdk/deepsky/barcode/parser/common/BarcodeFormat;-><init>(Ljava/lang/String;ILX7/a;)V

    sput-object v0, Lcom/samsung/android/app/sdk/deepsky/barcode/parser/common/BarcodeFormat;->UPCA:Lcom/samsung/android/app/sdk/deepsky/barcode/parser/common/BarcodeFormat;

    new-instance v0, Lcom/samsung/android/app/sdk/deepsky/barcode/parser/common/BarcodeFormat;

    sget-object v1, LX7/a;->UPC_E:LX7/a;

    const-string v2, "UPCE"

    const/4 v3, 0x4

    invoke-direct {v0, v2, v3, v1}, Lcom/samsung/android/app/sdk/deepsky/barcode/parser/common/BarcodeFormat;-><init>(Ljava/lang/String;ILX7/a;)V

    sput-object v0, Lcom/samsung/android/app/sdk/deepsky/barcode/parser/common/BarcodeFormat;->UPCE:Lcom/samsung/android/app/sdk/deepsky/barcode/parser/common/BarcodeFormat;

    new-instance v0, Lcom/samsung/android/app/sdk/deepsky/barcode/parser/common/BarcodeFormat;

    sget-object v1, LX7/a;->CODE_39:LX7/a;

    const-string v2, "CODE39"

    const/4 v3, 0x5

    invoke-direct {v0, v2, v3, v1}, Lcom/samsung/android/app/sdk/deepsky/barcode/parser/common/BarcodeFormat;-><init>(Ljava/lang/String;ILX7/a;)V

    sput-object v0, Lcom/samsung/android/app/sdk/deepsky/barcode/parser/common/BarcodeFormat;->CODE39:Lcom/samsung/android/app/sdk/deepsky/barcode/parser/common/BarcodeFormat;

    new-instance v0, Lcom/samsung/android/app/sdk/deepsky/barcode/parser/common/BarcodeFormat;

    sget-object v1, LX7/a;->CODE_128:LX7/a;

    const-string v2, "CODE128"

    const/4 v3, 0x6

    invoke-direct {v0, v2, v3, v1}, Lcom/samsung/android/app/sdk/deepsky/barcode/parser/common/BarcodeFormat;-><init>(Ljava/lang/String;ILX7/a;)V

    sput-object v0, Lcom/samsung/android/app/sdk/deepsky/barcode/parser/common/BarcodeFormat;->CODE128:Lcom/samsung/android/app/sdk/deepsky/barcode/parser/common/BarcodeFormat;

    new-instance v0, Lcom/samsung/android/app/sdk/deepsky/barcode/parser/common/BarcodeFormat;

    sget-object v1, LX7/a;->DATA_MATRIX:LX7/a;

    const-string v2, "DM"

    const/4 v3, 0x7

    invoke-direct {v0, v2, v3, v1}, Lcom/samsung/android/app/sdk/deepsky/barcode/parser/common/BarcodeFormat;-><init>(Ljava/lang/String;ILX7/a;)V

    sput-object v0, Lcom/samsung/android/app/sdk/deepsky/barcode/parser/common/BarcodeFormat;->DM:Lcom/samsung/android/app/sdk/deepsky/barcode/parser/common/BarcodeFormat;

    new-instance v0, Lcom/samsung/android/app/sdk/deepsky/barcode/parser/common/BarcodeFormat;

    sget-object v1, LX7/a;->PDF_417:LX7/a;

    const-string v2, "PDF_417"

    const/16 v3, 0x8

    invoke-direct {v0, v2, v3, v1}, Lcom/samsung/android/app/sdk/deepsky/barcode/parser/common/BarcodeFormat;-><init>(Ljava/lang/String;ILX7/a;)V

    sput-object v0, Lcom/samsung/android/app/sdk/deepsky/barcode/parser/common/BarcodeFormat;->PDF_417:Lcom/samsung/android/app/sdk/deepsky/barcode/parser/common/BarcodeFormat;

    new-instance v0, Lcom/samsung/android/app/sdk/deepsky/barcode/parser/common/BarcodeFormat;

    sget-object v1, LX7/a;->AZTEC:LX7/a;

    const-string v2, "AZTEC"

    const/16 v3, 0x9

    invoke-direct {v0, v2, v3, v1}, Lcom/samsung/android/app/sdk/deepsky/barcode/parser/common/BarcodeFormat;-><init>(Ljava/lang/String;ILX7/a;)V

    sput-object v0, Lcom/samsung/android/app/sdk/deepsky/barcode/parser/common/BarcodeFormat;->AZTEC:Lcom/samsung/android/app/sdk/deepsky/barcode/parser/common/BarcodeFormat;

    invoke-static {}, Lcom/samsung/android/app/sdk/deepsky/barcode/parser/common/BarcodeFormat;->$values()[Lcom/samsung/android/app/sdk/deepsky/barcode/parser/common/BarcodeFormat;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/sdk/deepsky/barcode/parser/common/BarcodeFormat;->$VALUES:[Lcom/samsung/android/app/sdk/deepsky/barcode/parser/common/BarcodeFormat;

    invoke-static {v0}, LP6/b;->b([Ljava/lang/Enum;)Llb/b;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/sdk/deepsky/barcode/parser/common/BarcodeFormat;->$ENTRIES:Llb/a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILX7/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LX7/a;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/samsung/android/app/sdk/deepsky/barcode/parser/common/BarcodeFormat;->zxingBarcodeFormat:LX7/a;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/app/sdk/deepsky/barcode/parser/common/BarcodeFormat;
    .locals 1

    const-class v0, Lcom/samsung/android/app/sdk/deepsky/barcode/parser/common/BarcodeFormat;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/app/sdk/deepsky/barcode/parser/common/BarcodeFormat;

    return-object p0
.end method

.method public static values()[Lcom/samsung/android/app/sdk/deepsky/barcode/parser/common/BarcodeFormat;
    .locals 1

    sget-object v0, Lcom/samsung/android/app/sdk/deepsky/barcode/parser/common/BarcodeFormat;->$VALUES:[Lcom/samsung/android/app/sdk/deepsky/barcode/parser/common/BarcodeFormat;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/app/sdk/deepsky/barcode/parser/common/BarcodeFormat;

    return-object v0
.end method


# virtual methods
.method public final getZxingBarcodeFormat()LX7/a;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/app/sdk/deepsky/barcode/parser/common/BarcodeFormat;->zxingBarcodeFormat:LX7/a;

    return-object p0
.end method
