.class public final Lcom/sec/android/app/sbrowser/databinding/QuickAccessAddWebFragmentBinding;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final addButton:Lcom/sec/android/app/sbrowser/common/widget/ShapedButton;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final bottomBar:Landroid/widget/LinearLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final cancelButton:Lcom/sec/android/app/sbrowser/common/widget/ShapedButton;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final clearButton:Landroid/widget/ImageButton;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final clearButtonContainer:Landroid/widget/LinearLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final editText:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessAddWebEditText;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final editTextInputCard:Landroidx/cardview/widget/CardView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final editTextInputLayout:Lcom/google/android/material/textfield/TextInputLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final items:Landroidx/recyclerview/widget/RecyclerView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final rootView:Landroid/widget/LinearLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/widget/LinearLayout;Lcom/sec/android/app/sbrowser/common/widget/ShapedButton;Landroid/widget/LinearLayout;Lcom/sec/android/app/sbrowser/common/widget/ShapedButton;Landroid/widget/ImageButton;Landroid/widget/LinearLayout;Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessAddWebEditText;Landroidx/cardview/widget/CardView;Lcom/google/android/material/textfield/TextInputLayout;Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 0
    .param p1    # Landroid/widget/LinearLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/sec/android/app/sbrowser/common/widget/ShapedButton;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/widget/LinearLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lcom/sec/android/app/sbrowser/common/widget/ShapedButton;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Landroid/widget/ImageButton;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p6    # Landroid/widget/LinearLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p7    # Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessAddWebEditText;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p8    # Landroidx/cardview/widget/CardView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p9    # Lcom/google/android/material/textfield/TextInputLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p10    # Landroidx/recyclerview/widget/RecyclerView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/databinding/QuickAccessAddWebFragmentBinding;->rootView:Landroid/widget/LinearLayout;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/databinding/QuickAccessAddWebFragmentBinding;->addButton:Lcom/sec/android/app/sbrowser/common/widget/ShapedButton;

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/databinding/QuickAccessAddWebFragmentBinding;->bottomBar:Landroid/widget/LinearLayout;

    iput-object p4, p0, Lcom/sec/android/app/sbrowser/databinding/QuickAccessAddWebFragmentBinding;->cancelButton:Lcom/sec/android/app/sbrowser/common/widget/ShapedButton;

    iput-object p5, p0, Lcom/sec/android/app/sbrowser/databinding/QuickAccessAddWebFragmentBinding;->clearButton:Landroid/widget/ImageButton;

    iput-object p6, p0, Lcom/sec/android/app/sbrowser/databinding/QuickAccessAddWebFragmentBinding;->clearButtonContainer:Landroid/widget/LinearLayout;

    iput-object p7, p0, Lcom/sec/android/app/sbrowser/databinding/QuickAccessAddWebFragmentBinding;->editText:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessAddWebEditText;

    iput-object p8, p0, Lcom/sec/android/app/sbrowser/databinding/QuickAccessAddWebFragmentBinding;->editTextInputCard:Landroidx/cardview/widget/CardView;

    iput-object p9, p0, Lcom/sec/android/app/sbrowser/databinding/QuickAccessAddWebFragmentBinding;->editTextInputLayout:Lcom/google/android/material/textfield/TextInputLayout;

    iput-object p10, p0, Lcom/sec/android/app/sbrowser/databinding/QuickAccessAddWebFragmentBinding;->items:Landroidx/recyclerview/widget/RecyclerView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/sec/android/app/sbrowser/databinding/QuickAccessAddWebFragmentBinding;
    .locals 13
    .param p0    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const v0, 0x7f0b00a0

    invoke-static {v0, p0}, LG5/p;->b(ILandroid/view/View;)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Lcom/sec/android/app/sbrowser/common/widget/ShapedButton;

    if-eqz v4, :cond_0

    const v0, 0x7f0b01b3

    invoke-static {v0, p0}, LG5/p;->b(ILandroid/view/View;)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroid/widget/LinearLayout;

    if-eqz v5, :cond_0

    const v0, 0x7f0b0206

    invoke-static {v0, p0}, LG5/p;->b(ILandroid/view/View;)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Lcom/sec/android/app/sbrowser/common/widget/ShapedButton;

    if-eqz v6, :cond_0

    const v0, 0x7f0b02a7

    invoke-static {v0, p0}, LG5/p;->b(ILandroid/view/View;)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Landroid/widget/ImageButton;

    if-eqz v7, :cond_0

    const v0, 0x7f0b02a8

    invoke-static {v0, p0}, LG5/p;->b(ILandroid/view/View;)Landroid/view/View;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Landroid/widget/LinearLayout;

    if-eqz v8, :cond_0

    const v0, 0x7f0b048d

    invoke-static {v0, p0}, LG5/p;->b(ILandroid/view/View;)Landroid/view/View;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessAddWebEditText;

    if-eqz v9, :cond_0

    const v0, 0x7f0b048f

    invoke-static {v0, p0}, LG5/p;->b(ILandroid/view/View;)Landroid/view/View;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Landroidx/cardview/widget/CardView;

    if-eqz v10, :cond_0

    const v0, 0x7f0b0490

    invoke-static {v0, p0}, LG5/p;->b(ILandroid/view/View;)Landroid/view/View;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Lcom/google/android/material/textfield/TextInputLayout;

    if-eqz v11, :cond_0

    const v0, 0x7f0b0653

    invoke-static {v0, p0}, LG5/p;->b(ILandroid/view/View;)Landroid/view/View;

    move-result-object v1

    move-object v12, v1

    check-cast v12, Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v12, :cond_0

    new-instance v0, Lcom/sec/android/app/sbrowser/databinding/QuickAccessAddWebFragmentBinding;

    move-object v3, p0

    check-cast v3, Landroid/widget/LinearLayout;

    move-object v2, v0

    invoke-direct/range {v2 .. v12}, Lcom/sec/android/app/sbrowser/databinding/QuickAccessAddWebFragmentBinding;-><init>(Landroid/widget/LinearLayout;Lcom/sec/android/app/sbrowser/common/widget/ShapedButton;Landroid/widget/LinearLayout;Lcom/sec/android/app/sbrowser/common/widget/ShapedButton;Landroid/widget/ImageButton;Landroid/widget/LinearLayout;Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessAddWebEditText;Landroidx/cardview/widget/CardView;Lcom/google/android/material/textfield/TextInputLayout;Landroidx/recyclerview/widget/RecyclerView;)V

    return-object v0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Missing required view with ID: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/sec/android/app/sbrowser/databinding/QuickAccessAddWebFragmentBinding;
    .locals 2
    .param p0    # Landroid/view/LayoutInflater;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const v0, 0x7f0e058c

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_0
    invoke-static {p0}, Lcom/sec/android/app/sbrowser/databinding/QuickAccessAddWebFragmentBinding;->bind(Landroid/view/View;)Lcom/sec/android/app/sbrowser/databinding/QuickAccessAddWebFragmentBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getRoot()Landroid/widget/LinearLayout;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/databinding/QuickAccessAddWebFragmentBinding;->rootView:Landroid/widget/LinearLayout;

    return-object p0
.end method
