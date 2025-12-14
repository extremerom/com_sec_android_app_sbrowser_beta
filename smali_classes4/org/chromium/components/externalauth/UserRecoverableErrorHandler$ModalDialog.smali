.class public Lorg/chromium/components/externalauth/UserRecoverableErrorHandler$ModalDialog;
.super Lorg/chromium/components/externalauth/UserRecoverableErrorHandler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/components/externalauth/UserRecoverableErrorHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ModalDialog"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/components/externalauth/UserRecoverableErrorHandler$ModalDialog$DialogUserActionRecorder;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final mActivity:Landroid/app/Activity;

.field private final mCancelable:Z

.field private mDialog:Landroid/app/Dialog;

.field private mErrorCode:I


# virtual methods
.method public cancelDialog()V
    .locals 1

    iget-object v0, p0, Lorg/chromium/components/externalauth/UserRecoverableErrorHandler$ModalDialog;->mDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->cancel()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/chromium/components/externalauth/UserRecoverableErrorHandler$ModalDialog;->mDialog:Landroid/app/Dialog;

    :cond_0
    return-void
.end method

.method public final handle(Landroid/content/Context;I)V
    .locals 3

    iget p1, p0, Lorg/chromium/components/externalauth/UserRecoverableErrorHandler$ModalDialog;->mErrorCode:I

    if-eq p1, p2, :cond_0

    invoke-virtual {p0}, Lorg/chromium/components/externalauth/UserRecoverableErrorHandler$ModalDialog;->cancelDialog()V

    :cond_0
    iget-object p1, p0, Lorg/chromium/components/externalauth/UserRecoverableErrorHandler$ModalDialog;->mDialog:Landroid/app/Dialog;

    if-nez p1, :cond_1

    sget-object p1, La5/b;->d:La5/b;

    iget-object v0, p0, Lorg/chromium/components/externalauth/UserRecoverableErrorHandler$ModalDialog;->mActivity:Landroid/app/Activity;

    const/4 v1, 0x0

    const/4 v2, -0x1

    invoke-virtual {p1, v0, p2, v2, v1}, La5/b;->c(Landroid/app/Activity;IILcom/google/android/gms/common/api/GoogleApiActivity;)Landroid/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lorg/chromium/components/externalauth/UserRecoverableErrorHandler$ModalDialog;->mDialog:Landroid/app/Dialog;

    iput p2, p0, Lorg/chromium/components/externalauth/UserRecoverableErrorHandler$ModalDialog;->mErrorCode:I

    invoke-static {p1}, Lorg/chromium/components/externalauth/UserRecoverableErrorHandler$ModalDialog$DialogUserActionRecorder;->createAndAttachToDialog(Landroid/app/Dialog;)V

    :cond_1
    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    move-result p2

    if-nez p2, :cond_2

    iget-boolean p0, p0, Lorg/chromium/components/externalauth/UserRecoverableErrorHandler$ModalDialog;->mCancelable:Z

    invoke-virtual {p1, p0}, Landroid/app/Dialog;->setCancelable(Z)V

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    const-string p0, "Signin_Android_GmsUserRecoverableDialogShown"

    invoke-static {p0}, Lorg/chromium/base/metrics/RecordUserAction;->record(Ljava/lang/String;)V

    :cond_2
    return-void
.end method
