.class public Lcom/sec/android/app/sbrowser/multi_tab/MultiTabGroupTabsNavigate;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/multi_tab/MultiTabGroupTabsNavigate$Listener;
    }
.end annotation


# instance fields
.field private mListener:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabGroupTabsNavigate$Listener;

.field mPathAllTabs:Landroid/widget/TextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field mPathGroup:Landroid/widget/TextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private mTouchDelegate:Landroid/view/TouchDelegate;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabGroupTabsNavigate;->mTouchDelegate:Landroid/view/TouchDelegate;

    return-void
.end method

.method public static synthetic a(Lcom/sec/android/app/sbrowser/multi_tab/MultiTabGroupTabsNavigate;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabGroupTabsNavigate;->lambda$init$0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic b(Lcom/sec/android/app/sbrowser/multi_tab/MultiTabGroupTabsNavigate;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabGroupTabsNavigate;->lambda$setTouchDelegateForTarget$1()V

    return-void
.end method

.method private enableTextView(Landroid/widget/TextView;Z)V
    .locals 0

    if-eqz p2, :cond_0

    const/high16 p0, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const p0, 0x3ecccccd    # 0.4f

    :goto_0
    invoke-virtual {p1, p0}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method

.method private synthetic lambda$init$0(Landroid/view/View;)V
    .locals 0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/multi_tab/MultiTabLoggingHelper;->sendSALoggingForGroupNavigationAllTabs()V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabGroupTabsNavigate;->mListener:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabGroupTabsNavigate$Listener;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabGroupTabsNavigate$Listener;->onAllTabsClicked()V

    return-void
.end method

.method private synthetic lambda$setTouchDelegateForTarget$1()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabGroupTabsNavigate;->mTouchDelegate:Landroid/view/TouchDelegate;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabGroupTabsNavigate;->createTouchDelegate()Landroid/view/TouchDelegate;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabGroupTabsNavigate;->mTouchDelegate:Landroid/view/TouchDelegate;

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabGroupTabsNavigate;->mTouchDelegate:Landroid/view/TouchDelegate;

    invoke-virtual {p0, v0}, Landroid/view/View;->setTouchDelegate(Landroid/view/TouchDelegate;)V

    return-void
.end method


# virtual methods
.method public createTouchDelegate()Landroid/view/TouchDelegate;
    .locals 6

    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabGroupTabsNavigate;->mPathAllTabs:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabGroupTabsNavigate;->mPathAllTabs:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    const/4 v3, 0x0

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    const v1, 0x7f0b0cac

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabGroupTabsNavigate;->mPathAllTabs:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    iget v3, v2, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f071512

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    add-int/2addr v4, v3

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v1, v4

    iget v3, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr v3, v1

    iput v3, v0, Landroid/graphics/Rect;->right:I

    iget v1, v0, Landroid/graphics/Rect;->top:I

    iget v3, v2, Landroid/graphics/Rect;->top:I

    add-int/2addr v1, v3

    iput v1, v0, Landroid/graphics/Rect;->top:I

    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    iget v2, v2, Landroid/graphics/Rect;->top:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    new-instance v1, Landroid/view/TouchDelegate;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabGroupTabsNavigate;->mPathAllTabs:Landroid/widget/TextView;

    invoke-direct {v1, v0, p0}, Landroid/view/TouchDelegate;-><init>(Landroid/graphics/Rect;Landroid/view/View;)V

    return-object v1
.end method

.method public enableTextButton(Landroid/widget/TextView;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabGroupTabsNavigate;->enableTextView(Landroid/widget/TextView;Z)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setFocusable(Z)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setClickable(Z)V

    if-eqz p2, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x2

    :goto_0
    invoke-virtual {p1, p0}, Landroid/view/View;->setImportantForAccessibility(I)V

    return-void
.end method

.method public enableViews(Z)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabGroupTabsNavigate;->mPathAllTabs:Landroid/widget/TextView;

    invoke-virtual {p0, v0, p1}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabGroupTabsNavigate;->enableTextButton(Landroid/widget/TextView;Z)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabGroupTabsNavigate;->mPathGroup:Landroid/widget/TextView;

    invoke-direct {p0, v0, p1}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabGroupTabsNavigate;->enableTextView(Landroid/widget/TextView;Z)V

    return-void
.end method

.method public hide()V
    .locals 1

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public init(Lcom/sec/android/app/sbrowser/multi_tab/MultiTabGroupTabsNavigate$Listener;)V
    .locals 2

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabGroupTabsNavigate;->mListener:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabGroupTabsNavigate$Listener;

    const p1, 0x7f0b0caa

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabGroupTabsNavigate;->mPathAllTabs:Landroid/widget/TextView;

    new-instance v0, Lcom/sec/android/app/sbrowser/multi_tab/s;

    const/4 v1, 0x3

    invoke-direct {v0, v1, p0}, Lcom/sec/android/app/sbrowser/multi_tab/s;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabGroupTabsNavigate;->showButtonShapeIfNeeded()V

    const p1, 0x7f0b0cab

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabGroupTabsNavigate;->mPathGroup:Landroid/widget/TextView;

    return-void
.end method

.method public isFocused(Landroid/view/View;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabGroupTabsNavigate;->mPathAllTabs:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v1

    if-eq p1, v1, :cond_1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabGroupTabsNavigate;->mPathGroup:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/View;->getId()I

    move-result p0

    if-ne p1, p0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :cond_2
    return v0
.end method

.method public onKeyLeft(Landroid/view/View;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabGroupTabsNavigate;->mPathGroup:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v1

    if-ne p1, v1, :cond_1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabGroupTabsNavigate;->mPathAllTabs:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/View;->requestFocus()Z

    move-result p0

    return p0

    :cond_1
    return v0
.end method

.method public onKeyRight(Landroid/view/View;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabGroupTabsNavigate;->mPathAllTabs:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v1

    if-ne p1, v1, :cond_1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabGroupTabsNavigate;->mPathGroup:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/View;->requestFocus()Z

    move-result p0

    return p0

    :cond_1
    return v0
.end method

.method public requestFocusTabs()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabGroupTabsNavigate;->mPathAllTabs:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/View;->requestFocus()Z

    move-result p0

    return p0
.end method

.method public setGroupPath(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabGroupTabsNavigate;->mPathGroup:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setTouchDelegateForTarget()V
    .locals 2

    new-instance v0, Lcom/sec/android/app/sbrowser/multi_tab/a;

    const/4 v1, 0x2

    invoke-direct {v0, v1, p0}, Lcom/sec/android/app/sbrowser/multi_tab/a;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p0, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public show()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabGroupTabsNavigate;->mTouchDelegate:Landroid/view/TouchDelegate;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabGroupTabsNavigate;->setTouchDelegateForTarget()V

    :cond_0
    return-void
.end method

.method public showButtonShapeIfNeeded()V
    .locals 2

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/SystemSettings;->isShowButtonShapeEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabGroupTabsNavigate;->mPathAllTabs:Landroid/widget/TextView;

    const v1, 0x7f080734

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabGroupTabsNavigate;->mPathAllTabs:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    const v1, 0x7f0600f7

    invoke-virtual {p0, v1}, Landroid/content/Context;->getColor(I)I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method

.method public updateTouchDelegate()V
    .locals 0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabGroupTabsNavigate;->setTouchDelegateForTarget()V

    return-void
.end method
