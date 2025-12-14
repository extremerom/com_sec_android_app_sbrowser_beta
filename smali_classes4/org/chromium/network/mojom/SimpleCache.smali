.class public interface abstract Lorg/chromium/network/mojom/SimpleCache;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/mojo/bindings/Interface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/network/mojom/SimpleCache$Detach_Response;,
        Lorg/chromium/network/mojom/SimpleCache$DoomAllEntries_Response;,
        Lorg/chromium/network/mojom/SimpleCache$DoomEntry_Response;,
        Lorg/chromium/network/mojom/SimpleCache$OpenEntry_Response;,
        Lorg/chromium/network/mojom/SimpleCache$CreateEntry_Response;,
        Lorg/chromium/network/mojom/SimpleCache$Proxy;
    }
.end annotation


# static fields
.field public static final MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/chromium/mojo/bindings/Interface$Manager<",
            "Lorg/chromium/network/mojom/SimpleCache;",
            "Lorg/chromium/network/mojom/SimpleCache$Proxy;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lorg/chromium/network/mojom/SimpleCache_Internal;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    sput-object v0, Lorg/chromium/network/mojom/SimpleCache;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    return-void
.end method


# virtual methods
.method public abstract createEntry(Ljava/lang/String;Lorg/chromium/network/mojom/SimpleCache$CreateEntry_Response;)V
.end method

.method public abstract detach(Lorg/chromium/network/mojom/SimpleCache$Detach_Response;)V
.end method

.method public abstract doomAllEntries(Lorg/chromium/network/mojom/SimpleCache$DoomAllEntries_Response;)V
.end method

.method public abstract doomEntry(Ljava/lang/String;Lorg/chromium/network/mojom/SimpleCache$DoomEntry_Response;)V
.end method

.method public abstract enumerateEntries(Lorg/chromium/mojo/bindings/InterfaceRequest;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/chromium/mojo/bindings/InterfaceRequest<",
            "Lorg/chromium/network/mojom/SimpleCacheEntryEnumerator;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract openEntry(Ljava/lang/String;Lorg/chromium/network/mojom/SimpleCache$OpenEntry_Response;)V
.end method
