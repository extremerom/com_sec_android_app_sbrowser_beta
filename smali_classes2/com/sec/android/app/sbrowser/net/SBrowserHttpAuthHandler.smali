.class public Lcom/sec/android/app/sbrowser/net/SBrowserHttpAuthHandler;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static sSBrowserHttpAuthHandlerForTests:Lcom/sec/android/app/sbrowser/net/SBrowserHttpAuthHandler;


# instance fields
.field private final mAuthHandler:Lcom/sec/terrace/browser/TerraceHttpAuthHandler;

.field private final mContext:Landroid/content/Context;

.field private mDialog:Lm/l;

.field private mIsTestMode:Z

.field private mPasswordView:Landroid/widget/EditText;

.field private mTabID:I

.field private mTestTab:Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

.field private mUsernameView:Landroid/widget/EditText;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/sec/terrace/browser/TerraceHttpAuthHandler;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/net/SBrowserHttpAuthHandler;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/net/SBrowserHttpAuthHandler;->mAuthHandler:Lcom/sec/terrace/browser/TerraceHttpAuthHandler;

    return-void
.end method

.method public static bridge synthetic a(Lcom/sec/android/app/sbrowser/net/SBrowserHttpAuthHandler;)Lcom/sec/terrace/browser/TerraceHttpAuthHandler;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/net/SBrowserHttpAuthHandler;->mAuthHandler:Lcom/sec/terrace/browser/TerraceHttpAuthHandler;

    return-object p0
.end method

.method public static bridge synthetic b(Lcom/sec/android/app/sbrowser/net/SBrowserHttpAuthHandler;)Lm/l;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/net/SBrowserHttpAuthHandler;->mDialog:Lm/l;

    return-object p0
.end method

