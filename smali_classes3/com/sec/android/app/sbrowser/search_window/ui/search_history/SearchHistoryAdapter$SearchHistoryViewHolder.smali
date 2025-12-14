.class public final Lcom/sec/android/app/sbrowser/search_window/ui/search_history/SearchHistoryAdapter$SearchHistoryViewHolder;
.super Landroidx/recyclerview/widget/h1;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/search_window/ui/search_history/SearchHistoryAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "SearchHistoryViewHolder"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0086\u0004\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u000f\u0010\u0007\u001a\u00020\u0006H\u0002\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u0015\u0010\u000b\u001a\u00020\u00062\u0006\u0010\n\u001a\u00020\t\u00a2\u0006\u0004\u0008\u000b\u0010\u000cR\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0003\u0010\rR\u001b\u0010\u0013\u001a\u00020\u000e8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u000f\u0010\u0010\u001a\u0004\u0008\u0011\u0010\u0012R\u001b\u0010\u0018\u001a\u00020\u00148BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0015\u0010\u0010\u001a\u0004\u0008\u0016\u0010\u0017\u00a8\u0006\u0019"
    }
    d2 = {
        "Lcom/sec/android/app/sbrowser/search_window/ui/search_history/SearchHistoryAdapter$SearchHistoryViewHolder;",
        "Landroidx/recyclerview/widget/h1;",
        "Lcom/sec/android/app/sbrowser/databinding/SearchHistoryItemBinding;",
        "binding",
        "<init>",
        "(Lcom/sec/android/app/sbrowser/search_window/ui/search_history/SearchHistoryAdapter;Lcom/sec/android/app/sbrowser/databinding/SearchHistoryItemBinding;)V",
        "Ldb/r;",
        "updateBackground",
        "()V",
        "Lcom/sec/android/app/sbrowser/search_window/model/search_history/SearchHistoryItem;",
        "item",
        "bind",
        "(Lcom/sec/android/app/sbrowser/search_window/model/search_history/SearchHistoryItem;)V",
        "Lcom/sec/android/app/sbrowser/databinding/SearchHistoryItemBinding;",
        "Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchHistoryViewModel;",
        "searchHistoryViewModel$delegate",
        "Ldb/f;",
        "getSearchHistoryViewModel",
        "()Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchHistoryViewModel;",
        "searchHistoryViewModel",
        "Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchWindowViewModel;",
        "searchWindowViewModel$delegate",
        "getSearchWindowViewModel",
        "()Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchWindowViewModel;",
        "searchWindowViewModel",
        "SBrowser_highendBetaGlobal64Release"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
.end annotation


# instance fields
.field private final binding:Lcom/sec/android/app/sbrowser/databinding/SearchHistoryItemBinding;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final searchHistoryViewModel$delegate:Ldb/f;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final searchWindowViewModel$delegate:Ldb/f;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field final synthetic this$0:Lcom/sec/android/app/sbrowser/search_window/ui/search_history/SearchHistoryAdapter;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/search_window/ui/search_history/SearchHistoryAdapter;Lcom/sec/android/app/sbrowser/databinding/SearchHistoryItemBinding;)V
    .locals 3
    .param p1    # Lcom/sec/android/app/sbrowser/search_window/ui/search_history/SearchHistoryAdapter;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/android/app/sbrowser/databinding/SearchHistoryItemBinding;",
            ")V"
        }
    .end annotation

    const-string v0, "binding"

    invoke-static {p2, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/search_window/ui/search_history/SearchHistoryAdapter$SearchHistoryViewHolder;->this$0:Lcom/sec/android/app/sbrowser/search_window/ui/search_history/SearchHistoryAdapter;

    invoke-virtual {p2}, Landroidx/databinding/k;->getRoot()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Landroidx/recyclerview/widget/h1;-><init>(Landroid/view/View;)V

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/search_window/ui/search_history/SearchHistoryAdapter$SearchHistoryViewHolder;->binding:Lcom/sec/android/app/sbrowser/databinding/SearchHistoryItemBinding;

    new-instance v0, Lcom/sec/android/app/sbrowser/search_window/ui/search_history/a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/sbrowser/search_window/ui/search_history/a;-><init>(Lcom/sec/android/app/sbrowser/search_window/ui/search_history/SearchHistoryAdapter$SearchHistoryViewHolder;I)V

    invoke-static {v0}, LG5/z2;->e(Lsb/a;)Ldb/o;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/search_window/ui/search_history/SearchHistoryAdapter$SearchHistoryViewHolder;->searchHistoryViewModel$delegate:Ldb/f;

    new-instance v0, Lcom/sec/android/app/sbrowser/search_window/ui/search_history/a;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/sbrowser/search_window/ui/search_history/a;-><init>(Lcom/sec/android/app/sbrowser/search_window/ui/search_history/SearchHistoryAdapter$SearchHistoryViewHolder;I)V

    invoke-static {v0}, LG5/z2;->e(Lsb/a;)Ldb/o;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/search_window/ui/search_history/SearchHistoryAdapter$SearchHistoryViewHolder;->searchWindowViewModel$delegate:Ldb/f;

    iget-object v0, p2, Lcom/sec/android/app/sbrowser/databinding/SearchHistoryItemBinding;->searchHistoryItemLayout:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/sec/android/app/sbrowser/search_window/ui/search_history/b;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcom/sec/android/app/sbrowser/search_window/ui/search_history/b;-><init>(Lcom/sec/android/app/sbrowser/search_window/ui/search_history/SearchHistoryAdapter$SearchHistoryViewHolder;Lcom/sec/android/app/sbrowser/search_window/ui/search_history/SearchHistoryAdapter;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p2, p2, Lcom/sec/android/app/sbrowser/databinding/SearchHistoryItemBinding;->deleteSearchHistoryButton:Landroid/widget/ImageView;

    new-instance v0, Lcom/sec/android/app/sbrowser/search_window/ui/search_history/b;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, v1}, Lcom/sec/android/app/sbrowser/search_window/ui/search_history/b;-><init>(Lcom/sec/android/app/sbrowser/search_window/ui/search_history/SearchHistoryAdapter$SearchHistoryViewHolder;Lcom/sec/android/app/sbrowser/search_window/ui/search_history/SearchHistoryAdapter;I)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private static final _init_$lambda$2(Lcom/sec/android/app/sbrowser/search_window/ui/search_history/SearchHistoryAdapter$SearchHistoryViewHolder;Lcom/sec/android/app/sbrowser/search_window/ui/search_history/SearchHistoryAdapter;Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/h1;->getBindingAdapterPosition()I

    move-result p2

    if-gez p2, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/search_window/ui/search_history/SearchHistoryAdapter$SearchHistoryViewHolder;->getSearchHistoryViewModel()Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchHistoryViewModel;

    move-result-object p2

    invoke-virtual {p0}, Landroidx/recyclerview/widget/h1;->getBindingAdapterPosition()I

    move-result p0

    invoke-static {p1, p0}, Lcom/sec/android/app/sbrowser/search_window/ui/search_history/SearchHistoryAdapter;->access$getItem(Lcom/sec/android/app/sbrowser/search_window/ui/search_history/SearchHistoryAdapter;I)Lcom/sec/android/app/sbrowser/search_window/model/search_history/SearchHistoryItem;

    move-result-object p0

    const-string p1, "access$getItem(...)"

    invoke-static {p0, p1}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchHistoryViewModel;->onHistoryItemSelected(Lcom/sec/android/app/sbrowser/search_window/model/search_history/SearchHistoryItem;)V

    return-void
.end method

.method private static final _init_$lambda$3(Lcom/sec/android/app/sbrowser/search_window/ui/search_history/SearchHistoryAdapter$SearchHistoryViewHolder;Lcom/sec/android/app/sbrowser/search_window/ui/search_history/SearchHistoryAdapter;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/search_window/ui/search_history/SearchHistoryAdapter$SearchHistoryViewHolder;->getSearchHistoryViewModel()Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchHistoryViewModel;

    move-result-object p2

    invoke-virtual {p0}, Landroidx/recyclerview/widget/h1;->getBindingAdapterPosition()I

    move-result p0

    invoke-static {p1, p0}, Lcom/sec/android/app/sbrowser/search_window/ui/search_history/SearchHistoryAdapter;->access$getItem(Lcom/sec/android/app/sbrowser/search_window/ui/search_history/SearchHistoryAdapter;I)Lcom/sec/android/app/sbrowser/search_window/model/search_history/SearchHistoryItem;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/search_window/model/search_history/SearchHistoryItem;->getKeyword()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchHistoryViewModel;->delete(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic a(Lcom/sec/android/app/sbrowser/search_window/ui/search_history/SearchHistoryAdapter$SearchHistoryViewHolder;Lcom/sec/android/app/sbrowser/search_window/ui/search_history/SearchHistoryAdapter;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/sec/android/app/sbrowser/search_window/ui/search_history/SearchHistoryAdapter$SearchHistoryViewHolder;->_init_$lambda$2(Lcom/sec/android/app/sbrowser/search_window/ui/search_history/SearchHistoryAdapter$SearchHistoryViewHolder;Lcom/sec/android/app/sbrowser/search_window/ui/search_history/SearchHistoryAdapter;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic b(Lcom/sec/android/app/sbrowser/search_window/ui/search_history/SearchHistoryAdapter$SearchHistoryViewHolder;)Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchWindowViewModel;
    .locals 0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/search_window/ui/search_history/SearchHistoryAdapter$SearchHistoryViewHolder;->searchWindowViewModel_delegate$lambda$1(Lcom/sec/android/app/sbrowser/search_window/ui/search_history/SearchHistoryAdapter$SearchHistoryViewHolder;)Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchWindowViewModel;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c(Lcom/sec/android/app/sbrowser/search_window/ui/search_history/SearchHistoryAdapter$SearchHistoryViewHolder;)Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchHistoryViewModel;
    .locals 0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/search_window/ui/search_history/SearchHistoryAdapter$SearchHistoryViewHolder;->searchHistoryViewModel_delegate$lambda$0(Lcom/sec/android/app/sbrowser/search_window/ui/search_history/SearchHistoryAdapter$SearchHistoryViewHolder;)Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchHistoryViewModel;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic d(Lcom/sec/android/app/sbrowser/search_window/ui/search_history/SearchHistoryAdapter$SearchHistoryViewHolder;Lcom/sec/android/app/sbrowser/search_window/ui/search_history/SearchHistoryAdapter;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/sec/android/app/sbrowser/search_window/ui/search_history/SearchHistoryAdapter$SearchHistoryViewHolder;->_init_$lambda$3(Lcom/sec/android/app/sbrowser/search_window/ui/search_history/SearchHistoryAdapter$SearchHistoryViewHolder;Lcom/sec/android/app/sbrowser/search_window/ui/search_history/SearchHistoryAdapter;Landroid/view/View;)V

    return-void
.end method

.method private final getSearchHistoryViewModel()Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchHistoryViewModel;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/search_window/ui/search_history/SearchHistoryAdapter$SearchHistoryViewHolder;->searchHistoryViewModel$delegate:Ldb/f;

    invoke-interface {p0}, Ldb/f;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchHistoryViewModel;

    return-object p0
.end method

.method private final getSearchWindowViewModel()Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchWindowViewModel;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/search_window/ui/search_history/SearchHistoryAdapter$SearchHistoryViewHolder;->searchWindowViewModel$delegate:Ldb/f;

    invoke-interface {p0}, Ldb/f;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchWindowViewModel;

    return-object p0
.end method

.method private static final searchHistoryViewModel_delegate$lambda$0(Lcom/sec/android/app/sbrowser/search_window/ui/search_history/SearchHistoryAdapter$SearchHistoryViewHolder;)Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchHistoryViewModel;
    .locals 2

    new-instance v0, LZ3/x;

    iget-object p0, p0, Landroidx/recyclerview/widget/h1;->itemView:Landroid/view/View;

    const-string v1, "itemView"

    invoke-static {p0, v1}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Landroidx/lifecycle/l0;->h(Landroid/view/View;)Landroidx/lifecycle/y0;

    move-result-object p0

    invoke-static {p0}, Ltb/k;->c(Ljava/lang/Object;)V

    invoke-direct {v0, p0}, LZ3/x;-><init>(Landroidx/lifecycle/y0;)V

    const-class p0, Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchHistoryViewModel;

    invoke-virtual {v0, p0}, LZ3/x;->s(Ljava/lang/Class;)Landroidx/lifecycle/s0;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchHistoryViewModel;

    return-object p0
.end method

.method private static final searchWindowViewModel_delegate$lambda$1(Lcom/sec/android/app/sbrowser/search_window/ui/search_history/SearchHistoryAdapter$SearchHistoryViewHolder;)Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchWindowViewModel;
    .locals 2

    new-instance v0, LZ3/x;

    iget-object p0, p0, Landroidx/recyclerview/widget/h1;->itemView:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    const-string v1, "null cannot be cast to non-null type androidx.lifecycle.ViewModelStoreOwner"

    invoke-static {p0, v1}, Ltb/k;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Landroidx/lifecycle/y0;

    invoke-direct {v0, p0}, LZ3/x;-><init>(Landroidx/lifecycle/y0;)V

    const-class p0, Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchWindowViewModel;

    invoke-virtual {v0, p0}, LZ3/x;->s(Ljava/lang/Class;)Landroidx/lifecycle/s0;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchWindowViewModel;

    return-object p0
.end method

.method private final updateBackground()V
    .locals 3

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/search_window/ui/search_history/SearchHistoryAdapter$SearchHistoryViewHolder;->getSearchWindowViewModel()Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchWindowViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchWindowViewModel;->isDarkTheme()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/search_window/ui/search_history/SearchHistoryAdapter$SearchHistoryViewHolder;->binding:Lcom/sec/android/app/sbrowser/databinding/SearchHistoryItemBinding;

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/databinding/SearchHistoryItemBinding;->searchHistoryItemLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type android.graphics.drawable.LayerDrawable"

    invoke-static {v0, v1}, Ltb/k;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/graphics/drawable/LayerDrawable;

    const v1, 0x7f0b0150

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type android.graphics.drawable.GradientDrawable"

    invoke-static {v0, v1}, Ltb/k;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/GradientDrawable;->mutate()Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Landroidx/recyclerview/widget/h1;->itemView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f060993

    invoke-virtual {v1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/search_window/ui/search_history/SearchHistoryAdapter$SearchHistoryViewHolder;->binding:Lcom/sec/android/app/sbrowser/databinding/SearchHistoryItemBinding;

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/databinding/SearchHistoryItemBinding;->searchHistoryItemTextView:Lcom/sec/android/app/sbrowser/common/widget/AutoScaleTextView;

    iget-object p0, p0, Landroidx/recyclerview/widget/h1;->itemView:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    const v1, 0x7f060995

    invoke-virtual {p0, v1}, Landroid/content/Context;->getColor(I)I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final bind(Lcom/sec/android/app/sbrowser/search_window/model/search_history/SearchHistoryItem;)V
    .locals 1
    .param p1    # Lcom/sec/android/app/sbrowser/search_window/model/search_history/SearchHistoryItem;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "item"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/search_window/ui/search_history/SearchHistoryAdapter$SearchHistoryViewHolder;->binding:Lcom/sec/android/app/sbrowser/databinding/SearchHistoryItemBinding;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/databinding/SearchHistoryItemBinding;->setSearchHistoryItem(Lcom/sec/android/app/sbrowser/search_window/model/search_history/SearchHistoryItem;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/search_window/ui/search_history/SearchHistoryAdapter$SearchHistoryViewHolder;->binding:Lcom/sec/android/app/sbrowser/databinding/SearchHistoryItemBinding;

    invoke-virtual {p1}, Landroidx/databinding/k;->executePendingBindings()V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/search_window/ui/search_history/SearchHistoryAdapter$SearchHistoryViewHolder;->binding:Lcom/sec/android/app/sbrowser/databinding/SearchHistoryItemBinding;

    iget-object p1, p1, Lcom/sec/android/app/sbrowser/databinding/SearchHistoryItemBinding;->deleteSearchHistoryButton:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/sec/android/app/sbrowser/tooltip/TooltipCompat;->setTooltipText(Landroid/view/View;Ljava/lang/CharSequence;)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/search_window/ui/search_history/SearchHistoryAdapter$SearchHistoryViewHolder;->updateBackground()V

    return-void
.end method
