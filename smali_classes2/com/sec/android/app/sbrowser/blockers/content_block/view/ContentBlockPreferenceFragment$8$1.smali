.class Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockPreferenceFragment$8$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockPreferenceFragment$8;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockPreferenceFragment$8;

.field final synthetic val$isDownloadProgress:Z

.field final synthetic val$preference:Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockDownloadPreference;

.field final synthetic val$status:I


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockPreferenceFragment$8;Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockDownloadPreference;ZI)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockPreferenceFragment$8$1;->this$1:Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockPreferenceFragment$8;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockPreferenceFragment$8$1;->val$preference:Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockDownloadPreference;

    iput-boolean p3, p0, Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockPreferenceFragment$8$1;->val$isDownloadProgress:Z

    iput p4, p0, Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockPreferenceFragment$8$1;->val$status:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockPreferenceFragment$8$1;->val$preference:Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockDownloadPreference;

    iget-boolean v1, p0, Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockPreferenceFragment$8$1;->val$isDownloadProgress:Z

    iget p0, p0, Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockPreferenceFragment$8$1;->val$status:I

    invoke-virtual {v0, v1, p0}, Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockDownloadPreference;->setIsDownloadProgress(ZI)V

    return-void
.end method
