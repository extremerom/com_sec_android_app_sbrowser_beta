.class Lorg/chromium/content/browser/input/ImeAdapterImpl$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/content_public/browser/StylusWritingImeCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/chromium/content/browser/input/ImeAdapterImpl;->getStylusWritingImeCallback()Lorg/chromium/content_public/browser/StylusWritingImeCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/chromium/content/browser/input/ImeAdapterImpl;


# direct methods
.method public constructor <init>(Lorg/chromium/content/browser/input/ImeAdapterImpl;)V
    .locals 0

    iput-object p1, p0, Lorg/chromium/content/browser/input/ImeAdapterImpl$2;->this$0:Lorg/chromium/content/browser/input/ImeAdapterImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public finishComposingText()V
    .locals 0

    iget-object p0, p0, Lorg/chromium/content/browser/input/ImeAdapterImpl$2;->this$0:Lorg/chromium/content/browser/input/ImeAdapterImpl;

    invoke-virtual {p0}, Lorg/chromium/content/browser/input/ImeAdapterImpl;->finishComposingText()Z

    return-void
.end method

.method public getContainerView()Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lorg/chromium/content/browser/input/ImeAdapterImpl$2;->this$0:Lorg/chromium/content/browser/input/ImeAdapterImpl;

    invoke-virtual {p0}, Lorg/chromium/content/browser/input/ImeAdapterImpl;->getContainerView()Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public handleStylusWritingGestureAction(ILorg/chromium/blink/mojom/StylusWritingGestureData;)V
    .locals 9

    iget-object v0, p0, Lorg/chromium/content/browser/input/ImeAdapterImpl$2;->this$0:Lorg/chromium/content/browser/input/ImeAdapterImpl;

    iget-wide v1, v0, Lorg/chromium/content/browser/input/ImeAdapterImpl;->mNativeImeAdapterAndroid:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    return-void

    :cond_0
    iget-object v0, v0, Lorg/chromium/content/browser/input/ImeAdapterImpl;->mWebContents:Lorg/chromium/content/browser/webcontents/WebContentsImpl;

    invoke-virtual {v0}, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->getRenderCoordinates()Lorg/chromium/content/browser/RenderCoordinatesImpl;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/content/browser/RenderCoordinatesImpl;->getContentOffsetYPix()F

    move-result v0

    float-to-int v0, v0

    iget-object v1, p2, Lorg/chromium/blink/mojom/StylusWritingGestureData;->startRect:Lorg/chromium/gfx/mojom/Rect;

    iget v2, v1, Lorg/chromium/gfx/mojom/Rect;->y:I

    sub-int/2addr v2, v0

    iput v2, v1, Lorg/chromium/gfx/mojom/Rect;->y:I

    iget-object v1, p2, Lorg/chromium/blink/mojom/StylusWritingGestureData;->endRect:Lorg/chromium/gfx/mojom/Rect;

    if-eqz v1, :cond_1

    iget v2, v1, Lorg/chromium/gfx/mojom/Rect;->y:I

    sub-int/2addr v2, v0

    iput v2, v1, Lorg/chromium/gfx/mojom/Rect;->y:I

    :cond_1
    invoke-static {}, Lorg/chromium/content/browser/input/ImeAdapterImplJni;->get()Lorg/chromium/content/browser/input/ImeAdapterImpl$Natives;

    move-result-object v3

    iget-object v6, p0, Lorg/chromium/content/browser/input/ImeAdapterImpl$2;->this$0:Lorg/chromium/content/browser/input/ImeAdapterImpl;

    iget-wide v4, v6, Lorg/chromium/content/browser/input/ImeAdapterImpl;->mNativeImeAdapterAndroid:J

    invoke-virtual {p2}, Lorg/chromium/mojo/bindings/Struct;->serialize()Ljava/nio/ByteBuffer;

    move-result-object v8

    move v7, p1

    invoke-interface/range {v3 .. v8}, Lorg/chromium/content/browser/input/ImeAdapterImpl$Natives;->handleStylusWritingGestureAction(JLorg/chromium/content/browser/input/ImeAdapterImpl;ILjava/nio/ByteBuffer;)V

    return-void
.end method

