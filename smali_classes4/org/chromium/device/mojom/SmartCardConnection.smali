.class public interface abstract Lorg/chromium/device/mojom/SmartCardConnection;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/mojo/bindings/Interface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/device/mojom/SmartCardConnection$BeginTransaction_Response;,
        Lorg/chromium/device/mojom/SmartCardConnection$Status_Response;,
        Lorg/chromium/device/mojom/SmartCardConnection$SetAttrib_Response;,
        Lorg/chromium/device/mojom/SmartCardConnection$GetAttrib_Response;,
        Lorg/chromium/device/mojom/SmartCardConnection$Control_Response;,
        Lorg/chromium/device/mojom/SmartCardConnection$Transmit_Response;,
        Lorg/chromium/device/mojom/SmartCardConnection$Disconnect_Response;,
        Lorg/chromium/device/mojom/SmartCardConnection$Proxy;
    }
.end annotation


# static fields
.field public static final MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/chromium/mojo/bindings/Interface$Manager<",
            "Lorg/chromium/device/mojom/SmartCardConnection;",
            "Lorg/chromium/device/mojom/SmartCardConnection$Proxy;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lorg/chromium/device/mojom/SmartCardConnection_Internal;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    sput-object v0, Lorg/chromium/device/mojom/SmartCardConnection;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    return-void
.end method


# virtual methods
.method public abstract beginTransaction(Lorg/chromium/device/mojom/SmartCardConnection$BeginTransaction_Response;)V
.end method

.method public abstract control(I[BLorg/chromium/device/mojom/SmartCardConnection$Control_Response;)V
.end method

.method public abstract disconnect(ILorg/chromium/device/mojom/SmartCardConnection$Disconnect_Response;)V
.end method

.method public abstract getAttrib(ILorg/chromium/device/mojom/SmartCardConnection$GetAttrib_Response;)V
.end method

.method public abstract setAttrib(I[BLorg/chromium/device/mojom/SmartCardConnection$SetAttrib_Response;)V
.end method

.method public abstract status(Lorg/chromium/device/mojom/SmartCardConnection$Status_Response;)V
.end method

.method public abstract transmit(I[BLorg/chromium/device/mojom/SmartCardConnection$Transmit_Response;)V
.end method
