.class public Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayoutFactoryImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/common/di/QuickAccessMainViewFactory;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getLayoutRes()I
    .locals 1
    .annotation build Landroidx/annotation/LayoutRes;
    .end annotation

    const v0, 0x7f0e059f

    return v0
.end method


# virtual methods
.method public create(Landroid/content/Context;ZZZZ)Landroid/view/View;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/view/LayoutInflater;->cloneInContext(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p0

    new-instance v0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessInflaterFactory;

    invoke-direct {v0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessInflaterFactory;-><init>()V

    invoke-static {p1, p2}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModelProvider;->get(Landroid/content/Context;Z)Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModel;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessInflaterFactory;->setViewModelParams(Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModel;)V

    invoke-virtual {v0, p3}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessInflaterFactory;->setIsForPreview(Z)V

    invoke-virtual {v0, p4}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessInflaterFactory;->setIsSolidColorLightThemed(Z)V

    invoke-virtual {v0, p5}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessInflaterFactory;->setIsLightThemed(Z)V

    invoke-virtual {p0, v0}, Landroid/view/LayoutInflater;->setFactory2(Landroid/view/LayoutInflater$Factory2;)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayoutFactoryImpl;->getLayoutRes()I

    move-result p1

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method
