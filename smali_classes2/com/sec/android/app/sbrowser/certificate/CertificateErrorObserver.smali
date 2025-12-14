.class public Lcom/sec/android/app/sbrowser/certificate/CertificateErrorObserver;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final MDM_CERTPOLICY_CERTIFICATE_FAIL_EXPIRED:I = 0x4
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field static final MDM_CERTPOLICY_CERTIFICATE_FAIL_NOT_YET_VALID:I = 0x3
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field static final MDM_CERTPOLICY_CERTIFICATE_FAIL_REVOKED:I = 0x2
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field static final MDM_CERTPOLICY_CERTIFICATE_FAIL_SUBJECT_MISMATCH:I = 0x5
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field static final MDM_CERTPOLICY_CERTIFICATE_FAIL_UNABLE_TO_CHECK_REVOCATION_STATUS:I = 0xd
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field static final MDM_CERTPOLICY_CERTIFICATE_FAIL_UNSPECIFIED:I = 0x0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field static final MDM_CERTPOLICY_CERTIFICATE_FAIL_UNTRUSTED:I = 0x1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field static sFailureCode:I
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field


# direct methods
.method public static getFailureCode()I
    .locals 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    sget v0, Lcom/sec/android/app/sbrowser/certificate/CertificateErrorObserver;->sFailureCode:I

    return v0
.end method

.method public static initialize()V
    .locals 1

    new-instance v0, Lcom/sec/android/app/sbrowser/certificate/CertificateErrorObserver$1;

    invoke-direct {v0}, Lcom/sec/android/app/sbrowser/certificate/CertificateErrorObserver$1;-><init>()V

    invoke-static {v0}, Lcom/sec/terrace/browser/net/TerraceAndroidNetworkLibrary;->setCertificateErrorObserver(Lcom/sec/terrace/browser/net/TerraceAndroidNetworkLibrary$TerraceCertificateErrorObserver;)V

    return-void
.end method
