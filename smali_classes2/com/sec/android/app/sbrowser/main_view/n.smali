.class public final synthetic Lcom/sec/android/app/sbrowser/main_view/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/sbrowser/main_view/n;->a:I

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/main_view/n;->c:Ljava/lang/Object;

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/main_view/n;->b:Ljava/lang/Object;

    iput-object p4, p0, Lcom/sec/android/app/sbrowser/main_view/n;->d:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/sec/android/app/sbrowser/main_view/IntentHandler;Lcom/sec/android/app/sbrowser/tab_manager/TabManager;Landroid/content/Intent;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcom/sec/android/app/sbrowser/main_view/n;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/main_view/n;->c:Ljava/lang/Object;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/main_view/n;->d:Ljava/lang/Object;

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/main_view/n;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget v0, p0, Lcom/sec/android/app/sbrowser/main_view/n;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/n;->d:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/main_view/n;->c:Ljava/lang/Object;

    check-cast v1, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/n;->b:Ljava/lang/Object;

    check-cast p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    invoke-static {v1, p0, v0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;->b(Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;Ljava/lang/String;)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/n;->d:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/main_view/n;->c:Ljava/lang/Object;

    check-cast v1, Lcom/sec/android/app/sbrowser/main_view/IntentHandler;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/n;->b:Ljava/lang/Object;

    check-cast p0, Landroid/content/Intent;

    invoke-static {v1, p0, v0}, Lcom/sec/android/app/sbrowser/main_view/IntentHandler;->e(Lcom/sec/android/app/sbrowser/main_view/IntentHandler;Landroid/content/Intent;Ljava/lang/String;)V

    return-void

    :pswitch_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/n;->d:Ljava/lang/Object;

    check-cast v0, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/main_view/n;->b:Ljava/lang/Object;

    check-cast v1, Landroid/content/Intent;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/n;->c:Ljava/lang/Object;

    check-cast p0, Lcom/sec/android/app/sbrowser/main_view/IntentHandler;

    invoke-static {p0, v0, v1}, Lcom/sec/android/app/sbrowser/main_view/IntentHandler;->j(Lcom/sec/android/app/sbrowser/main_view/IntentHandler;Lcom/sec/android/app/sbrowser/tab_manager/TabManager;Landroid/content/Intent;)V

    return-void

    :pswitch_2
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/n;->d:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/main_view/n;->c:Ljava/lang/Object;

    check-cast v1, Lcom/sec/android/app/sbrowser/main_view/IntentHandler$1;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/n;->b:Ljava/lang/Object;

    check-cast p0, Landroid/content/Intent;

    invoke-static {v1, p0, v0}, Lcom/sec/android/app/sbrowser/main_view/IntentHandler$1;->a(Lcom/sec/android/app/sbrowser/main_view/IntentHandler$1;Landroid/content/Intent;Ljava/lang/String;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
