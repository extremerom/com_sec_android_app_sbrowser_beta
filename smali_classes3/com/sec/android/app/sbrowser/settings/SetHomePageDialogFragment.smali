.class public Lcom/sec/android/app/sbrowser/settings/SetHomePageDialogFragment;
.super Landroidx/fragment/app/u;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Lcom/sec/android/app/sbrowser/common/logging/SALogging$ISALoggingDelegate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/settings/SetHomePageDialogFragment$OnDialogResultListener;
    }
.end annotation


# instance fields
.field private mAlertDialog:Lm/l;

.field private mCurrentUrl:Ljava/lang/String;

.field private mDialogResultListener:Lcom/sec/android/app/sbrowser/settings/SetHomePageDialogFragment$OnDialogResultListener;

.field private mEditText:Landroid/widget/EditText;

.field private mHomepageFragment:Lcom/sec/android/app/sbrowser/settings/HomePagePreferenceFragment;

.field private mLengthFilter:Landroid/text/InputFilter$LengthFilter;

.field private mSetEditText:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroidx/fragment/app/u;-><init>()V

    new-instance v0, Lcom/sec/android/app/sbrowser/settings/SetHomePageDialogFragment$1;

    const/16 v1, 0x800

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/sbrowser/settings/SetHomePageDialogFragment$1;-><init>(Lcom/sec/android/app/sbrowser/settings/SetHomePageDialogFragment;I)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/settings/SetHomePageDialogFragment;->mLengthFilter:Landroid/text/InputFilter$LengthFilter;

    return-void
.end method

