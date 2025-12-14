.class Lorg/chromium/device/mojom/NfcProvider_Internal;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/device/mojom/NfcProvider_Internal$NfcProviderResumeNfcOperationsParams;,
        Lorg/chromium/device/mojom/NfcProvider_Internal$NfcProviderSuspendNfcOperationsParams;,
        Lorg/chromium/device/mojom/NfcProvider_Internal$NfcProviderGetNfcForHostParams;,
        Lorg/chromium/device/mojom/NfcProvider_Internal$Stub;,
        Lorg/chromium/device/mojom/NfcProvider_Internal$Proxy;
    }
.end annotation


# static fields
.field public static final MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/chromium/mojo/bindings/Interface$Manager<",
            "Lorg/chromium/device/mojom/NfcProvider;",
            "Lorg/chromium/device/mojom/NfcProvider$Proxy;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/chromium/device/mojom/NfcProvider_Internal$1;

    invoke-direct {v0}, Lorg/chromium/device/mojom/NfcProvider_Internal$1;-><init>()V

    sput-object v0, Lorg/chromium/device/mojom/NfcProvider_Internal;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    return-void
.end method
