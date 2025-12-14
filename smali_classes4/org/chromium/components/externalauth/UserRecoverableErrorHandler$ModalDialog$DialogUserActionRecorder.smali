.class Lorg/chromium/components/externalauth/UserRecoverableErrorHandler$ModalDialog$DialogUserActionRecorder;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/components/externalauth/UserRecoverableErrorHandler$ModalDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DialogUserActionRecorder"
.end annotation


# instance fields
.field private mCancelled:Z


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createAndAttachToDialog(Landroid/app/Dialog;)V
    .locals 1

    new-instance v0, Lorg/chromium/components/externalauth/UserRecoverableErrorHandler$ModalDialog$DialogUserActionRecorder;

    invoke-direct {v0}, Lorg/chromium/components/externalauth/UserRecoverableErrorHandler$ModalDialog$DialogUserActionRecorder;-><init>()V

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/chromium/components/externalauth/UserRecoverableErrorHandler$ModalDialog$DialogUserActionRecorder;->mCancelled:Z

    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 0

    iget-boolean p0, p0, Lorg/chromium/components/externalauth/UserRecoverableErrorHandler$ModalDialog$DialogUserActionRecorder;->mCancelled:Z

    if-eqz p0, :cond_0

    return-void

    :cond_0
    const-string p0, "Signin_Android_GmsUserRecoverableDialogAccepted"

    invoke-static {p0}, Lorg/chromium/base/metrics/RecordUserAction;->record(Ljava/lang/String;)V

    return-void
.end method
