.class public interface abstract Lorg/chromium/blink/mojom/CodeCacheHost;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/mojo/bindings/Interface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/blink/mojom/CodeCacheHost$FetchCachedCode_Response;,
        Lorg/chromium/blink/mojom/CodeCacheHost$Proxy;
    }
.end annotation


# static fields
.field public static final MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/chromium/mojo/bindings/Interface$Manager<",
            "Lorg/chromium/blink/mojom/CodeCacheHost;",
            "Lorg/chromium/blink/mojom/CodeCacheHost$Proxy;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lorg/chromium/blink/mojom/CodeCacheHost_Internal;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    sput-object v0, Lorg/chromium/blink/mojom/CodeCacheHost;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    return-void
.end method


# virtual methods
.method public abstract clearCodeCacheEntry(ILorg/chromium/url/mojom/Url;)V
.end method

.method public abstract didGenerateCacheableMetadata(ILorg/chromium/url/mojom/Url;Lorg/chromium/mojo_base/mojom/Time;Lorg/chromium/mojo_base/mojom/BigBuffer;)V
.end method

.method public abstract didGenerateCacheableMetadataInCacheStorage(Lorg/chromium/url/mojom/Url;Lorg/chromium/mojo_base/mojom/Time;Lorg/chromium/mojo_base/mojom/BigBuffer;Ljava/lang/String;)V
.end method

.method public abstract fetchCachedCode(ILorg/chromium/url/mojom/Url;Lorg/chromium/blink/mojom/CodeCacheHost$FetchCachedCode_Response;)V
.end method
