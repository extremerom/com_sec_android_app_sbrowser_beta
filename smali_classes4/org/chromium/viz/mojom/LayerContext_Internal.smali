.class Lorg/chromium/viz/mojom/LayerContext_Internal;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/viz/mojom/LayerContext_Internal$LayerContextUpdateDisplayTilingParams;,
        Lorg/chromium/viz/mojom/LayerContext_Internal$LayerContextUpdateDisplayTreeParams;,
        Lorg/chromium/viz/mojom/LayerContext_Internal$LayerContextSetVisibleParams;,
        Lorg/chromium/viz/mojom/LayerContext_Internal$Stub;,
        Lorg/chromium/viz/mojom/LayerContext_Internal$Proxy;
    }
.end annotation


# static fields
.field public static final MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/chromium/mojo/bindings/Interface$Manager<",
            "Lorg/chromium/viz/mojom/LayerContext;",
            "Lorg/chromium/viz/mojom/LayerContext$Proxy;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/chromium/viz/mojom/LayerContext_Internal$1;

    invoke-direct {v0}, Lorg/chromium/viz/mojom/LayerContext_Internal$1;-><init>()V

    sput-object v0, Lorg/chromium/viz/mojom/LayerContext_Internal;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    return-void
.end method
