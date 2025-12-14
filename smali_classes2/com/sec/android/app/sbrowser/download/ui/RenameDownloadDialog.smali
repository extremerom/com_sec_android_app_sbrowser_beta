.class public Lcom/sec/android/app/sbrowser/download/ui/RenameDownloadDialog;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/download/ui/RenameDownloadDialog$Callback;
    }
.end annotation


# instance fields
.field private final mActivity:Landroid/app/Activity;

.field private mAllDownloadsList:Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter$DownloadItemList;

.field private final mContext:Landroid/content/Context;

.field private mDHUi:Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUiController;

.field private mDialog:Lm/l;

.field private mDoneSelected:Z

.field private mDownloadGuid:Ljava/lang/String;

.field private mDownloadTitle:Ljava/lang/String;

.field private mEditDownloadView:Landroid/widget/EditText;

.field private mEmptyMsg:Ljava/lang/String;

.field private mErrorText:Landroid/widget/TextView;

.field private mExtensionChangeDialog:Lm/l;

.field private mIsExtensionChange:Z

.field private mIsExtensionChangeCancelButton:Z

.field private mModifiedExtension:Ljava/lang/String;

.field private mOriginalExtension:Ljava/lang/String;

.field private mOriginalTitle:Ljava/lang/String;

.field private mRenameButton:Landroid/widget/Button;

.field private mSelectedItem:Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryItemWrapper;

.field private mTextInputLayout:Lcom/google/android/material/textfield/TextInputLayout;

