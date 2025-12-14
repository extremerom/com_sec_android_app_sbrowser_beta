.class Lorg/chromium/blink/mojom/ReportingServiceProxy_Internal;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/blink/mojom/ReportingServiceProxy_Internal$ReportingServiceProxyQueueCspHashReportParams;,
        Lorg/chromium/blink/mojom/ReportingServiceProxy_Internal$ReportingServiceProxyQueueDocumentPolicyViolationReportParams;,
        Lorg/chromium/blink/mojom/ReportingServiceProxy_Internal$ReportingServiceProxyQueuePotentialPermissionsPolicyViolationReportParams;,
        Lorg/chromium/blink/mojom/ReportingServiceProxy_Internal$ReportingServiceProxyQueuePermissionsPolicyViolationReportParams;,
        Lorg/chromium/blink/mojom/ReportingServiceProxy_Internal$ReportingServiceProxyQueueCspViolationReportParams;,
        Lorg/chromium/blink/mojom/ReportingServiceProxy_Internal$ReportingServiceProxyQueueDeprecationReportParams;,
        Lorg/chromium/blink/mojom/ReportingServiceProxy_Internal$ReportingServiceProxyQueueInterventionReportParams;,
        Lorg/chromium/blink/mojom/ReportingServiceProxy_Internal$Stub;,
        Lorg/chromium/blink/mojom/ReportingServiceProxy_Internal$Proxy;
    }
.end annotation


# static fields
.field public static final MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/chromium/mojo/bindings/Interface$Manager<",
            "Lorg/chromium/blink/mojom/ReportingServiceProxy;",
            "Lorg/chromium/blink/mojom/ReportingServiceProxy$Proxy;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/chromium/blink/mojom/ReportingServiceProxy_Internal$1;

    invoke-direct {v0}, Lorg/chromium/blink/mojom/ReportingServiceProxy_Internal$1;-><init>()V

    sput-object v0, Lorg/chromium/blink/mojom/ReportingServiceProxy_Internal;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    return-void
.end method
