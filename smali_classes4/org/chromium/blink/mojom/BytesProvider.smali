.class public interface abstract Lorg/chromium/blink/mojom/BytesProvider;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/mojo/bindings/Interface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/blink/mojom/BytesProvider$RequestAsFile_Response;,
        Lorg/chromium/blink/mojom/BytesProvider$RequestAsReply_Response;,
        Lorg/chromium/blink/mojom/BytesProvider$Proxy;
    }
.end annotation


# static fields
.field public static final MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/chromium/mojo/bindings/Interface$Manager<",
            "Lorg/chromium/blink/mojom/BytesProvider;",
            "Lorg/chromium/blink/mojom/BytesProvider$Proxy;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lorg/chromium/blink/mojom/BytesProvider_Internal;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    sput-object v0, Lorg/chromium/blink/mojom/BytesProvider;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    return-void
.end method


# virtual methods
.method public abstract requestAsFile(JJLorg/chromium/mojo_base/mojom/File;JLorg/chromium/blink/mojom/BytesProvider$RequestAsFile_Response;)V
.end method

.method public abstract requestAsReply(Lorg/chromium/blink/mojom/BytesProvider$RequestAsReply_Response;)V
.end method

.method public abstract requestAsStream(Lorg/chromium/mojo/system/DataPipe$ProducerHandle;)V
.end method
