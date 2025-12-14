.class final Lorg/chromium/base/metrics/NativeUmaRecorder;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/base/metrics/UmaRecorder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/base/metrics/NativeUmaRecorder$Natives;
    }
.end annotation

.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation

.annotation runtime Lorg/jni_zero/JNINamespace;
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final mNativeHints:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mUserActionTestingCallbackNativePtrs:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/chromium/base/Callback<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/base/metrics/NativeUmaRecorder;->mNativeHints:Ljava/util/Map;

    return-void
.end method

.method private getNativeHint(Ljava/lang/String;)J
    .locals 0

    iget-object p0, p0, Lorg/chromium/base/metrics/NativeUmaRecorder;->mNativeHints:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    if-nez p0, :cond_0

    const-wide/16 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    :goto_0
    return-wide p0
.end method

.method private maybeUpdateNativeHint(Ljava/lang/String;JJ)V
    .locals 0

    cmp-long p2, p2, p4

    if-eqz p2, :cond_0

    iget-object p0, p0, Lorg/chromium/base/metrics/NativeUmaRecorder;->mNativeHints:Ljava/util/Map;

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method


# virtual methods
.method public addUserActionCallbackForTesting(Lorg/chromium/base/Callback;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/chromium/base/Callback<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lorg/chromium/base/metrics/NativeUmaRecorderJni;->get()Lorg/chromium/base/metrics/NativeUmaRecorder$Natives;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/chromium/base/metrics/NativeUmaRecorder$Natives;->addActionCallbackForTesting(Lorg/chromium/base/Callback;)J

    move-result-wide v0

    iget-object v2, p0, Lorg/chromium/base/metrics/NativeUmaRecorder;->mUserActionTestingCallbackNativePtrs:Ljava/util/Map;

    if-nez v2, :cond_0

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    invoke-static {v2}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v2

    iput-object v2, p0, Lorg/chromium/base/metrics/NativeUmaRecorder;->mUserActionTestingCallbackNativePtrs:Ljava/util/Map;

    :cond_0
    iget-object p0, p0, Lorg/chromium/base/metrics/NativeUmaRecorder;->mUserActionTestingCallbackNativePtrs:Ljava/util/Map;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public getHistogramSamplesForTesting(Ljava/lang/String;)Ljava/util/List;
    .locals 6
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

    invoke-static {}, Lorg/chromium/base/metrics/NativeUmaRecorderJni;->get()Lorg/chromium/base/metrics/NativeUmaRecorder$Natives;

    move-result-object p0

    invoke-interface {p0, p1}, Lorg/chromium/base/metrics/NativeUmaRecorder$Natives;->getHistogramSamplesForTesting(Ljava/lang/String;)[J

    move-result-object p0

    new-instance p1, Ljava/util/ArrayList;

    array-length v0, p0

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v0, 0x0

    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_0

    aget-wide v1, p0, v0

    long-to-int v1, v1

    add-int/lit8 v2, v0, 0x1

    aget-wide v2, p0, v2

    add-int/lit8 v4, v0, 0x2

    aget-wide v4, p0, v4

    long-to-int v4, v4

    new-instance v5, Lorg/chromium/base/metrics/HistogramBucket;

    invoke-direct {v5, v1, v2, v3, v4}, Lorg/chromium/base/metrics/HistogramBucket;-><init>(IJI)V

    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x3

    goto :goto_0

    :cond_0
    return-object p1
.end method

.method public getHistogramTotalCountForTesting(Ljava/lang/String;)I
    .locals 2

    invoke-static {}, Lorg/chromium/base/metrics/NativeUmaRecorderJni;->get()Lorg/chromium/base/metrics/NativeUmaRecorder$Natives;

    move-result-object p0

    const-wide/16 v0, 0x0

    invoke-interface {p0, p1, v0, v1}, Lorg/chromium/base/metrics/NativeUmaRecorder$Natives;->getHistogramTotalCountForTesting(Ljava/lang/String;J)I

    move-result p0

    return p0
.end method

.method public getHistogramValueCountForTesting(Ljava/lang/String;I)I
    .locals 2

    invoke-static {}, Lorg/chromium/base/metrics/NativeUmaRecorderJni;->get()Lorg/chromium/base/metrics/NativeUmaRecorder$Natives;

    move-result-object p0

    const-wide/16 v0, 0x0

    invoke-interface {p0, p1, p2, v0, v1}, Lorg/chromium/base/metrics/NativeUmaRecorder$Natives;->getHistogramValueCountForTesting(Ljava/lang/String;IJ)I

    move-result p0

    return p0
.end method

.method public recordBooleanHistogram(Ljava/lang/String;Z)V
    .locals 6

    invoke-direct {p0, p1}, Lorg/chromium/base/metrics/NativeUmaRecorder;->getNativeHint(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {}, Lorg/chromium/base/metrics/NativeUmaRecorderJni;->get()Lorg/chromium/base/metrics/NativeUmaRecorder$Natives;

    move-result-object v0

    invoke-interface {v0, p1, v2, v3, p2}, Lorg/chromium/base/metrics/NativeUmaRecorder$Natives;->recordBooleanHistogram(Ljava/lang/String;JZ)J

    move-result-wide v4

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lorg/chromium/base/metrics/NativeUmaRecorder;->maybeUpdateNativeHint(Ljava/lang/String;JJ)V

    return-void
.end method

.method public recordExponentialHistogram(Ljava/lang/String;IIII)V
    .locals 10

    invoke-direct {p0, p1}, Lorg/chromium/base/metrics/NativeUmaRecorder;->getNativeHint(Ljava/lang/String;)J

    move-result-wide v8

    invoke-static {}, Lorg/chromium/base/metrics/NativeUmaRecorderJni;->get()Lorg/chromium/base/metrics/NativeUmaRecorder$Natives;

    move-result-object v0

    move-object v1, p1

    move-wide v2, v8

    move v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    invoke-interface/range {v0 .. v7}, Lorg/chromium/base/metrics/NativeUmaRecorder$Natives;->recordExponentialHistogram(Ljava/lang/String;JIIII)J

    move-result-wide v4

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lorg/chromium/base/metrics/NativeUmaRecorder;->maybeUpdateNativeHint(Ljava/lang/String;JJ)V

    return-void
.end method

.method public recordLinearHistogram(Ljava/lang/String;IIII)V
    .locals 10

    invoke-direct {p0, p1}, Lorg/chromium/base/metrics/NativeUmaRecorder;->getNativeHint(Ljava/lang/String;)J

    move-result-wide v8

    invoke-static {}, Lorg/chromium/base/metrics/NativeUmaRecorderJni;->get()Lorg/chromium/base/metrics/NativeUmaRecorder$Natives;

    move-result-object v0

    move-object v1, p1

    move-wide v2, v8

    move v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    invoke-interface/range {v0 .. v7}, Lorg/chromium/base/metrics/NativeUmaRecorder$Natives;->recordLinearHistogram(Ljava/lang/String;JIIII)J

    move-result-wide v4

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lorg/chromium/base/metrics/NativeUmaRecorder;->maybeUpdateNativeHint(Ljava/lang/String;JJ)V

    return-void
.end method

.method public recordSparseHistogram(Ljava/lang/String;I)V
    .locals 6

    invoke-direct {p0, p1}, Lorg/chromium/base/metrics/NativeUmaRecorder;->getNativeHint(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {}, Lorg/chromium/base/metrics/NativeUmaRecorderJni;->get()Lorg/chromium/base/metrics/NativeUmaRecorder$Natives;

    move-result-object v0

    invoke-interface {v0, p1, v2, v3, p2}, Lorg/chromium/base/metrics/NativeUmaRecorder$Natives;->recordSparseHistogram(Ljava/lang/String;JI)J

    move-result-wide v4

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lorg/chromium/base/metrics/NativeUmaRecorder;->maybeUpdateNativeHint(Ljava/lang/String;JJ)V

    return-void
.end method

.method public recordUserAction(Ljava/lang/String;J)V
    .locals 2

    invoke-static {}, Lorg/chromium/base/TimeUtils;->elapsedRealtimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, p2

    invoke-static {}, Lorg/chromium/base/metrics/NativeUmaRecorderJni;->get()Lorg/chromium/base/metrics/NativeUmaRecorder$Natives;

    move-result-object p0

    invoke-interface {p0, p1, v0, v1}, Lorg/chromium/base/metrics/NativeUmaRecorder$Natives;->recordUserAction(Ljava/lang/String;J)V

    return-void
.end method

.method public removeUserActionCallbackForTesting(Lorg/chromium/base/Callback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/chromium/base/Callback<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object p0, p0, Lorg/chromium/base/metrics/NativeUmaRecorder;->mUserActionTestingCallbackNativePtrs:Ljava/util/Map;

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    if-nez p0, :cond_1

    return-void

    :cond_1
    invoke-static {}, Lorg/chromium/base/metrics/NativeUmaRecorderJni;->get()Lorg/chromium/base/metrics/NativeUmaRecorder$Natives;

    move-result-object p1

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-interface {p1, v0, v1}, Lorg/chromium/base/metrics/NativeUmaRecorder$Natives;->removeActionCallbackForTesting(J)V

    return-void
.end method
