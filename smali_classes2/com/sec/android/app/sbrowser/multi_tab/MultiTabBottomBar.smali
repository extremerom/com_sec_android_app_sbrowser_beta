.class public Lcom/sec/android/app/sbrowser/multi_tab/MultiTabBottomBar;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/multi_tab/MultiTabBottomBar$Delegate;,
        Lcom/sec/android/app/sbrowser/multi_tab/MultiTabBottomBar$Listener;
    }
.end annotation


# instance fields
.field private mAllTabsButton:Landroid/view/View;

.field private mAllTabsButtonText:Landroid/widget/TextView;

.field private mCancelButton:Landroid/view/View;

.field private mCancelButtonText:Landroid/widget/TextView;

.field private mDelegate:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabBottomBar$Delegate;

.field private mListener:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabBottomBar$Listener;

.field private mNewTabButton:Landroid/view/View;

.field private mNewTabButtonText:Landroid/widget/TextView;

.field private mSecretButton:Landroid/view/View;

.field private mSecretButtonText:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public static synthetic a(Lcom/sec/android/app/sbrowser/multi_tab/MultiTabBottomBar;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabBottomBar;->lambda$initNewTabLayout$3(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic b(Landroid/view/View;)V
    .locals 0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabBottomBar;->lambda$initAllTabsLayout$4(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic c(Lcom/sec/android/app/sbrowser/multi_tab/MultiTabBottomBar;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabBottomBar;->lambda$initSecretModeLayout$1(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic d(Lcom/sec/android/app/sbrowser/multi_tab/MultiTabBottomBar;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabBottomBar;->lambda$initAllTabsLayout$5(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic e(Landroid/view/View;)V
    .locals 0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabBottomBar;->lambda$initNewTabLayout$2(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic f(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabBottomBar;->lambda$initialize$0(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic g(Landroid/view/View;)V
    .locals 0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabBottomBar;->lambda$initCancelLayout$6(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic h(Lcom/sec/android/app/sbrowser/multi_tab/MultiTabBottomBar;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabBottomBar;->lambda$initCancelLayout$7(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic i(Lcom/sec/android/app/sbrowser/multi_tab/MultiTabBottomBar;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabBottomBar;->lambda$updateSecretModeButtonText$8()V

    return-void
.end method

.method private initAllTabsLayout()V
    .locals 3

    const v0, 0x7f0b0cc1

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabBottomBar;->mAllTabsButton:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f140290

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/common/utils/ViewUtil;->setButtonContentDescription(Landroid/view/View;Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabBottomBar;->mAllTabsButton:Landroid/view/View;

    new-instance v1, Lcom/sec/android/app/sbrowser/multi_tab/b;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/sec/android/app/sbrowser/multi_tab/b;-><init>(Lcom/sec/android/app/sbrowser/multi_tab/MultiTabBottomBar;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabBottomBar;->mAllTabsButton:Landroid/view/View;

    const v1, 0x7f0b0cc2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabBottomBar;->mAllTabsButtonText:Landroid/widget/TextView;

    return-void
.end method

.method private initCancelLayout()V
    .locals 3

    const v0, 0x7f0b0cc3

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabBottomBar;->mCancelButton:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f1402c1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/common/utils/ViewUtil;->setButtonContentDescription(Landroid/view/View;Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabBottomBar;->mCancelButton:Landroid/view/View;

    new-instance v1, Lcom/sec/android/app/sbrowser/multi_tab/b;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lcom/sec/android/app/sbrowser/multi_tab/b;-><init>(Lcom/sec/android/app/sbrowser/multi_tab/MultiTabBottomBar;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabBottomBar;->mCancelButton:Landroid/view/View;

    const v1, 0x7f0b0cc4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabBottomBar;->mCancelButtonText:Landroid/widget/TextView;

    return-void
.end method

.method private initNewTabLayout()V
    .locals 3

    const v0, 0x7f0b0ccd

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabBottomBar;->mNewTabButton:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f1407fb

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/common/utils/ViewUtil;->setButtonContentDescription(Landroid/view/View;Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabBottomBar;->mNewTabButton:Landroid/view/View;

    new-instance v1, Lcom/sec/android/app/sbrowser/multi_tab/b;

    const/4 v2, 0x3

    invoke-direct {v1, p0, v2}, Lcom/sec/android/app/sbrowser/multi_tab/b;-><init>(Lcom/sec/android/app/sbrowser/multi_tab/MultiTabBottomBar;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabBottomBar;->mNewTabButton:Landroid/view/View;

    const v1, 0x7f0b0cce

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabBottomBar;->mNewTabButtonText:Landroid/widget/TextView;

    return-void
.end method

.method private initSecretModeLayout()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabBottomBar;->mAllTabsButton:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabBottomBar;->mAllTabsButton:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    const v0, 0x7f0b0cd1

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabBottomBar;->mSecretButton:Landroid/view/View;

    new-instance v1, Lcom/sec/android/app/sbrowser/multi_tab/b;

    const/4 v2, 0x2

    invoke-direct {v1, p0, v2}, Lcom/sec/android/app/sbrowser/multi_tab/b;-><init>(Lcom/sec/android/app/sbrowser/multi_tab/MultiTabBottomBar;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabBottomBar;->mSecretButton:Landroid/view/View;

    const v1, 0x7f0b0cd2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabBottomBar;->mSecretButtonText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabBottomBar;->updateSecretModeButtonText()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabBottomBar;->mSecretButton:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabBottomBar;->setSecretButtonVisibility(I)V

    return-void
.end method

.method private static synthetic lambda$initAllTabsLayout$4(Landroid/view/View;)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/View;->setEnabled(Z)V

    return-void
.end method

.method private synthetic lambda$initAllTabsLayout$5(Landroid/view/View;)V
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setEnabled(Z)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabBottomBar;->mListener:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabBottomBar$Listener;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabBottomBar$Listener;->onAllTabsClicked()V

    new-instance p0, Landroid/os/Handler;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    new-instance v0, Lcom/sec/android/app/sbrowser/multi_tab/c;

    const/4 v1, 0x2

    invoke-direct {v0, p1, v1}, Lcom/sec/android/app/sbrowser/multi_tab/c;-><init>(Landroid/view/View;I)V

    const-wide/16 v1, 0x190

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private static synthetic lambda$initCancelLayout$6(Landroid/view/View;)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/View;->setEnabled(Z)V

    return-void
.end method

.method private synthetic lambda$initCancelLayout$7(Landroid/view/View;)V
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setEnabled(Z)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabBottomBar;->mListener:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabBottomBar$Listener;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabBottomBar$Listener;->onCancelClicked()V

    new-instance p0, Landroid/os/Handler;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    new-instance v0, Lcom/sec/android/app/sbrowser/multi_tab/c;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/sec/android/app/sbrowser/multi_tab/c;-><init>(Landroid/view/View;I)V

    const-wide/16 v1, 0x190

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private static synthetic lambda$initNewTabLayout$2(Landroid/view/View;)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/View;->setEnabled(Z)V

    return-void
.end method

.method private synthetic lambda$initNewTabLayout$3(Landroid/view/View;)V
    .locals 3

    const-string v0, "MultiTabBottomBar"

    const-string v1, "[mNewTabButton:onClick]"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setEnabled(Z)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabBottomBar;->mListener:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabBottomBar$Listener;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabBottomBar$Listener;->onNewTabClicked()V

    new-instance p0, Landroid/os/Handler;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    new-instance v0, Lcom/sec/android/app/sbrowser/multi_tab/c;

    const/4 v1, 0x1

    invoke-direct {v0, p1, v1}, Lcom/sec/android/app/sbrowser/multi_tab/c;-><init>(Landroid/view/View;I)V

    const-wide/16 v1, 0x190

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private synthetic lambda$initSecretModeLayout$1(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabBottomBar;->mListener:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabBottomBar$Listener;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabBottomBar$Listener;->onSecretClicked()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f140e1a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabBottomBar;->mDelegate:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabBottomBar$Delegate;

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabBottomBar$Delegate;->isSecretModeEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v1, 0x7f140936

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v1, 0x7f140935

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    :goto_0
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/view/View;->announceForAccessibility(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private static synthetic lambda$initialize$0(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method private synthetic lambda$updateSecretModeButtonText$8()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabBottomBar;->mDelegate:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabBottomBar$Delegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabBottomBar$Delegate;->getCurrentViewState()Lcom/sec/android/app/sbrowser/common/constants/multi_tab/MultiTabConstants$ViewState;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabBottomBar;->updateBackground(Lcom/sec/android/app/sbrowser/common/constants/multi_tab/MultiTabConstants$ViewState;)V

    return-void
.end method

.method private setSecretButtonVisibility(I)V
    .locals 1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlUtil;->isParentalControlEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabBottomBar;->mSecretButton:Landroid/view/View;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabBottomBar;->mSecretButton:Landroid/view/View;

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method private updatePrivacyModeBtnContentDescription()V
    .locals 3

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabBottomBar;->mSecretButtonText:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "\n"

    const-string v2, " "

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/sec/android/app/sbrowser/common/utils/ViewUtil;->setButtonContentDescription(Landroid/view/View;Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public enterMoveMode()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabBottomBar;->mCancelButton:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabBottomBar;->mNewTabButton:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabBottomBar;->mAllTabsButton:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-direct {p0, v1}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabBottomBar;->setSecretButtonVisibility(I)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabBottomBar;->updateHorizontalPadding()V

    return-void
.end method

.method public exitMoveMode(Z)V
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabBottomBar;->mCancelButton:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabBottomBar;->mNewTabButton:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabBottomBar;->mAllTabsButton:Landroid/view/View;

    if-eqz p1, :cond_0

    move v3, v1

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    if-eqz p1, :cond_1

    move v1, v2

    :cond_1
    invoke-direct {p0, v1}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabBottomBar;->setSecretButtonVisibility(I)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabBottomBar;->updateHorizontalPadding()V

    return-void
.end method

.method public focusAllTabsButton()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabBottomBar;->mAllTabsButton:Landroid/view/View;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->requestFocus()Z

    move-result p0

    return p0
.end method

.method public focusBottomBar()Z
    .locals 2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabBottomBar;->isSecretButtonVisible()Z

    move-result v0

    const-string v1, "MultiTabBottomBar"

    if-eqz v0, :cond_0

    const-string v0, "[focusBottomBar] mSecretButton"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabBottomBar;->focusSecretButton()Z

    move-result p0

    return p0

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabBottomBar;->isAllTabsButtonVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "[focusBottomBar] mAllTabsButton"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabBottomBar;->focusAllTabsButton()Z

    move-result p0

    return p0

    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabBottomBar;->isNewTabButtonVisible()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "[focusBottomBar] mNewTabButton"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabBottomBar;->focusNewTabButton()Z

    move-result p0

    return p0

    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabBottomBar;->isCancelBtnShowing()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "[focusBottomBar] mCancelButton"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabBottomBar;->focusCancelButton()Z

    move-result p0

    return p0

    :cond_3
    const/4 p0, 0x0

    return p0
.end method

.method public focusCancelButton()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabBottomBar;->mCancelButton:Landroid/view/View;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->requestFocus()Z

    move-result p0

    return p0
.end method

.method public focusNewTabButton()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabBottomBar;->mNewTabButton:Landroid/view/View;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->requestFocus()Z

    move-result p0

    return p0
.end method

.method public focusSecretButton()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabBottomBar;->mSecretButton:Landroid/view/View;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->requestFocus()Z

    move-result p0

    return p0
.end method

.method public getAllTabsButton()Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabBottomBar;->mAllTabsButton:Landroid/view/View;

    return-object p0
.end method

.method public getCancelButton()Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabBottomBar;->mCancelButton:Landroid/view/View;

    return-object p0
.end method

.method public getNewTabButton()Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabBottomBar;->mNewTabButton:Landroid/view/View;

    return-object p0
.end method

.method public getSecretButton()Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabBottomBar;->mSecretButton:Landroid/view/View;

    return-object p0
.end method

.method public initialize(Lcom/sec/android/app/sbrowser/multi_tab/MultiTabBottomBar$Delegate;Lcom/sec/android/app/sbrowser/multi_tab/MultiTabBottomBar$Listener;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabBottomBar;->mDelegate:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabBottomBar$Delegate;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabBottomBar;->mListener:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabBottomBar$Listener;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabBottomBar;->initSecretModeLayout()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabBottomBar;->initNewTabLayout()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabBottomBar;->initAllTabsLayout()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabBottomBar;->initCancelLayout()V

    new-instance p1, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/i;

    const/4 p2, 0x4

    invoke-direct {p1, p2}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/i;-><init>(I)V

    invoke-virtual {p0, p1}, Landroid/view/View;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    return-void
.end method

.method public isAllTabsButtonVisible()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabBottomBar;->mAllTabsButton:Landroid/view/View;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isCancelBtnShowing()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabBottomBar;->mCancelButton:Landroid/view/View;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isNewTabButtonVisible()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabBottomBar;->mNewTabButton:Landroid/view/View;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isSecretButtonVisible()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabBottomBar;->mSecretButton:Landroid/view/View;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public onDestroyView()V
    .locals 2

    const-string v0, "MultiTabBottomBar"

    const-string v1, "[onDestroyView]"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabBottomBar;->mSecretButton:Landroid/view/View;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabBottomBar;->mNewTabButton:Landroid/view/View;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabBottomBar;->mAllTabsButton:Landroid/view/View;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabBottomBar;->mCancelButton:Landroid/view/View;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabBottomBar;->mSecretButtonText:Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabBottomBar;->mNewTabButtonText:Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabBottomBar;->mAllTabsButtonText:Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabBottomBar;->mCancelButtonText:Landroid/widget/TextView;

    return-void
.end method

.method public onFinishInflate()V
    .locals 1

    invoke-super {p0}, Landroid/view/View;->onFinishInflate()V

    const v0, 0x7f0b0cd1

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabBottomBar;->mSecretButton:Landroid/view/View;

    const v0, 0x7f0b0ccd

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabBottomBar;->mNewTabButton:Landroid/view/View;

    const v0, 0x7f0b0cc1

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabBottomBar;->mAllTabsButton:Landroid/view/View;

    const v0, 0x7f0b0cc3

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabBottomBar;->mCancelButton:Landroid/view/View;

    const v0, 0x7f0b0cd2

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabBottomBar;->mSecretButtonText:Landroid/widget/TextView;

    const v0, 0x7f0b0cce

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabBottomBar;->mNewTabButtonText:Landroid/widget/TextView;

    const v0, 0x7f0b0cc2

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabBottomBar;->mAllTabsButtonText:Landroid/widget/TextView;

    const v0, 0x7f0b0cc4

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabBottomBar;->mCancelButtonText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabBottomBar;->updateHorizontalPadding()V

    return-void
.end method

.method public performNewTabClick()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabBottomBar;->mNewTabButton:Landroid/view/View;

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->performClick()Z

    return-void
.end method

.method public resetSecretButtonState()V
    .locals 1

    const v0, 0x7f0b0cd1

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/utils/ViewUtil;->resetStates(Landroid/view/View;)V

    return-void
.end method

.method public setEnabled(Z)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabBottomBar;->mNewTabButton:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabBottomBar;->mSecretButton:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabBottomBar;->mAllTabsButton:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    invoke-super {p0, p1}, Landroid/view/View;->setEnabled(Z)V

    return-void
.end method

.method public showAllTabsButton(Z)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabBottomBar;->mAllTabsButton:Landroid/view/View;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabBottomBar;->mSecretButton:Landroid/view/View;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/16 v0, 0x8

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    invoke-direct {p0, v1}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabBottomBar;->setSecretButtonVisibility(I)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabBottomBar;->mAllTabsButton:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_1
    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabBottomBar;->setSecretButtonVisibility(I)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabBottomBar;->mAllTabsButton:Landroid/view/View;

    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method public updateBackground(Lcom/sec/android/app/sbrowser/common/constants/multi_tab/MultiTabConstants$ViewState;)V
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabBottomBar;->mSecretButton:Landroid/view/View;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabBottomBar;->mNewTabButton:Landroid/view/View;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabBottomBar;->mAllTabsButton:Landroid/view/View;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabBottomBar;->mCancelButton:Landroid/view/View;

    if-nez v0, :cond_0

    goto/16 :goto_2

    :cond_0
    sget-object v0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabBottomBar$1;->$SwitchMap$com$sec$android$app$sbrowser$common$constants$multi_tab$MultiTabConstants$ViewState:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const v0, 0x7f080734

    const v1, 0x7f080737

    packed-switch p1, :pswitch_data_0

    return-void

    :pswitch_0
    const p1, 0x7f060cec

    const v2, 0x7f060cf9

    goto :goto_0

    :pswitch_1
    const p1, 0x7f060cf4

    const v2, 0x7f060cfa

    goto :goto_0

    :pswitch_2
    const p1, 0x7f060cea

    const v2, 0x7f060cf5

    const v0, 0x7f080735

    goto :goto_0

    :pswitch_3
    const p1, 0x7f060cf2

    const v2, 0x7f060cf6

    goto :goto_0

    :pswitch_4
    const p1, 0x7f060ceb

    const v2, 0x7f060cf7

    const v1, 0x7f080738

    const v0, 0x7f080736

    goto :goto_0

    :pswitch_5
    const p1, 0x7f060cf3

    const v2, 0x7f060cf8

    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/content/Context;->getColor(I)I

    move-result v3

    invoke-virtual {p0, v3}, Landroid/view/View;->setBackgroundColor(I)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/SystemSettings;->isShowButtonShapeEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabBottomBar;->mSecretButtonText:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabBottomBar;->mNewTabButtonText:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabBottomBar;->mAllTabsButtonText:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabBottomBar;->mCancelButtonText:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabBottomBar;->mSecretButtonText:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/Context;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabBottomBar;->mNewTabButtonText:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/Context;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabBottomBar;->mAllTabsButtonText:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/Context;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabBottomBar;->mCancelButtonText:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/Context;->getColor(I)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabBottomBar;->mSecretButtonText:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/Context;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabBottomBar;->mNewTabButtonText:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/Context;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabBottomBar;->mAllTabsButtonText:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/Context;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabBottomBar;->mCancelButtonText:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/Context;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_1
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabBottomBar;->mSecretButton:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabBottomBar;->mNewTabButton:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabBottomBar;->mAllTabsButton:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabBottomBar;->mCancelButton:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_2
    :goto_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public updateHorizontalPadding()V
    .locals 5

    const v0, 0x7f0b0d09

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0b0d08

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/android/app/sbrowser/common/device/TabletDeviceUtils;->isTabletLayout(Landroid/content/Context;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    const/16 v2, 0x8

    :goto_0
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    const v0, 0x7f0b0d07

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget-object v4, LW0/j;->a:Ljava/lang/ThreadLocal;

    const v4, 0x7f070145

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v2

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070158

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {v0, v1, v3, v1, v3}, Landroid/view/View;->setPadding(IIII)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabBottomBar;->updateSecretModeButtonText()V

    return-void
.end method

.method public updateSecretModeButtonText()V
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabBottomBar;->mDelegate:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabBottomBar$Delegate;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabBottomBar;->mSecretButton:Landroid/view/View;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    goto/16 :goto_2

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabBottomBar;->mSecretButton:Landroid/view/View;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/utils/ViewUtil;->resetStates(Landroid/view/View;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabBottomBar;->mDelegate:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabBottomBar$Delegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabBottomBar$Delegate;->isSecretModeEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f141086

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f14108c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/util/Locale;

    const-string v3, "zh"

    invoke-direct {v2, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "\n"

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabBottomBar;->mSecretButtonText:Landroid/widget/TextView;

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_3
    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabBottomBar;->mSecretButtonText:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_4
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabBottomBar;->mSecretButtonText:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->isPhoneLandscapeOrTablet(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_5

    const-string v3, " "

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    :cond_5
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabBottomBar;->updatePrivacyModeBtnContentDescription()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/sec/android/app/sbrowser/multi_tab/a;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p0}, Lcom/sec/android/app/sbrowser/multi_tab/a;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_6
    :goto_2
    return-void
.end method
