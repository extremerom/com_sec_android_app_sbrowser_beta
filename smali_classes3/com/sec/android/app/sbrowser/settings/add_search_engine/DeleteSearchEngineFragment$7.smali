.class Lcom/sec/android/app/sbrowser/settings/add_search_engine/DeleteSearchEngineFragment$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/common/utils/BottomBarController$BottomBarAnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/settings/add_search_engine/DeleteSearchEngineFragment;->showBottomBar()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/settings/add_search_engine/DeleteSearchEngineFragment;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/settings/add_search_engine/DeleteSearchEngineFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/add_search_engine/DeleteSearchEngineFragment$7;->this$0:Lcom/sec/android/app/sbrowser/settings/add_search_engine/DeleteSearchEngineFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBottomBarAnimationStart()V
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/add_search_engine/DeleteSearchEngineFragment$7;->this$0:Lcom/sec/android/app/sbrowser/settings/add_search_engine/DeleteSearchEngineFragment;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/settings/add_search_engine/DeleteSearchEngineFragment;->p(Lcom/sec/android/app/sbrowser/settings/add_search_engine/DeleteSearchEngineFragment;)Landroid/view/View;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
