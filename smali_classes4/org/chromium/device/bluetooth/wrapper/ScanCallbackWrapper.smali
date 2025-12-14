.class public interface abstract Lorg/chromium/device/bluetooth/wrapper/ScanCallbackWrapper;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# virtual methods
.method public abstract onBatchScanResult(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/chromium/device/bluetooth/wrapper/ScanResultWrapper;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onScanFailed(I)V
.end method

.method public abstract onScanResult(ILorg/chromium/device/bluetooth/wrapper/ScanResultWrapper;)V
.end method
