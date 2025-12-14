.class public interface abstract Lorg/chromium/device/mojom/HidConnection;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/mojo/bindings/Interface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/device/mojom/HidConnection$SendFeatureReport_Response;,
        Lorg/chromium/device/mojom/HidConnection$GetFeatureReport_Response;,
        Lorg/chromium/device/mojom/HidConnection$Write_Response;,
        Lorg/chromium/device/mojom/HidConnection$Read_Response;,
        Lorg/chromium/device/mojom/HidConnection$Proxy;
    }
.end annotation


# static fields
.field public static final MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/chromium/mojo/bindings/Interface$Manager<",
            "Lorg/chromium/device/mojom/HidConnection;",
            "Lorg/chromium/device/mojom/HidConnection$Proxy;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lorg/chromium/device/mojom/HidConnection_Internal;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    sput-object v0, Lorg/chromium/device/mojom/HidConnection;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    return-void
.end method


# virtual methods
.method public abstract getFeatureReport(BLorg/chromium/device/mojom/HidConnection$GetFeatureReport_Response;)V
.end method

.method public abstract read(Lorg/chromium/device/mojom/HidConnection$Read_Response;)V
.end method

.method public abstract sendFeatureReport(B[BLorg/chromium/device/mojom/HidConnection$SendFeatureReport_Response;)V
.end method

.method public abstract write(B[BLorg/chromium/device/mojom/HidConnection$Write_Response;)V
.end method
