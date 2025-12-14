.class Lcom/sec/android/app/sbrowser/blockers/content_block/ContentBlockManager$8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/common/device/observer/SystemSettingsObserver$EmergencyModeObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/blockers/content_block/ContentBlockManager;->initializeEmergencyModeObserverIfNeeded()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/blockers/content_block/ContentBlockManager;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/blockers/content_block/ContentBlockManager;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/blockers/content_block/ContentBlockManager$8;->this$0:Lcom/sec/android/app/sbrowser/blockers/content_block/ContentBlockManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEmergencyModeChanged(Z)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/blockers/content_block/ContentBlockManager$8;->this$0:Lcom/sec/android/app/sbrowser/blockers/content_block/ContentBlockManager;

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/blockers/content_block/ContentBlockManager;->l(Lcom/sec/android/app/sbrowser/blockers/content_block/ContentBlockManager;Z)V

    return-void
.end method
