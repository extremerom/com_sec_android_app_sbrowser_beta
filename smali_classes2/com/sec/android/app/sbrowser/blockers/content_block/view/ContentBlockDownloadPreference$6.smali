.class Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockDownloadPreference$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockDownloadPreference;->requestDownload()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockDownloadPreference;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockDownloadPreference;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockDownloadPreference$6;->this$0:Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockDownloadPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockDownloadPreference$6;->this$0:Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockDownloadPreference;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockDownloadPreference;->x(Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockDownloadPreference;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockDownloadPreference$6;->this$0:Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockDownloadPreference;

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockDownloadPreference;->y(Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockDownloadPreference;Z)V

    return-void
.end method
