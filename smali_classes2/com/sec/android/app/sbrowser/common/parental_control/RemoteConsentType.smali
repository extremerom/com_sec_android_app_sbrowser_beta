.class public interface abstract Lcom/sec/android/app/sbrowser/common/parental_control/RemoteConsentType;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/common/parental_control/RemoteConsentType$DefaultImpls;,
        Lcom/sec/android/app/sbrowser/common/parental_control/RemoteConsentType$Full;,
        Lcom/sec/android/app/sbrowser/common/parental_control/RemoteConsentType$PrivacyNotice;,
        Lcom/sec/android/app/sbrowser/common/parental_control/RemoteConsentType$TermsAndConditions;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u0008v\u0018\u00002\u00020\u0001:\u0003\u0011\u0012\u0013J\u000f\u0010\u0003\u001a\u00020\u0002H&\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u001d\u0010\u0007\u001a\u0010\u0012\u0004\u0012\u00020\u0006\u0012\u0006\u0012\u0004\u0018\u00010\u00060\u0005H&\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u000f\u0010\n\u001a\u00020\tH\u0016\u00a2\u0006\u0004\u0008\n\u0010\u000bR\u0014\u0010\u000c\u001a\u00020\t8&X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u000c\u0010\u000bR\u0014\u0010\u000f\u001a\u00020\u00068&X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\r\u0010\u000eR\u0014\u0010\u0010\u001a\u00020\t8&X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0010\u0010\u000b\u0082\u0001\u0003\u0014\u0015\u0016\u00a8\u0006\u0017"
    }
    d2 = {
        "Lcom/sec/android/app/sbrowser/common/parental_control/RemoteConsentType;",
        "",
        "Landroid/text/Spannable;",
        "getLinkedUrl",
        "()Landroid/text/Spannable;",
        "Ldb/j;",
        "",
        "getBundleUrls",
        "()Ldb/j;",
        "",
        "getMajor",
        "()Z",
        "isPp",
        "getContentId",
        "()Ljava/lang/String;",
        "contentId",
        "isFirstLaunch",
        "Full",
        "PrivacyNotice",
        "TermsAndConditions",
        "Lcom/sec/android/app/sbrowser/common/parental_control/RemoteConsentType$Full;",
        "Lcom/sec/android/app/sbrowser/common/parental_control/RemoteConsentType$PrivacyNotice;",
        "Lcom/sec/android/app/sbrowser/common/parental_control/RemoteConsentType$TermsAndConditions;",
        "SBrowser_highendBetaGlobal64Release"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# virtual methods
.method public abstract getBundleUrls()Ldb/j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ldb/j;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract getContentId()Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract getLinkedUrl()Landroid/text/Spannable;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract getMajor()Z
.end method

.method public abstract isFirstLaunch()Z
.end method

.method public abstract isPp()Z
.end method
