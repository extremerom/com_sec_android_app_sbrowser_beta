.class public final synthetic Lorg/chromium/components/webauthn/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lc5/r;


# instance fields
.field public final synthetic a:Lorg/chromium/components/webauthn/Fido2ApiCall$Callback;

.field public final synthetic b:I

.field public final synthetic c:Landroid/os/Parcel;


# direct methods
.method public synthetic constructor <init>(Lorg/chromium/components/webauthn/Fido2ApiCall$Callback;ILandroid/os/Parcel;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/chromium/components/webauthn/c;->a:Lorg/chromium/components/webauthn/Fido2ApiCall$Callback;

    iput p2, p0, Lorg/chromium/components/webauthn/c;->b:I

    iput-object p3, p0, Lorg/chromium/components/webauthn/c;->c:Landroid/os/Parcel;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    check-cast p1, Lorg/chromium/components/webauthn/Fido2ApiCall$FidoClient;

    check-cast p2, LR5/i;

    iget v0, p0, Lorg/chromium/components/webauthn/c;->b:I

    iget-object v1, p0, Lorg/chromium/components/webauthn/c;->c:Landroid/os/Parcel;

    iget-object p0, p0, Lorg/chromium/components/webauthn/c;->a:Lorg/chromium/components/webauthn/Fido2ApiCall$Callback;

    invoke-static {p0, v0, v1, p1, p2}, Lorg/chromium/components/webauthn/Fido2ApiCall;->c(Lorg/chromium/components/webauthn/Fido2ApiCall$Callback;ILandroid/os/Parcel;Lorg/chromium/components/webauthn/Fido2ApiCall$FidoClient;LR5/i;)V

    return-void
.end method