.method public hideKeyboard()V
    .locals 0

    iget-object p0, p0, Lorg/chromium/content/browser/input/ImeAdapterImpl$2;->this$0:Lorg/chromium/content/browser/input/ImeAdapterImpl;

    invoke-virtual {p0}, Lorg/chromium/content/browser/input/ImeAdapterImpl;->hideKeyboard()V

    return-void
.end method

.method public performEditorAction(I)V
    .locals 0

    iget-object p0, p0, Lorg/chromium/content/browser/input/ImeAdapterImpl$2;->this$0:Lorg/chromium/content/browser/input/ImeAdapterImpl;

    invoke-virtual {p0, p1}, Lorg/chromium/content/browser/input/ImeAdapterImpl;->performEditorAction(I)Z

    return-void
.end method

.method public resetGestureDetection()V
    .locals 0

    iget-object p0, p0, Lorg/chromium/content/browser/input/ImeAdapterImpl$2;->this$0:Lorg/chromium/content/browser/input/ImeAdapterImpl;

    iget-object p0, p0, Lorg/chromium/content/browser/input/ImeAdapterImpl;->mWebContents:Lorg/chromium/content/browser/webcontents/WebContentsImpl;

    invoke-static {p0}, Lorg/chromium/content/browser/GestureListenerManagerImpl;->fromWebContents(Lorg/chromium/content_public/browser/WebContents;)Lorg/chromium/content/browser/GestureListenerManagerImpl;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lorg/chromium/content/browser/GestureListenerManagerImpl;->resetGestureDetection()V

    :cond_0
    return-void
.end method

.method public sendCompositionToNative(Ljava/lang/CharSequence;IZ)V
    .locals 2

    iget-object v0, p0, Lorg/chromium/content/browser/input/ImeAdapterImpl$2;->this$0:Lorg/chromium/content/browser/input/ImeAdapterImpl;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, p3, v1}, Lorg/chromium/content/browser/input/ImeAdapterImpl;->sendCompositionToNative(Ljava/lang/CharSequence;IZI)Z

    iget-object p0, p0, Lorg/chromium/content/browser/input/ImeAdapterImpl$2;->this$0:Lorg/chromium/content/browser/input/ImeAdapterImpl;

    const-string p1, "commit_text"

    const-string p2, ""

    invoke-virtual {p0, p1, p2}, Lorg/chromium/content/browser/input/ImeAdapterImpl;->sendSALogForStylusHandwriting(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public sendStylusWritingSALogging(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lorg/chromium/content/browser/input/ImeAdapterImpl$2;->this$0:Lorg/chromium/content/browser/input/ImeAdapterImpl;

    invoke-virtual {p0, p1, p2}, Lorg/chromium/content/browser/input/ImeAdapterImpl;->sendSALogForStylusHandwriting(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setEditableSelectionOffsets(II)V
    .locals 0

    iget-object p0, p0, Lorg/chromium/content/browser/input/ImeAdapterImpl$2;->this$0:Lorg/chromium/content/browser/input/ImeAdapterImpl;

    invoke-virtual {p0, p1, p2}, Lorg/chromium/content/browser/input/ImeAdapterImpl;->setEditableSelectionOffsets(II)Z

    return-void
.end method

.method public showSoftKeyboard()V
    .locals 2

    iget-object v0, p0, Lorg/chromium/content/browser/input/ImeAdapterImpl$2;->this$0:Lorg/chromium/content/browser/input/ImeAdapterImpl;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lorg/chromium/content/browser/input/ImeAdapterImpl;->d(Lorg/chromium/content/browser/input/ImeAdapterImpl;Z)V

    iget-object v0, p0, Lorg/chromium/content/browser/input/ImeAdapterImpl$2;->this$0:Lorg/chromium/content/browser/input/ImeAdapterImpl;

    invoke-virtual {v0}, Lorg/chromium/content/browser/input/ImeAdapterImpl;->showSoftKeyboard()V

    iget-object p0, p0, Lorg/chromium/content/browser/input/ImeAdapterImpl$2;->this$0:Lorg/chromium/content/browser/input/ImeAdapterImpl;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/chromium/content/browser/input/ImeAdapterImpl;->d(Lorg/chromium/content/browser/input/ImeAdapterImpl;Z)V

    return-void
.end method