.method public static bridge synthetic c(Lcom/sec/android/app/sbrowser/net/SBrowserHttpAuthHandler;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/net/SBrowserHttpAuthHandler;->getPwd()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic d(Lcom/sec/android/app/sbrowser/net/SBrowserHttpAuthHandler;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/net/SBrowserHttpAuthHandler;->getUname()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static get(Landroid/content/Context;Lcom/sec/terrace/browser/TerraceHttpAuthHandler;)Lcom/sec/android/app/sbrowser/net/SBrowserHttpAuthHandler;
    .locals 1

    sget-object v0, Lcom/sec/android/app/sbrowser/net/SBrowserHttpAuthHandler;->sSBrowserHttpAuthHandlerForTests:Lcom/sec/android/app/sbrowser/net/SBrowserHttpAuthHandler;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sec/android/app/sbrowser/net/SBrowserHttpAuthHandler;

    invoke-direct {v0, p0, p1}, Lcom/sec/android/app/sbrowser/net/SBrowserHttpAuthHandler;-><init>(Landroid/content/Context;Lcom/sec/terrace/browser/TerraceHttpAuthHandler;)V

    :cond_0
    return-object v0
.end method

.method private getPwd()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/net/SBrowserHttpAuthHandler;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getUname()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/net/SBrowserHttpAuthHandler;->mUsernameView:Landroid/widget/EditText;

    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static setHttpAuthObserver(Lcom/sec/android/app/sbrowser/net/SBrowserHttpAuthObserver;)V
    .locals 0

    invoke-static {p0}, Lcom/sec/terrace/browser/TerraceHttpAuthHandler;->setHttpAuthObserver(Lcom/sec/terrace/browser/TerraceHttpAuthHandler$HttpAuthObserver;)V

    return-void
.end method


# virtual methods
.method public createDialog()V
    .locals 6

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/net/SBrowserHttpAuthHandler;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0e045e

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0b0dfe

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/net/SBrowserHttpAuthHandler;->mUsernameView:Landroid/widget/EditText;

    const v1, 0x7f0b0887

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/net/SBrowserHttpAuthHandler;->mPasswordView:Landroid/widget/EditText;

    new-instance v2, Lcom/sec/android/app/sbrowser/net/SBrowserHttpAuthHandler$1;

    invoke-direct {v2, p0}, Lcom/sec/android/app/sbrowser/net/SBrowserHttpAuthHandler$1;-><init>(Lcom/sec/android/app/sbrowser/net/SBrowserHttpAuthHandler;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    const v1, 0x7f0b0763

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f0b0e00

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f0b088a

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/net/SBrowserHttpAuthHandler;->mAuthHandler:Lcom/sec/terrace/browser/TerraceHttpAuthHandler;

    invoke-virtual {v4}, Lcom/sec/terrace/browser/TerraceHttpAuthHandler;->getMessageBody()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/net/SBrowserHttpAuthHandler;->mAuthHandler:Lcom/sec/terrace/browser/TerraceHttpAuthHandler;

    invoke-virtual {v1}, Lcom/sec/terrace/browser/TerraceHttpAuthHandler;->getUsernameLabelText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/net/SBrowserHttpAuthHandler;->mAuthHandler:Lcom/sec/terrace/browser/TerraceHttpAuthHandler;

    invoke-virtual {v1}, Lcom/sec/terrace/browser/TerraceHttpAuthHandler;->getPasswordLabelText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/net/SBrowserHttpAuthHandler;->mAuthHandler:Lcom/sec/terrace/browser/TerraceHttpAuthHandler;

    invoke-virtual {v1}, Lcom/sec/terrace/browser/TerraceHttpAuthHandler;->getOkButtonText()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/net/SBrowserHttpAuthHandler;->mAuthHandler:Lcom/sec/terrace/browser/TerraceHttpAuthHandler;

    invoke-virtual {v2}, Lcom/sec/terrace/browser/TerraceHttpAuthHandler;->getCancelButtonText()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lm/k;

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/net/SBrowserHttpAuthHandler;->mContext:Landroid/content/Context;

    const v5, 0x7f1501c5

    invoke-direct {v3, v4, v5}, Lm/k;-><init>(Landroid/content/Context;I)V

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/net/SBrowserHttpAuthHandler;->mAuthHandler:Lcom/sec/terrace/browser/TerraceHttpAuthHandler;

    invoke-virtual {v4}, Lcom/sec/terrace/browser/TerraceHttpAuthHandler;->getMessageTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lm/k;->setTitle(Ljava/lang/CharSequence;)Lm/k;

    move-result-object v3

    invoke-virtual {v3, v0}, Lm/k;->setView(Landroid/view/View;)Lm/k;

    move-result-object v0

    new-instance v3, Lcom/sec/android/app/sbrowser/net/SBrowserHttpAuthHandler$4;

    invoke-direct {v3, p0}, Lcom/sec/android/app/sbrowser/net/SBrowserHttpAuthHandler$4;-><init>(Lcom/sec/android/app/sbrowser/net/SBrowserHttpAuthHandler;)V

    invoke-virtual {v0, v1, v3}, Lm/k;->d(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    new-instance v1, Lcom/sec/android/app/sbrowser/net/SBrowserHttpAuthHandler$3;

    invoke-direct {v1, p0}, Lcom/sec/android/app/sbrowser/net/SBrowserHttpAuthHandler$3;-><init>(Lcom/sec/android/app/sbrowser/net/SBrowserHttpAuthHandler;)V

    invoke-virtual {v0, v2, v1}, Lm/k;->b(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    new-instance v1, Lcom/sec/android/app/sbrowser/net/SBrowserHttpAuthHandler$2;

    invoke-direct {v1, p0}, Lcom/sec/android/app/sbrowser/net/SBrowserHttpAuthHandler$2;-><init>(Lcom/sec/android/app/sbrowser/net/SBrowserHttpAuthHandler;)V

    iget-object v2, v0, Lm/k;->a:Lm/h;

    iput-object v1, v2, Lm/h;->n:Landroid/content/DialogInterface$OnCancelListener;

    invoke-virtual {v0}, Lm/k;->create()Lm/l;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/net/SBrowserHttpAuthHandler;->mDialog:Lm/l;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p0

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/view/Window;->setSoftInputMode(I)V

    return-void
.end method

.method public dismiss()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/net/SBrowserHttpAuthHandler;->mDialog:Lm/l;

    if-nez v0, :cond_0

    const-string p0, "SBrowserHttpAuthHandler"

    const-string v0, "dismiss - Error mDialog is null, returning."

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-virtual {v0}, Lm/y;->dismiss()V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/net/SBrowserHttpAuthHandler;->mAuthHandler:Lcom/sec/terrace/browser/TerraceHttpAuthHandler;

    invoke-virtual {p0}, Lcom/sec/terrace/browser/TerraceHttpAuthHandler;->cancel()V

    return-void
.end method

.method public getTabID()I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/sbrowser/net/SBrowserHttpAuthHandler;->mTabID:I

    return p0
.end method

.method public show()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/net/SBrowserHttpAuthHandler;->mDialog:Lm/l;

    if-nez v0, :cond_0

    const-string p0, "SBrowserHttpAuthHandler"

    const-string v0, "dismiss - Error mDialog is null, returning."

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/net/SBrowserHttpAuthHandler;->mContext:Landroid/content/Context;

    instance-of v1, v0, Lcom/sec/android/app/sbrowser/common/model/main/MainActivityDelegate;

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/sec/android/app/sbrowser/net/SBrowserHttpAuthHandler;->mIsTestMode:Z

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/net/SBrowserHttpAuthHandler;->mTestTab:Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    goto :goto_0

    :cond_1
    check-cast v0, Landroid/app/Activity;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabUtils;->getCurrentTab(Landroid/app/Activity;)Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_2

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getTabId()I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/sbrowser/net/SBrowserHttpAuthHandler;->mTabID:I

    new-instance v1, Lcom/sec/android/app/sbrowser/net/SBrowserHttpAuthHandler$5;

    invoke-direct {v1, p0}, Lcom/sec/android/app/sbrowser/net/SBrowserHttpAuthHandler$5;-><init>(Lcom/sec/android/app/sbrowser/net/SBrowserHttpAuthHandler;)V

    invoke-interface {v0, v1}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;->addEventListener(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabEventListener;)V

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/net/SBrowserHttpAuthHandler;->mDialog:Lm/l;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/net/SBrowserHttpAuthHandler;->mUsernameView:Landroid/widget/EditText;

    invoke-virtual {p0}, Landroid/view/View;->requestFocus()Z

    return-void
.end method
