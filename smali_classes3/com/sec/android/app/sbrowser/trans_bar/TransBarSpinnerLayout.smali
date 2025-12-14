.class Lcom/sec/android/app/sbrowser/trans_bar/TransBarSpinnerLayout;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mClient:Lcom/sec/android/app/sbrowser/trans_bar/TransBarSpinnerLayoutClient;

.field private mSourceAdapter:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter<",
            "Lcom/sec/android/app/sbrowser/trans_bar/TransBarInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mSourceItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

.field protected mSourceSpinner:Landroidx/appcompat/widget/AppCompatSpinner;

.field private mSourceSpinnerClicked:Z

.field private mSupportSourceSpinner:Z

.field private mTargetAdapter:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter<",
            "Lcom/sec/android/app/sbrowser/trans_bar/TransBarInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mTargetItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

.field protected mTargetSpinner:Landroidx/appcompat/widget/AppCompatSpinner;

.field private mTargetSpinnerClicked:Z


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/trans_bar/TransBarSpinnerLayoutClient;Z)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarSpinnerLayout;->mClient:Lcom/sec/android/app/sbrowser/trans_bar/TransBarSpinnerLayoutClient;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarSpinnerLayout;->mTargetSpinnerClicked:Z

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarSpinnerLayout;->mSourceSpinnerClicked:Z

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarSpinnerLayout;->mSupportSourceSpinner:Z

    new-instance v0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarSpinnerLayout$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarSpinnerLayout$1;-><init>(Lcom/sec/android/app/sbrowser/trans_bar/TransBarSpinnerLayout;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarSpinnerLayout;->mTargetItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    new-instance v0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarSpinnerLayout$2;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarSpinnerLayout$2;-><init>(Lcom/sec/android/app/sbrowser/trans_bar/TransBarSpinnerLayout;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarSpinnerLayout;->mSourceItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarSpinnerLayout;->mClient:Lcom/sec/android/app/sbrowser/trans_bar/TransBarSpinnerLayoutClient;

    iput-boolean p2, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarSpinnerLayout;->mSupportSourceSpinner:Z

    return-void
.end method

.method public static bridge synthetic a(Lcom/sec/android/app/sbrowser/trans_bar/TransBarSpinnerLayout;)Lcom/sec/android/app/sbrowser/trans_bar/TransBarSpinnerLayoutClient;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarSpinnerLayout;->mClient:Lcom/sec/android/app/sbrowser/trans_bar/TransBarSpinnerLayoutClient;

    return-object p0
.end method

.method public static bridge synthetic b(Lcom/sec/android/app/sbrowser/trans_bar/TransBarSpinnerLayout;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarSpinnerLayout;->mSourceSpinnerClicked:Z

    return p0
.end method

.method public static bridge synthetic c(Lcom/sec/android/app/sbrowser/trans_bar/TransBarSpinnerLayout;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarSpinnerLayout;->mTargetSpinnerClicked:Z

    return p0
.end method

.method private createAdapter(Landroid/content/Context;Ljava/util/ArrayList;Landroidx/appcompat/widget/AppCompatSpinner;Lcom/sec/android/app/sbrowser/trans_bar/TransBarSpinnerDelegate;)Landroid/widget/ArrayAdapter;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList<",
            "Lcom/sec/android/app/sbrowser/trans_bar/TransBarInfo;",
            ">;",
            "Landroidx/appcompat/widget/AppCompatSpinner;",
            "Lcom/sec/android/app/sbrowser/trans_bar/TransBarSpinnerDelegate;",
            ")",
            "Landroid/widget/ArrayAdapter<",
            "Lcom/sec/android/app/sbrowser/trans_bar/TransBarInfo;",
            ">;"
        }
    .end annotation

    new-instance v9, Lcom/sec/android/app/sbrowser/trans_bar/TransBarSpinnerLayout$5;

    const v3, 0x7f0e0888

    move-object v0, v9

    move-object v1, p0

    move-object v2, p1

    move-object v4, p2

    move-object v5, p2

    move-object v6, p1

    move-object v7, p4

    move-object v8, p3

    invoke-direct/range {v0 .. v8}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarSpinnerLayout$5;-><init>(Lcom/sec/android/app/sbrowser/trans_bar/TransBarSpinnerLayout;Landroid/content/Context;ILjava/util/List;Ljava/util/ArrayList;Landroid/content/Context;Lcom/sec/android/app/sbrowser/trans_bar/TransBarSpinnerDelegate;Landroidx/appcompat/widget/AppCompatSpinner;)V

    return-object v9
.end method

.method public static bridge synthetic d(Lcom/sec/android/app/sbrowser/trans_bar/TransBarSpinnerLayout;)V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarSpinnerLayout;->mSourceSpinnerClicked:Z

    return-void
.end method

.method public static bridge synthetic e(Lcom/sec/android/app/sbrowser/trans_bar/TransBarSpinnerLayout;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarSpinnerLayout;->mTargetSpinnerClicked:Z

    return-void
.end method

.method public static bridge synthetic f(Lcom/sec/android/app/sbrowser/trans_bar/TransBarSpinnerLayout;Landroid/content/Context;Landroidx/appcompat/widget/AppCompatSpinner;ILandroid/view/ViewGroup;Lcom/sec/android/app/sbrowser/trans_bar/TransBarSpinnerDelegate;)Landroidx/appcompat/widget/SeslCheckedTextView;
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarSpinnerLayout;->getLangListView(Landroid/content/Context;Landroidx/appcompat/widget/AppCompatSpinner;ILandroid/view/ViewGroup;Lcom/sec/android/app/sbrowser/trans_bar/TransBarSpinnerDelegate;)Landroidx/appcompat/widget/SeslCheckedTextView;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic g(Lcom/sec/android/app/sbrowser/trans_bar/TransBarSpinnerLayout;Landroid/content/Context;Lcom/sec/android/app/sbrowser/trans_bar/TransBarSpinnerDelegate;)Landroid/view/View;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarSpinnerLayout;->getMoreLangView(Landroid/content/Context;Lcom/sec/android/app/sbrowser/trans_bar/TransBarSpinnerDelegate;)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method private getLangListView(Landroid/content/Context;Landroidx/appcompat/widget/AppCompatSpinner;ILandroid/view/ViewGroup;Lcom/sec/android/app/sbrowser/trans_bar/TransBarSpinnerDelegate;)Landroidx/appcompat/widget/SeslCheckedTextView;
    .locals 8
    .param p4    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    move-object v0, p1

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0e0888

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p4, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p4

    check-cast p4, Landroidx/appcompat/widget/SeslCheckedTextView;

    invoke-virtual {p2}, Landroid/widget/AdapterView;->getSelectedItemPosition()I

    move-result v0

    const/4 v1, 0x1

    if-ne p3, v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    invoke-interface {p5}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarSpinnerDelegate;->getLangList()Ljava/util/ArrayList;

    move-result-object v3

    invoke-interface {p5, v1}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarSpinnerDelegate;->getLanguage(Z)Lcom/sec/android/app/sbrowser/trans_bar/TransBarInfo;

    move-result-object v1

    invoke-interface {p5, v2}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarSpinnerDelegate;->getLanguage(Z)Lcom/sec/android/app/sbrowser/trans_bar/TransBarInfo;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarSpinnerLayout;->mSourceSpinner:Landroidx/appcompat/widget/AppCompatSpinner;

    invoke-virtual {v5}, Ljava/lang/Object;->hashCode()I

    move-result v5

    invoke-virtual {p2}, Ljava/lang/Object;->hashCode()I

    move-result v6

    const/4 v7, 0x0

    if-ne v5, v6, :cond_1

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p4, v7}, Landroidx/appcompat/widget/SeslCheckedTextView;->setCheckMarkDrawable(Landroid/graphics/drawable/Drawable;)V

    new-instance v0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarSpinnerLayout$7;

    invoke-direct {v0, p0, p5, p3}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarSpinnerLayout$7;-><init>(Lcom/sec/android/app/sbrowser/trans_bar/TransBarSpinnerLayout;Lcom/sec/android/app/sbrowser/trans_bar/TransBarSpinnerDelegate;I)V

    invoke-virtual {p4, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move v0, v2

    :cond_1
    iget-object p5, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarSpinnerLayout;->mTargetSpinner:Landroidx/appcompat/widget/AppCompatSpinner;

    invoke-virtual {p5}, Ljava/lang/Object;->hashCode()I

    move-result p5

    invoke-virtual {p2}, Ljava/lang/Object;->hashCode()I

    move-result p2

    if-ne p5, p2, :cond_2

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_2

    invoke-virtual {p4, v7}, Landroidx/appcompat/widget/SeslCheckedTextView;->setCheckMarkDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    :cond_2
    move v2, v0

    :goto_1
    invoke-virtual {v3, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/sec/android/app/sbrowser/trans_bar/TransBarInfo;

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarInfo;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p4, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string p2, "sec"

    invoke-static {p2, v2}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object p2

    invoke-virtual {p4, p2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    if-eqz v2, :cond_3

    const p2, 0x7f060206

    goto :goto_2

    :cond_3
    const p2, 0x7f060106

    :goto_2
    invoke-virtual {p1, p2}, Landroid/content/Context;->getColor(I)I

    move-result p2

    invoke-virtual {p4, p2}, Landroid/widget/TextView;->setTextColor(I)V

    new-instance p2, Lcom/sec/android/app/sbrowser/trans_bar/TransBarSpinnerLayout$8;

    invoke-direct {p2, p0, v2, p1, p4}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarSpinnerLayout$8;-><init>(Lcom/sec/android/app/sbrowser/trans_bar/TransBarSpinnerLayout;ZLandroid/content/Context;Landroidx/appcompat/widget/SeslCheckedTextView;)V

    invoke-virtual {p4, p2}, Landroid/view/View;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    return-object p4
.end method

.method private getMoreLangView(Landroid/content/Context;Lcom/sec/android/app/sbrowser/trans_bar/TransBarSpinnerDelegate;)Landroid/view/View;
    .locals 3

    move-object v0, p1

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0e0485

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f14075b

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/sec/android/app/sbrowser/common/utils/ViewUtil;->setButtonContentDescription(Landroid/view/View;Ljava/lang/CharSequence;)V

    new-instance p1, Lcom/sec/android/app/sbrowser/trans_bar/TransBarSpinnerLayout$6;

    invoke-direct {p1, p0, p2}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarSpinnerLayout$6;-><init>(Lcom/sec/android/app/sbrowser/trans_bar/TransBarSpinnerLayout;Lcom/sec/android/app/sbrowser/trans_bar/TransBarSpinnerDelegate;)V

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object v0
.end method


# virtual methods
.method public initializeSourceSpinner(Landroid/view/View;Landroid/view/ViewGroup;Lcom/sec/android/app/sbrowser/trans_bar/TransBarInfo;Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Landroid/view/ViewGroup;",
            "Lcom/sec/android/app/sbrowser/trans_bar/TransBarInfo;",
            "Ljava/util/ArrayList<",
            "Lcom/sec/android/app/sbrowser/trans_bar/TransBarInfo;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Landroidx/appcompat/widget/AppCompatSpinner;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroidx/appcompat/widget/AppCompatSpinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarSpinnerLayout;->mSourceSpinner:Landroidx/appcompat/widget/AppCompatSpinner;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarSpinnerLayout;->mSourceSpinner:Landroidx/appcompat/widget/AppCompatSpinner;

    new-instance v2, Lcom/sec/android/app/sbrowser/trans_bar/TransBarSpinnerLayout$4;

    invoke-direct {v2, p0}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarSpinnerLayout$4;-><init>(Lcom/sec/android/app/sbrowser/trans_bar/TransBarSpinnerLayout;)V

    invoke-direct {p0, v0, p4, v1, v2}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarSpinnerLayout;->createAdapter(Landroid/content/Context;Ljava/util/ArrayList;Landroidx/appcompat/widget/AppCompatSpinner;Lcom/sec/android/app/sbrowser/trans_bar/TransBarSpinnerDelegate;)Landroid/widget/ArrayAdapter;

    move-result-object p4

    iput-object p4, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarSpinnerLayout;->mSourceAdapter:Landroid/widget/ArrayAdapter;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarSpinnerLayout;->mSourceSpinner:Landroidx/appcompat/widget/AppCompatSpinner;

    invoke-virtual {v0, p4}, Landroidx/appcompat/widget/AppCompatSpinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    iget-object p4, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarSpinnerLayout;->mSourceSpinner:Landroidx/appcompat/widget/AppCompatSpinner;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarSpinnerLayout;->mSourceAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0, p3}, Landroid/widget/ArrayAdapter;->getPosition(Ljava/lang/Object;)I

    move-result p3

    invoke-virtual {p4, p3}, Landroid/widget/AdapterView;->setSelection(I)V

    iget-object p3, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarSpinnerLayout;->mSourceSpinner:Landroidx/appcompat/widget/AppCompatSpinner;

    iget-object p4, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarSpinnerLayout;->mSourceItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    invoke-virtual {p3, p4}, Landroid/widget/AdapterView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    iget-object p3, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarSpinnerLayout;->mSourceSpinner:Landroidx/appcompat/widget/AppCompatSpinner;

    const/4 p4, 0x4

    invoke-virtual {p3, p4}, Landroid/view/View;->setVisibility(I)V

    iget-object p3, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarSpinnerLayout;->mSourceSpinner:Landroidx/appcompat/widget/AppCompatSpinner;

    new-instance p4, Landroid/view/ViewGroup$LayoutParams;

    const/4 v0, -0x1

    const/4 v1, 0x0

    invoke-direct {p4, v1, v0}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p3, p4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p3, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarSpinnerLayout;->mSourceSpinner:Landroidx/appcompat/widget/AppCompatSpinner;

    const p4, 0x7f0807a9

    invoke-virtual {p3, p4}, Landroidx/appcompat/widget/AppCompatSpinner;->setPopupBackgroundResource(I)V

    iget-boolean p3, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarSpinnerLayout;->mSupportSourceSpinner:Z

    if-nez p3, :cond_0

    iget-object p3, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarSpinnerLayout;->mSourceSpinner:Landroidx/appcompat/widget/AppCompatSpinner;

    const p4, 0x800005

    invoke-virtual {p3, p4}, Landroidx/appcompat/widget/AppCompatSpinner;->seslSetDropDownGravity(I)V

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p3, 0x7f070187

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    iget-object p3, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarSpinnerLayout;->mSourceSpinner:Landroidx/appcompat/widget/AppCompatSpinner;

    invoke-virtual {p3, p1}, Landroidx/appcompat/widget/AppCompatSpinner;->setDropDownHorizontalOffset(I)V

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarSpinnerLayout;->mSourceSpinner:Landroidx/appcompat/widget/AppCompatSpinner;

    invoke-virtual {p2, p0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    return-void
.end method

.method public initializeTargetSpinner(Landroid/view/View;Landroid/widget/FrameLayout;Lcom/sec/android/app/sbrowser/trans_bar/TransBarInfo;Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Landroid/widget/FrameLayout;",
            "Lcom/sec/android/app/sbrowser/trans_bar/TransBarInfo;",
            "Ljava/util/ArrayList<",
            "Lcom/sec/android/app/sbrowser/trans_bar/TransBarInfo;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Landroidx/appcompat/widget/AppCompatSpinner;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroidx/appcompat/widget/AppCompatSpinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarSpinnerLayout;->mTargetSpinner:Landroidx/appcompat/widget/AppCompatSpinner;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarSpinnerLayout;->mTargetSpinner:Landroidx/appcompat/widget/AppCompatSpinner;

    new-instance v1, Lcom/sec/android/app/sbrowser/trans_bar/TransBarSpinnerLayout$3;

    invoke-direct {v1, p0}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarSpinnerLayout$3;-><init>(Lcom/sec/android/app/sbrowser/trans_bar/TransBarSpinnerLayout;)V

    invoke-direct {p0, p1, p4, v0, v1}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarSpinnerLayout;->createAdapter(Landroid/content/Context;Ljava/util/ArrayList;Landroidx/appcompat/widget/AppCompatSpinner;Lcom/sec/android/app/sbrowser/trans_bar/TransBarSpinnerDelegate;)Landroid/widget/ArrayAdapter;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarSpinnerLayout;->mTargetAdapter:Landroid/widget/ArrayAdapter;

    iget-object p4, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarSpinnerLayout;->mTargetSpinner:Landroidx/appcompat/widget/AppCompatSpinner;

    invoke-virtual {p4, p1}, Landroidx/appcompat/widget/AppCompatSpinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarSpinnerLayout;->mTargetSpinner:Landroidx/appcompat/widget/AppCompatSpinner;

    iget-object p4, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarSpinnerLayout;->mTargetAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {p4, p3}, Landroid/widget/ArrayAdapter;->getPosition(Ljava/lang/Object;)I

    move-result p3

    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->setSelection(I)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarSpinnerLayout;->mTargetSpinner:Landroidx/appcompat/widget/AppCompatSpinner;

    iget-object p3, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarSpinnerLayout;->mTargetItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarSpinnerLayout;->mTargetSpinner:Landroidx/appcompat/widget/AppCompatSpinner;

    const/4 p3, 0x4

    invoke-virtual {p1, p3}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarSpinnerLayout;->mTargetSpinner:Landroidx/appcompat/widget/AppCompatSpinner;

    new-instance p3, Landroid/view/ViewGroup$LayoutParams;

    const/4 p4, -0x1

    const/4 v0, 0x0

    invoke-direct {p3, v0, p4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p1, p3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarSpinnerLayout;->mTargetSpinner:Landroidx/appcompat/widget/AppCompatSpinner;

    const p3, 0x7f0807a9

    invoke-virtual {p1, p3}, Landroidx/appcompat/widget/AppCompatSpinner;->setPopupBackgroundResource(I)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarSpinnerLayout;->mTargetSpinner:Landroidx/appcompat/widget/AppCompatSpinner;

    invoke-virtual {p2, p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    return-void
.end method

.method public onPause()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarSpinnerLayout;->mSourceSpinner:Landroidx/appcompat/widget/AppCompatSpinner;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/appcompat/widget/AppCompatSpinner;->seslDismissPopup()V

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarSpinnerLayout;->mTargetSpinner:Landroidx/appcompat/widget/AppCompatSpinner;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroidx/appcompat/widget/AppCompatSpinner;->seslDismissPopup()V

    :cond_1
    return-void
.end method

.method public onShowSourceSpinner()V
    .locals 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarSpinnerLayout;->mSourceSpinnerClicked:Z

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarSpinnerLayout;->mSourceSpinner:Landroidx/appcompat/widget/AppCompatSpinner;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setSoundEffectsEnabled(Z)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarSpinnerLayout;->mSourceSpinner:Landroidx/appcompat/widget/AppCompatSpinner;

    invoke-virtual {v1}, Landroidx/appcompat/widget/AppCompatSpinner;->performClick()Z

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarSpinnerLayout;->mSourceSpinner:Landroidx/appcompat/widget/AppCompatSpinner;

    invoke-virtual {p0, v0}, Landroid/view/View;->setSoundEffectsEnabled(Z)V

    return-void
.end method

.method public onShowTargetSpinner(Landroid/content/Context;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarSpinnerLayout;->mTargetSpinner:Landroidx/appcompat/widget/AppCompatSpinner;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x7f071649

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    neg-int p1, p1

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/AppCompatSpinner;->setDropDownHorizontalOffset(I)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarSpinnerLayout;->mTargetSpinnerClicked:Z

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarSpinnerLayout;->mTargetSpinner:Landroidx/appcompat/widget/AppCompatSpinner;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setSoundEffectsEnabled(Z)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarSpinnerLayout;->mTargetSpinner:Landroidx/appcompat/widget/AppCompatSpinner;

    invoke-virtual {v0}, Landroidx/appcompat/widget/AppCompatSpinner;->performClick()Z

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarSpinnerLayout;->mTargetSpinner:Landroidx/appcompat/widget/AppCompatSpinner;

    invoke-virtual {p0, p1}, Landroid/view/View;->setSoundEffectsEnabled(Z)V

    return-void
.end method

.method public updatedData(Ljava/util/ArrayList;Lcom/sec/android/app/sbrowser/trans_bar/TransBarInfo;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/sec/android/app/sbrowser/trans_bar/TransBarInfo;",
            ">;",
            "Lcom/sec/android/app/sbrowser/trans_bar/TransBarInfo;",
            "Z)V"
        }
    .end annotation

    if-eqz p3, :cond_1

    iget-object p3, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarSpinnerLayout;->mSourceAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {p3}, Landroid/widget/ArrayAdapter;->clear()V

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/sec/android/app/sbrowser/trans_bar/TransBarInfo;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarSpinnerLayout;->mSourceAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->getCount()I

    move-result v1

    invoke-virtual {v0, p3, v1}, Landroid/widget/ArrayAdapter;->insert(Ljava/lang/Object;I)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarSpinnerLayout;->mSourceAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {p1}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarSpinnerLayout;->mSourceSpinner:Landroidx/appcompat/widget/AppCompatSpinner;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarSpinnerLayout;->mSourceAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {p0, p2}, Landroid/widget/ArrayAdapter;->getPosition(Ljava/lang/Object;)I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/widget/AdapterView;->setSelection(I)V

    goto :goto_2

    :cond_1
    iget-object p3, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarSpinnerLayout;->mTargetAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {p3}, Landroid/widget/ArrayAdapter;->clear()V

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/sec/android/app/sbrowser/trans_bar/TransBarInfo;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarSpinnerLayout;->mTargetAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->getCount()I

    move-result v1

    invoke-virtual {v0, p3, v1}, Landroid/widget/ArrayAdapter;->insert(Ljava/lang/Object;I)V

    goto :goto_1

    :cond_2
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarSpinnerLayout;->mTargetAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {p1}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarSpinnerLayout;->mTargetSpinner:Landroidx/appcompat/widget/AppCompatSpinner;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarSpinnerLayout;->mTargetAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {p0, p2}, Landroid/widget/ArrayAdapter;->getPosition(Ljava/lang/Object;)I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/widget/AdapterView;->setSelection(I)V

    :goto_2
    return-void
.end method
