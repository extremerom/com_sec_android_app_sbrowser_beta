.class final Lorg/chromium/components/webauthn/Fido2ApiCall$FidoClient;
.super Lcom/google/android/gms/common/internal/i;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/components/webauthn/Fido2ApiCall;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "FidoClient"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/components/webauthn/Fido2ApiCall$FidoClient$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/common/internal/i;"
    }
.end annotation


# instance fields
.field private final mDescriptor:Ljava/lang/String;

.field private final mNeedDynamicLookup:Z

.field private final mStartServiceAction:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/h;Lb5/k;Lb5/l;)V
    .locals 7

    move-object v0, p0

    move-object v1, p4

    move-object v2, p5

    move v3, p3

    move-object v4, p6

    move-object v5, p7

    move-object v6, p8

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/common/internal/i;-><init>(Landroid/content/Context;Landroid/os/Looper;ILcom/google/android/gms/common/internal/h;Lc5/g;Lc5/p;)V

    const/16 p4, 0x194

    if-ne p3, p4, :cond_0

    const/4 p3, 0x1

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    :goto_0
    iput-boolean p3, p0, Lorg/chromium/components/webauthn/Fido2ApiCall$FidoClient;->mNeedDynamicLookup:Z

    iput-object p1, p0, Lorg/chromium/components/webauthn/Fido2ApiCall$FidoClient;->mDescriptor:Ljava/lang/String;

    iput-object p2, p0, Lorg/chromium/components/webauthn/Fido2ApiCall$FidoClient;->mStartServiceAction:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public bridge synthetic createServiceInterface(Landroid/os/IBinder;)Landroid/os/IInterface;
    .locals 0

    invoke-virtual {p0, p1}, Lorg/chromium/components/webauthn/Fido2ApiCall$FidoClient;->createServiceInterface(Landroid/os/IBinder;)Lorg/chromium/components/webauthn/Fido2ApiCall$Interface;

    move-result-object p0

    return-object p0
.end method

.method public createServiceInterface(Landroid/os/IBinder;)Lorg/chromium/components/webauthn/Fido2ApiCall$Interface;
    .locals 0

    new-instance p0, Lorg/chromium/components/webauthn/Fido2ApiCall$Interface;

    invoke-direct {p0, p1}, Lorg/chromium/components/webauthn/Fido2ApiCall$Interface;-><init>(Landroid/os/IBinder;)V

    return-object p0
.end method

.method public getGetServiceRequestExtraArgs()Landroid/os/Bundle;
    .locals 2

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "FIDO2_ACTION_START_SERVICE"

    invoke-virtual {p0}, Lorg/chromium/components/webauthn/Fido2ApiCall$FidoClient;->getStartServiceAction()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public getMinApkVersion()I
    .locals 0

    iget-boolean p0, p0, Lorg/chromium/components/webauthn/Fido2ApiCall$FidoClient;->mNeedDynamicLookup:Z

    if-eqz p0, :cond_0

    const p0, 0x1110e58

    return p0

    :cond_0
    const p0, 0x101b890

    return p0
.end method

.method public getServiceDescriptor()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/chromium/components/webauthn/Fido2ApiCall$FidoClient;->mDescriptor:Ljava/lang/String;

    return-object p0
.end method

.method public getStartServiceAction()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/chromium/components/webauthn/Fido2ApiCall$FidoClient;->mStartServiceAction:Ljava/lang/String;

    return-object p0
.end method

.method public getUseDynamicLookup()Z
    .locals 0

    iget-boolean p0, p0, Lorg/chromium/components/webauthn/Fido2ApiCall$FidoClient;->mNeedDynamicLookup:Z

    return p0
.end method
