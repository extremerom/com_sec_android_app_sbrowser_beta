.class public Lcom/sec/terrace/browser/extensions/TinExtensionInstallDialogView;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/terrace/browser/extensions/TinExtensionInstallDialogView$Natives;
    }
.end annotation


# instance fields
.field private mContainer:Landroid/widget/LinearLayout;

.field private mContext:Landroid/content/Context;

.field private mDialog:Lm/l;

.field private mNativeTinExtensionInstallDialogView:J

.field private mNegativeButtonLabel:Ljava/lang/String;

.field private mPermissionContainer:Landroid/widget/LinearLayout;

.field private mPositiveButtonLabel:Ljava/lang/String;

.field private mTitle:Ljava/lang/String;


# direct methods
.method public constructor <init>(J)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/sec/terrace/browser/extensions/TinExtensionInstallDialogView;->mNativeTinExtensionInstallDialogView:J

    invoke-static {}, Lcom/sec/terrace/TerraceHelper;->getInstance()Lcom/sec/terrace/TerraceHelper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/terrace/TerraceHelper;->getCurrentTerraceActivity()Lcom/sec/terrace/TerraceActivity;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/terrace/browser/extensions/TinExtensionInstallDialogView;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/sec/terrace/browser/extensions/TinExtensionInstallDialogViewJni;->get()Lcom/sec/terrace/browser/extensions/TinExtensionInstallDialogView$Natives;

    move-result-object p1

    iget-wide v0, p0, Lcom/sec/terrace/browser/extensions/TinExtensionInstallDialogView;->mNativeTinExtensionInstallDialogView:J

    invoke-interface {p1, v0, v1, p0}, Lcom/sec/terrace/browser/extensions/TinExtensionInstallDialogView$Natives;->init(JLcom/sec/terrace/browser/extensions/TinExtensionInstallDialogView;)V

    return-void
.end method

