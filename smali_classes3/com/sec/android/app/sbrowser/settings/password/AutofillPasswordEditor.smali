.class public Lcom/sec/android/app/sbrowser/settings/password/AutofillPasswordEditor;
.super Lcom/sec/android/app/sbrowser/settings/autofill/AutofillEditorBase;
.source "SourceFile"


# instance fields
.field private mFieldChangedListener:Landroid/text/TextWatcher;

.field private mIsAnyFieldEmpty:Z

.field private mIsAuthenticated:Z

.field private mIsPasswordEdited:Z

.field private mIsPasswordVisible:Z

.field private mIsUsernameEdited:Z

.field private mKeyguardManager:Landroid/app/KeyguardManager;

.field private mPassword:Ljava/lang/String;

.field private mPasswordEditText:Lcom/sec/android/app/sbrowser/settings/autofill/AutofillEditText;

.field private mPasswordElement:Ljava/lang/String;

.field private final mPasswordManagerHandler:Lcom/sec/terrace/browser/TerracePasswordUIView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private mSetLockDialog:Lm/l;

.field private mSignonRealm:Ljava/lang/String;

.field private mSignonUrl:Ljava/lang/String;

.field private mUrl:Ljava/lang/String;

.field private mUsername:Ljava/lang/String;

.field private mUsernameEditText:Lcom/sec/android/app/sbrowser/settings/autofill/AutofillEditText;

.field private mUsernameElement:Ljava/lang/String;

.field private mUsernamesOfSameUrl:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillEditorBase;-><init>()V

    new-instance v0, Lcom/sec/terrace/browser/TerracePasswordUIView;

    invoke-direct {v0}, Lcom/sec/terrace/browser/TerracePasswordUIView;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/settings/password/AutofillPasswordEditor;->mPasswordManagerHandler:Lcom/sec/terrace/browser/TerracePasswordUIView;

    return-void
.end method

