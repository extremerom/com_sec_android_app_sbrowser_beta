.class Lorg/chromium/content/browser/input/OngoingGesture;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static sLastId:I


# instance fields
.field private final mConsumer:Ljava/util/function/IntConsumer;

.field private final mCreationTimestamp:J

.field private final mExecutor:Ljava/util/concurrent/Executor;

.field private final mGestureData:Lorg/chromium/blink/mojom/StylusWritingGestureData;

.field private final mId:I


# direct methods
.method public constructor <init>(Lorg/chromium/blink/mojom/StylusWritingGestureData;Ljava/util/concurrent/Executor;Ljava/util/function/IntConsumer;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lorg/chromium/base/ThreadUtils;->assertOnUiThread()V

    sget v0, Lorg/chromium/content/browser/input/OngoingGesture;->sLastId:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lorg/chromium/content/browser/input/OngoingGesture;->sLastId:I

    iput v0, p0, Lorg/chromium/content/browser/input/OngoingGesture;->mId:I

    iput-object p1, p0, Lorg/chromium/content/browser/input/OngoingGesture;->mGestureData:Lorg/chromium/blink/mojom/StylusWritingGestureData;

    iput-object p2, p0, Lorg/chromium/content/browser/input/OngoingGesture;->mExecutor:Ljava/util/concurrent/Executor;

    iput-object p3, p0, Lorg/chromium/content/browser/input/OngoingGesture;->mConsumer:Ljava/util/function/IntConsumer;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lorg/chromium/content/browser/input/OngoingGesture;->mCreationTimestamp:J

    return-void
.end method

.method public static synthetic a(Lorg/chromium/content/browser/input/OngoingGesture;I)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/chromium/content/browser/input/OngoingGesture;->lambda$onGestureHandled$0(I)V

    return-void
.end method

.method private synthetic lambda$onGestureHandled$0(I)V
    .locals 0

    iget-object p0, p0, Lorg/chromium/content/browser/input/OngoingGesture;->mConsumer:Ljava/util/function/IntConsumer;

    invoke-interface {p0, p1}, Ljava/util/function/IntConsumer;->accept(I)V

    return-void
.end method

.method private static logGestureResult(I)V
    .locals 2
    .param p0    # I
        .annotation build Lorg/chromium/blink/mojom/HandwritingGestureResult$EnumType;
        .end annotation
    .end param

    const-string v0, "InputMethod.StylusHandwriting.GestureResult"

    const/4 v1, 0x5

    invoke-static {v0, p0, v1}, Lorg/chromium/base/metrics/RecordHistogram;->recordEnumeratedHistogram(Ljava/lang/String;II)V

    return-void
.end method


# virtual methods
.method public getGestureData()Lorg/chromium/blink/mojom/StylusWritingGestureData;
    .locals 0

    iget-object p0, p0, Lorg/chromium/content/browser/input/OngoingGesture;->mGestureData:Lorg/chromium/blink/mojom/StylusWritingGestureData;

    return-object p0
.end method

.method public getId()I
    .locals 0

    iget p0, p0, Lorg/chromium/content/browser/input/OngoingGesture;->mId:I

    return p0
.end method

.method public onGestureHandled(I)V
    .locals 10
    .param p1    # I
        .annotation build Lorg/chromium/blink/mojom/HandwritingGestureResult$EnumType;
        .end annotation
    .end param

    iget-object v0, p0, Lorg/chromium/content/browser/input/OngoingGesture;->mExecutor:Ljava/util/concurrent/Executor;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lorg/chromium/content/browser/input/OngoingGesture;->mConsumer:Ljava/util/function/IntConsumer;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Lorg/chromium/content/browser/input/a;

    invoke-direct {v1, p0, p1}, Lorg/chromium/content/browser/input/a;-><init>(Lorg/chromium/content/browser/input/OngoingGesture;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    invoke-static {p1}, Lorg/chromium/content/browser/input/OngoingGesture;->logGestureResult(I)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide p0, p0, Lorg/chromium/content/browser/input/OngoingGesture;->mCreationTimestamp:J

    sub-long v3, v0, p0

    const-string v2, "InputMethod.StylusHandwriting.GestureTime2"

    const-wide/16 v5, 0x1

    const-wide/16 v7, 0xfa

    const/16 v9, 0x32

    invoke-static/range {v2 .. v9}, Lorg/chromium/base/metrics/RecordHistogram;->recordCustomTimesHistogram(Ljava/lang/String;JJJI)V

    return-void

    :cond_1
    :goto_0
    const/4 p0, 0x0

    invoke-static {p0}, Lorg/chromium/content/browser/input/OngoingGesture;->logGestureResult(I)V

    return-void
.end method
