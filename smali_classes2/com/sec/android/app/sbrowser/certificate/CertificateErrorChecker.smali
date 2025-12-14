.class public Lcom/sec/android/app/sbrowser/certificate/CertificateErrorChecker;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/certificate/CertificateErrorChecker$KnoxCertificateErrorCheckerDelegateFactory;,
        Lcom/sec/android/app/sbrowser/certificate/CertificateErrorChecker$KnoxCertificateErrorCheckerDelegate;
    }
.end annotation


# static fields
.field static final MDM_CERTPOLICY_MSG_ADDITIONAL_CHECKER:Ljava/lang/String; = "Additional certificate path checker failed."
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field static final MDM_CERTPOLICY_MSG_CRL_DIST_COULD_NOT_BE_READ:Ljava/lang/String; = "CRL distribution point extension could not be read"
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field static final MDM_CERTPOLICY_MSG_CRL_NOT_VALID:Ljava/lang/String; = "No valid CRL found."
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field static final MDM_CERTPOLICY_MSG_DIST_POINT_COULD_NOT_BE_READ:Ljava/lang/String; = "Distribution points could not be read."
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field static final MDM_CERTPOLICY_MSG_M_AND_EARLIER_IS_REVOKED_CERT:Ljava/lang/String; = "is revoked"
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field static final MDM_CERTPOLICY_MSG_M_AND_EARLIER_REVOKED_CERT:Ljava/lang/String; = "Certificate revocation after"
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field static final MDM_CERTPOLICY_MSG_NO_ADDITIONAL_CRL_DECODED:Ljava/lang/String; = "No additional CRL locations could be decoded from CRL distribution point extension."
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field static final MDM_CERTPOLICY_MSG_N_AND_LATER_REVOKED_CERT:Ljava/lang/String; = "Certificate has been revoked, reason: "
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field static final MDM_CERTPOLICY_MSG_N_AND_LATER_UNABLE_CHECK_REVOCATION_STATUS:Ljava/lang/String; = "Unable to determine revocation status due to network error"
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field static final MDM_CERTPOLICY_MSG_N_AND_LATER_VALIDATION_FAILED:Ljava/lang/String; = "Chain validation failed"
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field static final MDM_CERTPOLICY_MSG_UNABLE_CHECK_OCSP_STATUS:Ljava/lang/String; = "OCSP check failed!"
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field static final MDM_CERTPOLICY_MSG_UNABLE_CHECK_REVOCATION_STATUS:Ljava/lang/String; = "Certificate status could not be determined."
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field static final MDM_CERTPOLICY_MSG_UNABLE_GET_CRL:Ljava/lang/String; = "Unable to get CRL for certificate"
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field private static final sRevokedMsgList:[Ljava/lang/String;

.field private static final sUnableToCheckRevocationMsgList:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const-string v0, "Certificate revocation after"

    const-string v1, "is revoked"

    const-string v2, "Certificate has been revoked, reason: "

    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/sbrowser/certificate/CertificateErrorChecker;->sRevokedMsgList:[Ljava/lang/String;

    const-string v7, "No valid CRL found."

    const-string v8, "Unable to get CRL for certificate"

    const-string v1, "Unable to determine revocation status due to network error"

    const-string v2, "Certificate status could not be determined."

    const-string v3, "OCSP check failed!"

    const-string v4, "CRL distribution point extension could not be read"

    const-string v5, "No additional CRL locations could be decoded from CRL distribution point extension."

    const-string v6, "Distribution points could not be read."

    filled-new-array/range {v1 .. v8}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/sbrowser/certificate/CertificateErrorChecker;->sUnableToCheckRevocationMsgList:[Ljava/lang/String;

    return-void
.end method

.method public static bridge synthetic a()[Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/sec/android/app/sbrowser/certificate/CertificateErrorChecker;->sRevokedMsgList:[Ljava/lang/String;

    return-object v0
.end method

.method public static bridge synthetic b()[Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/sec/android/app/sbrowser/certificate/CertificateErrorChecker;->sUnableToCheckRevocationMsgList:[Ljava/lang/String;

    return-object v0
.end method

.method public static bridge synthetic c(Ljava/security/cert/CertificateException;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/certificate/CertificateErrorChecker;->getInnerMessage(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getInnerMessage(Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string v1, "Additional certificate path checker failed."

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "Chain validation failed"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/certificate/CertificateErrorChecker;->getInnerMessage(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    return-object v0
.end method

.method public static initialize()V
    .locals 1

    new-instance v0, Lcom/sec/android/app/sbrowser/certificate/CertificateErrorChecker$KnoxCertificateErrorCheckerDelegateFactory;

    invoke-direct {v0}, Lcom/sec/android/app/sbrowser/certificate/CertificateErrorChecker$KnoxCertificateErrorCheckerDelegateFactory;-><init>()V

    invoke-static {v0}, Lcom/sec/terrace/browser/net/TerraceX509Util;->setDelegateFactory(Lcom/sec/terrace/browser/net/TerraceX509Util$TerraceCertificateErrorChecker$DelegateFactory;)V

    return-void
.end method
