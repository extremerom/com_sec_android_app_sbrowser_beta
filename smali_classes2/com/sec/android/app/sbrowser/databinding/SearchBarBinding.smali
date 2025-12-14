.class public abstract Lcom/sec/android/app/sbrowser/databinding/SearchBarBinding;
.super Landroidx/databinding/k;
.source "SourceFile"


# instance fields
.field public final clearButton:Landroid/widget/ImageButton;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field protected mSearchBarBinding:Lcom/sec/android/app/sbrowser/search_widget/SearchBar;
    .annotation runtime Landroidx/databinding/Bindable;
    .end annotation
.end field

.field public final searchBar:Lcom/sec/android/app/sbrowser/search_widget/SearchBar;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final searchEngineLayout:Lcom/sec/android/app/sbrowser/databinding/SearchEngineButtonBinding;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final searchKeyword:Lcom/sec/android/app/sbrowser/search_widget/SearchBarEditText;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final searchKeywordParent:Landroid/widget/LinearLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final voiceButton:Landroid/widget/ImageButton;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;Landroid/view/View;ILandroid/widget/ImageButton;Lcom/sec/android/app/sbrowser/search_widget/SearchBar;Lcom/sec/android/app/sbrowser/databinding/SearchEngineButtonBinding;Lcom/sec/android/app/sbrowser/search_widget/SearchBarEditText;Landroid/widget/LinearLayout;Landroid/widget/ImageButton;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroidx/databinding/k;-><init>(Ljava/lang/Object;Landroid/view/View;I)V

    iput-object p4, p0, Lcom/sec/android/app/sbrowser/databinding/SearchBarBinding;->clearButton:Landroid/widget/ImageButton;

    iput-object p5, p0, Lcom/sec/android/app/sbrowser/databinding/SearchBarBinding;->searchBar:Lcom/sec/android/app/sbrowser/search_widget/SearchBar;

    iput-object p6, p0, Lcom/sec/android/app/sbrowser/databinding/SearchBarBinding;->searchEngineLayout:Lcom/sec/android/app/sbrowser/databinding/SearchEngineButtonBinding;

    iput-object p7, p0, Lcom/sec/android/app/sbrowser/databinding/SearchBarBinding;->searchKeyword:Lcom/sec/android/app/sbrowser/search_widget/SearchBarEditText;

    iput-object p8, p0, Lcom/sec/android/app/sbrowser/databinding/SearchBarBinding;->searchKeywordParent:Landroid/widget/LinearLayout;

    iput-object p9, p0, Lcom/sec/android/app/sbrowser/databinding/SearchBarBinding;->voiceButton:Landroid/widget/ImageButton;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/sec/android/app/sbrowser/databinding/SearchBarBinding;
    .locals 1
    .param p0    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    sget-object v0, Landroidx/databinding/f;->a:Landroidx/databinding/DataBinderMapperImpl;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/sec/android/app/sbrowser/databinding/SearchBarBinding;->bind(Landroid/view/View;Ljava/lang/Object;)Lcom/sec/android/app/sbrowser/databinding/SearchBarBinding;

    move-result-object p0

    return-object p0
.end method

.method public static bind(Landroid/view/View;Ljava/lang/Object;)Lcom/sec/android/app/sbrowser/databinding/SearchBarBinding;
    .locals 1
    .param p0    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const v0, 0x7f0e0811

    invoke-static {p1, p0, v0}, Landroidx/databinding/k;->bind(Ljava/lang/Object;Landroid/view/View;I)Landroidx/databinding/k;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/sbrowser/databinding/SearchBarBinding;

    return-object p0
.end method


# virtual methods
.method public abstract setSearchBarBinding(Lcom/sec/android/app/sbrowser/search_widget/SearchBar;)V
    .param p1    # Lcom/sec/android/app/sbrowser/search_widget/SearchBar;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
.end method
