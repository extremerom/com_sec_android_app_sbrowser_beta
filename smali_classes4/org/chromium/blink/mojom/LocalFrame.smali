.class public interface abstract Lorg/chromium/blink/mojom/LocalFrame;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/mojo/bindings/Interface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/blink/mojom/LocalFrame$GetScrollPosition_Response;,
        Lorg/chromium/blink/mojom/LocalFrame$SnapshotDocumentForViewTransition_Response;,
        Lorg/chromium/blink/mojom/LocalFrame$UpdatePrerenderUrl_Response;,
        Lorg/chromium/blink/mojom/LocalFrame$GetOpenGraphMetadata_Response;,
        Lorg/chromium/blink/mojom/LocalFrame$GetCanonicalUrlForSharing_Response;,
        Lorg/chromium/blink/mojom/LocalFrame$ExtractSmartClipImageData_Response;,
        Lorg/chromium/blink/mojom/LocalFrame$ExtractSmartClipData_Response;,
        Lorg/chromium/blink/mojom/LocalFrame$GetSavableResourceLinks_Response;,
        Lorg/chromium/blink/mojom/LocalFrame$JavaScriptExecuteRequestInIsolatedWorld_Response;,
        Lorg/chromium/blink/mojom/LocalFrame$JavaScriptExecuteRequestForTests_Response;,
        Lorg/chromium/blink/mojom/LocalFrame$JavaScriptExecuteRequest_Response;,
        Lorg/chromium/blink/mojom/LocalFrame$JavaScriptMethodExecuteRequest_Response;,
        Lorg/chromium/blink/mojom/LocalFrame$RequestVideoFrameAtWithBoundsHint_Response;,
        Lorg/chromium/blink/mojom/LocalFrame$BeforeUnload_Response;,
        Lorg/chromium/blink/mojom/LocalFrame$GetTextSurroundingSelection_Response;,
        Lorg/chromium/blink/mojom/LocalFrame$Proxy;
    }
.end annotation


# virtual methods
.method public abstract addMessageToConsole(ILjava/lang/String;Z)V
.end method

.method public abstract addResourceTimingEntryForFailedSubframeNavigation(Lorg/chromium/blink/mojom/FrameToken;Lorg/chromium/url/mojom/Url;Lorg/chromium/mojo_base/mojom/TimeTicks;Lorg/chromium/mojo_base/mojom/TimeTicks;Lorg/chromium/mojo_base/mojom/TimeTicks;Lorg/chromium/mojo_base/mojom/TimeTicks;ILjava/lang/String;Lorg/chromium/network/mojom/LoadTimingInfo;ILjava/lang/String;ZZLjava/lang/String;Lorg/chromium/network/mojom/UrlLoaderCompletionStatus;)V
.end method

.method public abstract advanceFocusForIme(I)V
.end method

.method public abstract advanceFocusInFrame(ILorg/chromium/blink/mojom/RemoteFrameToken;)V
.end method

.method public abstract beforeUnload(ZLorg/chromium/blink/mojom/LocalFrame$BeforeUnload_Response;)V
.end method

.method public abstract bindDevToolsAgent(Lorg/chromium/mojo/bindings/AssociatedInterfaceNotSupported;Lorg/chromium/mojo/bindings/AssociatedInterfaceRequestNotSupported;)V
.end method

