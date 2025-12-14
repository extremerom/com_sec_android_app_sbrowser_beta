.class Lorg/chromium/viz/mojom/CompositingModeReporter_Internal;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/viz/mojom/CompositingModeReporter_Internal$CompositingModeReporterAddCompositingModeWatcherParams;,
        Lorg/chromium/viz/mojom/CompositingModeReporter_Internal$Stub;,
        Lorg/chromium/viz/mojom/CompositingModeReporter_Internal$Proxy;
    }
.end annotation


# static fields
.field public static final MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/chromium/mojo/bindings/Interface$Manager<",
            "Lorg/chromium/viz/mojom/CompositingModeReporter;",
            "Lorg/chromium/viz/mojom/CompositingModeReporter$Proxy;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/chromium/viz/mojom/CompositingModeReporter_Internal$1;

    invoke-direct {v0}, Lorg/chromium/viz/mojom/CompositingModeReporter_Internal$1;-><init>()V

    sput-object v0, Lorg/chromium/viz/mojom/CompositingModeReporter_Internal;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    return-void
.end method
