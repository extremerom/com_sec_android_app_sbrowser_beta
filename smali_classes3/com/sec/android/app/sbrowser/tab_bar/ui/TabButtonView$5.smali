.class Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarChildTouchDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView$5;->this$0:Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getTargetView()Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView$5;->this$0:Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;->j(Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public getTouchSlop()I
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView$5;->this$0:Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p0

    return p0
.end method

.method public isDesktopMode()Z
    .locals 0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DesktopModeUtils;->isDesktopMode()Z

    move-result p0

    return p0
.end method
