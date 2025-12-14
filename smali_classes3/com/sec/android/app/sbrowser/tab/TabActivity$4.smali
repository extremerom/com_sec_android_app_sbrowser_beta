.class Lcom/sec/android/app/sbrowser/tab/TabActivity$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/common/device/observer/SystemSettingsObserver$ShowPasswordObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/tab/TabActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/tab/TabActivity;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/tab/TabActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/tab/TabActivity$4;->this$0:Lcom/sec/android/app/sbrowser/tab/TabActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onShowPasswordChanged(Z)V
    .locals 0

    invoke-static {p1}, Lcom/sec/terrace/browser/prefs/TerracePrefServiceBridge;->setPasswordEchoEnabled(Z)V

    return-void
.end method
