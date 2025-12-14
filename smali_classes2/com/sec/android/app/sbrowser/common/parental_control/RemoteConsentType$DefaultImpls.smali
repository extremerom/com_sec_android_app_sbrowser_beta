.class public final Lcom/sec/android/app/sbrowser/common/parental_control/RemoteConsentType$DefaultImpls;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/common/parental_control/RemoteConsentType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DefaultImpls"
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static getMajor(Lcom/sec/android/app/sbrowser/common/parental_control/RemoteConsentType;)Z
    .locals 1
    .param p0    # Lcom/sec/android/app/sbrowser/common/parental_control/RemoteConsentType;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    instance-of v0, p0, Lcom/sec/android/app/sbrowser/common/parental_control/RemoteConsentType$Full;

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    instance-of v0, p0, Lcom/sec/android/app/sbrowser/common/parental_control/RemoteConsentType$TermsAndConditions;

    if-eqz v0, :cond_1

    check-cast p0, Lcom/sec/android/app/sbrowser/common/parental_control/RemoteConsentType$TermsAndConditions;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/parental_control/RemoteConsentType$TermsAndConditions;->isMajor()Z

    move-result p0

    goto :goto_0

    :cond_1
    instance-of v0, p0, Lcom/sec/android/app/sbrowser/common/parental_control/RemoteConsentType$PrivacyNotice;

    if-eqz v0, :cond_2

    check-cast p0, Lcom/sec/android/app/sbrowser/common/parental_control/RemoteConsentType$PrivacyNotice;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/parental_control/RemoteConsentType$PrivacyNotice;->isMajor()Z

    move-result p0

    :goto_0
    return p0

    :cond_2
    new-instance p0, LI5/b;

    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    throw p0
.end method
