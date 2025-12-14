.class Lorg/chromium/network/mojom/NetLogExporter_Internal;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/network/mojom/NetLogExporter_Internal$NetLogExporterStopResponseParamsProxyToResponder;,
        Lorg/chromium/network/mojom/NetLogExporter_Internal$NetLogExporterStopResponseParamsForwardToCallback;,
        Lorg/chromium/network/mojom/NetLogExporter_Internal$NetLogExporterStopResponseParams;,
        Lorg/chromium/network/mojom/NetLogExporter_Internal$NetLogExporterStopParams;,
        Lorg/chromium/network/mojom/NetLogExporter_Internal$NetLogExporterStartResponseParamsProxyToResponder;,
        Lorg/chromium/network/mojom/NetLogExporter_Internal$NetLogExporterStartResponseParamsForwardToCallback;,
        Lorg/chromium/network/mojom/NetLogExporter_Internal$NetLogExporterStartResponseParams;,
        Lorg/chromium/network/mojom/NetLogExporter_Internal$NetLogExporterStartParams;,
        Lorg/chromium/network/mojom/NetLogExporter_Internal$Stub;,
        Lorg/chromium/network/mojom/NetLogExporter_Internal$Proxy;
    }
.end annotation


# static fields
.field public static final MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/chromium/mojo/bindings/Interface$Manager<",
            "Lorg/chromium/network/mojom/NetLogExporter;",
            "Lorg/chromium/network/mojom/NetLogExporter$Proxy;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/chromium/network/mojom/NetLogExporter_Internal$1;

    invoke-direct {v0}, Lorg/chromium/network/mojom/NetLogExporter_Internal$1;-><init>()V

    sput-object v0, Lorg/chromium/network/mojom/NetLogExporter_Internal;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    return-void
.end method
