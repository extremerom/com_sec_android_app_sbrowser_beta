.class public interface abstract Lorg/chromium/blink/mojom/DevToolsAgent;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/mojo/bindings/Interface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/blink/mojom/DevToolsAgent$ReportChildTargets_Response;,
        Lorg/chromium/blink/mojom/DevToolsAgent$Proxy;
    }
.end annotation


# static fields
.field public static final MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/chromium/mojo/bindings/Interface$Manager<",
            "Lorg/chromium/blink/mojom/DevToolsAgent;",
            "Lorg/chromium/blink/mojom/DevToolsAgent$Proxy;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lorg/chromium/blink/mojom/DevToolsAgent_Internal;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    sput-object v0, Lorg/chromium/blink/mojom/DevToolsAgent;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    return-void
.end method


# virtual methods
.method public abstract attachDevToolsSession(Lorg/chromium/mojo/bindings/AssociatedInterfaceNotSupported;Lorg/chromium/mojo/bindings/AssociatedInterfaceRequestNotSupported;Lorg/chromium/mojo/bindings/InterfaceRequest;Lorg/chromium/blink/mojom/DevToolsSessionState;Ljava/lang/String;ZZLjava/lang/String;Z)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/chromium/mojo/bindings/AssociatedInterfaceNotSupported;",
            "Lorg/chromium/mojo/bindings/AssociatedInterfaceRequestNotSupported;",
            "Lorg/chromium/mojo/bindings/InterfaceRequest<",
            "Lorg/chromium/blink/mojom/DevToolsSession;",
            ">;",
            "Lorg/chromium/blink/mojom/DevToolsSessionState;",
            "Ljava/lang/String;",
            "ZZ",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation
.end method

.method public abstract inspectElement(Lorg/chromium/gfx/mojom/Point;)V
.end method

.method public abstract reportChildTargets(ZZLorg/chromium/blink/mojom/DevToolsAgent$ReportChildTargets_Response;)V
.end method
