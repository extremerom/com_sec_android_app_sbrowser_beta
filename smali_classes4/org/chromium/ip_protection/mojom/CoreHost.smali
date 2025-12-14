.class public interface abstract Lorg/chromium/ip_protection/mojom/CoreHost;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/mojo/bindings/Interface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/ip_protection/mojom/CoreHost$TryGetProbabilisticRevealTokens_Response;,
        Lorg/chromium/ip_protection/mojom/CoreHost$GetProxyConfig_Response;,
        Lorg/chromium/ip_protection/mojom/CoreHost$TryGetAuthTokens_Response;,
        Lorg/chromium/ip_protection/mojom/CoreHost$Proxy;
    }
.end annotation


# static fields
.field public static final MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/chromium/mojo/bindings/Interface$Manager<",
            "Lorg/chromium/ip_protection/mojom/CoreHost;",
            "Lorg/chromium/ip_protection/mojom/CoreHost$Proxy;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lorg/chromium/ip_protection/mojom/CoreHost_Internal;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    sput-object v0, Lorg/chromium/ip_protection/mojom/CoreHost;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    return-void
.end method


# virtual methods
.method public abstract getProxyConfig(Lorg/chromium/ip_protection/mojom/CoreHost$GetProxyConfig_Response;)V
.end method

.method public abstract tryGetAuthTokens(IILorg/chromium/ip_protection/mojom/CoreHost$TryGetAuthTokens_Response;)V
.end method

.method public abstract tryGetProbabilisticRevealTokens(Lorg/chromium/ip_protection/mojom/CoreHost$TryGetProbabilisticRevealTokens_Response;)V
.end method
