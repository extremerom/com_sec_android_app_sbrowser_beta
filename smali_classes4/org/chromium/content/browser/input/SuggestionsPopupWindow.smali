.class public abstract Lorg/chromium/content/browser/input/SuggestionsPopupWindow;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/widget/PopupWindow$OnDismissListener;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/content/browser/input/SuggestionsPopupWindow$SuggestionAdapter;
    }
.end annotation

.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mAddToDictionaryButton:Landroid/widget/TextView;

.field private mContentView:Landroid/widget/LinearLayout;

.field private final mContext:Landroid/content/Context;

.field private mDeleteButton:Landroid/widget/TextView;

.field private mDismissedByItemTap:Z

.field private mDisplayMetrics:Landroid/util/DisplayMetrics;

.field private mDivider:Landroid/view/View;

.field private mHighlightedText:Ljava/lang/String;

.field private mListFooter:Landroid/widget/LinearLayout;

.field private mNumberOfSuggestionsToUse:I

.field private final mParentView:Landroid/view/View;

.field private mPopupVerticalMargin:I

.field private mPopupWindow:Landroid/widget/PopupWindow;

.field private mSuggestionListView:Landroid/widget/ListView;

.field protected final mTextSuggestionHost:Lorg/chromium/content/browser/input/TextSuggestionHost;

.field private mWindowAndroid:Lorg/chromium/ui/base/WindowAndroid;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lorg/chromium/content/browser/input/TextSuggestionHost;Lorg/chromium/ui/base/WindowAndroid;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/chromium/content/browser/input/SuggestionsPopupWindow;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lorg/chromium/content/browser/input/SuggestionsPopupWindow;->mTextSuggestionHost:Lorg/chromium/content/browser/input/TextSuggestionHost;

    iput-object p3, p0, Lorg/chromium/content/browser/input/SuggestionsPopupWindow;->mWindowAndroid:Lorg/chromium/ui/base/WindowAndroid;

    iput-object p4, p0, Lorg/chromium/content/browser/input/SuggestionsPopupWindow;->mParentView:Landroid/view/View;

    invoke-direct {p0}, Lorg/chromium/content/browser/input/SuggestionsPopupWindow;->createPopupWindow()V

    invoke-direct {p0}, Lorg/chromium/content/browser/input/SuggestionsPopupWindow;->initContentView()V

    iget-object p1, p0, Lorg/chromium/content/browser/input/SuggestionsPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    iget-object p0, p0, Lorg/chromium/content/browser/input/SuggestionsPopupWindow;->mContentView:Landroid/widget/LinearLayout;

    invoke-virtual {p1, p0}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    return-void
.end method

