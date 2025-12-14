.class public Lcom/sec/android/app/sbrowser/quickaccess/ui/base/QuickAccessDialog;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static showUnableToEditInMultiInstanceDialog(Landroid/content/Context;)V
    .locals 2

    new-instance v0, Lm/k;

    const v1, 0x7f1501c5

    invoke-direct {v0, p0, v1}, Lm/k;-><init>(Landroid/content/Context;I)V

    const p0, 0x7f140b95

    invoke-virtual {v0, p0}, Lm/k;->e(I)V

    const p0, 0x7f140b94

    invoke-virtual {v0, p0}, Lm/k;->a(I)V

    new-instance p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/base/QuickAccessDialog$1;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/base/QuickAccessDialog$1;-><init>()V

    const v1, 0x7f1402ad

    invoke-virtual {v0, v1, p0}, Lm/k;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lm/k;

    move-result-object p0

    iget-object v0, p0, Lm/k;->a:Lm/h;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lm/h;->m:Z

    invoke-virtual {p0}, Lm/k;->create()Lm/l;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x50

    invoke-virtual {v0, v1}, Landroid/view/Window;->setGravity(I)V

    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    return-void
.end method
