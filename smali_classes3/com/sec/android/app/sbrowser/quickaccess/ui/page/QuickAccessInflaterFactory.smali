.class Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessInflaterFactory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/LayoutInflater$Factory2;


# instance fields
.field private mIsForPreview:Z

.field private mIsLightThemed:Z

.field private mIsSolidColorLightThemed:Z

.field private mViewModel:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModel;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 7
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const-class p1, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    new-instance p1, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessInflaterFactory;->mViewModel:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModel;

    iget-boolean v4, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessInflaterFactory;->mIsForPreview:Z

    iget-boolean v5, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessInflaterFactory;->mIsSolidColorLightThemed:Z

    iget-boolean v6, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessInflaterFactory;->mIsLightThemed:Z

    move-object v0, p1

    move-object v1, p3

    move-object v2, p4

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModel;ZZZ)V

    return-object p1

    :cond_0
    const-class p1, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/MostVisitedIconRecyclerView;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    new-instance p1, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/MostVisitedIconRecyclerView;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessInflaterFactory;->mViewModel:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModel;

    invoke-direct {p1, p3, p4, p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/MostVisitedIconRecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModel;)V

    return-object p1

    :cond_1
    const-class p1, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessIconRecyclerView;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    new-instance p1, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessIconRecyclerView;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessInflaterFactory;->mViewModel:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModel;

    invoke-direct {p1, p3, p4, p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessIconRecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModel;)V

    return-object p1

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method public setIsForPreview(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessInflaterFactory;->mIsForPreview:Z

    return-void
.end method

.method public setIsLightThemed(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessInflaterFactory;->mIsLightThemed:Z

    return-void
.end method

.method public setIsSolidColorLightThemed(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessInflaterFactory;->mIsSolidColorLightThemed:Z

    return-void
.end method

.method public setViewModelParams(Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModel;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessInflaterFactory;->mViewModel:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModel;

    return-void
.end method
