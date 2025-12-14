.class public interface abstract Lorg/chromium/blink/mojom/NonPersistentNotificationListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/mojo/bindings/Interface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/blink/mojom/NonPersistentNotificationListener$OnClose_Response;,
        Lorg/chromium/blink/mojom/NonPersistentNotificationListener$OnClick_Response;,
        Lorg/chromium/blink/mojom/NonPersistentNotificationListener$Proxy;
    }
.end annotation


# static fields
.field public static final MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/chromium/mojo/bindings/Interface$Manager<",
            "Lorg/chromium/blink/mojom/NonPersistentNotificationListener;",
            "Lorg/chromium/blink/mojom/NonPersistentNotificationListener$Proxy;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lorg/chromium/blink/mojom/NonPersistentNotificationListener_Internal;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    sput-object v0, Lorg/chromium/blink/mojom/NonPersistentNotificationListener;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    return-void
.end method


# virtual methods
.method public abstract onClick(Lorg/chromium/blink/mojom/NonPersistentNotificationListener$OnClick_Response;)V
.end method

.method public abstract onClose(Lorg/chromium/blink/mojom/NonPersistentNotificationListener$OnClose_Response;)V
.end method

.method public abstract onShow()V
.end method
