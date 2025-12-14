.class public Lcom/sec/android/app/sbrowser/artificial_intelligence/translate/LangPackBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/artificial_intelligence/translate/LangPackBroadcastReceiver$Delegate;
    }
.end annotation


# instance fields
.field private final mDelegate:Lcom/sec/android/app/sbrowser/artificial_intelligence/translate/LangPackBroadcastReceiver$Delegate;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/artificial_intelligence/translate/LangPackBroadcastReceiver$Delegate;)V
    .locals 0
    .param p1    # Lcom/sec/android/app/sbrowser/artificial_intelligence/translate/LangPackBroadcastReceiver$Delegate;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/translate/LangPackBroadcastReceiver;->mDelegate:Lcom/sec/android/app/sbrowser/artificial_intelligence/translate/LangPackBroadcastReceiver$Delegate;

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    const-string p0, "LangPackBroadcastReceiver"

    const-string p1, "LangPackBroadcastReceiver, action is null"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p2

    const/4 v0, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v1, "com.samsung.android.settings.action.LANGUAGE_PACK_REMOVED"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    goto :goto_0

    :sswitch_1
    const-string v1, "com.samsung.android.settings.action.LANGUAGE_PACK_ADDED"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0

    :sswitch_2
    const-string v1, "com.samsung.android.settings.action.LANGUAGE_PACK_SELECTED"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :goto_0
    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/artificial_intelligence/translate/TextTranslateManager;->getInstance()Lcom/sec/android/app/sbrowser/artificial_intelligence/translate/TextTranslateManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/translate/TextTranslateManager;->refresh()V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/translate/LangPackBroadcastReceiver;->mDelegate:Lcom/sec/android/app/sbrowser/artificial_intelligence/translate/LangPackBroadcastReceiver$Delegate;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/translate/LangPackBroadcastReceiver$Delegate;->updateLangList()V

    goto :goto_1

    :pswitch_1
    invoke-static {}, Lcom/sec/android/app/sbrowser/artificial_intelligence/translate/TextTranslateManager;->getInstance()Lcom/sec/android/app/sbrowser/artificial_intelligence/translate/TextTranslateManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/translate/TextTranslateManager;->refresh()V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/translate/LangPackBroadcastReceiver;->mDelegate:Lcom/sec/android/app/sbrowser/artificial_intelligence/translate/LangPackBroadcastReceiver$Delegate;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/translate/LangPackBroadcastReceiver$Delegate;->updateLangList()V

    goto :goto_1

    :pswitch_2
    if-eqz p2, :cond_4

    invoke-static {}, Lcom/sec/android/app/sbrowser/artificial_intelligence/translate/LangPackManager;->getInstance()Lcom/sec/android/app/sbrowser/artificial_intelligence/translate/LangPackManager;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/sec/android/app/sbrowser/artificial_intelligence/translate/LangPackManager;->onUpdateLang(Landroid/os/Bundle;)Z

    :cond_4
    :goto_1
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x529b4c99 -> :sswitch_2
        0x47ddab94 -> :sswitch_1
        0x4ca389f4 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
