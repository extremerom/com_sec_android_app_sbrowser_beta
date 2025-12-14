.class public interface abstract Lcom/sec/android/app/sbrowser/common/parental_control/ConsentTypeStatus;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/common/parental_control/ConsentTypeStatus$Loading;,
        Lcom/sec/android/app/sbrowser/common/parental_control/ConsentTypeStatus$SetUp;,
        Lcom/sec/android/app/sbrowser/common/parental_control/ConsentTypeStatus$WaitingConsent;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u0008v\u0018\u00002\u00020\u0001:\u0003\u0006\u0007\u0008J\u0008\u0010\u0002\u001a\u00020\u0003H&J\n\u0010\u0004\u001a\u0004\u0018\u00010\u0005H&\u0082\u0001\u0003\t\n\u000b\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcom/sec/android/app/sbrowser/common/parental_control/ConsentTypeStatus;",
        "",
        "getLinkedUrl",
        "Landroid/text/Spannable;",
        "getRemoteConsentType",
        "Lcom/sec/android/app/sbrowser/common/parental_control/RemoteConsentType;",
        "Loading",
        "SetUp",
        "WaitingConsent",
        "Lcom/sec/android/app/sbrowser/common/parental_control/ConsentTypeStatus$Loading;",
        "Lcom/sec/android/app/sbrowser/common/parental_control/ConsentTypeStatus$SetUp;",
        "Lcom/sec/android/app/sbrowser/common/parental_control/ConsentTypeStatus$WaitingConsent;",
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
.method public abstract getLinkedUrl()Landroid/text/Spannable;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract getRemoteConsentType()Lcom/sec/android/app/sbrowser/common/parental_control/RemoteConsentType;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end method
