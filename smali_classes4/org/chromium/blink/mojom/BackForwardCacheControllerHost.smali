.class public interface abstract Lorg/chromium/blink/mojom/BackForwardCacheControllerHost;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/mojo/bindings/Interface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/blink/mojom/BackForwardCacheControllerHost$Proxy;
    }
.end annotation


# static fields
.field public static final MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/chromium/mojo/bindings/Interface$Manager<",
            "Lorg/chromium/blink/mojom/BackForwardCacheControllerHost;",
            "Lorg/chromium/blink/mojom/BackForwardCacheControllerHost$Proxy;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lorg/chromium/blink/mojom/BackForwardCacheControllerHost_Internal;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    sput-object v0, Lorg/chromium/blink/mojom/BackForwardCacheControllerHost;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    return-void
.end method


# virtual methods
.method public abstract didChangeBackForwardCacheDisablingFeatures([Lorg/chromium/blink/mojom/BlockingDetails;)V
.end method

.method public abstract evictFromBackForwardCache(ILorg/chromium/blink/mojom/ScriptSourceLocation;)V
.end method
