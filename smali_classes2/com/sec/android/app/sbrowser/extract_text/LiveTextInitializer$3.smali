.class Lcom/sec/android/app/sbrowser/extract_text/LiveTextInitializer$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/extract_text/LiveTextInitializer;->deInitializeVisionText()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/extract_text/LiveTextInitializer;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/extract_text/LiveTextInitializer;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/extract_text/LiveTextInitializer$3;->this$0:Lcom/sec/android/app/sbrowser/extract_text/LiveTextInitializer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    const-string v0, "DeepSky library error "

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/extract_text/LiveTextInitializer$3;->this$0:Lcom/sec/android/app/sbrowser/extract_text/LiveTextInitializer;

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/extract_text/LiveTextInitializer;->b(Lcom/sec/android/app/sbrowser/extract_text/LiveTextInitializer;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/extract_text/LiveTextInitializer$3;->this$0:Lcom/sec/android/app/sbrowser/extract_text/LiveTextInitializer;

    invoke-static {v2}, Lcom/sec/android/app/sbrowser/extract_text/LiveTextInitializer;->c(Lcom/sec/android/app/sbrowser/extract_text/LiveTextInitializer;)Lcom/samsung/android/app/sdk/deepsky/textextraction/Recognizer;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    :try_start_1
    iget-object v3, p0, Lcom/sec/android/app/sbrowser/extract_text/LiveTextInitializer$3;->this$0:Lcom/sec/android/app/sbrowser/extract_text/LiveTextInitializer;

    invoke-static {v3}, Lcom/sec/android/app/sbrowser/extract_text/LiveTextInitializer;->c(Lcom/sec/android/app/sbrowser/extract_text/LiveTextInitializer;)Lcom/samsung/android/app/sdk/deepsky/textextraction/Recognizer;

    move-result-object v3

    invoke-interface {v3}, Lcom/samsung/android/app/sdk/deepsky/textextraction/Recognizer;->release()V

    const-string v3, "LiveTextInitializer"

    const-string v4, "DeInitialized VisionText"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extract_text/LiveTextInitializer$3;->this$0:Lcom/sec/android/app/sbrowser/extract_text/LiveTextInitializer;

    invoke-static {v0, v2}, Lcom/sec/android/app/sbrowser/extract_text/LiveTextInitializer;->e(Lcom/sec/android/app/sbrowser/extract_text/LiveTextInitializer;Lcom/samsung/android/app/sdk/deepsky/textextraction/Recognizer;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/extract_text/LiveTextInitializer$3;->this$0:Lcom/sec/android/app/sbrowser/extract_text/LiveTextInitializer;

    :goto_0
    invoke-static {p0, v2}, Lcom/sec/android/app/sbrowser/extract_text/LiveTextInitializer;->f(Lcom/sec/android/app/sbrowser/extract_text/LiveTextInitializer;Lcom/samsung/android/app/sdk/deepsky/textextraction/TextExtraction;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :catchall_1
    move-exception v3

    :try_start_3
    const-string v4, "LiveTextInitializer"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :try_start_4
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extract_text/LiveTextInitializer$3;->this$0:Lcom/sec/android/app/sbrowser/extract_text/LiveTextInitializer;

    invoke-static {v0, v2}, Lcom/sec/android/app/sbrowser/extract_text/LiveTextInitializer;->e(Lcom/sec/android/app/sbrowser/extract_text/LiveTextInitializer;Lcom/samsung/android/app/sdk/deepsky/textextraction/Recognizer;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/extract_text/LiveTextInitializer$3;->this$0:Lcom/sec/android/app/sbrowser/extract_text/LiveTextInitializer;

    goto :goto_0

    :catchall_2
    move-exception v0

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/extract_text/LiveTextInitializer$3;->this$0:Lcom/sec/android/app/sbrowser/extract_text/LiveTextInitializer;

    invoke-static {v3, v2}, Lcom/sec/android/app/sbrowser/extract_text/LiveTextInitializer;->e(Lcom/sec/android/app/sbrowser/extract_text/LiveTextInitializer;Lcom/samsung/android/app/sdk/deepsky/textextraction/Recognizer;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/extract_text/LiveTextInitializer$3;->this$0:Lcom/sec/android/app/sbrowser/extract_text/LiveTextInitializer;

    invoke-static {p0, v2}, Lcom/sec/android/app/sbrowser/extract_text/LiveTextInitializer;->f(Lcom/sec/android/app/sbrowser/extract_text/LiveTextInitializer;Lcom/samsung/android/app/sdk/deepsky/textextraction/TextExtraction;)V

    throw v0

    :cond_0
    :goto_1
    monitor-exit v1

    return-void

    :goto_2
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p0
.end method
