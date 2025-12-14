.class public Lcom/sec/terrace/content/browser/input/TinSelectPopupDialog;
.super Lorg/chromium/content/browser/input/SelectPopupDialog;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/terrace/content/browser/input/TinSelectPopupDialog$Delegate;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDelegate:Lcom/sec/terrace/content/browser/input/TinSelectPopupDialog$Delegate;

.field private mIsHidden:Z

.field private mWebSelectDialog:Lcom/sec/terrace/content/browser/input/TinWebSelectDialog;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lorg/chromium/content/browser/input/SelectPopup;Ljava/util/List;Z[IILcom/sec/terrace/content/browser/input/TinSelectPopupDialog$Delegate;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lorg/chromium/content/browser/input/SelectPopup;",
            "Ljava/util/List<",
            "Lorg/chromium/content/browser/input/SelectPopupItem;",
            ">;Z[II",
            "Lcom/sec/terrace/content/browser/input/TinSelectPopupDialog$Delegate;",
            ")V"
        }
    .end annotation

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/sec/terrace/a;

    const/4 v0, 0x3

    invoke-direct {v2, v0, p2}, Lcom/sec/terrace/a;-><init>(ILjava/lang/Object;)V

    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lorg/chromium/content/browser/input/SelectPopupDialog;-><init>(Landroid/content/Context;Lorg/chromium/base/Callback;Ljava/util/List;Z[I)V

    const/4 p2, 0x1

    iput-boolean p2, p0, Lcom/sec/terrace/content/browser/input/TinSelectPopupDialog;->mIsHidden:Z

    iput-object p1, p0, Lcom/sec/terrace/content/browser/input/TinSelectPopupDialog;->mContext:Landroid/content/Context;

    iput-object p7, p0, Lcom/sec/terrace/content/browser/input/TinSelectPopupDialog;->mDelegate:Lcom/sec/terrace/content/browser/input/TinSelectPopupDialog$Delegate;

    new-instance p1, Lcom/sec/terrace/content/browser/input/TinWebSelectDialog;

    iget-object p2, p0, Lcom/sec/terrace/content/browser/input/TinSelectPopupDialog;->mContext:Landroid/content/Context;

    invoke-direct {p1, p2}, Lcom/sec/terrace/content/browser/input/TinWebSelectDialog;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/sec/terrace/content/browser/input/TinSelectPopupDialog;->mWebSelectDialog:Lcom/sec/terrace/content/browser/input/TinWebSelectDialog;

    const/4 v5, 0x0

    move-object v1, p3

    move v2, p4

    move-object v3, p5

    move v4, p6

    invoke-virtual/range {v0 .. v5}, Lcom/sec/terrace/content/browser/input/TinSelectPopupDialog;->update(Ljava/util/List;Z[IIZ)V

    return-void
.end method

.method public static synthetic access$000(Landroid/widget/ListView;)[I
    .locals 0

    invoke-static {p0}, Lorg/chromium/content/browser/input/SelectPopupDialog;->getSelectedIndices(Landroid/widget/ListView;)[I

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic c(Lcom/sec/terrace/content/browser/input/TinSelectPopupDialog;)Lcom/sec/terrace/content/browser/input/TinSelectPopupDialog$Delegate;
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/content/browser/input/TinSelectPopupDialog;->mDelegate:Lcom/sec/terrace/content/browser/input/TinSelectPopupDialog$Delegate;

    return-object p0
.end method

.method public static bridge synthetic d(Lcom/sec/terrace/content/browser/input/TinSelectPopupDialog;IZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/terrace/content/browser/input/TinSelectPopupDialog;->moveFocusToPrevNextInput(IZ)V

    return-void
.end method

.method public static bridge synthetic e(Lcom/sec/terrace/content/browser/input/TinSelectPopupDialog;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/terrace/content/browser/input/TinSelectPopupDialog;->notifySelectPopupDismissed()V

    return-void
.end method

.method private moveFocusToPrevNextInput(IZ)V
    .locals 1

    if-eqz p2, :cond_0

    const/16 v0, 0x8

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    :goto_0
    and-int/2addr p1, v0

    if-nez p1, :cond_1

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/sec/terrace/content/browser/input/TinSelectPopupDialog;->hide(Z)V

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/sec/terrace/content/browser/input/TinSelectPopupDialog;->mIsHidden:Z

    invoke-direct {p0}, Lcom/sec/terrace/content/browser/input/TinSelectPopupDialog;->notifySelectPopupDismissed()V

    :goto_1
    iget-object p0, p0, Lcom/sec/terrace/content/browser/input/TinSelectPopupDialog;->mDelegate:Lcom/sec/terrace/content/browser/input/TinSelectPopupDialog$Delegate;

    invoke-interface {p0, p2}, Lcom/sec/terrace/content/browser/input/TinSelectPopupDialog$Delegate;->moveFocusToPrevNextInput(Z)V

    return-void
.end method

.method private notifySelectPopupDismissed()V
    .locals 1

    iget-object p0, p0, Lcom/sec/terrace/content/browser/input/TinSelectPopupDialog;->mDelegate:Lcom/sec/terrace/content/browser/input/TinSelectPopupDialog$Delegate;

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Lcom/sec/terrace/content/browser/input/TinSelectPopupDialog$Delegate;->selectPopupMenuItems([I)V

    return-void
.end method


# virtual methods
.method public hide(Z)V
    .locals 1

    invoke-virtual {p0}, Lcom/sec/terrace/content/browser/input/TinSelectPopupDialog;->isTabletDevice()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Lorg/chromium/content/browser/input/SelectPopupDialog;->hide(Z)V

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/terrace/content/browser/input/TinSelectPopupDialog;->mIsHidden:Z

    invoke-virtual {p0}, Lcom/sec/terrace/content/browser/input/TinSelectPopupDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/terrace/content/browser/input/TinSelectPopupDialog;->mWebSelectDialog:Lcom/sec/terrace/content/browser/input/TinWebSelectDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    if-eqz p1, :cond_1

    invoke-direct {p0}, Lcom/sec/terrace/content/browser/input/TinSelectPopupDialog;->notifySelectPopupDismissed()V

    :cond_1
    return-void
.end method

.method public isShowing()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/content/browser/input/TinSelectPopupDialog;->mWebSelectDialog:Lcom/sec/terrace/content/browser/input/TinWebSelectDialog;

    invoke-virtual {p0}, Landroid/app/Dialog;->isShowing()Z

    move-result p0

    return p0
.end method

.method public isTabletDevice()Z
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    iget-object p0, p0, Lcom/sec/terrace/content/browser/input/TinSelectPopupDialog;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lorg/chromium/ui/base/DeviceFormFactor;->isNonMultiDisplayContextOnTablet(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method public resizeWebSelectDialog()V
    .locals 1

    invoke-virtual {p0}, Lcom/sec/terrace/content/browser/input/TinSelectPopupDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/sec/terrace/content/browser/input/TinSelectPopupDialog;->isTabletDevice()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/terrace/content/browser/input/TinSelectPopupDialog;->mIsHidden:Z

    iget-object v0, p0, Lcom/sec/terrace/content/browser/input/TinSelectPopupDialog;->mWebSelectDialog:Lcom/sec/terrace/content/browser/input/TinWebSelectDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    invoke-direct {p0}, Lcom/sec/terrace/content/browser/input/TinSelectPopupDialog;->notifySelectPopupDismissed()V

    return-void

    :cond_0
    iget-object p0, p0, Lcom/sec/terrace/content/browser/input/TinSelectPopupDialog;->mWebSelectDialog:Lcom/sec/terrace/content/browser/input/TinWebSelectDialog;

    invoke-virtual {p0}, Lcom/sec/terrace/content/browser/input/TinWebSelectDialog;->onChromeViewSizeChanged()V

    :cond_1
    return-void
.end method

.method public show()V
    .locals 3

    invoke-virtual {p0}, Lcom/sec/terrace/content/browser/input/TinSelectPopupDialog;->isTabletDevice()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0}, Lorg/chromium/content/browser/input/SelectPopupDialog;->show()V

    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/sec/terrace/content/browser/input/TinSelectPopupDialog;->mWebSelectDialog:Lcom/sec/terrace/content/browser/input/TinWebSelectDialog;

    invoke-virtual {v0}, Lcom/sec/terrace/content/browser/input/TinWebSelectDialog;->show()V
    :try_end_0
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "WindowManager.BadTokenException has been caught: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TinSelectPopupDialog"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/sec/terrace/content/browser/input/TinSelectPopupDialog;->notifySelectPopupDismissed()V

    :goto_0
    return-void
.end method

.method public update(Ljava/util/List;Z[IIZ)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/chromium/content/browser/input/SelectPopupItem;",
            ">;Z[IIZ)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/sec/terrace/content/browser/input/TinSelectPopupDialog;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/sec/terrace/R$layout;->webselect_dialog_listview:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iget-object v1, p0, Lcom/sec/terrace/content/browser/input/TinSelectPopupDialog;->mWebSelectDialog:Lcom/sec/terrace/content/browser/input/TinWebSelectDialog;

    invoke-virtual {v1, v0}, Lcom/sec/terrace/content/browser/input/TinWebSelectDialog;->setListView(Landroid/widget/ListView;)V

    and-int/lit8 v1, p4, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/terrace/content/browser/input/TinSelectPopupDialog;->mWebSelectDialog:Lcom/sec/terrace/content/browser/input/TinWebSelectDialog;

    invoke-virtual {v1, v3, v5}, Lcom/sec/terrace/content/browser/input/TinWebSelectDialog;->setButtonEnabled(IZ)V

    iget-object v1, p0, Lcom/sec/terrace/content/browser/input/TinSelectPopupDialog;->mWebSelectDialog:Lcom/sec/terrace/content/browser/input/TinWebSelectDialog;

    new-instance v6, Lcom/sec/terrace/content/browser/input/TinSelectPopupDialog$1;

    invoke-direct {v6, p0, p4}, Lcom/sec/terrace/content/browser/input/TinSelectPopupDialog$1;-><init>(Lcom/sec/terrace/content/browser/input/TinSelectPopupDialog;I)V

    invoke-virtual {v1, v3, v6}, Lcom/sec/terrace/content/browser/input/TinWebSelectDialog;->setButtonOnClickListener(ILandroid/view/View$OnClickListener;)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/sec/terrace/content/browser/input/TinSelectPopupDialog;->mWebSelectDialog:Lcom/sec/terrace/content/browser/input/TinWebSelectDialog;

    invoke-virtual {v1, v3, v4}, Lcom/sec/terrace/content/browser/input/TinWebSelectDialog;->setButtonEnabled(IZ)V

    :goto_0
    and-int/lit8 v1, p4, 0xc

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/terrace/content/browser/input/TinSelectPopupDialog;->mWebSelectDialog:Lcom/sec/terrace/content/browser/input/TinWebSelectDialog;

    invoke-virtual {v1, v5, v5}, Lcom/sec/terrace/content/browser/input/TinWebSelectDialog;->setButtonEnabled(IZ)V

    iget-object v1, p0, Lcom/sec/terrace/content/browser/input/TinSelectPopupDialog;->mWebSelectDialog:Lcom/sec/terrace/content/browser/input/TinWebSelectDialog;

    new-instance v6, Lcom/sec/terrace/content/browser/input/TinSelectPopupDialog$2;

    invoke-direct {v6, p0, p4}, Lcom/sec/terrace/content/browser/input/TinSelectPopupDialog$2;-><init>(Lcom/sec/terrace/content/browser/input/TinSelectPopupDialog;I)V

    invoke-virtual {v1, v5, v6}, Lcom/sec/terrace/content/browser/input/TinWebSelectDialog;->setButtonOnClickListener(ILandroid/view/View$OnClickListener;)V

    goto :goto_1

    :cond_1
    iget-object p4, p0, Lcom/sec/terrace/content/browser/input/TinSelectPopupDialog;->mWebSelectDialog:Lcom/sec/terrace/content/browser/input/TinWebSelectDialog;

    invoke-virtual {p4, v5, v4}, Lcom/sec/terrace/content/browser/input/TinWebSelectDialog;->setButtonEnabled(IZ)V

    :goto_1
    iget-object p4, p0, Lcom/sec/terrace/content/browser/input/TinSelectPopupDialog;->mWebSelectDialog:Lcom/sec/terrace/content/browser/input/TinWebSelectDialog;

    const/4 v1, 0x3

    invoke-virtual {p4, v1, v5}, Lcom/sec/terrace/content/browser/input/TinWebSelectDialog;->setButtonEnabled(IZ)V

    iget-object p4, p0, Lcom/sec/terrace/content/browser/input/TinSelectPopupDialog;->mWebSelectDialog:Lcom/sec/terrace/content/browser/input/TinWebSelectDialog;

    new-instance v6, Lcom/sec/terrace/content/browser/input/TinSelectPopupDialog$3;

    invoke-direct {v6, p0}, Lcom/sec/terrace/content/browser/input/TinSelectPopupDialog$3;-><init>(Lcom/sec/terrace/content/browser/input/TinSelectPopupDialog;)V

    invoke-virtual {p4, v1, v6}, Lcom/sec/terrace/content/browser/input/TinWebSelectDialog;->setButtonOnClickListener(ILandroid/view/View$OnClickListener;)V

    invoke-static {}, Lcom/sec/terrace/TinTerraceInternals;->isWearOs()Z

    move-result p4

    if-nez p4, :cond_3

    new-instance p4, Lcom/sec/terrace/content/browser/input/TinSelectPopupAdapter;

    iget-object v1, p0, Lcom/sec/terrace/content/browser/input/TinSelectPopupDialog;->mContext:Landroid/content/Context;

    if-eqz p2, :cond_2

    sget v6, Lcom/sec/terrace/R$layout;->webselect_dialog_multichoice:I

    goto :goto_2

    :cond_2
    sget v6, Lcom/sec/terrace/R$layout;->webselect_dialog_singlechoice:I

    :goto_2
    invoke-direct {p4, v1, v6, p1, p2}, Lcom/sec/terrace/content/browser/input/TinSelectPopupAdapter;-><init>(Landroid/content/Context;ILjava/util/List;Z)V

    goto :goto_4

    :cond_3
    new-instance p4, Lcom/sec/terrace/content/browser/input/TinSelectPopupAdapter;

    iget-object v1, p0, Lcom/sec/terrace/content/browser/input/TinSelectPopupDialog;->mContext:Landroid/content/Context;

    if-eqz p2, :cond_4

    sget v6, Lcom/sec/terrace/R$layout;->webselect_dialog_multichoice_wearos:I

    goto :goto_3

    :cond_4
    sget v6, Lcom/sec/terrace/R$layout;->webselect_dialog_singlechoice_wearos:I

    :goto_3
    invoke-direct {p4, v1, v6, p1, p2}, Lcom/sec/terrace/content/browser/input/TinSelectPopupAdapter;-><init>(Landroid/content/Context;ILjava/util/List;Z)V

    :goto_4
    invoke-virtual {v0, p4}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    invoke-virtual {v0, v5}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    invoke-virtual {v0, v4}, Landroid/view/View;->setScrollbarFadingEnabled(Z)V

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    new-instance p1, Lcom/sec/terrace/content/browser/input/TinSelectPopupDialog$4;

    invoke-direct {p1, p0, v0}, Lcom/sec/terrace/content/browser/input/TinSelectPopupDialog$4;-><init>(Lcom/sec/terrace/content/browser/input/TinSelectPopupDialog;Landroid/widget/ListView;)V

    invoke-virtual {v0, p1}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    if-eqz p2, :cond_5

    invoke-virtual {v0, v3}, Landroid/widget/AbsListView;->setChoiceMode(I)V

    :goto_5
    array-length p1, p3

    if-ge v4, p1, :cond_6

    aget p1, p3, v4

    invoke-virtual {v0, p1, v5}, Landroid/widget/AbsListView;->setItemChecked(IZ)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    :cond_5
    invoke-virtual {v0, v5}, Landroid/widget/AbsListView;->setChoiceMode(I)V

    array-length p1, p3

    if-lez p1, :cond_6

    aget p1, p3, v4

    invoke-virtual {v0, p1}, Landroid/widget/ListView;->setSelection(I)V

    aget p1, p3, v4

    invoke-virtual {v0, p1, v5}, Landroid/widget/AbsListView;->setItemChecked(IZ)V

    :cond_6
    iget-object p1, p0, Lcom/sec/terrace/content/browser/input/TinSelectPopupDialog;->mWebSelectDialog:Lcom/sec/terrace/content/browser/input/TinWebSelectDialog;

    new-instance p2, Lcom/sec/terrace/content/browser/input/TinSelectPopupDialog$5;

    invoke-direct {p2, p0}, Lcom/sec/terrace/content/browser/input/TinSelectPopupDialog$5;-><init>(Lcom/sec/terrace/content/browser/input/TinSelectPopupDialog;)V

    invoke-virtual {p1, p2}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    if-eqz p5, :cond_7

    iget-object p1, p0, Lcom/sec/terrace/content/browser/input/TinSelectPopupDialog;->mWebSelectDialog:Lcom/sec/terrace/content/browser/input/TinWebSelectDialog;

    iget-boolean p2, p0, Lcom/sec/terrace/content/browser/input/TinSelectPopupDialog;->mIsHidden:Z

    invoke-virtual {p1, p2}, Lcom/sec/terrace/content/browser/input/TinWebSelectDialog;->rebuildView(Z)V

    :cond_7
    iget-object p0, p0, Lcom/sec/terrace/content/browser/input/TinSelectPopupDialog;->mWebSelectDialog:Lcom/sec/terrace/content/browser/input/TinWebSelectDialog;

    invoke-virtual {p0}, Lcom/sec/terrace/content/browser/input/TinWebSelectDialog;->onChromeViewSizeChanged()V

    return-void
.end method
