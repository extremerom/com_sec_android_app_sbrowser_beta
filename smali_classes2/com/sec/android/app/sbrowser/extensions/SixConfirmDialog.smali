.class public Lcom/sec/android/app/sbrowser/extensions/SixConfirmDialog;
.super Lcom/sec/android/app/sbrowser/extensions/SixDialog;
.source "SourceFile"


# instance fields
.field mItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected mKey:Ljava/lang/String;

.field mListContainer:Landroid/widget/LinearLayout;

.field protected mName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/sec/android/app/sbrowser/extensions/SixDialog$SixDialogListener;)V
    .locals 0

    invoke-direct {p0, p1, p4}, Lcom/sec/android/app/sbrowser/extensions/SixDialog;-><init>(Landroid/content/Context;Lcom/sec/android/app/sbrowser/extensions/SixDialog$SixDialogListener;)V

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/extensions/SixConfirmDialog;->mKey:Ljava/lang/String;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/extensions/SixConfirmDialog;->mName:Ljava/lang/String;

    return-void
.end method

.method public static synthetic b(Lcom/sec/android/app/sbrowser/extensions/SixConfirmDialog;Lcom/sec/android/app/sbrowser/extensions/SixDialog;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/extensions/SixConfirmDialog;->lambda$createView$1(Lcom/sec/android/app/sbrowser/extensions/SixDialog;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic c(Lcom/sec/android/app/sbrowser/extensions/SixConfirmDialog;Lcom/sec/android/app/sbrowser/extensions/SixDialog;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/extensions/SixConfirmDialog;->lambda$createView$0(Lcom/sec/android/app/sbrowser/extensions/SixDialog;Landroid/content/DialogInterface;I)V

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
    .locals 5

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

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/extensions/SixConfirmDialog;->mName:Ljava/lang/String;

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    const v4, 0x7f140f9e

    invoke-virtual {v2, v4, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v1, 0x7f0b08aa

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/extensions/SixConfirmDialog;->mListContainer:Landroid/widget/LinearLayout;

    invoke-static {}, Lcom/sec/terrace/browser/extensions/TerraceExtensionUtil;->getInstance()Lcom/sec/terrace/browser/extensions/TerraceExtensionUtil;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/extensions/SixConfirmDialog;->mKey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/sec/terrace/browser/extensions/TerraceExtensionUtil;->getExtensionPermissions(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/extensions/SixConfirmDialog;->mItems:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/extensions/SixConfirmDialog;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

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

    goto :goto_0

    :cond_0
    new-instance v1, Lm/k;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/extensions/SixDialog;->mContext:Landroid/content/Context;

    const v3, 0x7f1501c5

    invoke-direct {v1, v2, v3}, Lm/k;-><init>(Landroid/content/Context;I)V

    const v2, 0x7f140fa6

    invoke-virtual {v1, v2}, Lm/k;->e(I)V

    invoke-virtual {v1, v0}, Lm/k;->setView(Landroid/view/View;)Lm/k;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/extensions/SixDialog;->mContext:Landroid/content/Context;

    const v2, 0x7f14060a

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/sec/android/app/sbrowser/extensions/b;

    const/4 v3, 0x0

    invoke-direct {v2, p0, p1, v3}, Lcom/sec/android/app/sbrowser/extensions/b;-><init>(Lcom/sec/android/app/sbrowser/extensions/SixConfirmDialog;Lcom/sec/android/app/sbrowser/extensions/SixDialog;I)V

    invoke-virtual {v0, v1, v2}, Lm/k;->d(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/extensions/SixDialog;->mContext:Landroid/content/Context;

    const v2, 0x7f14060c

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/sec/android/app/sbrowser/extensions/b;

    const/4 v3, 0x1

    invoke-direct {v2, p0, p1, v3}, Lcom/sec/android/app/sbrowser/extensions/b;-><init>(Lcom/sec/android/app/sbrowser/extensions/SixConfirmDialog;Lcom/sec/android/app/sbrowser/extensions/SixDialog;I)V

    invoke-virtual {v0, v1, v2}, Lm/k;->b(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {v0}, Lm/k;->create()Lm/l;

    move-result-object p0

    return-object p0
.end method
