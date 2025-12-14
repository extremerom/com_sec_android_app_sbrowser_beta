.class Lcom/sec/android/app/sbrowser/common/device/observer/SystemSettingsObserver$7;
.super Landroid/database/ContentObserver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/common/device/observer/SystemSettingsObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/common/device/observer/SystemSettingsObserver;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/common/device/observer/SystemSettingsObserver;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/common/device/observer/SystemSettingsObserver$7;->this$0:Lcom/sec/android/app/sbrowser/common/device/observer/SystemSettingsObserver;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1

    const-string p1, "SystemSettingsObserver"

    const-string v0, "Autofill service provider has been changed in settings"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/device/observer/SystemSettingsObserver$7;->this$0:Lcom/sec/android/app/sbrowser/common/device/observer/SystemSettingsObserver;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/device/observer/SystemSettingsObserver;->b(Lcom/sec/android/app/sbrowser/common/device/observer/SystemSettingsObserver;)Lcom/sec/android/app/sbrowser/common/device/observer/ObserverList;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/device/observer/ObserverList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sec/android/app/sbrowser/common/device/observer/SystemSettingsObserver$AutofillServiceChangeObserver;

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/common/device/observer/SystemSettingsObserver$AutofillServiceChangeObserver;->onAutofillServiceChanged()V

    goto :goto_0

    :cond_0
    return-void
.end method
