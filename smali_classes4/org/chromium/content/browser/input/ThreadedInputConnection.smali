.class public Lorg/chromium/content/browser/input/ThreadedInputConnection;
.super Landroid/view/inputmethod/BaseInputConnection;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/content/browser/input/ChromiumBaseInputConnection;


# annotations
.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# static fields
.field private static final UNBLOCKER:Lorg/chromium/content/browser/input/TextInputState;


# instance fields
.field private mCachedTextInputState:Lorg/chromium/content/browser/input/TextInputState;

.field private mCurrentExtractedTextRequestToken:I

.field private final mFinishComposingTextRunnable:Ljava/lang/Runnable;

.field private final mHandler:Landroid/os/Handler;

.field protected final mImeAdapter:Lorg/chromium/content/browser/input/ImeAdapterImpl;

.field private mNumNestedBatchEdits:I

.field private mPendingAccent:I

.field private final mProcessPendingInputStatesRunnable:Ljava/lang/Runnable;

.field private final mQueue:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue<",
            "Lorg/chromium/content/browser/input/TextInputState;",
            ">;"
        }
    .end annotation
.end field

.field private final mRequestTextInputStateUpdate:Ljava/lang/Runnable;

.field private mShouldUpdateExtractedText:Z


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v6, Lorg/chromium/content/browser/input/ThreadedInputConnection$1;

    new-instance v2, Lorg/chromium/content/browser/input/Range;

    const/4 v0, 0x0

    invoke-direct {v2, v0, v0}, Lorg/chromium/content/browser/input/Range;-><init>(II)V

    new-instance v3, Lorg/chromium/content/browser/input/Range;

    const/4 v0, -0x1

    invoke-direct {v3, v0, v0}, Lorg/chromium/content/browser/input/Range;-><init>(II)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string v1, ""

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lorg/chromium/content/browser/input/ThreadedInputConnection$1;-><init>(Ljava/lang/CharSequence;Lorg/chromium/content/browser/input/Range;Lorg/chromium/content/browser/input/Range;ZZ)V

    sput-object v6, Lorg/chromium/content/browser/input/ThreadedInputConnection;->UNBLOCKER:Lorg/chromium/content/browser/input/TextInputState;

    return-void
.end method