.method public static bridge synthetic A(Lcom/sec/android/app/sbrowser/settings/password/AutofillPasswordEditor;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/settings/password/AutofillPasswordEditor;->mIsAuthenticated:Z

    return-void
.end method

.method public static bridge synthetic B(Lcom/sec/android/app/sbrowser/settings/password/AutofillPasswordEditor;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/settings/password/AutofillPasswordEditor;->mIsPasswordEdited:Z

    return-void
.end method

.method public static bridge synthetic C(Lcom/sec/android/app/sbrowser/settings/password/AutofillPasswordEditor;)V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/settings/password/AutofillPasswordEditor;->mIsPasswordVisible:Z

    return-void
.end method

.method public static bridge synthetic D(Lcom/sec/android/app/sbrowser/settings/password/AutofillPasswordEditor;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/settings/password/AutofillPasswordEditor;->mIsUsernameEdited:Z

    return-void
.end method

.method public static bridge synthetic E(Lcom/sec/android/app/sbrowser/settings/password/AutofillPasswordEditor;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/password/AutofillPasswordEditor;->showSavedPassword()V

    return-void
.end method

.method public static bridge synthetic F(Lcom/sec/android/app/sbrowser/settings/password/AutofillPasswordEditor;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/password/AutofillPasswordEditor;->showSetLockDialog()V

    return-void
.end method

.method public static synthetic access$000(Lcom/sec/android/app/sbrowser/settings/password/AutofillPasswordEditor;Z)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillEditorBase;->setSaveButtonEnabled(Z)V

    return-void
.end method

.method private createAndPopulateEditFields()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/password/AutofillPasswordEditor;->mUsernameEditText:Lcom/sec/android/app/sbrowser/settings/autofill/AutofillEditText;

    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/password/AutofillPasswordEditor;->mUsername:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/password/AutofillPasswordEditor;->mPasswordEditText:Lcom/sec/android/app/sbrowser/settings/autofill/AutofillEditText;

    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/password/AutofillPasswordEditor;->mPassword:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/password/AutofillPasswordEditor;->setCursorAtLastString()V

    return-void
.end method

.method private synthetic lambda$showSetLockDialog$0(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/authentication/SecureDeviceRegistration;->register(Landroid/app/Activity;)V

    return-void
.end method

.method public static synthetic n(Lcom/sec/android/app/sbrowser/settings/password/AutofillPasswordEditor;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/settings/password/AutofillPasswordEditor;->lambda$showSetLockDialog$0(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static bridge synthetic o(Lcom/sec/android/app/sbrowser/settings/password/AutofillPasswordEditor;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/settings/password/AutofillPasswordEditor;->mIsAnyFieldEmpty:Z

    return p0
.end method

.method public static bridge synthetic p(Lcom/sec/android/app/sbrowser/settings/password/AutofillPasswordEditor;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/settings/password/AutofillPasswordEditor;->mIsAuthenticated:Z

    return p0
.end method

.method public static bridge synthetic q(Lcom/sec/android/app/sbrowser/settings/password/AutofillPasswordEditor;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/settings/password/AutofillPasswordEditor;->mIsPasswordEdited:Z

    return p0
.end method

.method public static bridge synthetic r(Lcom/sec/android/app/sbrowser/settings/password/AutofillPasswordEditor;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/settings/password/AutofillPasswordEditor;->mIsPasswordVisible:Z

    return p0
.end method

.method private registerFieldChangedListener()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/password/AutofillPasswordEditor;->mUsernameEditText:Lcom/sec/android/app/sbrowser/settings/autofill/AutofillEditText;

    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/password/AutofillPasswordEditor;->mFieldChangedListener:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/password/AutofillPasswordEditor;->mPasswordEditText:Lcom/sec/android/app/sbrowser/settings/autofill/AutofillEditText;

    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/password/AutofillPasswordEditor;->mFieldChangedListener:Landroid/text/TextWatcher;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    return-void
.end method

.method public static bridge synthetic s(Lcom/sec/android/app/sbrowser/settings/password/AutofillPasswordEditor;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/settings/password/AutofillPasswordEditor;->mIsUsernameEdited:Z

    return p0
.end method

.method private setCursorAtLastString()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/password/AutofillPasswordEditor;->mUsernameEditText:Lcom/sec/android/app/sbrowser/settings/autofill/AutofillEditText;

    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/password/AutofillPasswordEditor;->mUsernameEditText:Lcom/sec/android/app/sbrowser/settings/autofill/AutofillEditText;

    invoke-virtual {v1}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/password/AutofillPasswordEditor;->mPasswordEditText:Lcom/sec/android/app/sbrowser/settings/autofill/AutofillEditText;

    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/password/AutofillPasswordEditor;->mPasswordEditText:Lcom/sec/android/app/sbrowser/settings/autofill/AutofillEditText;

    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/TextView;->length()I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->setSelection(I)V

    return-void
.end method

.method private showSavedPassword()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/password/AutofillPasswordEditor;->mPasswordEditText:Lcom/sec/android/app/sbrowser/settings/autofill/AutofillEditText;

    const v1, 0x7f140158

    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setEndIconContentDescription(I)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/settings/password/AutofillPasswordEditor;->mIsPasswordVisible:Z

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/password/AutofillPasswordEditor;->mPasswordEditText:Lcom/sec/android/app/sbrowser/settings/autofill/AutofillEditText;

    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/password/AutofillPasswordEditor;->mPasswordEditText:Lcom/sec/android/app/sbrowser/settings/autofill/AutofillEditText;

    invoke-virtual {v1}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v1

    const/16 v2, 0x90

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setInputType(I)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/password/AutofillPasswordEditor;->mPasswordEditText:Lcom/sec/android/app/sbrowser/settings/autofill/AutofillEditText;

    invoke-virtual {v1}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/password/AutofillPasswordEditor;->mPasswordEditText:Lcom/sec/android/app/sbrowser/settings/autofill/AutofillEditText;

    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/TextView;->length()I

    move-result p0

    invoke-static {v0, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    invoke-virtual {v1, p0}, Landroid/widget/EditText;->setSelection(I)V

    return-void
.end method

.method private showSetLockDialog()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/password/AutofillPasswordEditor;->mSetLockDialog:Lm/l;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object v0

    if-nez v0, :cond_2

    :cond_1
    return-void

    :cond_2
    new-instance v0, Lm/k;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object v1

    const v2, 0x7f1501c5

    invoke-direct {v0, v1, v2}, Lm/k;-><init>(Landroid/content/Context;I)V

    const v1, 0x7f140eb8

    invoke-virtual {v0, v1}, Lm/k;->e(I)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/common/device/TabletDeviceUtils;->shouldUseTabletDid(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_3

    const v1, 0x7f140eb6

    goto :goto_0

    :cond_3
    const v1, 0x7f140eb5

    :goto_0
    invoke-virtual {v0, v1}, Lm/k;->a(I)V

    new-instance v1, Lcom/sec/android/app/sbrowser/settings/password/b;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/sec/android/app/sbrowser/settings/password/b;-><init>(Landroidx/fragment/app/Fragment;I)V

    const v2, 0x7f140eb7

    invoke-virtual {v0, v2, v1}, Lm/k;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lm/k;

    move-result-object v0

    const v1, 0x7f1402ac

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lm/k;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lm/k;

    move-result-object v0

    invoke-virtual {v0}, Lm/k;->create()Lm/l;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/settings/password/AutofillPasswordEditor;->mSetLockDialog:Lm/l;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->setSEP10Dialog(Landroid/app/Dialog;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/password/AutofillPasswordEditor;->mSetLockDialog:Lm/l;

    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method public static bridge synthetic t(Lcom/sec/android/app/sbrowser/settings/password/AutofillPasswordEditor;)Landroid/app/KeyguardManager;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/password/AutofillPasswordEditor;->mKeyguardManager:Landroid/app/KeyguardManager;

    return-object p0
.end method

.method public static bridge synthetic u(Lcom/sec/android/app/sbrowser/settings/password/AutofillPasswordEditor;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/password/AutofillPasswordEditor;->mPassword:Ljava/lang/String;

    return-object p0
.end method

.method public static bridge synthetic v(Lcom/sec/android/app/sbrowser/settings/password/AutofillPasswordEditor;)Lcom/sec/android/app/sbrowser/settings/autofill/AutofillEditText;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/password/AutofillPasswordEditor;->mPasswordEditText:Lcom/sec/android/app/sbrowser/settings/autofill/AutofillEditText;

    return-object p0
.end method

.method public static bridge synthetic w(Lcom/sec/android/app/sbrowser/settings/password/AutofillPasswordEditor;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/password/AutofillPasswordEditor;->mUsername:Ljava/lang/String;

    return-object p0
.end method

.method public static bridge synthetic x(Lcom/sec/android/app/sbrowser/settings/password/AutofillPasswordEditor;)Lcom/sec/android/app/sbrowser/settings/autofill/AutofillEditText;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/password/AutofillPasswordEditor;->mUsernameEditText:Lcom/sec/android/app/sbrowser/settings/autofill/AutofillEditText;

    return-object p0
.end method

.method public static bridge synthetic y(Lcom/sec/android/app/sbrowser/settings/password/AutofillPasswordEditor;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/password/AutofillPasswordEditor;->mUsernamesOfSameUrl:Ljava/util/ArrayList;

    return-object p0
.end method

.method public static bridge synthetic z(Lcom/sec/android/app/sbrowser/settings/password/AutofillPasswordEditor;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/settings/password/AutofillPasswordEditor;->mIsAnyFieldEmpty:Z

    return-void
.end method


# virtual methods
.method public cancelItemFromButtonForSALogging()V
    .locals 0

    return-void
.end method

.method public cancelItemFromPopupForSALogging()V
    .locals 0

    return-void
.end method

.method public dialogMessageFromEditor()I
    .locals 0

    const p0, 0x7f140100

    return p0
.end method

.method public discardItemFromPoupForSALogging()V
    .locals 0

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lw2/A;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/settings/password/AutofillPasswordEditor;->mIsAuthenticated:Z

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object p1

    const-string v0, "keyguard"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/KeyguardManager;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/password/AutofillPasswordEditor;->mKeyguardManager:Landroid/app/KeyguardManager;

    :cond_0
    new-instance p1, Lcom/sec/android/app/sbrowser/settings/password/AutofillPasswordEditor$1;

    invoke-direct {p1, p0}, Lcom/sec/android/app/sbrowser/settings/password/AutofillPasswordEditor$1;-><init>(Lcom/sec/android/app/sbrowser/settings/password/AutofillPasswordEditor;)V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/password/AutofillPasswordEditor;->mFieldChangedListener:Landroid/text/TextWatcher;

    return-void
.end method

.method public onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5

    invoke-super {p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillEditorBase;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p3

    const-string v0, "TerraceSavedPasswordEntry"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/sec/terrace/browser/TerracePasswordUIView$TerraceSavedPasswordEntry;

    const-string v1, "UsernamesOfSameUrl"

    invoke-virtual {p3, v1}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p3

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/settings/password/AutofillPasswordEditor;->mUsernamesOfSameUrl:Ljava/util/ArrayList;

    invoke-virtual {v0}, Lcom/sec/terrace/browser/TerracePasswordUIView$TerraceSavedPasswordEntry;->getUrl()Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/settings/password/AutofillPasswordEditor;->mUrl:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/sec/terrace/browser/TerracePasswordUIView$TerraceSavedPasswordEntry;->getUserName()Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/settings/password/AutofillPasswordEditor;->mUsername:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/sec/terrace/browser/TerracePasswordUIView$TerraceSavedPasswordEntry;->getPassword()Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/settings/password/AutofillPasswordEditor;->mPassword:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/sec/terrace/browser/TerracePasswordUIView$TerraceSavedPasswordEntry;->getUsernameElement()Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/settings/password/AutofillPasswordEditor;->mUsernameElement:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/sec/terrace/browser/TerracePasswordUIView$TerraceSavedPasswordEntry;->getPasswordElement()Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/settings/password/AutofillPasswordEditor;->mPasswordElement:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/sec/terrace/browser/TerracePasswordUIView$TerraceSavedPasswordEntry;->getSignonUrl()Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/settings/password/AutofillPasswordEditor;->mSignonUrl:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/sec/terrace/browser/TerracePasswordUIView$TerraceSavedPasswordEntry;->getSignonRealm()Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/settings/password/AutofillPasswordEditor;->mSignonRealm:Ljava/lang/String;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object p3

    if-eqz p3, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object p3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/password/AutofillPasswordEditor;->mUrl:Ljava/lang/String;

    invoke-virtual {p3, v0}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    :cond_0
    const p3, 0x7f0b0493

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    const v1, 0x7f0e0045

    const/4 v2, 0x1

    invoke-virtual {p1, v1, v0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const v0, 0x7f0b0146

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    const v1, 0x7f0b012f

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    const v1, 0x7f0b048d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillEditText;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/settings/password/AutofillPasswordEditor;->mUsernameEditText:Lcom/sec/android/app/sbrowser/settings/autofill/AutofillEditText;

    sget-object v3, Lcom/sec/android/app/sbrowser/common/constants/autofill/AutofillConstants$LabelForFilter;->USERNAME_TYPE:Lcom/sec/android/app/sbrowser/common/constants/autofill/AutofillConstants$LabelForFilter;

    invoke-virtual {v0, v3}, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillEditText;->setAutofillEditText(Lcom/sec/android/app/sbrowser/common/constants/autofill/AutofillConstants$LabelForFilter;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/password/AutofillPasswordEditor;->mUsernameEditText:Lcom/sec/android/app/sbrowser/settings/autofill/AutofillEditText;

    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setInputType(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/password/AutofillPasswordEditor;->mUsernameEditText:Lcom/sec/android/app/sbrowser/settings/autofill/AutofillEditText;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f1401c5

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/sec/android/app/sbrowser/payments/standard/widget/CustomTextInputLayout;->setHint(Ljava/lang/CharSequence;)V

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillEditText;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/settings/password/AutofillPasswordEditor;->mPasswordEditText:Lcom/sec/android/app/sbrowser/settings/autofill/AutofillEditText;

    sget-object v1, Lcom/sec/android/app/sbrowser/common/constants/autofill/AutofillConstants$LabelForFilter;->PASSWORD_TYPE:Lcom/sec/android/app/sbrowser/common/constants/autofill/AutofillConstants$LabelForFilter;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillEditText;->setAutofillEditText(Lcom/sec/android/app/sbrowser/common/constants/autofill/AutofillConstants$LabelForFilter;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/password/AutofillPasswordEditor;->mPasswordEditText:Lcom/sec/android/app/sbrowser/settings/autofill/AutofillEditText;

    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    const/16 v1, 0x81

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setInputType(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/password/AutofillPasswordEditor;->mPasswordEditText:Lcom/sec/android/app/sbrowser/settings/autofill/AutofillEditText;

    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setImeOptions(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/password/AutofillPasswordEditor;->mPasswordEditText:Lcom/sec/android/app/sbrowser/settings/autofill/AutofillEditText;

    invoke-virtual {v0, v2}, Lcom/google/android/material/textfield/TextInputLayout;->setEndIconMode(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/password/AutofillPasswordEditor;->mPasswordEditText:Lcom/sec/android/app/sbrowser/settings/autofill/AutofillEditText;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f140169

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/payments/standard/widget/CustomTextInputLayout;->setHint(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/password/AutofillPasswordEditor;->mPasswordEditText:Lcom/sec/android/app/sbrowser/settings/autofill/AutofillEditText;

    const/16 v1, 0x50

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/password/AutofillPasswordEditor;->mPasswordEditText:Lcom/sec/android/app/sbrowser/settings/autofill/AutofillEditText;

    new-instance v1, Lcom/sec/android/app/sbrowser/settings/password/AutofillPasswordEditor$2;

    invoke-direct {v1, p0}, Lcom/sec/android/app/sbrowser/settings/password/AutofillPasswordEditor$2;-><init>(Lcom/sec/android/app/sbrowser/settings/password/AutofillPasswordEditor;)V

    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setEndIconOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0x19

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v1, v3, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    const v1, 0x7f0b0d41

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const v0, 0x7f0b0d49

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/AppCompatEditText;

    const/16 v0, 0x10

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setGravity(I)V

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object p3

    if-eqz p3, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p3

    check-cast p3, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v0, 0x2

    invoke-virtual {p3, v0}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    iput v2, p3, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070130

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-virtual {p1, v3, v0, v3, v0}, Landroid/view/View;->setPadding(IIII)V

    invoke-virtual {p1, p3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/password/AutofillPasswordEditor;->createAndPopulateEditFields()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/password/AutofillPasswordEditor;->registerFieldChangedListener()V

    return-object p2
.end method

.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    return-void
.end method

.method public onMultiWindowModeChanged(Z)V
    .locals 0

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onMultiWindowModeChanged(Z)V

    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;)V"
        }
    .end annotation

    return-void
.end method

.method public onResume()V
    .locals 2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/utils/ImeUtil;->isAccessoryKeyboardConnected(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    goto :goto_0

    :cond_0
    const/4 v0, 0x5

    :goto_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setSoftInputMode(I)V

    :cond_1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    return-void
.end method

.method public onStart()V
    .locals 0

    invoke-super {p0}, Lw2/A;->onStart()V

    return-void
.end method

.method public saveEntry()Z
    .locals 5

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/password/AutofillPasswordEditor;->mUsernameEditText:Lcom/sec/android/app/sbrowser/settings/autofill/AutofillEditText;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/password/AutofillPasswordEditor;->mPasswordEditText:Lcom/sec/android/app/sbrowser/settings/autofill/AutofillEditText;

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/password/AutofillPasswordEditor;->mPasswordEditText:Lcom/sec/android/app/sbrowser/settings/autofill/AutofillEditText;

    invoke-virtual {v1}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/sec/android/app/sbrowser/autofill/password/NativePasswordStore;->getInstance()Lcom/sec/android/app/sbrowser/autofill/password/NativePasswordStore;

    move-result-object v2

    new-instance v3, Lcom/sec/terrace/services/autofill/password/mojom/TerracePasswordForm;

    invoke-direct {v3}, Lcom/sec/terrace/services/autofill/password/mojom/TerracePasswordForm;-><init>()V

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/settings/password/AutofillPasswordEditor;->mSignonRealm:Ljava/lang/String;

    iput-object v4, v3, Lcom/sec/terrace/services/autofill/password/mojom/TerracePasswordForm;->signonRealm:Ljava/lang/String;

    iput-object v1, v3, Lcom/sec/terrace/services/autofill/password/mojom/TerracePasswordForm;->passwordValue:Ljava/lang/String;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/password/AutofillPasswordEditor;->mUsernameElement:Ljava/lang/String;

    iput-object v1, v3, Lcom/sec/terrace/services/autofill/password/mojom/TerracePasswordForm;->usernameElement:Ljava/lang/String;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/password/AutofillPasswordEditor;->mPasswordElement:Ljava/lang/String;

    iput-object v1, v3, Lcom/sec/terrace/services/autofill/password/mojom/TerracePasswordForm;->passwordElement:Ljava/lang/String;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/password/AutofillPasswordEditor;->mSignonUrl:Ljava/lang/String;

    iput-object v1, v3, Lcom/sec/terrace/services/autofill/password/mojom/TerracePasswordForm;->origin:Ljava/lang/String;

    new-instance v1, Ljava/util/concurrent/CompletableFuture;

    invoke-direct {v1}, Ljava/util/concurrent/CompletableFuture;-><init>()V

    iget-boolean v4, p0, Lcom/sec/android/app/sbrowser/settings/password/AutofillPasswordEditor;->mIsUsernameEdited:Z

    if-eqz v4, :cond_1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/password/AutofillPasswordEditor;->mUsername:Ljava/lang/String;

    iput-object p0, v3, Lcom/sec/terrace/services/autofill/password/mojom/TerracePasswordForm;->usernameValue:Ljava/lang/String;

    new-instance p0, Lcom/sec/android/app/sbrowser/autofill/password/c;

    const/4 v4, 0x2

    invoke-direct {p0, v1, v4}, Lcom/sec/android/app/sbrowser/autofill/password/c;-><init>(Ljava/util/concurrent/CompletableFuture;I)V

    invoke-virtual {v2, v3, p0}, Lcom/sec/android/app/sbrowser/autofill/password/NativePasswordStore;->removeLogin(Lcom/sec/terrace/services/autofill/password/mojom/TerracePasswordForm;Lcom/sec/terrace/services/autofill/password/mojom/TerracePasswordStore$RemoveLogin_Response;)V

    iput-object v0, v3, Lcom/sec/terrace/services/autofill/password/mojom/TerracePasswordForm;->usernameValue:Ljava/lang/String;

    new-instance p0, Lcom/sec/android/app/sbrowser/settings/password/a;

    const/4 v0, 0x0

    invoke-direct {p0, v1, v0}, Lcom/sec/android/app/sbrowser/settings/password/a;-><init>(Ljava/util/concurrent/CompletableFuture;I)V

    invoke-virtual {v2, v3, p0}, Lcom/sec/android/app/sbrowser/autofill/password/NativePasswordStore;->addLogin(Lcom/sec/terrace/services/autofill/password/mojom/TerracePasswordForm;Lcom/sec/terrace/services/autofill/password/mojom/TerracePasswordStore$AddLogin_Response;)V

    goto :goto_0

    :cond_1
    iput-object v0, v3, Lcom/sec/terrace/services/autofill/password/mojom/TerracePasswordForm;->usernameValue:Ljava/lang/String;

    new-instance p0, Lcom/sec/android/app/sbrowser/settings/password/a;

    const/4 v0, 0x1

    invoke-direct {p0, v1, v0}, Lcom/sec/android/app/sbrowser/settings/password/a;-><init>(Ljava/util/concurrent/CompletableFuture;I)V

    invoke-virtual {v2, v3, p0}, Lcom/sec/android/app/sbrowser/autofill/password/NativePasswordStore;->updateLogin(Lcom/sec/terrace/services/autofill/password/mojom/TerracePasswordForm;Lcom/sec/terrace/services/autofill/password/mojom/TerracePasswordStore$UpdateLogin_Response;)V

    :goto_0
    const/4 p0, 0x1

    return p0

    :cond_2
    :goto_1
    const/4 p0, 0x0

    return p0
.end method

.method public saveItemFromButtonForSALogging()V
    .locals 0

    return-void
.end method

.method public saveItemFromPopupForSALogging()V
    .locals 0

    return-void
.end method
