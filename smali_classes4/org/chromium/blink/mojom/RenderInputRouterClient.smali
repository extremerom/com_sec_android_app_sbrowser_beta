.class public interface abstract Lorg/chromium/blink/mojom/RenderInputRouterClient;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/mojo/bindings/Interface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/blink/mojom/RenderInputRouterClient$Proxy;
    }
.end annotation


# static fields
.field public static final MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/chromium/mojo/bindings/Interface$Manager<",
            "Lorg/chromium/blink/mojom/RenderInputRouterClient;",
            "Lorg/chromium/blink/mojom/RenderInputRouterClient$Proxy;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lorg/chromium/blink/mojom/RenderInputRouterClient_Internal;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    sput-object v0, Lorg/chromium/blink/mojom/RenderInputRouterClient;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    return-void
.end method


# virtual methods
.method public abstract bindInputTargetClient(Lorg/chromium/mojo/bindings/InterfaceRequest;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/chromium/mojo/bindings/InterfaceRequest<",
            "Lorg/chromium/viz/mojom/InputTargetClient;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract getWidgetInputHandler(Lorg/chromium/mojo/bindings/InterfaceRequest;Lorg/chromium/blink/mojom/WidgetInputHandlerHost;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/chromium/mojo/bindings/InterfaceRequest<",
            "Lorg/chromium/blink/mojom/WidgetInputHandler;",
            ">;",
            "Lorg/chromium/blink/mojom/WidgetInputHandlerHost;",
            ")V"
        }
    .end annotation
.end method

.method public abstract getWidgetInputHandlerForInputOnViz(Lorg/chromium/mojo/bindings/InterfaceRequest;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/chromium/mojo/bindings/InterfaceRequest<",
            "Lorg/chromium/blink/mojom/WidgetInputHandler;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract showContextMenu(ILorg/chromium/gfx/mojom/Point;)V
.end method
