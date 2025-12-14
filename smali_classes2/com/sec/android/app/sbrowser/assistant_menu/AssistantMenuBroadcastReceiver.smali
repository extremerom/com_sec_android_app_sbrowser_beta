.class public Lcom/sec/android/app/sbrowser/assistant_menu/AssistantMenuBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# instance fields
.field private mListener:Lcom/sec/android/app/sbrowser/assistant_menu/AssistantMenuManager$AssistantMenuManagerListener;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/assistant_menu/AssistantMenuManager$AssistantMenuManagerListener;)V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/assistant_menu/AssistantMenuBroadcastReceiver;->mListener:Lcom/sec/android/app/sbrowser/assistant_menu/AssistantMenuManager$AssistantMenuManagerListener;

    return-void
.end method


# virtual methods
.method public getListener()Lcom/sec/android/app/sbrowser/assistant_menu/AssistantMenuManager$AssistantMenuManagerListener;
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/assistant_menu/AssistantMenuBroadcastReceiver;->mListener:Lcom/sec/android/app/sbrowser/assistant_menu/AssistantMenuManager$AssistantMenuManagerListener;

    return-object p0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    invoke-static {p2}, Lcom/sec/terrace/base/AssertUtil;->assertNotNull(Ljava/lang/Object;)V

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "AssistantMenuBroadcastReceiver"

    if-nez p1, :cond_0

    const-string p0, "AssistantMenuBroadcastReceiver, action == null"

    invoke-static {p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-string v0, "Receive Assistant - "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/assistant_menu/AssistantMenuBroadcastReceiver;->mListener:Lcom/sec/android/app/sbrowser/assistant_menu/AssistantMenuManager$AssistantMenuManagerListener;

    if-nez p0, :cond_1

    return-void

    :cond_1
    const/4 p2, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "android.intent.action.doWindowManager"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 p2, 0x2

    goto :goto_0

    :sswitch_1
    const-string v0, "android.intent.action.doInputURL"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 p2, 0x1

    goto :goto_0

    :sswitch_2
    const-string v0, "android.intent.action.doNewWindow"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_0

    :cond_4
    const/4 p2, 0x0

    :goto_0
    packed-switch p2, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/assistant_menu/AssistantMenuManager$AssistantMenuManagerListener;->onLaunchMultiTabView()V

    goto :goto_1

    :pswitch_1
    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/assistant_menu/AssistantMenuManager$AssistantMenuManagerListener;->onInputUrl()V

    goto :goto_1

    :pswitch_2
    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/assistant_menu/AssistantMenuManager$AssistantMenuManagerListener;->onNewWindow()V

    :goto_1
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x6c728c80 -> :sswitch_2
        0x534f3175 -> :sswitch_1
        0x555acf6d -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public release()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/assistant_menu/AssistantMenuBroadcastReceiver;->mListener:Lcom/sec/android/app/sbrowser/assistant_menu/AssistantMenuManager$AssistantMenuManagerListener;

    return-void
.end method
