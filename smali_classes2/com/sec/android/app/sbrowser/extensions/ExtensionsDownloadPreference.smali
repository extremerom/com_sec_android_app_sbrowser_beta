.class public Lcom/sec/android/app/sbrowser/extensions/ExtensionsDownloadPreference;
.super Landroidx/preference/Preference;
.source "SourceFile"


# instance fields
.field private mBadgeVisible:Z

.field private mClickListener:Landroid/view/View$OnClickListener;

.field private mEnableDownloadButton:Z

.field private mIconFrameLayout:Landroid/widget/FrameLayout;

.field private mTextIconFirstChar:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sec/android/app/sbrowser/extensions/ExtensionsDownloadPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/extensions/ExtensionsDownloadPreference;->mBadgeVisible:Z

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/extensions/ExtensionsDownloadPreference;->mEnableDownloadButton:Z

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/extensions/ExtensionsDownloadPreference;->mTextIconFirstChar:Ljava/lang/String;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/extensions/ExtensionsDownloadPreference;->mIconFrameLayout:Landroid/widget/FrameLayout;

    const p1, 0x7f0e020e

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setWidgetLayoutResource(I)V

    return-void
.end method

.method private removeTextIconIfNeeded()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extensions/ExtensionsDownloadPreference;->mIconFrameLayout:Landroid/widget/FrameLayout;

    const-string v1, "ExtensionsDownloadPreference"

    if-eqz v0, :cond_1

    const v2, 0x7f0b02f3

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/extensions/ExtensionsDownloadPreference;->mIconFrameLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto :goto_0

    :cond_0
    const-string p0, "removeTextIconIfNeeded - no textIconView found"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const-string p0, "removeTextIconIfNeeded - no iconFrameLayout found"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private setImageButtonContentDescription(Lw2/H;)V
    .locals 2

    const v0, 0x1020016

    invoke-virtual {p1, v0}, Lw2/H;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0b04f0

    invoke-virtual {p1, v1}, Lw2/H;->a(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p0

    const v1, 0x7f14050c

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    invoke-virtual {p1}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/sec/android/app/sbrowser/tooltip/TooltipCompat;->setTooltipText(Landroid/view/View;Ljava/lang/CharSequence;)V

    return-void
.end method

.method private setListenerToPreference(Lw2/H;)V
    .locals 1

    const v0, 0x7f0b04f0

    invoke-virtual {p1, v0}, Lw2/H;->a(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageButton;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/extensions/ExtensionsDownloadPreference;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method

.method private setTextIconInstead(Landroid/widget/ImageView;)V
    .locals 5

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070304

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v2, 0x11

    invoke-direct {v1, v0, v0, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0, v0, v0}, Landroid/view/View;->setPadding(IIII)V

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    new-instance p1, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const v0, 0x7f0b02f3

    invoke-virtual {p1, v0}, Landroid/view/View;->setId(I)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const v3, 0x7f0800d2

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    new-instance v3, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setGravity(I)V

    const/4 v1, -0x1

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/extensions/ExtensionsDownloadPreference;->mTextIconFirstChar:Ljava/lang/String;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v1, 0x1

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setAutoSizeTextTypeWithDefaults(I)V

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {p1, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/extensions/ExtensionsDownloadPreference;->mIconFrameLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public onBindViewHolder(Lw2/H;)V
    .locals 6

    invoke-super {p0, p1}, Landroidx/preference/Preference;->onBindViewHolder(Lw2/H;)V

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/extensions/ExtensionsDownloadPreference;->setListenerToPreference(Lw2/H;)V

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/extensions/ExtensionsDownloadPreference;->setImageButtonContentDescription(Lw2/H;)V

    iget-object v0, p1, Landroidx/recyclerview/widget/h1;->itemView:Landroid/view/View;

    const v1, 0x1020006

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/extensions/ExtensionsDownloadPreference;->mIconFrameLayout:Landroid/widget/FrameLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setMinimumWidth(I)V

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f070586

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/extensions/ExtensionsDownloadPreference;->mIconFrameLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v3}, Landroid/view/View;->getPaddingTop()I

    move-result v4

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/extensions/ExtensionsDownloadPreference;->mIconFrameLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v5}, Landroid/view/View;->getPaddingBottom()I

    move-result v5

    invoke-virtual {v3, v2, v4, v1, v5}, Landroid/view/View;->setPaddingRelative(IIII)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/extensions/ExtensionsDownloadPreference;->removeTextIconIfNeeded()V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/extensions/ExtensionsDownloadPreference;->mTextIconFirstChar:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/extensions/ExtensionsDownloadPreference;->setTextIconInstead(Landroid/widget/ImageView;)V

    :cond_0
    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/extensions/ExtensionsDownloadPreference;->mBadgeVisible:Z

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/extensions/ExtensionsDownloadPreference;->setBadgeVisible(Z)V

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/extensions/ExtensionsDownloadPreference;->mEnableDownloadButton:Z

    if-nez p0, :cond_1

    const p0, 0x7f0b04f0

    invoke-virtual {p1, p0}, Lw2/H;->a(I)Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_1

    const p1, 0x3ecccccd    # 0.4f

    invoke-virtual {p0, p1}, Landroid/view/View;->setAlpha(F)V

    :cond_1
    return-void
.end method

.method public removeTextIcon()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/extensions/ExtensionsDownloadPreference;->mTextIconFirstChar:Ljava/lang/String;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/extensions/ExtensionsDownloadPreference;->removeTextIconIfNeeded()V

    return-void
.end method

.method public setBadgeVisible(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/extensions/ExtensionsDownloadPreference;->mBadgeVisible:Z

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setDotVisibility(Z)V

    return-void
.end method

.method public setEnableDownloadButton(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/extensions/ExtensionsDownloadPreference;->mEnableDownloadButton:Z

    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/extensions/ExtensionsDownloadPreference;->mClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public setTextIconChar(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/extensions/ExtensionsDownloadPreference;->mTextIconFirstChar:Ljava/lang/String;

    return-void
.end method
