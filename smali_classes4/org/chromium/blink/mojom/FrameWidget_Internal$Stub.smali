.class final Lorg/chromium/blink/mojom/FrameWidget_Internal$Stub;
.super Lorg/chromium/mojo/bindings/Interface$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/blink/mojom/FrameWidget_Internal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/chromium/mojo/bindings/Interface$Stub<",
        "Lorg/chromium/blink/mojom/FrameWidget;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/blink/mojom/FrameWidget;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/chromium/mojo/bindings/Interface$Stub;-><init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/Interface;)V

    return-void
.end method


# virtual methods
.method public accept(Lorg/chromium/mojo/bindings/Message;)Z
    .locals 5

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

    const/4 v2, -0x2

    if-eq v1, v2, :cond_8

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eq v1, v2, :cond_7

    const/16 v2, 0x1a

    if-eq v1, v2, :cond_6

    const/4 v2, 0x5

    if-eq v1, v2, :cond_5

    const/4 v2, 0x6

    if-eq v1, v2, :cond_4

    const/16 v2, 0x8

    if-eq v1, v2, :cond_3

    const/16 v2, 0x9

    if-eq v1, v2, :cond_2

    packed-switch v1, :pswitch_data_0

    packed-switch v1, :pswitch_data_1

    return v0

    :pswitch_0
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/blink/mojom/FrameWidget_Internal$FrameWidgetResolveTapDisambiguationParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/blink/mojom/FrameWidget_Internal$FrameWidgetResolveTapDisambiguationParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p0

    check-cast p0, Lorg/chromium/blink/mojom/FrameWidget;

    iget-wide v1, p1, Lorg/chromium/blink/mojom/FrameWidget_Internal$FrameWidgetResolveTapDisambiguationParams;->timestampSeconds:D

    iget-object v4, p1, Lorg/chromium/blink/mojom/FrameWidget_Internal$FrameWidgetResolveTapDisambiguationParams;->tapViewportOffset:Lorg/chromium/gfx/mojom/PointF;

    iget-boolean p1, p1, Lorg/chromium/blink/mojom/FrameWidget_Internal$FrameWidgetResolveTapDisambiguationParams;->isLongPress:Z

    invoke-interface {p0, v1, v2, v4, p1}, Lorg/chromium/blink/mojom/FrameWidget;->resolveTapDisambiguation(DLorg/chromium/gfx/mojom/PointF;Z)V

    return v3

    :catch_0
    move-exception p0

    goto/16 :goto_1

    :pswitch_1
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/blink/mojom/FrameWidget_Internal$FrameWidgetOnVideoAssistantFullscreenParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/blink/mojom/FrameWidget_Internal$FrameWidgetOnVideoAssistantFullscreenParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p0

    check-cast p0, Lorg/chromium/blink/mojom/FrameWidget;

    iget-boolean p1, p1, Lorg/chromium/blink/mojom/FrameWidget_Internal$FrameWidgetOnVideoAssistantFullscreenParams;->isFullscreen:Z

    invoke-interface {p0, p1}, Lorg/chromium/blink/mojom/FrameWidget;->onVideoAssistantFullscreen(Z)V

    return v3

    :pswitch_2
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/blink/mojom/FrameWidget_Internal$FrameWidgetNotifyClearedDisplayedGraphicsParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/blink/mojom/FrameWidget_Internal$FrameWidgetNotifyClearedDisplayedGraphicsParams;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p0

    check-cast p0, Lorg/chromium/blink/mojom/FrameWidget;

    invoke-interface {p0}, Lorg/chromium/blink/mojom/FrameWidget;->notifyClearedDisplayedGraphics()V

    return v3

    :pswitch_3
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/blink/mojom/FrameWidget_Internal$FrameWidgetSetViewportIntersectionParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/blink/mojom/FrameWidget_Internal$FrameWidgetSetViewportIntersectionParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p0

    check-cast p0, Lorg/chromium/blink/mojom/FrameWidget;

    iget-object v1, p1, Lorg/chromium/blink/mojom/FrameWidget_Internal$FrameWidgetSetViewportIntersectionParams;->intersectionState:Lorg/chromium/blink/mojom/ViewportIntersectionState;

    iget-object p1, p1, Lorg/chromium/blink/mojom/FrameWidget_Internal$FrameWidgetSetViewportIntersectionParams;->visualProperties:Lorg/chromium/blink/mojom/VisualProperties;

    invoke-interface {p0, v1, p1}, Lorg/chromium/blink/mojom/FrameWidget;->setViewportIntersection(Lorg/chromium/blink/mojom/ViewportIntersectionState;Lorg/chromium/blink/mojom/VisualProperties;)V

    return v3

    :pswitch_4
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/blink/mojom/FrameWidget_Internal$FrameWidgetBindWidgetCompositorParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/blink/mojom/FrameWidget_Internal$FrameWidgetBindWidgetCompositorParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p0

    check-cast p0, Lorg/chromium/blink/mojom/FrameWidget;

    iget-object p1, p1, Lorg/chromium/blink/mojom/FrameWidget_Internal$FrameWidgetBindWidgetCompositorParams;->host:Lorg/chromium/mojo/bindings/InterfaceRequest;

    invoke-interface {p0, p1}, Lorg/chromium/blink/mojom/FrameWidget;->bindWidgetCompositor(Lorg/chromium/mojo/bindings/InterfaceRequest;)V

    return v3

    :pswitch_5
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/blink/mojom/FrameWidget_Internal$FrameWidgetMoveFocusToPrevNextInputParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/blink/mojom/FrameWidget_Internal$FrameWidgetMoveFocusToPrevNextInputParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p0

    check-cast p0, Lorg/chromium/blink/mojom/FrameWidget;

    iget-boolean p1, p1, Lorg/chromium/blink/mojom/FrameWidget_Internal$FrameWidgetMoveFocusToPrevNextInputParams;->isNext:Z

    invoke-interface {p0, p1}, Lorg/chromium/blink/mojom/FrameWidget;->moveFocusToPrevNextInput(Z)V

    return v3

    :pswitch_6
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/blink/mojom/FrameWidget_Internal$FrameWidgetDisableDeviceEmulationParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/blink/mojom/FrameWidget_Internal$FrameWidgetDisableDeviceEmulationParams;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p0

    check-cast p0, Lorg/chromium/blink/mojom/FrameWidget;

    invoke-interface {p0}, Lorg/chromium/blink/mojom/FrameWidget;->disableDeviceEmulation()V

    return v3

    :pswitch_7
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/blink/mojom/FrameWidget_Internal$FrameWidgetGetSelectionMarkupWithBoundsParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/blink/mojom/FrameWidget_Internal$FrameWidgetGetSelectionMarkupWithBoundsParams;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p0

    check-cast p0, Lorg/chromium/blink/mojom/FrameWidget;

    invoke-interface {p0}, Lorg/chromium/blink/mojom/FrameWidget;->getSelectionMarkupWithBounds()V

    return v3

    :pswitch_8
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/blink/mojom/FrameWidget_Internal$FrameWidgetEnableDeviceEmulationParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/blink/mojom/FrameWidget_Internal$FrameWidgetEnableDeviceEmulationParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p0

    check-cast p0, Lorg/chromium/blink/mojom/FrameWidget;

    iget-object p1, p1, Lorg/chromium/blink/mojom/FrameWidget_Internal$FrameWidgetEnableDeviceEmulationParams;->parameters:Lorg/chromium/blink/mojom/DeviceEmulationParams;

    invoke-interface {p0, p1}, Lorg/chromium/blink/mojom/FrameWidget;->enableDeviceEmulation(Lorg/chromium/blink/mojom/DeviceEmulationParams;)V

    return v3

    :pswitch_9
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/blink/mojom/FrameWidget_Internal$FrameWidgetContextMenuShownParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/blink/mojom/FrameWidget_Internal$FrameWidgetContextMenuShownParams;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p0

    check-cast p0, Lorg/chromium/blink/mojom/FrameWidget;

    invoke-interface {p0}, Lorg/chromium/blink/mojom/FrameWidget;->contextMenuShown()V

    return v3

    :pswitch_a
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/blink/mojom/FrameWidget_Internal$FrameWidgetLongPressOnFocusedParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/blink/mojom/FrameWidget_Internal$FrameWidgetLongPressOnFocusedParams;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p0

    check-cast p0, Lorg/chromium/blink/mojom/FrameWidget;

    invoke-interface {p0}, Lorg/chromium/blink/mojom/FrameWidget;->longPressOnFocused()V

    return v3

    :pswitch_b
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/blink/mojom/FrameWidget_Internal$FrameWidgetSetIsInertForSubFrameParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/blink/mojom/FrameWidget_Internal$FrameWidgetSetIsInertForSubFrameParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p0

    check-cast p0, Lorg/chromium/blink/mojom/FrameWidget;

    iget-boolean p1, p1, Lorg/chromium/blink/mojom/FrameWidget_Internal$FrameWidgetSetIsInertForSubFrameParams;->inert:Z

    invoke-interface {p0, p1}, Lorg/chromium/blink/mojom/FrameWidget;->setIsInertForSubFrame(Z)V

    return v3

    :pswitch_c
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/blink/mojom/FrameWidget_Internal$FrameWidgetUpdateRenderThrottlingStatusForSubFrameParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/blink/mojom/FrameWidget_Internal$FrameWidgetUpdateRenderThrottlingStatusForSubFrameParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p0

    check-cast p0, Lorg/chromium/blink/mojom/FrameWidget;

    iget-boolean v1, p1, Lorg/chromium/blink/mojom/FrameWidget_Internal$FrameWidgetUpdateRenderThrottlingStatusForSubFrameParams;->isThrottled:Z

    iget-boolean v2, p1, Lorg/chromium/blink/mojom/FrameWidget_Internal$FrameWidgetUpdateRenderThrottlingStatusForSubFrameParams;->subtreeThrottled:Z

    iget-boolean p1, p1, Lorg/chromium/blink/mojom/FrameWidget_Internal$FrameWidgetUpdateRenderThrottlingStatusForSubFrameParams;->displayLocked:Z

    invoke-interface {p0, v1, v2, p1}, Lorg/chromium/blink/mojom/FrameWidget;->updateRenderThrottlingStatusForSubFrame(ZZZ)V

    return v3

    :pswitch_d
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/blink/mojom/FrameWidget_Internal$FrameWidgetSetInheritedEffectiveTouchActionForSubFrameParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/blink/mojom/FrameWidget_Internal$FrameWidgetSetInheritedEffectiveTouchActionForSubFrameParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p0

    check-cast p0, Lorg/chromium/blink/mojom/FrameWidget;

    iget p1, p1, Lorg/chromium/blink/mojom/FrameWidget_Internal$FrameWidgetSetInheritedEffectiveTouchActionForSubFrameParams;->touchAction:I

    invoke-interface {p0, p1}, Lorg/chromium/blink/mojom/FrameWidget;->setInheritedEffectiveTouchActionForSubFrame(I)V

    return v3

    :pswitch_e
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/blink/mojom/FrameWidget_Internal$FrameWidgetSetActiveParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/blink/mojom/FrameWidget_Internal$FrameWidgetSetActiveParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p0

    check-cast p0, Lorg/chromium/blink/mojom/FrameWidget;

    iget-boolean p1, p1, Lorg/chromium/blink/mojom/FrameWidget_Internal$FrameWidgetSetActiveParams;->active:Z

    invoke-interface {p0, p1}, Lorg/chromium/blink/mojom/FrameWidget;->setActive(Z)V

    return v3

    :pswitch_f
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/blink/mojom/FrameWidget_Internal$FrameWidgetSetTextDirectionParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/blink/mojom/FrameWidget_Internal$FrameWidgetSetTextDirectionParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p0

    check-cast p0, Lorg/chromium/blink/mojom/FrameWidget;

    iget p1, p1, Lorg/chromium/blink/mojom/FrameWidget_Internal$FrameWidgetSetTextDirectionParams;->direction:I

    invoke-interface {p0, p1}, Lorg/chromium/blink/mojom/FrameWidget;->setTextDirection(I)V

    return v3

    :pswitch_10
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/blink/mojom/FrameWidget_Internal$FrameWidgetSetBackgroundOpaqueParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/blink/mojom/FrameWidget_Internal$FrameWidgetSetBackgroundOpaqueParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p0

    check-cast p0, Lorg/chromium/blink/mojom/FrameWidget;

    iget-boolean p1, p1, Lorg/chromium/blink/mojom/FrameWidget_Internal$FrameWidgetSetBackgroundOpaqueParams;->opaque:Z

    invoke-interface {p0, p1}, Lorg/chromium/blink/mojom/FrameWidget;->setBackgroundOpaque(Z)V

    return v3

    :cond_2
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/blink/mojom/FrameWidget_Internal$FrameWidgetFastScrollerEnabledParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/blink/mojom/FrameWidget_Internal$FrameWidgetFastScrollerEnabledParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p0

    check-cast p0, Lorg/chromium/blink/mojom/FrameWidget;

    iget-boolean p1, p1, Lorg/chromium/blink/mojom/FrameWidget_Internal$FrameWidgetFastScrollerEnabledParams;->enabled:Z

    invoke-interface {p0, p1}, Lorg/chromium/blink/mojom/FrameWidget;->fastScrollerEnabled(Z)V

    return v3

    :cond_3
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/blink/mojom/FrameWidget_Internal$FrameWidgetPassImeRenderWidgetHostParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/blink/mojom/FrameWidget_Internal$FrameWidgetPassImeRenderWidgetHostParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p0

    check-cast p0, Lorg/chromium/blink/mojom/FrameWidget;

    iget-object p1, p1, Lorg/chromium/blink/mojom/FrameWidget_Internal$FrameWidgetPassImeRenderWidgetHostParams;->remote:Lorg/chromium/blink/mojom/ImeRenderWidgetHost;

    invoke-interface {p0, p1}, Lorg/chromium/blink/mojom/FrameWidget;->passImeRenderWidgetHost(Lorg/chromium/blink/mojom/ImeRenderWidgetHost;)V

    return v3

    :cond_4
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/blink/mojom/FrameWidget_Internal$FrameWidgetSetTextSelectionStrategyParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/blink/mojom/FrameWidget_Internal$FrameWidgetSetTextSelectionStrategyParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p0

    check-cast p0, Lorg/chromium/blink/mojom/FrameWidget;

    iget p1, p1, Lorg/chromium/blink/mojom/FrameWidget_Internal$FrameWidgetSetTextSelectionStrategyParams;->selectionStrategy:I

    invoke-interface {p0, p1}, Lorg/chromium/blink/mojom/FrameWidget;->setTextSelectionStrategy(I)V

    return v3

    :cond_5
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/blink/mojom/FrameWidget_Internal$FrameWidgetDragSourceSystemDragEndedParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/blink/mojom/FrameWidget_Internal$FrameWidgetDragSourceSystemDragEndedParams;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p0

    check-cast p0, Lorg/chromium/blink/mojom/FrameWidget;

    invoke-interface {p0}, Lorg/chromium/blink/mojom/FrameWidget;->dragSourceSystemDragEnded()V

    return v3

    :cond_6
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/blink/mojom/FrameWidget_Internal$FrameWidgetDefersLoadingParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/blink/mojom/FrameWidget_Internal$FrameWidgetDefersLoadingParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p0

    check-cast p0, Lorg/chromium/blink/mojom/FrameWidget;

    iget-boolean p1, p1, Lorg/chromium/blink/mojom/FrameWidget_Internal$FrameWidgetDefersLoadingParams;->defer:Z

    invoke-interface {p0, p1}, Lorg/chromium/blink/mojom/FrameWidget;->defersLoading(Z)V

    return v3

    :cond_7
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/blink/mojom/FrameWidget_Internal$FrameWidgetDragTargetDragLeaveParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/blink/mojom/FrameWidget_Internal$FrameWidgetDragTargetDragLeaveParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p0

    check-cast p0, Lorg/chromium/blink/mojom/FrameWidget;

    iget-object v1, p1, Lorg/chromium/blink/mojom/FrameWidget_Internal$FrameWidgetDragTargetDragLeaveParams;->pointInViewport:Lorg/chromium/gfx/mojom/PointF;

    iget-object p1, p1, Lorg/chromium/blink/mojom/FrameWidget_Internal$FrameWidgetDragTargetDragLeaveParams;->screenPoint:Lorg/chromium/gfx/mojom/PointF;

    invoke-interface {p0, v1, p1}, Lorg/chromium/blink/mojom/FrameWidget;->dragTargetDragLeave(Lorg/chromium/gfx/mojom/PointF;Lorg/chromium/gfx/mojom/PointF;)V

    return v3

    :cond_8
    sget-object p0, Lorg/chromium/blink/mojom/FrameWidget_Internal;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

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
    .packed-switch 0xb
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
        :pswitch_4
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1d
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public acceptWithResponder(Lorg/chromium/mojo/bindings/Message;Lorg/chromium/mojo/bindings/MessageReceiver;)Z
    .locals 12

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/Message;->asServiceMessage()Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p1

    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getHeader()Lorg/chromium/mojo/bindings/MessageHeader;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lorg/chromium/mojo/bindings/MessageHeader;->hasFlag(I)Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_0

    const/4 v3, 0x5

    goto :goto_0

    :cond_0
    move v3, v4

    :goto_0
    invoke-virtual {v1, v3}, Lorg/chromium/mojo/bindings/MessageHeader;->validateHeader(I)Z

    move-result v3

    if-nez v3, :cond_1

    return v0

    :cond_1
    invoke-virtual {v1}, Lorg/chromium/mojo/bindings/MessageHeader;->getType()I

    move-result v3

    const/4 v5, -0x1

    if-eq v3, v5, :cond_c

    if-eqz v3, :cond_b

    if-eq v3, v4, :cond_a

    const/4 v5, 0x3

    if-eq v3, v5, :cond_9

    if-eq v3, v2, :cond_8

    const/4 v2, 0x7

    if-eq v3, v2, :cond_7

    const/16 v2, 0xa

    if-eq v3, v2, :cond_6

    const/16 v2, 0x18

    if-eq v3, v2, :cond_5

    const/16 v2, 0x19

    if-eq v3, v2, :cond_4

    const/16 v2, 0x1b

    if-eq v3, v2, :cond_3

    const/16 v2, 0x1c

    if-eq v3, v2, :cond_2

    packed-switch v3, :pswitch_data_0

    return v0

    :pswitch_0
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/blink/mojom/FrameWidget_Internal$FrameWidgetHasPointerEventListenerOnCanvasParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/blink/mojom/FrameWidget_Internal$FrameWidgetHasPointerEventListenerOnCanvasParams;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p1

    check-cast p1, Lorg/chromium/blink/mojom/FrameWidget;

    new-instance v2, Lorg/chromium/blink/mojom/FrameWidget_Internal$FrameWidgetHasPointerEventListenerOnCanvasResponseParamsProxyToResponder;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    invoke-virtual {v1}, Lorg/chromium/mojo/bindings/MessageHeader;->getRequestId()J

    move-result-wide v5

    invoke-direct {v2, p0, p2, v5, v6}, Lorg/chromium/blink/mojom/FrameWidget_Internal$FrameWidgetHasPointerEventListenerOnCanvasResponseParamsProxyToResponder;-><init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageReceiver;J)V

    invoke-interface {p1, v2}, Lorg/chromium/blink/mojom/FrameWidget;->hasPointerEventListenerOnCanvas(Lorg/chromium/blink/mojom/FrameWidget$HasPointerEventListenerOnCanvas_Response;)V

    return v4

    :catch_0
    move-exception p0

    goto/16 :goto_1

    :pswitch_1
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/blink/mojom/FrameWidget_Internal$FrameWidgetRestoreWebStateParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/blink/mojom/FrameWidget_Internal$FrameWidgetRestoreWebStateParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object v2

    check-cast v2, Lorg/chromium/blink/mojom/FrameWidget;

    iget-object p1, p1, Lorg/chromium/blink/mojom/FrameWidget_Internal$FrameWidgetRestoreWebStateParams;->webState:Ljava/lang/String;

    new-instance v3, Lorg/chromium/blink/mojom/FrameWidget_Internal$FrameWidgetRestoreWebStateResponseParamsProxyToResponder;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    invoke-virtual {v1}, Lorg/chromium/mojo/bindings/MessageHeader;->getRequestId()J

    move-result-wide v5

    invoke-direct {v3, p0, p2, v5, v6}, Lorg/chromium/blink/mojom/FrameWidget_Internal$FrameWidgetRestoreWebStateResponseParamsProxyToResponder;-><init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageReceiver;J)V

    invoke-interface {v2, p1, v3}, Lorg/chromium/blink/mojom/FrameWidget;->restoreWebState(Ljava/lang/String;Lorg/chromium/blink/mojom/FrameWidget$RestoreWebState_Response;)V

    return v4

    :pswitch_2
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/blink/mojom/FrameWidget_Internal$FrameWidgetRetrieveWebStateSynchronousParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/blink/mojom/FrameWidget_Internal$FrameWidgetRetrieveWebStateSynchronousParams;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p1

    check-cast p1, Lorg/chromium/blink/mojom/FrameWidget;

    new-instance v2, Lorg/chromium/blink/mojom/FrameWidget_Internal$FrameWidgetRetrieveWebStateSynchronousResponseParamsProxyToResponder;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    invoke-virtual {v1}, Lorg/chromium/mojo/bindings/MessageHeader;->getRequestId()J

    move-result-wide v5

    invoke-direct {v2, p0, p2, v5, v6}, Lorg/chromium/blink/mojom/FrameWidget_Internal$FrameWidgetRetrieveWebStateSynchronousResponseParamsProxyToResponder;-><init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageReceiver;J)V

    invoke-interface {p1, v2}, Lorg/chromium/blink/mojom/FrameWidget;->retrieveWebStateSynchronous(Lorg/chromium/blink/mojom/FrameWidget$RetrieveWebStateSynchronous_Response;)V

    return v4

    :pswitch_3
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/blink/mojom/FrameWidget_Internal$FrameWidgetRetrieveWebStateParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/blink/mojom/FrameWidget_Internal$FrameWidgetRetrieveWebStateParams;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p1

    check-cast p1, Lorg/chromium/blink/mojom/FrameWidget;

    new-instance v2, Lorg/chromium/blink/mojom/FrameWidget_Internal$FrameWidgetRetrieveWebStateResponseParamsProxyToResponder;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    invoke-virtual {v1}, Lorg/chromium/mojo/bindings/MessageHeader;->getRequestId()J

    move-result-wide v5

    invoke-direct {v2, p0, p2, v5, v6}, Lorg/chromium/blink/mojom/FrameWidget_Internal$FrameWidgetRetrieveWebStateResponseParamsProxyToResponder;-><init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageReceiver;J)V

    invoke-interface {p1, v2}, Lorg/chromium/blink/mojom/FrameWidget;->retrieveWebState(Lorg/chromium/blink/mojom/FrameWidget$RetrieveWebState_Response;)V

    return v4

    :pswitch_4
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/blink/mojom/FrameWidget_Internal$FrameWidgetRequestDocumentDumpParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/blink/mojom/FrameWidget_Internal$FrameWidgetRequestDocumentDumpParams;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p1

    check-cast p1, Lorg/chromium/blink/mojom/FrameWidget;

    new-instance v2, Lorg/chromium/blink/mojom/FrameWidget_Internal$FrameWidgetRequestDocumentDumpResponseParamsProxyToResponder;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    invoke-virtual {v1}, Lorg/chromium/mojo/bindings/MessageHeader;->getRequestId()J

    move-result-wide v5

    invoke-direct {v2, p0, p2, v5, v6}, Lorg/chromium/blink/mojom/FrameWidget_Internal$FrameWidgetRequestDocumentDumpResponseParamsProxyToResponder;-><init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageReceiver;J)V

    invoke-interface {p1, v2}, Lorg/chromium/blink/mojom/FrameWidget;->requestDocumentDump(Lorg/chromium/blink/mojom/FrameWidget$RequestDocumentDump_Response;)V

    return v4

    :cond_2
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/blink/mojom/FrameWidget_Internal$FrameWidgetGetImageBitmapsForClassNameParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/blink/mojom/FrameWidget_Internal$FrameWidgetGetImageBitmapsForClassNameParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object v2

    check-cast v2, Lorg/chromium/blink/mojom/FrameWidget;

    iget-object p1, p1, Lorg/chromium/blink/mojom/FrameWidget_Internal$FrameWidgetGetImageBitmapsForClassNameParams;->className:Lorg/chromium/mojo_base/mojom/String16;

    new-instance v3, Lorg/chromium/blink/mojom/FrameWidget_Internal$FrameWidgetGetImageBitmapsForClassNameResponseParamsProxyToResponder;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    invoke-virtual {v1}, Lorg/chromium/mojo/bindings/MessageHeader;->getRequestId()J

    move-result-wide v5

    invoke-direct {v3, p0, p2, v5, v6}, Lorg/chromium/blink/mojom/FrameWidget_Internal$FrameWidgetGetImageBitmapsForClassNameResponseParamsProxyToResponder;-><init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageReceiver;J)V

    invoke-interface {v2, p1, v3}, Lorg/chromium/blink/mojom/FrameWidget;->getImageBitmapsForClassName(Lorg/chromium/mojo_base/mojom/String16;Lorg/chromium/blink/mojom/FrameWidget$GetImageBitmapsForClassName_Response;)V

    return v4

    :cond_3
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/blink/mojom/FrameWidget_Internal$FrameWidgetGetBitmapFromCachedResourceParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/blink/mojom/FrameWidget_Internal$FrameWidgetGetBitmapFromCachedResourceParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object v2

    check-cast v2, Lorg/chromium/blink/mojom/FrameWidget;

    iget-object p1, p1, Lorg/chromium/blink/mojom/FrameWidget_Internal$FrameWidgetGetBitmapFromCachedResourceParams;->url:Lorg/chromium/mojo_base/mojom/String16;

    new-instance v3, Lorg/chromium/blink/mojom/FrameWidget_Internal$FrameWidgetGetBitmapFromCachedResourceResponseParamsProxyToResponder;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    invoke-virtual {v1}, Lorg/chromium/mojo/bindings/MessageHeader;->getRequestId()J

    move-result-wide v5

    invoke-direct {v3, p0, p2, v5, v6}, Lorg/chromium/blink/mojom/FrameWidget_Internal$FrameWidgetGetBitmapFromCachedResourceResponseParamsProxyToResponder;-><init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageReceiver;J)V

    invoke-interface {v2, p1, v3}, Lorg/chromium/blink/mojom/FrameWidget;->getBitmapFromCachedResource(Lorg/chromium/mojo_base/mojom/String16;Lorg/chromium/blink/mojom/FrameWidget$GetBitmapFromCachedResource_Response;)V

    return v4

    :cond_4
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/blink/mojom/FrameWidget_Internal$FrameWidgetGetContextMenuImageParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/blink/mojom/FrameWidget_Internal$FrameWidgetGetContextMenuImageParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object v2

    check-cast v2, Lorg/chromium/blink/mojom/FrameWidget;

    iget-object p1, p1, Lorg/chromium/blink/mojom/FrameWidget_Internal$FrameWidgetGetContextMenuImageParams;->imageUrl:Lorg/chromium/mojo_base/mojom/String16;

    new-instance v3, Lorg/chromium/blink/mojom/FrameWidget_Internal$FrameWidgetGetContextMenuImageResponseParamsProxyToResponder;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    invoke-virtual {v1}, Lorg/chromium/mojo/bindings/MessageHeader;->getRequestId()J

    move-result-wide v5

    invoke-direct {v3, p0, p2, v5, v6}, Lorg/chromium/blink/mojom/FrameWidget_Internal$FrameWidgetGetContextMenuImageResponseParamsProxyToResponder;-><init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageReceiver;J)V

    invoke-interface {v2, p1, v3}, Lorg/chromium/blink/mojom/FrameWidget;->getContextMenuImage(Lorg/chromium/mojo_base/mojom/String16;Lorg/chromium/blink/mojom/FrameWidget$GetContextMenuImage_Response;)V

    return v4

    :cond_5
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/blink/mojom/FrameWidget_Internal$FrameWidgetGetImageBytesParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/blink/mojom/FrameWidget_Internal$FrameWidgetGetImageBytesParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object v2

    check-cast v2, Lorg/chromium/blink/mojom/FrameWidget;

    iget-object p1, p1, Lorg/chromium/blink/mojom/FrameWidget_Internal$FrameWidgetGetImageBytesParams;->imageUrl:Lorg/chromium/mojo_base/mojom/String16;

    new-instance v3, Lorg/chromium/blink/mojom/FrameWidget_Internal$FrameWidgetGetImageBytesResponseParamsProxyToResponder;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    invoke-virtual {v1}, Lorg/chromium/mojo/bindings/MessageHeader;->getRequestId()J

    move-result-wide v5

    invoke-direct {v3, p0, p2, v5, v6}, Lorg/chromium/blink/mojom/FrameWidget_Internal$FrameWidgetGetImageBytesResponseParamsProxyToResponder;-><init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageReceiver;J)V

    invoke-interface {v2, p1, v3}, Lorg/chromium/blink/mojom/FrameWidget;->getImageBytes(Lorg/chromium/mojo_base/mojom/String16;Lorg/chromium/blink/mojom/FrameWidget$GetImageBytes_Response;)V

    return v4

    :cond_6
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/blink/mojom/FrameWidget_Internal$FrameWidgetGetContextMenuImageElementBoundsParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/blink/mojom/FrameWidget_Internal$FrameWidgetGetContextMenuImageElementBoundsParams;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p1

    check-cast p1, Lorg/chromium/blink/mojom/FrameWidget;

    new-instance v2, Lorg/chromium/blink/mojom/FrameWidget_Internal$FrameWidgetGetContextMenuImageElementBoundsResponseParamsProxyToResponder;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    invoke-virtual {v1}, Lorg/chromium/mojo/bindings/MessageHeader;->getRequestId()J

    move-result-wide v5

    invoke-direct {v2, p0, p2, v5, v6}, Lorg/chromium/blink/mojom/FrameWidget_Internal$FrameWidgetGetContextMenuImageElementBoundsResponseParamsProxyToResponder;-><init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageReceiver;J)V

    invoke-interface {p1, v2}, Lorg/chromium/blink/mojom/FrameWidget;->getContextMenuImageElementBounds(Lorg/chromium/blink/mojom/FrameWidget$GetContextMenuImageElementBounds_Response;)V

    return v4

    :cond_7
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/blink/mojom/FrameWidget_Internal$FrameWidgetOnStartStylusWritingParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/blink/mojom/FrameWidget_Internal$FrameWidgetOnStartStylusWritingParams;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p1

    check-cast p1, Lorg/chromium/blink/mojom/FrameWidget;

    new-instance v2, Lorg/chromium/blink/mojom/FrameWidget_Internal$FrameWidgetOnStartStylusWritingResponseParamsProxyToResponder;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    invoke-virtual {v1}, Lorg/chromium/mojo/bindings/MessageHeader;->getRequestId()J

    move-result-wide v5

    invoke-direct {v2, p0, p2, v5, v6}, Lorg/chromium/blink/mojom/FrameWidget_Internal$FrameWidgetOnStartStylusWritingResponseParamsProxyToResponder;-><init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageReceiver;J)V

    invoke-interface {p1, v2}, Lorg/chromium/blink/mojom/FrameWidget;->onStartStylusWriting(Lorg/chromium/blink/mojom/FrameWidget$OnStartStylusWriting_Response;)V

    return v4

    :cond_8
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/blink/mojom/FrameWidget_Internal$FrameWidgetDragSourceEndedAtParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/blink/mojom/FrameWidget_Internal$FrameWidgetDragSourceEndedAtParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object v2

    check-cast v2, Lorg/chromium/blink/mojom/FrameWidget;

    iget-object v3, p1, Lorg/chromium/blink/mojom/FrameWidget_Internal$FrameWidgetDragSourceEndedAtParams;->pointInViewport:Lorg/chromium/gfx/mojom/PointF;

    iget-object v5, p1, Lorg/chromium/blink/mojom/FrameWidget_Internal$FrameWidgetDragSourceEndedAtParams;->screenPoint:Lorg/chromium/gfx/mojom/PointF;

    iget p1, p1, Lorg/chromium/blink/mojom/FrameWidget_Internal$FrameWidgetDragSourceEndedAtParams;->dragOperation:I

    new-instance v6, Lorg/chromium/blink/mojom/FrameWidget_Internal$FrameWidgetDragSourceEndedAtResponseParamsProxyToResponder;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    invoke-virtual {v1}, Lorg/chromium/mojo/bindings/MessageHeader;->getRequestId()J

    move-result-wide v7

    invoke-direct {v6, p0, p2, v7, v8}, Lorg/chromium/blink/mojom/FrameWidget_Internal$FrameWidgetDragSourceEndedAtResponseParamsProxyToResponder;-><init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageReceiver;J)V

    invoke-interface {v2, v3, v5, p1, v6}, Lorg/chromium/blink/mojom/FrameWidget;->dragSourceEndedAt(Lorg/chromium/gfx/mojom/PointF;Lorg/chromium/gfx/mojom/PointF;ILorg/chromium/blink/mojom/FrameWidget$DragSourceEndedAt_Response;)V

    return v4

    :cond_9
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/blink/mojom/FrameWidget_Internal$FrameWidgetDragTargetDropParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/blink/mojom/FrameWidget_Internal$FrameWidgetDragTargetDropParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Lorg/chromium/blink/mojom/FrameWidget;

    iget-object v6, p1, Lorg/chromium/blink/mojom/FrameWidget_Internal$FrameWidgetDragTargetDropParams;->dragData:Lorg/chromium/blink/mojom/DragData;

    iget-object v7, p1, Lorg/chromium/blink/mojom/FrameWidget_Internal$FrameWidgetDragTargetDropParams;->pointInViewport:Lorg/chromium/gfx/mojom/PointF;

    iget-object v8, p1, Lorg/chromium/blink/mojom/FrameWidget_Internal$FrameWidgetDragTargetDropParams;->screenPoint:Lorg/chromium/gfx/mojom/PointF;

    iget v9, p1, Lorg/chromium/blink/mojom/FrameWidget_Internal$FrameWidgetDragTargetDropParams;->keyModifiers:I

    new-instance v10, Lorg/chromium/blink/mojom/FrameWidget_Internal$FrameWidgetDragTargetDropResponseParamsProxyToResponder;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    invoke-virtual {v1}, Lorg/chromium/mojo/bindings/MessageHeader;->getRequestId()J

    move-result-wide v1

    invoke-direct {v10, p0, p2, v1, v2}, Lorg/chromium/blink/mojom/FrameWidget_Internal$FrameWidgetDragTargetDropResponseParamsProxyToResponder;-><init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageReceiver;J)V

    invoke-interface/range {v5 .. v10}, Lorg/chromium/blink/mojom/FrameWidget;->dragTargetDrop(Lorg/chromium/blink/mojom/DragData;Lorg/chromium/gfx/mojom/PointF;Lorg/chromium/gfx/mojom/PointF;ILorg/chromium/blink/mojom/FrameWidget$DragTargetDrop_Response;)V

    return v4

    :cond_a
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/blink/mojom/FrameWidget_Internal$FrameWidgetDragTargetDragOverParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/blink/mojom/FrameWidget_Internal$FrameWidgetDragTargetDragOverParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Lorg/chromium/blink/mojom/FrameWidget;

    iget-object v6, p1, Lorg/chromium/blink/mojom/FrameWidget_Internal$FrameWidgetDragTargetDragOverParams;->pointInViewport:Lorg/chromium/gfx/mojom/PointF;

    iget-object v7, p1, Lorg/chromium/blink/mojom/FrameWidget_Internal$FrameWidgetDragTargetDragOverParams;->screenPoint:Lorg/chromium/gfx/mojom/PointF;

    iget-object v8, p1, Lorg/chromium/blink/mojom/FrameWidget_Internal$FrameWidgetDragTargetDragOverParams;->operationsAllowed:Lorg/chromium/blink/mojom/AllowedDragOperations;

    iget v9, p1, Lorg/chromium/blink/mojom/FrameWidget_Internal$FrameWidgetDragTargetDragOverParams;->keyModifiers:I

    new-instance v10, Lorg/chromium/blink/mojom/FrameWidget_Internal$FrameWidgetDragTargetDragOverResponseParamsProxyToResponder;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    invoke-virtual {v1}, Lorg/chromium/mojo/bindings/MessageHeader;->getRequestId()J

    move-result-wide v1

    invoke-direct {v10, p0, p2, v1, v2}, Lorg/chromium/blink/mojom/FrameWidget_Internal$FrameWidgetDragTargetDragOverResponseParamsProxyToResponder;-><init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageReceiver;J)V

    invoke-interface/range {v5 .. v10}, Lorg/chromium/blink/mojom/FrameWidget;->dragTargetDragOver(Lorg/chromium/gfx/mojom/PointF;Lorg/chromium/gfx/mojom/PointF;Lorg/chromium/blink/mojom/AllowedDragOperations;ILorg/chromium/blink/mojom/FrameWidget$DragTargetDragOver_Response;)V

    return v4

    :cond_b
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/blink/mojom/FrameWidget_Internal$FrameWidgetDragTargetDragEnterParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/blink/mojom/FrameWidget_Internal$FrameWidgetDragTargetDragEnterParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Lorg/chromium/blink/mojom/FrameWidget;

    iget-object v6, p1, Lorg/chromium/blink/mojom/FrameWidget_Internal$FrameWidgetDragTargetDragEnterParams;->dragData:Lorg/chromium/blink/mojom/DragData;

    iget-object v7, p1, Lorg/chromium/blink/mojom/FrameWidget_Internal$FrameWidgetDragTargetDragEnterParams;->pointInViewport:Lorg/chromium/gfx/mojom/PointF;

    iget-object v8, p1, Lorg/chromium/blink/mojom/FrameWidget_Internal$FrameWidgetDragTargetDragEnterParams;->screenPoint:Lorg/chromium/gfx/mojom/PointF;

    iget-object v9, p1, Lorg/chromium/blink/mojom/FrameWidget_Internal$FrameWidgetDragTargetDragEnterParams;->operationsAllowed:Lorg/chromium/blink/mojom/AllowedDragOperations;

    iget v10, p1, Lorg/chromium/blink/mojom/FrameWidget_Internal$FrameWidgetDragTargetDragEnterParams;->keyModifiers:I

    new-instance v11, Lorg/chromium/blink/mojom/FrameWidget_Internal$FrameWidgetDragTargetDragEnterResponseParamsProxyToResponder;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    invoke-virtual {v1}, Lorg/chromium/mojo/bindings/MessageHeader;->getRequestId()J

    move-result-wide v1

    invoke-direct {v11, p0, p2, v1, v2}, Lorg/chromium/blink/mojom/FrameWidget_Internal$FrameWidgetDragTargetDragEnterResponseParamsProxyToResponder;-><init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageReceiver;J)V

    invoke-interface/range {v5 .. v11}, Lorg/chromium/blink/mojom/FrameWidget;->dragTargetDragEnter(Lorg/chromium/blink/mojom/DragData;Lorg/chromium/gfx/mojom/PointF;Lorg/chromium/gfx/mojom/PointF;Lorg/chromium/blink/mojom/AllowedDragOperations;ILorg/chromium/blink/mojom/FrameWidget$DragTargetDragEnter_Response;)V

    return v4

    :cond_c
    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    sget-object v1, Lorg/chromium/blink/mojom/FrameWidget_Internal;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

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

    :pswitch_data_0
    .packed-switch 0x21
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