.field private mTextWatcher:Landroid/text/TextWatcher;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUiController;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/download/ui/RenameDownloadDialog;->mOriginalExtension:Ljava/lang/String;

    new-instance v0, Lcom/sec/android/app/sbrowser/download/ui/RenameDownloadDialog$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/download/ui/RenameDownloadDialog$1;-><init>(Lcom/sec/android/app/sbrowser/download/ui/RenameDownloadDialog;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/download/ui/RenameDownloadDialog;->mTextWatcher:Landroid/text/TextWatcher;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/download/ui/RenameDownloadDialog;->mContext:Landroid/content/Context;

    check-cast p1, Landroid/app/Activity;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/download/ui/RenameDownloadDialog;->mActivity:Landroid/app/Activity;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/download/ui/RenameDownloadDialog;->mDHUi:Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUiController;

    return-void
.end method

.method public static synthetic a(Lcom/sec/android/app/sbrowser/download/ui/RenameDownloadDialog;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/download/ui/RenameDownloadDialog;->lambda$showExtensionChangeDialog$9(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic b(Lcom/sec/android/app/sbrowser/download/ui/RenameDownloadDialog;Landroid/content/DialogInterface;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/download/ui/RenameDownloadDialog;->lambda$showRenameDialog$7(Landroid/content/DialogInterface;)V

    return-void
.end method

.method public static synthetic c(Lcom/sec/android/app/sbrowser/download/ui/RenameDownloadDialog;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/download/ui/RenameDownloadDialog;->lambda$doneButtonSelected$1(I)V

    return-void
.end method

.method private containsOnlyPercent(Ljava/lang/String;)Z
    .locals 4

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p0

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    return v0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    array-length p1, p0

    move v1, v0

    :goto_0
    if-ge v1, p1, :cond_2

    aget-char v2, p0, v1

    const/16 v3, 0x25

    if-eq v2, v3, :cond_1

    return v0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x1

    return p0
.end method

.method public static synthetic d(Lcom/sec/android/app/sbrowser/download/ui/RenameDownloadDialog;ZLandroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sec/android/app/sbrowser/download/ui/RenameDownloadDialog;->lambda$showRenameDialog$5(ZLandroid/widget/TextView;ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic e(Lcom/sec/android/app/sbrowser/download/ui/RenameDownloadDialog;ZLandroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/download/ui/RenameDownloadDialog;->lambda$showExtensionChangeDialog$10(ZLandroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic f(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/download/ui/RenameDownloadDialog;->lambda$showRenameDialog$4(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic g(Lcom/sec/android/app/sbrowser/download/ui/RenameDownloadDialog;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/download/ui/RenameDownloadDialog;->lambda$showRenameDialog$6()V

    return-void
.end method

.method private getDownloadTitle()Ljava/lang/String;
    .locals 2

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/ui/RenameDownloadDialog;->mEditDownloadView:Landroid/widget/EditText;

    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    const-string v0, "\n"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, " "

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic h(Lcom/sec/android/app/sbrowser/download/ui/RenameDownloadDialog;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/download/ui/RenameDownloadDialog;->lambda$showRenameDialog$2(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic i(Lcom/sec/android/app/sbrowser/download/ui/RenameDownloadDialog;ZLandroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/download/ui/RenameDownloadDialog;->lambda$showRenameDialog$8(ZLandroid/view/View;)V

    return-void
.end method

.method private isDownloadFileNameInvalid()Z
    .locals 6

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/ui/RenameDownloadDialog;->mEditDownloadView:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    const/4 v3, -0x1

    const/4 v4, 0x0

    if-eq v2, v3, :cond_0

    invoke-virtual {v0, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v0

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v5, 0x1

    if-ne v3, v5, :cond_1

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-eqz v1, :cond_3

    :cond_1
    const-string v1, ".."

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-direct {p0, v2}, Lcom/sec/android/app/sbrowser/download/ui/RenameDownloadDialog;->containsOnlyPercent(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_1

    :cond_2
    return v4

    :cond_3
    :goto_1
    return v5
.end method

.method public static synthetic j(Lcom/sec/android/app/sbrowser/download/ui/RenameDownloadDialog;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/download/ui/RenameDownloadDialog;->lambda$doneButtonSelected$0()V

    return-void
.end method

.method public static synthetic k(Lcom/sec/android/app/sbrowser/download/ui/RenameDownloadDialog;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/download/ui/RenameDownloadDialog;->lambda$showRenameDialog$3(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static bridge synthetic l(Lcom/sec/android/app/sbrowser/download/ui/RenameDownloadDialog;)Landroid/app/Activity;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/ui/RenameDownloadDialog;->mActivity:Landroid/app/Activity;

    return-object p0
.end method

.method private synthetic lambda$doneButtonSelected$0()V
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/ui/RenameDownloadDialog;->mDHUi:Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUiController;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/ui/RenameDownloadDialog;->mSelectedItem:Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryItemWrapper;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/download/ui/RenameDownloadDialog;->mDownloadTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryItemWrapper;->setTitle(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/ui/RenameDownloadDialog;->mDHUi:Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUiController;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUiController;->hideActionModeIfNeeded()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/ui/RenameDownloadDialog;->mDHUi:Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUiController;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUiController;->notifyList()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/ui/RenameDownloadDialog;->mDHUi:Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUiController;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/download/ui/RenameDownloadDialog;->mDownloadGuid:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUiController;->removeSearchClientEntry(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/ui/RenameDownloadDialog;->mDHUi:Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUiController;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/download/ui/RenameDownloadDialog;->mSelectedItem:Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryItemWrapper;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryItemWrapper;->getTerraceDownloadItem()Lcom/sec/terrace/browser/download/TerraceDownloadItem;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/terrace/browser/download/TerraceDownloadItem;->getDownloadInfo()Lcom/sec/terrace/browser/download/TerraceDownloadInfo;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUiController;->smartSearchInsert(Lcom/sec/terrace/browser/download/TerraceDownloadInfo;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/ui/RenameDownloadDialog;->mDHUi:Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUiController;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUiController;->filter(ZZ)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/ui/RenameDownloadDialog;->mDHUi:Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUiController;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUiController;->getSearchResultListSize()I

    move-result v3

    if-nez v3, :cond_0

    move v1, v2

    :cond_0
    invoke-interface {v0, v1}, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUiController;->showNoDownloadLayout(Z)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/ui/RenameDownloadDialog;->mDHUi:Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUiController;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUiController;->getSearchResultListSize()I

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/ui/RenameDownloadDialog;->mEditDownloadView:Landroid/widget/EditText;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/utils/ImeUtil;->hideKeyboard(Landroid/view/View;)Z

    :cond_1
    return-void
.end method

.method private synthetic lambda$doneButtonSelected$1(I)V
    .locals 2

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/download/ui/RenameDownloadDialog;->mActivity:Landroid/app/Activity;

    new-instance v0, Lcom/sec/android/app/sbrowser/download/ui/w;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/sbrowser/download/ui/w;-><init>(Lcom/sec/android/app/sbrowser/download/ui/RenameDownloadDialog;I)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    const-string p1, "RenameDownloadDialog"

    const-string v0, "Rename failed"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/ui/RenameDownloadDialog;->mDHUi:Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUiController;

    if-eqz p0, :cond_1

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUiController;->hideActionModeIfNeeded()V

    :cond_1
    :goto_0
    return-void
.end method

.method private synthetic lambda$showExtensionChangeDialog$10(ZLandroid/content/DialogInterface;I)V
    .locals 0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p3, p0, Lcom/sec/android/app/sbrowser/download/ui/RenameDownloadDialog;->mEditDownloadView:Landroid/widget/EditText;

    invoke-virtual {p3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/sec/android/app/sbrowser/download/ui/RenameDownloadDialog;->mOriginalExtension:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/download/ui/RenameDownloadDialog;->mDownloadTitle:Ljava/lang/String;

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/download/ui/RenameDownloadDialog;->mDialog:Lm/l;

    invoke-virtual {p2}, Lm/y;->dismiss()V

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/download/ui/RenameDownloadDialog;->doneButtonSelected(Z)V

    return-void
.end method

.method private synthetic lambda$showExtensionChangeDialog$9(Landroid/content/DialogInterface;I)V
    .locals 0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/download/ui/RenameDownloadDialog;->mIsExtensionChangeCancelButton:Z

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/download/ui/RenameDownloadDialog;->mEditDownloadView:Landroid/widget/EditText;

    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/download/ui/RenameDownloadDialog;->mOriginalExtension:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/ui/RenameDownloadDialog;->mEditDownloadView:Landroid/widget/EditText;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private synthetic lambda$showRenameDialog$2(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/download/ui/RenameDownloadDialog;->mActivity:Landroid/app/Activity;

    const-string v0, "accessibility"

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/download/ui/RenameDownloadDialog;->mEditDownloadView:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/TextView;->getSelectionStart()I

    move-result p1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/ui/RenameDownloadDialog;->mEditDownloadView:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v0

    if-eq p1, v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/ui/RenameDownloadDialog;->mEditDownloadView:Landroid/widget/EditText;

    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/EditText;->setSelection(I)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$showRenameDialog$3(Landroid/content/DialogInterface;I)V
    .locals 0

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/download/ui/RenameDownloadDialog;->mEditDownloadView:Landroid/widget/EditText;

    invoke-static {p2}, Lcom/sec/android/app/sbrowser/common/utils/ImeUtil;->hideKeyboard(Landroid/view/View;)Z

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/ui/RenameDownloadDialog;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result p0

    if-nez p0, :cond_0

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    :cond_0
    return-void
.end method

.method private static synthetic lambda$showRenameDialog$4(Landroid/content/DialogInterface;I)V
    .locals 0

    return-void
.end method

.method private synthetic lambda$showRenameDialog$5(ZLandroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    if-eqz p4, :cond_0

    invoke-virtual {p4}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result p2

    const/16 p4, 0x42

    if-eq p2, p4, :cond_1

    :cond_0
    const/4 p2, 0x6

    if-ne p3, p2, :cond_5

    :cond_1
    iget-object p2, p0, Lcom/sec/android/app/sbrowser/download/ui/RenameDownloadDialog;->mEditDownloadView:Landroid/widget/EditText;

    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    const/4 p3, 0x1

    if-eqz p2, :cond_2

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/download/ui/RenameDownloadDialog;->mErrorText:Landroid/widget/TextView;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/ui/RenameDownloadDialog;->mEmptyMsg:Ljava/lang/String;

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return p3

    :cond_2
    iget-object p2, p0, Lcom/sec/android/app/sbrowser/download/ui/RenameDownloadDialog;->mEditDownloadView:Landroid/widget/EditText;

    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_5

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/download/ui/RenameDownloadDialog;->getDownloadTitle()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    const/16 p4, 0x800

    if-lt p2, p4, :cond_3

    return p3

    :cond_3
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/download/ui/RenameDownloadDialog;->isDownloadFileNameInvalid()Z

    move-result p2

    if-eqz p2, :cond_4

    return p3

    :cond_4
    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/download/ui/RenameDownloadDialog;->startRename(Z)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/download/ui/RenameDownloadDialog;->mDialog:Lm/l;

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/download/ui/RenameDownloadDialog;->mActivity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result p1

    if-nez p1, :cond_5

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/ui/RenameDownloadDialog;->mDialog:Lm/l;

    invoke-virtual {p0}, Lm/y;->dismiss()V

    :cond_5
    const/4 p0, 0x0

    return p0
.end method

.method private synthetic lambda$showRenameDialog$6()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/ui/RenameDownloadDialog;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/utils/ImeUtil;->hideKeyboard(Landroid/view/View;)Z

    return-void
.end method

.method private synthetic lambda$showRenameDialog$7(Landroid/content/DialogInterface;)V
    .locals 3

    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    new-instance v0, Lcom/sec/android/app/sbrowser/download/ui/w;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/sbrowser/download/ui/w;-><init>(Lcom/sec/android/app/sbrowser/download/ui/RenameDownloadDialog;I)V

    const-wide/16 v1, 0x12c

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private synthetic lambda$showRenameDialog$8(ZLandroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/download/ui/RenameDownloadDialog;->startRename(Z)V

    return-void
.end method

.method public static bridge synthetic m(Lcom/sec/android/app/sbrowser/download/ui/RenameDownloadDialog;)Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter$DownloadItemList;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/ui/RenameDownloadDialog;->mAllDownloadsList:Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter$DownloadItemList;

    return-object p0
.end method

.method public static bridge synthetic n(Lcom/sec/android/app/sbrowser/download/ui/RenameDownloadDialog;)Landroid/widget/EditText;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/ui/RenameDownloadDialog;->mEditDownloadView:Landroid/widget/EditText;

    return-object p0
.end method

.method public static bridge synthetic o(Lcom/sec/android/app/sbrowser/download/ui/RenameDownloadDialog;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/ui/RenameDownloadDialog;->mErrorText:Landroid/widget/TextView;

    return-object p0
.end method

.method public static bridge synthetic p(Lcom/sec/android/app/sbrowser/download/ui/RenameDownloadDialog;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/ui/RenameDownloadDialog;->mOriginalTitle:Ljava/lang/String;

    return-object p0
.end method

.method public static bridge synthetic q(Lcom/sec/android/app/sbrowser/download/ui/RenameDownloadDialog;)Landroid/widget/Button;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/ui/RenameDownloadDialog;->mRenameButton:Landroid/widget/Button;

    return-object p0
.end method

.method public static bridge synthetic r(Lcom/sec/android/app/sbrowser/download/ui/RenameDownloadDialog;)Lcom/google/android/material/textfield/TextInputLayout;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/ui/RenameDownloadDialog;->mTextInputLayout:Lcom/google/android/material/textfield/TextInputLayout;

    return-object p0
.end method

.method public static bridge synthetic s(Lcom/sec/android/app/sbrowser/download/ui/RenameDownloadDialog;)Z
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/download/ui/RenameDownloadDialog;->isDownloadFileNameInvalid()Z

    move-result p0

    return p0
.end method

.method private setEditTextLineColor(Z)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/ui/RenameDownloadDialog;->mEditDownloadView:Landroid/widget/EditText;

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/download/ui/RenameDownloadDialog;->mErrorText:Landroid/widget/TextView;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    const/16 v0, 0x8

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/download/ui/RenameDownloadDialog;->mErrorText:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/download/ui/RenameDownloadDialog;->mEditDownloadView:Landroid/widget/EditText;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/ui/RenameDownloadDialog;->mActivity:Landroid/app/Activity;

    const v0, 0x7f060493

    invoke-static {v0, p0}, LV0/a;->c(ILandroid/content/Context;)Landroid/content/res/ColorStateList;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/view/View;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    goto :goto_0

    :cond_2
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/ui/RenameDownloadDialog;->mActivity:Landroid/app/Activity;

    const p1, 0x7f060100

    invoke-static {p1, p0}, LV0/a;->c(ILandroid/content/Context;)Landroid/content/res/ColorStateList;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/view/View;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    :goto_0
    return-void
.end method

.method private showExtensionChangeDialog(Z)V
    .locals 3

    new-instance v0, Lm/k;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/download/ui/RenameDownloadDialog;->mContext:Landroid/content/Context;

    const v2, 0x7f1501c5

    invoke-direct {v0, v1, v2}, Lm/k;-><init>(Landroid/content/Context;I)V

    new-instance v1, Lcom/sec/android/app/sbrowser/download/ui/x;

    const/4 v2, 0x1

    invoke-direct {v1, v2, p0}, Lcom/sec/android/app/sbrowser/download/ui/x;-><init>(ILjava/lang/Object;)V

    const v2, 0x7f1402c1

    invoke-virtual {v0, v2, v1}, Lm/k;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lm/k;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/sbrowser/download/ui/B;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p0, p1}, Lcom/sec/android/app/sbrowser/download/ui/B;-><init>(ILjava/lang/Object;Z)V

    const p1, 0x7f14045f

    invoke-virtual {v0, p1, v1}, Lm/k;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lm/k;

    move-result-object p1

    iget-object v0, p1, Lm/k;->a:Lm/h;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lm/h;->m:Z

    const v0, 0x7f140467

    invoke-virtual {p1, v0}, Lm/k;->e(I)V

    const v0, 0x7f140466

    invoke-virtual {p1, v0}, Lm/k;->a(I)V

    invoke-virtual {p1}, Lm/k;->create()Lm/l;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/download/ui/RenameDownloadDialog;->mExtensionChangeDialog:Lm/l;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->setSEP10Dialog(Landroid/app/Dialog;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/download/ui/RenameDownloadDialog;->mExtensionChangeDialog:Lm/l;

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/ui/RenameDownloadDialog;->mEditDownloadView:Landroid/widget/EditText;

    invoke-virtual {p0}, Landroid/view/View;->clearFocus()V

    return-void
.end method

.method private startRename(Z)V
    .locals 4

    const-string v0, ""

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/download/ui/RenameDownloadDialog;->mModifiedExtension:Ljava/lang/String;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/ui/RenameDownloadDialog;->mEditDownloadView:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_0

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/download/ui/RenameDownloadDialog;->mErrorText:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/ui/RenameDownloadDialog;->mEmptyMsg:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-direct {p0, v3}, Lcom/sec/android/app/sbrowser/download/ui/RenameDownloadDialog;->setEditTextLineColor(Z)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/ui/RenameDownloadDialog;->mRenameButton:Landroid/widget/Button;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/View;->setEnabled(Z)V

    return-void

    :cond_0
    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    if-lez v2, :cond_1

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/download/ui/RenameDownloadDialog;->mModifiedExtension:Ljava/lang/String;

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/ui/RenameDownloadDialog;->mModifiedExtension:Ljava/lang/String;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/download/ui/RenameDownloadDialog;->mOriginalExtension:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iput-boolean v3, p0, Lcom/sec/android/app/sbrowser/download/ui/RenameDownloadDialog;->mIsExtensionChange:Z

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/ui/RenameDownloadDialog;->mEditDownloadView:Landroid/widget/EditText;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/utils/ImeUtil;->hideKeyboard(Landroid/view/View;)Z

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/download/ui/RenameDownloadDialog;->showExtensionChangeDialog(Z)V

    :cond_2
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/download/ui/RenameDownloadDialog;->getDownloadTitle()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/download/ui/RenameDownloadDialog;->mDownloadTitle:Ljava/lang/String;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/ui/RenameDownloadDialog;->mRenameButton:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/view/View;->setEnabled(Z)V

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/download/ui/RenameDownloadDialog;->mIsExtensionChange:Z

    if-nez v0, :cond_3

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/download/ui/RenameDownloadDialog;->doneButtonSelected(Z)V

    :cond_3
    invoke-static {}, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;->getInstance()Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;->size()I

    move-result v0

    if-le v0, v3, :cond_4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/ui/RenameDownloadDialog;->mEditDownloadView:Landroid/widget/EditText;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/utils/ImeUtil;->hideKeyboard(Landroid/view/View;)Z

    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/ui/RenameDownloadDialog;->mDialog:Lm/l;

    if-nez v0, :cond_5

    return-void

    :cond_5
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/ui/RenameDownloadDialog;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_6

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/download/ui/RenameDownloadDialog;->mIsExtensionChange:Z

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/ui/RenameDownloadDialog;->mDialog:Lm/l;

    invoke-virtual {v0}, Lm/y;->dismiss()V

    :cond_6
    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/download/ui/RenameDownloadDialog;->mIsExtensionChangeCancelButton:Z

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/ui/RenameDownloadDialog;->mModifiedExtension:Ljava/lang/String;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/download/ui/RenameDownloadDialog;->mOriginalExtension:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/download/ui/RenameDownloadDialog;->doneButtonSelected(Z)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/ui/RenameDownloadDialog;->mDialog:Lm/l;

    invoke-virtual {p0}, Lm/y;->dismiss()V

    :cond_7
    return-void
.end method

.method public static bridge synthetic t(Lcom/sec/android/app/sbrowser/download/ui/RenameDownloadDialog;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/download/ui/RenameDownloadDialog;->setEditTextLineColor(Z)V

    return-void
.end method

.method private updateSoftInputMode(Z)V
    .locals 1

    if-eqz p1, :cond_0

    const/4 p1, 0x5

    goto :goto_0

    :cond_0
    const/4 p1, 0x3

    :goto_0
    or-int/lit8 p1, p1, 0x10

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/ui/RenameDownloadDialog;->mDialog:Lm/l;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    if-ne v0, p1, :cond_1

    return-void

    :cond_1
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/ui/RenameDownloadDialog;->mDialog:Lm/l;

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/view/Window;->setSoftInputMode(I)V

    return-void
.end method


# virtual methods
.method public doneButtonSelected(Z)V
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/ui/RenameDownloadDialog;->mSelectedItem:Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryItemWrapper;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryItemWrapper;->getFilePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/download/DownloadFileUtils;->isFileExisting(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/download/ui/RenameDownloadDialog;->mDialog:Lm/l;

    invoke-virtual {p1}, Lm/y;->dismiss()V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/download/ui/RenameDownloadDialog;->mDHUi:Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUiController;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUiController;->hideActionModeIfNeeded()V

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/ui/RenameDownloadDialog;->mActivity:Landroid/app/Activity;

    const p1, 0x1020002

    const v0, 0x7f14046a

    const/4 v1, -0x1

    invoke-static {p0, p1, v0, v1}, Lcom/sec/android/app/sbrowser/autofill/password/k;->q(Landroid/app/Activity;III)V

    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/download/ui/RenameDownloadDialog;->mDoneSelected:Z

    if-eqz v0, :cond_2

    return-void

    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/download/ui/RenameDownloadDialog;->mDoneSelected:Z

    invoke-static {}, Lcom/sec/android/app/sbrowser/download/DownloadManagerService;->getDownloadManagerService()Lcom/sec/android/app/sbrowser/download/DownloadManagerService;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/download/ui/RenameDownloadDialog;->mDownloadGuid:Ljava/lang/String;

    new-instance v2, Lcom/sec/android/app/sbrowser/download/ui/u;

    invoke-direct {v2, p0}, Lcom/sec/android/app/sbrowser/download/ui/u;-><init>(Ljava/lang/Object;)V

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/download/ui/RenameDownloadDialog;->mDownloadTitle:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, p1, v3}, Lcom/sec/android/app/sbrowser/download/DownloadManagerService;->renameDownload(Ljava/lang/String;Lcom/sec/android/app/sbrowser/download/ui/RenameDownloadDialog$Callback;ZLjava/lang/String;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/download/ui/RenameDownloadDialog;->mDoneSelected:Z

    return-void
.end method

.method public showRenameDialog(Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryItemWrapper;)V
    .locals 11

    const/4 v0, 0x1

    const/4 v1, 0x2

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryItemWrapper;->getId()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/sbrowser/download/ui/RenameDownloadDialog;->mDownloadGuid:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryItemWrapper;->getTitle()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/sbrowser/download/ui/RenameDownloadDialog;->mOriginalTitle:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryItemWrapper;->isOffTheRecord()Z

    move-result v2

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/download/ui/RenameDownloadDialog;->mDHUi:Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUiController;

    invoke-interface {v3}, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUiController;->getAllDownloadsList()Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter$DownloadItemList;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/android/app/sbrowser/download/ui/RenameDownloadDialog;->mAllDownloadsList:Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter$DownloadItemList;

    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/sec/android/app/sbrowser/download/ui/RenameDownloadDialog;->mIsExtensionChangeCancelButton:Z

    iput-boolean v3, p0, Lcom/sec/android/app/sbrowser/download/ui/RenameDownloadDialog;->mIsExtensionChange:Z

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/download/ui/RenameDownloadDialog;->mSelectedItem:Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryItemWrapper;

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/download/ui/RenameDownloadDialog;->mOriginalTitle:Ljava/lang/String;

    const/16 v4, 0x2e

    invoke-virtual {p1, v4}, Ljava/lang/String;->lastIndexOf(I)I

    move-result p1

    const/4 v5, -0x1

    if-eq p1, v5, :cond_0

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/download/ui/RenameDownloadDialog;->mOriginalTitle:Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v6

    invoke-virtual {p1, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/download/ui/RenameDownloadDialog;->mOriginalExtension:Ljava/lang/String;

    :cond_0
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/download/ui/RenameDownloadDialog;->mActivity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v6, 0x7f140496

    invoke-virtual {p1, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/download/ui/RenameDownloadDialog;->mContext:Landroid/content/Context;

    invoke-static {v6}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v6

    const v7, 0x7f0e061b

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    const v7, 0x7f0b048d

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/EditText;

    iput-object v7, p0, Lcom/sec/android/app/sbrowser/download/ui/RenameDownloadDialog;->mEditDownloadView:Landroid/widget/EditText;

    iget-object v9, p0, Lcom/sec/android/app/sbrowser/download/ui/RenameDownloadDialog;->mOriginalTitle:Ljava/lang/String;

    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v7, p0, Lcom/sec/android/app/sbrowser/download/ui/RenameDownloadDialog;->mEditDownloadView:Landroid/widget/EditText;

    const-string v9, "inputType=PredictionOff;inputType=filename;disableEmoticonInput=true"

    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setPrivateImeOptions(Ljava/lang/String;)V

    const v7, 0x7f0b04ad

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Lcom/sec/android/app/sbrowser/download/ui/RenameDownloadDialog;->mErrorText:Landroid/widget/TextView;

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-direct {p0, v3}, Lcom/sec/android/app/sbrowser/download/ui/RenameDownloadDialog;->setEditTextLineColor(Z)V

    iget-object v7, p0, Lcom/sec/android/app/sbrowser/download/ui/RenameDownloadDialog;->mOriginalTitle:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

    :try_start_0
    iget-object v7, p0, Lcom/sec/android/app/sbrowser/download/ui/RenameDownloadDialog;->mEditDownloadView:Landroid/widget/EditText;

    iget-object v8, p0, Lcom/sec/android/app/sbrowser/download/ui/RenameDownloadDialog;->mOriginalTitle:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {v7, v3, v8}, Landroid/widget/EditText;->setSelection(II)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v7

    const-string v8, "RenameDownloadDialog"

    invoke-virtual {v7}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-static {v8, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    const v7, 0x7f0b0490

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/google/android/material/textfield/TextInputLayout;

    iput-object v7, p0, Lcom/sec/android/app/sbrowser/download/ui/RenameDownloadDialog;->mTextInputLayout:Lcom/google/android/material/textfield/TextInputLayout;

    iget-object v8, p0, Lcom/sec/android/app/sbrowser/download/ui/RenameDownloadDialog;->mOriginalTitle:Ljava/lang/String;

    invoke-static {v7, v8}, Lcom/sec/android/app/sbrowser/common/utils/ViewUtil;->setHoverTooltip(Landroid/view/View;Ljava/lang/CharSequence;)V

    iget-object v7, p0, Lcom/sec/android/app/sbrowser/download/ui/RenameDownloadDialog;->mEditDownloadView:Landroid/widget/EditText;

    invoke-virtual {v7}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->clearColorFilter()V

    iget-object v7, p0, Lcom/sec/android/app/sbrowser/download/ui/RenameDownloadDialog;->mEditDownloadView:Landroid/widget/EditText;

    iget-object v8, p0, Lcom/sec/android/app/sbrowser/download/ui/RenameDownloadDialog;->mActivity:Landroid/app/Activity;

    invoke-static {v8}, Lcom/sec/android/app/sbrowser/common/device/InputFilterUtil;->getMaxLengthFilter(Landroid/content/Context;)[Landroid/text/InputFilter;

    move-result-object v8

    aget-object v8, v8, v3

    iget-object v9, p0, Lcom/sec/android/app/sbrowser/download/ui/RenameDownloadDialog;->mActivity:Landroid/app/Activity;

    invoke-static {v9}, Lcom/sec/android/app/sbrowser/common/device/InputFilterUtil;->getEmojiExcludeFilter(Landroid/content/Context;)Landroid/text/InputFilter;

    move-result-object v9

    new-array v10, v1, [Landroid/text/InputFilter;

    aput-object v8, v10, v3

    aput-object v9, v10, v0

    invoke-virtual {v7, v10}, Landroid/widget/TextView;->setFilters([Landroid/text/InputFilter;)V

    iget-object v7, p0, Lcom/sec/android/app/sbrowser/download/ui/RenameDownloadDialog;->mActivity:Landroid/app/Activity;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f1404a0

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/sec/android/app/sbrowser/download/ui/RenameDownloadDialog;->mEmptyMsg:Ljava/lang/String;

    iget-object v7, p0, Lcom/sec/android/app/sbrowser/download/ui/RenameDownloadDialog;->mActivity:Landroid/app/Activity;

    invoke-static {v7}, Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;->isSecretModeEnabled(Landroid/app/Activity;)Z

    move-result v7

    if-eqz v7, :cond_2

    iget-object v7, p0, Lcom/sec/android/app/sbrowser/download/ui/RenameDownloadDialog;->mEditDownloadView:Landroid/widget/EditText;

    invoke-static {v7, v3}, Lcom/sec/android/app/sbrowser/common/utils/ImeUtil;->setPredictionOnIme(Landroid/widget/EditText;Z)V

    :cond_2
    new-instance v7, Lm/k;

    iget-object v8, p0, Lcom/sec/android/app/sbrowser/download/ui/RenameDownloadDialog;->mContext:Landroid/content/Context;

    const v9, 0x7f150324

    invoke-direct {v7, v8, v9}, Lm/k;-><init>(Landroid/content/Context;I)V

    iget-object v8, p0, Lcom/sec/android/app/sbrowser/download/ui/RenameDownloadDialog;->mEditDownloadView:Landroid/widget/EditText;

    new-instance v9, Lcom/sec/android/app/sbrowser/download/ui/i;

    invoke-direct {v9, v1, p0}, Lcom/sec/android/app/sbrowser/download/ui/i;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v8, v9}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v8, Landroid/text/style/ForegroundColorSpan;

    iget-object v9, p0, Lcom/sec/android/app/sbrowser/download/ui/RenameDownloadDialog;->mActivity:Landroid/app/Activity;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0609d2

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getColor(I)I

    move-result v9

    invoke-direct {v8, v9}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    new-instance v9, Landroid/text/SpannableStringBuilder;

    invoke-direct {v9, p1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    const/16 v10, 0x21

    invoke-virtual {v9, v8, v3, p1, v10}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    invoke-virtual {v7, v9}, Lm/k;->setTitle(Ljava/lang/CharSequence;)Lm/k;

    invoke-virtual {v7, v6}, Lm/k;->setView(Landroid/view/View;)Lm/k;

    new-instance p1, Lcom/sec/android/app/sbrowser/download/ui/x;

    invoke-direct {p1, v3, p0}, Lcom/sec/android/app/sbrowser/download/ui/x;-><init>(ILjava/lang/Object;)V

    const v6, 0x7f140251

    invoke-virtual {v7, v6, p1}, Lm/k;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lm/k;

    new-instance p1, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/w;

    invoke-direct {p1, v1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/w;-><init>(I)V

    const v1, 0x7f140be5

    invoke-virtual {v7, v1, p1}, Lm/k;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lm/k;

    invoke-virtual {v7}, Lm/k;->create()Lm/l;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/download/ui/RenameDownloadDialog;->mDialog:Lm/l;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->setSEP10Dialog(Landroid/app/Dialog;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/download/ui/RenameDownloadDialog;->mEditDownloadView:Landroid/widget/EditText;

    new-instance v1, Lcom/sec/android/app/sbrowser/download/ui/y;

    invoke-direct {v1, p0, v2}, Lcom/sec/android/app/sbrowser/download/ui/y;-><init>(Lcom/sec/android/app/sbrowser/download/ui/RenameDownloadDialog;Z)V

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/download/ui/RenameDownloadDialog;->mDialog:Lm/l;

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/download/ui/RenameDownloadDialog;->mDialog:Lm/l;

    new-instance v1, Lcom/sec/android/app/sbrowser/download/ui/z;

    invoke-direct {v1, p0}, Lcom/sec/android/app/sbrowser/download/ui/z;-><init>(Lcom/sec/android/app/sbrowser/download/ui/RenameDownloadDialog;)V

    invoke-virtual {p1, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/download/ui/RenameDownloadDialog;->mDialog:Lm/l;

    invoke-virtual {p1, v5}, Lm/l;->g(I)Landroid/widget/Button;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/download/ui/RenameDownloadDialog;->mRenameButton:Landroid/widget/Button;

    if-eqz p1, :cond_4

    invoke-virtual {p1, v3}, Landroid/view/View;->setEnabled(Z)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/download/ui/RenameDownloadDialog;->mRenameButton:Landroid/widget/Button;

    new-instance v1, Lcom/sec/android/app/sbrowser/download/ui/A;

    invoke-direct {v1, v3, p0, v2}, Lcom/sec/android/app/sbrowser/download/ui/A;-><init>(ILjava/lang/Object;Z)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/download/ui/RenameDownloadDialog;->mEditDownloadView:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v4}, Ljava/lang/String;->lastIndexOf(I)I

    move-result p1

    if-eq p1, v5, :cond_3

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/download/ui/RenameDownloadDialog;->mEditDownloadView:Landroid/widget/EditText;

    invoke-virtual {v1, v3, p1}, Landroid/widget/EditText;->setSelection(II)V

    :cond_3
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/download/ui/RenameDownloadDialog;->mEditDownloadView:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/download/ui/RenameDownloadDialog;->mTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/download/ui/RenameDownloadDialog;->mEditDownloadView:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/download/ui/RenameDownloadDialog;->mActivity:Landroid/app/Activity;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/utils/ImeUtil;->isAccessoryKeyboardConnected(Landroid/app/Activity;)Z

    move-result p1

    xor-int/2addr p1, v0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/download/ui/RenameDownloadDialog;->updateSoftInputMode(Z)V

    :cond_4
    return-void
.end method
