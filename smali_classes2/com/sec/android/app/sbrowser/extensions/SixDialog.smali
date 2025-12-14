.class public abstract Lcom/sec/android/app/sbrowser/extensions/SixDialog;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/extensions/SixDialog$SixDialogListener;
    }
.end annotation


# instance fields
.field protected mContext:Landroid/content/Context;

.field private mDialog:Lm/l;

.field protected mListener:Lcom/sec/android/app/sbrowser/extensions/SixDialog$SixDialogListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/sec/android/app/sbrowser/extensions/SixDialog$SixDialogListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/extensions/SixDialog;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/extensions/SixDialog;->mListener:Lcom/sec/android/app/sbrowser/extensions/SixDialog$SixDialogListener;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/extensions/SixDialog;->mDialog:Lm/l;

    return-void
.end method

.method public static bridge synthetic a(Lcom/sec/android/app/sbrowser/extensions/SixDialog;)V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/extensions/SixDialog;->mDialog:Lm/l;

    return-void
.end method


# virtual methods
.method public abstract createView(Lcom/sec/android/app/sbrowser/extensions/SixDialog;)Lm/l;
.end method

.method public dismiss()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extensions/SixDialog;->mDialog:Lm/l;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lm/y;->dismiss()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/extensions/SixDialog;->mDialog:Lm/l;

    :cond_0
    return-void
.end method

.method public isShowing()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/extensions/SixDialog;->mDialog:Lm/l;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p0}, Landroid/app/Dialog;->isShowing()Z

    move-result p0

    return p0
.end method

.method public show(Lcom/sec/android/app/sbrowser/extensions/SixDialog;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extensions/SixDialog;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/extensions/SixDialog;->createView(Lcom/sec/android/app/sbrowser/extensions/SixDialog;)Lm/l;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/extensions/SixDialog;->mDialog:Lm/l;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->setSEP10Dialog(Landroid/app/Dialog;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extensions/SixDialog;->mDialog:Lm/l;

    new-instance v1, Lcom/sec/android/app/sbrowser/extensions/SixDialog$1;

    invoke-direct {v1, p0, p1}, Lcom/sec/android/app/sbrowser/extensions/SixDialog$1;-><init>(Lcom/sec/android/app/sbrowser/extensions/SixDialog;Lcom/sec/android/app/sbrowser/extensions/SixDialog;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/extensions/SixDialog;->mDialog:Lm/l;

    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    return-void
.end method
