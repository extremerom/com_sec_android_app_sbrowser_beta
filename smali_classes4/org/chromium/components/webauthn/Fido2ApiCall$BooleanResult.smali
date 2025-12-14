.class public final Lorg/chromium/components/webauthn/Fido2ApiCall$BooleanResult;
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
    name = "BooleanResult"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/Binder;",
        "Lorg/chromium/components/webauthn/Fido2ApiCall$Callback<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private mCompletionSource:LR5/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LR5/i;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    return-void
.end method


# virtual methods
.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 2

    const-string p4, "com.google.android.gms.fido.fido2.api.IBooleanCallback"

    invoke-virtual {p2, p4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    const/4 p4, 0x0

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    return p4

    :cond_0
    sget-object p1, Lcom/google/android/gms/common/api/Status;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/api/Status;

    iget-object p0, p0, Lorg/chromium/components/webauthn/Fido2ApiCall$BooleanResult;->mCompletionSource:LR5/i;

    new-instance p2, Lb5/h;

    invoke-direct {p2, p1}, Lb5/h;-><init>(Lcom/google/android/gms/common/api/Status;)V

    invoke-virtual {p0, p2}, LR5/i;->a(Ljava/lang/Exception;)V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lorg/chromium/components/webauthn/Fido2ApiCall$BooleanResult;->mCompletionSource:LR5/i;

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_2

    move p4, v0

    :cond_2
    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0, p1}, LR5/i;->b(Ljava/lang/Object;)V

    :goto_0
    invoke-static {p3}, Lorg/chromium/build/NullUtil;->assumeNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0
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

    iput-object p1, p0, Lorg/chromium/components/webauthn/Fido2ApiCall$BooleanResult;->mCompletionSource:LR5/i;

    return-void
.end method
