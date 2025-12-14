.class public interface abstract Lorg/chromium/network/mojom/MdnsListenClient;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/mojo/bindings/Interface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/network/mojom/MdnsListenClient$Proxy;,
        Lorg/chromium/network/mojom/MdnsListenClient$UpdateType;
    }
.end annotation


# static fields
.field public static final MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/chromium/mojo/bindings/Interface$Manager<",
            "Lorg/chromium/network/mojom/MdnsListenClient;",
            "Lorg/chromium/network/mojom/MdnsListenClient$Proxy;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lorg/chromium/network/mojom/MdnsListenClient_Internal;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    sput-object v0, Lorg/chromium/network/mojom/MdnsListenClient;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    return-void
.end method


# virtual methods
.method public abstract onAddressResult(IILorg/chromium/network/mojom/IpEndPoint;)V
.end method

.method public abstract onHostnameResult(IILorg/chromium/network/mojom/HostPortPair;)V
.end method

.method public abstract onTextResult(II[Ljava/lang/String;)V
.end method

.method public abstract onUnhandledResult(II)V
.end method
