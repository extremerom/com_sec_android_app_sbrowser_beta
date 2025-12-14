.class Lcom/sec/android/app/sbrowser/search_window/ui/quickaccess/QuickAccessSearchWindowAdapter$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/search_window/ui/quickaccess/QuickAccessSearchWindowListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/search_window/ui/quickaccess/QuickAccessSearchWindowAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/sec/android/app/sbrowser/search_window/ui/quickaccess/QuickAccessSearchWindowAdapter$QuickAccessSearchWindowViewHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/search_window/ui/quickaccess/QuickAccessSearchWindowAdapter;

.field final synthetic val$viewModel:Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchWindowViewModel;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/search_window/ui/quickaccess/QuickAccessSearchWindowAdapter;Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchWindowViewModel;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/search_window/ui/quickaccess/QuickAccessSearchWindowAdapter$1;->this$0:Lcom/sec/android/app/sbrowser/search_window/ui/quickaccess/QuickAccessSearchWindowAdapter;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/search_window/ui/quickaccess/QuickAccessSearchWindowAdapter$1;->val$viewModel:Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchWindowViewModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Ljava/lang/String;Ljava/lang/String;Lcom/sec/android/app/sbrowser/search_window/ui/quickaccess/QuickAccessSearchWindowAdapter$ItemType;)V
    .locals 2

    sget-object v0, Lcom/sec/android/app/sbrowser/search_window/ui/quickaccess/QuickAccessSearchWindowAdapter$2;->$SwitchMap$com$sec$android$app$sbrowser$search_window$ui$quickaccess$QuickAccessSearchWindowAdapter$ItemType:[I

    invoke-virtual {p3}, Ljava/lang/Enum;->ordinal()I

    move-result p3

    aget p3, v0, p3

    const/4 v0, 0x1

    if-eq p3, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/search_window/ui/quickaccess/QuickAccessSearchWindowAdapter$1;->val$viewModel:Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchWindowViewModel;

    new-instance p3, Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchSuggestionItem;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessQueryParameterUtils;->getOriginalUrlFromReferer(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x2

    invoke-direct {p3, p1, p2, v0, v1}, Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchSuggestionItem;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    invoke-virtual {p0, p3}, Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchWindowViewModel;->onSuggestionItemSelected(Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchSuggestionItem;)V

    :goto_0
    return-void
.end method

.method public onClickEvent(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 p0, 0x0

    const-string v0, "quick_access"

    invoke-static {p0, p1, v0}, Lcom/sec/android/app/sbrowser/search_window/ui/base/SearchWindowSILog;->sendClick(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onLongClick(Ljava/lang/String;Ljava/lang/String;Lcom/sec/android/app/sbrowser/search_window/ui/quickaccess/QuickAccessSearchWindowAdapter$ItemType;)V
    .locals 2

    sget-object v0, Lcom/sec/android/app/sbrowser/search_window/ui/quickaccess/QuickAccessSearchWindowAdapter$2;->$SwitchMap$com$sec$android$app$sbrowser$search_window$ui$quickaccess$QuickAccessSearchWindowAdapter$ItemType:[I

    invoke-virtual {p3}, Ljava/lang/Enum;->ordinal()I

    move-result p3

    aget p3, v0, p3

    const/4 v0, 0x1

    if-eq p3, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/search_window/ui/quickaccess/QuickAccessSearchWindowAdapter$1;->val$viewModel:Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchWindowViewModel;

    new-instance p3, Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchSuggestionItem;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessQueryParameterUtils;->getOriginalUrlFromReferer(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x2

    invoke-direct {p3, p1, p2, v0, v1}, Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchSuggestionItem;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    invoke-virtual {p0, p3}, Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchWindowViewModel;->onLongClickSuggestionItemSelected(Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchSuggestionItem;)V

    :goto_0
    return-void
.end method
