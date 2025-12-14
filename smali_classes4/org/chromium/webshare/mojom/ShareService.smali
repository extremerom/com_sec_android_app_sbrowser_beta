.class public interface abstract Lorg/chromium/webshare/mojom/ShareService;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/mojo/bindings/Interface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/webshare/mojom/ShareService$Share_Response;,
        Lorg/chromium/webshare/mojom/ShareService$Proxy;
    }
.end annotation


# static fields
.field public static final MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/chromium/mojo/bindings/Interface$Manager<",
            "Lorg/chromium/webshare/mojom/ShareService;",
            "Lorg/chromium/webshare/mojom/ShareService$Proxy;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lorg/chromium/webshare/mojom/ShareService_Internal;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    sput-object v0, Lorg/chromium/webshare/mojom/ShareService;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    return-void
.end method


# virtual methods
.method public abstract share(Ljava/lang/String;Ljava/lang/String;Lorg/chromium/url/mojom/Url;[Lorg/chromium/webshare/mojom/SharedFile;Lorg/chromium/webshare/mojom/ShareService$Share_Response;)V
.end method
