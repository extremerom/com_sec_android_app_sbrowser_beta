.class final Lorg/chromium/blink/mojom/FrameWidgetInputHandler_Internal$Stub;
.super Lorg/chromium/mojo/bindings/Interface$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/blink/mojom/FrameWidgetInputHandler_Internal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/chromium/mojo/bindings/Interface$Stub<",
        "Lorg/chromium/blink/mojom/FrameWidgetInputHandler;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/blink/mojom/FrameWidgetInputHandler;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/chromium/mojo/bindings/Interface$Stub;-><init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/Interface;)V

    return-void
.end method


# virtual methods
.method public accept(Lorg/chromium/mojo/bindings/Message;)Z
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/Message;->asServiceMessage()Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p1

    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getHeader()Lorg/chromium/mojo/bindings/MessageHeader;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lorg/chromium/mojo/bindings/MessageHeader;->hasFlag(I)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    move v2, v0

    :goto_0
    invoke-virtual {v1, v2}, Lorg/chromium/mojo/bindings/MessageHeader;->validateHeader(I)Z

    move-result v2

    if-nez v2, :cond_1

    return v0

    :cond_1
    invoke-virtual {v1}, Lorg/chromium/mojo/bindings/MessageHeader;->getType()I

    move-result v1

    const/4 v2, 0x1

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    return v0

    :pswitch_1
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/blink/mojom/FrameWidgetInputHandler_Internal$FrameWidgetInputHandlerChangeCaretSizeParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/blink/mojom/FrameWidgetInputHandler_Internal$FrameWidgetInputHandlerChangeCaretSizeParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p0

    check-cast p0, Lorg/chromium/blink/mojom/FrameWidgetInputHandler;

    iget-boolean p1, p1, Lorg/chromium/blink/mojom/FrameWidgetInputHandler_Internal$FrameWidgetInputHandlerChangeCaretSizeParams;->shouldReduceCaretSize:Z

    invoke-interface {p0, p1}, Lorg/chromium/blink/mojom/FrameWidgetInputHandler;->changeCaretSize(Z)V

    return v2

    :catch_0
    move-exception p0

    goto/16 :goto_1

    :pswitch_2
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/blink/mojom/FrameWidgetInputHandler_Internal$FrameWidgetInputHandlerMoveCaretParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/blink/mojom/FrameWidgetInputHandler_Internal$FrameWidgetInputHandlerMoveCaretParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p0

    check-cast p0, Lorg/chromium/blink/mojom/FrameWidgetInputHandler;

    iget-object p1, p1, Lorg/chromium/blink/mojom/FrameWidgetInputHandler_Internal$FrameWidgetInputHandlerMoveCaretParams;->point:Lorg/chromium/gfx/mojom/Point;

    invoke-interface {p0, p1}, Lorg/chromium/blink/mojom/FrameWidgetInputHandler;->moveCaret(Lorg/chromium/gfx/mojom/Point;)V

    return v2

    :pswitch_3
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/blink/mojom/FrameWidgetInputHandler_Internal$FrameWidgetInputHandlerScrollFocusedEditableNodeIntoViewParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/blink/mojom/FrameWidgetInputHandler_Internal$FrameWidgetInputHandlerScrollFocusedEditableNodeIntoViewParams;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p0

    check-cast p0, Lorg/chromium/blink/mojom/FrameWidgetInputHandler;

    invoke-interface {p0}, Lorg/chromium/blink/mojom/FrameWidgetInputHandler;->scrollFocusedEditableNodeIntoView()V

    return v2

    :pswitch_4
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/blink/mojom/FrameWidgetInputHandler_Internal$FrameWidgetInputHandlerMoveRangeSelectionExtentParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/blink/mojom/FrameWidgetInputHandler_Internal$FrameWidgetInputHandlerMoveRangeSelectionExtentParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p0

    check-cast p0, Lorg/chromium/blink/mojom/FrameWidgetInputHandler;

    iget-object p1, p1, Lorg/chromium/blink/mojom/FrameWidgetInputHandler_Internal$FrameWidgetInputHandlerMoveRangeSelectionExtentParams;->extent:Lorg/chromium/gfx/mojom/Point;

    invoke-interface {p0, p1}, Lorg/chromium/blink/mojom/FrameWidgetInputHandler;->moveRangeSelectionExtent(Lorg/chromium/gfx/mojom/Point;)V

    return v2

    :pswitch_5
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/blink/mojom/FrameWidgetInputHandler_Internal$FrameWidgetInputHandlerAdjustSelectionByCharacterOffsetParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/blink/mojom/FrameWidgetInputHandler_Internal$FrameWidgetInputHandlerAdjustSelectionByCharacterOffsetParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p0

    check-cast p0, Lorg/chromium/blink/mojom/FrameWidgetInputHandler;

    iget v1, p1, Lorg/chromium/blink/mojom/FrameWidgetInputHandler_Internal$FrameWidgetInputHandlerAdjustSelectionByCharacterOffsetParams;->start:I

    iget v3, p1, Lorg/chromium/blink/mojom/FrameWidgetInputHandler_Internal$FrameWidgetInputHandlerAdjustSelectionByCharacterOffsetParams;->end:I

    iget p1, p1, Lorg/chromium/blink/mojom/FrameWidgetInputHandler_Internal$FrameWidgetInputHandlerAdjustSelectionByCharacterOffsetParams;->behavior:I

    invoke-interface {p0, v1, v3, p1}, Lorg/chromium/blink/mojom/FrameWidgetInputHandler;->adjustSelectionByCharacterOffset(III)V

    return v2

    :pswitch_6
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/blink/mojom/FrameWidgetInputHandler_Internal$FrameWidgetInputHandlerSelectRangeParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/blink/mojom/FrameWidgetInputHandler_Internal$FrameWidgetInputHandlerSelectRangeParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p0

    check-cast p0, Lorg/chromium/blink/mojom/FrameWidgetInputHandler;

    iget-object v1, p1, Lorg/chromium/blink/mojom/FrameWidgetInputHandler_Internal$FrameWidgetInputHandlerSelectRangeParams;->base:Lorg/chromium/gfx/mojom/Point;

    iget-object v3, p1, Lorg/chromium/blink/mojom/FrameWidgetInputHandler_Internal$FrameWidgetInputHandlerSelectRangeParams;->extent:Lorg/chromium/gfx/mojom/Point;

    iget-boolean p1, p1, Lorg/chromium/blink/mojom/FrameWidgetInputHandler_Internal$FrameWidgetInputHandlerSelectRangeParams;->stylusSelection:Z

    invoke-interface {p0, v1, v3, p1}, Lorg/chromium/blink/mojom/FrameWidgetInputHandler;->selectRange(Lorg/chromium/gfx/mojom/Point;Lorg/chromium/gfx/mojom/Point;Z)V

    return v2

    :pswitch_7
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/blink/mojom/FrameWidgetInputHandler_Internal$FrameWidgetInputHandlerReplaceMisspellingParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/blink/mojom/FrameWidgetInputHandler_Internal$FrameWidgetInputHandlerReplaceMisspellingParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p0

    check-cast p0, Lorg/chromium/blink/mojom/FrameWidgetInputHandler;

    iget-object p1, p1, Lorg/chromium/blink/mojom/FrameWidgetInputHandler_Internal$FrameWidgetInputHandlerReplaceMisspellingParams;->word:Lorg/chromium/mojo_base/mojom/String16;

    invoke-interface {p0, p1}, Lorg/chromium/blink/mojom/FrameWidgetInputHandler;->replaceMisspelling(Lorg/chromium/mojo_base/mojom/String16;)V

    return v2

    :pswitch_8
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/blink/mojom/FrameWidgetInputHandler_Internal$FrameWidgetInputHandlerHandleDirectPasteParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/blink/mojom/FrameWidgetInputHandler_Internal$FrameWidgetInputHandlerHandleDirectPasteParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p0

    check-cast p0, Lorg/chromium/blink/mojom/FrameWidgetInputHandler;

    iget-object v1, p1, Lorg/chromium/blink/mojom/FrameWidgetInputHandler_Internal$FrameWidgetInputHandlerHandleDirectPasteParams;->text:Lorg/chromium/mojo_base/mojom/String16;

    iget-object p1, p1, Lorg/chromium/blink/mojom/FrameWidgetInputHandler_Internal$FrameWidgetInputHandlerHandleDirectPasteParams;->html:Lorg/chromium/mojo_base/mojom/String16;

    invoke-interface {p0, v1, p1}, Lorg/chromium/blink/mojom/FrameWidgetInputHandler;->handleDirectPaste(Lorg/chromium/mojo_base/mojom/String16;Lorg/chromium/mojo_base/mojom/String16;)V

    return v2

    :pswitch_9
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/blink/mojom/FrameWidgetInputHandler_Internal$FrameWidgetInputHandlerReplaceParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/blink/mojom/FrameWidgetInputHandler_Internal$FrameWidgetInputHandlerReplaceParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p0

    check-cast p0, Lorg/chromium/blink/mojom/FrameWidgetInputHandler;

    iget-object p1, p1, Lorg/chromium/blink/mojom/FrameWidgetInputHandler_Internal$FrameWidgetInputHandlerReplaceParams;->word:Lorg/chromium/mojo_base/mojom/String16;

    invoke-interface {p0, p1}, Lorg/chromium/blink/mojom/FrameWidgetInputHandler;->replace(Lorg/chromium/mojo_base/mojom/String16;)V

    return v2

    :pswitch_a
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/blink/mojom/FrameWidgetInputHandler_Internal$FrameWidgetInputHandlerSelectLinkTextParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/blink/mojom/FrameWidgetInputHandler_Internal$FrameWidgetInputHandlerSelectLinkTextParams;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p0

    check-cast p0, Lorg/chromium/blink/mojom/FrameWidgetInputHandler;

    invoke-interface {p0}, Lorg/chromium/blink/mojom/FrameWidgetInputHandler;->selectLinkText()V

    return v2

    :pswitch_b
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/blink/mojom/FrameWidgetInputHandler_Internal$FrameWidgetInputHandlerCollapseSelectionParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/blink/mojom/FrameWidgetInputHandler_Internal$FrameWidgetInputHandlerCollapseSelectionParams;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p0

    check-cast p0, Lorg/chromium/blink/mojom/FrameWidgetInputHandler;

    invoke-interface {p0}, Lorg/chromium/blink/mojom/FrameWidgetInputHandler;->collapseSelection()V

    return v2

    :pswitch_c
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/blink/mojom/FrameWidgetInputHandler_Internal$FrameWidgetInputHandlerSelectAllParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/blink/mojom/FrameWidgetInputHandler_Internal$FrameWidgetInputHandlerSelectAllParams;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p0

    check-cast p0, Lorg/chromium/blink/mojom/FrameWidgetInputHandler;

    invoke-interface {p0}, Lorg/chromium/blink/mojom/FrameWidgetInputHandler;->selectAll()V

    return v2

    :pswitch_d
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/blink/mojom/FrameWidgetInputHandler_Internal$FrameWidgetInputHandlerDeleteParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/blink/mojom/FrameWidgetInputHandler_Internal$FrameWidgetInputHandlerDeleteParams;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p0

    check-cast p0, Lorg/chromium/blink/mojom/FrameWidgetInputHandler;

    invoke-interface {p0}, Lorg/chromium/blink/mojom/FrameWidgetInputHandler;->delete()V

    return v2

    :pswitch_e
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/blink/mojom/FrameWidgetInputHandler_Internal$FrameWidgetInputHandlerPasteAndMatchStyleParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/blink/mojom/FrameWidgetInputHandler_Internal$FrameWidgetInputHandlerPasteAndMatchStyleParams;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p0

    check-cast p0, Lorg/chromium/blink/mojom/FrameWidgetInputHandler;

    invoke-interface {p0}, Lorg/chromium/blink/mojom/FrameWidgetInputHandler;->pasteAndMatchStyle()V

    return v2

    :pswitch_f
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/blink/mojom/FrameWidgetInputHandler_Internal$FrameWidgetInputHandlerPasteParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/blink/mojom/FrameWidgetInputHandler_Internal$FrameWidgetInputHandlerPasteParams;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p0

    check-cast p0, Lorg/chromium/blink/mojom/FrameWidgetInputHandler;

    invoke-interface {p0}, Lorg/chromium/blink/mojom/FrameWidgetInputHandler;->paste()V

    return v2

    :pswitch_10
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/blink/mojom/FrameWidgetInputHandler_Internal$FrameWidgetInputHandlerCenterSelectionParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/blink/mojom/FrameWidgetInputHandler_Internal$FrameWidgetInputHandlerCenterSelectionParams;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p0

    check-cast p0, Lorg/chromium/blink/mojom/FrameWidgetInputHandler;

    invoke-interface {p0}, Lorg/chromium/blink/mojom/FrameWidgetInputHandler;->centerSelection()V

    return v2

    :pswitch_11
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/blink/mojom/FrameWidgetInputHandler_Internal$FrameWidgetInputHandlerCopyToFindPboardParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/blink/mojom/FrameWidgetInputHandler_Internal$FrameWidgetInputHandlerCopyToFindPboardParams;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p0

    check-cast p0, Lorg/chromium/blink/mojom/FrameWidgetInputHandler;

    invoke-interface {p0}, Lorg/chromium/blink/mojom/FrameWidgetInputHandler;->copyToFindPboard()V

    return v2

    :pswitch_12
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/blink/mojom/FrameWidgetInputHandler_Internal$FrameWidgetInputHandlerCopyParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/blink/mojom/FrameWidgetInputHandler_Internal$FrameWidgetInputHandlerCopyParams;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p0

    check-cast p0, Lorg/chromium/blink/mojom/FrameWidgetInputHandler;

    invoke-interface {p0}, Lorg/chromium/blink/mojom/FrameWidgetInputHandler;->copy()V

    return v2

    :pswitch_13
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/blink/mojom/FrameWidgetInputHandler_Internal$FrameWidgetInputHandlerCutParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/blink/mojom/FrameWidgetInputHandler_Internal$FrameWidgetInputHandlerCutParams;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p0

    check-cast p0, Lorg/chromium/blink/mojom/FrameWidgetInputHandler;

    invoke-interface {p0}, Lorg/chromium/blink/mojom/FrameWidgetInputHandler;->cut()V

    return v2

    :pswitch_14
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/blink/mojom/FrameWidgetInputHandler_Internal$FrameWidgetInputHandlerRedoParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/blink/mojom/FrameWidgetInputHandler_Internal$FrameWidgetInputHandlerRedoParams;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p0

    check-cast p0, Lorg/chromium/blink/mojom/FrameWidgetInputHandler;

    invoke-interface {p0}, Lorg/chromium/blink/mojom/FrameWidgetInputHandler;->redo()V

    return v2

    :pswitch_15
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/blink/mojom/FrameWidgetInputHandler_Internal$FrameWidgetInputHandlerUndoParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/blink/mojom/FrameWidgetInputHandler_Internal$FrameWidgetInputHandlerUndoParams;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p0

    check-cast p0, Lorg/chromium/blink/mojom/FrameWidgetInputHandler;

    invoke-interface {p0}, Lorg/chromium/blink/mojom/FrameWidgetInputHandler;->undo()V

    return v2

    :pswitch_16
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/blink/mojom/FrameWidgetInputHandler_Internal$FrameWidgetInputHandlerExecuteEditCommandParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/blink/mojom/FrameWidgetInputHandler_Internal$FrameWidgetInputHandlerExecuteEditCommandParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p0

    check-cast p0, Lorg/chromium/blink/mojom/FrameWidgetInputHandler;

    iget-object v1, p1, Lorg/chromium/blink/mojom/FrameWidgetInputHandler_Internal$FrameWidgetInputHandlerExecuteEditCommandParams;->command:Ljava/lang/String;

    iget-object p1, p1, Lorg/chromium/blink/mojom/FrameWidgetInputHandler_Internal$FrameWidgetInputHandlerExecuteEditCommandParams;->value:Lorg/chromium/mojo_base/mojom/String16;

    invoke-interface {p0, v1, p1}, Lorg/chromium/blink/mojom/FrameWidgetInputHandler;->executeEditCommand(Ljava/lang/String;Lorg/chromium/mojo_base/mojom/String16;)V

    return v2

    :pswitch_17
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/blink/mojom/FrameWidgetInputHandler_Internal$FrameWidgetInputHandlerSetEditableSelectionOffsetsParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/blink/mojom/FrameWidgetInputHandler_Internal$FrameWidgetInputHandlerSetEditableSelectionOffsetsParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p0

    check-cast p0, Lorg/chromium/blink/mojom/FrameWidgetInputHandler;

    iget v1, p1, Lorg/chromium/blink/mojom/FrameWidgetInputHandler_Internal$FrameWidgetInputHandlerSetEditableSelectionOffsetsParams;->start:I

    iget p1, p1, Lorg/chromium/blink/mojom/FrameWidgetInputHandler_Internal$FrameWidgetInputHandlerSetEditableSelectionOffsetsParams;->end:I

    invoke-interface {p0, v1, p1}, Lorg/chromium/blink/mojom/FrameWidgetInputHandler;->setEditableSelectionOffsets(II)V

    return v2

    :pswitch_18
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/blink/mojom/FrameWidgetInputHandler_Internal$FrameWidgetInputHandlerDeleteSurroundingTextInCodePointsParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/blink/mojom/FrameWidgetInputHandler_Internal$FrameWidgetInputHandlerDeleteSurroundingTextInCodePointsParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p0

    check-cast p0, Lorg/chromium/blink/mojom/FrameWidgetInputHandler;

    iget v1, p1, Lorg/chromium/blink/mojom/FrameWidgetInputHandler_Internal$FrameWidgetInputHandlerDeleteSurroundingTextInCodePointsParams;->before:I

    iget p1, p1, Lorg/chromium/blink/mojom/FrameWidgetInputHandler_Internal$FrameWidgetInputHandlerDeleteSurroundingTextInCodePointsParams;->after:I

    invoke-interface {p0, v1, p1}, Lorg/chromium/blink/mojom/FrameWidgetInputHandler;->deleteSurroundingTextInCodePoints(II)V

    return v2

    :pswitch_19
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/blink/mojom/FrameWidgetInputHandler_Internal$FrameWidgetInputHandlerDeleteSurroundingTextParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/blink/mojom/FrameWidgetInputHandler_Internal$FrameWidgetInputHandlerDeleteSurroundingTextParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p0

    check-cast p0, Lorg/chromium/blink/mojom/FrameWidgetInputHandler;

    iget v1, p1, Lorg/chromium/blink/mojom/FrameWidgetInputHandler_Internal$FrameWidgetInputHandlerDeleteSurroundingTextParams;->before:I

    iget p1, p1, Lorg/chromium/blink/mojom/FrameWidgetInputHandler_Internal$FrameWidgetInputHandlerDeleteSurroundingTextParams;->after:I

    invoke-interface {p0, v1, p1}, Lorg/chromium/blink/mojom/FrameWidgetInputHandler;->deleteSurroundingText(II)V

    return v2

    :pswitch_1a
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/blink/mojom/FrameWidgetInputHandler_Internal$FrameWidgetInputHandlerExtendSelectionAndReplaceParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/blink/mojom/FrameWidgetInputHandler_Internal$FrameWidgetInputHandlerExtendSelectionAndReplaceParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p0

    check-cast p0, Lorg/chromium/blink/mojom/FrameWidgetInputHandler;

    iget v1, p1, Lorg/chromium/blink/mojom/FrameWidgetInputHandler_Internal$FrameWidgetInputHandlerExtendSelectionAndReplaceParams;->before:I

    iget v3, p1, Lorg/chromium/blink/mojom/FrameWidgetInputHandler_Internal$FrameWidgetInputHandlerExtendSelectionAndReplaceParams;->after:I

    iget-object p1, p1, Lorg/chromium/blink/mojom/FrameWidgetInputHandler_Internal$FrameWidgetInputHandlerExtendSelectionAndReplaceParams;->replacementText:Lorg/chromium/mojo_base/mojom/String16;

    invoke-interface {p0, v1, v3, p1}, Lorg/chromium/blink/mojom/FrameWidgetInputHandler;->extendSelectionAndReplace(IILorg/chromium/mojo_base/mojom/String16;)V

    return v2

    :pswitch_1b
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/blink/mojom/FrameWidgetInputHandler_Internal$FrameWidgetInputHandlerExtendSelectionAndDeleteParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/blink/mojom/FrameWidgetInputHandler_Internal$FrameWidgetInputHandlerExtendSelectionAndDeleteParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p0

    check-cast p0, Lorg/chromium/blink/mojom/FrameWidgetInputHandler;

    iget v1, p1, Lorg/chromium/blink/mojom/FrameWidgetInputHandler_Internal$FrameWidgetInputHandlerExtendSelectionAndDeleteParams;->before:I

    iget p1, p1, Lorg/chromium/blink/mojom/FrameWidgetInputHandler_Internal$FrameWidgetInputHandlerExtendSelectionAndDeleteParams;->after:I

    invoke-interface {p0, v1, p1}, Lorg/chromium/blink/mojom/FrameWidgetInputHandler;->extendSelectionAndDelete(II)V

    return v2

    :pswitch_1c
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/blink/mojom/FrameWidgetInputHandler_Internal$FrameWidgetInputHandlerSetCompositionFromExistingTextParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/blink/mojom/FrameWidgetInputHandler_Internal$FrameWidgetInputHandlerSetCompositionFromExistingTextParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p0

    check-cast p0, Lorg/chromium/blink/mojom/FrameWidgetInputHandler;

    iget v1, p1, Lorg/chromium/blink/mojom/FrameWidgetInputHandler_Internal$FrameWidgetInputHandlerSetCompositionFromExistingTextParams;->start:I

    iget v3, p1, Lorg/chromium/blink/mojom/FrameWidgetInputHandler_Internal$FrameWidgetInputHandlerSetCompositionFromExistingTextParams;->end:I

    iget-object p1, p1, Lorg/chromium/blink/mojom/FrameWidgetInputHandler_Internal$FrameWidgetInputHandlerSetCompositionFromExistingTextParams;->imeTextSpans:[Lorg/chromium/ui/mojom/ImeTextSpan;

    invoke-interface {p0, v1, v3, p1}, Lorg/chromium/blink/mojom/FrameWidgetInputHandler;->setCompositionFromExistingText(II[Lorg/chromium/ui/mojom/ImeTextSpan;)V

    return v2

    :pswitch_1d
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/blink/mojom/FrameWidgetInputHandler_Internal$FrameWidgetInputHandlerClearImeTextSpansByTypeParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/blink/mojom/FrameWidgetInputHandler_Internal$FrameWidgetInputHandlerClearImeTextSpansByTypeParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p0

    check-cast p0, Lorg/chromium/blink/mojom/FrameWidgetInputHandler;

    iget v1, p1, Lorg/chromium/blink/mojom/FrameWidgetInputHandler_Internal$FrameWidgetInputHandlerClearImeTextSpansByTypeParams;->start:I

    iget v3, p1, Lorg/chromium/blink/mojom/FrameWidgetInputHandler_Internal$FrameWidgetInputHandlerClearImeTextSpansByTypeParams;->end:I

    iget p1, p1, Lorg/chromium/blink/mojom/FrameWidgetInputHandler_Internal$FrameWidgetInputHandlerClearImeTextSpansByTypeParams;->type:I

    invoke-interface {p0, v1, v3, p1}, Lorg/chromium/blink/mojom/FrameWidgetInputHandler;->clearImeTextSpansByType(III)V

    return v2

    :pswitch_1e
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/blink/mojom/FrameWidgetInputHandler_Internal$FrameWidgetInputHandlerAddImeTextSpansToExistingTextParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/blink/mojom/FrameWidgetInputHandler_Internal$FrameWidgetInputHandlerAddImeTextSpansToExistingTextParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p0

    check-cast p0, Lorg/chromium/blink/mojom/FrameWidgetInputHandler;

    iget v1, p1, Lorg/chromium/blink/mojom/FrameWidgetInputHandler_Internal$FrameWidgetInputHandlerAddImeTextSpansToExistingTextParams;->start:I

    iget v3, p1, Lorg/chromium/blink/mojom/FrameWidgetInputHandler_Internal$FrameWidgetInputHandlerAddImeTextSpansToExistingTextParams;->end:I

    iget-object p1, p1, Lorg/chromium/blink/mojom/FrameWidgetInputHandler_Internal$FrameWidgetInputHandlerAddImeTextSpansToExistingTextParams;->imeTextSpans:[Lorg/chromium/ui/mojom/ImeTextSpan;

    invoke-interface {p0, v1, v3, p1}, Lorg/chromium/blink/mojom/FrameWidgetInputHandler;->addImeTextSpansToExistingText(II[Lorg/chromium/ui/mojom/ImeTextSpan;)V

    return v2

    :pswitch_1f
    sget-object p0, Lorg/chromium/blink/mojom/FrameWidgetInputHandler_Internal;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    invoke-static {p0, p1}, Lorg/chromium/mojo/bindings/InterfaceControlMessagesHelper;->handleRunOrClosePipe(Lorg/chromium/mojo/bindings/Interface$Manager;Lorg/chromium/mojo/bindings/ServiceMessage;)Z

    move-result p0
    :try_end_0
    .catch Lorg/chromium/mojo/bindings/DeserializationException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :goto_1
    sget-object p1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return v0

    nop

    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_1f
        :pswitch_0
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_0
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public acceptWithResponder(Lorg/chromium/mojo/bindings/Message;Lorg/chromium/mojo/bindings/MessageReceiver;)Z
    .locals 9

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/Message;->asServiceMessage()Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p1

    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getHeader()Lorg/chromium/mojo/bindings/MessageHeader;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lorg/chromium/mojo/bindings/MessageHeader;->hasFlag(I)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    const/4 v2, 0x5

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    invoke-virtual {v1, v2}, Lorg/chromium/mojo/bindings/MessageHeader;->validateHeader(I)Z

    move-result v2

    if-nez v2, :cond_1

    return v0

    :cond_1
    invoke-virtual {v1}, Lorg/chromium/mojo/bindings/MessageHeader;->getType()I

    move-result v2

    const/4 v4, -0x1

    if-eq v2, v4, :cond_5

    const/16 v4, 0x8

    if-eq v2, v4, :cond_4

    const/16 v4, 0x1b

    if-eq v2, v4, :cond_3

    const/16 v4, 0x1e

    if-eq v2, v4, :cond_2

    return v0

    :cond_2
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/blink/mojom/FrameWidgetInputHandler_Internal$FrameWidgetInputHandlerWaitForPageScaleAnimationForTestingParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/blink/mojom/FrameWidgetInputHandler_Internal$FrameWidgetInputHandlerWaitForPageScaleAnimationForTestingParams;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p1

    check-cast p1, Lorg/chromium/blink/mojom/FrameWidgetInputHandler;

    new-instance v2, Lorg/chromium/blink/mojom/FrameWidgetInputHandler_Internal$FrameWidgetInputHandlerWaitForPageScaleAnimationForTestingResponseParamsProxyToResponder;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    invoke-virtual {v1}, Lorg/chromium/mojo/bindings/MessageHeader;->getRequestId()J

    move-result-wide v4

    invoke-direct {v2, p0, p2, v4, v5}, Lorg/chromium/blink/mojom/FrameWidgetInputHandler_Internal$FrameWidgetInputHandlerWaitForPageScaleAnimationForTestingResponseParamsProxyToResponder;-><init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageReceiver;J)V

    invoke-interface {p1, v2}, Lorg/chromium/blink/mojom/FrameWidgetInputHandler;->waitForPageScaleAnimationForTesting(Lorg/chromium/blink/mojom/FrameWidgetInputHandler$WaitForPageScaleAnimationForTesting_Response;)V

    return v3

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_3
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/blink/mojom/FrameWidgetInputHandler_Internal$FrameWidgetInputHandlerSelectAroundCaretParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/blink/mojom/FrameWidgetInputHandler_Internal$FrameWidgetInputHandlerSelectAroundCaretParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object v2

    check-cast v2, Lorg/chromium/blink/mojom/FrameWidgetInputHandler;

    iget v4, p1, Lorg/chromium/blink/mojom/FrameWidgetInputHandler_Internal$FrameWidgetInputHandlerSelectAroundCaretParams;->granularity:I

    iget-boolean v5, p1, Lorg/chromium/blink/mojom/FrameWidgetInputHandler_Internal$FrameWidgetInputHandlerSelectAroundCaretParams;->shouldShowHandle:Z

    iget-boolean p1, p1, Lorg/chromium/blink/mojom/FrameWidgetInputHandler_Internal$FrameWidgetInputHandlerSelectAroundCaretParams;->shouldShowContextMenu:Z

    new-instance v6, Lorg/chromium/blink/mojom/FrameWidgetInputHandler_Internal$FrameWidgetInputHandlerSelectAroundCaretResponseParamsProxyToResponder;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    invoke-virtual {v1}, Lorg/chromium/mojo/bindings/MessageHeader;->getRequestId()J

    move-result-wide v7

    invoke-direct {v6, p0, p2, v7, v8}, Lorg/chromium/blink/mojom/FrameWidgetInputHandler_Internal$FrameWidgetInputHandlerSelectAroundCaretResponseParamsProxyToResponder;-><init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageReceiver;J)V

    invoke-interface {v2, v4, v5, p1, v6}, Lorg/chromium/blink/mojom/FrameWidgetInputHandler;->selectAroundCaret(IZZLorg/chromium/blink/mojom/FrameWidgetInputHandler$SelectAroundCaret_Response;)V

    return v3

    :cond_4
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/blink/mojom/FrameWidgetInputHandler_Internal$FrameWidgetInputHandlerHandleStylusWritingGestureActionParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/blink/mojom/FrameWidgetInputHandler_Internal$FrameWidgetInputHandlerHandleStylusWritingGestureActionParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object v2

    check-cast v2, Lorg/chromium/blink/mojom/FrameWidgetInputHandler;

    iget-object p1, p1, Lorg/chromium/blink/mojom/FrameWidgetInputHandler_Internal$FrameWidgetInputHandlerHandleStylusWritingGestureActionParams;->gestureData:Lorg/chromium/blink/mojom/StylusWritingGestureData;

    new-instance v4, Lorg/chromium/blink/mojom/FrameWidgetInputHandler_Internal$FrameWidgetInputHandlerHandleStylusWritingGestureActionResponseParamsProxyToResponder;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    invoke-virtual {v1}, Lorg/chromium/mojo/bindings/MessageHeader;->getRequestId()J

    move-result-wide v5

    invoke-direct {v4, p0, p2, v5, v6}, Lorg/chromium/blink/mojom/FrameWidgetInputHandler_Internal$FrameWidgetInputHandlerHandleStylusWritingGestureActionResponseParamsProxyToResponder;-><init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageReceiver;J)V

    invoke-interface {v2, p1, v4}, Lorg/chromium/blink/mojom/FrameWidgetInputHandler;->handleStylusWritingGestureAction(Lorg/chromium/blink/mojom/StylusWritingGestureData;Lorg/chromium/blink/mojom/FrameWidgetInputHandler$HandleStylusWritingGestureAction_Response;)V

    return v3

    :cond_5
    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    sget-object v1, Lorg/chromium/blink/mojom/FrameWidgetInputHandler_Internal;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    invoke-static {p0, v1, p1, p2}, Lorg/chromium/mojo/bindings/InterfaceControlMessagesHelper;->handleRun(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/Interface$Manager;Lorg/chromium/mojo/bindings/ServiceMessage;Lorg/chromium/mojo/bindings/MessageReceiver;)Z

    move-result p0
    :try_end_0
    .catch Lorg/chromium/mojo/bindings/DeserializationException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :goto_1
    sget-object p1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return v0
.end method
