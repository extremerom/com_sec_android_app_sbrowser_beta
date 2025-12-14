.class Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarScrollableLayout$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/tab_bar/ui/util/TabBarScrollHelper$Delegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarScrollableLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarScrollableLayout;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarScrollableLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarScrollableLayout$1;->this$0:Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarScrollableLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getOverlappedPadding()D
    .locals 2

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarScrollableLayout$1;->this$0:Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarScrollableLayout;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarBaseLayout;->getLayoutManager()Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayoutManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayoutManager;->getOverlappedPadding()D

    move-result-wide v0

    return-wide v0
.end method

.method public getScrollHeaderWidth()D
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarScrollableLayout$1;->this$0:Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarScrollableLayout;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarScrollableLayout;->f(Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarScrollableLayout;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarScrollableLayout$1;->this$0:Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarScrollableLayout;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarBaseLayout;->getTabGroupScrollHeader()Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupScrollHeader;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p0

    int-to-double v0, p0

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getScrollX()I
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarScrollableLayout$1;->this$0:Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarScrollableLayout;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarBaseLayout;->getTabBarScrollView()Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarScrollView;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result p0

    return p0
.end method

.method public getTabBarWidth()D
    .locals 2

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarScrollableLayout$1;->this$0:Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarScrollableLayout;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarBaseLayout;->getLayoutManager()Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayoutManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayoutManager;->getTabBarWidth()D

    move-result-wide v0

    return-wide v0
.end method

.method public isScrollButtonEnabled()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarScrollableLayout$1;->this$0:Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarScrollableLayout;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarBaseLayout;->getLayoutManager()Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayoutManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayoutManager;->isScrollButtonEnabled()Z

    move-result p0

    return p0
.end method

.method public isWrapLayoutNeeded()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarScrollableLayout$1;->this$0:Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarScrollableLayout;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarBaseLayout;->getLayoutManager()Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayoutManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayoutManager;->isWrapLayoutNeeded()Z

    move-result p0

    return p0
.end method
