.class public Lcom/sec/android/app/sbrowser/extensions/SixDlDialog;
.super Lcom/sec/android/app/sbrowser/extensions/SixDialog;
.source "SourceFile"


# instance fields
.field mAppListContainer:Landroid/widget/LinearLayout;

.field mDownloadItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/sec/android/app/sbrowser/extensions/SixDlService$AppItem;",
            ">;"
        }
    .end annotation
.end field

.field mItem:Lcom/sec/android/app/sbrowser/extensions/SixDlService$DownloadItem;

.field mPermissionItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mPermissionListContainer:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/sec/android/app/sbrowser/extensions/SixDialog$SixDialogListener;)V
    .locals 0

    invoke-direct {p0, p1, p3}, Lcom/sec/android/app/sbrowser/extensions/SixDialog;-><init>(Landroid/content/Context;Lcom/sec/android/app/sbrowser/extensions/SixDialog$SixDialogListener;)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/extensions/SixDlService;->getInstance()Lcom/sec/android/app/sbrowser/extensions/SixDlService;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/sec/android/app/sbrowser/extensions/SixDlService;->getDownloadItem(Ljava/lang/String;)Lcom/sec/android/app/sbrowser/extensions/SixDlService$DownloadItem;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/extensions/SixDlDialog;->mItem:Lcom/sec/android/app/sbrowser/extensions/SixDlService$DownloadItem;

    return-void
.end method

