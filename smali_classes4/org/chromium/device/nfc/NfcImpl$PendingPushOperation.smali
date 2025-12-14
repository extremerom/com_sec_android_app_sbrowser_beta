.class Lorg/chromium/device/nfc/NfcImpl$PendingPushOperation;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/device/nfc/NfcImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PendingPushOperation"
.end annotation


# instance fields
.field private final mPushResponseCallback:Lorg/chromium/device/mojom/Nfc$Push_Response;

.field public final ndefMessage:Lorg/chromium/device/mojom/NdefMessage;

.field public final ndefWriteOptions:Lorg/chromium/device/mojom/NdefWriteOptions;


# direct methods
.method public constructor <init>(Lorg/chromium/device/mojom/NdefMessage;Lorg/chromium/device/mojom/NdefWriteOptions;Lorg/chromium/device/mojom/Nfc$Push_Response;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/chromium/device/nfc/NfcImpl$PendingPushOperation;->ndefMessage:Lorg/chromium/device/mojom/NdefMessage;

    iput-object p2, p0, Lorg/chromium/device/nfc/NfcImpl$PendingPushOperation;->ndefWriteOptions:Lorg/chromium/device/mojom/NdefWriteOptions;

    iput-object p3, p0, Lorg/chromium/device/nfc/NfcImpl$PendingPushOperation;->mPushResponseCallback:Lorg/chromium/device/mojom/Nfc$Push_Response;

    return-void
.end method


# virtual methods
.method public complete(Lorg/chromium/device/mojom/NdefError;)V
    .locals 0

    iget-object p0, p0, Lorg/chromium/device/nfc/NfcImpl$PendingPushOperation;->mPushResponseCallback:Lorg/chromium/device/mojom/Nfc$Push_Response;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lorg/chromium/device/mojom/Nfc$Push_Response;->call(Lorg/chromium/device/mojom/NdefError;)V

    :cond_0
    return-void
.end method
