.class public final enum Lcom/sec/android/app/sbrowser/barcode_detect/BarcodeDetectionHandler$BarcodeType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/barcode_detect/BarcodeDetectionHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "BarcodeType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sec/android/app/sbrowser/barcode_detect/BarcodeDetectionHandler$BarcodeType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/android/app/sbrowser/barcode_detect/BarcodeDetectionHandler$BarcodeType;

.field public static final enum BOARDINGPASS:Lcom/sec/android/app/sbrowser/barcode_detect/BarcodeDetectionHandler$BarcodeType;

.field public static final enum ESIM:Lcom/sec/android/app/sbrowser/barcode_detect/BarcodeDetectionHandler$BarcodeType;

.field public static final enum NONE:Lcom/sec/android/app/sbrowser/barcode_detect/BarcodeDetectionHandler$BarcodeType;


# direct methods
.method private static synthetic $values()[Lcom/sec/android/app/sbrowser/barcode_detect/BarcodeDetectionHandler$BarcodeType;
    .locals 3

    sget-object v0, Lcom/sec/android/app/sbrowser/barcode_detect/BarcodeDetectionHandler$BarcodeType;->ESIM:Lcom/sec/android/app/sbrowser/barcode_detect/BarcodeDetectionHandler$BarcodeType;

    sget-object v1, Lcom/sec/android/app/sbrowser/barcode_detect/BarcodeDetectionHandler$BarcodeType;->BOARDINGPASS:Lcom/sec/android/app/sbrowser/barcode_detect/BarcodeDetectionHandler$BarcodeType;

    sget-object v2, Lcom/sec/android/app/sbrowser/barcode_detect/BarcodeDetectionHandler$BarcodeType;->NONE:Lcom/sec/android/app/sbrowser/barcode_detect/BarcodeDetectionHandler$BarcodeType;

    filled-new-array {v0, v1, v2}, [Lcom/sec/android/app/sbrowser/barcode_detect/BarcodeDetectionHandler$BarcodeType;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/sec/android/app/sbrowser/barcode_detect/BarcodeDetectionHandler$BarcodeType;

    const-string v1, "ESIM"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/sbrowser/barcode_detect/BarcodeDetectionHandler$BarcodeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/sbrowser/barcode_detect/BarcodeDetectionHandler$BarcodeType;->ESIM:Lcom/sec/android/app/sbrowser/barcode_detect/BarcodeDetectionHandler$BarcodeType;

    new-instance v0, Lcom/sec/android/app/sbrowser/barcode_detect/BarcodeDetectionHandler$BarcodeType;

    const-string v1, "BOARDINGPASS"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/sbrowser/barcode_detect/BarcodeDetectionHandler$BarcodeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/sbrowser/barcode_detect/BarcodeDetectionHandler$BarcodeType;->BOARDINGPASS:Lcom/sec/android/app/sbrowser/barcode_detect/BarcodeDetectionHandler$BarcodeType;

    new-instance v0, Lcom/sec/android/app/sbrowser/barcode_detect/BarcodeDetectionHandler$BarcodeType;

    const-string v1, "NONE"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/sbrowser/barcode_detect/BarcodeDetectionHandler$BarcodeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/sbrowser/barcode_detect/BarcodeDetectionHandler$BarcodeType;->NONE:Lcom/sec/android/app/sbrowser/barcode_detect/BarcodeDetectionHandler$BarcodeType;

    invoke-static {}, Lcom/sec/android/app/sbrowser/barcode_detect/BarcodeDetectionHandler$BarcodeType;->$values()[Lcom/sec/android/app/sbrowser/barcode_detect/BarcodeDetectionHandler$BarcodeType;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/sbrowser/barcode_detect/BarcodeDetectionHandler$BarcodeType;->$VALUES:[Lcom/sec/android/app/sbrowser/barcode_detect/BarcodeDetectionHandler$BarcodeType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/android/app/sbrowser/barcode_detect/BarcodeDetectionHandler$BarcodeType;
    .locals 1

    const-class v0, Lcom/sec/android/app/sbrowser/barcode_detect/BarcodeDetectionHandler$BarcodeType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/sbrowser/barcode_detect/BarcodeDetectionHandler$BarcodeType;

    return-object p0
.end method

.method public static values()[Lcom/sec/android/app/sbrowser/barcode_detect/BarcodeDetectionHandler$BarcodeType;
    .locals 1

    sget-object v0, Lcom/sec/android/app/sbrowser/barcode_detect/BarcodeDetectionHandler$BarcodeType;->$VALUES:[Lcom/sec/android/app/sbrowser/barcode_detect/BarcodeDetectionHandler$BarcodeType;

    invoke-virtual {v0}, [Lcom/sec/android/app/sbrowser/barcode_detect/BarcodeDetectionHandler$BarcodeType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/android/app/sbrowser/barcode_detect/BarcodeDetectionHandler$BarcodeType;

    return-object v0
.end method
