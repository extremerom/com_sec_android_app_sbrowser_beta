.class public Lcom/sec/android/app/sbrowser/javascript_dialog/SBrowserJavascriptTabModalDialog;
.super Lcom/sec/terrace/browser/jsdialog/TerraceJavascriptTabModalDialog;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/javascript_dialog/SBrowserJavascriptTabModalDialog$JavascriptPromptDialog;
    }
.end annotation


# instance fields
.field private mDialog:Lm/l;

.field private final mMessage:Ljava/lang/String;

.field private final mNegativeButtonTextId:I

.field private mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

.field private final mPositiveButtonTextId:I

.field private mPreventAbuserDialog:Landroid/widget/CheckBox;

.field private mPromptTextView:Landroid/widget/TextView;

.field private final mShouldShowSuppressCheckBox:Z

.field private mSuppressCheckBox:Landroid/widget/CheckBox;

.field private final mTitle:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/String;Ljava/lang/String;Z)V
    .locals 6

    const v3, 0x7f14084e

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move v4, p1

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/sbrowser/javascript_dialog/SBrowserJavascriptTabModalDialog;-><init>(Ljava/lang/String;Ljava/lang/String;IIZ)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;IIZ)V
    .locals 1

    invoke-direct {p0}, Lcom/sec/terrace/browser/jsdialog/TerraceJavascriptTabModalDialog;-><init>()V

    new-instance v0, Lcom/sec/android/app/sbrowser/javascript_dialog/SBrowserJavascriptTabModalDialog$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/javascript_dialog/SBrowserJavascriptTabModalDialog$1;-><init>(Lcom/sec/android/app/sbrowser/javascript_dialog/SBrowserJavascriptTabModalDialog;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/javascript_dialog/SBrowserJavascriptTabModalDialog;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/javascript_dialog/SBrowserJavascriptTabModalDialog;->mTitle:Ljava/lang/String;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/javascript_dialog/SBrowserJavascriptTabModalDialog;->mMessage:Ljava/lang/String;

    iput p3, p0, Lcom/sec/android/app/sbrowser/javascript_dialog/SBrowserJavascriptTabModalDialog;->mPositiveButtonTextId:I

    iput p4, p0, Lcom/sec/android/app/sbrowser/javascript_dialog/SBrowserJavascriptTabModalDialog;->mNegativeButtonTextId:I

    iput-boolean p5, p0, Lcom/sec/android/app/sbrowser/javascript_dialog/SBrowserJavascriptTabModalDialog;->mShouldShowSuppressCheckBox:Z

    return-void
.end method

.method public static bridge synthetic a(Lcom/sec/android/app/sbrowser/javascript_dialog/SBrowserJavascriptTabModalDialog;)Lm/l;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/javascript_dialog/SBrowserJavascriptTabModalDialog;->mDialog:Lm/l;

    return-object p0
.end method

.method public static synthetic access$000(Lcom/sec/android/app/sbrowser/javascript_dialog/SBrowserJavascriptTabModalDialog;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/sec/terrace/browser/jsdialog/TerraceJavascriptTabModalDialog;->accept(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic access$100(Lcom/sec/android/app/sbrowser/javascript_dialog/SBrowserJavascriptTabModalDialog;Z)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/sec/terrace/browser/jsdialog/TerraceJavascriptTabModalDialog;->cancel(Z)V

    return-void
.end method

.method public static synthetic access$200(Lcom/sec/android/app/sbrowser/javascript_dialog/SBrowserJavascriptTabModalDialog;Z)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/sec/terrace/browser/jsdialog/TerraceJavascriptTabModalDialog;->cancel(Z)V

    return-void
.end method

.method public static bridge synthetic b(Lcom/sec/android/app/sbrowser/javascript_dialog/SBrowserJavascriptTabModalDialog;)Landroid/widget/CheckBox;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/javascript_dialog/SBrowserJavascriptTabModalDialog;->mPreventAbuserDialog:Landroid/widget/CheckBox;

    return-object p0
.end method

.method public static bridge synthetic c(Lcom/sec/android/app/sbrowser/javascript_dialog/SBrowserJavascriptTabModalDialog;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/javascript_dialog/SBrowserJavascriptTabModalDialog;->mPromptTextView:Landroid/widget/TextView;

    return-object p0
.end method

.method public static bridge synthetic d(Lcom/sec/android/app/sbrowser/javascript_dialog/SBrowserJavascriptTabModalDialog;)Landroid/widget/CheckBox;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/javascript_dialog/SBrowserJavascriptTabModalDialog;->mSuppressCheckBox:Landroid/widget/CheckBox;

    return-object p0
.end method

.method public static init()V
    .locals 1

    new-instance v0, Lcom/sec/android/app/sbrowser/javascript_dialog/SBrowserJavascriptTabModalDialog$2;

    invoke-direct {v0}, Lcom/sec/android/app/sbrowser/javascript_dialog/SBrowserJavascriptTabModalDialog$2;-><init>()V

    invoke-static {v0}, Lcom/sec/terrace/browser/jsdialog/TerraceJavascriptTabModalDialog;->initFactory(Lcom/sec/terrace/browser/jsdialog/TerraceJavascriptTabModalDialogFactory;)V

    return-void
.end method


# virtual methods
.method public onDismiss()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/javascript_dialog/SBrowserJavascriptTabModalDialog;->mDialog:Lm/l;

    invoke-virtual {p0}, Lm/y;->dismiss()V

    return-void
.end method

.method public prepare(Landroid/view/ViewGroup;)V
    .locals 4

    const v0, 0x7f0b0c26

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-boolean v1, p0, Lcom/sec/android/app/sbrowser/javascript_dialog/SBrowserJavascriptTabModalDialog;->mShouldShowSuppressCheckBox:Z

    const/4 v2, 0x0

    const/16 v3, 0x8

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/javascript_dialog/SBrowserJavascriptTabModalDialog;->mMessage:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const p0, 0x7f0b0659

    invoke-virtual {p1, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :cond_1
    const v0, 0x7f0b0657

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/javascript_dialog/SBrowserJavascriptTabModalDialog;->mMessage:Ljava/lang/String;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    const p0, 0x7f0b08f4

    invoke-virtual {p1, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/utils/DialogLifecycleManager;->isDialogAbused()Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_2

    :cond_2
    move v2, v3

    :goto_2
    invoke-virtual {p0, v2}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public show(Landroid/content/Context;)V
    .locals 3

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0e047c

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    const v1, 0x7f0b0c26

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/javascript_dialog/SBrowserJavascriptTabModalDialog;->mSuppressCheckBox:Landroid/widget/CheckBox;

    const v1, 0x7f0b0658

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/javascript_dialog/SBrowserJavascriptTabModalDialog;->mPromptTextView:Landroid/widget/TextView;

    const v1, 0x7f0b08f4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/javascript_dialog/SBrowserJavascriptTabModalDialog;->mPreventAbuserDialog:Landroid/widget/CheckBox;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/javascript_dialog/SBrowserJavascriptTabModalDialog;->prepare(Landroid/view/ViewGroup;)V

    new-instance v1, Lm/k;

    const v2, 0x7f1501c5

    invoke-direct {v1, p1, v2}, Lm/k;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v1, v0}, Lm/k;->setView(Landroid/view/View;)Lm/k;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/javascript_dialog/SBrowserJavascriptTabModalDialog;->mTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lm/k;->setTitle(Ljava/lang/CharSequence;)Lm/k;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/sbrowser/javascript_dialog/SBrowserJavascriptTabModalDialog$3;

    invoke-direct {v1, p0}, Lcom/sec/android/app/sbrowser/javascript_dialog/SBrowserJavascriptTabModalDialog$3;-><init>(Lcom/sec/android/app/sbrowser/javascript_dialog/SBrowserJavascriptTabModalDialog;)V

    iget-object v2, v0, Lm/k;->a:Lm/h;

    iput-object v1, v2, Lm/h;->n:Landroid/content/DialogInterface$OnCancelListener;

    iget v1, p0, Lcom/sec/android/app/sbrowser/javascript_dialog/SBrowserJavascriptTabModalDialog;->mPositiveButtonTextId:I

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/javascript_dialog/SBrowserJavascriptTabModalDialog;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v1, v2}, Lm/k;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lm/k;

    :cond_0
    iget v1, p0, Lcom/sec/android/app/sbrowser/javascript_dialog/SBrowserJavascriptTabModalDialog;->mNegativeButtonTextId:I

    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/javascript_dialog/SBrowserJavascriptTabModalDialog;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v1, v2}, Lm/k;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lm/k;

    :cond_1
    invoke-virtual {v0}, Lm/k;->create()Lm/l;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/javascript_dialog/SBrowserJavascriptTabModalDialog;->mDialog:Lm/l;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/javascript_dialog/SBrowserJavascriptTabModalDialog;->mDialog:Lm/l;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->setSEP10Dialog(Landroid/app/Dialog;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/javascript_dialog/SBrowserJavascriptTabModalDialog;->mDialog:Lm/l;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/javascript_dialog/SBrowserJavascriptTabModalDialog;->mDialog:Lm/l;

    invoke-static {p1, p0}, Lcom/sec/android/app/sbrowser/common/utils/DialogLifecycleManager;->addDialog(Landroid/content/Context;Lm/l;)V

    return-void
.end method
