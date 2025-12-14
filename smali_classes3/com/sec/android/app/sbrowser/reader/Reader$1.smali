.class Lcom/sec/android/app/sbrowser/reader/Reader$1;
.super Ljava/util/TimerTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/reader/Reader;->setExtractionTimer()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/reader/Reader;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/reader/Reader;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/reader/Reader$1;->this$0:Lcom/sec/android/app/sbrowser/reader/Reader;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    const-string v0, "si__Reader"

    const-string v1, "Timeout occurred while evaluating javaScript"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/reader/Reader$1;->this$0:Lcom/sec/android/app/sbrowser/reader/Reader;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/reader/Reader;->b(Lcom/sec/android/app/sbrowser/reader/Reader;)Lcom/sec/android/app/sbrowser/reader/ReaderCallback;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/reader/ReaderCallback;->onExtractionFailed()V

    return-void
.end method
