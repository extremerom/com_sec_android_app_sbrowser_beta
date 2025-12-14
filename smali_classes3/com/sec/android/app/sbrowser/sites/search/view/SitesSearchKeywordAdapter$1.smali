.class Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchKeywordAdapter$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchKeywordAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchKeywordAdapter;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchKeywordAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchKeywordAdapter$1;->this$0:Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchKeywordAdapter;

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

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchKeywordAdapter$1;->this$0:Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchKeywordAdapter;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchKeywordAdapter;->a(Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchKeywordAdapter;)Landroid/content/Context;

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

    if-nez p3, :cond_4

    const/16 p3, 0x3d

    if-eq p2, p3, :cond_3

    packed-switch p2, :pswitch_data_0

    goto :goto_3

    :pswitch_0
    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchKeywordAdapter$1;->this$0:Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchKeywordAdapter;

    invoke-virtual {p0, p1, v1}, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchKeywordAdapter;->setFocusOnNextView(IZ)V

    goto :goto_1

    :cond_1
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchKeywordAdapter$1;->this$0:Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchKeywordAdapter;

    add-int/2addr p1, v2

    invoke-virtual {p0, p1, v1}, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchKeywordAdapter;->setFocusOnNextView(IZ)V

    :goto_1
    return v2

    :pswitch_1
    if-nez v0, :cond_2

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchKeywordAdapter$1;->this$0:Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchKeywordAdapter;

    invoke-virtual {p0, p1, v1}, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchKeywordAdapter;->setFocusOnNextView(IZ)V

    goto :goto_2

    :cond_2
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchKeywordAdapter$1;->this$0:Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchKeywordAdapter;

    add-int/2addr p1, v2

    invoke-virtual {p0, p1, v1}, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchKeywordAdapter;->setFocusOnNextView(IZ)V

    :goto_2
    return v2

    :pswitch_2
    if-eqz p1, :cond_4

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchKeywordAdapter$1;->this$0:Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchKeywordAdapter;

    sub-int/2addr p1, v2

    invoke-virtual {p0, p1, v2}, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchKeywordAdapter;->setFocusOnNextView(IZ)V

    return v2

    :cond_3
    :pswitch_3
    iget-object p2, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchKeywordAdapter$1;->this$0:Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchKeywordAdapter;

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchKeywordAdapter;->getCount()I

    move-result p2

    sub-int/2addr p2, v2

    if-eq p1, p2, :cond_4

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchKeywordAdapter$1;->this$0:Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchKeywordAdapter;

    add-int/2addr p1, v2

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchKeywordAdapter;->setFocusOnDeleteViewDown(I)V

    return v2

    :cond_4
    :goto_3
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
