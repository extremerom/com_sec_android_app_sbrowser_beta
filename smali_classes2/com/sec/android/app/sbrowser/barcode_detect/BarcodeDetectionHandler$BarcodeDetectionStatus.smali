.class final enum Lcom/sec/android/app/sbrowser/barcode_detect/BarcodeDetectionHandler$BarcodeDetectionStatus;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/barcode_detect/BarcodeDetectionHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "BarcodeDetectionStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sec/android/app/sbrowser/barcode_detect/BarcodeDetectionHandler$BarcodeDetectionStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/android/app/sbrowser/barcode_detect/BarcodeDetectionHandler$BarcodeDetectionStatus;

.field public static final enum COMPLETED:Lcom/sec/android/app/sbrowser/barcode_detect/BarcodeDetectionHandler$BarcodeDetectionStatus;

.field public static final enum DETECTION_TIMEOUT:Lcom/sec/android/app/sbrowser/barcode_detect/BarcodeDetectionHandler$BarcodeDetectionStatus;

.field public static final enum IN_PROGRESS:Lcom/sec/android/app/sbrowser/barcode_detect/BarcodeDetectionHandler$BarcodeDetectionStatus;

.field public static final enum NONE:Lcom/sec/android/app/sbrowser/barcode_detect/BarcodeDetectionHandler$BarcodeDetectionStatus;


# direct methods
.method private static synthetic $values()[Lcom/sec/android/app/sbrowser/barcode_detect/BarcodeDetectionHandler$BarcodeDetectionStatus;
    .locals 4

    sget-object v0, Lcom/sec/android/app/sbrowser/barcode_detect/BarcodeDetectionHandler$BarcodeDetectionStatus;->COMPLETED:Lcom/sec/android/app/sbrowser/barcode_detect/BarcodeDetectionHandler$BarcodeDetectionStatus;

    sget-object v1, Lcom/sec/android/app/sbrowser/barcode_detect/BarcodeDetectionHandler$BarcodeDetectionStatus;->IN_PROGRESS:Lcom/sec/android/app/sbrowser/barcode_detect/BarcodeDetectionHandler$BarcodeDetectionStatus;

    sget-object v2, Lcom/sec/android/app/sbrowser/barcode_detect/BarcodeDetectionHandler$BarcodeDetectionStatus;->DETECTION_TIMEOUT:Lcom/sec/android/app/sbrowser/barcode_detect/BarcodeDetectionHandler$BarcodeDetectionStatus;

    sget-object v3, Lcom/sec/android/app/sbrowser/barcode_detect/BarcodeDetectionHandler$BarcodeDetectionStatus;->NONE:Lcom/sec/android/app/sbrowser/barcode_detect/BarcodeDetectionHandler$BarcodeDetectionStatus;

    filled-new-array {v0, v1, v2, v3}, [Lcom/sec/android/app/sbrowser/barcode_detect/BarcodeDetectionHandler$BarcodeDetectionStatus;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/sec/android/app/sbrowser/barcode_detect/BarcodeDetectionHandler$BarcodeDetectionStatus;

    const-string v1, "COMPLETED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/sbrowser/barcode_detect/BarcodeDetectionHandler$BarcodeDetectionStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/sbrowser/barcode_detect/BarcodeDetectionHandler$BarcodeDetectionStatus;->COMPLETED:Lcom/sec/android/app/sbrowser/barcode_detect/BarcodeDetectionHandler$BarcodeDetectionStatus;

    new-instance v0, Lcom/sec/android/app/sbrowser/barcode_detect/BarcodeDetectionHandler$BarcodeDetectionStatus;

    const-string v1, "IN_PROGRESS"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/sbrowser/barcode_detect/BarcodeDetectionHandler$BarcodeDetectionStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/sbrowser/barcode_detect/BarcodeDetectionHandler$BarcodeDetectionStatus;->IN_PROGRESS:Lcom/sec/android/app/sbrowser/barcode_detect/BarcodeDetectionHandler$BarcodeDetectionStatus;

    new-instance v0, Lcom/sec/android/app/sbrowser/barcode_detect/BarcodeDetectionHandler$BarcodeDetectionStatus;

    const-string v1, "DETECTION_TIMEOUT"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/sbrowser/barcode_detect/BarcodeDetectionHandler$BarcodeDetectionStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/sbrowser/barcode_detect/BarcodeDetectionHandler$BarcodeDetectionStatus;->DETECTION_TIMEOUT:Lcom/sec/android/app/sbrowser/barcode_detect/BarcodeDetectionHandler$BarcodeDetectionStatus;

    new-instance v0, Lcom/sec/android/app/sbrowser/barcode_detect/BarcodeDetectionHandler$BarcodeDetectionStatus;

    const-string v1, "NONE"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/sbrowser/barcode_detect/BarcodeDetectionHandler$BarcodeDetectionStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/sbrowser/barcode_detect/BarcodeDetectionHandler$BarcodeDetectionStatus;->NONE:Lcom/sec/android/app/sbrowser/barcode_detect/BarcodeDetectionHandler$BarcodeDetectionStatus;

    invoke-static {}, Lcom/sec/android/app/sbrowser/barcode_detect/BarcodeDetectionHandler$BarcodeDetectionStatus;->$values()[Lcom/sec/android/app/sbrowser/barcode_detect/BarcodeDetectionHandler$BarcodeDetectionStatus;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/sbrowser/barcode_detect/BarcodeDetectionHandler$BarcodeDetectionStatus;->$VALUES:[Lcom/sec/android/app/sbrowser/barcode_detect/BarcodeDetectionHandler$BarcodeDetectionStatus;

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

.method public static valueOf(Ljava/lang/String;)Lcom/sec/android/app/sbrowser/barcode_detect/BarcodeDetectionHandler$BarcodeDetectionStatus;
    .locals 1

    const-class v0, Lcom/sec/android/app/sbrowser/barcode_detect/BarcodeDetectionHandler$BarcodeDetectionStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/sbrowser/barcode_detect/BarcodeDetectionHandler$BarcodeDetectionStatus;

    return-object p0
.end method

.method public static values()[Lcom/sec/android/app/sbrowser/barcode_detect/BarcodeDetectionHandler$BarcodeDetectionStatus;
    .locals 1

    sget-object v0, Lcom/sec/android/app/sbrowser/barcode_detect/BarcodeDetectionHandler$BarcodeDetectionStatus;->$VALUES:[Lcom/sec/android/app/sbrowser/barcode_detect/BarcodeDetectionHandler$BarcodeDetectionStatus;

    invoke-virtual {v0}, [Lcom/sec/android/app/sbrowser/barcode_detect/BarcodeDetectionHandler$BarcodeDetectionStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/android/app/sbrowser/barcode_detect/BarcodeDetectionHandler$BarcodeDetectionStatus;

    return-object v0
.end method