.method public constructor <init>(Lcom/sec/android/app/sbrowser/settings/HomePagePreferenceFragment;Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Landroidx/fragment/app/u;-><init>()V

    new-instance v0, Lcom/sec/android/app/sbrowser/settings/SetHomePageDialogFragment$1;

    const/16 v1, 0x800

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/sbrowser/settings/SetHomePageDialogFragment$1;-><init>(Lcom/sec/android/app/sbrowser/settings/SetHomePageDialogFragment;I)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/settings/SetHomePageDialogFragment;->mLengthFilter:Landroid/text/InputFilter$LengthFilter;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/SetHomePageDialogFragment;->mHomepageFragment:Lcom/sec/android/app/sbrowser/settings/HomePagePreferenceFragment;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/settings/SetHomePageDialogFragment;->mCurrentUrl:Ljava/lang/String;

    return-void
.end method

.method private getHomePage()Ljava/lang/String;
    .locals 3

    invoke-static {}, Lcom/sec/android/app/sbrowser/homepage/HomePageSettings;->getInstance()Lcom/sec/android/app/sbrowser/homepage/HomePageSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/homepage/HomePageSettings;->getHomePageType()Ljava/lang/String;

    move-result-object v1

    const-string v2, "other_page"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/homepage/HomePageSettings;->getHomePage()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string v1, "current_page"

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/homepage/HomePageSettings;->getHomePageType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/SetHomePageDialogFragment;->mCurrentUrl:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/homepage/HomePageSettings;->getHomePage()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_1

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/homepage/HomePageSettings;->getHomePage()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/homepage/HomePageSettings;->getOtherHomePage()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic i(Lcom/sec/android/app/sbrowser/settings/SetHomePageDialogFragment;Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/settings/SetHomePageDialogFragment;->lambda$onCreateDialog$0(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public static isSecretModeEnabled(Landroid/app/Activity;)Z
    .locals 0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;->isSecretModeEnabled(Landroid/app/Activity;)Z

    move-result p0

    return p0
.end method

.method public static synthetic j(Lcom/sec/android/app/sbrowser/settings/SetHomePageDialogFragment;Landroid/content/DialogInterface;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/settings/SetHomePageDialogFragment;->lambda$onCreateDialog$2(Landroid/content/DialogInterface;)V

    return-void
.end method

.method public static synthetic k(Lcom/sec/android/app/sbrowser/settings/SetHomePageDialogFragment;Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/settings/SetHomePageDialogFragment;->lambda$onCreateDialog$1(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic l(Lcom/sec/android/app/sbrowser/settings/SetHomePageDialogFragment;)Lm/l;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/SetHomePageDialogFragment;->mAlertDialog:Lm/l;

    return-object p0
.end method

.method private synthetic lambda$onCreateDialog$0(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result p1

    const/16 p3, 0x42

    if-eq p1, p3, :cond_1

    :cond_0
    const/4 p1, 0x6

    if-ne p2, p1, :cond_2

    :cond_1
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/SetHomePageDialogFragment;->mAlertDialog:Lm/l;

    const/4 p1, -0x1

    invoke-virtual {p0, p1}, Lm/l;->g(I)Landroid/widget/Button;

    move-result-object p0

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->performClick()Z

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method private synthetic lambda$onCreateDialog$1(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 0

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    if-nez p1, :cond_1

    const/16 p1, 0x42

    if-ne p2, p1, :cond_1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/SetHomePageDialogFragment;->mAlertDialog:Lm/l;

    const/4 p1, -0x1

    invoke-virtual {p0, p1}, Lm/l;->g(I)Landroid/widget/Button;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->performClick()Z

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private synthetic lambda$onCreateDialog$2(Landroid/content/DialogInterface;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/SetHomePageDialogFragment;->mSetEditText:Ljava/lang/String;

    if-nez p0, :cond_0

    check-cast p1, Lm/l;

    if-eqz p1, :cond_0

    const/4 p0, -0x1

    invoke-virtual {p1, p0}, Lm/l;->g(I)Landroid/widget/Button;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/View;->setEnabled(Z)V

    :cond_0
    return-void
.end method

.method public static bridge synthetic m(Lcom/sec/android/app/sbrowser/settings/SetHomePageDialogFragment;)Landroid/widget/EditText;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/SetHomePageDialogFragment;->mEditText:Landroid/widget/EditText;

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
    or-int/lit8 p1, p1, 0x20

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/SetHomePageDialogFragment;->mAlertDialog:Lm/l;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    if-ne v0, p1, :cond_1

    return-void

    :cond_1
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/SetHomePageDialogFragment;->mAlertDialog:Lm/l;

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/view/Window;->setSoftInputMode(I)V

    return-void
.end method


# virtual methods
.method public getOtherPage()Ljava/lang/String;
    .locals 2

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/SetHomePageDialogFragment;->mEditText:Landroid/widget/EditText;

    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "internet-native://newtab/"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_0
    const-string v0, "about:blank"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-object v0

    :cond_1
    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/utils/UrlUtils;->getFilteredUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x800

    if-le v0, v1, :cond_2

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :cond_2
    return-object p0
.end method

.method public getScreenID()Ljava/lang/String;
    .locals 0

    const-string p0, "502"

    return-object p0
.end method

.method public lengthLimitToast(I)V
    .locals 2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f140677

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object p0

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    const/4 p1, -0x1

    if-ne p2, p1, :cond_0

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/SetHomePageDialogFragment;->mDialogResultListener:Lcom/sec/android/app/sbrowser/settings/SetHomePageDialogFragment$OnDialogResultListener;

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/settings/SetHomePageDialogFragment$OnDialogResultListener;->onPositiveClick()V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/SetHomePageDialogFragment;->getScreenID()Ljava/lang/String;

    move-result-object p0

    const-string p1, "5053"

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 p1, -0x2

    if-ne p2, p1, :cond_1

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/SetHomePageDialogFragment;->mDialogResultListener:Lcom/sec/android/app/sbrowser/settings/SetHomePageDialogFragment$OnDialogResultListener;

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/settings/SetHomePageDialogFragment$OnDialogResultListener;->onNegativeClick()V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/SetHomePageDialogFragment;->getScreenID()Ljava/lang/String;

    move-result-object p0

    const-string p1, "5052"

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Landroidx/fragment/app/u;->onCreate(Landroid/os/Bundle;)V

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_0
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/settings/SetHomePageDialogFragment;->mHomepageFragment:Lcom/sec/android/app/sbrowser/settings/HomePagePreferenceFragment;

    if-eqz v2, :cond_3

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object v2

    const v3, 0x7f0e0459

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    const v3, 0x7f0b048d

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    iput-object v3, p0, Lcom/sec/android/app/sbrowser/settings/SetHomePageDialogFragment;->mEditText:Landroid/widget/EditText;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/SetHomePageDialogFragment;->getHomePage()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/android/app/sbrowser/settings/SetHomePageDialogFragment;->mSetEditText:Ljava/lang/String;

    if-eqz p1, :cond_0

    const-string v3, "sSetEditText"

    const-string v4, ""

    invoke-virtual {p1, v3, v4}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/SetHomePageDialogFragment;->mSetEditText:Ljava/lang/String;

    :cond_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;->isDarkModeEnabled()Z

    move-result p1

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/settings/SetHomePageDialogFragment;->mEditText:Landroid/widget/EditText;

    const v4, 0x7f14007a

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setHint(I)V

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/settings/SetHomePageDialogFragment;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/view/View;->requestFocus()Z

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/SetHomePageDialogFragment;->mEditText:Landroid/widget/EditText;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/J;

    move-result-object v3

    const v4, 0x7f0603da

    invoke-virtual {v3, v4}, Landroid/content/Context;->getColor(I)I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setHintTextColor(I)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/SetHomePageDialogFragment;->mEditText:Landroid/widget/EditText;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/J;

    move-result-object v3

    const v4, 0x7f060bbb

    invoke-virtual {v3, v4}, Landroid/content/Context;->getColor(I)I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/SetHomePageDialogFragment;->mEditText:Landroid/widget/EditText;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/J;

    move-result-object v3

    const v4, 0x7f06017a

    invoke-virtual {v3, v4}, Landroid/content/Context;->getColor(I)I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setHintTextColor(I)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/SetHomePageDialogFragment;->mEditText:Landroid/widget/EditText;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/J;

    move-result-object v3

    const v4, 0x7f060bbc

    invoke-virtual {v3, v4}, Landroid/content/Context;->getColor(I)I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_0
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/SetHomePageDialogFragment;->mEditText:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/settings/SetHomePageDialogFragment;->mSetEditText:Ljava/lang/String;

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/SetHomePageDialogFragment;->mEditText:Landroid/widget/EditText;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/settings/SetHomePageDialogFragment;->mEditText:Landroid/widget/EditText;

    invoke-static {v3, v4}, Lcom/sec/android/app/sbrowser/common/device/InputFilterUtil;->getEmojiExcludeFilter(Landroid/content/Context;Landroid/view/View;)Landroid/text/InputFilter;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/settings/SetHomePageDialogFragment;->mLengthFilter:Landroid/text/InputFilter$LengthFilter;

    const/4 v5, 0x2

    new-array v5, v5, [Landroid/text/InputFilter;

    aput-object v3, v5, v1

    aput-object v4, v5, v0

    invoke-virtual {p1, v5}, Landroid/widget/TextView;->setFilters([Landroid/text/InputFilter;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/SetHomePageDialogFragment;->mEditText:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/widget/EditText;->setSelection(I)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object p1

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/settings/SetHomePageDialogFragment;->isSecretModeEnabled(Landroid/app/Activity;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/SetHomePageDialogFragment;->mEditText:Landroid/widget/EditText;

    invoke-static {p1, v1}, Lcom/sec/android/app/sbrowser/common/utils/ImeUtil;->setPredictionOnIme(Landroid/widget/EditText;Z)V

    :cond_2
    new-instance p1, Lm/k;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object v1

    const v3, 0x7f1501c5

    invoke-direct {p1, v1, v3}, Lm/k;-><init>(Landroid/content/Context;I)V

    invoke-virtual {p1, v2}, Lm/k;->setView(Landroid/view/View;)Lm/k;

    move-result-object p1

    iget-object v1, p1, Lm/k;->a:Lm/h;

    iput-boolean v0, v1, Lm/h;->m:Z

    const v0, 0x7f1409e6

    invoke-virtual {p1, v0}, Lm/k;->e(I)V

    const v0, 0x7f140dbb

    invoke-virtual {p1, v0, p0}, Lm/k;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lm/k;

    move-result-object p1

    const v0, 0x7f1402ac

    invoke-virtual {p1, v0, p0}, Lm/k;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lm/k;

    move-result-object p1

    invoke-virtual {p1}, Lm/k;->create()Lm/l;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/SetHomePageDialogFragment;->mAlertDialog:Lm/l;

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/SetHomePageDialogFragment;->mEditText:Landroid/widget/EditText;

    new-instance v0, Lcom/sec/android/app/sbrowser/settings/SetHomePageDialogFragment$2;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/settings/SetHomePageDialogFragment$2;-><init>(Lcom/sec/android/app/sbrowser/settings/SetHomePageDialogFragment;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/SetHomePageDialogFragment;->mEditText:Landroid/widget/EditText;

    new-instance v0, Lcom/sec/android/app/sbrowser/settings/B;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/settings/B;-><init>(Lcom/sec/android/app/sbrowser/settings/SetHomePageDialogFragment;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/SetHomePageDialogFragment;->mAlertDialog:Lm/l;

    new-instance v0, Lcom/sec/android/app/sbrowser/settings/C;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/settings/C;-><init>(Lcom/sec/android/app/sbrowser/settings/SetHomePageDialogFragment;)V

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/SetHomePageDialogFragment;->mAlertDialog:Lm/l;

    new-instance v0, Lcom/sec/android/app/sbrowser/settings/D;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/settings/D;-><init>(Lcom/sec/android/app/sbrowser/settings/SetHomePageDialogFragment;)V

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/SetHomePageDialogFragment;->mAlertDialog:Lm/l;

    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x50

    invoke-virtual {p1, v0}, Landroid/view/Window;->setGravity(I)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/SetHomePageDialogFragment;->mAlertDialog:Lm/l;

    return-object p0

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "null fragment is not supported"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/SetHomePageDialogFragment;->mEditText:Landroid/widget/EditText;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/utils/ImeUtil;->hideKeyboard(Landroid/view/View;)Z

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/SetHomePageDialogFragment;->mDialogResultListener:Lcom/sec/android/app/sbrowser/settings/SetHomePageDialogFragment$OnDialogResultListener;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/settings/SetHomePageDialogFragment$OnDialogResultListener;->onDismiss()V

    invoke-super {p0, p1}, Landroidx/fragment/app/u;->onDismiss(Landroid/content/DialogInterface;)V

    return-void
.end method

.method public onResume()V
    .locals 2

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/SetHomePageDialogFragment;->mEditText:Landroid/widget/EditText;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/SetHomePageDialogFragment;->mAlertDialog:Lm/l;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/utils/ImeUtil;->isAccessoryKeyboardConnected(Landroid/app/Activity;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/settings/SetHomePageDialogFragment;->updateSoftInputMode(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Landroidx/fragment/app/u;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string v0, "sSetEditText"

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/SetHomePageDialogFragment;->mSetEditText:Ljava/lang/String;

    invoke-virtual {p1, v0, p0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setOnDialogResultListener(Lcom/sec/android/app/sbrowser/settings/SetHomePageDialogFragment$OnDialogResultListener;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/SetHomePageDialogFragment;->mDialogResultListener:Lcom/sec/android/app/sbrowser/settings/SetHomePageDialogFragment$OnDialogResultListener;

    return-void
.end method