.method public static synthetic b(Lcom/sec/android/app/sbrowser/extensions/SixDlDialog;Lcom/sec/android/app/sbrowser/extensions/SixDialog;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/extensions/SixDlDialog;->lambda$createView$1(Lcom/sec/android/app/sbrowser/extensions/SixDialog;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic c(Lcom/sec/android/app/sbrowser/extensions/SixDlDialog;Lcom/sec/android/app/sbrowser/extensions/SixDialog;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/extensions/SixDlDialog;->lambda$createView$0(Lcom/sec/android/app/sbrowser/extensions/SixDialog;Landroid/content/DialogInterface;I)V

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
    .locals 9

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extensions/SixDialog;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0e08a0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0b0760

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/extensions/SixDlDialog;->mItem:Lcom/sec/android/app/sbrowser/extensions/SixDlService$DownloadItem;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/extensions/SixDlService$DownloadItem;->getDescList()Ljava/util/ArrayList;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/extensions/SixDlDialog;->mItem:Lcom/sec/android/app/sbrowser/extensions/SixDlService$DownloadItem;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/extensions/SixDlService$DownloadItem;->getApps()Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/extensions/SixDlDialog;->mDownloadItems:Ljava/util/ArrayList;

    const v1, 0x7f0b0419

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/extensions/SixDlDialog;->mAppListContainer:Landroid/widget/LinearLayout;

    const v1, 0x7f0b08aa

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/extensions/SixDlDialog;->mPermissionListContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/extensions/SixDlDialog;->mDownloadItems:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/extensions/SixDlDialog;->mDownloadItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    move v4, v3

    :goto_0
    iget-object v5, p0, Lcom/sec/android/app/sbrowser/extensions/SixDlDialog;->mDownloadItems:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/extensions/SixDlDialog;->mDownloadItems:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sec/android/app/sbrowser/extensions/SixDlService$AppItem;

    invoke-virtual {v6}, Lcom/sec/android/app/sbrowser/extensions/SixDlService$AppItem;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/extensions/SixDialog;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/sec/android/app/sbrowser/extensions/SixDlDialog;->mDownloadItems:Ljava/util/ArrayList;

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/sec/android/app/sbrowser/extensions/SixDlService$AppItem;

    invoke-virtual {v7}, Lcom/sec/android/app/sbrowser/extensions/SixDlService$AppItem;->getSize()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    filled-new-array {v7}, [Ljava/lang/Object;

    move-result-object v7

    const v8, 0x7f140fa1

    invoke-virtual {v6, v8, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v4

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/extensions/SixDlDialog;->mAppListContainer:Landroid/widget/LinearLayout;

    iget-object v7, p0, Lcom/sec/android/app/sbrowser/extensions/SixDialog;->mContext:Landroid/content/Context;

    invoke-static {v7, v5}, Lcom/sec/android/app/sbrowser/extensions/SixDialogUtil;->generateListItem(Landroid/content/Context;Ljava/lang/String;)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v6, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    const v1, 0x7f0b0761

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v1, 0x7f0b08ae

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/extensions/SixDlDialog;->mItem:Lcom/sec/android/app/sbrowser/extensions/SixDlService$DownloadItem;

    invoke-virtual {v4}, Lcom/sec/android/app/sbrowser/extensions/SixDlService$DownloadItem;->getPermissionsTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/extensions/SixDlDialog;->mItem:Lcom/sec/android/app/sbrowser/extensions/SixDlService$DownloadItem;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/extensions/SixDlService$DownloadItem;->getPermissions()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [I

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/extensions/SixDlDialog;->mItem:Lcom/sec/android/app/sbrowser/extensions/SixDlService$DownloadItem;

    invoke-virtual {v4}, Lcom/sec/android/app/sbrowser/extensions/SixDlService$DownloadItem;->getPermissions()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v5, v3

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    add-int/lit8 v7, v5, 0x1

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    aput v6, v1, v5

    move v5, v7

    goto :goto_1

    :cond_1
    invoke-static {}, Lcom/sec/terrace/browser/extensions/TerraceExtensionUtil;->getInstance()Lcom/sec/terrace/browser/extensions/TerraceExtensionUtil;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/sec/terrace/browser/extensions/TerraceExtensionUtil;->getExtensionPermissionsWithAPISet([I)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/extensions/SixDlDialog;->mPermissionItems:Ljava/util/ArrayList;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_2

    :goto_2
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/extensions/SixDlDialog;->mPermissionItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v3, v1, :cond_2

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/extensions/SixDlDialog;->mPermissionListContainer:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/extensions/SixDialog;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/extensions/SixDlDialog;->mPermissionItems:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/sec/android/app/sbrowser/extensions/SixDialogUtil;->generateListItem(Landroid/content/Context;Ljava/lang/String;)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_2
    const v1, 0x7f0b0762

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v1, Lm/k;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/extensions/SixDialog;->mContext:Landroid/content/Context;

    const v3, 0x7f1501c5

    invoke-direct {v1, v2, v3}, Lm/k;-><init>(Landroid/content/Context;I)V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/extensions/SixDlDialog;->mItem:Lcom/sec/android/app/sbrowser/extensions/SixDlService$DownloadItem;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/extensions/SixDlService$DownloadItem;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lm/k;->setTitle(Ljava/lang/CharSequence;)Lm/k;

    move-result-object v1

    invoke-virtual {v1, v0}, Lm/k;->setView(Landroid/view/View;)Lm/k;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/extensions/SixDialog;->mContext:Landroid/content/Context;

    const v2, 0x7f140fa0

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/sec/android/app/sbrowser/extensions/c;

    const/4 v3, 0x0

    invoke-direct {v2, p0, p1, v3}, Lcom/sec/android/app/sbrowser/extensions/c;-><init>(Lcom/sec/android/app/sbrowser/extensions/SixDlDialog;Lcom/sec/android/app/sbrowser/extensions/SixDialog;I)V

    invoke-virtual {v0, v1, v2}, Lm/k;->d(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/extensions/SixDialog;->mContext:Landroid/content/Context;

    const v2, 0x7f1402ac

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/sec/android/app/sbrowser/extensions/c;

    const/4 v3, 0x1

    invoke-direct {v2, p0, p1, v3}, Lcom/sec/android/app/sbrowser/extensions/c;-><init>(Lcom/sec/android/app/sbrowser/extensions/SixDlDialog;Lcom/sec/android/app/sbrowser/extensions/SixDialog;I)V

    invoke-virtual {v0, v1, v2}, Lm/k;->b(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {v0}, Lm/k;->create()Lm/l;

    move-result-object p0

    return-object p0
.end method
