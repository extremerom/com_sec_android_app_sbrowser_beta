.class Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockDownloadPreference$7$1;
.super LH6/n;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockDownloadPreference$7;->onRequestPermissionsResult([Ljava/lang/String;[I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockDownloadPreference$7;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockDownloadPreference$7;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockDownloadPreference$7$1;->this$1:Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockDownloadPreference$7;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismissed(LH6/o;I)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockDownloadPreference$7$1;->this$1:Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockDownloadPreference$7;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockDownloadPreference$7;->val$runnable:Ljava/lang/Runnable;

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method public bridge synthetic onDismissed(Ljava/lang/Object;I)V
    .locals 0

    check-cast p1, LH6/o;

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockDownloadPreference$7$1;->onDismissed(LH6/o;I)V

    return-void
.end method
