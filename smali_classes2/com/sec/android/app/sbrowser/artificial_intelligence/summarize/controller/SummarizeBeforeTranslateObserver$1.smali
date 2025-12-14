.class Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeBeforeTranslateObserver$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/artificial_intelligence/translate/LangPackManager$OnDownloadPopupCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeBeforeTranslateObserver;->onChanged(Lcom/sec/android/app/sbrowser/common/livedata/Event;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeBeforeTranslateObserver;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeBeforeTranslateObserver;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeBeforeTranslateObserver$1;->this$0:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeBeforeTranslateObserver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed()V
    .locals 1

    const-string p0, "SummarizeBeforeTranslateObserver"

    const-string v0, "[Translate:OnDownloadPopupCallback] onFailed"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onSuccess()V
    .locals 1

    const-string p0, "SummarizeBeforeTranslateObserver"

    const-string v0, "[Translate:OnDownloadPopupCallback] onSuccess"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
