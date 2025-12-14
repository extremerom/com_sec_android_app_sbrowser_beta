.class public Lcom/sec/android/app/sbrowser/omnibox/DeleteButton;
.super Lcom/sec/android/app/sbrowser/omnibox/LocationBarButton;
.source "SourceFile"


# instance fields
.field private mDeleteButtonColor:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/sec/android/app/sbrowser/omnibox/LocationBarInterface;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButton;-><init>(Landroid/content/Context;Lcom/sec/android/app/sbrowser/omnibox/LocationBarInterface;)V

    return-void
.end method

.method public static synthetic a(Lcom/sec/android/app/sbrowser/omnibox/DeleteButton;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/omnibox/DeleteButton;->lambda$setButtonResource$0(Landroid/view/View;)V

    return-void
.end method

.method private synthetic lambda$setButtonResource$0(Landroid/view/View;)V
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButton;->isEditMode()Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "201"

    const-string v0, "2038"

    invoke-static {p1, v0}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/omnibox/DeleteButton;->setAnnounceForAccessibility()V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButton;->mContext:Landroid/content/Context;

    check-cast p1, Landroid/app/Activity;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/utils/ImeUtil;->isKeyboardTurnedOn(Landroid/app/Activity;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButton;->mUrlBar:Lcom/sec/android/app/sbrowser/omnibox/UrlBar;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/utils/ImeUtil;->showKeyboard(Landroid/view/View;)V

    :cond_0
    return-void

    :cond_1
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/omnibox/DeleteButton;->onStopButtonClick()V

    return-void
.end method

.method private onStopButtonClick()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButton;->mTabDelegate:Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;->stopLoading()V

    return-void
.end method

.method private setAnnounceForAccessibility()V
    .locals 5

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButton;->mUrlBar:Lcom/sec/android/app/sbrowser/omnibox/UrlBar;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/omnibox/AutocompleteEditText;->getTextWithoutAutocomplete()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const-string v2, ""

    const/4 v3, 0x1

    if-ne v1, v3, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButton;->mUrlBar:Lcom/sec/android/app/sbrowser/omnibox/UrlBar;

    const/4 v4, 0x2

    invoke-virtual {v1, v4}, Landroid/view/View;->setImportantForAccessibility(I)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButton;->mUrlBar:Lcom/sec/android/app/sbrowser/omnibox/UrlBar;

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/sbrowser/omnibox/UrlBar;->setText(Ljava/lang/String;Z)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButton;->mUrlBar:Lcom/sec/android/app/sbrowser/omnibox/UrlBar;

    const-string v2, " "

    invoke-static {v0, v2}, Lt/b;->n(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButton;->mContext:Landroid/content/Context;

    const v4, 0x7f140694

    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/view/View;->announceForAccessibility(Ljava/lang/CharSequence;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButton;->mUrlBar:Lcom/sec/android/app/sbrowser/omnibox/UrlBar;

    invoke-virtual {p0, v3}, Landroid/view/View;->setImportantForAccessibility(I)V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButton;->mUrlBar:Lcom/sec/android/app/sbrowser/omnibox/UrlBar;

    invoke-virtual {p0, v2, v3}, Lcom/sec/android/app/sbrowser/omnibox/UrlBar;->setText(Ljava/lang/String;Z)V

    :goto_0
    return-void
.end method


# virtual methods
.method public setButtonResource()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButton;->mParent:Landroid/view/View;

    const v1, 0x7f0b0d85

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButton;->mButton:Landroid/widget/ImageButton;

    const v1, 0x7f080118

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButton;->mButton:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButton;->mDelegate:Lcom/sec/android/app/sbrowser/omnibox/LocationBarInterface;

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/omnibox/LocationBarInterface;->getRightButtonKeyListener()Landroid/view/View$OnKeyListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButton;->mButton:Landroid/widget/ImageButton;

    new-instance v1, LK6/a;

    const/16 v2, 0xe

    invoke-direct {v1, v2, p0}, LK6/a;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButton;->mButton:Landroid/widget/ImageButton;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButton;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v1, 0x7f140033

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x1

    invoke-static {v0, p0, v1}, Lcom/sec/android/app/sbrowser/tooltip/TooltipCompat;->setTooltipText(Landroid/view/View;Ljava/lang/CharSequence;Z)V

    return-void
.end method

.method public setDeleteButtonVisibility(I)V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButton;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButton;->isEditMode()Z

    move-result v1

    if-eqz v1, :cond_0

    const v1, 0x7f140033

    goto :goto_0

    :cond_0
    const v1, 0x7f140fd4

    :goto_0
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButton;->mButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButton;->mButton:Landroid/widget/ImageButton;

    const/4 v2, 0x1

    invoke-static {v1, v0, v2}, Lcom/sec/android/app/sbrowser/tooltip/TooltipCompat;->setTooltipText(Landroid/view/View;Ljava/lang/CharSequence;Z)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButton;->mButton:Landroid/widget/ImageButton;

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public updateButtonColor()V
    .locals 3

    iget v0, p0, Lcom/sec/android/app/sbrowser/omnibox/DeleteButton;->mDeleteButtonColor:I

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButton;->getIconColor()I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/sbrowser/omnibox/DeleteButton;->mDeleteButtonColor:I

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButton;->mButton:Landroid/widget/ImageButton;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButton;->mButton:Landroid/widget/ImageButton;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButton;->getIconBackground()I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/view/View;->setBackgroundResource(I)V

    return-void
.end method
