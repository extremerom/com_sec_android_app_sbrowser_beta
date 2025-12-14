.class Lorg/chromium/content/browser/TracingControllerAndroidImpl$TracingBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/content/browser/TracingControllerAndroidImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TracingBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/chromium/content/browser/TracingControllerAndroidImpl;


# direct methods
.method public constructor <init>(Lorg/chromium/content/browser/TracingControllerAndroidImpl;)V
    .locals 0

    iput-object p1, p0, Lorg/chromium/content/browser/TracingControllerAndroidImpl$TracingBroadcastReceiver;->this$0:Lorg/chromium/content/browser/TracingControllerAndroidImpl;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/build/NullUtil;->assumeNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    const-string v0, "GPU_PROFILER_START"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string p1, "categories"

    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lorg/chromium/content/browser/TracingControllerAndroidImplJni;->get()Lorg/chromium/content/browser/TracingControllerAndroidImpl$Natives;

    move-result-object p1

    iget-object v0, p0, Lorg/chromium/content/browser/TracingControllerAndroidImpl$TracingBroadcastReceiver;->this$0:Lorg/chromium/content/browser/TracingControllerAndroidImpl;

    invoke-interface {p1, v0}, Lorg/chromium/content/browser/TracingControllerAndroidImpl$Natives;->getDefaultCategories(Lorg/chromium/content/browser/TracingControllerAndroidImpl;)Ljava/lang/String;

    move-result-object p1

    :goto_0
    move-object v3, p1

    goto :goto_1

    :cond_0
    invoke-static {}, Lorg/chromium/content/browser/TracingControllerAndroidImplJni;->get()Lorg/chromium/content/browser/TracingControllerAndroidImpl$Natives;

    move-result-object v0

    iget-object v1, p0, Lorg/chromium/content/browser/TracingControllerAndroidImpl$TracingBroadcastReceiver;->this$0:Lorg/chromium/content/browser/TracingControllerAndroidImpl;

    invoke-interface {v0, v1}, Lorg/chromium/content/browser/TracingControllerAndroidImpl$Natives;->getDefaultCategories(Lorg/chromium/content/browser/TracingControllerAndroidImpl;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "_DEFAULT_CHROME_CATEGORIES"

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :goto_1
    const-string p1, "continuous"

    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_1

    const-string p1, "record-until-full"

    :goto_2
    move-object v4, p1

    goto :goto_3

    :cond_1
    const-string p1, "record-continuously"

    goto :goto_2

    :goto_3
    const-string p1, "file"

    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v0, p0, Lorg/chromium/content/browser/TracingControllerAndroidImpl$TracingBroadcastReceiver;->this$0:Lorg/chromium/content/browser/TracingControllerAndroidImpl;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v2, 0x1

    invoke-virtual/range {v0 .. v6}, Lorg/chromium/content/browser/TracingControllerAndroidImpl;->startTracing(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;ZZ)Z

    goto :goto_4

    :cond_2
    iget-object p0, p0, Lorg/chromium/content/browser/TracingControllerAndroidImpl$TracingBroadcastReceiver;->this$0:Lorg/chromium/content/browser/TracingControllerAndroidImpl;

    const/4 p1, 0x1

    invoke-virtual {p0, p1, v3, v4}, Lorg/chromium/content/browser/TracingControllerAndroidImpl;->startTracing(ZLjava/lang/String;Ljava/lang/String;)Z

    goto :goto_4

    :cond_3
    const-string v0, "GPU_PROFILER_STOP"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object p0, p0, Lorg/chromium/content/browser/TracingControllerAndroidImpl$TracingBroadcastReceiver;->this$0:Lorg/chromium/content/browser/TracingControllerAndroidImpl;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lorg/chromium/content/browser/TracingControllerAndroidImpl;->stopTracing(Lorg/chromium/base/Callback;)V

    goto :goto_4

    :cond_4
    const-string v0, "GPU_PROFILER_LIST_CATEGORIES"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p0, p0, Lorg/chromium/content/browser/TracingControllerAndroidImpl$TracingBroadcastReceiver;->this$0:Lorg/chromium/content/browser/TracingControllerAndroidImpl;

    invoke-virtual {p0}, Lorg/chromium/content/browser/TracingControllerAndroidImpl;->getKnownCategories()V

    goto :goto_4

    :cond_5
    const-string p0, "TracingController"

    const-string p1, "Unexpected intent: %s"

    invoke-static {p0, p1, p2}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    :goto_4
    return-void
.end method
