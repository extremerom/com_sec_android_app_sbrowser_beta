.class Lcom/sec/android/app/sbrowser/extract_text/VideoLiveTextController$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/extract_text/LiveTextView$LiveTextControllerDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/extract_text/VideoLiveTextController$1;->onRecognitionComplete(Lcom/samsung/android/app/sdk/deepsky/textextraction/result/OcrResult;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/android/app/sbrowser/extract_text/VideoLiveTextController$1;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/extract_text/VideoLiveTextController$1;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/extract_text/VideoLiveTextController$1$1;->this$1:Lcom/sec/android/app/sbrowser/extract_text/VideoLiveTextController$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public clearExtractTextInfo()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/extract_text/VideoLiveTextController$1$1;->this$1:Lcom/sec/android/app/sbrowser/extract_text/VideoLiveTextController$1;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/extract_text/VideoLiveTextController$1;->this$0:Lcom/sec/android/app/sbrowser/extract_text/VideoLiveTextController;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/extract_text/VideoLiveTextController;->clearRecognitionInfo()V

    return-void
.end method

.method public getTopMargin()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public origin()Lcom/sec/android/app/sbrowser/extract_text/LiveTextView$OriginType;
    .locals 0

    sget-object p0, Lcom/sec/android/app/sbrowser/extract_text/LiveTextView$OriginType;->VIDEO:Lcom/sec/android/app/sbrowser/extract_text/LiveTextView$OriginType;

    return-object p0
.end method
