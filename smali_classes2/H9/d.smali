.class public final synthetic LH9/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, LH9/d;->a:I

    iput-object p2, p0, LH9/d;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 8

    iget v0, p0, LH9/d;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, LH9/d;->b:Ljava/lang/Object;

    check-cast p0, Lq9/e;

    invoke-virtual {p0, p1}, Lq9/e;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :pswitch_0
    iget-object p0, p0, LH9/d;->b:Ljava/lang/Object;

    check-cast p0, Lq9/e;

    invoke-virtual {p0, p1}, Lq9/e;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :pswitch_1
    iget-object p0, p0, LH9/d;->b:Ljava/lang/Object;

    check-cast p0, Lorg/chromium/components/autofill/payments/LegalMessageLine;

    check-cast p1, Lorg/chromium/components/autofill/payments/LegalMessageLine$Link;

    invoke-virtual {p0, p1}, Lorg/chromium/components/autofill/payments/LegalMessageLine;->addLink(Lorg/chromium/components/autofill/payments/LegalMessageLine$Link;)V

    return-void

    :pswitch_2
    check-cast p1, Landroid/view/View;

    iget-object p0, p0, LH9/d;->b:Ljava/lang/Object;

    check-cast p0, Ll9/d;

    const-string v0, "it"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Li9/a;->c()Lj9/h;

    move-result-object p0

    check-cast p0, Ll9/j;

    if-eqz p0, :cond_4

    iget-object v0, p0, Lj9/h;->d:Lq9/f;

    invoke-virtual {v0, p1}, Lq9/f;->i(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    iget-object v2, p0, Lj9/h;->g:Landroid/view/ViewTreeObserver;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    iget-object v3, p0, Lj9/h;->j:Lj9/c;

    const/4 v4, 0x0

    const-string v5, "VibeRenderEffectBase"

    if-eq v1, v2, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v6, "removeOnGlobalLayoutListener: viewTreeObserver "

    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " is changed, use saved one"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lj9/h;->g:Landroid/view/ViewTreeObserver;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3

    iget-object v1, p0, Lj9/h;->g:Landroid/view/ViewTreeObserver;

    if-eqz v1, :cond_3

    invoke-virtual {v1, v3}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    goto :goto_2

    :cond_1
    iget-object v1, p0, Lj9/h;->g:Landroid/view/ViewTreeObserver;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_1

    :cond_2
    move-object v1, v4

    :goto_1
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "removeOnGlobalLayoutListener observer: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " view: "

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_3
    :goto_2
    iput-object v4, p0, Lj9/h;->g:Landroid/view/ViewTreeObserver;

    invoke-static {p1}, Lj9/a;->w(Landroid/view/View;)V

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->size()I

    move-result p1

    if-nez p1, :cond_4

    invoke-virtual {p0}, Lj9/h;->f()V

    :cond_4
    return-void

    :pswitch_3
    check-cast p1, Landroid/view/View;

    iget-object p0, p0, LH9/d;->b:Ljava/lang/Object;

    check-cast p0, Lj9/h;

    const-string v0, "this$0"

    invoke-static {p0, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v1

    new-instance v2, Lj9/e;

    invoke-direct {v2, p0, v0, v1}, Lj9/e;-><init>(Lj9/h;II)V

    invoke-virtual {p0, v2}, Lj9/h;->k(Ljava/util/function/Consumer;)V

    invoke-virtual {p1}, Landroid/view/View;->getAlpha()F

    move-result v0

    invoke-virtual {p0, p1, v0}, Lj9/h;->h(Landroid/view/View;F)V

    iget-object v0, p0, Lj9/h;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lsb/k;

    invoke-interface {v1, p1}, Lsb/k;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_5
    invoke-virtual {p0}, Lj9/h;->b()Landroid/graphics/RenderEffect;

    move-result-object p0

    invoke-static {p1, p0}, Lj9/a;->x(Landroid/view/View;Landroid/graphics/RenderEffect;)V

    return-void

    :pswitch_4
    iget-object p0, p0, LH9/d;->b:Ljava/lang/Object;

    check-cast p0, Lcom/sec/android/app/sbrowser/tab_saver/task/RestoreTabThemeListTask;

    check-cast p1, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/tab_saver/task/RestoreTabThemeListTask;->b(Lcom/sec/android/app/sbrowser/tab_saver/task/RestoreTabThemeListTask;Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)V

    return-void

    :pswitch_5
    iget-object p0, p0, LH9/d;->b:Ljava/lang/Object;

    check-cast p0, Lcom/sec/android/app/sbrowser/tab_saver/task/RestoreTabColorListTask;

    check-cast p1, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/tab_saver/task/RestoreTabColorListTask;->b(Lcom/sec/android/app/sbrowser/tab_saver/task/RestoreTabColorListTask;Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)V

    return-void

    :pswitch_6
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iget-object p0, p0, LH9/d;->b:Ljava/lang/Object;

    check-cast p0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    return-void

    :pswitch_7
    iget-object p0, p0, LH9/d;->b:Ljava/lang/Object;

    check-cast p0, Lcom/sec/android/app/sbrowser/settings/browsing_assist/ReadArticlesAloudVoiceTypeFragment;

    check-cast p1, Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/settings/browsing_assist/ReadArticlesAloudVoiceTypeFragment;->j(Lcom/sec/android/app/sbrowser/settings/browsing_assist/ReadArticlesAloudVoiceTypeFragment;Ljava/lang/String;)V

    return-void

    :pswitch_8
    iget-object p0, p0, LH9/d;->b:Ljava/lang/Object;

    check-cast p0, Lcom/sec/android/app/sbrowser/settings/browsing_assist/ReadArticlesAloudVoiceStyleFragment;

    check-cast p1, Ljava/util/Map$Entry;

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/settings/browsing_assist/ReadArticlesAloudVoiceStyleFragment;->j(Lcom/sec/android/app/sbrowser/settings/browsing_assist/ReadArticlesAloudVoiceStyleFragment;Ljava/util/Map$Entry;)V

    return-void

    :pswitch_9
    iget-object p0, p0, LH9/d;->b:Ljava/lang/Object;

    check-cast p0, Lcom/samsung/android/sdk/scs/ai/asr_6_0/tasks/SttRecognitionTask;

    check-cast p1, Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/samsung/android/sdk/scs/ai/asr_6_0/tasks/SttRecognitionTask;->a(Lcom/samsung/android/sdk/scs/ai/asr_6_0/tasks/SttRecognitionTask;Ljava/lang/String;)V

    return-void

    :pswitch_a
    iget-object p0, p0, LH9/d;->b:Ljava/lang/Object;

    check-cast p0, Lcom/samsung/android/sdk/scs/ai/asr/tasks/SttRecognitionTask;

    check-cast p1, Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/samsung/android/sdk/scs/ai/asr/tasks/SttRecognitionTask;->b(Lcom/samsung/android/sdk/scs/ai/asr/tasks/SttRecognitionTask;Ljava/lang/String;)V

    return-void

    :pswitch_b
    check-cast p1, Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, LH9/d;->b:Ljava/lang/Object;

    check-cast p0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ";"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    return-void

    :pswitch_c
    iget-object p0, p0, LH9/d;->b:Ljava/lang/Object;

    check-cast p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/model/ReadAloud;

    check-cast p1, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/model/ReadAloudObserver;

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/model/ReadAloud;->d(Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/model/ReadAloud;Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/model/ReadAloudObserver;)V

    return-void

    :pswitch_d
    iget-object p0, p0, LH9/d;->b:Ljava/lang/Object;

    check-cast p0, LC9/b;

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/common/utils/TtsVoiceUtils;->c(LC9/b;Ljava/lang/Object;)V

    return-void

    :pswitch_e
    iget-object p0, p0, LH9/d;->b:Ljava/lang/Object;

    check-cast p0, Lcom/samsung/android/sdk/scs/ai/language/WritingComposer;

    check-cast p1, Lcom/samsung/android/sdk/scs/ai/language/service/LlmServiceObserver2;

    invoke-static {p0, p1}, Lcom/samsung/android/sdk/scs/ai/language/WritingComposer;->a(Lcom/samsung/android/sdk/scs/ai/language/WritingComposer;Lcom/samsung/android/sdk/scs/ai/language/service/LlmServiceObserver2;)V

    return-void

    :pswitch_f
    iget-object p0, p0, LH9/d;->b:Ljava/lang/Object;

    check-cast p0, Lcom/samsung/android/sdk/scs/ai/language/ToneConverter;

    check-cast p1, Lcom/samsung/android/sdk/scs/ai/language/service/LlmServiceObserver2;

    invoke-static {p0, p1}, Lcom/samsung/android/sdk/scs/ai/language/ToneConverter;->a(Lcom/samsung/android/sdk/scs/ai/language/ToneConverter;Lcom/samsung/android/sdk/scs/ai/language/service/LlmServiceObserver2;)V

    return-void

    :pswitch_10
    iget-object p0, p0, LH9/d;->b:Ljava/lang/Object;

    check-cast p0, Lcom/samsung/android/sdk/scs/ai/language/Summarizer;

    check-cast p1, Lcom/samsung/android/sdk/scs/ai/language/service/LlmServiceObserver2;

    invoke-static {p0, p1}, Lcom/samsung/android/sdk/scs/ai/language/Summarizer;->e(Lcom/samsung/android/sdk/scs/ai/language/Summarizer;Lcom/samsung/android/sdk/scs/ai/language/service/LlmServiceObserver2;)V

    return-void

    :pswitch_11
    iget-object p0, p0, LH9/d;->b:Ljava/lang/Object;

    check-cast p0, Lcom/samsung/android/sdk/scs/ai/language/SuggesterForExternal;

    check-cast p1, Lcom/samsung/android/sdk/scs/ai/language/service/LlmServiceObserver2;

    invoke-static {p0, p1}, Lcom/samsung/android/sdk/scs/ai/language/SuggesterForExternal;->b(Lcom/samsung/android/sdk/scs/ai/language/SuggesterForExternal;Lcom/samsung/android/sdk/scs/ai/language/service/LlmServiceObserver2;)V

    return-void

    :pswitch_12
    iget-object p0, p0, LH9/d;->b:Ljava/lang/Object;

    check-cast p0, Lcom/samsung/android/sdk/scs/ai/language/Suggester;

    check-cast p1, Lcom/samsung/android/sdk/scs/ai/language/service/LlmServiceObserver2;

    invoke-static {p0, p1}, Lcom/samsung/android/sdk/scs/ai/language/Suggester;->c(Lcom/samsung/android/sdk/scs/ai/language/Suggester;Lcom/samsung/android/sdk/scs/ai/language/service/LlmServiceObserver2;)V

    return-void

    :pswitch_13
    iget-object p0, p0, LH9/d;->b:Ljava/lang/Object;

    check-cast p0, Lcom/samsung/android/sdk/scs/ai/language/SmartReplyer;

    check-cast p1, Lcom/samsung/android/sdk/scs/ai/language/service/LlmServiceObserver2;

    invoke-static {p0, p1}, Lcom/samsung/android/sdk/scs/ai/language/SmartReplyer;->a(Lcom/samsung/android/sdk/scs/ai/language/SmartReplyer;Lcom/samsung/android/sdk/scs/ai/language/service/LlmServiceObserver2;)V

    return-void

    :pswitch_14
    iget-object p0, p0, LH9/d;->b:Ljava/lang/Object;

    check-cast p0, Lcom/samsung/android/sdk/scs/ai/language/SmartCoverer;

    check-cast p1, Lcom/samsung/android/sdk/scs/ai/language/service/LlmServiceObserver2;

    invoke-static {p0, p1}, Lcom/samsung/android/sdk/scs/ai/language/SmartCoverer;->a(Lcom/samsung/android/sdk/scs/ai/language/SmartCoverer;Lcom/samsung/android/sdk/scs/ai/language/service/LlmServiceObserver2;)V

    return-void

    :pswitch_15
    iget-object p0, p0, LH9/d;->b:Ljava/lang/Object;

    check-cast p0, Lcom/samsung/android/sdk/scs/ai/language/Extractor;

    check-cast p1, Lcom/samsung/android/sdk/scs/ai/language/service/LlmServiceObserver2;

    invoke-static {p0, p1}, Lcom/samsung/android/sdk/scs/ai/language/Extractor;->a(Lcom/samsung/android/sdk/scs/ai/language/Extractor;Lcom/samsung/android/sdk/scs/ai/language/service/LlmServiceObserver2;)V

    return-void

    :pswitch_16
    iget-object p0, p0, LH9/d;->b:Ljava/lang/Object;

    check-cast p0, Lcom/samsung/android/sdk/scs/ai/language/EmojiAugmentor;

    check-cast p1, Lcom/samsung/android/sdk/scs/ai/language/service/LlmServiceObserver2;

    invoke-static {p0, p1}, Lcom/samsung/android/sdk/scs/ai/language/EmojiAugmentor;->a(Lcom/samsung/android/sdk/scs/ai/language/EmojiAugmentor;Lcom/samsung/android/sdk/scs/ai/language/service/LlmServiceObserver2;)V

    return-void

    :pswitch_17
    iget-object p0, p0, LH9/d;->b:Ljava/lang/Object;

    check-cast p0, Lcom/samsung/android/sdk/scs/ai/language/Corrector;

    check-cast p1, Lcom/samsung/android/sdk/scs/ai/language/service/LlmServiceObserver2;

    invoke-static {p0, p1}, Lcom/samsung/android/sdk/scs/ai/language/Corrector;->c(Lcom/samsung/android/sdk/scs/ai/language/Corrector;Lcom/samsung/android/sdk/scs/ai/language/service/LlmServiceObserver2;)V

    return-void

    :pswitch_18
    iget-object p0, p0, LH9/d;->b:Ljava/lang/Object;

    check-cast p0, LH9/c;

    invoke-static {p0, p1}, Lcom/samsung/android/vexfwk/sdk/imagetranslator/VexFwkImageTranslator;->G(LH9/c;Ljava/lang/Object;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
