.class public Lcom/sec/android/app/sbrowser/extensions/SixSIUpdateDialog;
.super Lcom/sec/android/app/sbrowser/extensions/SixConfirmDialog;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/sec/android/app/sbrowser/extensions/SixDialog$SixDialogListener;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sec/android/app/sbrowser/extensions/SixConfirmDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/sec/android/app/sbrowser/extensions/SixDialog$SixDialogListener;)V

    return-void
.end method

.method public static synthetic d(Lcom/sec/android/app/sbrowser/extensions/SixSIUpdateDialog;Lcom/sec/android/app/sbrowser/extensions/SixDialog;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/extensions/SixSIUpdateDialog;->lambda$show$1(Lcom/sec/android/app/sbrowser/extensions/SixDialog;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic e(Lcom/sec/android/app/sbrowser/extensions/SixSIUpdateDialog;Lcom/sec/android/app/sbrowser/extensions/SixDialog;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/extensions/SixSIUpdateDialog;->lambda$show$0(Lcom/sec/android/app/sbrowser/extensions/SixDialog;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method private synthetic lambda$show$0(Lcom/sec/android/app/sbrowser/extensions/SixDialog;Landroid/content/DialogInterface;I)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/extensions/SixDialog;->mListener:Lcom/sec/android/app/sbrowser/extensions/SixDialog$SixDialogListener;

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/extensions/SixDialog$SixDialogListener;->onOkButtonClicked(Lcom/sec/android/app/sbrowser/extensions/SixDialog;)V

    return-void
.end method

.method private synthetic lambda$show$1(Lcom/sec/android/app/sbrowser/extensions/SixDialog;Landroid/content/DialogInterface;I)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/extensions/SixDialog;->mListener:Lcom/sec/android/app/sbrowser/extensions/SixDialog$SixDialogListener;

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/extensions/SixDialog$SixDialogListener;->onCancelButtonClicked(Lcom/sec/android/app/sbrowser/extensions/SixDialog;)V

    return-void
.end method


# virtual methods
.method public show(Lcom/sec/android/app/sbrowser/extensions/SixDialog;)V
    .locals 5

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extensions/SixDialog;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    return-void

    :cond_0
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

    invoke-static {}, Lcom/sec/terrace/browser/extensions/TerraceExtensionUtil;->getInstance()Lcom/sec/terrace/browser/extensions/TerraceExtensionUtil;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/extensions/SixConfirmDialog;->mKey:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/sec/terrace/browser/extensions/TerraceExtensionUtil;->getExtensionPermissions(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/sbrowser/extensions/SixConfirmDialog;->mItems:Ljava/util/ArrayList;

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_4

    const v2, 0x7f0b08aa

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/sec/android/app/sbrowser/extensions/SixConfirmDialog;->mListContainer:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/extensions/SixDialog;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->isReplaceSecBrandAsGalaxy()Z

    move-result v3

    if-eqz v3, :cond_1

    const v3, 0x7f140faa

    goto :goto_0

    :cond_1
    const v3, 0x7f140fa9

    :goto_0
    iget-object v4, p0, Lcom/sec/android/app/sbrowser/extensions/SixConfirmDialog;->mName:Ljava/lang/String;

    filled-new-array {v4, v4}, [Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/android/app/sbrowser/common/utils/decoder/StringUtils;->naturalizeText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v1, 0x0

    :goto_1
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/extensions/SixConfirmDialog;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/extensions/SixConfirmDialog;->mListContainer:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/extensions/SixDialog;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/extensions/SixConfirmDialog;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/sec/android/app/sbrowser/extensions/SixDialogUtil;->generateListItem(Landroid/content/Context;Ljava/lang/String;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/extensions/SixDialog;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->isReplaceSecBrandAsGalaxy()Z

    move-result v2

    if-eqz v2, :cond_3

    const v2, 0x7f140fae

    goto :goto_2

    :cond_3
    const v2, 0x7f140fad

    :goto_2
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/extensions/SixDialog;->mContext:Landroid/content/Context;

    const v3, 0x7f14060a

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_5

    :cond_4
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/extensions/SixDialog;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->isReplaceSecBrandAsGalaxy()Z

    move-result v3

    if-eqz v3, :cond_5

    const v3, 0x7f140fac

    goto :goto_3

    :cond_5
    const v3, 0x7f140fab

    :goto_3
    iget-object v4, p0, Lcom/sec/android/app/sbrowser/extensions/SixConfirmDialog;->mName:Ljava/lang/String;

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/android/app/sbrowser/common/utils/decoder/StringUtils;->naturalizeText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/extensions/SixDialog;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->isReplaceSecBrandAsGalaxy()Z

    move-result v2

    if-eqz v2, :cond_6

    const v2, 0x7f140fe8

    goto :goto_4

    :cond_6
    const v2, 0x7f140fe5

    :goto_4
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/extensions/SixDialog;->mContext:Landroid/content/Context;

    const v3, 0x7f140fe4

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    :goto_5
    new-instance v3, Lm/k;

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/extensions/SixDialog;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Lm/k;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v1}, Lm/k;->setTitle(Ljava/lang/CharSequence;)Lm/k;

    move-result-object v1

    invoke-virtual {v1, v0}, Lm/k;->setView(Landroid/view/View;)Lm/k;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/sbrowser/extensions/d;

    const/4 v3, 0x0

    invoke-direct {v1, p0, p1, v3}, Lcom/sec/android/app/sbrowser/extensions/d;-><init>(Lcom/sec/android/app/sbrowser/extensions/SixSIUpdateDialog;Lcom/sec/android/app/sbrowser/extensions/SixDialog;I)V

    invoke-virtual {v0, v2, v1}, Lm/k;->d(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/extensions/SixDialog;->mContext:Landroid/content/Context;

    const v2, 0x7f140610

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/sec/android/app/sbrowser/extensions/d;

    const/4 v3, 0x1

    invoke-direct {v2, p0, p1, v3}, Lcom/sec/android/app/sbrowser/extensions/d;-><init>(Lcom/sec/android/app/sbrowser/extensions/SixSIUpdateDialog;Lcom/sec/android/app/sbrowser/extensions/SixDialog;I)V

    invoke-virtual {v0, v1, v2}, Lm/k;->b(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {v0}, Lm/k;->create()Lm/l;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    return-void
.end method
