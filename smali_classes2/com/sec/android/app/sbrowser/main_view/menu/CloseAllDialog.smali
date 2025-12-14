.class public Lcom/sec/android/app/sbrowser/main_view/menu/CloseAllDialog;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/main_view/menu/CloseAllDialog$CloseAllDialogListener;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDialog:Lm/l;

.field private mListener:Lcom/sec/android/app/sbrowser/main_view/menu/CloseAllDialog$CloseAllDialogListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/sec/android/app/sbrowser/main_view/menu/CloseAllDialog$CloseAllDialogListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/main_view/menu/CloseAllDialog;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/main_view/menu/CloseAllDialog;->mListener:Lcom/sec/android/app/sbrowser/main_view/menu/CloseAllDialog$CloseAllDialogListener;

    return-void
.end method

.method public static synthetic a(Lcom/sec/android/app/sbrowser/main_view/menu/CloseAllDialog;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/main_view/menu/CloseAllDialog;->lambda$show$1(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic b(Lcom/sec/android/app/sbrowser/main_view/menu/CloseAllDialog;Landroid/widget/CheckBox;Landroid/widget/CheckBox;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sec/android/app/sbrowser/main_view/menu/CloseAllDialog;->lambda$show$0(Landroid/widget/CheckBox;Landroid/widget/CheckBox;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method private synthetic lambda$show$0(Landroid/widget/CheckBox;Landroid/widget/CheckBox;Landroid/content/DialogInterface;I)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/menu/CloseAllDialog;->mListener:Lcom/sec/android/app/sbrowser/main_view/menu/CloseAllDialog$CloseAllDialogListener;

    invoke-virtual {p1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result p1

    invoke-virtual {p2}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result p2

    invoke-interface {p0, p1, p2}, Lcom/sec/android/app/sbrowser/main_view/menu/CloseAllDialog$CloseAllDialogListener;->onPositiveButtonClicked(ZZ)V

    return-void
.end method

.method private synthetic lambda$show$1(Landroid/content/DialogInterface;I)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/menu/CloseAllDialog;->mListener:Lcom/sec/android/app/sbrowser/main_view/menu/CloseAllDialog$CloseAllDialogListener;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/main_view/menu/CloseAllDialog$CloseAllDialogListener;->onNegativeButtonClicked()V

    return-void
.end method


# virtual methods
.method public dismissDialog()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/menu/CloseAllDialog;->mDialog:Lm/l;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lm/y;->dismiss()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/menu/CloseAllDialog;->mDialog:Lm/l;

    return-void
.end method

.method public show()V
    .locals 6

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/menu/CloseAllDialog;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0e0145

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0b02ba

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getInstance()Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->isCloseAllTabsEnabled()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/CompoundButton;->setChecked(Z)V

    const v2, 0x7f0b041f

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    new-instance v3, Lm/k;

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/main_view/menu/CloseAllDialog;->mContext:Landroid/content/Context;

    const v5, 0x7f1501c5

    invoke-direct {v3, v4, v5}, Lm/k;-><init>(Landroid/content/Context;I)V

    const v4, 0x7f1402fb

    invoke-virtual {v3, v4}, Lm/k;->e(I)V

    invoke-virtual {v3, v0}, Lm/k;->setView(Landroid/view/View;)Lm/k;

    move-result-object v0

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/main_view/menu/CloseAllDialog;->mContext:Landroid/content/Context;

    const v4, 0x7f1402f9

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/sec/android/app/sbrowser/global_config/d;

    const/4 v5, 0x2

    invoke-direct {v4, p0, v5, v1, v2}, Lcom/sec/android/app/sbrowser/global_config/d;-><init>(Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v3, v4}, Lm/k;->d(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/main_view/menu/CloseAllDialog;->mContext:Landroid/content/Context;

    const v2, 0x7f1402f7

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/sec/android/app/sbrowser/main_view/menu/i;

    const/4 v3, 0x0

    invoke-direct {v2, v3, p0}, Lcom/sec/android/app/sbrowser/main_view/menu/i;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Lm/k;->b(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {v0}, Lm/k;->create()Lm/l;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/menu/CloseAllDialog;->mDialog:Lm/l;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->setSEP10Dialog(Landroid/app/Dialog;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/menu/CloseAllDialog;->mDialog:Lm/l;

    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    return-void
.end method