.method public abstract bindReportingObserver(Lorg/chromium/mojo/bindings/InterfaceRequest;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/chromium/mojo/bindings/InterfaceRequest<",
            "Lorg/chromium/blink/mojom/ReportingObserver;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract checkCompleted()V
.end method

.method public abstract clearFocusedElement()V
.end method

.method public abstract collapse(Z)V
.end method

.method public abstract copyImageAt(Lorg/chromium/gfx/mojom/Point;)V
.end method

.method public abstract didUpdateFramePolicy(Lorg/chromium/blink/mojom/FramePolicy;)V
.end method

.method public abstract dispatchNavigateEventForCrossDocumentTraversal(Lorg/chromium/url/mojom/Url;Lorg/chromium/mojo_base/mojom/ByteString;Z)V
.end method

.method public abstract dispatchPageSwap(Lorg/chromium/blink/mojom/PageSwapEventParams;)V
.end method

.method public abstract enableViewSourceMode()V
.end method

.method public abstract extractSmartClipData(Lorg/chromium/gfx/mojom/Rect;Lorg/chromium/blink/mojom/LocalFrame$ExtractSmartClipData_Response;)V
.end method

.method public abstract extractSmartClipImageData(Lorg/chromium/blink/mojom/SmartClipImageExtractionParams;Lorg/chromium/blink/mojom/LocalFrame$ExtractSmartClipImageData_Response;)V
.end method

.method public abstract focus()V
.end method

.method public abstract getCanonicalUrlForSharing(Lorg/chromium/blink/mojom/LocalFrame$GetCanonicalUrlForSharing_Response;)V
.end method

.method public abstract getOpenGraphMetadata(Lorg/chromium/blink/mojom/LocalFrame$GetOpenGraphMetadata_Response;)V
.end method

.method public abstract getSavableResourceLinks(Lorg/chromium/blink/mojom/LocalFrame$GetSavableResourceLinks_Response;)V
.end method

.method public abstract getScrollPosition(Lorg/chromium/blink/mojom/LocalFrame$GetScrollPosition_Response;)V
.end method

.method public abstract getTextSurroundingSelection(ILorg/chromium/blink/mojom/LocalFrame$GetTextSurroundingSelection_Response;)V
.end method

.method public abstract handleRendererDebugUrl(Lorg/chromium/url/mojom/Url;)V
.end method

.method public abstract javaScriptExecuteRequest(Lorg/chromium/mojo_base/mojom/BigString16;ZLorg/chromium/blink/mojom/LocalFrame$JavaScriptExecuteRequest_Response;)V
.end method

.method public abstract javaScriptExecuteRequestForTests(Lorg/chromium/mojo_base/mojom/BigString16;ZZZILorg/chromium/blink/mojom/LocalFrame$JavaScriptExecuteRequestForTests_Response;)V
.end method

.method public abstract javaScriptExecuteRequestInIsolatedWorld(Lorg/chromium/mojo_base/mojom/BigString16;ZILorg/chromium/blink/mojom/LocalFrame$JavaScriptExecuteRequestInIsolatedWorld_Response;)V
.end method

.method public abstract javaScriptMethodExecuteRequest(Lorg/chromium/mojo_base/mojom/String16;Lorg/chromium/mojo_base/mojom/String16;Lorg/chromium/mojo_base/mojom/ListValue;ZLorg/chromium/blink/mojom/LocalFrame$JavaScriptMethodExecuteRequest_Response;)V
.end method

.method public abstract mediaPlayerActionAt(Lorg/chromium/gfx/mojom/Point;Lorg/chromium/blink/mojom/MediaPlayerAction;)V
.end method

.method public abstract mixedContentFound(Lorg/chromium/url/mojom/Url;Lorg/chromium/url/mojom/Url;IZLorg/chromium/url/mojom/Url;ZLorg/chromium/network/mojom/SourceLocation;)V
.end method

.method public abstract notifyContextMenuInsetsObservers(Lorg/chromium/gfx/mojom/Rect;)V
.end method

.method public abstract notifyNavigationApiOfDisposedEntries([Ljava/lang/String;)V
.end method

.method public abstract notifyUserActivation(I)V
.end method

.method public abstract notifyViewTransitionAbortedToOldDocument()V
.end method

.method public abstract notifyVirtualKeyboardOverlayRect(Lorg/chromium/gfx/mojom/Rect;)V
.end method

.method public abstract onFrameVisibilityChanged(I)V
.end method

.method public abstract pluginActionAt(Lorg/chromium/gfx/mojom/Point;I)V
.end method

.method public abstract postMessageEvent(Lorg/chromium/blink/mojom/RemoteFrameToken;Lorg/chromium/mojo_base/mojom/String16;Lorg/chromium/mojo_base/mojom/String16;Lorg/chromium/blink/mojom/TransferableMessage;)V
.end method

.method public abstract renderFallbackContent()V
.end method

.method public abstract reportBlinkFeatureUsage([I)V
.end method

.method public abstract reportContentSecurityPolicyViolation(Lorg/chromium/network/mojom/CspViolation;)V
.end method

.method public abstract requestVideoFrameAtWithBoundsHint(Lorg/chromium/gfx/mojom/Point;Lorg/chromium/gfx/mojom/Size;ILorg/chromium/blink/mojom/LocalFrame$RequestVideoFrameAtWithBoundsHint_Response;)V
.end method

.method public abstract saveImageAt(Lorg/chromium/gfx/mojom/Point;)V
.end method

.method public abstract sendInterventionReport(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract setFrameOwnerProperties(Lorg/chromium/blink/mojom/FrameOwnerProperties;)V
.end method

.method public abstract setNavigationApiHistoryEntriesForRestore(Lorg/chromium/blink/mojom/NavigationApiHistoryEntryArrays;I)V
.end method

.method public abstract snapshotDocumentForViewTransition(Lorg/chromium/blink/mojom/ViewTransitionToken;Lorg/chromium/blink/mojom/PageSwapEventParams;Lorg/chromium/blink/mojom/LocalFrame$SnapshotDocumentForViewTransition_Response;)V
.end method

.method public abstract stopLoading()V
.end method

.method public abstract swapInImmediately()V
.end method

.method public abstract traverseCancelled(Ljava/lang/String;I)V
.end method

.method public abstract updateOpener(Lorg/chromium/blink/mojom/FrameToken;)V
.end method

.method public abstract updatePrerenderUrl(Lorg/chromium/url/mojom/Url;Lorg/chromium/blink/mojom/LocalFrame$UpdatePrerenderUrl_Response;)V
.end method
