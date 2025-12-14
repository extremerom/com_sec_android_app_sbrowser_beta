.class public interface abstract Lorg/chromium/device/mojom/Nfc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/mojo/bindings/Interface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/device/mojom/Nfc$Watch_Response;,
        Lorg/chromium/device/mojom/Nfc$MakeReadOnly_Response;,
        Lorg/chromium/device/mojom/Nfc$Push_Response;,
        Lorg/chromium/device/mojom/Nfc$Proxy;
    }
.end annotation


# static fields
.field public static final MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/chromium/mojo/bindings/Interface$Manager<",
            "Lorg/chromium/device/mojom/Nfc;",
            "Lorg/chromium/device/mojom/Nfc$Proxy;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lorg/chromium/device/mojom/Nfc_Internal;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    sput-object v0, Lorg/chromium/device/mojom/Nfc;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    return-void
.end method


# virtual methods
.method public abstract cancelMakeReadOnly()V
.end method

.method public abstract cancelPush()V
.end method

.method public abstract cancelWatch(I)V
.end method

.method public abstract makeReadOnly(Lorg/chromium/device/mojom/Nfc$MakeReadOnly_Response;)V
.end method

.method public abstract push(Lorg/chromium/device/mojom/NdefMessage;Lorg/chromium/device/mojom/NdefWriteOptions;Lorg/chromium/device/mojom/Nfc$Push_Response;)V
.end method

.method public abstract setClient(Lorg/chromium/device/mojom/NfcClient;)V
.end method

.method public abstract watch(ILorg/chromium/device/mojom/Nfc$Watch_Response;)V
.end method
