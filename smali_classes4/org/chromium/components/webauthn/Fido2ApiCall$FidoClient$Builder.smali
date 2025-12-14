.class public Lorg/chromium/components/webauthn/Fido2ApiCall$FidoClient$Builder;
.super Lb5/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/components/webauthn/Fido2ApiCall$FidoClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lb5/a;"
    }
.end annotation


# instance fields
.field private final mApiId:I

.field private final mDescriptor:Ljava/lang/String;

.field private final mStartServiceAction:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/chromium/components/webauthn/Fido2ApiCall$FidoClient$Builder;->mDescriptor:Ljava/lang/String;

    iput-object p2, p0, Lorg/chromium/components/webauthn/Fido2ApiCall$FidoClient$Builder;->mStartServiceAction:Ljava/lang/String;

    iput p3, p0, Lorg/chromium/components/webauthn/Fido2ApiCall$FidoClient$Builder;->mApiId:I

    return-void
.end method


# virtual methods
.method public bridge synthetic buildClient(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/h;Ljava/lang/Object;Lb5/k;Lb5/l;)Lb5/e;
    .locals 0

    check-cast p4, Lb5/b;

    invoke-virtual/range {p0 .. p6}, Lorg/chromium/components/webauthn/Fido2ApiCall$FidoClient$Builder;->buildClient(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/h;Lb5/b;Lb5/k;Lb5/l;)Lorg/chromium/components/webauthn/Fido2ApiCall$FidoClient;

    move-result-object p0

    return-object p0
.end method

.method public buildClient(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/h;Lb5/b;Lb5/k;Lb5/l;)Lorg/chromium/components/webauthn/Fido2ApiCall$FidoClient;
    .locals 9

    new-instance p4, Lorg/chromium/components/webauthn/Fido2ApiCall$FidoClient;

    iget-object v1, p0, Lorg/chromium/components/webauthn/Fido2ApiCall$FidoClient$Builder;->mDescriptor:Ljava/lang/String;

    iget-object v2, p0, Lorg/chromium/components/webauthn/Fido2ApiCall$FidoClient$Builder;->mStartServiceAction:Ljava/lang/String;

    iget v3, p0, Lorg/chromium/components/webauthn/Fido2ApiCall$FidoClient$Builder;->mApiId:I

    move-object v0, p4

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p5

    move-object v8, p6

    invoke-direct/range {v0 .. v8}, Lorg/chromium/components/webauthn/Fido2ApiCall$FidoClient;-><init>(Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/h;Lb5/k;Lb5/l;)V

    return-object p4
.end method
