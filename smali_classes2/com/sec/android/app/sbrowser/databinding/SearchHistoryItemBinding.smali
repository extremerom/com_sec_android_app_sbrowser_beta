.class public abstract Lcom/sec/android/app/sbrowser/databinding/SearchHistoryItemBinding;
.super Landroidx/databinding/k;
.source "SourceFile"


# instance fields
.field public final deleteSearchHistoryButton:Landroid/widget/ImageView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field protected mSearchHistoryItem:Lcom/sec/android/app/sbrowser/search_window/model/search_history/SearchHistoryItem;
    .annotation runtime Landroidx/databinding/Bindable;
    .end annotation
.end field

.field public final searchHistoryItemLayout:Landroid/widget/LinearLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final searchHistoryItemTextView:Lcom/sec/android/app/sbrowser/common/widget/AutoScaleTextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;Landroid/view/View;ILandroid/widget/ImageView;Landroid/widget/LinearLayout;Lcom/sec/android/app/sbrowser/common/widget/AutoScaleTextView;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroidx/databinding/k;-><init>(Ljava/lang/Object;Landroid/view/View;I)V

    iput-object p4, p0, Lcom/sec/android/app/sbrowser/databinding/SearchHistoryItemBinding;->deleteSearchHistoryButton:Landroid/widget/ImageView;

    iput-object p5, p0, Lcom/sec/android/app/sbrowser/databinding/SearchHistoryItemBinding;->searchHistoryItemLayout:Landroid/widget/LinearLayout;

    iput-object p6, p0, Lcom/sec/android/app/sbrowser/databinding/SearchHistoryItemBinding;->searchHistoryItemTextView:Lcom/sec/android/app/sbrowser/common/widget/AutoScaleTextView;

    return-void
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/sec/android/app/sbrowser/databinding/SearchHistoryItemBinding;
    .locals 1
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

    sget-object v0, Landroidx/databinding/f;->a:Landroidx/databinding/DataBinderMapperImpl;

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/sec/android/app/sbrowser/databinding/SearchHistoryItemBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lcom/sec/android/app/sbrowser/databinding/SearchHistoryItemBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lcom/sec/android/app/sbrowser/databinding/SearchHistoryItemBinding;
    .locals 1
    .param p0    # Landroid/view/LayoutInflater;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const v0, 0x7f0e0816

    invoke-static {p0, v0, p1, p2, p3}, Landroidx/databinding/k;->inflateInternal(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/k;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/sbrowser/databinding/SearchHistoryItemBinding;

    return-object p0
.end method


# virtual methods
.method public abstract setSearchHistoryItem(Lcom/sec/android/app/sbrowser/search_window/model/search_history/SearchHistoryItem;)V
    .param p1    # Lcom/sec/android/app/sbrowser/search_window/model/search_history/SearchHistoryItem;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
.end method
