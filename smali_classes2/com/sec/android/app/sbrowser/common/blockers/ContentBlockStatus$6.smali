.class Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockStatus$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockStatus;->resetContentBlocker()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockStatus;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockStatus;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockStatus$6;->this$0:Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockStatus;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    const/4 p0, 0x0

    invoke-static {p0}, Lcom/sec/terrace/browser/prefs/TerracePrefServiceBridge;->setContentBlockerEnabled(Z)V

    invoke-static {p0}, Lcom/sec/terrace/browser/prefs/TerracePrefServiceBridge;->setContentBlockerStatisticsEnabled(Z)V

    return-void
.end method
