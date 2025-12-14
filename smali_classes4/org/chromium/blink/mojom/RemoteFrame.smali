.class public interface abstract Lorg/chromium/blink/mojom/RemoteFrame;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/mojo/bindings/Interface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/blink/mojom/RemoteFrame$Proxy;
    }
.end annotation


# virtual methods
.method public abstract addResourceTimingFromChild(Lorg/chromium/blink/mojom/ResourceTimingInfo;)V
.end method

.method public abstract bubbleLogicalScroll(II)V
.end method

.method public abstract childProcessGone()V
.end method

.method public abstract collapse(Z)V
.end method

.method public abstract createRemoteChild(Lorg/chromium/blink/mojom/RemoteFrameToken;Lorg/chromium/blink/mojom/FrameToken;ILorg/chromium/blink/mojom/FrameReplicationState;Lorg/chromium/blink/mojom/FrameOwnerProperties;ZLorg/chromium/mojo_base/mojom/UnguessableToken;Lorg/chromium/blink/mojom/RemoteFrameInterfacesFromBrowser;)V
.end method

.method public abstract createRemoteChildren([Lorg/chromium/blink/mojom/CreateRemoteChildParams;)V
.end method

.method public abstract detachAndDispose()V
.end method

.method public abstract didSetFramePolicyHeaders(I[Lorg/chromium/network/mojom/ParsedPermissionsPolicyDeclaration;)V
.end method

.method public abstract didStartLoading()V
.end method

.method public abstract didStopLoading()V
.end method

.method public abstract didUpdateFramePolicy(Lorg/chromium/blink/mojom/FramePolicy;)V
.end method

.method public abstract didUpdateVisualProperties(Lorg/chromium/cc/mojom/RenderFrameMetadata;)V
.end method

.method public abstract disableAutoResize()V
.end method

.method public abstract dispatchLoadEventForFrameOwner()V
.end method

.method public abstract enableAutoResize(Lorg/chromium/gfx/mojom/Size;Lorg/chromium/gfx/mojom/Size;)V
.end method

.method public abstract enforceInsecureNavigationsSet([I)V
.end method

.method public abstract enforceInsecureRequestPolicy(I)V
.end method

.method public abstract focus()V
.end method

.method public abstract forwardFencedFrameEventToEmbedder(Ljava/lang/String;)V
.end method

.method public abstract intrinsicSizingInfoOfChildChanged(Lorg/chromium/blink/mojom/IntrinsicSizingInfo;)V
.end method

.method public abstract renderFallbackContent()V
.end method

.method public abstract scrollRectToVisible(Lorg/chromium/gfx/mojom/RectF;Lorg/chromium/blink/mojom/ScrollIntoViewParams;)V
.end method

.method public abstract setEmbeddingToken(Lorg/chromium/mojo_base/mojom/UnguessableToken;)V
.end method

.method public abstract setFrameOwnerProperties(Lorg/chromium/blink/mojom/FrameOwnerProperties;)V
.end method

.method public abstract setFrameSinkId(Lorg/chromium/viz/mojom/FrameSinkId;Z)V
.end method

.method public abstract setHadStickyUserActivationBeforeNavigation(Z)V
.end method

.method public abstract setNeedsOcclusionTracking(Z)V
.end method

.method public abstract setPageFocus(Z)V
.end method

.method public abstract setReplicatedIsAdFrame(Z)V
.end method

.method public abstract setReplicatedName(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract setReplicatedOrigin(Lorg/chromium/url/internal/mojom/Origin;Z)V
.end method

.method public abstract updateOpener(Lorg/chromium/blink/mojom/FrameToken;)V
.end method

.method public abstract updateUserActivationState(II)V
.end method

.method public abstract willEnterFullscreen(Lorg/chromium/blink/mojom/FullscreenOptions;)V
.end method
