.class Lorg/chromium/components/webauthn/Fido2GetCredentialsComparator$State;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/components/webauthn/Fido2GetCredentialsComparator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "State"
.end annotation


# instance fields
.field public final completionTime:J

.field public final credentialCount:I

.field public final successful:Z


# direct methods
.method private constructor <init>(ZJI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lorg/chromium/components/webauthn/Fido2GetCredentialsComparator$State;->successful:Z

    iput-wide p2, p0, Lorg/chromium/components/webauthn/Fido2GetCredentialsComparator$State;->completionTime:J

    iput p4, p0, Lorg/chromium/components/webauthn/Fido2GetCredentialsComparator$State;->credentialCount:I

    return-void
.end method

.method public static failed()Lorg/chromium/components/webauthn/Fido2GetCredentialsComparator$State;
    .locals 5

    new-instance v0, Lorg/chromium/components/webauthn/Fido2GetCredentialsComparator$State;

    const-wide/16 v1, 0x0

    const/4 v3, -0x1

    const/4 v4, 0x0

    invoke-direct {v0, v4, v1, v2, v3}, Lorg/chromium/components/webauthn/Fido2GetCredentialsComparator$State;-><init>(ZJI)V

    return-object v0
.end method

.method public static successful(JI)Lorg/chromium/components/webauthn/Fido2GetCredentialsComparator$State;
    .locals 2

    new-instance v0, Lorg/chromium/components/webauthn/Fido2GetCredentialsComparator$State;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0, p1, p2}, Lorg/chromium/components/webauthn/Fido2GetCredentialsComparator$State;-><init>(ZJI)V

    return-object v0
.end method
