.class public Lcom/google/cardboard/sdk/qrcode/QrCodeTracker;
.super LS5/g;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/cardboard/sdk/qrcode/QrCodeTracker$Listener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "LS5/g;"
    }
.end annotation


# instance fields
.field private final listener:Lcom/google/cardboard/sdk/qrcode/QrCodeTracker$Listener;


# direct methods
.method public constructor <init>(Lcom/google/cardboard/sdk/qrcode/QrCodeTracker$Listener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/cardboard/sdk/qrcode/QrCodeTracker;->listener:Lcom/google/cardboard/sdk/qrcode/QrCodeTracker$Listener;

    return-void
.end method


# virtual methods
.method public onNewItem(ILcom/google/android/gms/vision/barcode/Barcode;)V
    .locals 0

    iget-object p1, p2, Lcom/google/android/gms/vision/barcode/Barcode;->c:Ljava/lang/String;

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/google/cardboard/sdk/qrcode/QrCodeTracker;->listener:Lcom/google/cardboard/sdk/qrcode/QrCodeTracker$Listener;

    invoke-interface {p0, p2}, Lcom/google/cardboard/sdk/qrcode/QrCodeTracker$Listener;->onQrCodeDetected(Lcom/google/android/gms/vision/barcode/Barcode;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic onNewItem(ILjava/lang/Object;)V
    .locals 0

    check-cast p2, Lcom/google/android/gms/vision/barcode/Barcode;

    invoke-virtual {p0, p1, p2}, Lcom/google/cardboard/sdk/qrcode/QrCodeTracker;->onNewItem(ILcom/google/android/gms/vision/barcode/Barcode;)V

    return-void
.end method
