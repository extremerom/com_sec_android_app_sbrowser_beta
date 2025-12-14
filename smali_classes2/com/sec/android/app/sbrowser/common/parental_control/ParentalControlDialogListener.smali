.class public interface abstract Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlDialogListener;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008f\u0018\u00002\u00020\u0001J\u000f\u0010\u0003\u001a\u00020\u0002H&\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u000f\u0010\u0005\u001a\u00020\u0002H&\u00a2\u0006\u0004\u0008\u0005\u0010\u0004J\u000f\u0010\u0006\u001a\u00020\u0002H&\u00a2\u0006\u0004\u0008\u0006\u0010\u0004J\u000f\u0010\u0007\u001a\u00020\u0002H&\u00a2\u0006\u0004\u0008\u0007\u0010\u0004J\u0011\u0010\t\u001a\u0004\u0018\u00010\u0008H&\u00a2\u0006\u0004\u0008\t\u0010\n\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlDialogListener;",
        "",
        "Ldb/r;",
        "onSuccess",
        "()V",
        "onLocalConsentFailed",
        "onChildAccountChanged",
        "onClickCancel",
        "Lcom/sec/android/app/sbrowser/common/parental_control/RemoteConsentType;",
        "getRemoteConsentType",
        "()Lcom/sec/android/app/sbrowser/common/parental_control/RemoteConsentType;",
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
.method public abstract getRemoteConsentType()Lcom/sec/android/app/sbrowser/common/parental_control/RemoteConsentType;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end method

.method public abstract onChildAccountChanged()V
.end method

.method public abstract onClickCancel()V
.end method

.method public abstract onLocalConsentFailed()V
.end method

.method public abstract onSuccess()V
.end method