.method public static bridge synthetic a(Lorg/chromium/content/browser/input/SuggestionsPopupWindow;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lorg/chromium/content/browser/input/SuggestionsPopupWindow;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method private addToDictionary()V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.settings.USER_DICTIONARY_INSERT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/chromium/content/browser/input/SuggestionsPopupWindow;->mHighlightedText:Ljava/lang/String;

    const-string v2, "word"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getFlags()I

    move-result v1

    const/high16 v2, 0x10000000

    or-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object p0, p0, Lorg/chromium/content/browser/input/SuggestionsPopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static bridge synthetic b(Lorg/chromium/content/browser/input/SuggestionsPopupWindow;)I
    .locals 0

    iget p0, p0, Lorg/chromium/content/browser/input/SuggestionsPopupWindow;->mNumberOfSuggestionsToUse:I

    return p0
.end method

.method private createPopupWindow()V
    .locals 3

    new-instance v0, Landroid/widget/PopupWindow;

    invoke-direct {v0}, Landroid/widget/PopupWindow;-><init>()V

    iput-object v0, p0, Lorg/chromium/content/browser/input/SuggestionsPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    const/4 v1, -0x2

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setWidth(I)V

    iget-object v0, p0, Lorg/chromium/content/browser/input/SuggestionsPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setHeight(I)V

    iget-object v0, p0, Lorg/chromium/content/browser/input/SuggestionsPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    iget-object v1, p0, Lorg/chromium/content/browser/input/SuggestionsPopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lorg/chromium/content/R$drawable;->floating_popup_background:I

    invoke-static {v1, v2}, Lorg/chromium/base/ApiCompatibilityUtils;->getDrawable(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lorg/chromium/content/browser/input/SuggestionsPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    iget-object v1, p0, Lorg/chromium/content/browser/input/SuggestionsPopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lorg/chromium/content/R$dimen;->text_suggestion_popup_elevation:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setElevation(F)V

    iget-object v0, p0, Lorg/chromium/content/browser/input/SuggestionsPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    iget-object v0, p0, Lorg/chromium/content/browser/input/SuggestionsPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    iget-object v0, p0, Lorg/chromium/content/browser/input/SuggestionsPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setClippingEnabled(Z)V

    iget-object v0, p0, Lorg/chromium/content/browser/input/SuggestionsPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0, p0}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    return-void
.end method

.method private initContentView()V
    .locals 4

    iget-object v0, p0, Lorg/chromium/content/browser/input/SuggestionsPopupWindow;->mContext:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    sget v1, Lorg/chromium/content/R$layout;->text_edit_suggestion_container:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lorg/chromium/content/browser/input/SuggestionsPopupWindow;->mContentView:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lorg/chromium/content/browser/input/SuggestionsPopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lorg/chromium/content/R$dimen;->text_suggestion_popup_vertical_margin:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lorg/chromium/content/browser/input/SuggestionsPopupWindow;->mPopupVerticalMargin:I

    iget-object v1, p0, Lorg/chromium/content/browser/input/SuggestionsPopupWindow;->mContentView:Landroid/widget/LinearLayout;

    sget v3, Lorg/chromium/content/R$id;->suggestionContainer:I

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lorg/chromium/content/browser/input/SuggestionsPopupWindow;->mSuggestionListView:Landroid/widget/ListView;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    sget v1, Lorg/chromium/content/R$layout;->text_edit_suggestion_list_footer:I

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lorg/chromium/content/browser/input/SuggestionsPopupWindow;->mListFooter:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lorg/chromium/content/browser/input/SuggestionsPopupWindow;->mSuggestionListView:Landroid/widget/ListView;

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v3}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V

    iget-object v0, p0, Lorg/chromium/content/browser/input/SuggestionsPopupWindow;->mSuggestionListView:Landroid/widget/ListView;

    new-instance v1, Lorg/chromium/content/browser/input/SuggestionsPopupWindow$SuggestionAdapter;

    invoke-direct {v1, p0, v3}, Lorg/chromium/content/browser/input/SuggestionsPopupWindow$SuggestionAdapter;-><init>(Lorg/chromium/content/browser/input/SuggestionsPopupWindow;I)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lorg/chromium/content/browser/input/SuggestionsPopupWindow;->mSuggestionListView:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v0, p0, Lorg/chromium/content/browser/input/SuggestionsPopupWindow;->mContentView:Landroid/widget/LinearLayout;

    sget v1, Lorg/chromium/content/R$id;->divider:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/content/browser/input/SuggestionsPopupWindow;->mDivider:Landroid/view/View;

    iget-object v0, p0, Lorg/chromium/content/browser/input/SuggestionsPopupWindow;->mContentView:Landroid/widget/LinearLayout;

    sget v1, Lorg/chromium/content/R$id;->addToDictionaryButton:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lorg/chromium/content/browser/input/SuggestionsPopupWindow;->mAddToDictionaryButton:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lorg/chromium/content/browser/input/SuggestionsPopupWindow;->mContentView:Landroid/widget/LinearLayout;

    sget v1, Lorg/chromium/content/R$id;->deleteButton:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lorg/chromium/content/browser/input/SuggestionsPopupWindow;->mDeleteButton:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private measureContent()V
    .locals 4
    .annotation build Lorg/chromium/build/annotations/RequiresNonNull;
    .end annotation

    iget-object v0, p0, Lorg/chromium/content/browser/input/SuggestionsPopupWindow;->mSuggestionListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/chromium/ui/UiUtils;->computeListAdapterContentDimensions(Landroid/widget/ListAdapter;Landroid/view/ViewGroup;)[I

    move-result-object v0

    const/4 v1, 0x0

    aget v0, v0, v1

    iget-object v1, p0, Lorg/chromium/content/browser/input/SuggestionsPopupWindow;->mContentView:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    iget-object v2, p0, Lorg/chromium/content/browser/input/SuggestionsPopupWindow;->mContentView:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/view/View;->getPaddingRight()I

    move-result v2

    add-int/2addr v2, v1

    add-int/2addr v2, v0

    iget-object v0, p0, Lorg/chromium/content/browser/input/SuggestionsPopupWindow;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    const/high16 v1, -0x80000000

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    iget-object v1, p0, Lorg/chromium/content/browser/input/SuggestionsPopupWindow;->mContentView:Landroid/widget/LinearLayout;

    const/high16 v3, 0x40000000    # 2.0f

    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-virtual {v1, v3, v0}, Landroid/view/View;->measure(II)V

    iget-object p0, p0, Lorg/chromium/content/browser/input/SuggestionsPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {p0, v2}, Landroid/widget/PopupWindow;->setWidth(I)V

    return-void
.end method

.method private updateDividerVisibility()V
    .locals 1

    iget v0, p0, Lorg/chromium/content/browser/input/SuggestionsPopupWindow;->mNumberOfSuggestionsToUse:I

    if-nez v0, :cond_0

    iget-object p0, p0, Lorg/chromium/content/browser/input/SuggestionsPopupWindow;->mDivider:Landroid/view/View;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lorg/chromium/content/browser/input/SuggestionsPopupWindow;->mDivider:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void
.end method


# virtual methods
.method public abstract applySuggestion(I)V
.end method

.method public dismiss()V
    .locals 0

    iget-object p0, p0, Lorg/chromium/content/browser/input/SuggestionsPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {p0}, Landroid/widget/PopupWindow;->dismiss()V

    return-void
.end method

.method public abstract getSuggestionItem(I)Ljava/lang/Object;
.end method

.method public abstract getSuggestionText(I)Landroid/text/SpannableString;
.end method

.method public abstract getSuggestionsCount()I
.end method

.method public isShowing()Z
    .locals 0

    iget-object p0, p0, Lorg/chromium/content/browser/input/SuggestionsPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {p0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result p0

    return p0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lorg/chromium/content/browser/input/SuggestionsPopupWindow;->mAddToDictionaryButton:Landroid/widget/TextView;

    const/4 v1, 0x1

    if-ne p1, v0, :cond_0

    invoke-direct {p0}, Lorg/chromium/content/browser/input/SuggestionsPopupWindow;->addToDictionary()V

    iget-object p1, p0, Lorg/chromium/content/browser/input/SuggestionsPopupWindow;->mTextSuggestionHost:Lorg/chromium/content/browser/input/TextSuggestionHost;

    iget-object v0, p0, Lorg/chromium/content/browser/input/SuggestionsPopupWindow;->mHighlightedText:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/chromium/content/browser/input/TextSuggestionHost;->onNewWordAddedToDictionary(Ljava/lang/String;)V

    iput-boolean v1, p0, Lorg/chromium/content/browser/input/SuggestionsPopupWindow;->mDismissedByItemTap:Z

    iget-object p0, p0, Lorg/chromium/content/browser/input/SuggestionsPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {p0}, Landroid/widget/PopupWindow;->dismiss()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/chromium/content/browser/input/SuggestionsPopupWindow;->mDeleteButton:Landroid/widget/TextView;

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lorg/chromium/content/browser/input/SuggestionsPopupWindow;->mTextSuggestionHost:Lorg/chromium/content/browser/input/TextSuggestionHost;

    invoke-virtual {p1}, Lorg/chromium/content/browser/input/TextSuggestionHost;->deleteActiveSuggestionRange()V

    iput-boolean v1, p0, Lorg/chromium/content/browser/input/SuggestionsPopupWindow;->mDismissedByItemTap:Z

    iget-object p0, p0, Lorg/chromium/content/browser/input/SuggestionsPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {p0}, Landroid/widget/PopupWindow;->dismiss()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onDismiss()V
    .locals 2

    iget-object v0, p0, Lorg/chromium/content/browser/input/SuggestionsPopupWindow;->mTextSuggestionHost:Lorg/chromium/content/browser/input/TextSuggestionHost;

    iget-boolean v1, p0, Lorg/chromium/content/browser/input/SuggestionsPopupWindow;->mDismissedByItemTap:Z

    invoke-virtual {v0, v1}, Lorg/chromium/content/browser/input/TextSuggestionHost;->onSuggestionMenuClosed(Z)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/chromium/content/browser/input/SuggestionsPopupWindow;->mDismissedByItemTap:Z

    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
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

    iget p1, p0, Lorg/chromium/content/browser/input/SuggestionsPopupWindow;->mNumberOfSuggestionsToUse:I

    if-lt p3, p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p3}, Lorg/chromium/content/browser/input/SuggestionsPopupWindow;->applySuggestion(I)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/chromium/content/browser/input/SuggestionsPopupWindow;->mDismissedByItemTap:Z

    iget-object p0, p0, Lorg/chromium/content/browser/input/SuggestionsPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {p0}, Landroid/widget/PopupWindow;->dismiss()V

    return-void
.end method

.method public setAddToDictionaryEnabled(Z)V
    .locals 0

    iget-object p0, p0, Lorg/chromium/content/browser/input/SuggestionsPopupWindow;->mAddToDictionaryButton:Landroid/widget/TextView;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public show(DDLjava/lang/String;)V
    .locals 5

    invoke-virtual {p0}, Lorg/chromium/content/browser/input/SuggestionsPopupWindow;->getSuggestionsCount()I

    move-result v0

    iput v0, p0, Lorg/chromium/content/browser/input/SuggestionsPopupWindow;->mNumberOfSuggestionsToUse:I

    iput-object p5, p0, Lorg/chromium/content/browser/input/SuggestionsPopupWindow;->mHighlightedText:Ljava/lang/String;

    iget-object p5, p0, Lorg/chromium/content/browser/input/SuggestionsPopupWindow;->mWindowAndroid:Lorg/chromium/ui/base/WindowAndroid;

    invoke-static {p5}, Lorg/chromium/build/NullUtil;->assumeNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p5, p0, Lorg/chromium/content/browser/input/SuggestionsPopupWindow;->mWindowAndroid:Lorg/chromium/ui/base/WindowAndroid;

    invoke-virtual {p5}, Lorg/chromium/ui/base/WindowAndroid;->getActivity()Ljava/lang/ref/WeakReference;

    move-result-object p5

    invoke-virtual {p5}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Landroid/app/Activity;

    iput-object p5, p0, Lorg/chromium/content/browser/input/SuggestionsPopupWindow;->mActivity:Landroid/app/Activity;

    if-eqz p5, :cond_0

    invoke-virtual {p5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p5

    invoke-virtual {p5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p5

    iput-object p5, p0, Lorg/chromium/content/browser/input/SuggestionsPopupWindow;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    goto :goto_0

    :cond_0
    iget-object p5, p0, Lorg/chromium/content/browser/input/SuggestionsPopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {p5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p5

    invoke-virtual {p5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p5

    iput-object p5, p0, Lorg/chromium/content/browser/input/SuggestionsPopupWindow;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    :goto_0
    iget-object p5, p0, Lorg/chromium/content/browser/input/SuggestionsPopupWindow;->mActivity:Landroid/app/Activity;

    const/4 v0, 0x0

    if-eqz p5, :cond_1

    invoke-virtual {p5}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result p5

    if-nez p5, :cond_1

    new-instance p5, Landroid/graphics/Rect;

    invoke-direct {p5}, Landroid/graphics/Rect;-><init>()V

    iget-object v1, p0, Lorg/chromium/content/browser/input/SuggestionsPopupWindow;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p5}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    iget p5, p5, Landroid/graphics/Rect;->top:I

    goto :goto_1

    :cond_1
    move p5, v0

    :goto_1
    iget-object v1, p0, Lorg/chromium/content/browser/input/SuggestionsPopupWindow;->mListFooter:Landroid/widget/LinearLayout;

    invoke-static {v0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-static {v0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/view/View;->measure(II)V

    iget-object v1, p0, Lorg/chromium/content/browser/input/SuggestionsPopupWindow;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    sub-int/2addr v1, p5

    iget-object p5, p0, Lorg/chromium/content/browser/input/SuggestionsPopupWindow;->mListFooter:Landroid/widget/LinearLayout;

    invoke-virtual {p5}, Landroid/view/View;->getMeasuredHeight()I

    move-result p5

    sub-int/2addr v1, p5

    iget p5, p0, Lorg/chromium/content/browser/input/SuggestionsPopupWindow;->mPopupVerticalMargin:I

    const/4 v2, 0x2

    mul-int/2addr p5, v2

    sub-int/2addr v1, p5

    iget-object p5, p0, Lorg/chromium/content/browser/input/SuggestionsPopupWindow;->mContentView:Landroid/widget/LinearLayout;

    invoke-virtual {p5}, Landroid/view/View;->getPaddingTop()I

    move-result p5

    sub-int/2addr v1, p5

    iget-object p5, p0, Lorg/chromium/content/browser/input/SuggestionsPopupWindow;->mContentView:Landroid/widget/LinearLayout;

    invoke-virtual {p5}, Landroid/view/View;->getPaddingBottom()I

    move-result p5

    sub-int/2addr v1, p5

    iget-object p5, p0, Lorg/chromium/content/browser/input/SuggestionsPopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {p5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p5

    sget v3, Lorg/chromium/content/R$dimen;->text_edit_suggestion_item_layout_height:I

    invoke-virtual {p5, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p5

    if-lez v1, :cond_2

    div-int/2addr v1, p5

    goto :goto_2

    :cond_2
    move v1, v0

    :goto_2
    iget p5, p0, Lorg/chromium/content/browser/input/SuggestionsPopupWindow;->mNumberOfSuggestionsToUse:I

    invoke-static {p5, v1}, Ljava/lang/Math;->min(II)I

    move-result p5

    iput p5, p0, Lorg/chromium/content/browser/input/SuggestionsPopupWindow;->mNumberOfSuggestionsToUse:I

    invoke-direct {p0}, Lorg/chromium/content/browser/input/SuggestionsPopupWindow;->updateDividerVisibility()V

    invoke-direct {p0}, Lorg/chromium/content/browser/input/SuggestionsPopupWindow;->measureContent()V

    iget-object p5, p0, Lorg/chromium/content/browser/input/SuggestionsPopupWindow;->mContentView:Landroid/widget/LinearLayout;

    invoke-virtual {p5}, Landroid/view/View;->getMeasuredWidth()I

    move-result p5

    iget-object v1, p0, Lorg/chromium/content/browser/input/SuggestionsPopupWindow;->mContentView:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    int-to-float v3, p5

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    float-to-double v3, v3

    sub-double/2addr p1, v3

    invoke-static {p1, p2}, Ljava/lang/Math;->round(D)J

    move-result-wide p1

    long-to-int p1, p1

    invoke-static {p3, p4}, Ljava/lang/Math;->round(D)J

    move-result-wide p2

    long-to-int p2, p2

    new-array p3, v2, [I

    iget-object p4, p0, Lorg/chromium/content/browser/input/SuggestionsPopupWindow;->mParentView:Landroid/view/View;

    invoke-virtual {p4, p3}, Landroid/view/View;->getLocationInWindow([I)V

    aget p4, p3, v0

    add-int/2addr p1, p4

    const/4 p4, 0x1

    aget p3, p3, p4

    add-int/2addr p2, p3

    iget-object p3, p0, Lorg/chromium/content/browser/input/SuggestionsPopupWindow;->mContentView:Landroid/widget/LinearLayout;

    invoke-virtual {p3}, Landroid/view/View;->getPaddingTop()I

    move-result p3

    sub-int/2addr p2, p3

    iget-object p3, p0, Lorg/chromium/content/browser/input/SuggestionsPopupWindow;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget p3, p3, Landroid/util/DisplayMetrics;->widthPixels:I

    sub-int/2addr p3, p5

    iget-object p4, p0, Lorg/chromium/content/browser/input/SuggestionsPopupWindow;->mContentView:Landroid/widget/LinearLayout;

    invoke-virtual {p4}, Landroid/view/View;->getPaddingRight()I

    move-result p4

    add-int/2addr p4, p3

    invoke-static {p4, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    iget-object p3, p0, Lorg/chromium/content/browser/input/SuggestionsPopupWindow;->mContentView:Landroid/widget/LinearLayout;

    invoke-virtual {p3}, Landroid/view/View;->getPaddingLeft()I

    move-result p3

    neg-int p3, p3

    invoke-static {p3, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iget-object p3, p0, Lorg/chromium/content/browser/input/SuggestionsPopupWindow;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget p3, p3, Landroid/util/DisplayMetrics;->heightPixels:I

    sub-int/2addr p3, v1

    iget-object p4, p0, Lorg/chromium/content/browser/input/SuggestionsPopupWindow;->mContentView:Landroid/widget/LinearLayout;

    invoke-virtual {p4}, Landroid/view/View;->getPaddingTop()I

    move-result p4

    sub-int/2addr p3, p4

    iget p4, p0, Lorg/chromium/content/browser/input/SuggestionsPopupWindow;->mPopupVerticalMargin:I

    sub-int/2addr p3, p4

    invoke-static {p2, p3}, Ljava/lang/Math;->min(II)I

    move-result p2

    iget-object p3, p0, Lorg/chromium/content/browser/input/SuggestionsPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    iget-object p0, p0, Lorg/chromium/content/browser/input/SuggestionsPopupWindow;->mParentView:Landroid/view/View;

    invoke-virtual {p3, p0, v0, p1, p2}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    return-void
.end method

.method public updateWindowAndroid(Lorg/chromium/ui/base/WindowAndroid;)V
    .locals 0

    iput-object p1, p0, Lorg/chromium/content/browser/input/SuggestionsPopupWindow;->mWindowAndroid:Lorg/chromium/ui/base/WindowAndroid;

    return-void
.end method
