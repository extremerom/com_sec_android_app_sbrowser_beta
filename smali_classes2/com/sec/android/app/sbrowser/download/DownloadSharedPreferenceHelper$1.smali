.class Lcom/sec/android/app/sbrowser/download/DownloadSharedPreferenceHelper$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/download/DownloadSharedPreferenceHelper;->addOrReplaceSharedPreferenceEntry(Lcom/sec/android/app/sbrowser/download/DownloadSharedPreferenceEntry;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/download/DownloadSharedPreferenceHelper;

.field final synthetic val$pendingEntry:Lcom/sec/android/app/sbrowser/download/DownloadSharedPreferenceEntry;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/download/DownloadSharedPreferenceHelper;Lcom/sec/android/app/sbrowser/download/DownloadSharedPreferenceEntry;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/download/DownloadSharedPreferenceHelper$1;->this$0:Lcom/sec/android/app/sbrowser/download/DownloadSharedPreferenceHelper;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/download/DownloadSharedPreferenceHelper$1;->val$pendingEntry:Lcom/sec/android/app/sbrowser/download/DownloadSharedPreferenceEntry;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/DownloadSharedPreferenceHelper$1;->this$0:Lcom/sec/android/app/sbrowser/download/DownloadSharedPreferenceHelper;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/download/DownloadSharedPreferenceHelper;->a(Lcom/sec/android/app/sbrowser/download/DownloadSharedPreferenceHelper;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/sbrowser/download/DownloadSharedPreferenceHelper$Observer;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/download/DownloadSharedPreferenceHelper$1;->val$pendingEntry:Lcom/sec/android/app/sbrowser/download/DownloadSharedPreferenceEntry;

    iget-object v2, v2, Lcom/sec/android/app/sbrowser/download/DownloadSharedPreferenceEntry;->downloadGuid:Ljava/lang/String;

    invoke-interface {v1, v2}, Lcom/sec/android/app/sbrowser/download/DownloadSharedPreferenceHelper$Observer;->onAddOrReplaceDownloadSharedPreferenceEntry(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method
