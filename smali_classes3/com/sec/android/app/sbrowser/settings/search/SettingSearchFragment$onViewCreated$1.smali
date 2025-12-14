.class public final Lcom/sec/android/app/sbrowser/settings/search/SettingSearchFragment$onViewCreated$1;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/settings/search/SettingSearchFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001d\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u001f\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0016\u00a2\u0006\u0004\u0008\u0007\u0010\u0008\u00a8\u0006\t"
    }
    d2 = {
        "com/sec/android/app/sbrowser/settings/search/SettingSearchFragment$onViewCreated$1",
        "Landroid/content/BroadcastReceiver;",
        "Landroid/content/Context;",
        "context",
        "Landroid/content/Intent;",
        "intent",
        "Ldb/r;",
        "onReceive",
        "(Landroid/content/Context;Landroid/content/Intent;)V",
        "SBrowser_highendBetaGlobal64Release"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/settings/search/SettingSearchFragment;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/settings/search/SettingSearchFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchFragment$onViewCreated$1;->this$0:Lcom/sec/android/app/sbrowser/settings/search/SettingSearchFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "intent"

    invoke-static {p2, p1}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {p2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchFragment$onViewCreated$1;->this$0:Lcom/sec/android/app/sbrowser/settings/search/SettingSearchFragment;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchFragment;->access$getMSettingSearchController$p(Lcom/sec/android/app/sbrowser/settings/search/SettingSearchFragment;)Lcom/sec/android/app/sbrowser/settings/search/SettingSearchController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchController;->onLanguageChanged()V

    return-void
.end method
