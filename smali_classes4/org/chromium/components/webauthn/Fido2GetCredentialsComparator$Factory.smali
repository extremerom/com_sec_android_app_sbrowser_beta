.class public Lorg/chromium/components/webauthn/Fido2GetCredentialsComparator$Factory;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/components/webauthn/Fido2GetCredentialsComparator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Factory"
.end annotation


# static fields
.field private static sInstanceForTesting:Lorg/chromium/components/webauthn/Fido2GetCredentialsComparator;


# direct methods
.method public static get(Z)Lorg/chromium/components/webauthn/Fido2GetCredentialsComparator;
    .locals 2

    sget-object v0, Lorg/chromium/components/webauthn/Fido2GetCredentialsComparator$Factory;->sInstanceForTesting:Lorg/chromium/components/webauthn/Fido2GetCredentialsComparator;

    if-nez v0, :cond_0

    new-instance v0, Lorg/chromium/components/webauthn/Fido2GetCredentialsComparator;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/chromium/components/webauthn/Fido2GetCredentialsComparator;-><init>(ZI)V

    :cond_0
    return-object v0
.end method
