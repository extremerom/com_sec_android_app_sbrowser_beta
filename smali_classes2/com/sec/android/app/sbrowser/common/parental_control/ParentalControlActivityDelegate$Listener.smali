.class public interface abstract Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlActivityDelegate$Listener;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlActivityDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Listener"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0005\u0008f\u0018\u00002\u00020\u0001J\u000f\u0010\u0003\u001a\u00020\u0002H&\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u0017\u0010\u0007\u001a\u00020\u00022\u0006\u0010\u0006\u001a\u00020\u0005H&\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u001f\u0010\u000c\u001a\u00020\u00022\u0006\u0010\n\u001a\u00020\t2\u0006\u0010\u000b\u001a\u00020\tH&\u00a2\u0006\u0004\u0008\u000c\u0010\r\u00a8\u0006\u000e"
    }
    d2 = {
        "Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlActivityDelegate$Listener;",
        "",
        "Ldb/r;",
        "onChangedParentalControlUpdateRequired",
        "()V",
        "Lcom/sec/android/app/sbrowser/common/parental_control/RemoteConsentType;",
        "state",
        "stateChangedToShowParentalControlDialog",
        "(Lcom/sec/android/app/sbrowser/common/parental_control/RemoteConsentType;)V",
        "",
        "major",
        "pp",
        "stateChangedToShowHelpIntroDialog",
        "(ZZ)V",
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
.method public abstract onChangedParentalControlUpdateRequired()V
.end method

.method public abstract stateChangedToShowHelpIntroDialog(ZZ)V
.end method

.method public abstract stateChangedToShowParentalControlDialog(Lcom/sec/android/app/sbrowser/common/parental_control/RemoteConsentType;)V
    .param p1    # Lcom/sec/android/app/sbrowser/common/parental_control/RemoteConsentType;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method
