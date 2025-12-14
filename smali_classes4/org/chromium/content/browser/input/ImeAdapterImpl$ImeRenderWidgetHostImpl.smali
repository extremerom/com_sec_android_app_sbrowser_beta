.class final Lorg/chromium/content/browser/input/ImeAdapterImpl$ImeRenderWidgetHostImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/blink/mojom/ImeRenderWidgetHost;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/content/browser/input/ImeAdapterImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ImeRenderWidgetHostImpl"
.end annotation


# instance fields
.field private final mHandle:Lorg/chromium/mojo/system/MessagePipeHandle;

.field private final mImeAdapter:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lorg/chromium/content/browser/input/ImeAdapterImpl;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/chromium/content/browser/input/ImeAdapterImpl;Lorg/chromium/mojo/system/MessagePipeHandle;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lorg/chromium/content/browser/input/ImeAdapterImpl$ImeRenderWidgetHostImpl;->mImeAdapter:Ljava/lang/ref/WeakReference;

    iput-object p2, p0, Lorg/chromium/content/browser/input/ImeAdapterImpl$ImeRenderWidgetHostImpl;->mHandle:Lorg/chromium/mojo/system/MessagePipeHandle;

    sget-object p1, Lorg/chromium/blink/mojom/ImeRenderWidgetHost;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    invoke-virtual {p1, p0, p2}, Lorg/chromium/mojo/bindings/Interface$Manager;->bind(Lorg/chromium/mojo/bindings/Interface;Lorg/chromium/mojo/system/MessagePipeHandle;)Lorg/chromium/mojo/bindings/Router;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 0

    return-void
.end method

.method public onConnectionError(Lorg/chromium/mojo/system/MojoException;)V
    .locals 0

    return-void
.end method

.method public updateCursorAnchorInfo(Lorg/chromium/blink/mojom/InputCursorAnchorInfo;)V
    .locals 0

    iget-object p0, p0, Lorg/chromium/content/browser/input/ImeAdapterImpl$ImeRenderWidgetHostImpl;->mImeAdapter:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/chromium/content/browser/input/ImeAdapterImpl;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lorg/chromium/content/browser/input/ImeAdapterImpl;->updateCursorAnchorInfo(Lorg/chromium/blink/mojom/InputCursorAnchorInfo;)V

    :cond_0
    return-void
.end method
