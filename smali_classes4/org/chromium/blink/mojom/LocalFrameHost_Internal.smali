.class Lorg/chromium/blink/mojom/LocalFrameHost_Internal;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostNotifyDocumentInteractiveParams;,
        Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostRecordWindowProxyUsageMetricsParams;,
        Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostNotifyStorageAccessedParams;,
        Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostIssueKeepAliveHandleParams;,
        Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostStartDraggingParams;,
        Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostOnViewTransitionOptInChangedParams;,
        Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostForwardFencedFrameEventAndUserActivationToEmbedderParams;,
        Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostCreateFencedFrameParams;,
        Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostSendPrivateAggregationRequestsForFencedFrameEventParams;,
        Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostSetFencedFrameAutomaticBeaconReportEventDataParams;,
        Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostSendLegacyTechEventParams;,
        Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostExemptUrlFromNetworkRevocationForTestingResponseParamsProxyToResponder;,
        Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostExemptUrlFromNetworkRevocationForTestingResponseParamsForwardToCallback;,
        Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostExemptUrlFromNetworkRevocationForTestingResponseParams;,
        Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostExemptUrlFromNetworkRevocationForTestingParams;,
        Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostDisableUntrustedNetworkInFencedFrameResponseParamsProxyToResponder;,
        Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostDisableUntrustedNetworkInFencedFrameResponseParamsForwardToCallback;,
        Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostDisableUntrustedNetworkInFencedFrameResponseParams;,
        Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostDisableUntrustedNetworkInFencedFrameParams;,
        Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostSendFencedFrameReportingBeaconToCustomUrlParams;,
        Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostSendFencedFrameReportingBeaconParams;,
        Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostReceivedDelegatedCapabilityParams;,
        Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostDidChangeSrcDocParams;,
        Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostDidInferColorSchemeParams;,
        Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostFrameSizeChangedParams;,
        Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostDidAddMessageToConsoleParams;,
        Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostGetKeepAliveHandleFactoryParams;,
        Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostDetachParams;,
        Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostSetCloseListenerParams;,
        Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostCapturePaintPreviewOfSubframeParams;,
        Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostDidChangeIframeAttributesParams;,
        Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostDidChangeFramePolicyParams;,
        Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostDidChangeOpenerParams;,
        Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostDidChangeFrameOwnerPropertiesParams;,
        Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostDidLoadResourceFromMemoryCacheParams;,
        Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostShowContextMenuParams;,
        Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostCreateNewPopupWidgetParams;,
        Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostShowPopupMenuParams;,
        Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostHidePopupMenuParams;,
        Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostTextSelectionChangedParams;,
        Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostFocusedElementChangedParams;,
        Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostDownloadUrlParams;,
        Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostUpdateFaviconUrlParams;,
        Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostRunBeforeUnloadConfirmResponseParamsProxyToResponder;,
        Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostRunBeforeUnloadConfirmResponseParamsForwardToCallback;,
        Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostRunBeforeUnloadConfirmResponseParams;,
        Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostRunBeforeUnloadConfirmParams;,
        Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostRunModalPromptDialogResponseParamsProxyToResponder;,
        Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostRunModalPromptDialogResponseParamsForwardToCallback;,
        Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostRunModalPromptDialogResponseParams;,
        Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostRunModalPromptDialogParams;,
        Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostRunModalConfirmDialogResponseParamsProxyToResponder;,
        Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostRunModalConfirmDialogResponseParamsForwardToCallback;,
        Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostRunModalConfirmDialogResponseParams;,
        Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostRunModalConfirmDialogParams;,
        Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostRunModalAlertDialogResponseParamsProxyToResponder;,
        Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostRunModalAlertDialogResponseParamsForwardToCallback;,
        Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostRunModalAlertDialogResponseParams;,
        Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostRunModalAlertDialogParams;,
        Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostDidDispatchDomContentLoadedEventParams;,
        Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostForwardResourceTimingToParentParams;,
        Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostDocumentOnLoadCompletedParams;,
        Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostHandleAccessibilityFindInPageTerminationParams;,
        Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostHandleAccessibilityFindInPageResultParams;,
        Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostDidConsumeHistoryUserActivationParams;,
        Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostUpdateUserActivationStateParams;,
        Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostUpdateApplicationTitleParams;,
        Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostUpdateTitleParams;,
        Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostNavigateEventHandlerPresenceChangedParams;,
        Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostNavigateToNavigationApiKeyParams;,
        Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostGoToEntryAtOffsetParams;,
        Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostDispatchLoadParams;,
        Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostDidFinishLoadParams;,
        Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostDidChangeLoadProgressParams;,
        Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostDidBlockNavigationParams;,
        Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostStartLoadingForAsyncNavigationApiCommitParams;,
        Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostBubbleLogicalScrollInParentFrameParams;,
        Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostScrollRectToVisibleInParentFrameParams;,
        Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostHadStickyUserActivationBeforeNavigationChangedParams;,
        Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostSuddenTerminationDisablerChangedParams;,
        Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostEnforceInsecureNavigationsSetParams;,
        Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostEnforceInsecureRequestPolicyParams;,
        Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostDidCallFocusParams;,
        Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostDidFocusFrameParams;,
        Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostDidFailLoadWithErrorParams;,
        Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostDidChangeBackgroundColorParams;,
        Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostDidChangeThemeColorParams;,
        Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostVisibilityChangedParams;,
        Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostSetVirtualKeyboardModeParams;,
        Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostSetNeedsOcclusionTrackingParams;,
        Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostMainDocumentElementAvailableParams;,
        Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostDidContainInsecureFormActionParams;,
        Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostDidDisplayInsecureContentParams;,
        Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostUnregisterProtocolHandlerParams;,
        Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostRegisterProtocolHandlerParams;,
        Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostFullscreenStateChangedParams;,
        Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostExitFullscreenParams;,
        Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostEnterFullscreenResponseParamsProxyToResponder;,
        Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostEnterFullscreenResponseParamsForwardToCallback;,
        Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostEnterFullscreenResponseParams;,
        Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostEnterFullscreenParams;,
        Lorg/chromium/blink/mojom/LocalFrameHost_Internal$Stub;,
        Lorg/chromium/blink/mojom/LocalFrameHost_Internal$Proxy;
    }
.end annotation


# static fields
.field public static final MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/chromium/mojo/bindings/Interface$Manager<",
            "Lorg/chromium/blink/mojom/LocalFrameHost;",
            "Lorg/chromium/blink/mojom/LocalFrameHost$Proxy;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/chromium/blink/mojom/LocalFrameHost_Internal$1;

    invoke-direct {v0}, Lorg/chromium/blink/mojom/LocalFrameHost_Internal$1;-><init>()V

    sput-object v0, Lorg/chromium/blink/mojom/LocalFrameHost_Internal;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    return-void
.end method
