.class public Lcom/google/cardboard/sdk/qrcode/QrCodeTrackerFactory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LS5/e;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "LS5/e;"
    }
.end annotation


# instance fields
.field private final listener:Lcom/google/cardboard/sdk/qrcode/QrCodeTracker$Listener;


# direct methods
.method public constructor <init>(Lcom/google/cardboard/sdk/qrcode/QrCodeTracker$Listener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/cardboard/sdk/qrcode/QrCodeTrackerFactory;->listener:Lcom/google/cardboard/sdk/qrcode/QrCodeTracker$Listener;

    return-void
.end method


# virtual methods
.method public create(Lcom/google/android/gms/vision/barcode/Barcode;)LS5/g;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/vision/barcode/Barcode;",
            ")",
            "LS5/g;"
        }
    .end annotation

    new-instance p1, Lcom/google/cardboard/sdk/qrcode/QrCodeTracker;

    iget-object p0, p0, Lcom/google/cardboard/sdk/qrcode/QrCodeTrackerFactory;->listener:Lcom/google/cardboard/sdk/qrcode/QrCodeTracker$Listener;

    invoke-direct {p1, p0}, Lcom/google/cardboard/sdk/qrcode/QrCodeTracker;-><init>(Lcom/google/cardboard/sdk/qrcode/QrCodeTracker$Listener;)V

    return-object p1
.end method

.method public bridge synthetic create(Ljava/lang/Object;)LS5/g;
    .locals 0

    check-cast p1, Lcom/google/android/gms/vision/barcode/Barcode;

    invoke-virtual {p0, p1}, Lcom/google/cardboard/sdk/qrcode/QrCodeTrackerFactory;->create(Lcom/google/android/gms/vision/barcode/Barcode;)LS5/g;

    move-result-object p0

    return-object p0
.end method
