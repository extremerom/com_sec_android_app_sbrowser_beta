.class public final Lorg/chromium/components/webauthn/Fido2ApiCall$PendingIntentResult;
.super Landroid/os/Binder;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/components/webauthn/Fido2ApiCall$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/components/webauthn/Fido2ApiCall;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PendingIntentResult"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/Binder;",
        "Lorg/chromium/components/webauthn/Fido2ApiCall$Callback<",
        "Landroid/app/PendingIntent;",
        ">;"
    }
.end annotation


# instance fields
.field private final mCallbackDescriptor:Ljava/lang/String;

.field private mCompletionSource:LR5/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LR5/i;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    iput-object p1, p0, Lorg/chromium/components/webauthn/Fido2ApiCall$PendingIntentResult;->mCallbackDescriptor:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 2

    const/4 p4, 0x1

    if-eq p1, p4, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-object p1, p0, Lorg/chromium/components/webauthn/Fido2ApiCall$PendingIntentResult;->mCallbackDescriptor:Ljava/lang/String;

    invoke-static {p1}, Lorg/chromium/build/NullUtil;->assertNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lorg/chromium/components/webauthn/Fido2ApiCall$PendingIntentResult;->mCallbackDescriptor:Ljava/lang/String;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    sget-object p1, Lcom/google/android/gms/common/api/Status;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/api/Status;

    goto :goto_0

    :cond_1
    move-object p1, v0

    :goto_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_2

    sget-object v0, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p2

    move-object v0, p2

    check-cast v0, Landroid/app/PendingIntent;

    :cond_2
    invoke-static {p1}, Lorg/chromium/build/NullUtil;->assumeNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/Status;->b()Z

    move-result p2

    if-eqz p2, :cond_3

    iget-object p0, p0, Lorg/chromium/components/webauthn/Fido2ApiCall$PendingIntentResult;->mCompletionSource:LR5/i;

    invoke-virtual {p0, v0}, LR5/i;->b(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    iget-object p0, p0, Lorg/chromium/components/webauthn/Fido2ApiCall$PendingIntentResult;->mCompletionSource:LR5/i;

    new-instance p2, Lb5/h;

    invoke-direct {p2, p1}, Lb5/h;-><init>(Lcom/google/android/gms/common/api/Status;)V

    invoke-virtual {p0, p2}, LR5/i;->a(Ljava/lang/Exception;)V

    :goto_1
    invoke-static {p3}, Lorg/chromium/build/NullUtil;->assumeNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return p4
.end method

.method public setCompletionSource(LR5/i;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LR5/i;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lorg/chromium/components/webauthn/Fido2ApiCall$PendingIntentResult;->mCompletionSource:LR5/i;

    return-void
.end method
