.class Lorg/chromium/device/nfc/NfcImpl$PendingMakeReadOnlyOperation;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/device/nfc/NfcImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PendingMakeReadOnlyOperation"
.end annotation


# instance fields
.field private final mMakeReadOnlyResponseCallback:Lorg/chromium/device/mojom/Nfc$MakeReadOnly_Response;


# direct methods
.method public constructor <init>(Lorg/chromium/device/mojom/Nfc$MakeReadOnly_Response;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/chromium/device/nfc/NfcImpl$PendingMakeReadOnlyOperation;->mMakeReadOnlyResponseCallback:Lorg/chromium/device/mojom/Nfc$MakeReadOnly_Response;

    return-void
.end method


# virtual methods
.method public complete(Lorg/chromium/device/mojom/NdefError;)V
    .locals 0

    iget-object p0, p0, Lorg/chromium/device/nfc/NfcImpl$PendingMakeReadOnlyOperation;->mMakeReadOnlyResponseCallback:Lorg/chromium/device/mojom/Nfc$MakeReadOnly_Response;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lorg/chromium/device/mojom/Nfc$MakeReadOnly_Response;->call(Lorg/chromium/device/mojom/NdefError;)V

    :cond_0
    return-void
.end method
