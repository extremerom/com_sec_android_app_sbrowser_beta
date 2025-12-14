.class public interface abstract Lorg/chromium/network/mojom/UrlLoader;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/mojo/bindings/Interface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/network/mojom/UrlLoader$Proxy;
    }
.end annotation


# static fields
.field public static final CLIENT_DISCONNECT_REASON:I = 0x1

.field public static final MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/chromium/mojo/bindings/Interface$Manager<",
            "Lorg/chromium/network/mojom/UrlLoader;",
            "Lorg/chromium/network/mojom/UrlLoader$Proxy;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lorg/chromium/network/mojom/UrlLoader_Internal;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    sput-object v0, Lorg/chromium/network/mojom/UrlLoader;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    return-void
.end method


# virtual methods
.method public abstract followRedirect([Ljava/lang/String;Lorg/chromium/network/mojom/HttpRequestHeaders;Lorg/chromium/network/mojom/HttpRequestHeaders;Lorg/chromium/url/mojom/Url;)V
.end method

.method public abstract setPriority(II)V
.end method