.method public constructor <init>(Landroid/view/View;Lorg/chromium/content/browser/input/ImeAdapterImpl;Landroid/os/Handler;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Landroid/view/inputmethod/BaseInputConnection;-><init>(Landroid/view/View;Z)V

    new-instance p1, Lorg/chromium/content/browser/input/ThreadedInputConnection$2;

    invoke-direct {p1, p0}, Lorg/chromium/content/browser/input/ThreadedInputConnection$2;-><init>(Lorg/chromium/content/browser/input/ThreadedInputConnection;)V

    iput-object p1, p0, Lorg/chromium/content/browser/input/ThreadedInputConnection;->mProcessPendingInputStatesRunnable:Ljava/lang/Runnable;

    new-instance p1, Lorg/chromium/content/browser/input/ThreadedInputConnection$3;

    invoke-direct {p1, p0}, Lorg/chromium/content/browser/input/ThreadedInputConnection$3;-><init>(Lorg/chromium/content/browser/input/ThreadedInputConnection;)V

    iput-object p1, p0, Lorg/chromium/content/browser/input/ThreadedInputConnection;->mRequestTextInputStateUpdate:Ljava/lang/Runnable;

    new-instance p1, Lorg/chromium/content/browser/input/ThreadedInputConnection$4;

    invoke-direct {p1, p0}, Lorg/chromium/content/browser/input/ThreadedInputConnection$4;-><init>(Lorg/chromium/content/browser/input/ThreadedInputConnection;)V

    iput-object p1, p0, Lorg/chromium/content/browser/input/ThreadedInputConnection;->mFinishComposingTextRunnable:Ljava/lang/Runnable;

    new-instance p1, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {p1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object p1, p0, Lorg/chromium/content/browser/input/ThreadedInputConnection;->mQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-static {}, Lorg/chromium/content/browser/input/ImeUtils;->checkOnUiThread()V

    iput-object p2, p0, Lorg/chromium/content/browser/input/ThreadedInputConnection;->mImeAdapter:Lorg/chromium/content/browser/input/ImeAdapterImpl;

    iput-object p3, p0, Lorg/chromium/content/browser/input/ThreadedInputConnection;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method public static synthetic a(Lorg/chromium/content/browser/input/ThreadedInputConnection;Lorg/chromium/content/browser/input/Range;Lorg/chromium/content/browser/input/Range;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/chromium/content/browser/input/ThreadedInputConnection;->lambda$updateSelection$0(Lorg/chromium/content/browser/input/Range;Lorg/chromium/content/browser/input/Range;)V

    return-void
.end method

.method private addToQueueOnUiThread(Lorg/chromium/content/browser/input/TextInputState;)V
    .locals 1

    invoke-static {}, Lorg/chromium/content/browser/input/ImeUtils;->checkOnUiThread()V

    :try_start_0
    iget-object p0, p0, Lorg/chromium/content/browser/input/ThreadedInputConnection;->mQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {p0, p1}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "Ime"

    const-string v0, "addToQueueOnUiThread interrupted"

    invoke-static {p1, v0, p0}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private assertOnImeThread()V
    .locals 1

    iget-object p0, p0, Lorg/chromium/content/browser/input/ThreadedInputConnection;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-static {p0}, Lorg/chromium/content/browser/input/ImeUtils;->checkCondition(Z)V

    return-void
.end method

.method public static synthetic b(Ljava/util/function/IntConsumer;)V
    .locals 0

    invoke-static {p0}, Lorg/chromium/content/browser/input/ThreadedInputConnection;->lambda$performHandwritingGesture$1(Ljava/util/function/IntConsumer;)V

    return-void
.end method

.method private blockAndGetStateUpdate()Lorg/chromium/content/browser/input/TextInputState;
    .locals 5

    invoke-direct {p0}, Lorg/chromium/content/browser/input/ThreadedInputConnection;->assertOnImeThread()V

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/4 v2, 0x0

    :try_start_0
    iget-object v3, p0, Lorg/chromium/content/browser/input/ThreadedInputConnection;->mQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v3}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/chromium/content/browser/input/TextInputState;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {v3}, Lorg/chromium/content/browser/input/TextInputState;->shouldUnblock()Z

    move-result v4

    if-eqz v4, :cond_0

    return-object v2

    :cond_0
    invoke-virtual {v3}, Lorg/chromium/content/browser/input/TextInputState;->replyToRequest()Z

    move-result v2

    if-eqz v2, :cond_2

    if-eqz v1, :cond_1

    invoke-direct {p0, v3}, Lorg/chromium/content/browser/input/ThreadedInputConnection;->updateSelection(Lorg/chromium/content/browser/input/TextInputState;)V

    :cond_1
    return-object v3

    :cond_2
    const/4 v1, 0x1

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    invoke-static {v0}, Lorg/chromium/content/browser/input/ImeUtils;->checkCondition(Z)V

    return-object v2
.end method

.method public static synthetic c(Lorg/chromium/content/browser/input/ThreadedInputConnection;Lorg/chromium/blink/mojom/StylusWritingGestureData;Ljava/util/concurrent/Executor;Ljava/util/function/IntConsumer;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/chromium/content/browser/input/ThreadedInputConnection;->lambda$performHandwritingGesture$2(Lorg/chromium/blink/mojom/StylusWritingGestureData;Ljava/util/concurrent/Executor;Ljava/util/function/IntConsumer;)V

    return-void
.end method

.method private cancelCombiningAccentOnUiThread()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lorg/chromium/content/browser/input/ThreadedInputConnection;->mPendingAccent:I

    return-void
.end method

.method private commitCodePointOnUiThread(II)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lorg/chromium/content/browser/input/ThreadedInputConnection;->mImeAdapter:Lorg/chromium/content/browser/input/ImeAdapterImpl;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v1, v2}, Lorg/chromium/content/browser/input/ImeAdapterImpl;->sendCompositionToNative(Ljava/lang/CharSequence;IZI)Z

    invoke-virtual {p0, p2}, Lorg/chromium/content/browser/input/ThreadedInputConnection;->setCombiningAccentOnUiThread(I)V

    return-void
.end method

.method private commitTextOnUiThread(Ljava/lang/CharSequence;I)V
    .locals 2

    invoke-direct {p0}, Lorg/chromium/content/browser/input/ThreadedInputConnection;->cancelCombiningAccentOnUiThread()V

    iget-object p0, p0, Lorg/chromium/content/browser/input/ThreadedInputConnection;->mImeAdapter:Lorg/chromium/content/browser/input/ImeAdapterImpl;

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v0, v1}, Lorg/chromium/content/browser/input/ImeAdapterImpl;->sendCompositionToNative(Ljava/lang/CharSequence;IZI)Z

    return-void
.end method

.method private convertToExtractedText(Lorg/chromium/content/browser/input/TextInputState;)Landroid/view/inputmethod/ExtractedText;
    .locals 1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance p0, Landroid/view/inputmethod/ExtractedText;

    invoke-direct {p0}, Landroid/view/inputmethod/ExtractedText;-><init>()V

    invoke-virtual {p1}, Lorg/chromium/content/browser/input/TextInputState;->text()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    invoke-virtual {p1}, Lorg/chromium/content/browser/input/TextInputState;->text()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    iput v0, p0, Landroid/view/inputmethod/ExtractedText;->partialEndOffset:I

    const/4 v0, -0x1

    iput v0, p0, Landroid/view/inputmethod/ExtractedText;->partialStartOffset:I

    invoke-virtual {p1}, Lorg/chromium/content/browser/input/TextInputState;->selection()Lorg/chromium/content/browser/input/Range;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/content/browser/input/Range;->start()I

    move-result v0

    iput v0, p0, Landroid/view/inputmethod/ExtractedText;->selectionStart:I

    invoke-virtual {p1}, Lorg/chromium/content/browser/input/TextInputState;->selection()Lorg/chromium/content/browser/input/Range;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/content/browser/input/Range;->end()I

    move-result v0

    iput v0, p0, Landroid/view/inputmethod/ExtractedText;->selectionEnd:I

    invoke-virtual {p1}, Lorg/chromium/content/browser/input/TextInputState;->singleLine()Z

    move-result p1

    iput p1, p0, Landroid/view/inputmethod/ExtractedText;->flags:I

    return-object p0
.end method

.method public static bridge synthetic d(Lorg/chromium/content/browser/input/ThreadedInputConnection;)I
    .locals 0

    iget p0, p0, Lorg/chromium/content/browser/input/ThreadedInputConnection;->mPendingAccent:I

    return p0
.end method

.method public static bridge synthetic e(Lorg/chromium/content/browser/input/ThreadedInputConnection;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lorg/chromium/content/browser/input/ThreadedInputConnection;->mCurrentExtractedTextRequestToken:I

    return-void
.end method

.method public static bridge synthetic f(Lorg/chromium/content/browser/input/ThreadedInputConnection;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lorg/chromium/content/browser/input/ThreadedInputConnection;->mNumNestedBatchEdits:I

    return-void
.end method

.method private finishComposingTextOnUiThread()V
    .locals 0

    iget-object p0, p0, Lorg/chromium/content/browser/input/ThreadedInputConnection;->mImeAdapter:Lorg/chromium/content/browser/input/ImeAdapterImpl;

    invoke-virtual {p0}, Lorg/chromium/content/browser/input/ImeAdapterImpl;->finishComposingText()Z

    return-void
.end method

.method public static bridge synthetic g(Lorg/chromium/content/browser/input/ThreadedInputConnection;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lorg/chromium/content/browser/input/ThreadedInputConnection;->mPendingAccent:I

    return-void
.end method

.method public static bridge synthetic h(Lorg/chromium/content/browser/input/ThreadedInputConnection;)V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/chromium/content/browser/input/ThreadedInputConnection;->mShouldUpdateExtractedText:Z

    return-void
.end method

.method private handleCombiningAccentOnUiThread(Landroid/view/KeyEvent;)Z
    .locals 3

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getUnicodeChar()I

    move-result v1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    return v2

    :cond_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result p1

    const/16 v0, 0x43

    if-ne p1, v0, :cond_1

    invoke-virtual {p0, v2}, Lorg/chromium/content/browser/input/ThreadedInputConnection;->setCombiningAccentOnUiThread(I)V

    return v2

    :cond_1
    const/high16 p1, -0x80000000

    and-int/2addr p1, v1

    const/4 v0, 0x1

    if-eqz p1, :cond_4

    const p1, 0x7fffffff

    and-int/2addr p1, v1

    iget v1, p0, Lorg/chromium/content/browser/input/ThreadedInputConnection;->mPendingAccent:I

    if-eqz v1, :cond_3

    if-ne p1, v1, :cond_2

    invoke-direct {p0, v1, v2}, Lorg/chromium/content/browser/input/ThreadedInputConnection;->commitCodePointOnUiThread(II)V

    goto :goto_0

    :cond_2
    invoke-direct {p0, v1, p1}, Lorg/chromium/content/browser/input/ThreadedInputConnection;->commitCodePointOnUiThread(II)V

    :goto_0
    return v0

    :cond_3
    invoke-virtual {p0, p1}, Lorg/chromium/content/browser/input/ThreadedInputConnection;->setCombiningAccentOnUiThread(I)V

    return v0

    :cond_4
    iget p1, p0, Lorg/chromium/content/browser/input/ThreadedInputConnection;->mPendingAccent:I

    if-eqz p1, :cond_6

    if-eqz v1, :cond_6

    invoke-static {p1, v1}, Landroid/view/KeyEvent;->getDeadChar(II)I

    move-result p1

    if-eqz p1, :cond_5

    invoke-direct {p0, p1, v2}, Lorg/chromium/content/browser/input/ThreadedInputConnection;->commitCodePointOnUiThread(II)V

    return v0

    :cond_5
    iget p1, p0, Lorg/chromium/content/browser/input/ThreadedInputConnection;->mPendingAccent:I

    invoke-direct {p0, p1, v2}, Lorg/chromium/content/browser/input/ThreadedInputConnection;->commitCodePointOnUiThread(II)V

    invoke-direct {p0}, Lorg/chromium/content/browser/input/ThreadedInputConnection;->finishComposingTextOnUiThread()V

    :cond_6
    return v2
.end method

.method public static bridge synthetic i(Lorg/chromium/content/browser/input/ThreadedInputConnection;Ljava/lang/CharSequence;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/chromium/content/browser/input/ThreadedInputConnection;->commitTextOnUiThread(Ljava/lang/CharSequence;I)V

    return-void
.end method

.method public static bridge synthetic j(Lorg/chromium/content/browser/input/ThreadedInputConnection;)V
    .locals 0

    invoke-direct {p0}, Lorg/chromium/content/browser/input/ThreadedInputConnection;->finishComposingTextOnUiThread()V

    return-void
.end method

.method public static bridge synthetic k(Lorg/chromium/content/browser/input/ThreadedInputConnection;Landroid/view/KeyEvent;)Z
    .locals 0

    invoke-direct {p0, p1}, Lorg/chromium/content/browser/input/ThreadedInputConnection;->handleCombiningAccentOnUiThread(Landroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic l(Lorg/chromium/content/browser/input/ThreadedInputConnection;)V
    .locals 0

    invoke-direct {p0}, Lorg/chromium/content/browser/input/ThreadedInputConnection;->processPendingInputStates()V

    return-void
.end method

.method private static synthetic lambda$performHandwritingGesture$1(Ljava/util/function/IntConsumer;)V
    .locals 1

    const/4 v0, 0x2

    invoke-interface {p0, v0}, Ljava/util/function/IntConsumer;->accept(I)V

    return-void
.end method

.method private synthetic lambda$performHandwritingGesture$2(Lorg/chromium/blink/mojom/StylusWritingGestureData;Ljava/util/concurrent/Executor;Ljava/util/function/IntConsumer;)V
    .locals 1

    new-instance v0, Lorg/chromium/content/browser/input/OngoingGesture;

    invoke-direct {v0, p1, p2, p3}, Lorg/chromium/content/browser/input/OngoingGesture;-><init>(Lorg/chromium/blink/mojom/StylusWritingGestureData;Ljava/util/concurrent/Executor;Ljava/util/function/IntConsumer;)V

    iget-object p0, p0, Lorg/chromium/content/browser/input/ThreadedInputConnection;->mImeAdapter:Lorg/chromium/content/browser/input/ImeAdapterImpl;

    invoke-virtual {p0, v0}, Lorg/chromium/content/browser/input/ImeAdapterImpl;->handleGesture(Lorg/chromium/content/browser/input/OngoingGesture;)V

    return-void
.end method

.method private synthetic lambda$updateSelection$0(Lorg/chromium/content/browser/input/Range;Lorg/chromium/content/browser/input/Range;)V
    .locals 2

    iget-object p0, p0, Lorg/chromium/content/browser/input/ThreadedInputConnection;->mImeAdapter:Lorg/chromium/content/browser/input/ImeAdapterImpl;

    invoke-virtual {p1}, Lorg/chromium/content/browser/input/Range;->start()I

    move-result v0

    invoke-virtual {p1}, Lorg/chromium/content/browser/input/Range;->end()I

    move-result p1

    invoke-virtual {p2}, Lorg/chromium/content/browser/input/Range;->start()I

    move-result v1

    invoke-virtual {p2}, Lorg/chromium/content/browser/input/Range;->end()I

    move-result p2

    invoke-virtual {p0, v0, p1, v1, p2}, Lorg/chromium/content/browser/input/ImeAdapterImpl;->updateSelection(IIII)V

    return-void
.end method

.method public static bridge synthetic m(Lorg/chromium/content/browser/input/ThreadedInputConnection;Ljava/lang/CharSequence;IZ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/chromium/content/browser/input/ThreadedInputConnection;->updateComposingTextOnUiThread(Ljava/lang/CharSequence;IZ)V

    return-void
.end method

.method private processPendingInputStates()V
    .locals 2

    invoke-direct {p0}, Lorg/chromium/content/browser/input/ThreadedInputConnection;->assertOnImeThread()V

    :goto_0
    iget-object v0, p0, Lorg/chromium/content/browser/input/ThreadedInputConnection;->mQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/content/browser/input/TextInputState;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lorg/chromium/content/browser/input/TextInputState;->shouldUnblock()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-direct {p0, v0}, Lorg/chromium/content/browser/input/ThreadedInputConnection;->updateSelection(Lorg/chromium/content/browser/input/TextInputState;)V

    goto :goto_0
.end method

.method private updateComposingTextOnUiThread(Ljava/lang/CharSequence;IZ)V
    .locals 2

    const/4 v0, 0x0

    if-eqz p3, :cond_0

    iget p3, p0, Lorg/chromium/content/browser/input/ThreadedInputConnection;->mPendingAccent:I

    const/high16 v1, -0x80000000

    or-int/2addr p3, v1

    goto :goto_0

    :cond_0
    move p3, v0

    :goto_0
    invoke-direct {p0}, Lorg/chromium/content/browser/input/ThreadedInputConnection;->cancelCombiningAccentOnUiThread()V

    iget-object p0, p0, Lorg/chromium/content/browser/input/ThreadedInputConnection;->mImeAdapter:Lorg/chromium/content/browser/input/ImeAdapterImpl;

    invoke-virtual {p0, p1, p2, v0, p3}, Lorg/chromium/content/browser/input/ImeAdapterImpl;->sendCompositionToNative(Ljava/lang/CharSequence;IZI)Z

    return-void
.end method

.method private updateSelection(Lorg/chromium/content/browser/input/TextInputState;)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lorg/chromium/content/browser/input/ThreadedInputConnection;->assertOnImeThread()V

    iget v0, p0, Lorg/chromium/content/browser/input/ThreadedInputConnection;->mNumNestedBatchEdits:I

    if-eqz v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {p1}, Lorg/chromium/content/browser/input/TextInputState;->selection()Lorg/chromium/content/browser/input/Range;

    move-result-object v0

    invoke-virtual {p1}, Lorg/chromium/content/browser/input/TextInputState;->composition()Lorg/chromium/content/browser/input/Range;

    move-result-object v1

    iget-boolean v2, p0, Lorg/chromium/content/browser/input/ThreadedInputConnection;->mShouldUpdateExtractedText:Z

    if-eqz v2, :cond_2

    invoke-direct {p0, p1}, Lorg/chromium/content/browser/input/ThreadedInputConnection;->convertToExtractedText(Lorg/chromium/content/browser/input/TextInputState;)Landroid/view/inputmethod/ExtractedText;

    move-result-object p1

    iget-object v2, p0, Lorg/chromium/content/browser/input/ThreadedInputConnection;->mImeAdapter:Lorg/chromium/content/browser/input/ImeAdapterImpl;

    iget v3, p0, Lorg/chromium/content/browser/input/ThreadedInputConnection;->mCurrentExtractedTextRequestToken:I

    invoke-virtual {v2, v3, p1}, Lorg/chromium/content/browser/input/ImeAdapterImpl;->updateExtractedText(ILandroid/view/inputmethod/ExtractedText;)V

    :cond_2
    new-instance p1, Lo9/a;

    const/4 v2, 0x4

    invoke-direct {p1, p0, v2, v0, v1}, Lo9/a;-><init>(Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Object;)V

    const/4 p0, 0x7

    invoke-static {p0, p1}, Lorg/chromium/base/task/PostTask;->postTask(ILjava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public beginBatchEdit()Z
    .locals 2

    invoke-direct {p0}, Lorg/chromium/content/browser/input/ThreadedInputConnection;->assertOnImeThread()V

    invoke-direct {p0}, Lorg/chromium/content/browser/input/ThreadedInputConnection;->assertOnImeThread()V

    iget v0, p0, Lorg/chromium/content/browser/input/ThreadedInputConnection;->mNumNestedBatchEdits:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lorg/chromium/content/browser/input/ThreadedInputConnection;->mNumNestedBatchEdits:I

    return v1
.end method

.method public clearMetaKeyStates(I)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public closeConnection()V
    .locals 0
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingSuperCall"
        }
    .end annotation

    return-void
.end method

.method public commitCompletion(Landroid/view/inputmethod/CompletionInfo;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public commitCorrection(Landroid/view/inputmethod/CorrectionInfo;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public commitText(Ljava/lang/CharSequence;I)Z
    .locals 3

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const-string v0, "\n"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x7

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lorg/chromium/content/browser/input/ThreadedInputConnection;->beginBatchEdit()Z

    const-string p1, ""

    invoke-virtual {p0, p1, v2}, Lorg/chromium/content/browser/input/ThreadedInputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    new-instance p1, Lorg/chromium/content/browser/input/ThreadedInputConnection$8;

    invoke-direct {p1, p0}, Lorg/chromium/content/browser/input/ThreadedInputConnection$8;-><init>(Lorg/chromium/content/browser/input/ThreadedInputConnection;)V

    invoke-static {v1, p1}, Lorg/chromium/base/task/PostTask;->postTask(ILjava/lang/Runnable;)V

    invoke-virtual {p0}, Lorg/chromium/content/browser/input/ThreadedInputConnection;->endBatchEdit()Z

    return v2

    :cond_1
    new-instance v0, Lorg/chromium/content/browser/input/ThreadedInputConnection$9;

    invoke-direct {v0, p0, p1, p2}, Lorg/chromium/content/browser/input/ThreadedInputConnection$9;-><init>(Lorg/chromium/content/browser/input/ThreadedInputConnection;Ljava/lang/CharSequence;I)V

    invoke-static {v1, v0}, Lorg/chromium/base/task/PostTask;->postTask(ILjava/lang/Runnable;)V

    return v2
.end method

.method public deleteSurroundingText(II)Z
    .locals 1

    new-instance v0, Lorg/chromium/content/browser/input/ThreadedInputConnection$12;

    invoke-direct {v0, p0, p1, p2}, Lorg/chromium/content/browser/input/ThreadedInputConnection$12;-><init>(Lorg/chromium/content/browser/input/ThreadedInputConnection;II)V

    const/4 p0, 0x7

    invoke-static {p0, v0}, Lorg/chromium/base/task/PostTask;->postTask(ILjava/lang/Runnable;)V

    const/4 p0, 0x1

    return p0
.end method

.method public deleteSurroundingTextInCodePoints(II)Z
    .locals 1

    new-instance v0, Lorg/chromium/content/browser/input/ThreadedInputConnection$13;

    invoke-direct {v0, p0, p1, p2}, Lorg/chromium/content/browser/input/ThreadedInputConnection$13;-><init>(Lorg/chromium/content/browser/input/ThreadedInputConnection;II)V

    const/4 p0, 0x7

    invoke-static {p0, v0}, Lorg/chromium/base/task/PostTask;->postTask(ILjava/lang/Runnable;)V

    const/4 p0, 0x1

    return p0
.end method

.method public endBatchEdit()Z
    .locals 3

    invoke-direct {p0}, Lorg/chromium/content/browser/input/ThreadedInputConnection;->assertOnImeThread()V

    iget v0, p0, Lorg/chromium/content/browser/input/ThreadedInputConnection;->mNumNestedBatchEdits:I

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v2, 0x1

    sub-int/2addr v0, v2

    iput v0, p0, Lorg/chromium/content/browser/input/ThreadedInputConnection;->mNumNestedBatchEdits:I

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lorg/chromium/content/browser/input/ThreadedInputConnection;->requestAndWaitForTextInputState()Lorg/chromium/content/browser/input/TextInputState;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/chromium/content/browser/input/ThreadedInputConnection;->updateSelection(Lorg/chromium/content/browser/input/TextInputState;)V

    :cond_1
    iget p0, p0, Lorg/chromium/content/browser/input/ThreadedInputConnection;->mNumNestedBatchEdits:I

    if-eqz p0, :cond_2

    move v1, v2

    :cond_2
    return v1
.end method

.method public finishComposingText()Z
    .locals 1

    const/4 v0, 0x7

    iget-object p0, p0, Lorg/chromium/content/browser/input/ThreadedInputConnection;->mFinishComposingTextRunnable:Ljava/lang/Runnable;

    invoke-static {v0, p0}, Lorg/chromium/base/task/PostTask;->postTask(ILjava/lang/Runnable;)V

    const/4 p0, 0x1

    return p0
.end method

.method public getCursorCapsMode(I)I
    .locals 1

    invoke-virtual {p0}, Lorg/chromium/content/browser/input/ThreadedInputConnection;->requestAndWaitForTextInputState()Lorg/chromium/content/browser/input/TextInputState;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lorg/chromium/content/browser/input/TextInputState;->text()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0}, Lorg/chromium/content/browser/input/TextInputState;->selection()Lorg/chromium/content/browser/input/Range;

    move-result-object p0

    invoke-virtual {p0}, Lorg/chromium/content/browser/input/Range;->start()I

    move-result p0

    invoke-static {v0, p0, p1}, Landroid/text/TextUtils;->getCapsMode(Ljava/lang/CharSequence;II)I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public getExtractedText(Landroid/view/inputmethod/ExtractedTextRequest;I)Landroid/view/inputmethod/ExtractedText;
    .locals 2

    invoke-direct {p0}, Lorg/chromium/content/browser/input/ThreadedInputConnection;->assertOnImeThread()V

    const/4 v0, 0x1

    and-int/2addr p2, v0

    const/4 v1, 0x0

    if-lez p2, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lorg/chromium/content/browser/input/ThreadedInputConnection;->mShouldUpdateExtractedText:Z

    if-eqz v0, :cond_2

    if-eqz p1, :cond_1

    iget v1, p1, Landroid/view/inputmethod/ExtractedTextRequest;->token:I

    :cond_1
    iput v1, p0, Lorg/chromium/content/browser/input/ThreadedInputConnection;->mCurrentExtractedTextRequestToken:I

    :cond_2
    invoke-virtual {p0}, Lorg/chromium/content/browser/input/ThreadedInputConnection;->requestAndWaitForTextInputState()Lorg/chromium/content/browser/input/TextInputState;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/chromium/content/browser/input/ThreadedInputConnection;->convertToExtractedText(Lorg/chromium/content/browser/input/TextInputState;)Landroid/view/inputmethod/ExtractedText;

    move-result-object p0

    return-object p0
.end method

.method public getHandler()Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lorg/chromium/content/browser/input/ThreadedInputConnection;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public getSelectedText(I)Ljava/lang/CharSequence;
    .locals 0

    invoke-virtual {p0}, Lorg/chromium/content/browser/input/ThreadedInputConnection;->requestAndWaitForTextInputState()Lorg/chromium/content/browser/input/TextInputState;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0, p1}, Lorg/chromium/content/browser/input/TextInputState;->getSelectedText(I)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public getSurroundingText(III)Landroid/view/inputmethod/SurroundingText;
    .locals 0
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "Override"
        }
    .end annotation

    .annotation build Landroidx/annotation/RequiresApi;
    .end annotation

    invoke-virtual {p0}, Lorg/chromium/content/browser/input/ThreadedInputConnection;->requestAndWaitForTextInputState()Lorg/chromium/content/browser/input/TextInputState;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0, p1, p2}, Lorg/chromium/content/browser/input/TextInputState;->getSurroundingText(II)Landroid/view/inputmethod/SurroundingText;

    move-result-object p0

    return-object p0
.end method

.method public getTextAfterCursor(II)Ljava/lang/CharSequence;
    .locals 0

    invoke-virtual {p0}, Lorg/chromium/content/browser/input/ThreadedInputConnection;->requestAndWaitForTextInputState()Lorg/chromium/content/browser/input/TextInputState;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0, p1, p2}, Lorg/chromium/content/browser/input/TextInputState;->getTextAfterSelection(II)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public getTextBeforeCursor(II)Ljava/lang/CharSequence;
    .locals 0

    invoke-virtual {p0}, Lorg/chromium/content/browser/input/ThreadedInputConnection;->requestAndWaitForTextInputState()Lorg/chromium/content/browser/input/TextInputState;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0, p1, p2}, Lorg/chromium/content/browser/input/TextInputState;->getTextBeforeSelection(II)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public onRestartInputOnUiThread()V
    .locals 0

    return-void
.end method

.method public performContextMenuAction(I)Z
    .locals 1

    new-instance v0, Lorg/chromium/content/browser/input/ThreadedInputConnection$11;

    invoke-direct {v0, p0, p1}, Lorg/chromium/content/browser/input/ThreadedInputConnection$11;-><init>(Lorg/chromium/content/browser/input/ThreadedInputConnection;I)V

    const/4 p0, 0x7

    invoke-static {p0, v0}, Lorg/chromium/base/task/PostTask;->postTask(ILjava/lang/Runnable;)V

    const/4 p0, 0x1

    return p0
.end method

.method public performEditorAction(I)Z
    .locals 1

    new-instance v0, Lorg/chromium/content/browser/input/ThreadedInputConnection$10;

    invoke-direct {v0, p0, p1}, Lorg/chromium/content/browser/input/ThreadedInputConnection$10;-><init>(Lorg/chromium/content/browser/input/ThreadedInputConnection;I)V

    const/4 p0, 0x7

    invoke-static {p0, v0}, Lorg/chromium/base/task/PostTask;->postTask(ILjava/lang/Runnable;)V

    const/4 p0, 0x1

    return p0
.end method

.method public performHandwritingGesture(Landroid/view/inputmethod/HandwritingGesture;Ljava/util/concurrent/Executor;Ljava/util/function/IntConsumer;)V
    .locals 7
    .annotation build Landroidx/annotation/RequiresApi;
    .end annotation

    const-string v0, "StylusRichGestures"

    invoke-static {v0}, Lorg/chromium/content_public/browser/ContentFeatureMap;->isEnabled(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {p1}, Lorg/chromium/content/browser/input/StylusGestureConverter;->createGestureData(Landroid/view/inputmethod/HandwritingGesture;)Lorg/chromium/blink/mojom/StylusWritingGestureData;

    move-result-object v3

    if-nez v3, :cond_1

    invoke-static {p2}, Lorg/chromium/build/NullUtil;->assumeNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p3}, Lorg/chromium/build/NullUtil;->assumeNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p0, Lcom/sec/android/app/sbrowser/tab_sync/o;

    const/16 p1, 0x14

    invoke-direct {p0, p1, p3}, Lcom/sec/android/app/sbrowser/tab_sync/o;-><init>(ILjava/lang/Object;)V

    invoke-interface {p2, p0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    :cond_1
    new-instance p1, LH6/a;

    const/16 v6, 0xb

    move-object v1, p1

    move-object v2, p0

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v1 .. v6}, LH6/a;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    const/16 p0, 0x8

    invoke-static {p0, p1}, Lorg/chromium/base/task/PostTask;->postTask(ILjava/lang/Runnable;)V

    return-void
.end method

.method public performPrivateCommand(Ljava/lang/String;Landroid/os/Bundle;)Z
    .locals 1

    new-instance v0, Lorg/chromium/content/browser/input/ThreadedInputConnection$17;

    invoke-direct {v0, p0, p1, p2}, Lorg/chromium/content/browser/input/ThreadedInputConnection$17;-><init>(Lorg/chromium/content/browser/input/ThreadedInputConnection;Ljava/lang/String;Landroid/os/Bundle;)V

    const/4 p0, 0x7

    invoke-static {p0, v0}, Lorg/chromium/base/task/PostTask;->postTask(ILjava/lang/Runnable;)V

    const/4 p0, 0x1

    return p0
.end method

.method public reportFullscreenMode(Z)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public requestAndWaitForTextInputState()Lorg/chromium/content/browser/input/TextInputState;
    .locals 2

    invoke-virtual {p0}, Lorg/chromium/content/browser/input/ThreadedInputConnection;->runningOnUiThread()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Ime"

    const-string v1, "InputConnection API is not called on IME thread. Returning cached result."

    invoke-static {v0, v1}, Lorg/chromium/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lorg/chromium/content/browser/input/ThreadedInputConnection;->mCachedTextInputState:Lorg/chromium/content/browser/input/TextInputState;

    return-object p0

    :cond_0
    invoke-direct {p0}, Lorg/chromium/content/browser/input/ThreadedInputConnection;->assertOnImeThread()V

    const/4 v0, 0x7

    iget-object v1, p0, Lorg/chromium/content/browser/input/ThreadedInputConnection;->mRequestTextInputStateUpdate:Ljava/lang/Runnable;

    invoke-static {v0, v1}, Lorg/chromium/base/task/PostTask;->postTask(ILjava/lang/Runnable;)V

    invoke-direct {p0}, Lorg/chromium/content/browser/input/ThreadedInputConnection;->blockAndGetStateUpdate()Lorg/chromium/content/browser/input/TextInputState;

    move-result-object p0

    return-object p0
.end method

.method public requestCursorUpdates(I)Z
    .locals 1

    new-instance v0, Lorg/chromium/content/browser/input/ThreadedInputConnection$18;

    invoke-direct {v0, p0, p1}, Lorg/chromium/content/browser/input/ThreadedInputConnection$18;-><init>(Lorg/chromium/content/browser/input/ThreadedInputConnection;I)V

    const/4 p0, 0x7

    invoke-static {p0, v0}, Lorg/chromium/base/task/PostTask;->postTask(ILjava/lang/Runnable;)V

    const/4 p0, 0x1

    return p0
.end method

.method public resetOnUiThread()V
    .locals 2

    invoke-static {}, Lorg/chromium/content/browser/input/ImeUtils;->checkOnUiThread()V

    iget-object v0, p0, Lorg/chromium/content/browser/input/ThreadedInputConnection;->mHandler:Landroid/os/Handler;

    new-instance v1, Lorg/chromium/content/browser/input/ThreadedInputConnection$5;

    invoke-direct {v1, p0}, Lorg/chromium/content/browser/input/ThreadedInputConnection$5;-><init>(Lorg/chromium/content/browser/input/ThreadedInputConnection;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public runningOnUiThread()Z
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    invoke-static {}, Lorg/chromium/base/ThreadUtils;->runningOnUiThread()Z

    move-result p0

    return p0
.end method

.method public sendKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1

    new-instance v0, Lorg/chromium/content/browser/input/ThreadedInputConnection$14;

    invoke-direct {v0, p0, p1}, Lorg/chromium/content/browser/input/ThreadedInputConnection$14;-><init>(Lorg/chromium/content/browser/input/ThreadedInputConnection;Landroid/view/KeyEvent;)V

    const/4 p0, 0x7

    invoke-static {p0, v0}, Lorg/chromium/base/task/PostTask;->postTask(ILjava/lang/Runnable;)V

    const/4 p0, 0x1

    return p0
.end method

.method public sendKeyEventOnUiThread(Landroid/view/KeyEvent;)Z
    .locals 2

    invoke-static {}, Lorg/chromium/content/browser/input/ImeUtils;->checkOnUiThread()V

    iget-object v0, p0, Lorg/chromium/content/browser/input/ThreadedInputConnection;->mHandler:Landroid/os/Handler;

    new-instance v1, Lorg/chromium/content/browser/input/ThreadedInputConnection$6;

    invoke-direct {v1, p0, p1}, Lorg/chromium/content/browser/input/ThreadedInputConnection$6;-><init>(Lorg/chromium/content/browser/input/ThreadedInputConnection;Landroid/view/KeyEvent;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/4 p0, 0x1

    return p0
.end method

.method public setCombiningAccentOnUiThread(I)V
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    iput p1, p0, Lorg/chromium/content/browser/input/ThreadedInputConnection;->mPendingAccent:I

    return-void
.end method

.method public setComposingRegion(II)Z
    .locals 1

    new-instance v0, Lorg/chromium/content/browser/input/ThreadedInputConnection$16;

    invoke-direct {v0, p0, p1, p2}, Lorg/chromium/content/browser/input/ThreadedInputConnection$16;-><init>(Lorg/chromium/content/browser/input/ThreadedInputConnection;II)V

    const/4 p0, 0x7

    invoke-static {p0, v0}, Lorg/chromium/base/task/PostTask;->postTask(ILjava/lang/Runnable;)V

    const/4 p0, 0x1

    return p0
.end method

.method public setComposingText(Ljava/lang/CharSequence;I)Z
    .locals 1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0, p1, p2, v0}, Lorg/chromium/content/browser/input/ThreadedInputConnection;->updateComposingText(Ljava/lang/CharSequence;IZ)Z

    move-result p0

    return p0
.end method

.method public setSelection(II)Z
    .locals 1

    new-instance v0, Lorg/chromium/content/browser/input/ThreadedInputConnection$15;

    invoke-direct {v0, p0, p1, p2}, Lorg/chromium/content/browser/input/ThreadedInputConnection$15;-><init>(Lorg/chromium/content/browser/input/ThreadedInputConnection;II)V

    const/4 p0, 0x7

    invoke-static {p0, v0}, Lorg/chromium/base/task/PostTask;->postTask(ILjava/lang/Runnable;)V

    const/4 p0, 0x1

    return p0
.end method

.method public unblockOnUiThread()V
    .locals 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    invoke-static {}, Lorg/chromium/content/browser/input/ImeUtils;->checkOnUiThread()V

    sget-object v0, Lorg/chromium/content/browser/input/ThreadedInputConnection;->UNBLOCKER:Lorg/chromium/content/browser/input/TextInputState;

    invoke-direct {p0, v0}, Lorg/chromium/content/browser/input/ThreadedInputConnection;->addToQueueOnUiThread(Lorg/chromium/content/browser/input/TextInputState;)V

    iget-object v0, p0, Lorg/chromium/content/browser/input/ThreadedInputConnection;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lorg/chromium/content/browser/input/ThreadedInputConnection;->mProcessPendingInputStatesRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public updateComposingText(Ljava/lang/CharSequence;IZ)Z
    .locals 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    new-instance v0, Lorg/chromium/content/browser/input/ThreadedInputConnection$7;

    invoke-direct {v0, p0, p1, p2, p3}, Lorg/chromium/content/browser/input/ThreadedInputConnection$7;-><init>(Lorg/chromium/content/browser/input/ThreadedInputConnection;Ljava/lang/CharSequence;IZ)V

    const/4 p0, 0x7

    invoke-static {p0, v0}, Lorg/chromium/base/task/PostTask;->postTask(ILjava/lang/Runnable;)V

    const/4 p0, 0x1

    return p0
.end method

.method public updateStateOnUiThread(Ljava/lang/CharSequence;IIIIZZ)V
    .locals 7

    invoke-static {}, Lorg/chromium/content/browser/input/ImeUtils;->checkOnUiThread()V

    new-instance v6, Lorg/chromium/content/browser/input/TextInputState;

    new-instance v2, Lorg/chromium/content/browser/input/Range;

    invoke-direct {v2, p2, p3}, Lorg/chromium/content/browser/input/Range;-><init>(II)V

    new-instance v3, Lorg/chromium/content/browser/input/Range;

    invoke-direct {v3, p4, p5}, Lorg/chromium/content/browser/input/Range;-><init>(II)V

    move-object v0, v6

    move-object v1, p1

    move v4, p6

    move v5, p7

    invoke-direct/range {v0 .. v5}, Lorg/chromium/content/browser/input/TextInputState;-><init>(Ljava/lang/CharSequence;Lorg/chromium/content/browser/input/Range;Lorg/chromium/content/browser/input/Range;ZZ)V

    iput-object v6, p0, Lorg/chromium/content/browser/input/ThreadedInputConnection;->mCachedTextInputState:Lorg/chromium/content/browser/input/TextInputState;

    invoke-direct {p0, v6}, Lorg/chromium/content/browser/input/ThreadedInputConnection;->addToQueueOnUiThread(Lorg/chromium/content/browser/input/TextInputState;)V

    if-nez p7, :cond_0

    iget-object p1, p0, Lorg/chromium/content/browser/input/ThreadedInputConnection;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lorg/chromium/content/browser/input/ThreadedInputConnection;->mProcessPendingInputStatesRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method
