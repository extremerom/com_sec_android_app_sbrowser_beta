.class public Lcom/sec/android/app/sbrowser/trans_bar/TransBarMoreButton;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final MORE_MENU_ITEMS:[I


# instance fields
.field private mBlockedLangList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mBlockedSiteList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mCollapseBtn:Landroid/view/View;

.field private final mContext:Landroid/content/Context;

.field private mDelegate:Lcom/sec/android/app/sbrowser/trans_bar/TransBarDelegate;

.field private mIsNeverTranslateLanguageEnabled:Z

.field private mIsNeverTranslateSiteEnabled:Z

.field private mIsSplitMode:Z

.field private mLangService:Lcom/sec/android/app/sbrowser/trans_bar/TransBarLangServiceHandler;

.field private mMoreMenuAdapter:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mMoreMenuItemResIds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mMoreMenuItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

.field private mMoreMenuItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected mMoreMenuSpinner:Lcom/sec/android/app/sbrowser/trans_bar/TransBarMoreMenuSpinner;

.field private mMoreMenuSpinnerClicked:Z

.field private mRootViewContext:Landroid/content/Context;

.field private mSourceSpinner:Lcom/sec/android/app/sbrowser/trans_bar/TransBarSpinnerLayout;

.field private mSupportMinimize:Z

.field private mSupportSourceSpinner:Z

.field private mTransBarMoreButton:Landroid/widget/LinearLayout;

.field private mTransBarMoreImage:Landroid/widget/ImageView;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const v0, 0x7f14106d

    const v1, 0x7f140ed0

    const v2, 0x7f14106a

    const v3, 0x7f14106b

    const v4, 0x7f14106c

    filled-new-array {v2, v3, v4, v0, v1}, [I

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarMoreButton;->MORE_MENU_ITEMS:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ZZ)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarMoreButton;->mLangService:Lcom/sec/android/app/sbrowser/trans_bar/TransBarLangServiceHandler;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarMoreButton;->mSourceSpinner:Lcom/sec/android/app/sbrowser/trans_bar/TransBarSpinnerLayout;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarMoreButton;->mDelegate:Lcom/sec/android/app/sbrowser/trans_bar/TransBarDelegate;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarMoreButton;->mSupportSourceSpinner:Z

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarMoreButton;->mSupportMinimize:Z

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarMoreButton;->mMoreMenuSpinnerClicked:Z

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarMoreButton;->mMoreMenuItems:Ljava/util/ArrayList;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarMoreButton;->mMoreMenuItemResIds:Ljava/util/ArrayList;

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarMoreButton;->mIsNeverTranslateSiteEnabled:Z

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarMoreButton;->mIsNeverTranslateLanguageEnabled:Z

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarMoreButton;->mIsSplitMode:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarMoreButton;->mBlockedLangList:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarMoreButton;->mBlockedSiteList:Ljava/util/ArrayList;

    new-instance v0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarMoreButton$2;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarMoreButton$2;-><init>(Lcom/sec/android/app/sbrowser/trans_bar/TransBarMoreButton;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarMoreButton;->mMoreMenuItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarMoreButton;->mContext:Landroid/content/Context;

    iput-boolean p2, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarMoreButton;->mSupportSourceSpinner:Z

    iput-boolean p3, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarMoreButton;->mSupportMinimize:Z

    return-void
.end method

.method public static synthetic a(Lcom/sec/android/app/sbrowser/trans_bar/TransBarMoreButton;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarMoreButton;->lambda$onShowMoreMenuSpinner$0()V

    return-void
.end method

.method public static bridge synthetic b(Lcom/sec/android/app/sbrowser/trans_bar/TransBarMoreButton;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarMoreButton;->mCollapseBtn:Landroid/view/View;

    return-object p0
.end method

.method public static bridge synthetic c(Lcom/sec/android/app/sbrowser/trans_bar/TransBarMoreButton;)Lcom/sec/android/app/sbrowser/trans_bar/TransBarLangServiceHandler;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarMoreButton;->mLangService:Lcom/sec/android/app/sbrowser/trans_bar/TransBarLangServiceHandler;

    return-object p0
.end method

.method private createAdapter(Landroid/content/Context;)Landroid/widget/ArrayAdapter;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Landroid/widget/ArrayAdapter<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v6, Lcom/sec/android/app/sbrowser/trans_bar/TransBarMoreButton$3;

    const v3, 0x7f0e0888

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarMoreButton;->mMoreMenuItems:Ljava/util/ArrayList;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarMoreButton$3;-><init>(Lcom/sec/android/app/sbrowser/trans_bar/TransBarMoreButton;Landroid/content/Context;ILjava/util/List;Landroid/content/Context;)V

    return-object v6
.end method

.method public static bridge synthetic d(Lcom/sec/android/app/sbrowser/trans_bar/TransBarMoreButton;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarMoreButton;->mMoreMenuItemResIds:Ljava/util/ArrayList;

    return-object p0
.end method

.method public static bridge synthetic e(Lcom/sec/android/app/sbrowser/trans_bar/TransBarMoreButton;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarMoreButton;->mMoreMenuSpinnerClicked:Z

    return p0
.end method

.method public static bridge synthetic f(Lcom/sec/android/app/sbrowser/trans_bar/TransBarMoreButton;)V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarMoreButton;->mMoreMenuSpinnerClicked:Z

    return-void
.end method

.method public static bridge synthetic g(Lcom/sec/android/app/sbrowser/trans_bar/TransBarMoreButton;Landroid/content/Context;ILandroid/view/ViewGroup;)Landroidx/appcompat/widget/SeslCheckedTextView;
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarMoreButton;->getMoreMenuListView(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroidx/appcompat/widget/SeslCheckedTextView;

    move-result-object p0

    return-object p0
.end method

.method private getMenuItems(Landroid/content/Context;)V
    .locals 5

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarMoreButton;->mMoreMenuItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarMoreButton;->mMoreMenuItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarMoreButton;->mMoreMenuItemResIds:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarMoreButton;->mMoreMenuItemResIds:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :cond_1
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/extensions/SixStatus;->getInstance()Lcom/sec/android/app/sbrowser/common/extensions/SixStatus;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/extensions/SixStatus;->isNeverTransOptionsEnabled()Z

    move-result v0

    const/4 v1, 0x0

    :goto_0
    sget-object v2, Lcom/sec/android/app/sbrowser/trans_bar/TransBarMoreButton;->MORE_MENU_ITEMS:[I

    array-length v3, v2

    if-ge v1, v3, :cond_7

    aget v2, v2, v1

    const v3, 0x7f14106a

    if-ne v2, v3, :cond_2

    iget-boolean v3, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarMoreButton;->mSupportSourceSpinner:Z

    if-nez v3, :cond_2

    goto :goto_1

    :cond_2
    const v3, 0x7f14106b

    if-ne v2, v3, :cond_3

    iget-boolean v3, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarMoreButton;->mSupportSourceSpinner:Z

    if-nez v3, :cond_6

    iget-boolean v3, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarMoreButton;->mSupportMinimize:Z

    if-nez v3, :cond_3

    goto :goto_1

    :cond_3
    const v3, 0x7f14106c

    if-ne v2, v3, :cond_4

    if-eqz v0, :cond_6

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarMoreButton;->isSplitMode()Z

    move-result v3

    if-eqz v3, :cond_4

    goto :goto_1

    :cond_4
    const v3, 0x7f14106d

    if-ne v2, v3, :cond_5

    if-eqz v0, :cond_6

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarMoreButton;->isSplitMode()Z

    move-result v3

    if-eqz v3, :cond_5

    goto :goto_1

    :cond_5
    iget-object v3, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarMoreButton;->mMoreMenuItems:Ljava/util/ArrayList;

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarMoreButton;->mMoreMenuItemResIds:Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_7
    return-void
.end method

.method private getMoreMenuListView(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroidx/appcompat/widget/SeslCheckedTextView;
    .locals 5
    .param p3    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    move-object v0, p1

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0e0888

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroidx/appcompat/widget/SeslCheckedTextView;

    const v1, 0x7f0807be

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const v2, 0x7f060236

    invoke-virtual {v0, v2}, Landroid/content/Context;->getColor(I)I

    move-result v0

    new-instance v2, Landroid/graphics/PorterDuffColorFilter;

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v0, v4}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarMoreButton;->mMoreMenuItemResIds:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const v2, 0x7f140ed0

    const/4 v4, 0x0

    if-eq v0, v2, :cond_2

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_2

    :pswitch_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarMoreButton;->isSiteOnNeverTranslateList()Z

    move-result v3

    iput-boolean v3, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarMoreButton;->mIsNeverTranslateSiteEnabled:Z

    if-nez v3, :cond_0

    invoke-virtual {p3, v4}, Landroidx/appcompat/widget/SeslCheckedTextView;->setCheckMarkDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p3, v1}, Landroidx/appcompat/widget/SeslCheckedTextView;->setCheckMarkDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarMoreButton;->mMoreMenuItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarMoreButton;->getTabUrlHost()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {p2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    :pswitch_1
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarMoreButton;->isLanguageOnNeverTranslateList()Z

    move-result v3

    iput-boolean v3, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarMoreButton;->mIsNeverTranslateLanguageEnabled:Z

    if-nez v3, :cond_1

    invoke-virtual {p3, v4}, Landroidx/appcompat/widget/SeslCheckedTextView;->setCheckMarkDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    :cond_1
    invoke-virtual {p3, v1}, Landroidx/appcompat/widget/SeslCheckedTextView;->setCheckMarkDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarMoreButton;->mMoreMenuItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarMoreButton;->getSourceLangName()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {p2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    :pswitch_2
    invoke-virtual {p3, v4}, Landroidx/appcompat/widget/SeslCheckedTextView;->setCheckMarkDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarMoreButton;->mMoreMenuItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarMoreButton;->getSourceLangName()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {p2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_2
    :pswitch_3
    invoke-virtual {p3, v4}, Landroidx/appcompat/widget/SeslCheckedTextView;->setCheckMarkDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarMoreButton;->mMoreMenuItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/CharSequence;

    invoke-virtual {p3, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_2
    const-string p2, "sec"

    invoke-static {p2, v3}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object p2

    invoke-virtual {p3, p2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    if-eqz v3, :cond_3

    const p2, 0x7f060206

    goto :goto_3

    :cond_3
    const p2, 0x7f060106

    :goto_3
    invoke-virtual {p1, p2}, Landroid/content/Context;->getColor(I)I

    move-result p2

    invoke-virtual {p3, p2}, Landroid/widget/TextView;->setTextColor(I)V

    new-instance p2, Lcom/sec/android/app/sbrowser/trans_bar/TransBarMoreButton$4;

    invoke-direct {p2, p0, v3, p1, p3}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarMoreButton$4;-><init>(Lcom/sec/android/app/sbrowser/trans_bar/TransBarMoreButton;ZLandroid/content/Context;Landroidx/appcompat/widget/SeslCheckedTextView;)V

    invoke-virtual {p3, p2}, Landroid/view/View;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    return-object p3

    nop

    :pswitch_data_0
    .packed-switch 0x7f14106a
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getSourceLangName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarMoreButton;->mLangService:Lcom/sec/android/app/sbrowser/trans_bar/TransBarLangServiceHandler;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarLangServiceHandler;->getSourceLangName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getTabUrlHost()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarMoreButton;->mLangService:Lcom/sec/android/app/sbrowser/trans_bar/TransBarLangServiceHandler;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarLangServiceHandler;->getTabUrlHost()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic h(Lcom/sec/android/app/sbrowser/trans_bar/TransBarMoreButton;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarMoreButton;->handleChangeSourceLangTapped()V

    return-void
.end method

.method private handleChangeSourceLangTapped()V
    .locals 2

    const-string v0, "TransBarMoreButton"

    const-string v1, "Open Change source language"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarMoreButton;->mSourceSpinner:Lcom/sec/android/app/sbrowser/trans_bar/TransBarSpinnerLayout;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarSpinnerLayout;->onShowSourceSpinner()V

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarMoreButton;->mLangService:Lcom/sec/android/app/sbrowser/trans_bar/TransBarLangServiceHandler;

    if-eqz p0, :cond_1

    const-string v0, "20064"

    const-string v1, "SourceTarget"

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarLangServiceHandler;->sendEventLogWithDimAndLangCode(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method private handleNeverTransLangTapped()V
    .locals 2

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarMoreButton;->getSourceLangName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarMoreButton;->mBlockedLangList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarMoreButton;->mBlockedLangList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarMoreButton;->mBlockedLangList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :goto_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarMoreButton;->isLanguageOnNeverTranslateList()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarMoreButton;->setNeverTranslateLanguage(Z)V

    return-void
.end method

.method private handleNeverTransSiteTapped()V
    .locals 2

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarMoreButton;->getTabUrlHost()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarMoreButton;->mBlockedSiteList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarMoreButton;->mBlockedSiteList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarMoreButton;->mBlockedSiteList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :goto_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarMoreButton;->isSiteOnNeverTranslateList()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarMoreButton;->setNeverTranslateSite(Z)V

    return-void
.end method

.method public static bridge synthetic i(Lcom/sec/android/app/sbrowser/trans_bar/TransBarMoreButton;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarMoreButton;->handleNeverTransLangTapped()V

    return-void
.end method

.method private isSplitMode()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarMoreButton;->mDelegate:Lcom/sec/android/app/sbrowser/trans_bar/TransBarDelegate;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarDelegate;->isSplitMode()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static bridge synthetic j(Lcom/sec/android/app/sbrowser/trans_bar/TransBarMoreButton;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarMoreButton;->handleNeverTransSiteTapped()V

    return-void
.end method

.method private synthetic lambda$onShowMoreMenuSpinner$0()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarMoreButton;->mMoreMenuSpinner:Lcom/sec/android/app/sbrowser/trans_bar/TransBarMoreMenuSpinner;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setSoundEffectsEnabled(Z)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarMoreButton;->mMoreMenuSpinner:Lcom/sec/android/app/sbrowser/trans_bar/TransBarMoreMenuSpinner;

    invoke-virtual {v0}, Landroidx/appcompat/widget/AppCompatSpinner;->performClick()Z

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarMoreButton;->mMoreMenuSpinner:Lcom/sec/android/app/sbrowser/trans_bar/TransBarMoreMenuSpinner;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/View;->setSoundEffectsEnabled(Z)V

    return-void
.end method

.method private onShowMoreMenuSpinner()V
    .locals 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarMoreButton;->mMoreMenuSpinnerClicked:Z

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarMoreButton;->mMoreMenuSpinner:Lcom/sec/android/app/sbrowser/trans_bar/TransBarMoreMenuSpinner;

    new-instance v1, Lcom/sec/android/app/sbrowser/tab_sync/o;

    const/4 v2, 0x1

    invoke-direct {v1, v2, p0}, Lcom/sec/android/app/sbrowser/tab_sync/o;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private recreateMoreMenuIfNeeded()V
    .locals 2

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarMoreButton;->isSplitMode()Z

    move-result v0

    iget-boolean v1, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarMoreButton;->mIsSplitMode:Z

    if-eq v1, v0, :cond_1

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarMoreButton;->mIsSplitMode:Z

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarMoreButton;->mMoreMenuSpinner:Lcom/sec/android/app/sbrowser/trans_bar/TransBarMoreMenuSpinner;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/AdapterView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarMoreButton;->mMoreMenuAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->clear()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarMoreButton;->mRootViewContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarMoreButton;->getMenuItems(Landroid/content/Context;)V

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarMoreButton;->mMoreMenuItems:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarMoreButton;->mMoreMenuItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarMoreButton;->mMoreMenuItems:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarMoreButton;->mMoreMenuAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v1, v0}, Landroid/widget/ArrayAdapter;->addAll(Ljava/util/Collection;)V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarMoreButton;->mMoreMenuAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarMoreButton;->mMoreMenuSpinner:Lcom/sec/android/app/sbrowser/trans_bar/TransBarMoreMenuSpinner;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarMoreButton;->mMoreMenuItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    invoke-virtual {v0, p0}, Landroid/widget/AdapterView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    :cond_1
    return-void
.end method

.method private setNeverTranslateLanguage(Z)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarMoreButton;->mLangService:Lcom/sec/android/app/sbrowser/trans_bar/TransBarLangServiceHandler;

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarLangServiceHandler;->onSetNeverTranslateLanguage(Z)V

    return-void
.end method

.method private setNeverTranslateSite(Z)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarMoreButton;->mLangService:Lcom/sec/android/app/sbrowser/trans_bar/TransBarLangServiceHandler;

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarLangServiceHandler;->onSetNeverTranslateSite(Z)V

    return-void
.end method


# virtual methods
.method public dismissMoreMenu()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarMoreButton;->mMoreMenuSpinnerClicked:Z

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarMoreButton;->mMoreMenuSpinner:Lcom/sec/android/app/sbrowser/trans_bar/TransBarMoreMenuSpinner;

    invoke-virtual {p0}, Landroidx/appcompat/widget/AppCompatSpinner;->seslDismissPopup()V

    return-void
.end method

.method public getMoreButton()Landroid/widget/LinearLayout;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarMoreButton;->mTransBarMoreButton:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method public initializeMoreButton(Landroid/view/View;Lcom/sec/android/app/sbrowser/trans_bar/TransBarLangServiceHandler;Lcom/sec/android/app/sbrowser/trans_bar/TransBarSpinnerLayout;)V
    .locals 0

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarMoreButton;->mLangService:Lcom/sec/android/app/sbrowser/trans_bar/TransBarLangServiceHandler;

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarMoreButton;->mSourceSpinner:Lcom/sec/android/app/sbrowser/trans_bar/TransBarSpinnerLayout;

    const p2, 0x7f0b0dbc

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarMoreButton;->mTransBarMoreButton:Landroid/widget/LinearLayout;

    const p2, 0x7f0b0dbb

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarMoreButton;->mTransBarMoreImage:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f1405ac

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarMoreButton;->mTransBarMoreButton:Landroid/widget/LinearLayout;

    invoke-static {p2, p1}, Lcom/sec/android/app/sbrowser/common/utils/ViewUtil;->setHoverTooltip(Landroid/view/View;Ljava/lang/CharSequence;)V

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarMoreButton;->mTransBarMoreButton:Landroid/widget/LinearLayout;

    invoke-static {p2, p1}, Lcom/sec/android/app/sbrowser/common/utils/ViewUtil;->setButtonContentDescription(Landroid/view/View;Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarMoreButton;->mTransBarMoreButton:Landroid/widget/LinearLayout;

    new-instance p2, Lcom/sec/android/app/sbrowser/trans_bar/TransBarMoreButton$1;

    invoke-direct {p2, p0}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarMoreButton$1;-><init>(Lcom/sec/android/app/sbrowser/trans_bar/TransBarMoreButton;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public initializeMoreMenu(Landroid/view/View;Landroid/widget/LinearLayout;Landroid/view/View;)V
    .locals 3

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarMoreButton;->mCollapseBtn:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p3

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarMoreButton;->mRootViewContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-direct {p0, p3}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarMoreButton;->getMenuItems(Landroid/content/Context;)V

    new-instance p3, Lcom/sec/android/app/sbrowser/trans_bar/TransBarMoreMenuSpinner;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p3, v0}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarMoreMenuSpinner;-><init>(Landroid/content/Context;)V

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarMoreButton;->mMoreMenuSpinner:Lcom/sec/android/app/sbrowser/trans_bar/TransBarMoreMenuSpinner;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-direct {p0, p3}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarMoreButton;->createAdapter(Landroid/content/Context;)Landroid/widget/ArrayAdapter;

    move-result-object p3

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarMoreButton;->mMoreMenuAdapter:Landroid/widget/ArrayAdapter;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarMoreButton;->mMoreMenuSpinner:Lcom/sec/android/app/sbrowser/trans_bar/TransBarMoreMenuSpinner;

    invoke-virtual {v0, p3}, Landroidx/appcompat/widget/AppCompatSpinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    iget-object p3, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarMoreButton;->mMoreMenuSpinner:Lcom/sec/android/app/sbrowser/trans_bar/TransBarMoreMenuSpinner;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarMoreButton;->mMoreMenuItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    invoke-virtual {p3, v0}, Landroid/widget/AdapterView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    iget-object p3, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarMoreButton;->mMoreMenuSpinner:Lcom/sec/android/app/sbrowser/trans_bar/TransBarMoreMenuSpinner;

    const/4 v0, 0x4

    invoke-virtual {p3, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p3, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarMoreButton;->mMoreMenuSpinner:Lcom/sec/android/app/sbrowser/trans_bar/TransBarMoreMenuSpinner;

    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p3, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p3, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarMoreButton;->mMoreMenuSpinner:Lcom/sec/android/app/sbrowser/trans_bar/TransBarMoreMenuSpinner;

    const v0, 0x7f0807a9

    invoke-virtual {p3, v0}, Landroidx/appcompat/widget/AppCompatSpinner;->setPopupBackgroundResource(I)V

    iget-object p3, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarMoreButton;->mMoreMenuSpinner:Lcom/sec/android/app/sbrowser/trans_bar/TransBarMoreMenuSpinner;

    const v0, 0x800005

    invoke-virtual {p3, v0}, Landroidx/appcompat/widget/AppCompatSpinner;->seslSetDropDownGravity(I)V

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p3, 0x7f070187

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    iget-object p3, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarMoreButton;->mMoreMenuSpinner:Lcom/sec/android/app/sbrowser/trans_bar/TransBarMoreMenuSpinner;

    invoke-virtual {p3, p1}, Landroidx/appcompat/widget/AppCompatSpinner;->setDropDownHorizontalOffset(I)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarMoreButton;->mMoreMenuSpinner:Lcom/sec/android/app/sbrowser/trans_bar/TransBarMoreMenuSpinner;

    invoke-virtual {p2, p0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    return-void
.end method

.method public isLanguageOnNeverTranslateList()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarMoreButton;->mLangService:Lcom/sec/android/app/sbrowser/trans_bar/TransBarLangServiceHandler;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarLangServiceHandler;->onCheckLangOnNeverTranslateList()Z

    move-result p0

    return p0
.end method

.method public isSiteOnNeverTranslateList()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarMoreButton;->mLangService:Lcom/sec/android/app/sbrowser/trans_bar/TransBarLangServiceHandler;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarLangServiceHandler;->onCheckSiteOnNeverTranslateList()Z

    move-result p0

    return p0
.end method

.method public onShowMoreMenu()V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarMoreButton;->recreateMoreMenuIfNeeded()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarMoreButton;->onShowMoreMenuSpinner()V

    return-void
.end method

.method public setBackgroundResource(I)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarMoreButton;->mTransBarMoreButton:Landroid/widget/LinearLayout;

    invoke-virtual {p0, p1}, Landroid/view/View;->setBackgroundResource(I)V

    return-void
.end method

.method public setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarMoreButton;->mTransBarMoreImage:Landroid/widget/ImageView;

    invoke-virtual {p0, p1, p2}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    return-void
.end method

.method public setDelegate(Lcom/sec/android/app/sbrowser/trans_bar/TransBarDelegate;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarMoreButton;->mDelegate:Lcom/sec/android/app/sbrowser/trans_bar/TransBarDelegate;

    return-void
.end method

.method public setEnabled(Z)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarMoreButton;->mTransBarMoreButton:Landroid/widget/LinearLayout;

    invoke-virtual {p0, p1}, Landroid/view/View;->setEnabled(Z)V

    return-void
.end method
