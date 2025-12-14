.class public interface abstract Lorg/chromium/blink/mojom/LocalFrameHost;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/mojo/bindings/Interface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/blink/mojom/LocalFrameHost$ExemptUrlFromNetworkRevocationForTesting_Response;,
        Lorg/chromium/blink/mojom/LocalFrameHost$DisableUntrustedNetworkInFencedFrame_Response;,
        Lorg/chromium/blink/mojom/LocalFrameHost$RunBeforeUnloadConfirm_Response;,
        Lorg/chromium/blink/mojom/LocalFrameHost$RunModalPromptDialog_Response;,
        Lorg/chromium/blink/mojom/LocalFrameHost$RunModalConfirmDialog_Response;,
        Lorg/chromium/blink/mojom/LocalFrameHost$RunModalAlertDialog_Response;,
        Lorg/chromium/blink/mojom/LocalFrameHost$EnterFullscreen_Response;,
        Lorg/chromium/blink/mojom/LocalFrameHost$Proxy;
    }
.end annotation


# virtual methods
.method public abstract bubbleLogicalScrollInParentFrame(II)V
.end method

.method public abstract capturePaintPreviewOfSubframe(Lorg/chromium/gfx/mojom/Rect;Lorg/chromium/mojo_base/mojom/UnguessableToken;)V
.end method

.method public abstract createFencedFrame(Lorg/chromium/mojo/bindings/AssociatedInterfaceRequestNotSupported;Lorg/chromium/blink/mojom/RemoteFrameInterfacesFromRenderer;Lorg/chromium/blink/mojom/RemoteFrameToken;Lorg/chromium/mojo_base/mojom/UnguessableToken;)V
.end method

.method public abstract createNewPopupWidget(Lorg/chromium/mojo/bindings/AssociatedInterfaceRequestNotSupported;Lorg/chromium/mojo/bindings/AssociatedInterfaceRequestNotSupported;Lorg/chromium/mojo/bindings/AssociatedInterfaceNotSupported;)V
.end method

.method public abstract detach()V
.end method

.method public abstract didAddMessageToConsole(ILorg/chromium/mojo_base/mojom/BigString16;ILorg/chromium/mojo_base/mojom/String16;Lorg/chromium/mojo_base/mojom/BigString16;)V
.end method

.method public abstract didBlockNavigation(Lorg/chromium/url/mojom/Url;I)V
.end method

.method public abstract didCallFocus()V
.end method

.method public abstract didChangeBackgroundColor(Lorg/chromium/skia/mojom/SkColor4f;Z)V
.end method

.method public abstract didChangeFrameOwnerProperties(Lorg/chromium/blink/mojom/FrameToken;Lorg/chromium/blink/mojom/FrameOwnerProperties;)V
.end method

.method public abstract didChangeFramePolicy(Lorg/chromium/blink/mojom/FrameToken;Lorg/chromium/blink/mojom/FramePolicy;)V
.end method

.method public abstract didChangeIframeAttributes(Lorg/chromium/blink/mojom/FrameToken;Lorg/chromium/blink/mojom/IframeAttributes;)V
.end method

.method public abstract didChangeLoadProgress(D)V
.end method

.method public abstract didChangeOpener(Lorg/chromium/blink/mojom/LocalFrameToken;)V
.end method

.method public abstract didChangeSrcDoc(Lorg/chromium/blink/mojom/FrameToken;Ljava/lang/String;)V
.end method

.method public abstract didChangeThemeColor(Lorg/chromium/skia/mojom/SkColor;)V
.end method

.method public abstract didConsumeHistoryUserActivation()V
.end method

.method public abstract didContainInsecureFormAction()V
.end method

.method public abstract didDispatchDomContentLoadedEvent()V
.end method

.method public abstract didDisplayInsecureContent()V
.end method

.method public abstract didFailLoadWithError(Lorg/chromium/url/mojom/Url;I)V
.end method

.method public abstract didFinishLoad(Lorg/chromium/url/mojom/Url;)V
.end method

.method public abstract didFocusFrame()V
.end method

.method public abstract didInferColorScheme(I)V
.end method

.method public abstract didLoadResourceFromMemoryCache(Lorg/chromium/url/mojom/Url;Ljava/lang/String;Ljava/lang/String;IZ)V
.end method

.method public abstract disableUntrustedNetworkInFencedFrame(Lorg/chromium/blink/mojom/LocalFrameHost$DisableUntrustedNetworkInFencedFrame_Response;)V
.end method

.method public abstract dispatchLoad()V
.end method

.method public abstract documentOnLoadCompleted()V
.end method

.method public abstract downloadUrl(Lorg/chromium/blink/mojom/DownloadUrlParams;)V
.end method

