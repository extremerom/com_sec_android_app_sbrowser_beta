.class interface abstract Lcom/sec/android/app/sbrowser/barcode_detect/BarcodeResponseObserver;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract onBarcodeDetectionComplete()V
.end method

.method public onExtractBarcodeActions(Ljava/util/List;)V
    .locals 0
    .param p1    # Ljava/util/List;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/app/sdk/deepsky/barcode/action/abstraction/Action;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public setLatestBarcodeRawValue(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    return-void
.end method
