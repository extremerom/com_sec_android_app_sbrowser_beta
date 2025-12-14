.class Lcom/sec/android/app/sbrowser/common/device/observer/SystemSettingsObserver$3;
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

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/common/device/observer/SystemSettingsObserver$3;->this$0:Lcom/sec/android/app/sbrowser/common/device/observer/SystemSettingsObserver;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/common/device/observer/SystemSettingsObserver$3;->this$0:Lcom/sec/android/app/sbrowser/common/device/observer/SystemSettingsObserver;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/device/observer/SystemSettingsObserver;->i(Lcom/sec/android/app/sbrowser/common/device/observer/SystemSettingsObserver;)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/SystemSettings;->isEmergencyMode()Z

    move-result p1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/device/observer/SystemSettingsObserver$3;->this$0:Lcom/sec/android/app/sbrowser/common/device/observer/SystemSettingsObserver;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/device/observer/SystemSettingsObserver;->d(Lcom/sec/android/app/sbrowser/common/device/observer/SystemSettingsObserver;)Lcom/sec/android/app/sbrowser/common/device/observer/ObserverList;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/device/observer/ObserverList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/common/device/observer/SystemSettingsObserver$EmergencyModeObserver;

    invoke-interface {v0, p1}, Lcom/sec/android/app/sbrowser/common/device/observer/SystemSettingsObserver$EmergencyModeObserver;->onEmergencyModeChanged(Z)V

    goto :goto_0

    :cond_0
    return-void
.end method
