.class Lcom/sec/android/app/sbrowser/extract_text/LiveTextView$GestureListener;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/extract_text/LiveTextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "GestureListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/extract_text/LiveTextView;


# direct methods
.method private constructor <init>(Lcom/sec/android/app/sbrowser/extract_text/LiveTextView;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/extract_text/LiveTextView$GestureListener;->this$0:Lcom/sec/android/app/sbrowser/extract_text/LiveTextView;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/sec/android/app/sbrowser/extract_text/LiveTextView;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/extract_text/LiveTextView$GestureListener;-><init>(Lcom/sec/android/app/sbrowser/extract_text/LiveTextView;)V

    return-void
.end method


# virtual methods
.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 2
    .param p1    # Landroid/view/MotionEvent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/extract_text/LiveTextView$GestureListener;->this$0:Lcom/sec/android/app/sbrowser/extract_text/LiveTextView;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    const/4 v1, 0x1

    invoke-virtual {p0, v0, p1, v1}, Lcom/sec/android/app/sbrowser/extract_text/LiveTextView;->performTextSelection(FFZ)Z

    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 3
    .param p1    # Landroid/view/MotionEvent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/MotionEvent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extract_text/LiveTextView$GestureListener;->this$0:Lcom/sec/android/app/sbrowser/extract_text/LiveTextView;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/extract_text/LiveTextView;->b(Lcom/sec/android/app/sbrowser/extract_text/LiveTextView;)Lcom/sec/android/app/sbrowser/extract_text/LiveTextView$LiveTextControllerDelegate;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extract_text/LiveTextView$GestureListener;->this$0:Lcom/sec/android/app/sbrowser/extract_text/LiveTextView;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/extract_text/LiveTextView;->b(Lcom/sec/android/app/sbrowser/extract_text/LiveTextView;)Lcom/sec/android/app/sbrowser/extract_text/LiveTextView$LiveTextControllerDelegate;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/extract_text/LiveTextView$LiveTextControllerDelegate;->origin()Lcom/sec/android/app/sbrowser/extract_text/LiveTextView$OriginType;

    move-result-object v0

    sget-object v2, Lcom/sec/android/app/sbrowser/extract_text/LiveTextView$OriginType;->IMAGE:Lcom/sec/android/app/sbrowser/extract_text/LiveTextView$OriginType;

    if-eq v0, v2, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extract_text/LiveTextView$GestureListener;->this$0:Lcom/sec/android/app/sbrowser/extract_text/LiveTextView;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/extract_text/LiveTextView;->c(Lcom/sec/android/app/sbrowser/extract_text/LiveTextView;)Lcom/samsung/android/app/sdk/deepsky/textextraction/selectionui/TextExtractionDrawHelper;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extract_text/LiveTextView$GestureListener;->this$0:Lcom/sec/android/app/sbrowser/extract_text/LiveTextView;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/extract_text/LiveTextView;->c(Lcom/sec/android/app/sbrowser/extract_text/LiveTextView;)Lcom/samsung/android/app/sdk/deepsky/textextraction/selectionui/TextExtractionDrawHelper;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/samsung/android/app/sdk/deepsky/textextraction/selectionui/TextExtractionDrawHelper;->handleTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/extract_text/LiveTextView$GestureListener;->this$0:Lcom/sec/android/app/sbrowser/extract_text/LiveTextView;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/extract_text/LiveTextView;->c(Lcom/sec/android/app/sbrowser/extract_text/LiveTextView;)Lcom/samsung/android/app/sdk/deepsky/textextraction/selectionui/TextExtractionDrawHelper;

    move-result-object p1

    invoke-interface {p1, p2}, Lcom/samsung/android/app/sdk/deepsky/textextraction/selectionui/TextExtractionDrawHelper;->handleTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_2

    :cond_1
    return v1

    :cond_2
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/extract_text/LiveTextView$GestureListener;->this$0:Lcom/sec/android/app/sbrowser/extract_text/LiveTextView;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/extract_text/LiveTextView;->d(Lcom/sec/android/app/sbrowser/extract_text/LiveTextView;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/extract_text/LiveTextView$GestureListener;->this$0:Lcom/sec/android/app/sbrowser/extract_text/LiveTextView;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/extract_text/LiveTextView;->e(Lcom/sec/android/app/sbrowser/extract_text/LiveTextView;)Z

    move-result p1

    const/4 p2, 0x1

    if-eqz p1, :cond_3

    move p1, p2

    goto :goto_0

    :cond_3
    const/4 p1, 0x2

    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extract_text/LiveTextView$GestureListener;->this$0:Lcom/sec/android/app/sbrowser/extract_text/LiveTextView;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/extract_text/LiveTextView;->b(Lcom/sec/android/app/sbrowser/extract_text/LiveTextView;)Lcom/sec/android/app/sbrowser/extract_text/LiveTextView$LiveTextControllerDelegate;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/sec/android/app/sbrowser/extract_text/LiveTextView$LiveTextControllerDelegate;->updateBrowserControlsState(I)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/extract_text/LiveTextView$GestureListener;->this$0:Lcom/sec/android/app/sbrowser/extract_text/LiveTextView;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/extract_text/LiveTextView;->b(Lcom/sec/android/app/sbrowser/extract_text/LiveTextView;)Lcom/sec/android/app/sbrowser/extract_text/LiveTextView$LiveTextControllerDelegate;

    move-result-object p0

    invoke-interface {p0, p3, p4}, Lcom/sec/android/app/sbrowser/extract_text/LiveTextView$LiveTextControllerDelegate;->scrollBy(FF)V

    return p2

    :cond_4
    :goto_1
    return v1
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1    # Landroid/view/MotionEvent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/extract_text/LiveTextView$GestureListener;->this$0:Lcom/sec/android/app/sbrowser/extract_text/LiveTextView;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/sec/android/app/sbrowser/extract_text/LiveTextView;->performTextSelection(FFZ)Z

    return v1
.end method
