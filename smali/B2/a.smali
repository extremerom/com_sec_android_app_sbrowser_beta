.class public final synthetic LB2/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;ILjava/lang/Object;I)V
    .locals 0

    iput p4, p0, LB2/a;->a:I

    iput-object p1, p0, LB2/a;->c:Ljava/lang/Object;

    iput p2, p0, LB2/a;->b:I

    iput-object p3, p0, LB2/a;->d:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;II)V
    .locals 0

    iput p4, p0, LB2/a;->a:I

    iput-object p1, p0, LB2/a;->c:Ljava/lang/Object;

    iput-object p2, p0, LB2/a;->d:Ljava/lang/Object;

    iput p3, p0, LB2/a;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget v0, p0, LB2/a;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, LB2/a;->c:Ljava/lang/Object;

    check-cast v0, Lorg/chromium/content/browser/input/ChromiumBaseInputConnection;

    iget-object v1, p0, LB2/a;->d:Ljava/lang/Object;

    check-cast v1, Ljava/lang/CharSequence;

    iget p0, p0, LB2/a;->b:I

    invoke-static {v0, v1, p0}, Lorg/chromium/content/browser/input/ImeAdapterImpl;->a(Lorg/chromium/content/browser/input/ChromiumBaseInputConnection;Ljava/lang/CharSequence;I)V

    return-void

    :pswitch_0
    iget v0, p0, LB2/a;->b:I

    iget-object v1, p0, LB2/a;->c:Ljava/lang/Object;

    check-cast v1, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModelBase;

    iget-object p0, p0, LB2/a;->d:Ljava/lang/Object;

    check-cast p0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-static {v1, p0, v0}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModelBase;->c(Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModelBase;Ljava/util/concurrent/CopyOnWriteArrayList;I)V

    return-void

    :pswitch_1
    iget v0, p0, LB2/a;->b:I

    iget-object v1, p0, LB2/a;->c:Ljava/lang/Object;

    check-cast v1, Lcom/sec/android/app/sbrowser/reader/feature/option/widget/ReaderOptionPopupWindow;

    iget-object p0, p0, LB2/a;->d:Ljava/lang/Object;

    check-cast p0, Landroid/view/View;

    invoke-static {v1, p0, v0}, Lcom/sec/android/app/sbrowser/reader/feature/option/widget/ReaderOptionPopupWindow;->a(Lcom/sec/android/app/sbrowser/reader/feature/option/widget/ReaderOptionPopupWindow;Landroid/view/View;I)V

    return-void

    :pswitch_2
    iget-object v0, p0, LB2/a;->d:Ljava/lang/Object;

    check-cast v0, LU0/o;

    iget-object v1, p0, LB2/a;->c:Ljava/lang/Object;

    check-cast v1, Lcom/sec/android/app/sbrowser/download/DownloadNotificationBuilder;

    iget p0, p0, LB2/a;->b:I

    invoke-static {v1, p0, v0}, Lcom/sec/android/app/sbrowser/download/DownloadNotificationBuilder;->a(Lcom/sec/android/app/sbrowser/download/DownloadNotificationBuilder;ILU0/o;)V

    return-void

    :pswitch_3
    iget v0, p0, LB2/a;->b:I

    iget-object v1, p0, LB2/a;->c:Ljava/lang/Object;

    check-cast v1, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuDropdownUi;

    iget-object p0, p0, LB2/a;->d:Ljava/lang/Object;

    check-cast p0, Landroid/view/MenuItem;

    invoke-static {v1, p0, v0}, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuDropdownUi;->a(Lcom/sec/android/app/sbrowser/context_menu/ContextMenuDropdownUi;Landroid/view/MenuItem;I)V

    return-void

    :pswitch_4
    iget v0, p0, LB2/a;->b:I

    iget-object v1, p0, LB2/a;->c:Ljava/lang/Object;

    check-cast v1, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadArticlesAloudHandler;

    iget-object p0, p0, LB2/a;->d:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    invoke-static {v0, v1, p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadArticlesAloudHandler;->S(ILcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadArticlesAloudHandler;Ljava/lang/String;)V

    return-void

    :pswitch_5
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "androidx.activity.result.contract.action.INTENT_SENDER_REQUEST"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "androidx.activity.result.contract.extra.SEND_INTENT_EXCEPTION"

    iget-object v2, p0, LB2/a;->d:Ljava/lang/Object;

    check-cast v2, Landroid/content/IntentSender$SendIntentException;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, LB2/a;->c:Ljava/lang/Object;

    check-cast v2, Landroidx/activity/n;

    iget p0, p0, LB2/a;->b:I

    invoke-virtual {v2, p0, v1, v0}, Landroidx/activity/result/h;->a(IILandroid/content/Intent;)Z

    return-void

    :pswitch_6
    iget-object v0, p0, LB2/a;->d:Ljava/lang/Object;

    check-cast v0, LO9/a;

    iget-object v0, v0, LO9/a;->b:Ljava/lang/Object;

    check-cast v0, Ljava/io/Serializable;

    iget-object v1, p0, LB2/a;->c:Ljava/lang/Object;

    check-cast v1, Landroidx/activity/n;

    iget-object v2, v1, Landroidx/activity/result/h;->a:Ljava/util/LinkedHashMap;

    iget p0, p0, LB2/a;->b:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    if-nez p0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v2, v1, Landroidx/activity/result/h;->e:Ljava/util/LinkedHashMap;

    invoke-virtual {v2, p0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/activity/result/d;

    if-eqz v2, :cond_1

    iget-object v3, v2, Landroidx/activity/result/d;->a:Landroidx/activity/result/a;

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    if-nez v3, :cond_2

    iget-object v2, v1, Landroidx/activity/result/h;->g:Landroid/os/Bundle;

    invoke-virtual {v2, p0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    iget-object v1, v1, Landroidx/activity/result/h;->f:Ljava/util/LinkedHashMap;

    invoke-interface {v1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_2
    iget-object v2, v2, Landroidx/activity/result/d;->a:Landroidx/activity/result/a;

    const-string v3, "null cannot be cast to non-null type androidx.activity.result.ActivityResultCallback<O of androidx.activity.result.ActivityResultRegistry.dispatchResult>"

    invoke-static {v2, v3}, Ltb/k;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, v1, Landroidx/activity/result/h;->d:Ljava/util/ArrayList;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    invoke-interface {v2, v0}, Landroidx/activity/result/a;->a(Ljava/lang/Object;)V

    :cond_3
    :goto_1
    return-void

    :pswitch_7
    iget-object v0, p0, LB2/a;->c:Ljava/lang/Object;

    check-cast v0, LB2/b;

    iget-object v0, v0, LB2/b;->b:LB2/e;

    iget v1, p0, LB2/a;->b:I

    iget-object p0, p0, LB2/a;->d:Ljava/lang/Object;

    check-cast p0, Ljava/io/Serializable;

    invoke-interface {v0, v1, p0}, LB2/e;->a(ILjava/io/Serializable;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
