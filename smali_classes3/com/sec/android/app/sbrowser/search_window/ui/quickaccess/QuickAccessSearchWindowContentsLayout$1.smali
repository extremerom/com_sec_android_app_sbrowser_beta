.class Lcom/sec/android/app/sbrowser/search_window/ui/quickaccess/QuickAccessSearchWindowContentsLayout$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/search_window/ui/quickaccess/QuickAccessSearchWindowListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/search_window/ui/quickaccess/QuickAccessSearchWindowContentsLayout;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/search_window/ui/quickaccess/QuickAccessSearchWindowContentsLayout;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/search_window/ui/quickaccess/QuickAccessSearchWindowContentsLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/search_window/ui/quickaccess/QuickAccessSearchWindowContentsLayout$1;->this$0:Lcom/sec/android/app/sbrowser/search_window/ui/quickaccess/QuickAccessSearchWindowContentsLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Ljava/lang/String;Ljava/lang/String;Lcom/sec/android/app/sbrowser/search_window/ui/quickaccess/QuickAccessSearchWindowAdapter$ItemType;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/search_window/ui/quickaccess/QuickAccessSearchWindowContentsLayout$1;->this$0:Lcom/sec/android/app/sbrowser/search_window/ui/quickaccess/QuickAccessSearchWindowContentsLayout;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/search_window/ui/quickaccess/QuickAccessSearchWindowContentsLayout;->k(Lcom/sec/android/app/sbrowser/search_window/ui/quickaccess/QuickAccessSearchWindowContentsLayout;)Lcom/sec/android/app/sbrowser/search_window/ui/quickaccess/QuickAccessSearchWindowListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/search_window/ui/quickaccess/QuickAccessSearchWindowContentsLayout$1;->this$0:Lcom/sec/android/app/sbrowser/search_window/ui/quickaccess/QuickAccessSearchWindowContentsLayout;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/search_window/ui/quickaccess/QuickAccessSearchWindowContentsLayout;->k(Lcom/sec/android/app/sbrowser/search_window/ui/quickaccess/QuickAccessSearchWindowContentsLayout;)Lcom/sec/android/app/sbrowser/search_window/ui/quickaccess/QuickAccessSearchWindowListener;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/search_window/ui/quickaccess/QuickAccessSearchWindowListener;->onClick(Ljava/lang/String;Ljava/lang/String;Lcom/sec/android/app/sbrowser/search_window/ui/quickaccess/QuickAccessSearchWindowAdapter$ItemType;)V

    :cond_0
    return-void
.end method

.method public onClickEvent(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/search_window/ui/quickaccess/QuickAccessSearchWindowContentsLayout$1;->this$0:Lcom/sec/android/app/sbrowser/search_window/ui/quickaccess/QuickAccessSearchWindowContentsLayout;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/search_window/ui/quickaccess/QuickAccessSearchWindowContentsLayout;->k(Lcom/sec/android/app/sbrowser/search_window/ui/quickaccess/QuickAccessSearchWindowContentsLayout;)Lcom/sec/android/app/sbrowser/search_window/ui/quickaccess/QuickAccessSearchWindowListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/search_window/ui/quickaccess/QuickAccessSearchWindowContentsLayout$1;->this$0:Lcom/sec/android/app/sbrowser/search_window/ui/quickaccess/QuickAccessSearchWindowContentsLayout;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/search_window/ui/quickaccess/QuickAccessSearchWindowContentsLayout;->k(Lcom/sec/android/app/sbrowser/search_window/ui/quickaccess/QuickAccessSearchWindowContentsLayout;)Lcom/sec/android/app/sbrowser/search_window/ui/quickaccess/QuickAccessSearchWindowListener;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/search_window/ui/quickaccess/QuickAccessSearchWindowListener;->onClickEvent(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onLongClick(Ljava/lang/String;Ljava/lang/String;Lcom/sec/android/app/sbrowser/search_window/ui/quickaccess/QuickAccessSearchWindowAdapter$ItemType;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/search_window/ui/quickaccess/QuickAccessSearchWindowContentsLayout$1;->this$0:Lcom/sec/android/app/sbrowser/search_window/ui/quickaccess/QuickAccessSearchWindowContentsLayout;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/search_window/ui/quickaccess/QuickAccessSearchWindowContentsLayout;->k(Lcom/sec/android/app/sbrowser/search_window/ui/quickaccess/QuickAccessSearchWindowContentsLayout;)Lcom/sec/android/app/sbrowser/search_window/ui/quickaccess/QuickAccessSearchWindowListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/search_window/ui/quickaccess/QuickAccessSearchWindowContentsLayout$1;->this$0:Lcom/sec/android/app/sbrowser/search_window/ui/quickaccess/QuickAccessSearchWindowContentsLayout;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/search_window/ui/quickaccess/QuickAccessSearchWindowContentsLayout;->k(Lcom/sec/android/app/sbrowser/search_window/ui/quickaccess/QuickAccessSearchWindowContentsLayout;)Lcom/sec/android/app/sbrowser/search_window/ui/quickaccess/QuickAccessSearchWindowListener;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/search_window/ui/quickaccess/QuickAccessSearchWindowListener;->onLongClick(Ljava/lang/String;Ljava/lang/String;Lcom/sec/android/app/sbrowser/search_window/ui/quickaccess/QuickAccessSearchWindowAdapter$ItemType;)V

    :cond_0
    return-void
.end method
