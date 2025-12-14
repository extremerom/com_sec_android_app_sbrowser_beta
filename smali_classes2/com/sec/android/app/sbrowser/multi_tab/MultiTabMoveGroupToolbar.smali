.class public Lcom/sec/android/app/sbrowser/multi_tab/MultiTabMoveGroupToolbar;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/multi_tab/MultiTabMoveGroupToolbar$Listener;
    }
.end annotation


# instance fields
.field private mCreateGroupBtn:Landroid/widget/LinearLayout;

.field private mListener:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabMoveGroupToolbar$Listener;

.field private mToolbarTitle:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public static synthetic a(Lcom/sec/android/app/sbrowser/multi_tab/MultiTabMoveGroupToolbar;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabMoveGroupToolbar;->lambda$onCreateView$0(Landroid/view/View;)V

    return-void
.end method

.method private isMoveCreateButton(Landroid/view/View;)Z
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabMoveGroupToolbar;->mCreateGroupBtn:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabMoveGroupToolbar;->mCreateGroupBtn:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Landroid/view/View;->getId()I

    move-result p0

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private synthetic lambda$onCreateView$0(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabMoveGroupToolbar;->mListener:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabMoveGroupToolbar$Listener;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabMoveGroupToolbar;->mCreateGroupBtn:Landroid/widget/LinearLayout;

    invoke-interface {p1, p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabMoveGroupToolbar$Listener;->onCreateGroupBtnClicked(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public focusToolbar()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabMoveGroupToolbar;->mCreateGroupBtn:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Landroid/view/View;->requestFocus()Z

    move-result p0

    return p0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabMoveGroupToolbar;->mToolbarTitle:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public isMoveToolbar(Landroid/view/View;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabMoveGroupToolbar;->isMoveCreateButton(Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method public onCreateView(Lcom/sec/android/app/sbrowser/multi_tab/MultiTabMoveGroupToolbar$Listener;)V
    .locals 2
    .param p1    # Lcom/sec/android/app/sbrowser/multi_tab/MultiTabMoveGroupToolbar$Listener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabMoveGroupToolbar;->mListener:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabMoveGroupToolbar$Listener;

    const p1, 0x7f0b0ce2

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabMoveGroupToolbar;->mToolbarTitle:Landroid/widget/TextView;

    const p1, 0x7f0b0cf3

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabMoveGroupToolbar;->mCreateGroupBtn:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/sec/android/app/sbrowser/tooltip/TooltipCompat;->setTooltipText(Landroid/view/View;Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabMoveGroupToolbar;->mCreateGroupBtn:Landroid/widget/LinearLayout;

    new-instance v0, Lcom/sec/android/app/sbrowser/multi_tab/s;

    const/4 v1, 0x4

    invoke-direct {v0, v1, p0}, Lcom/sec/android/app/sbrowser/multi_tab/s;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public onDestroyView()V
    .locals 2

    const-string v0, "MultiTabMoveGroupToolbar"

    const-string v1, "[onDestroyView]"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabMoveGroupToolbar;->mToolbarTitle:Landroid/widget/TextView;

    return-void
.end method

.method public setTitleAlpha(F)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabMoveGroupToolbar;->mToolbarTitle:Landroid/widget/TextView;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Landroid/view/View;->setAlpha(F)V

    :cond_0
    return-void
.end method
