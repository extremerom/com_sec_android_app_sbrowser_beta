.class Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/multi_tab/MultiTabEditBottomBar$Delegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl;->initEditBottomBar()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl$7;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getGroupCount()I
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl$7;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mTabMainView:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;->getGroupCnt()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isAllClosable()Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl$7;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl;

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mTabMainView:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;->getCurrentShowingItemCount()I

    move-result v0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl$7;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mTabMainView:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;->getSelectedItemCount()I

    move-result p0

    if-ne v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isEditModeFromSearch()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl$7;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl;

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl;->mIsEditModeFromSearch:Z

    return p0
.end method
