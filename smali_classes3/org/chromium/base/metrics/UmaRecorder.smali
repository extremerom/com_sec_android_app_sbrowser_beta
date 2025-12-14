.class public interface abstract Lorg/chromium/base/metrics/UmaRecorder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/google/errorprone/annotations/DoNotMock;
.end annotation

.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# virtual methods
.method public abstract addUserActionCallbackForTesting(Lorg/chromium/base/Callback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/chromium/base/Callback<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract getHistogramSamplesForTesting(Ljava/lang/String;)Ljava/util/List;
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
.end method

.method public abstract getHistogramTotalCountForTesting(Ljava/lang/String;)I
.end method

.method public abstract getHistogramValueCountForTesting(Ljava/lang/String;I)I
.end method

.method public abstract recordBooleanHistogram(Ljava/lang/String;Z)V
.end method

.method public abstract recordExponentialHistogram(Ljava/lang/String;IIII)V
.end method

.method public abstract recordLinearHistogram(Ljava/lang/String;IIII)V
.end method

.method public abstract recordSparseHistogram(Ljava/lang/String;I)V
.end method

.method public abstract recordUserAction(Ljava/lang/String;J)V
.end method

.method public abstract removeUserActionCallbackForTesting(Lorg/chromium/base/Callback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/chromium/base/Callback<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method
