.class Lorg/chromium/viz/mojom/TextureReleaser_Internal;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/viz/mojom/TextureReleaser_Internal$TextureReleaserReleaseParams;,
        Lorg/chromium/viz/mojom/TextureReleaser_Internal$Stub;,
        Lorg/chromium/viz/mojom/TextureReleaser_Internal$Proxy;
    }
.end annotation


# static fields
.field public static final MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/chromium/mojo/bindings/Interface$Manager<",
            "Lorg/chromium/viz/mojom/TextureReleaser;",
            "Lorg/chromium/viz/mojom/TextureReleaser$Proxy;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/chromium/viz/mojom/TextureReleaser_Internal$1;

    invoke-direct {v0}, Lorg/chromium/viz/mojom/TextureReleaser_Internal$1;-><init>()V

    sput-object v0, Lorg/chromium/viz/mojom/TextureReleaser_Internal;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    return-void
.end method
