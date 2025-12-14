.class Lcom/sec/android/app/sbrowser/blockers/content_block/ContentBlockManager$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/blockers/content_block/ContentBlockManager;->initContentBlocker(Landroid/content/Context;I)V
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

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/blockers/content_block/ContentBlockManager$5;->this$0:Lcom/sec/android/app/sbrowser/blockers/content_block/ContentBlockManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    const/4 p0, 0x1

    invoke-static {p0}, Lcom/sec/terrace/browser/prefs/TerracePrefServiceBridge;->setContentBlockerEnabled(Z)V

    invoke-static {p0}, Lcom/sec/terrace/browser/prefs/TerracePrefServiceBridge;->setContentBlockerStatisticsEnabled(Z)V

    return-void
.end method