.method public static synthetic a(Lcom/sec/terrace/browser/extensions/TinExtensionInstallDialogView;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/terrace/browser/extensions/TinExtensionInstallDialogView;->lambda$show$0(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method private addPermission(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 2
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    iget-object p2, p0, Lcom/sec/terrace/browser/extensions/TinExtensionInstallDialogView;->mContext:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget v0, Lcom/sec/terrace/R$layout;->permission_info:I

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    sget v0, Lcom/sec/terrace/R$id;->extension_install_dialog_permission_description:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-eqz p3, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p3

    check-cast p3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, 0x0

    invoke-virtual {p3, v1, v1, v1, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    invoke-virtual {v0, p3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/16 p1, 0x8

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    iget-object p0, p0, Lcom/sec/terrace/browser/extensions/TinExtensionInstallDialogView;->mPermissionContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method

.method private addPermissionHeading(Ljava/lang/String;)V
    .locals 1
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    iget-object p0, p0, Lcom/sec/terrace/browser/extensions/TinExtensionInstallDialogView;->mPermissionContainer:Landroid/widget/LinearLayout;

    sget v0, Lcom/sec/terrace/R$id;->extension_install_dialog_permission_heading_message:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public static synthetic b(Lcom/sec/terrace/browser/extensions/TinExtensionInstallDialogView;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/terrace/browser/extensions/TinExtensionInstallDialogView;->lambda$show$1(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static bridge synthetic c(Lcom/sec/terrace/browser/extensions/TinExtensionInstallDialogView;)J
    .locals 2

    iget-wide v0, p0, Lcom/sec/terrace/browser/extensions/TinExtensionInstallDialogView;->mNativeTinExtensionInstallDialogView:J

    return-wide v0
.end method

.method private close()V
    .locals 0
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    iget-object p0, p0, Lcom/sec/terrace/browser/extensions/TinExtensionInstallDialogView;->mDialog:Lm/l;

    invoke-virtual {p0}, Lm/y;->dismiss()V

    return-void
.end method

.method private createContents(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    iput-object p1, p0, Lcom/sec/terrace/browser/extensions/TinExtensionInstallDialogView;->mTitle:Ljava/lang/String;

    iput-object p2, p0, Lcom/sec/terrace/browser/extensions/TinExtensionInstallDialogView;->mPositiveButtonLabel:Ljava/lang/String;

    iput-object p3, p0, Lcom/sec/terrace/browser/extensions/TinExtensionInstallDialogView;->mNegativeButtonLabel:Ljava/lang/String;

    iget-object p1, p0, Lcom/sec/terrace/browser/extensions/TinExtensionInstallDialogView;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget p2, Lcom/sec/terrace/R$layout;->extension_install_dialog_layout:I

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/sec/terrace/browser/extensions/TinExtensionInstallDialogView;->mContainer:Landroid/widget/LinearLayout;

    sget p2, Lcom/sec/terrace/R$id;->extension_install_dialog_permission_container:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/sec/terrace/browser/extensions/TinExtensionInstallDialogView;->mPermissionContainer:Landroid/widget/LinearLayout;

    return-void
.end method

.method private static createExtensionInstallDialog(J)V
    .locals 1
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    new-instance v0, Lcom/sec/terrace/browser/extensions/TinExtensionInstallDialogView;

    invoke-direct {v0, p0, p1}, Lcom/sec/terrace/browser/extensions/TinExtensionInstallDialogView;-><init>(J)V

    return-void
.end method

.method public static bridge synthetic d(Lcom/sec/terrace/browser/extensions/TinExtensionInstallDialogView;)V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/terrace/browser/extensions/TinExtensionInstallDialogView;->mDialog:Lm/l;

    return-void
.end method

.method private synthetic lambda$show$0(Landroid/content/DialogInterface;I)V
    .locals 2

    invoke-static {}, Lcom/sec/terrace/browser/extensions/TinExtensionInstallDialogViewJni;->get()Lcom/sec/terrace/browser/extensions/TinExtensionInstallDialogView$Natives;

    move-result-object p1

    iget-wide v0, p0, Lcom/sec/terrace/browser/extensions/TinExtensionInstallDialogView;->mNativeTinExtensionInstallDialogView:J

    invoke-interface {p1, v0, v1, p0}, Lcom/sec/terrace/browser/extensions/TinExtensionInstallDialogView$Natives;->onDialogAccepted(JLcom/sec/terrace/browser/extensions/TinExtensionInstallDialogView;)V

    return-void
.end method

.method private synthetic lambda$show$1(Landroid/content/DialogInterface;I)V
    .locals 2

    invoke-static {}, Lcom/sec/terrace/browser/extensions/TinExtensionInstallDialogViewJni;->get()Lcom/sec/terrace/browser/extensions/TinExtensionInstallDialogView$Natives;

    move-result-object p1

    iget-wide v0, p0, Lcom/sec/terrace/browser/extensions/TinExtensionInstallDialogView;->mNativeTinExtensionInstallDialogView:J

    invoke-interface {p1, v0, v1, p0}, Lcom/sec/terrace/browser/extensions/TinExtensionInstallDialogView$Natives;->onDialogCanceled(JLcom/sec/terrace/browser/extensions/TinExtensionInstallDialogView;)V

    return-void
.end method

.method private show()V
    .locals 4
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    new-instance v0, Lm/k;

    iget-object v1, p0, Lcom/sec/terrace/browser/extensions/TinExtensionInstallDialogView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lm/k;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/sec/terrace/browser/extensions/TinExtensionInstallDialogView;->mTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lm/k;->setTitle(Ljava/lang/CharSequence;)Lm/k;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/terrace/browser/extensions/TinExtensionInstallDialogView;->mContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Lm/k;->setView(Landroid/view/View;)Lm/k;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/terrace/browser/extensions/TinExtensionInstallDialogView;->mPositiveButtonLabel:Ljava/lang/String;

    new-instance v2, Lcom/sec/terrace/browser/extensions/a;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/sec/terrace/browser/extensions/a;-><init>(Lcom/sec/terrace/browser/extensions/TinExtensionInstallDialogView;I)V

    invoke-virtual {v0, v1, v2}, Lm/k;->d(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    iget-object v1, p0, Lcom/sec/terrace/browser/extensions/TinExtensionInstallDialogView;->mNegativeButtonLabel:Ljava/lang/String;

    new-instance v2, Lcom/sec/terrace/browser/extensions/a;

    const/4 v3, 0x1

    invoke-direct {v2, p0, v3}, Lcom/sec/terrace/browser/extensions/a;-><init>(Lcom/sec/terrace/browser/extensions/TinExtensionInstallDialogView;I)V

    invoke-virtual {v0, v1, v2}, Lm/k;->b(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {v0}, Lm/k;->create()Lm/l;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/terrace/browser/extensions/TinExtensionInstallDialogView;->mDialog:Lm/l;

    new-instance v1, Lcom/sec/terrace/browser/extensions/TinExtensionInstallDialogView$1;

    invoke-direct {v1, p0}, Lcom/sec/terrace/browser/extensions/TinExtensionInstallDialogView$1;-><init>(Lcom/sec/terrace/browser/extensions/TinExtensionInstallDialogView;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    iget-object p0, p0, Lcom/sec/terrace/browser/extensions/TinExtensionInstallDialogView;->mDialog:Lm/l;

    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    return-void
.end method
