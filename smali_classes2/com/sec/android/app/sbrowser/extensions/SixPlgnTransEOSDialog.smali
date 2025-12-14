.class public Lcom/sec/android/app/sbrowser/extensions/SixPlgnTransEOSDialog;
.super Lcom/sec/android/app/sbrowser/extensions/SixDialog;
.source "SourceFile"


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sec/android/app/sbrowser/extensions/SixDialog;-><init>(Landroid/content/Context;Lcom/sec/android/app/sbrowser/extensions/SixDialog$SixDialogListener;)V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/extensions/SixPlgnTransEOSDialog;->mContext:Landroid/content/Context;

    return-void
.end method

.method public static synthetic b(Lcom/sec/android/app/sbrowser/extensions/SixPlgnTransEOSDialog;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/extensions/SixPlgnTransEOSDialog;->onOkButtonClicked(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method private isInAISupportedDevice()Z
    .locals 0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/artificial_intelligence/AIUtil;->isBrowsingAssistSupported()Z

    move-result p0

    return p0
.end method

.method private isPopupEverShown()Z
    .locals 2

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/extensions/SixPlgnTransEOSDialog;->mContext:Landroid/content/Context;

    if-nez p0, :cond_0

    const-string p0, "SixPlgnTransEOSDialog"

    const-string v0, "isPopupEverShown - abort. in bg now"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0

    :cond_0
    const-string v0, "six_data"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "six_trans_eos_popup_ever_shown"

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method private onOkButtonClicked(Landroid/content/DialogInterface;I)V
    .locals 0

    const-string p1, "SixPlgnTransEOSDialog"

    const-string p2, "onOkButtonClicked - clicked"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/extensions/SixPlgnTransEOSDialog;->setPopupEverShownTrue()V

    return-void
.end method

.method private setPopupEverShownTrue()V
    .locals 2

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/extensions/SixPlgnTransEOSDialog;->mContext:Landroid/content/Context;

    if-nez p0, :cond_0

    const-string p0, "SixPlgnTransEOSDialog"

    const-string v0, "setPopupEverShownTrue - abort. context is null"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-string v0, "six_data"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "six_trans_eos_popup_ever_shown"

    const/4 v1, 0x1

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static showDialog(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    new-instance v0, Lcom/sec/android/app/sbrowser/extensions/SixPlgnTransEOSDialog;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/extensions/SixPlgnTransEOSDialog;-><init>(Landroid/content/Context;)V

    invoke-direct {v0}, Lcom/sec/android/app/sbrowser/extensions/SixPlgnTransEOSDialog;->isPopupEverShown()Z

    move-result v1

    const-string v2, "SixPlgnTransEOSDialog"

    if-eqz v1, :cond_0

    const-string p0, "showDialog - abort. already shown"

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/extensions/SixManager;->getInstance()Lcom/sec/android/app/sbrowser/extensions/SixManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/sec/android/app/sbrowser/extensions/SixManager;->isDefaultTranslator(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string p0, "showDialog - abort. no default translator: "

    invoke-static {p0, p1, v2}, Landroidx/recyclerview/widget/P;->u(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    const-string p1, "com.samsung.android.six.webtrans"

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/common/utils/PackageManagerUtils;->isInstalledApplication(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_2

    const-string p0, "showDialog - abort. translator six pkg is not found"

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    invoke-direct {v0}, Lcom/sec/android/app/sbrowser/extensions/SixPlgnTransEOSDialog;->isInAISupportedDevice()Z

    move-result p0

    if-nez p0, :cond_3

    const-string p0, "showDialog - abort. in non-AI devices"

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_3
    invoke-virtual {v0, v0}, Lcom/sec/android/app/sbrowser/extensions/SixDialog;->show(Lcom/sec/android/app/sbrowser/extensions/SixDialog;)V

    return-void
.end method


# virtual methods
.method public createView(Lcom/sec/android/app/sbrowser/extensions/SixDialog;)Lm/l;
    .locals 2

    new-instance p1, Lm/k;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extensions/SixPlgnTransEOSDialog;->mContext:Landroid/content/Context;

    const v1, 0x7f1501c5

    invoke-direct {p1, v0, v1}, Lm/k;-><init>(Landroid/content/Context;I)V

    const v0, 0x7f140fa7

    invoke-virtual {p1, v0}, Lm/k;->a(I)V

    new-instance v0, Lcom/sec/android/app/sbrowser/appshortcut/b;

    const/4 v1, 0x2

    invoke-direct {v0, v1, p0}, Lcom/sec/android/app/sbrowser/appshortcut/b;-><init>(ILjava/lang/Object;)V

    const p0, 0x7f1402ad

    invoke-virtual {p1, p0, v0}, Lm/k;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lm/k;

    move-result-object p0

    invoke-virtual {p0}, Lm/k;->create()Lm/l;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->setSEP10Dialog(Landroid/app/Dialog;)V

    return-object p0
.end method
