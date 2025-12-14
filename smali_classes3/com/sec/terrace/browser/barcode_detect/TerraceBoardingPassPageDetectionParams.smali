.class public Lcom/sec/terrace/browser/barcode_detect/TerraceBoardingPassPageDetectionParams;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final mParams:Lorg/chromium/context_aware_engine/mojom/BoardingPassPageDetectionParams;


# direct methods
.method public constructor <init>(Ljava/lang/String;DLjava/lang/String;DLjava/util/Map;D[Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "D",
            "Ljava/lang/String;",
            "D",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Double;",
            ">;D[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/chromium/context_aware_engine/mojom/BoardingPassPageDetectionParams;

    invoke-direct {v0}, Lorg/chromium/context_aware_engine/mojom/BoardingPassPageDetectionParams;-><init>()V

    iput-object v0, p0, Lcom/sec/terrace/browser/barcode_detect/TerraceBoardingPassPageDetectionParams;->mParams:Lorg/chromium/context_aware_engine/mojom/BoardingPassPageDetectionParams;

    iput-object p10, v0, Lorg/chromium/context_aware_engine/mojom/BoardingPassPageDetectionParams;->boardingPassImageQrSubstrings:[Ljava/lang/String;

    iput-object p4, v0, Lorg/chromium/context_aware_engine/mojom/BoardingPassPageDetectionParams;->flightRegex:Ljava/lang/String;

    iput-wide p5, v0, Lorg/chromium/context_aware_engine/mojom/BoardingPassPageDetectionParams;->flightRegexWeight:D

    iput-object p1, v0, Lorg/chromium/context_aware_engine/mojom/BoardingPassPageDetectionParams;->seatRegex:Ljava/lang/String;

    iput-wide p2, v0, Lorg/chromium/context_aware_engine/mojom/BoardingPassPageDetectionParams;->seatRegexWeight:D

    iput-wide p8, v0, Lorg/chromium/context_aware_engine/mojom/BoardingPassPageDetectionParams;->threshold:D

    iput-object p7, v0, Lorg/chromium/context_aware_engine/mojom/BoardingPassPageDetectionParams;->relatedWordsWeightsMap:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public getBoardingPassPageDetectionParams()Lorg/chromium/context_aware_engine/mojom/BoardingPassPageDetectionParams;
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/browser/barcode_detect/TerraceBoardingPassPageDetectionParams;->mParams:Lorg/chromium/context_aware_engine/mojom/BoardingPassPageDetectionParams;

    return-object p0
.end method
