.class Lcom/sec/android/app/sbrowser/infobars/SmartProtectWarningInfoBar$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/terrace/browser/prefs/TerracePrefServiceBridge$ClearBrowsingDataObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/infobars/SmartProtectWarningInfoBar;->removeBrowsingDataAfterLoadStarted()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/infobars/SmartProtectWarningInfoBar;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/infobars/SmartProtectWarningInfoBar;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/infobars/SmartProtectWarningInfoBar$2;->this$0:Lcom/sec/android/app/sbrowser/infobars/SmartProtectWarningInfoBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBrowsingDataCleared()V
    .locals 1

    const-string p0, "SmartProtectWarningInfoBar"

    const-string v0, "onBrowsingDataCleared"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
