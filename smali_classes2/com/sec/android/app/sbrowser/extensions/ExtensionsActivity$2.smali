.class Lcom/sec/android/app/sbrowser/extensions/ExtensionsActivity$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/common/device/observer/SystemSettingsObserver$UltraPowerSavingModeObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/extensions/ExtensionsActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/extensions/ExtensionsActivity;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/extensions/ExtensionsActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/extensions/ExtensionsActivity$2;->this$0:Lcom/sec/android/app/sbrowser/extensions/ExtensionsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onUltraPowerSavingModeChanged(Z)V
    .locals 0

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/extensions/ExtensionsActivity$2;->this$0:Lcom/sec/android/app/sbrowser/extensions/ExtensionsActivity;

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_0
    return-void
.end method
