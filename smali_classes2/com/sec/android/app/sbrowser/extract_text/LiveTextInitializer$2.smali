.class Lcom/sec/android/app/sbrowser/extract_text/LiveTextInitializer$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/extract_text/LiveTextInitializer;->initializeVisionText(Lcom/sec/android/app/sbrowser/extract_text/LiveTextInitializer$RecognizerInitListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/extract_text/LiveTextInitializer;

.field final synthetic val$listener:Lcom/sec/android/app/sbrowser/extract_text/LiveTextInitializer$RecognizerInitListener;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/extract_text/LiveTextInitializer;Lcom/sec/android/app/sbrowser/extract_text/LiveTextInitializer$RecognizerInitListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/extract_text/LiveTextInitializer$2;->this$0:Lcom/sec/android/app/sbrowser/extract_text/LiveTextInitializer;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/extract_text/LiveTextInitializer$2;->val$listener:Lcom/sec/android/app/sbrowser/extract_text/LiveTextInitializer$RecognizerInitListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const-string v0, "TextExtraction library error "

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/extract_text/LiveTextInitializer$2;->this$0:Lcom/sec/android/app/sbrowser/extract_text/LiveTextInitializer;

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/extract_text/LiveTextInitializer;->b(Lcom/sec/android/app/sbrowser/extract_text/LiveTextInitializer;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/extract_text/LiveTextInitializer$2;->this$0:Lcom/sec/android/app/sbrowser/extract_text/LiveTextInitializer;

    invoke-static {v2}, Lcom/sec/android/app/sbrowser/extract_text/LiveTextInitializer;->a(Lcom/sec/android/app/sbrowser/extract_text/LiveTextInitializer;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/app/sdk/deepsky/textextraction/TextExtractionProvider;->with(Landroid/content/Context;)Lcom/samsung/android/app/sdk/deepsky/textextraction/TextExtractionProvider;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/app/sdk/deepsky/textextraction/TextExtractionProvider;->getTextExtraction()Lcom/samsung/android/app/sdk/deepsky/textextraction/TextExtraction;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/android/app/sbrowser/extract_text/LiveTextInitializer;->f(Lcom/sec/android/app/sbrowser/extract_text/LiveTextInitializer;Lcom/samsung/android/app/sdk/deepsky/textextraction/TextExtraction;)V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/extract_text/LiveTextInitializer$2;->this$0:Lcom/sec/android/app/sbrowser/extract_text/LiveTextInitializer;

    invoke-static {v2}, Lcom/sec/android/app/sbrowser/extract_text/LiveTextInitializer;->d(Lcom/sec/android/app/sbrowser/extract_text/LiveTextInitializer;)Lcom/samsung/android/app/sdk/deepsky/textextraction/TextExtraction;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v2, :cond_0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :try_start_2
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/extract_text/LiveTextInitializer$2;->this$0:Lcom/sec/android/app/sbrowser/extract_text/LiveTextInitializer;

    invoke-static {v2}, Lcom/sec/android/app/sbrowser/extract_text/LiveTextInitializer;->d(Lcom/sec/android/app/sbrowser/extract_text/LiveTextInitializer;)Lcom/samsung/android/app/sdk/deepsky/textextraction/TextExtraction;

    move-result-object v3

    invoke-interface {v3}, Lcom/samsung/android/app/sdk/deepsky/textextraction/TextExtraction;->getRecognizer()Lcom/samsung/android/app/sdk/deepsky/textextraction/Recognizer;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/android/app/sbrowser/extract_text/LiveTextInitializer;->e(Lcom/sec/android/app/sbrowser/extract_text/LiveTextInitializer;Lcom/samsung/android/app/sdk/deepsky/textextraction/Recognizer;)V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/extract_text/LiveTextInitializer$2;->this$0:Lcom/sec/android/app/sbrowser/extract_text/LiveTextInitializer;

    invoke-static {v2}, Lcom/sec/android/app/sbrowser/extract_text/LiveTextInitializer;->c(Lcom/sec/android/app/sbrowser/extract_text/LiveTextInitializer;)Lcom/samsung/android/app/sdk/deepsky/textextraction/Recognizer;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/app/sdk/deepsky/textextraction/ocrwrapper/TextExtractionOCRLanguage;->All:Lcom/samsung/android/app/sdk/deepsky/textextraction/ocrwrapper/TextExtractionOCRLanguage;

    invoke-virtual {v3}, Lcom/samsung/android/app/sdk/deepsky/textextraction/ocrwrapper/TextExtractionOCRLanguage;->getId()I

    move-result v3

    invoke-interface {v2, v3}, Lcom/samsung/android/app/sdk/deepsky/textextraction/Recognizer;->initialize(I)V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/extract_text/LiveTextInitializer$2;->val$listener:Lcom/sec/android/app/sbrowser/extract_text/LiveTextInitializer$RecognizerInitListener;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/extract_text/LiveTextInitializer$2;->this$0:Lcom/sec/android/app/sbrowser/extract_text/LiveTextInitializer;

    invoke-static {v3}, Lcom/sec/android/app/sbrowser/extract_text/LiveTextInitializer;->c(Lcom/sec/android/app/sbrowser/extract_text/LiveTextInitializer;)Lcom/samsung/android/app/sdk/deepsky/textextraction/Recognizer;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/sec/android/app/sbrowser/extract_text/LiveTextInitializer$RecognizerInitListener;->onInitialised(Lcom/samsung/android/app/sdk/deepsky/textextraction/Recognizer;)V

    const-string v2, "LiveTextInitializer"

    const-string v3, "Initialized VisionText"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v2

    :try_start_3
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/extract_text/LiveTextInitializer$2;->this$0:Lcom/sec/android/app/sbrowser/extract_text/LiveTextInitializer;

    const/4 v3, 0x0

    invoke-static {p0, v3}, Lcom/sec/android/app/sbrowser/extract_text/LiveTextInitializer;->e(Lcom/sec/android/app/sbrowser/extract_text/LiveTextInitializer;Lcom/samsung/android/app/sdk/deepsky/textextraction/Recognizer;)V

    const-string p0, "LiveTextInitializer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    monitor-exit v1

    return-void

    :goto_1
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p0
.end method
