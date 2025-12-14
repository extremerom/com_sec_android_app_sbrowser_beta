.class Lorg/chromium/content/browser/TtsPlatformImpl$TtsEngine$1;
.super Lorg/chromium/base/task/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/chromium/content/browser/TtsPlatformImpl$TtsEngine;->initializeDefault()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/chromium/base/task/AsyncTask<",
        "Ljava/util/List<",
        "Lorg/chromium/content/browser/TtsPlatformImpl$TtsVoice;",
        ">;>;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field final synthetic this$0:Lorg/chromium/content/browser/TtsPlatformImpl$TtsEngine;


# direct methods
.method public constructor <init>(Lorg/chromium/content/browser/TtsPlatformImpl$TtsEngine;)V
    .locals 0

    iput-object p1, p0, Lorg/chromium/content/browser/TtsPlatformImpl$TtsEngine$1;->this$0:Lorg/chromium/content/browser/TtsPlatformImpl$TtsEngine;

    invoke-direct {p0}, Lorg/chromium/base/task/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic doInBackground()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lorg/chromium/content/browser/TtsPlatformImpl$TtsEngine$1;->doInBackground()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public doInBackground()Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/chromium/content/browser/TtsPlatformImpl$TtsVoice;",
            ">;"
        }
    .end annotation

    const-string v0, "TtsEngine:initialize_default.async_task"

    invoke-static {v0}, Lorg/chromium/base/TraceEvent;->scoped(Ljava/lang/String;)Lorg/chromium/base/TraceEvent;

    move-result-object v0

    :try_start_0
    invoke-static {}, Ljava/util/Locale;->getAvailableLocales()[Ljava/util/Locale;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    array-length v3, v1

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, v3, :cond_3

    aget-object v6, v1, v5

    invoke-virtual {v6}, Ljava/util/Locale;->getVariant()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v7, :cond_0

    goto :goto_2

    :cond_0
    :try_start_1
    iget-object v7, p0, Lorg/chromium/content/browser/TtsPlatformImpl$TtsEngine$1;->this$0:Lorg/chromium/content/browser/TtsPlatformImpl$TtsEngine;

    invoke-static {v7}, Lorg/chromium/content/browser/TtsPlatformImpl$TtsEngine;->f(Lorg/chromium/content/browser/TtsPlatformImpl$TtsEngine;)Landroid/speech/tts/TextToSpeech;

    move-result-object v7

    invoke-virtual {v7, v6}, Landroid/speech/tts/TextToSpeech;->isLanguageAvailable(Ljava/util/Locale;)I

    move-result v7

    if-lez v7, :cond_2

    invoke-virtual {v6}, Ljava/util/Locale;->getDisplayLanguage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_1

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " "

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/util/Locale;->getDisplayCountry()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_3

    :cond_1
    :goto_1
    new-instance v8, Lorg/chromium/content/browser/TtsPlatformImpl$TtsVoice;

    invoke-virtual {v6}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v8, v7, v6, v4}, Lorg/chromium/content/browser/TtsPlatformImpl$TtsVoice;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catch_0
    :cond_2
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_3
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lorg/chromium/base/TraceEvent;->close()V

    :cond_4
    return-object v2

    :goto_3
    if-eqz v0, :cond_5

    :try_start_2
    invoke-virtual {v0}, Lorg/chromium/base/TraceEvent;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_4

    :catchall_1
    move-exception v0

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_5
    :goto_4
    throw p0
.end method

.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lorg/chromium/content/browser/TtsPlatformImpl$TtsEngine$1;->onPostExecute(Ljava/util/List;)V

    return-void
.end method

.method public onPostExecute(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/chromium/content/browser/TtsPlatformImpl$TtsVoice;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lorg/chromium/content/browser/TtsPlatformImpl$TtsEngine$1;->this$0:Lorg/chromium/content/browser/TtsPlatformImpl$TtsEngine;

    invoke-static {v0, p1}, Lorg/chromium/content/browser/TtsPlatformImpl$TtsEngine;->h(Lorg/chromium/content/browser/TtsPlatformImpl$TtsEngine;Ljava/util/List;)V

    iget-object p1, p0, Lorg/chromium/content/browser/TtsPlatformImpl$TtsEngine$1;->this$0:Lorg/chromium/content/browser/TtsPlatformImpl$TtsEngine;

    invoke-static {p1}, Lorg/chromium/content/browser/TtsPlatformImpl$TtsEngine;->g(Lorg/chromium/content/browser/TtsPlatformImpl$TtsEngine;)V

    invoke-static {}, Lorg/chromium/content/browser/TtsPlatformImplJni;->get()Lorg/chromium/content/browser/TtsPlatformImpl$Natives;

    move-result-object p1

    iget-object v0, p0, Lorg/chromium/content/browser/TtsPlatformImpl$TtsEngine$1;->this$0:Lorg/chromium/content/browser/TtsPlatformImpl$TtsEngine;

    invoke-static {v0}, Lorg/chromium/content/browser/TtsPlatformImpl$TtsEngine;->d(Lorg/chromium/content/browser/TtsPlatformImpl$TtsEngine;)J

    move-result-wide v0

    invoke-interface {p1, v0, v1}, Lorg/chromium/content/browser/TtsPlatformImpl$Natives;->voicesChanged(J)V

    iget-object p1, p0, Lorg/chromium/content/browser/TtsPlatformImpl$TtsEngine$1;->this$0:Lorg/chromium/content/browser/TtsPlatformImpl$TtsEngine;

    invoke-static {p1}, Lorg/chromium/content/browser/TtsPlatformImpl$TtsEngine;->e(Lorg/chromium/content/browser/TtsPlatformImpl$TtsEngine;)Lorg/chromium/content/browser/TtsPlatformImpl$PendingUtterance;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/chromium/content/browser/TtsPlatformImpl$TtsEngine$1;->this$0:Lorg/chromium/content/browser/TtsPlatformImpl$TtsEngine;

    invoke-static {p1}, Lorg/chromium/content/browser/TtsPlatformImpl$TtsEngine;->e(Lorg/chromium/content/browser/TtsPlatformImpl$TtsEngine;)Lorg/chromium/content/browser/TtsPlatformImpl$PendingUtterance;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/content/browser/TtsPlatformImpl$PendingUtterance;->a(Lorg/chromium/content/browser/TtsPlatformImpl$PendingUtterance;)V

    :cond_0
    iget-object p0, p0, Lorg/chromium/content/browser/TtsPlatformImpl$TtsEngine$1;->this$0:Lorg/chromium/content/browser/TtsPlatformImpl$TtsEngine;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    int-to-long p0, p0

    const-string v0, "TtsEngine:initialize_default"

    invoke-static {v0, p0, p1}, Lorg/chromium/base/TraceEvent;->finishAsync(Ljava/lang/String;J)V

    return-void
.end method
