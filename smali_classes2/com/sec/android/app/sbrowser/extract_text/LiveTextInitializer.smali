.class public Lcom/sec/android/app/sbrowser/extract_text/LiveTextInitializer;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/extract_text/LiveTextInitializer$RecognizerInitListener;
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mLockObject:Ljava/lang/Object;

.field private mRecognizer:Lcom/samsung/android/app/sdk/deepsky/textextraction/Recognizer;

.field private mTextExtraction:Lcom/samsung/android/app/sdk/deepsky/textextraction/TextExtraction;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/extract_text/LiveTextInitializer;->mLockObject:Ljava/lang/Object;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/extract_text/LiveTextInitializer;->mContext:Landroid/content/Context;

    return-void
.end method

.method public static bridge synthetic a(Lcom/sec/android/app/sbrowser/extract_text/LiveTextInitializer;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/extract_text/LiveTextInitializer;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static bridge synthetic b(Lcom/sec/android/app/sbrowser/extract_text/LiveTextInitializer;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/extract_text/LiveTextInitializer;->mLockObject:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic c(Lcom/sec/android/app/sbrowser/extract_text/LiveTextInitializer;)Lcom/samsung/android/app/sdk/deepsky/textextraction/Recognizer;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/extract_text/LiveTextInitializer;->mRecognizer:Lcom/samsung/android/app/sdk/deepsky/textextraction/Recognizer;

    return-object p0
.end method

.method public static bridge synthetic d(Lcom/sec/android/app/sbrowser/extract_text/LiveTextInitializer;)Lcom/samsung/android/app/sdk/deepsky/textextraction/TextExtraction;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/extract_text/LiveTextInitializer;->mTextExtraction:Lcom/samsung/android/app/sdk/deepsky/textextraction/TextExtraction;

    return-object p0
.end method

.method public static bridge synthetic e(Lcom/sec/android/app/sbrowser/extract_text/LiveTextInitializer;Lcom/samsung/android/app/sdk/deepsky/textextraction/Recognizer;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/extract_text/LiveTextInitializer;->mRecognizer:Lcom/samsung/android/app/sdk/deepsky/textextraction/Recognizer;

    return-void
.end method

.method public static bridge synthetic f(Lcom/sec/android/app/sbrowser/extract_text/LiveTextInitializer;Lcom/samsung/android/app/sdk/deepsky/textextraction/TextExtraction;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/extract_text/LiveTextInitializer;->mTextExtraction:Lcom/samsung/android/app/sdk/deepsky/textextraction/TextExtraction;

    return-void
.end method

.method private getUnCaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;
    .locals 1

    new-instance v0, Lcom/sec/android/app/sbrowser/extract_text/LiveTextInitializer$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/extract_text/LiveTextInitializer$1;-><init>(Lcom/sec/android/app/sbrowser/extract_text/LiveTextInitializer;)V

    return-object v0
.end method


# virtual methods
.method public deInitializeVisionText()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extract_text/LiveTextInitializer;->mRecognizer:Lcom/samsung/android/app/sdk/deepsky/textextraction/Recognizer;

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/sec/android/app/sbrowser/extract_text/LiveTextInitializer$3;

    invoke-direct {v1, p0}, Lcom/sec/android/app/sbrowser/extract_text/LiveTextInitializer$3;-><init>(Lcom/sec/android/app/sbrowser/extract_text/LiveTextInitializer;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/extract_text/LiveTextInitializer;->getUnCaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/Thread;->setUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public getRecognizer()Lcom/samsung/android/app/sdk/deepsky/textextraction/Recognizer;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/extract_text/LiveTextInitializer;->mRecognizer:Lcom/samsung/android/app/sdk/deepsky/textextraction/Recognizer;

    return-object p0
.end method

.method public getTextExtraction()Lcom/samsung/android/app/sdk/deepsky/textextraction/TextExtraction;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/extract_text/LiveTextInitializer;->mTextExtraction:Lcom/samsung/android/app/sdk/deepsky/textextraction/TextExtraction;

    return-object p0
.end method

.method public initializeVisionText(Lcom/sec/android/app/sbrowser/extract_text/LiveTextInitializer$RecognizerInitListener;)V
    .locals 2

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/sec/android/app/sbrowser/extract_text/LiveTextInitializer$2;

    invoke-direct {v1, p0, p1}, Lcom/sec/android/app/sbrowser/extract_text/LiveTextInitializer$2;-><init>(Lcom/sec/android/app/sbrowser/extract_text/LiveTextInitializer;Lcom/sec/android/app/sbrowser/extract_text/LiveTextInitializer$RecognizerInitListener;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/extract_text/LiveTextInitializer;->getUnCaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/Thread;->setUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method
