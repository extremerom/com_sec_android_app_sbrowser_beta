.class public Lorg/chromium/components/webauthn/cred_man/CredManMetricsHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/components/webauthn/cred_man/CredManMetricsHelper$CredManCreateRequestEnum;,
        Lorg/chromium/components/webauthn/cred_man/CredManMetricsHelper$CredManPrepareRequestEnum;,
        Lorg/chromium/components/webauthn/cred_man/CredManMetricsHelper$CredManGetRequestEnum;
    }
.end annotation

.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public recordCredManCreateRequestHistogram(I)V
    .locals 1
    .param p1    # I
        .annotation build Lorg/chromium/components/webauthn/cred_man/CredManMetricsHelper$CredManCreateRequestEnum;
        .end annotation
    .end param

    const-string p0, "WebAuthentication.Android.CredManCreateRequest"

    const/4 v0, 0x5

    invoke-static {p0, p1, v0}, Lorg/chromium/base/metrics/RecordHistogram;->recordEnumeratedHistogram(Ljava/lang/String;II)V

    return-void
.end method

.method public recordCredmanPrepareRequestDuration(JZ)V
    .locals 0

    const-string p0, "WebAuthentication.Android.CredManPrepareRequestDuration"

    invoke-static {p0, p1, p2}, Lorg/chromium/base/metrics/RecordHistogram;->recordTimesHistogram(Ljava/lang/String;J)V

    if-eqz p3, :cond_0

    const-string p0, "WebAuthentication.CredentialFetchDuration.CredMan"

    invoke-static {p0, p1, p2}, Lorg/chromium/base/metrics/RecordHistogram;->recordTimesHistogram(Ljava/lang/String;J)V

    :cond_0
    return-void
.end method

.method public recordCredmanPrepareRequestHistogram(I)V
    .locals 1
    .param p1    # I
        .annotation build Lorg/chromium/components/webauthn/cred_man/CredManMetricsHelper$CredManPrepareRequestEnum;
        .end annotation
    .end param

    const-string p0, "WebAuthentication.Android.CredManPrepareRequest"

    const/4 v0, 0x5

    invoke-static {p0, p1, v0}, Lorg/chromium/base/metrics/RecordHistogram;->recordEnumeratedHistogram(Ljava/lang/String;II)V

    return-void
.end method

.method public reportGetCredentialMetrics(ILorg/chromium/components/webauthn/Fido2CredentialRequest$ConditionalUiState;)V
    .locals 1
    .param p1    # I
        .annotation build Lorg/chromium/components/webauthn/cred_man/CredManMetricsHelper$CredManGetRequestEnum;
        .end annotation
    .end param

    sget-object p0, Lorg/chromium/components/webauthn/Fido2CredentialRequest$ConditionalUiState;->NONE:Lorg/chromium/components/webauthn/Fido2CredentialRequest$ConditionalUiState;

    const/4 v0, 0x7

    if-ne p2, p0, :cond_0

    const-string p0, "WebAuthentication.Android.CredManModalRequests"

    invoke-static {p0, p1, v0}, Lorg/chromium/base/metrics/RecordHistogram;->recordEnumeratedHistogram(Ljava/lang/String;II)V

    return-void

    :cond_0
    const-string p0, "WebAuthentication.Android.CredManConditionalRequest"

    invoke-static {p0, p1, v0}, Lorg/chromium/base/metrics/RecordHistogram;->recordEnumeratedHistogram(Ljava/lang/String;II)V

    return-void
.end method
