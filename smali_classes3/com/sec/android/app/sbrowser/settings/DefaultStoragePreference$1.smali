.class Lcom/sec/android/app/sbrowser/settings/DefaultStoragePreference$1;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/settings/DefaultStoragePreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/settings/DefaultStoragePreference;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/settings/DefaultStoragePreference;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/DefaultStoragePreference$1;->this$0:Lcom/sec/android/app/sbrowser/settings/DefaultStoragePreference;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p2, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p2, 0x4

    goto :goto_0

    :sswitch_1
    const-string v0, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p2, 0x3

    goto :goto_0

    :sswitch_2
    const-string v0, "android.os.storage.action.VOLUME_STATE_CHANGED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 p2, 0x2

    goto :goto_0

    :sswitch_3
    const-string v0, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 p2, 0x1

    goto :goto_0

    :sswitch_4
    const-string v0, "android.intent.action.MEDIA_REMOVED"

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
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/DefaultStoragePreference$1;->this$0:Lcom/sec/android/app/sbrowser/settings/DefaultStoragePreference;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/DefaultStoragePreference;->updateView()V

    goto :goto_1

    :pswitch_1
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/DefaultStoragePreference$1;->this$0:Lcom/sec/android/app/sbrowser/settings/DefaultStoragePreference;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/settings/DefaultStoragePreference;->access$000(Lcom/sec/android/app/sbrowser/settings/DefaultStoragePreference;)Landroidx/appcompat/widget/AppCompatSpinner;

    move-result-object p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/DefaultStoragePreference$1;->this$0:Lcom/sec/android/app/sbrowser/settings/DefaultStoragePreference;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/settings/DefaultStoragePreference;->access$100(Lcom/sec/android/app/sbrowser/settings/DefaultStoragePreference;)Landroidx/appcompat/widget/AppCompatSpinner;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/appcompat/widget/AppCompatSpinner;->seslDismissPopup()V

    :cond_5
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/DefaultStoragePreference$1;->this$0:Lcom/sec/android/app/sbrowser/settings/DefaultStoragePreference;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/DefaultStoragePreference;->updateView()V

    :goto_1
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x6342a1e0 -> :sswitch_4
        -0x5a4113c8 -> :sswitch_3
        -0x54155685 -> :sswitch_2
        -0x39738481 -> :sswitch_1
        -0x254e496f -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method
