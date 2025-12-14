.class Lorg/chromium/media/mojom/WebrtcVideoPerfHistory_Internal;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/media/mojom/WebrtcVideoPerfHistory_Internal$WebrtcVideoPerfHistoryGetPerfInfoResponseParamsProxyToResponder;,
        Lorg/chromium/media/mojom/WebrtcVideoPerfHistory_Internal$WebrtcVideoPerfHistoryGetPerfInfoResponseParamsForwardToCallback;,
        Lorg/chromium/media/mojom/WebrtcVideoPerfHistory_Internal$WebrtcVideoPerfHistoryGetPerfInfoResponseParams;,
        Lorg/chromium/media/mojom/WebrtcVideoPerfHistory_Internal$WebrtcVideoPerfHistoryGetPerfInfoParams;,
        Lorg/chromium/media/mojom/WebrtcVideoPerfHistory_Internal$Stub;,
        Lorg/chromium/media/mojom/WebrtcVideoPerfHistory_Internal$Proxy;
    }
.end annotation


# static fields
.field public static final MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/chromium/mojo/bindings/Interface$Manager<",
            "Lorg/chromium/media/mojom/WebrtcVideoPerfHistory;",
            "Lorg/chromium/media/mojom/WebrtcVideoPerfHistory$Proxy;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/chromium/media/mojom/WebrtcVideoPerfHistory_Internal$1;

    invoke-direct {v0}, Lorg/chromium/media/mojom/WebrtcVideoPerfHistory_Internal$1;-><init>()V

    sput-object v0, Lorg/chromium/media/mojom/WebrtcVideoPerfHistory_Internal;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    return-void
.end method
