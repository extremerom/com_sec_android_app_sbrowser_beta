.class public interface abstract Lorg/chromium/blink/mojom/ContentIndexService;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/mojo/bindings/Interface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/blink/mojom/ContentIndexService$GetDescriptions_Response;,
        Lorg/chromium/blink/mojom/ContentIndexService$Delete_Response;,
        Lorg/chromium/blink/mojom/ContentIndexService$Add_Response;,
        Lorg/chromium/blink/mojom/ContentIndexService$GetIconSizes_Response;,
        Lorg/chromium/blink/mojom/ContentIndexService$Proxy;
    }
.end annotation


# static fields
.field public static final MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/chromium/mojo/bindings/Interface$Manager<",
            "Lorg/chromium/blink/mojom/ContentIndexService;",
            "Lorg/chromium/blink/mojom/ContentIndexService$Proxy;",
            ">;"
        }
    .end annotation
.end field

.field public static final MAX_ICON_RESOLUTION:I = 0x10000


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lorg/chromium/blink/mojom/ContentIndexService_Internal;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    sput-object v0, Lorg/chromium/blink/mojom/ContentIndexService;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    return-void
.end method


# virtual methods
.method public abstract add(JLorg/chromium/blink/mojom/ContentDescription;[Lorg/chromium/skia/mojom/BitmapN32;Lorg/chromium/url/mojom/Url;Lorg/chromium/blink/mojom/ContentIndexService$Add_Response;)V
.end method

.method public abstract delete(JLjava/lang/String;Lorg/chromium/blink/mojom/ContentIndexService$Delete_Response;)V
.end method

.method public abstract getDescriptions(JLorg/chromium/blink/mojom/ContentIndexService$GetDescriptions_Response;)V
.end method

.method public abstract getIconSizes(ILorg/chromium/blink/mojom/ContentIndexService$GetIconSizes_Response;)V
.end method
