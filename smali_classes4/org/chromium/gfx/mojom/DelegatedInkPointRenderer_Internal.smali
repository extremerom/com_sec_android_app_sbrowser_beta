.class Lorg/chromium/gfx/mojom/DelegatedInkPointRenderer_Internal;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/gfx/mojom/DelegatedInkPointRenderer_Internal$DelegatedInkPointRendererResetPredictionParams;,
        Lorg/chromium/gfx/mojom/DelegatedInkPointRenderer_Internal$DelegatedInkPointRendererStoreDelegatedInkPointParams;,
        Lorg/chromium/gfx/mojom/DelegatedInkPointRenderer_Internal$Stub;,
        Lorg/chromium/gfx/mojom/DelegatedInkPointRenderer_Internal$Proxy;
    }
.end annotation


# static fields
.field public static final MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/chromium/mojo/bindings/Interface$Manager<",
            "Lorg/chromium/gfx/mojom/DelegatedInkPointRenderer;",
            "Lorg/chromium/gfx/mojom/DelegatedInkPointRenderer$Proxy;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/chromium/gfx/mojom/DelegatedInkPointRenderer_Internal$1;

    invoke-direct {v0}, Lorg/chromium/gfx/mojom/DelegatedInkPointRenderer_Internal$1;-><init>()V

    sput-object v0, Lorg/chromium/gfx/mojom/DelegatedInkPointRenderer_Internal;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    return-void
.end method
