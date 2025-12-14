.class Lorg/chromium/blink/mojom/PeerConnectionTrackerHost_Internal;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/blink/mojom/PeerConnectionTrackerHost_Internal$PeerConnectionTrackerHostAddStandardStatsParams;,
        Lorg/chromium/blink/mojom/PeerConnectionTrackerHost_Internal$PeerConnectionTrackerHostWebRtcEventLogWriteParams;,
        Lorg/chromium/blink/mojom/PeerConnectionTrackerHost_Internal$PeerConnectionTrackerHostGetDisplayMediaFailureParams;,
        Lorg/chromium/blink/mojom/PeerConnectionTrackerHost_Internal$PeerConnectionTrackerHostGetDisplayMediaSuccessParams;,
        Lorg/chromium/blink/mojom/PeerConnectionTrackerHost_Internal$PeerConnectionTrackerHostGetDisplayMediaParams;,
        Lorg/chromium/blink/mojom/PeerConnectionTrackerHost_Internal$PeerConnectionTrackerHostGetUserMediaFailureParams;,
        Lorg/chromium/blink/mojom/PeerConnectionTrackerHost_Internal$PeerConnectionTrackerHostGetUserMediaSuccessParams;,
        Lorg/chromium/blink/mojom/PeerConnectionTrackerHost_Internal$PeerConnectionTrackerHostGetUserMediaParams;,
        Lorg/chromium/blink/mojom/PeerConnectionTrackerHost_Internal$PeerConnectionTrackerHostOnPeerConnectionSessionIdSetParams;,
        Lorg/chromium/blink/mojom/PeerConnectionTrackerHost_Internal$PeerConnectionTrackerHostUpdatePeerConnectionParams;,
        Lorg/chromium/blink/mojom/PeerConnectionTrackerHost_Internal$PeerConnectionTrackerHostRemovePeerConnectionParams;,
        Lorg/chromium/blink/mojom/PeerConnectionTrackerHost_Internal$PeerConnectionTrackerHostAddPeerConnectionParams;,
        Lorg/chromium/blink/mojom/PeerConnectionTrackerHost_Internal$Stub;,
        Lorg/chromium/blink/mojom/PeerConnectionTrackerHost_Internal$Proxy;
    }
.end annotation


# static fields
.field public static final MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/chromium/mojo/bindings/Interface$Manager<",
            "Lorg/chromium/blink/mojom/PeerConnectionTrackerHost;",
            "Lorg/chromium/blink/mojom/PeerConnectionTrackerHost$Proxy;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/chromium/blink/mojom/PeerConnectionTrackerHost_Internal$1;

    invoke-direct {v0}, Lorg/chromium/blink/mojom/PeerConnectionTrackerHost_Internal$1;-><init>()V

    sput-object v0, Lorg/chromium/blink/mojom/PeerConnectionTrackerHost_Internal;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    return-void
.end method
