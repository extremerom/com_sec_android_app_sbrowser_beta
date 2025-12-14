.class public interface abstract Lorg/chromium/cc/mojom/RenderFrameMetadataObserver;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/mojo/bindings/Interface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/cc/mojom/RenderFrameMetadataObserver$Proxy;
    }
.end annotation


# static fields
.field public static final MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/chromium/mojo/bindings/Interface$Manager<",
            "Lorg/chromium/cc/mojom/RenderFrameMetadataObserver;",
            "Lorg/chromium/cc/mojom/RenderFrameMetadataObserver$Proxy;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lorg/chromium/cc/mojom/RenderFrameMetadataObserver_Internal;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    sput-object v0, Lorg/chromium/cc/mojom/RenderFrameMetadataObserver;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    return-void
.end method


# virtual methods
.method public abstract reportAllFrameSubmissionsForTesting(Z)V
.end method

.method public abstract updateRootScrollOffsetUpdateFrequency(I)V
.end method
