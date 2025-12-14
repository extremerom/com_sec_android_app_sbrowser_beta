.class public Lcom/sec/android/app/sbrowser/sites/bookmark/utils/EditFolderDialogHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field mActivity:Landroid/app/Activity;

.field private mDialog:Lm/l;

.field private mDuplicateMsg:Ljava/lang/String;

.field private mEditDialog:Lm/k;

.field private mEditFolderView:Landroidx/appcompat/widget/AppCompatEditText;

.field private mEmptyMsg:Ljava/lang/String;

.field private mErrorText:Landroid/widget/TextView;

.field private mExceedsLength:Z

.field private mFolderParentId:J

.field private mIsEditFolderSelected:Z

.field private mModel:Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModel;

.field private mMsg:Ljava/lang/String;

.field private mPositiveButton:Landroid/widget/Button;

.field private mTextInputLayout:Landroid/widget/LinearLayout;

.field private mTextWatcher:Landroid/text/TextWatcher;

.field private mTitle:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModel;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/utils/EditFolderDialogHelper;->mExceedsLength:Z

    new-instance v0, Lcom/sec/android/app/sbrowser/sites/bookmark/utils/EditFolderDialogHelper$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/sites/bookmark/utils/EditFolderDialogHelper$1;-><init>(Lcom/sec/android/app/sbrowser/sites/bookmark/utils/EditFolderDialogHelper;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/utils/EditFolderDialogHelper;->mTextWatcher:Landroid/text/TextWatcher;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/utils/EditFolderDialogHelper;->mActivity:Landroid/app/Activity;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/utils/EditFolderDialogHelper;->mModel:Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModel;

    return-void
.end method

.method public static synthetic a(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/sites/bookmark/utils/EditFolderDialogHelper;->lambda$showEditFolderAlertDialog$3(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic b(Lcom/sec/android/app/sbrowser/sites/bookmark/utils/EditFolderDialogHelper;Landroid/content/DialogInterface;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/sites/bookmark/utils/EditFolderDialogHelper;->lambda$showEditFolderAlertDialog$6(Landroid/content/DialogInterface;)V

    return-void
.end method

.method public static synthetic c(Lcom/sec/android/app/sbrowser/sites/bookmark/utils/EditFolderDialogHelper;Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/sites/bookmark/utils/EditFolderDialogHelper;->lambda$showEditFolderAlertDialog$4(Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic d(Lcom/sec/android/app/sbrowser/sites/bookmark/utils/EditFolderDialogHelper;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/sites/bookmark/utils/EditFolderDialogHelper;->lambda$showEditFolderAlertDialog$2(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic e(Lcom/sec/android/app/sbrowser/sites/bookmark/utils/EditFolderDialogHelper;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/sites/bookmark/utils/EditFolderDialogHelper;->lambda$showEditFolderAlertDialog$5()V

    return-void
.end method

.method public static synthetic f(Lcom/sec/android/app/sbrowser/sites/bookmark/utils/EditFolderDialogHelper;Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sec/android/app/sbrowser/sites/bookmark/utils/EditFolderDialogHelper;->lambda$showEditFolderAlertDialog$1(Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic g(Lcom/sec/android/app/sbrowser/sites/bookmark/utils/EditFolderDialogHelper;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/sites/bookmark/utils/EditFolderDialogHelper;->lambda$showEditFolderAlertDialog$0(Landroid/view/View;)V

    return-void
.end method

.method public static bridge synthetic h(Lcom/sec/android/app/sbrowser/sites/bookmark/utils/EditFolderDialogHelper;)Landroidx/appcompat/widget/AppCompatEditText;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/utils/EditFolderDialogHelper;->mEditFolderView:Landroidx/appcompat/widget/AppCompatEditText;

    return-object p0
.end method

.method public static bridge synthetic i(Lcom/sec/android/app/sbrowser/sites/bookmark/utils/EditFolderDialogHelper;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/utils/EditFolderDialogHelper;->mErrorText:Landroid/widget/TextView;

    return-object p0
.end method

.method public static bridge synthetic j(Lcom/sec/android/app/sbrowser/sites/bookmark/utils/EditFolderDialogHelper;)J
    .locals 2

    iget-wide v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/utils/EditFolderDialogHelper;->mFolderParentId:J

    return-wide v0
.end method

.method public static bridge synthetic k(Lcom/sec/android/app/sbrowser/sites/bookmark/utils/EditFolderDialogHelper;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/utils/EditFolderDialogHelper;->mMsg:Ljava/lang/String;

    return-object p0
.end method

.method public static bridge synthetic l(Lcom/sec/android/app/sbrowser/sites/bookmark/utils/EditFolderDialogHelper;)Landroid/widget/Button;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/utils/EditFolderDialogHelper;->mPositiveButton:Landroid/widget/Button;

    return-object p0
.end method

.method private synthetic lambda$showEditFolderAlertDialog$0(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/utils/EditFolderDialogHelper;->mActivity:Landroid/app/Activity;

    const-string v0, "accessibility"

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/utils/EditFolderDialogHelper;->mEditFolderView:Landroidx/appcompat/widget/AppCompatEditText;

    invoke-virtual {p1}, Landroid/widget/TextView;->getSelectionStart()I

    move-result p1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/utils/EditFolderDialogHelper;->mEditFolderView:Landroidx/appcompat/widget/AppCompatEditText;

    invoke-virtual {v0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v0

    if-eq p1, v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/utils/EditFolderDialogHelper;->mEditFolderView:Landroidx/appcompat/widget/AppCompatEditText;

    invoke-virtual {p0}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/EditText;->setSelection(I)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$showEditFolderAlertDialog$1(Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    if-eqz p4, :cond_0

    invoke-virtual {p4}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result p2

    const/16 p4, 0x42

    if-eq p2, p4, :cond_1

    :cond_0
    const/4 p2, 0x6

    if-ne p3, p2, :cond_4

    :cond_1
    iget-object p2, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/utils/EditFolderDialogHelper;->mPositiveButton:Landroid/widget/Button;

    invoke-virtual {p2}, Landroid/view/View;->isEnabled()Z

    move-result p2

    const/4 p3, 0x1

    if-nez p2, :cond_2

    return p3

    :cond_2
    iget-object p2, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/utils/EditFolderDialogHelper;->mEditFolderView:Landroidx/appcompat/widget/AppCompatEditText;

    invoke-virtual {p2}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_4

    iput-boolean p3, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/utils/EditFolderDialogHelper;->mIsEditFolderSelected:Z

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/utils/EditFolderDialogHelper;->mEditFolderView:Landroidx/appcompat/widget/AppCompatEditText;

    invoke-virtual {p2}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getTitle()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p2, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-nez p4, :cond_3

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/utils/EditFolderDialogHelper;->mModel:Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModel;

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModel;->editBookmarkFolder(Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;Ljava/lang/String;)V

    return p3

    :cond_3
    iget-boolean p1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/utils/EditFolderDialogHelper;->mExceedsLength:Z

    if-nez p1, :cond_4

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/utils/EditFolderDialogHelper;->mDialog:Lm/l;

    invoke-virtual {p0}, Lm/y;->dismiss()V

    :cond_4
    const/4 p0, 0x0

    return p0
.end method

.method private synthetic lambda$showEditFolderAlertDialog$2(Landroid/content/DialogInterface;I)V
    .locals 0

    const-string p1, "304"

    const-string p2, "3048"

    invoke-static {p1, p2}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/utils/EditFolderDialogHelper;->mEditDialog:Lm/k;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/utils/EditFolderDialogHelper;->mEditFolderView:Landroidx/appcompat/widget/AppCompatEditText;

    return-void
.end method

.method private static synthetic lambda$showEditFolderAlertDialog$3(Landroid/content/DialogInterface;I)V
    .locals 0

    return-void
.end method

.method private synthetic lambda$showEditFolderAlertDialog$4(Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;Landroid/view/View;)V
    .locals 2

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/utils/EditFolderDialogHelper;->mEditFolderView:Landroidx/appcompat/widget/AppCompatEditText;

    invoke-virtual {p2}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    const/4 v0, 0x1

    if-eqz p2, :cond_0

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/utils/EditFolderDialogHelper;->mErrorText:Landroid/widget/TextView;

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/utils/EditFolderDialogHelper;->mEmptyMsg:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/utils/EditFolderDialogHelper;->mActivity:Landroid/app/Activity;

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/utils/EditFolderDialogHelper;->mEditFolderView:Landroidx/appcompat/widget/AppCompatEditText;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/utils/EditFolderDialogHelper;->mErrorText:Landroid/widget/TextView;

    invoke-static {v0, p1, p2, p0}, Lcom/sec/android/app/sbrowser/sites/bookmark/utils/ShowBookmarkUtil;->setEditTextLineColor(ZLandroid/app/Activity;Landroid/view/View;Landroid/view/View;)V

    return-void

    :cond_0
    const-string p2, "304"

    const-string v1, "3049"

    invoke-static {p2, v1}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/utils/EditFolderDialogHelper;->mIsEditFolderSelected:Z

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/utils/EditFolderDialogHelper;->mEditFolderView:Landroidx/appcompat/widget/AppCompatEditText;

    invoke-virtual {p2}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/utils/EditFolderDialogHelper;->mModel:Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModel;

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModel;->editBookmarkFolder(Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-boolean p1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/utils/EditFolderDialogHelper;->mExceedsLength:Z

    if-nez p1, :cond_2

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/utils/EditFolderDialogHelper;->mDialog:Lm/l;

    invoke-virtual {p0}, Lm/y;->dismiss()V

    :cond_2
    :goto_0
    return-void
.end method

.method private synthetic lambda$showEditFolderAlertDialog$5()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/utils/EditFolderDialogHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/utils/ImeUtil;->hideKeyboard(Landroid/view/View;)Z

    return-void
.end method

.method private synthetic lambda$showEditFolderAlertDialog$6(Landroid/content/DialogInterface;)V
    .locals 3

    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    new-instance v0, Lcom/sec/android/app/sbrowser/download/b;

    const/16 v1, 0x1a

    invoke-direct {v0, v1, p0}, Lcom/sec/android/app/sbrowser/download/b;-><init>(ILjava/lang/Object;)V

    const-wide/16 v1, 0x12c

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/utils/EditFolderDialogHelper;->mEditDialog:Lm/k;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/utils/EditFolderDialogHelper;->mDialog:Lm/l;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/utils/EditFolderDialogHelper;->mEditFolderView:Landroidx/appcompat/widget/AppCompatEditText;

    return-void
.end method

.method public static bridge synthetic m(Lcom/sec/android/app/sbrowser/sites/bookmark/utils/EditFolderDialogHelper;)Landroid/widget/LinearLayout;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/utils/EditFolderDialogHelper;->mTextInputLayout:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method public static bridge synthetic n(Lcom/sec/android/app/sbrowser/sites/bookmark/utils/EditFolderDialogHelper;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/utils/EditFolderDialogHelper;->mTitle:Ljava/lang/String;

    return-object p0
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

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/utils/EditFolderDialogHelper;->mDialog:Lm/l;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    if-ne v0, p1, :cond_1

    return-void

    :cond_1
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/utils/EditFolderDialogHelper;->mDialog:Lm/l;

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/view/Window;->setSoftInputMode(I)V

    return-void
.end method


# virtual methods
.method public dismissDialog()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/utils/EditFolderDialogHelper;->mEditDialog:Lm/k;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/utils/EditFolderDialogHelper;->mDialog:Lm/l;

    invoke-virtual {v0}, Lm/y;->dismiss()V

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/utils/EditFolderDialogHelper;->mEditDialog:Lm/k;

    :cond_0
    iput-object v1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/utils/EditFolderDialogHelper;->mEditFolderView:Landroidx/appcompat/widget/AppCompatEditText;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/utils/EditFolderDialogHelper;->mIsEditFolderSelected:Z

    return-void
.end method

.method public getEditFolderDialog()Lm/k;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/utils/EditFolderDialogHelper;->mEditDialog:Lm/k;

    return-object p0
.end method

.method public handleDuplicateFolder()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/utils/EditFolderDialogHelper;->mErrorText:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/utils/EditFolderDialogHelper;->mDuplicateMsg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/utils/EditFolderDialogHelper;->mActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/utils/EditFolderDialogHelper;->mEditFolderView:Landroidx/appcompat/widget/AppCompatEditText;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/utils/EditFolderDialogHelper;->mErrorText:Landroid/widget/TextView;

    const/4 v2, 0x1

    invoke-static {v2, v0, v1, p0}, Lcom/sec/android/app/sbrowser/sites/bookmark/utils/ShowBookmarkUtil;->setEditTextLineColor(ZLandroid/app/Activity;Landroid/view/View;Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public handleEditFailure()V
    .locals 3

    const-string v0, "EditFolderDialogHelper"

    const-string v1, "Bookmark edit failed"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/utils/EditFolderDialogHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f1404b3

    const/4 v2, -0x1

    invoke-static {v1, v2, v0}, LH6/o;->h(IILandroid/view/View;)LH6/o;

    move-result-object v0

    invoke-virtual {v0}, LH6/o;->l()V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sites/bookmark/utils/EditFolderDialogHelper;->dismissDialog()V

    return-void
.end method

.method public isEditFolderSelected()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/utils/EditFolderDialogHelper;->mIsEditFolderSelected:Z

    return p0
.end method

.method public setFolderText(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/utils/EditFolderDialogHelper;->mEditFolderView:Landroidx/appcompat/widget/AppCompatEditText;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/utils/EditFolderDialogHelper;->mTextInputLayout:Landroid/widget/LinearLayout;

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/common/utils/ViewUtil;->setHoverTooltip(Landroid/view/View;Ljava/lang/CharSequence;)V

    return-void
.end method

.method public showAlertDialogOnOrientation()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/utils/EditFolderDialogHelper;->mEditDialog:Lm/k;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/utils/EditFolderDialogHelper;->mActivity:Landroid/app/Activity;

    const v2, 0x7f1404b5

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lm/k;->setTitle(Ljava/lang/CharSequence;)Lm/k;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/utils/EditFolderDialogHelper;->mDialog:Lm/l;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lm/l;->g(I)Landroid/widget/Button;

    move-result-object v0

    if-eqz v0, :cond_0

    const v1, 0x7f140be5

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/utils/EditFolderDialogHelper;->mDialog:Lm/l;

    const/4 v1, -0x2

    invoke-virtual {v0, v1}, Lm/l;->g(I)Landroid/widget/Button;

    move-result-object v0

    if-eqz v0, :cond_1

    const v1, 0x7f140251

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    :cond_1
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/utils/EditFolderDialogHelper;->mEditFolderView:Landroidx/appcompat/widget/AppCompatEditText;

    if-eqz p0, :cond_2

    const v0, 0x7f1404b1

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setHint(I)V

    :cond_2
    return-void
.end method

.method public showEditFolderAlertDialog(Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;)V
    .locals 8

    const/16 v0, 0xa

    const/4 v1, 0x0

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/utils/EditFolderDialogHelper;->mEditDialog:Lm/k;

    if-nez v3, :cond_4

    if-nez p1, :cond_0

    goto/16 :goto_1

    :cond_0
    iget-object v3, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/utils/EditFolderDialogHelper;->mActivity:Landroid/app/Activity;

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f0e01fe

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    const v4, 0x7f0b048d

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroidx/appcompat/widget/AppCompatEditText;

    iput-object v4, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/utils/EditFolderDialogHelper;->mEditFolderView:Landroidx/appcompat/widget/AppCompatEditText;

    const v4, 0x7f0b0490

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    iput-object v4, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/utils/EditFolderDialogHelper;->mTextInputLayout:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/utils/EditFolderDialogHelper;->mEditFolderView:Landroidx/appcompat/widget/AppCompatEditText;

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/utils/EditFolderDialogHelper;->mActivity:Landroid/app/Activity;

    invoke-static {v6}, Lcom/sec/android/app/sbrowser/common/device/InputFilterUtil;->getMaxLengthFilter(Landroid/content/Context;)[Landroid/text/InputFilter;

    move-result-object v6

    aget-object v6, v6, v1

    new-array v7, v2, [Landroid/text/InputFilter;

    aput-object v6, v7, v1

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setFilters([Landroid/text/InputFilter;)V

    const v4, 0x7f0b04ad

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/utils/EditFolderDialogHelper;->mErrorText:Landroid/widget/TextView;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/utils/EditFolderDialogHelper;->mActivity:Landroid/app/Activity;

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/utils/EditFolderDialogHelper;->mEditFolderView:Landroidx/appcompat/widget/AppCompatEditText;

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/utils/EditFolderDialogHelper;->mErrorText:Landroid/widget/TextView;

    invoke-static {v1, v4, v5, v6}, Lcom/sec/android/app/sbrowser/sites/bookmark/utils/ShowBookmarkUtil;->setEditTextLineColor(ZLandroid/app/Activity;Landroid/view/View;Landroid/view/View;)V

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/utils/EditFolderDialogHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f140677

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x800

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    filled-new-array {v6}, [Ljava/lang/Object;

    move-result-object v6

    invoke-static {v4, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/utils/EditFolderDialogHelper;->mMsg:Ljava/lang/String;

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/utils/EditFolderDialogHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v6, 0x7f1404b2

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/utils/EditFolderDialogHelper;->mEmptyMsg:Ljava/lang/String;

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/utils/EditFolderDialogHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v6, 0x7f1403e9

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/utils/EditFolderDialogHelper;->mDuplicateMsg:Ljava/lang/String;

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/utils/EditFolderDialogHelper;->mActivity:Landroid/app/Activity;

    invoke-static {v4}, Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;->isSecretModeEnabled(Landroid/app/Activity;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/utils/EditFolderDialogHelper;->mEditFolderView:Landroidx/appcompat/widget/AppCompatEditText;

    invoke-static {v4, v1}, Lcom/sec/android/app/sbrowser/common/utils/ImeUtil;->setPredictionOnIme(Landroid/widget/EditText;Z)V

    :cond_1
    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getTitle()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/utils/EditFolderDialogHelper;->mTitle:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getParentId()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/utils/EditFolderDialogHelper;->mFolderParentId:J

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/utils/EditFolderDialogHelper;->mEditFolderView:Landroidx/appcompat/widget/AppCompatEditText;

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/utils/EditFolderDialogHelper;->mTitle:Ljava/lang/String;

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/utils/EditFolderDialogHelper;->mTextInputLayout:Landroid/widget/LinearLayout;

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/utils/EditFolderDialogHelper;->mTitle:Ljava/lang/String;

    invoke-static {v4, v6}, Lcom/sec/android/app/sbrowser/common/utils/ViewUtil;->setHoverTooltip(Landroid/view/View;Ljava/lang/CharSequence;)V

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/utils/EditFolderDialogHelper;->mTitle:Ljava/lang/String;

    if-eqz v4, :cond_2

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-ne v4, v5, :cond_2

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/utils/EditFolderDialogHelper;->mErrorText:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/utils/EditFolderDialogHelper;->mMsg:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/utils/EditFolderDialogHelper;->mActivity:Landroid/app/Activity;

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/utils/EditFolderDialogHelper;->mEditFolderView:Landroidx/appcompat/widget/AppCompatEditText;

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/utils/EditFolderDialogHelper;->mErrorText:Landroid/widget/TextView;

    invoke-static {v2, v4, v5, v6}, Lcom/sec/android/app/sbrowser/sites/bookmark/utils/ShowBookmarkUtil;->setEditTextLineColor(ZLandroid/app/Activity;Landroid/view/View;Landroid/view/View;)V

    :cond_2
    iget-object v4, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/utils/EditFolderDialogHelper;->mTitle:Ljava/lang/String;

    if-eqz v4, :cond_3

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    :try_start_0
    iget-object v4, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/utils/EditFolderDialogHelper;->mEditFolderView:Landroidx/appcompat/widget/AppCompatEditText;

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/utils/EditFolderDialogHelper;->mTitle:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v4, v1, v5}, Landroid/widget/EditText;->setSelection(II)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v4

    const-string v5, "EditFolderDialogHelper"

    invoke-virtual {v4}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_0
    iget-object v4, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/utils/EditFolderDialogHelper;->mEditFolderView:Landroidx/appcompat/widget/AppCompatEditText;

    new-instance v5, Lcom/sec/android/app/sbrowser/save_image/d;

    invoke-direct {v5, v0, p0}, Lcom/sec/android/app/sbrowser/save_image/d;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/utils/EditFolderDialogHelper;->mEditFolderView:Landroidx/appcompat/widget/AppCompatEditText;

    new-instance v5, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/q;

    invoke-direct {v5, v2, p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/q;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    new-instance v4, Lm/k;

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/utils/EditFolderDialogHelper;->mActivity:Landroid/app/Activity;

    const v6, 0x7f150324

    invoke-direct {v4, v5, v6}, Lm/k;-><init>(Landroid/content/Context;I)V

    iput-object v4, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/utils/EditFolderDialogHelper;->mEditDialog:Lm/k;

    invoke-virtual {v4, v3}, Lm/k;->setView(Landroid/view/View;)Lm/k;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/utils/EditFolderDialogHelper;->mEditDialog:Lm/k;

    const v4, 0x7f1404b5

    invoke-virtual {v3, v4}, Lm/k;->e(I)V

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/utils/EditFolderDialogHelper;->mEditDialog:Lm/k;

    new-instance v4, Lcom/sec/android/app/sbrowser/appshortcut/b;

    invoke-direct {v4, v0, p0}, Lcom/sec/android/app/sbrowser/appshortcut/b;-><init>(ILjava/lang/Object;)V

    const v0, 0x7f140251

    invoke-virtual {v3, v0, v4}, Lm/k;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lm/k;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/utils/EditFolderDialogHelper;->mEditDialog:Lm/k;

    new-instance v3, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/w;

    const/16 v4, 0x15

    invoke-direct {v3, v4}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/w;-><init>(I)V

    const v4, 0x7f140be5

    invoke-virtual {v0, v4, v3}, Lm/k;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lm/k;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/utils/EditFolderDialogHelper;->mEditDialog:Lm/k;

    invoke-virtual {v0}, Lm/k;->create()Lm/l;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/utils/EditFolderDialogHelper;->mDialog:Lm/l;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->setSEP10Dialog(Landroid/app/Dialog;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/utils/EditFolderDialogHelper;->mEditFolderView:Landroidx/appcompat/widget/AppCompatEditText;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/utils/EditFolderDialogHelper;->mTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/utils/EditFolderDialogHelper;->mDialog:Lm/l;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/utils/EditFolderDialogHelper;->mEditFolderView:Landroidx/appcompat/widget/AppCompatEditText;

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/utils/EditFolderDialogHelper;->mDialog:Lm/l;

    const/4 v3, -0x1

    invoke-virtual {v0, v3}, Lm/l;->g(I)Landroid/widget/Button;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/utils/EditFolderDialogHelper;->mPositiveButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/utils/EditFolderDialogHelper;->mPositiveButton:Landroid/widget/Button;

    new-instance v1, LFa/b;

    const/16 v3, 0x10

    invoke-direct {v1, v3, p0, p1}, LFa/b;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/utils/EditFolderDialogHelper;->mDialog:Lm/l;

    new-instance v0, LFa/c;

    const/4 v1, 0x2

    invoke-direct {v0, v1, p0}, LFa/c;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/utils/EditFolderDialogHelper;->mActivity:Landroid/app/Activity;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/utils/ImeUtil;->isAccessoryKeyboardConnected(Landroid/app/Activity;)Z

    move-result p1

    xor-int/2addr p1, v2

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/sites/bookmark/utils/EditFolderDialogHelper;->updateSoftInputMode(Z)V

    :cond_4
    :goto_1
    return-void
.end method
