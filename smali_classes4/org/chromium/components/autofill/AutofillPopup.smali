.class public Lorg/chromium/components/autofill/AutofillPopup;
.super Lorg/chromium/ui/DropdownPopupWindow;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/widget/AdapterView$OnItemLongClickListener;
.implements Landroid/widget/PopupWindow$OnDismissListener;


# annotations
.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final mAutofillDelegate:Lorg/chromium/components/autofill/AutofillDelegate;

.field private final mClearAccessibilityFocusRunnable:Ljava/lang/Runnable;

.field private mContext:Landroid/content/Context;

.field private mSuggestions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/chromium/components/autofill/AutofillSuggestion;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;Lorg/chromium/components/autofill/AutofillDelegate;Lorg/chromium/ui/widget/RectProvider;)V
    .locals 0

    invoke-direct {p0, p1, p2, p4}, Lorg/chromium/ui/DropdownPopupWindow;-><init>(Landroid/content/Context;Landroid/view/View;Lorg/chromium/ui/widget/RectProvider;)V

    new-instance p2, Lorg/chromium/components/autofill/AutofillPopup$1;

    invoke-direct {p2, p0}, Lorg/chromium/components/autofill/AutofillPopup$1;-><init>(Lorg/chromium/components/autofill/AutofillPopup;)V

    iput-object p2, p0, Lorg/chromium/components/autofill/AutofillPopup;->mClearAccessibilityFocusRunnable:Ljava/lang/Runnable;

    iput-object p1, p0, Lorg/chromium/components/autofill/AutofillPopup;->mContext:Landroid/content/Context;

    iput-object p3, p0, Lorg/chromium/components/autofill/AutofillPopup;->mAutofillDelegate:Lorg/chromium/components/autofill/AutofillDelegate;

    invoke-virtual {p0, p0}, Lorg/chromium/ui/DropdownPopupWindow;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    invoke-virtual {p0, p0}, Lorg/chromium/ui/DropdownPopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    invoke-virtual {p0}, Lorg/chromium/ui/DropdownPopupWindow;->disableHideOnOutsideTap()V

    iget-object p1, p0, Lorg/chromium/components/autofill/AutofillPopup;->mContext:Landroid/content/Context;

    sget p2, Lorg/chromium/components/autofill/R$string;->autofill_popup_content_description:I

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/chromium/ui/DropdownPopupWindow;->setContentDescriptionForAccessibility(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public static bridge synthetic a(Lorg/chromium/components/autofill/AutofillPopup;)Lorg/chromium/components/autofill/AutofillDelegate;
    .locals 0

    iget-object p0, p0, Lorg/chromium/components/autofill/AutofillPopup;->mAutofillDelegate:Lorg/chromium/components/autofill/AutofillDelegate;

    return-object p0
.end method

.method public static bridge synthetic b(Lorg/chromium/components/autofill/AutofillPopup;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lorg/chromium/components/autofill/AutofillPopup;->mClearAccessibilityFocusRunnable:Ljava/lang/Runnable;

    return-object p0
.end method


# virtual methods
.method public filterAndShow([Lorg/chromium/components/autofill/AutofillSuggestion;Z)V
    .locals 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InlinedApi"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lorg/chromium/components/autofill/AutofillPopup;->mSuggestions:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    const/4 v2, 0x0

    :goto_0
    array-length v3, p1

    if-ge v2, v3, :cond_1

    aget-object v3, p1, v2

    invoke-virtual {v3}, Lorg/chromium/components/autofill/AutofillSuggestion;->getSuggestionType()I

    move-result v3

    const/16 v4, 0x2e

    if-ne v3, v4, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_0
    aget-object v3, p1, v2

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    new-instance p1, Lorg/chromium/components/autofill/AutofillDropdownAdapter;

    iget-object v2, p0, Lorg/chromium/components/autofill/AutofillPopup;->mContext:Landroid/content/Context;

    invoke-direct {p1, v2, v0, v1}, Lorg/chromium/components/autofill/AutofillDropdownAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Ljava/util/Set;)V

    invoke-virtual {p0, p1}, Lorg/chromium/ui/DropdownPopupWindow;->setAdapter(Landroid/widget/ListAdapter;)V

    invoke-virtual {p0, p2}, Lorg/chromium/ui/DropdownPopupWindow;->setRtl(Z)V

    invoke-virtual {p0}, Lorg/chromium/ui/DropdownPopupWindow;->show()V

    invoke-virtual {p0}, Lorg/chromium/ui/DropdownPopupWindow;->getListView()Landroid/widget/ListView;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/widget/AdapterView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    invoke-virtual {p0}, Lorg/chromium/ui/DropdownPopupWindow;->getListView()Landroid/widget/ListView;

    move-result-object p1

    new-instance p2, Lorg/chromium/components/autofill/AutofillPopup$2;

    invoke-direct {p2, p0}, Lorg/chromium/components/autofill/AutofillPopup$2;-><init>(Lorg/chromium/components/autofill/AutofillPopup;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    return-void
.end method

.method public onDismiss()V
    .locals 1

    iget-object v0, p0, Lorg/chromium/components/autofill/AutofillPopup;->mAutofillDelegate:Lorg/chromium/components/autofill/AutofillDelegate;

    invoke-interface {v0}, Lorg/chromium/components/autofill/AutofillDelegate;->dismissed()V

    sget-boolean v0, Lorg/chromium/build/SamsungBuildConfig;->SAMSUNG_INTERNET_AUTOFILL_BASE_CHANGES:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/chromium/components/autofill/AutofillPopup;->mContext:Landroid/content/Context;

    :cond_0
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

    invoke-virtual {p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object p1

    check-cast p1, Lorg/chromium/components/autofill/AutofillDropdownAdapter;

    iget-object p2, p0, Lorg/chromium/components/autofill/AutofillPopup;->mSuggestions:Ljava/util/List;

    invoke-static {p2}, Lorg/chromium/build/NullUtil;->assumeNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    invoke-interface {p1, p3}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    iget-object p0, p0, Lorg/chromium/components/autofill/AutofillPopup;->mAutofillDelegate:Lorg/chromium/components/autofill/AutofillDelegate;

    invoke-interface {p0, p1}, Lorg/chromium/components/autofill/AutofillDelegate;->suggestionSelected(I)V

    return-void
.end method

.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    invoke-virtual {p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object p1

    check-cast p1, Lorg/chromium/components/autofill/AutofillDropdownAdapter;

    invoke-interface {p1, p3}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/chromium/ui/DropdownItem;

    invoke-static {p1}, Lorg/chromium/build/NullUtil;->assumeNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/chromium/components/autofill/AutofillSuggestion;

    invoke-virtual {p1}, Lorg/chromium/components/autofill/AutofillSuggestion;->isDeletable()Z

    move-result p2

    if-nez p2, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-object p2, p0, Lorg/chromium/components/autofill/AutofillPopup;->mSuggestions:Ljava/util/List;

    invoke-static {p2}, Lorg/chromium/build/NullUtil;->assumeNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    iget-object p0, p0, Lorg/chromium/components/autofill/AutofillPopup;->mAutofillDelegate:Lorg/chromium/components/autofill/AutofillDelegate;

    invoke-interface {p0, p1}, Lorg/chromium/components/autofill/AutofillDelegate;->deleteSuggestion(I)V

    const/4 p0, 0x1

    return p0
.end method
