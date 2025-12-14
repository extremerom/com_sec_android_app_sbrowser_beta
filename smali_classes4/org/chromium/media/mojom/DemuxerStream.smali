.class public interface abstract Lorg/chromium/media/mojom/DemuxerStream;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/mojo/bindings/Interface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/media/mojom/DemuxerStream$Read_Response;,
        Lorg/chromium/media/mojom/DemuxerStream$Initialize_Response;,
        Lorg/chromium/media/mojom/DemuxerStream$Proxy;,
        Lorg/chromium/media/mojom/DemuxerStream$Status;,
        Lorg/chromium/media/mojom/DemuxerStream$Type;
    }
.end annotation


# static fields
.field public static final MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/chromium/mojo/bindings/Interface$Manager<",
            "Lorg/chromium/media/mojom/DemuxerStream;",
            "Lorg/chromium/media/mojom/DemuxerStream$Proxy;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lorg/chromium/media/mojom/DemuxerStream_Internal;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    sput-object v0, Lorg/chromium/media/mojom/DemuxerStream;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    return-void
.end method


# virtual methods
.method public abstract enableBitstreamConverter()V
.end method

.method public abstract initialize(Lorg/chromium/media/mojom/DemuxerStream$Initialize_Response;)V
.end method

.method public abstract read(ILorg/chromium/media/mojom/DemuxerStream$Read_Response;)V
.end method
