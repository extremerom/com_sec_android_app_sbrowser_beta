.class public interface abstract Lorg/chromium/blink/mojom/IdleManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/mojo/bindings/Interface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/blink/mojom/IdleManager$AddMonitor_Response;,
        Lorg/chromium/blink/mojom/IdleManager$Proxy;
    }
.end annotation


# static fields
.field public static final MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/chromium/mojo/bindings/Interface$Manager<",
            "Lorg/chromium/blink/mojom/IdleManager;",
            "Lorg/chromium/blink/mojom/IdleManager$Proxy;",
            ">;"
        }
    .end annotation
.end field

.field public static final USER_INPUT_THRESHOLD_MS:I = 0xea60


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lorg/chromium/blink/mojom/IdleManager_Internal;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    sput-object v0, Lorg/chromium/blink/mojom/IdleManager;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    return-void
.end method


# virtual methods
.method public abstract addMonitor(Lorg/chromium/blink/mojom/IdleMonitor;Lorg/chromium/blink/mojom/IdleManager$AddMonitor_Response;)V
.end method
