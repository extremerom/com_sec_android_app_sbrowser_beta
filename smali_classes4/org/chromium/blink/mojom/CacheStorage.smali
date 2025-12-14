.class public interface abstract Lorg/chromium/blink/mojom/CacheStorage;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/mojo/bindings/Interface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/blink/mojom/CacheStorage$Open_Response;,
        Lorg/chromium/blink/mojom/CacheStorage$Match_Response;,
        Lorg/chromium/blink/mojom/CacheStorage$Keys_Response;,
        Lorg/chromium/blink/mojom/CacheStorage$Delete_Response;,
        Lorg/chromium/blink/mojom/CacheStorage$Has_Response;,
        Lorg/chromium/blink/mojom/CacheStorage$Proxy;
    }
.end annotation


# static fields
.field public static final MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/chromium/mojo/bindings/Interface$Manager<",
            "Lorg/chromium/blink/mojom/CacheStorage;",
            "Lorg/chromium/blink/mojom/CacheStorage$Proxy;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lorg/chromium/blink/mojom/CacheStorage_Internal;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    sput-object v0, Lorg/chromium/blink/mojom/CacheStorage;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    return-void
.end method


# virtual methods
.method public abstract delete(Lorg/chromium/mojo_base/mojom/String16;JLorg/chromium/blink/mojom/CacheStorage$Delete_Response;)V
.end method

.method public abstract has(Lorg/chromium/mojo_base/mojom/String16;JLorg/chromium/blink/mojom/CacheStorage$Has_Response;)V
.end method

.method public abstract keys(JLorg/chromium/blink/mojom/CacheStorage$Keys_Response;)V
.end method

.method public abstract match(Lorg/chromium/blink/mojom/FetchApiRequest;Lorg/chromium/blink/mojom/MultiCacheQueryOptions;ZZJLorg/chromium/blink/mojom/CacheStorage$Match_Response;)V
.end method

.method public abstract open(Lorg/chromium/mojo_base/mojom/String16;JLorg/chromium/blink/mojom/CacheStorage$Open_Response;)V
.end method
