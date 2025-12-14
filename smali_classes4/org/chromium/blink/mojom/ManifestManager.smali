.class public interface abstract Lorg/chromium/blink/mojom/ManifestManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/mojo/bindings/Interface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/blink/mojom/ManifestManager$ParseManifestFromString_Response;,
        Lorg/chromium/blink/mojom/ManifestManager$RequestManifestDebugInfo_Response;,
        Lorg/chromium/blink/mojom/ManifestManager$RequestManifest_Response;,
        Lorg/chromium/blink/mojom/ManifestManager$Proxy;
    }
.end annotation


# virtual methods
.method public abstract parseManifestFromString(Lorg/chromium/url/mojom/Url;Lorg/chromium/url/mojom/Url;Ljava/lang/String;Lorg/chromium/blink/mojom/ManifestManager$ParseManifestFromString_Response;)V
.end method

.method public abstract requestManifest(Lorg/chromium/blink/mojom/ManifestManager$RequestManifest_Response;)V
.end method

.method public abstract requestManifestDebugInfo(Lorg/chromium/blink/mojom/ManifestManager$RequestManifestDebugInfo_Response;)V
.end method
