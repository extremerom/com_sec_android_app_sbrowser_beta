.class public interface abstract Lorg/chromium/media/mojom/MediaPlayerRendererClientExtension;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/mojo/bindings/Interface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/media/mojom/MediaPlayerRendererClientExtension$Proxy;
    }
.end annotation


# static fields
.field public static final MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/chromium/mojo/bindings/Interface$Manager<",
            "Lorg/chromium/media/mojom/MediaPlayerRendererClientExtension;",
            "Lorg/chromium/media/mojom/MediaPlayerRendererClientExtension$Proxy;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lorg/chromium/media/mojom/MediaPlayerRendererClientExtension_Internal;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    sput-object v0, Lorg/chromium/media/mojom/MediaPlayerRendererClientExtension;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    return-void
.end method


# virtual methods
.method public abstract onDurationChange(Lorg/chromium/mojo_base/mojom/TimeDelta;)V
.end method

.method public abstract onVideoSizeChange(Lorg/chromium/gfx/mojom/Size;)V
.end method