.method public abstract enforceInsecureNavigationsSet([I)V
.end method

.method public abstract enforceInsecureRequestPolicy(I)V
.end method

.method public abstract enterFullscreen(Lorg/chromium/blink/mojom/FullscreenOptions;Lorg/chromium/blink/mojom/LocalFrameHost$EnterFullscreen_Response;)V
.end method

.method public abstract exemptUrlFromNetworkRevocationForTesting(Lorg/chromium/url/mojom/Url;Lorg/chromium/blink/mojom/LocalFrameHost$ExemptUrlFromNetworkRevocationForTesting_Response;)V
.end method

.method public abstract exitFullscreen()V
.end method

.method public abstract focusedElementChanged(ZZLorg/chromium/gfx/mojom/Rect;I)V
.end method

.method public abstract forwardFencedFrameEventAndUserActivationToEmbedder(Ljava/lang/String;)V
.end method

.method public abstract forwardResourceTimingToParent(Lorg/chromium/blink/mojom/ResourceTimingInfo;)V
.end method

.method public abstract frameSizeChanged(Lorg/chromium/gfx/mojom/Size;)V
.end method

.method public abstract fullscreenStateChanged(ZLorg/chromium/blink/mojom/FullscreenOptions;)V
.end method

.method public abstract getKeepAliveHandleFactory(Lorg/chromium/mojo/bindings/InterfaceRequest;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/chromium/mojo/bindings/InterfaceRequest<",
            "Lorg/chromium/blink/mojom/KeepAliveHandleFactory;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract goToEntryAtOffset(IZLorg/chromium/blink/mojom/TaskAttributionId;)V
.end method

.method public abstract hadStickyUserActivationBeforeNavigationChanged(Z)V
.end method

.method public abstract handleAccessibilityFindInPageResult(Lorg/chromium/blink/mojom/FindInPageResultAxParams;)V
.end method

.method public abstract handleAccessibilityFindInPageTermination()V
.end method

.method public abstract hidePopupMenu()V
.end method

.method public abstract issueKeepAliveHandle(Lorg/chromium/mojo/bindings/InterfaceRequest;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/chromium/mojo/bindings/InterfaceRequest<",
            "Lorg/chromium/blink/mojom/NavigationStateKeepAliveHandle;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract mainDocumentElementAvailable(Z)V
.end method

.method public abstract navigateEventHandlerPresenceChanged(Z)V
.end method

.method public abstract navigateToNavigationApiKey(Ljava/lang/String;ZLorg/chromium/blink/mojom/TaskAttributionId;)V
.end method

.method public abstract notifyDocumentInteractive()V
.end method

.method public abstract notifyStorageAccessed(IZ)V
.end method

.method public abstract onViewTransitionOptInChanged(I)V
.end method

.method public abstract receivedDelegatedCapability(I)V
.end method

.method public abstract recordWindowProxyUsageMetrics(Lorg/chromium/blink/mojom/FrameToken;I)V
.end method

.method public abstract registerProtocolHandler(Ljava/lang/String;Lorg/chromium/url/mojom/Url;Z)V
.end method

.method public abstract runBeforeUnloadConfirm(ZLorg/chromium/blink/mojom/LocalFrameHost$RunBeforeUnloadConfirm_Response;)V
.end method

.method public abstract runModalAlertDialog(Lorg/chromium/mojo_base/mojom/String16;ZLorg/chromium/blink/mojom/LocalFrameHost$RunModalAlertDialog_Response;)V
.end method

.method public abstract runModalConfirmDialog(Lorg/chromium/mojo_base/mojom/String16;ZLorg/chromium/blink/mojom/LocalFrameHost$RunModalConfirmDialog_Response;)V
.end method

.method public abstract runModalPromptDialog(Lorg/chromium/mojo_base/mojom/String16;Lorg/chromium/mojo_base/mojom/String16;ZLorg/chromium/blink/mojom/LocalFrameHost$RunModalPromptDialog_Response;)V
.end method

.method public abstract scrollRectToVisibleInParentFrame(Lorg/chromium/gfx/mojom/RectF;Lorg/chromium/blink/mojom/ScrollIntoViewParams;)V
.end method

.method public abstract sendFencedFrameReportingBeacon(Ljava/lang/String;Ljava/lang/String;[IZ)V
.end method

.method public abstract sendFencedFrameReportingBeaconToCustomUrl(Lorg/chromium/url/mojom/Url;Z)V
.end method

.method public abstract sendLegacyTechEvent(Ljava/lang/String;Lorg/chromium/blink/mojom/LegacyTechEventCodeLocation;)V
.end method

.method public abstract sendPrivateAggregationRequestsForFencedFrameEvent(Ljava/lang/String;)V
.end method

.method public abstract setCloseListener(Lorg/chromium/blink/mojom/CloseListener;)V
.end method

.method public abstract setFencedFrameAutomaticBeaconReportEventData(ILjava/lang/String;[IZZ)V
.end method

.method public abstract setNeedsOcclusionTracking(Z)V
.end method

.method public abstract setVirtualKeyboardMode(I)V
.end method

.method public abstract showContextMenu(Lorg/chromium/mojo/bindings/AssociatedInterfaceNotSupported;Lorg/chromium/blink/mojom/UntrustworthyContextMenuParams;)V
.end method

.method public abstract showPopupMenu(Lorg/chromium/blink/mojom/PopupMenuClient;Lorg/chromium/gfx/mojom/Rect;DI[Lorg/chromium/blink/mojom/MenuItem;ZZI)V
.end method

.method public abstract startDragging(Lorg/chromium/blink/mojom/DragData;Lorg/chromium/blink/mojom/AllowedDragOperations;Lorg/chromium/skia/mojom/BitmapN32;Lorg/chromium/gfx/mojom/Vector2d;Lorg/chromium/gfx/mojom/Rect;Lorg/chromium/blink/mojom/DragEventSourceInfo;)V
.end method

.method public abstract startLoadingForAsyncNavigationApiCommit()V
.end method

.method public abstract suddenTerminationDisablerChanged(ZI)V
.end method

.method public abstract textSelectionChanged(Lorg/chromium/mojo_base/mojom/BigString16;ILorg/chromium/gfx/mojom/Range;)V
.end method

.method public abstract unregisterProtocolHandler(Ljava/lang/String;Lorg/chromium/url/mojom/Url;Z)V
.end method

.method public abstract updateApplicationTitle(Lorg/chromium/mojo_base/mojom/String16;)V
.end method

.method public abstract updateFaviconUrl([Lorg/chromium/blink/mojom/FaviconUrl;)V
.end method

.method public abstract updateTitle(Lorg/chromium/mojo_base/mojom/String16;I)V
.end method

.method public abstract updateUserActivationState(II)V
.end method

.method public abstract visibilityChanged(I)V
.end method
