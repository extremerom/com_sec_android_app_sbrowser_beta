.class Lcom/sec/android/app/sbrowser/download/ui/recent_search/DHRecentSearchAdapter$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/download/ui/recent_search/DHRecentSearchAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/download/ui/recent_search/DHRecentSearchAdapter;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/download/ui/recent_search/DHRecentSearchAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/download/ui/recent_search/DHRecentSearchAdapter$1;->this$0:Lcom/sec/android/app/sbrowser/download/ui/recent_search/DHRecentSearchAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 3

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/ui/recent_search/DHRecentSearchAdapter$1;->this$0:Lcom/sec/android/app/sbrowser/download/ui/recent_search/DHRecentSearchAdapter;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/download/ui/recent_search/DHRecentSearchAdapter;->a(Lcom/sec/android/app/sbrowser/download/ui/recent_search/DHRecentSearchAdapter;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p3

    if-nez p3, :cond_7

    const/16 p3, 0x3d

    if-eq p2, p3, :cond_5

    packed-switch p2, :pswitch_data_0

    goto :goto_4

    :pswitch_0
    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/ui/recent_search/DHRecentSearchAdapter$1;->this$0:Lcom/sec/android/app/sbrowser/download/ui/recent_search/DHRecentSearchAdapter;

    add-int/2addr p1, v2

    invoke-virtual {p0, p1, v1}, Lcom/sec/android/app/sbrowser/download/ui/recent_search/DHRecentSearchAdapter;->setFocusOnNextView(IZ)Z

    goto :goto_1

    :cond_1
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/ui/recent_search/DHRecentSearchAdapter$1;->this$0:Lcom/sec/android/app/sbrowser/download/ui/recent_search/DHRecentSearchAdapter;

    invoke-virtual {p0, p1, v1}, Lcom/sec/android/app/sbrowser/download/ui/recent_search/DHRecentSearchAdapter;->setFocusOnNextView(IZ)Z

    :goto_1
    return v2

    :pswitch_1
    if-nez v0, :cond_2

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/ui/recent_search/DHRecentSearchAdapter$1;->this$0:Lcom/sec/android/app/sbrowser/download/ui/recent_search/DHRecentSearchAdapter;

    invoke-virtual {p0, p1, v1}, Lcom/sec/android/app/sbrowser/download/ui/recent_search/DHRecentSearchAdapter;->setFocusOnNextView(IZ)Z

    goto :goto_2

    :cond_2
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/ui/recent_search/DHRecentSearchAdapter$1;->this$0:Lcom/sec/android/app/sbrowser/download/ui/recent_search/DHRecentSearchAdapter;

    add-int/2addr p1, v2

    invoke-virtual {p0, p1, v1}, Lcom/sec/android/app/sbrowser/download/ui/recent_search/DHRecentSearchAdapter;->setFocusOnNextView(IZ)Z

    :goto_2
    return v2

    :pswitch_2
    iget-object p2, p0, Lcom/sec/android/app/sbrowser/download/ui/recent_search/DHRecentSearchAdapter$1;->this$0:Lcom/sec/android/app/sbrowser/download/ui/recent_search/DHRecentSearchAdapter;

    invoke-static {p2}, Lcom/sec/android/app/sbrowser/download/ui/recent_search/DHRecentSearchAdapter;->b(Lcom/sec/android/app/sbrowser/download/ui/recent_search/DHRecentSearchAdapter;)Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-eq p1, p2, :cond_3

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/ui/recent_search/DHRecentSearchAdapter$1;->this$0:Lcom/sec/android/app/sbrowser/download/ui/recent_search/DHRecentSearchAdapter;

    add-int/2addr p1, v2

    invoke-virtual {p0, p1, v2}, Lcom/sec/android/app/sbrowser/download/ui/recent_search/DHRecentSearchAdapter;->setFocusOnNextView(IZ)Z

    :cond_3
    return v2

    :pswitch_3
    if-eqz p1, :cond_4

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/ui/recent_search/DHRecentSearchAdapter$1;->this$0:Lcom/sec/android/app/sbrowser/download/ui/recent_search/DHRecentSearchAdapter;

    sub-int/2addr p1, v2

    invoke-virtual {p0, p1, v2}, Lcom/sec/android/app/sbrowser/download/ui/recent_search/DHRecentSearchAdapter;->setFocusOnNextView(IZ)Z

    goto :goto_3

    :cond_4
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/ui/recent_search/DHRecentSearchAdapter$1;->this$0:Lcom/sec/android/app/sbrowser/download/ui/recent_search/DHRecentSearchAdapter;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/download/ui/recent_search/DHRecentSearchAdapter;->c(Lcom/sec/android/app/sbrowser/download/ui/recent_search/DHRecentSearchAdapter;)Lcom/sec/android/app/sbrowser/download/ui/recent_search/RecentSearchUi;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/download/ui/recent_search/RecentSearchUi;->setFocusOnEditTextBox()V

    :goto_3
    return v2

    :cond_5
    iget-object p2, p0, Lcom/sec/android/app/sbrowser/download/ui/recent_search/DHRecentSearchAdapter$1;->this$0:Lcom/sec/android/app/sbrowser/download/ui/recent_search/DHRecentSearchAdapter;

    add-int/2addr p1, v2

    invoke-virtual {p2, p1, v1}, Lcom/sec/android/app/sbrowser/download/ui/recent_search/DHRecentSearchAdapter;->setFocusOnNextView(IZ)Z

    move-result p1

    if-nez p1, :cond_6

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/ui/recent_search/DHRecentSearchAdapter$1;->this$0:Lcom/sec/android/app/sbrowser/download/ui/recent_search/DHRecentSearchAdapter;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/download/ui/recent_search/DHRecentSearchAdapter;->c(Lcom/sec/android/app/sbrowser/download/ui/recent_search/DHRecentSearchAdapter;)Lcom/sec/android/app/sbrowser/download/ui/recent_search/RecentSearchUi;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/download/ui/recent_search/RecentSearchUi;->shiftFocusToTop()V

    :cond_6
    return v2

    :cond_7
    :goto_4
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
