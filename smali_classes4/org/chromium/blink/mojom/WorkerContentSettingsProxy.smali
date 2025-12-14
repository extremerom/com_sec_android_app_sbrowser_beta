.class public interface abstract Lorg/chromium/blink/mojom/WorkerContentSettingsProxy;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/mojo/bindings/Interface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/blink/mojom/WorkerContentSettingsProxy$RequestFileSystemAccessSync_Response;,
        Lorg/chromium/blink/mojom/WorkerContentSettingsProxy$AllowWebLocks_Response;,
        Lorg/chromium/blink/mojom/WorkerContentSettingsProxy$AllowCacheStorage_Response;,
        Lorg/chromium/blink/mojom/WorkerContentSettingsProxy$AllowIndexedDb_Response;,
        Lorg/chromium/blink/mojom/WorkerContentSettingsProxy$Proxy;
    }
.end annotation


# static fields
.field public static final MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/chromium/mojo/bindings/Interface$Manager<",
            "Lorg/chromium/blink/mojom/WorkerContentSettingsProxy;",
            "Lorg/chromium/blink/mojom/WorkerContentSettingsProxy$Proxy;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lorg/chromium/blink/mojom/WorkerContentSettingsProxy_Internal;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    sput-object v0, Lorg/chromium/blink/mojom/WorkerContentSettingsProxy;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    return-void
.end method


# virtual methods
.method public abstract allowCacheStorage(Lorg/chromium/blink/mojom/WorkerContentSettingsProxy$AllowCacheStorage_Response;)V
.end method

.method public abstract allowIndexedDb(Lorg/chromium/blink/mojom/WorkerContentSettingsProxy$AllowIndexedDb_Response;)V
.end method

.method public abstract allowWebLocks(Lorg/chromium/blink/mojom/WorkerContentSettingsProxy$AllowWebLocks_Response;)V
.end method

.method public abstract requestFileSystemAccessSync(Lorg/chromium/blink/mojom/WorkerContentSettingsProxy$RequestFileSystemAccessSync_Response;)V
.end method
