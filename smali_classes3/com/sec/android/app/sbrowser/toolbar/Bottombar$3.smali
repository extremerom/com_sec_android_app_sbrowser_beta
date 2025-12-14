.class Lcom/sec/android/app/sbrowser/toolbar/Bottombar$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/toolbar/Bottombar;->updateBottombarButtons()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/toolbar/Bottombar;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/toolbar/Bottombar;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/toolbar/Bottombar$3;->this$0:Lcom/sec/android/app/sbrowser/toolbar/Bottombar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 8

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/Bottombar$3;->this$0:Lcom/sec/android/app/sbrowser/toolbar/Bottombar;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/toolbar/Bottombar;->n(Lcom/sec/android/app/sbrowser/toolbar/Bottombar;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "si__BottomBar"

    const/4 v4, -0x1

    if-eqz v0, :cond_2

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/Bottombar$3;->this$0:Lcom/sec/android/app/sbrowser/toolbar/Bottombar;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/toolbar/Bottombar;->n(Lcom/sec/android/app/sbrowser/toolbar/Bottombar;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v5, v0, Ljava/util/HashMap;

    if-eqz v5, :cond_2

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    if-eqz v5, :cond_0

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    move v5, v4

    goto :goto_1

    :cond_0
    move v5, v4

    :goto_0
    :try_start_1
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception v0

    :goto_1
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "[BitmapCapture][NotificationManager] exception "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v6, v3}, Landroidx/recyclerview/widget/P;->s(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :cond_1
    :goto_2
    move v0, v4

    move v4, v5

    goto :goto_3

    :cond_2
    move v0, v4

    :goto_3
    iget-object v5, p0, Lcom/sec/android/app/sbrowser/toolbar/Bottombar$3;->this$0:Lcom/sec/android/app/sbrowser/toolbar/Bottombar;

    invoke-static {v5}, Lcom/sec/android/app/sbrowser/toolbar/Bottombar;->n(Lcom/sec/android/app/sbrowser/toolbar/Bottombar;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v5

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/toolbar/Bottombar$3;->this$0:Lcom/sec/android/app/sbrowser/toolbar/Bottombar;

    invoke-static {v6}, Lcom/sec/android/app/sbrowser/toolbar/Bottombar;->i(Lcom/sec/android/app/sbrowser/toolbar/Bottombar;)I

    move-result v7

    invoke-static {v6, v4, v7}, Lcom/sec/android/app/sbrowser/toolbar/Bottombar;->r(Lcom/sec/android/app/sbrowser/toolbar/Bottombar;II)Z

    move-result v4

    if-nez v4, :cond_3

    if-eq v5, v0, :cond_4

    :cond_3
    const-string v0, "[NotificationManager] View Changed Capturing bitmap"

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/toolbar/Bottombar$3;->this$0:Lcom/sec/android/app/sbrowser/toolbar/Bottombar;

    invoke-static {v3}, Lcom/sec/android/app/sbrowser/toolbar/Bottombar;->i(Lcom/sec/android/app/sbrowser/toolbar/Bottombar;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/toolbar/Bottombar$3;->this$0:Lcom/sec/android/app/sbrowser/toolbar/Bottombar;

    invoke-static {v2}, Lcom/sec/android/app/sbrowser/toolbar/Bottombar;->n(Lcom/sec/android/app/sbrowser/toolbar/Bottombar;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/toolbar/Bottombar$3;->this$0:Lcom/sec/android/app/sbrowser/toolbar/Bottombar;

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/toolbar/Bottombar;->n(Lcom/sec/android/app/sbrowser/toolbar/Bottombar;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/toolbar/Bottombar$3;->this$0:Lcom/sec/android/app/sbrowser/toolbar/Bottombar;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/Bottombar;->forceCapture()V

    :cond_4
    return-void
.end method
