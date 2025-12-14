.class public final synthetic Lcom/sec/android/app/sbrowser/quickaccess/ui/page/E;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessEmptySpaceAdapter$Delegate;
.implements Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessCheckableControlBar$OnEmptyCheckableListListener;
.implements Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessCheckableControlBar$OnBottomBarVisibilityChangedListener;
.implements Lcom/sec/android/app/sbrowser/quickaccess/ui/page/IQuickAccessAdapterFactory;
.implements Landroidx/recyclerview/widget/Y0;


# instance fields
.field public final synthetic a:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;


# direct methods
.method public synthetic constructor <init>(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/E;->a:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createIconAdapter(I)Landroidx/recyclerview/widget/u0;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/E;->a:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->O(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;I)Landroidx/recyclerview/widget/u0;

    move-result-object p0

    return-object p0
.end method

.method public getEmptySpaceHeight()I
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/E;->a:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->G(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;)I

    move-result p0

    return p0
.end method

.method public onEmptyCheckableList()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/E;->a:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->m(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;)V

    return-void
.end method

.method public onVisibilityChanged(Z)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/E;->a:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->M(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;Z)V

    return-void
.end method
