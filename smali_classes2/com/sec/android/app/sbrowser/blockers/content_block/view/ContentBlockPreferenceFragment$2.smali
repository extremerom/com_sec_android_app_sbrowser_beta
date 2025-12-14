.class Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockPreferenceFragment$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockPreferenceFragment;->updateSuggestedPreference(Lcom/sec/android/app/sbrowser/common/download/ApkDownloadNotificationInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockPreferenceFragment;

.field final synthetic val$notificationInfo:Lcom/sec/android/app/sbrowser/common/download/ApkDownloadNotificationInfo;

.field final synthetic val$preference:Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockDownloadPreference;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockPreferenceFragment;Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockDownloadPreference;Lcom/sec/android/app/sbrowser/common/download/ApkDownloadNotificationInfo;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockPreferenceFragment$2;->this$0:Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockPreferenceFragment;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockPreferenceFragment$2;->val$preference:Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockDownloadPreference;

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockPreferenceFragment$2;->val$notificationInfo:Lcom/sec/android/app/sbrowser/common/download/ApkDownloadNotificationInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockPreferenceFragment$2;->val$preference:Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockDownloadPreference;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockPreferenceFragment$2;->val$notificationInfo:Lcom/sec/android/app/sbrowser/common/download/ApkDownloadNotificationInfo;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockDownloadPreference;->updateDownloadStatus(Lcom/sec/android/app/sbrowser/common/download/ApkDownloadNotificationInfo;)V

    return-void
.end method
