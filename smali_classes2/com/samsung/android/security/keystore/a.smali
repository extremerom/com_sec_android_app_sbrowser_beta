.class public final synthetic Lcom/samsung/android/security/keystore/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/security/keystore/AttestationUtils$checkedRemoteRequest;


# instance fields
.field public final synthetic a:Landroid/system/keystore2/KeyDescriptor;

.field public final synthetic b:[Landroid/hardware/security/keymint/KeyParameter;


# direct methods
.method public synthetic constructor <init>(Landroid/system/keystore2/KeyDescriptor;[Landroid/hardware/security/keymint/KeyParameter;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/security/keystore/a;->a:Landroid/system/keystore2/KeyDescriptor;

    iput-object p2, p0, Lcom/samsung/android/security/keystore/a;->b:[Landroid/hardware/security/keymint/KeyParameter;

    return-void
.end method


# virtual methods
.method public final execute(Landroid/security/samsungattestation/ISamsungAttestation;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/security/keystore/a;->a:Landroid/system/keystore2/KeyDescriptor;

    iget-object p0, p0, Lcom/samsung/android/security/keystore/a;->b:[Landroid/hardware/security/keymint/KeyParameter;

    invoke-static {v0, p0, p1}, Lcom/samsung/android/security/keystore/AttestationUtils;->a(Landroid/system/keystore2/KeyDescriptor;[Landroid/hardware/security/keymint/KeyParameter;Landroid/security/samsungattestation/ISamsungAttestation;)[Landroid/hardware/security/keymint/Certificate;

    move-result-object p0

    return-object p0
.end method
