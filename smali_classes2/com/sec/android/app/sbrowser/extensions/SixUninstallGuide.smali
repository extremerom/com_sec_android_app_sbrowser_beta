.class public Lcom/sec/android/app/sbrowser/extensions/SixUninstallGuide;
.super Lcom/sec/android/app/sbrowser/extensions/SixDialog;
.source "SourceFile"


# instance fields
.field private mExtName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/sec/android/app/sbrowser/extensions/SixDialog$SixDialogListener;)V
    .locals 0

    invoke-direct {p0, p1, p3}, Lcom/sec/android/app/sbrowser/extensions/SixDialog;-><init>(Landroid/content/Context;Lcom/sec/android/app/sbrowser/extensions/SixDialog$SixDialogListener;)V

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/extensions/SixUninstallGuide;->mExtName:Ljava/lang/String;

    return-void
.end method

.method public static synthetic b(Lcom/sec/android/app/sbrowser/extensions/SixUninstallGuide;Lcom/sec/android/app/sbrowser/extensions/SixDialog;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/extensions/SixUninstallGuide;->lambda$createView$1(Lcom/sec/android/app/sbrowser/extensions/SixDialog;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic c(Lcom/sec/android/app/sbrowser/extensions/SixUninstallGuide;Lcom/sec/android/app/sbrowser/extensions/SixDialog;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/extensions/SixUninstallGuide;->lambda$createView$0(Lcom/sec/android/app/sbrowser/extensions/SixDialog;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method private synthetic lambda$createView$0(Lcom/sec/android/app/sbrowser/extensions/SixDialog;Landroid/content/DialogInterface;I)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/extensions/SixDialog;->mListener:Lcom/sec/android/app/sbrowser/extensions/SixDialog$SixDialogListener;

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/extensions/SixDialog$SixDialogListener;->onOkButtonClicked(Lcom/sec/android/app/sbrowser/extensions/SixDialog;)V

    return-void
.end method

.method private synthetic lambda$createView$1(Lcom/sec/android/app/sbrowser/extensions/SixDialog;Landroid/content/DialogInterface;I)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/extensions/SixDialog;->mListener:Lcom/sec/android/app/sbrowser/extensions/SixDialog$SixDialogListener;

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/extensions/SixDialog$SixDialogListener;->onCancelButtonClicked(Lcom/sec/android/app/sbrowser/extensions/SixDialog;)V

    return-void
.end method


# virtual methods
.method public createView(Lcom/sec/android/app/sbrowser/extensions/SixDialog;)Lm/l;
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extensions/SixDialog;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0e089c

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0b0764

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/extensions/SixDialog;->mContext:Landroid/content/Context;

    const v3, 0x7f140fbd

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v1, Lm/k;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/extensions/SixDialog;->mContext:Landroid/content/Context;

    const v3, 0x7f1501c5

    invoke-direct {v1, v2, v3}, Lm/k;-><init>(Landroid/content/Context;I)V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/extensions/SixUninstallGuide;->mExtName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lm/k;->setTitle(Ljava/lang/CharSequence;)Lm/k;

    move-result-object v1

    invoke-virtual {v1, v0}, Lm/k;->setView(Landroid/view/View;)Lm/k;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/extensions/SixDialog;->mContext:Landroid/content/Context;

    const v2, 0x7f140fbc

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/sec/android/app/sbrowser/extensions/e;

    const/4 v3, 0x0

    invoke-direct {v2, p0, p1, v3}, Lcom/sec/android/app/sbrowser/extensions/e;-><init>(Lcom/sec/android/app/sbrowser/extensions/SixUninstallGuide;Lcom/sec/android/app/sbrowser/extensions/SixDialog;I)V

    invoke-virtual {v0, v1, v2}, Lm/k;->d(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/extensions/SixDialog;->mContext:Landroid/content/Context;

    const v2, 0x7f14060d

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/sec/android/app/sbrowser/extensions/e;

    const/4 v3, 0x1

    invoke-direct {v2, p0, p1, v3}, Lcom/sec/android/app/sbrowser/extensions/e;-><init>(Lcom/sec/android/app/sbrowser/extensions/SixUninstallGuide;Lcom/sec/android/app/sbrowser/extensions/SixDialog;I)V

    invoke-virtual {v0, v1, v2}, Lm/k;->b(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {v0}, Lm/k;->create()Lm/l;

    move-result-object p0

    return-object p0
.end method
