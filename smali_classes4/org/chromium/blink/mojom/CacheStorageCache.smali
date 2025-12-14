.class public interface abstract Lorg/chromium/blink/mojom/CacheStorageCache;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/mojo/bindings/Interface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/blink/mojom/CacheStorageCache$WriteSideData_Response;,
        Lorg/chromium/blink/mojom/CacheStorageCache$Batch_Response;,
        Lorg/chromium/blink/mojom/CacheStorageCache$Keys_Response;,
        Lorg/chromium/blink/mojom/CacheStorageCache$GetAllMatchedEntries_Response;,
        Lorg/chromium/blink/mojom/CacheStorageCache$MatchAll_Response;,
        Lorg/chromium/blink/mojom/CacheStorageCache$Match_Response;,
        Lorg/chromium/blink/mojom/CacheStorageCache$Proxy;
    }
.end annotation


# virtual methods
.method public abstract batch([Lorg/chromium/blink/mojom/BatchOperation;JLorg/chromium/blink/mojom/CacheStorageCache$Batch_Response;)V
.end method

.method public abstract getAllMatchedEntries(Lorg/chromium/blink/mojom/FetchApiRequest;Lorg/chromium/blink/mojom/CacheQueryOptions;JLorg/chromium/blink/mojom/CacheStorageCache$GetAllMatchedEntries_Response;)V
.end method

.method public abstract keys(Lorg/chromium/blink/mojom/FetchApiRequest;Lorg/chromium/blink/mojom/CacheQueryOptions;JLorg/chromium/blink/mojom/CacheStorageCache$Keys_Response;)V
.end method

.method public abstract match(Lorg/chromium/blink/mojom/FetchApiRequest;Lorg/chromium/blink/mojom/CacheQueryOptions;ZZJLorg/chromium/blink/mojom/CacheStorageCache$Match_Response;)V
.end method

.method public abstract matchAll(Lorg/chromium/blink/mojom/FetchApiRequest;Lorg/chromium/blink/mojom/CacheQueryOptions;JLorg/chromium/blink/mojom/CacheStorageCache$MatchAll_Response;)V
.end method

.method public abstract writeSideData(Lorg/chromium/url/mojom/Url;Lorg/chromium/mojo_base/mojom/Time;Lorg/chromium/mojo_base/mojom/BigBuffer;JLorg/chromium/blink/mojom/CacheStorageCache$WriteSideData_Response;)V
.end method
