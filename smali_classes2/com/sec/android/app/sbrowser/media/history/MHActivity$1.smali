.class Lcom/sec/android/app/sbrowser/media/history/MHActivity$1;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/media/history/MHActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/media/history/MHActivity;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/media/history/MHActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/media/history/MHActivity$1;->this$0:Lcom/sec/android/app/sbrowser/media/history/MHActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    const-string p1, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/history/MHActivity$1;->this$0:Lcom/sec/android/app/sbrowser/media/history/MHActivity;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/history/MHActivity;->finish()V

    return-void
.end method
