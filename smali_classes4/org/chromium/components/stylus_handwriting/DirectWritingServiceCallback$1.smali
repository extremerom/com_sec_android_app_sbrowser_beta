.class Lorg/chromium/components/stylus_handwriting/DirectWritingServiceCallback$1;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/components/stylus_handwriting/DirectWritingServiceCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/chromium/components/stylus_handwriting/DirectWritingServiceCallback;


# direct methods
.method public constructor <init>(Lorg/chromium/components/stylus_handwriting/DirectWritingServiceCallback;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lorg/chromium/components/stylus_handwriting/DirectWritingServiceCallback$1;->this$0:Lorg/chromium/components/stylus_handwriting/DirectWritingServiceCallback;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    iget-object v0, p0, Lorg/chromium/components/stylus_handwriting/DirectWritingServiceCallback$1;->this$0:Lorg/chromium/components/stylus_handwriting/DirectWritingServiceCallback;

    invoke-static {v0}, Lorg/chromium/components/stylus_handwriting/DirectWritingServiceCallback;->v0(Lorg/chromium/components/stylus_handwriting/DirectWritingServiceCallback;)Lorg/chromium/content_public/browser/StylusWritingImeCallback;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x65

    if-eq v0, v1, :cond_6

    const/16 v1, 0x191

    if-eq v0, v1, :cond_5

    const/16 v1, 0xc9

    if-eq v0, v1, :cond_4

    const/16 p1, 0xca

    if-eq v0, p1, :cond_3

    const/16 p1, 0x12d

    if-eq v0, p1, :cond_2

    const/16 p1, 0x12e

    if-eq v0, p1, :cond_1

    goto/16 :goto_0

    :cond_1
    iget-object p0, p0, Lorg/chromium/components/stylus_handwriting/DirectWritingServiceCallback$1;->this$0:Lorg/chromium/components/stylus_handwriting/DirectWritingServiceCallback;

    invoke-static {p0}, Lorg/chromium/components/stylus_handwriting/DirectWritingServiceCallback;->v0(Lorg/chromium/components/stylus_handwriting/DirectWritingServiceCallback;)Lorg/chromium/content_public/browser/StylusWritingImeCallback;

    move-result-object p0

    invoke-interface {p0}, Lorg/chromium/content_public/browser/StylusWritingImeCallback;->hideKeyboard()V

    goto :goto_0

    :cond_2
    iget-object p0, p0, Lorg/chromium/components/stylus_handwriting/DirectWritingServiceCallback$1;->this$0:Lorg/chromium/components/stylus_handwriting/DirectWritingServiceCallback;

    invoke-static {p0}, Lorg/chromium/components/stylus_handwriting/DirectWritingServiceCallback;->v0(Lorg/chromium/components/stylus_handwriting/DirectWritingServiceCallback;)Lorg/chromium/content_public/browser/StylusWritingImeCallback;

    move-result-object p0

    invoke-interface {p0}, Lorg/chromium/content_public/browser/StylusWritingImeCallback;->showSoftKeyboard()V

    goto :goto_0

    :cond_3
    iget-object p0, p0, Lorg/chromium/components/stylus_handwriting/DirectWritingServiceCallback$1;->this$0:Lorg/chromium/components/stylus_handwriting/DirectWritingServiceCallback;

    invoke-static {p0}, Lorg/chromium/components/stylus_handwriting/DirectWritingServiceCallback;->w0(Lorg/chromium/components/stylus_handwriting/DirectWritingServiceCallback;)Lorg/chromium/components/stylus_handwriting/DirectWritingServiceCallback$TriggerCallback;

    move-result-object p0

    invoke-interface {p0}, Lorg/chromium/components/stylus_handwriting/DirectWritingServiceCallback$TriggerCallback;->updateEditableBoundsToService()V

    goto :goto_0

    :cond_4
    iget-object p0, p0, Lorg/chromium/components/stylus_handwriting/DirectWritingServiceCallback$1;->this$0:Lorg/chromium/components/stylus_handwriting/DirectWritingServiceCallback;

    invoke-static {p0}, Lorg/chromium/components/stylus_handwriting/DirectWritingServiceCallback;->v0(Lorg/chromium/components/stylus_handwriting/DirectWritingServiceCallback;)Lorg/chromium/content_public/browser/StylusWritingImeCallback;

    move-result-object p0

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-interface {p0, p1}, Lorg/chromium/content_public/browser/StylusWritingImeCallback;->performEditorAction(I)V

    goto :goto_0

    :cond_5
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    const-string v1, "recognition_info"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p1

    iget-object p0, p0, Lorg/chromium/components/stylus_handwriting/DirectWritingServiceCallback$1;->this$0:Lorg/chromium/components/stylus_handwriting/DirectWritingServiceCallback;

    invoke-static {p0, p1}, Lorg/chromium/components/stylus_handwriting/DirectWritingServiceCallback;->x0(Lorg/chromium/components/stylus_handwriting/DirectWritingServiceCallback;Landroid/os/Bundle;)V

    goto :goto_0

    :cond_6
    iget-object v0, p0, Lorg/chromium/components/stylus_handwriting/DirectWritingServiceCallback$1;->this$0:Lorg/chromium/components/stylus_handwriting/DirectWritingServiceCallback;

    invoke-static {v0}, Lorg/chromium/components/stylus_handwriting/DirectWritingServiceCallback;->v0(Lorg/chromium/components/stylus_handwriting/DirectWritingServiceCallback;)Lorg/chromium/content_public/browser/StylusWritingImeCallback;

    move-result-object v0

    invoke-interface {v0}, Lorg/chromium/content_public/browser/StylusWritingImeCallback;->finishComposingText()V

    iget-object v0, p0, Lorg/chromium/components/stylus_handwriting/DirectWritingServiceCallback$1;->this$0:Lorg/chromium/components/stylus_handwriting/DirectWritingServiceCallback;

    invoke-static {v0}, Lorg/chromium/components/stylus_handwriting/DirectWritingServiceCallback;->v0(Lorg/chromium/components/stylus_handwriting/DirectWritingServiceCallback;)Lorg/chromium/content_public/browser/StylusWritingImeCallback;

    move-result-object v0

    iget-object v1, p0, Lorg/chromium/components/stylus_handwriting/DirectWritingServiceCallback$1;->this$0:Lorg/chromium/components/stylus_handwriting/DirectWritingServiceCallback;

    invoke-virtual {v1}, Lorg/chromium/components/stylus_handwriting/DirectWritingServiceCallback;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    const/4 v2, 0x0

    invoke-interface {v0, v2, v1}, Lorg/chromium/content_public/browser/StylusWritingImeCallback;->setEditableSelectionOffsets(II)V

    iget-object v0, p0, Lorg/chromium/components/stylus_handwriting/DirectWritingServiceCallback$1;->this$0:Lorg/chromium/components/stylus_handwriting/DirectWritingServiceCallback;

    invoke-static {v0}, Lorg/chromium/components/stylus_handwriting/DirectWritingServiceCallback;->v0(Lorg/chromium/components/stylus_handwriting/DirectWritingServiceCallback;)Lorg/chromium/content_public/browser/StylusWritingImeCallback;

    move-result-object v0

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/CharSequence;

    iget v2, p1, Landroid/os/Message;->arg1:I

    const/4 v3, 0x1

    invoke-interface {v0, v1, v2, v3}, Lorg/chromium/content_public/browser/StylusWritingImeCallback;->sendCompositionToNative(Ljava/lang/CharSequence;IZ)V

    iget-object p0, p0, Lorg/chromium/components/stylus_handwriting/DirectWritingServiceCallback$1;->this$0:Lorg/chromium/components/stylus_handwriting/DirectWritingServiceCallback;

    invoke-static {p0}, Lorg/chromium/components/stylus_handwriting/DirectWritingServiceCallback;->v0(Lorg/chromium/components/stylus_handwriting/DirectWritingServiceCallback;)Lorg/chromium/content_public/browser/StylusWritingImeCallback;

    move-result-object p0

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-interface {p0, p1, p1}, Lorg/chromium/content_public/browser/StylusWritingImeCallback;->setEditableSelectionOffsets(II)V

    :cond_7
    :goto_0
    return-void
.end method
