.class Lorg/chromium/base/metrics/NoopUmaRecorder;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/base/metrics/UmaRecorder;


# annotations
.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# virtual methods
.method public addUserActionCallbackForTesting(Lorg/chromium/base/Callback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/chromium/base/Callback<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public getHistogramSamplesForTesting(Ljava/lang/String;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lorg/chromium/base/metrics/HistogramBucket;",
            ">;"
        }
    .end annotation

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getHistogramTotalCountForTesting(Ljava/lang/String;)I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getHistogramValueCountForTesting(Ljava/lang/String;I)I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public recordBooleanHistogram(Ljava/lang/String;Z)V
    .locals 0

    return-void
.end method

.method public recordExponentialHistogram(Ljava/lang/String;IIII)V
    .locals 0

    return-void
.end method

.method public recordLinearHistogram(Ljava/lang/String;IIII)V
    .locals 0

    return-void
.end method

.method public recordSparseHistogram(Ljava/lang/String;I)V
    .locals 0

    return-void
.end method

.method public recordUserAction(Ljava/lang/String;J)V
    .locals 0

    return-void
.end method

.method public removeUserActionCallbackForTesting(Lorg/chromium/base/Callback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/chromium/base/Callback<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    return-void
.end method
