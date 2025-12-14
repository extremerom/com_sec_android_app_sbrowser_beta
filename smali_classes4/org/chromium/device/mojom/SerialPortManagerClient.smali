.class public interface abstract Lorg/chromium/device/mojom/SerialPortManagerClient;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/mojo/bindings/Interface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/device/mojom/SerialPortManagerClient$Proxy;
    }
.end annotation


# static fields
.field public static final MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/chromium/mojo/bindings/Interface$Manager<",
            "Lorg/chromium/device/mojom/SerialPortManagerClient;",
            "Lorg/chromium/device/mojom/SerialPortManagerClient$Proxy;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lorg/chromium/device/mojom/SerialPortManagerClient_Internal;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    sput-object v0, Lorg/chromium/device/mojom/SerialPortManagerClient;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    return-void
.end method


# virtual methods
.method public abstract onPortAdded(Lorg/chromium/device/mojom/SerialPortInfo;)V
.end method

.method public abstract onPortConnectedStateChanged(Lorg/chromium/device/mojom/SerialPortInfo;)V
.end method

.method public abstract onPortRemoved(Lorg/chromium/device/mojom/SerialPortInfo;)V
.end method
