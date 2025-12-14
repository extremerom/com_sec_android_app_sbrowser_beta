.class public final synthetic La9/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    iput p2, p0, La9/d;->a:I

    iput-object p1, p0, La9/d;->b:Ljava/lang/Object;

    iput-object p3, p0, La9/d;->c:Ljava/lang/Object;

    iput-object p4, p0, La9/d;->d:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/util/concurrent/CountDownLatch;)V
    .locals 1

    const/4 v0, 0x5

    iput v0, p0, La9/d;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, La9/d;->b:Ljava/lang/Object;

    iput-object p2, p0, La9/d;->d:Ljava/lang/Object;

    iput-object p3, p0, La9/d;->c:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 8

    iget v0, p0, La9/d;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, La9/d;->c:Ljava/lang/Object;

    check-cast v0, Ljava/util/concurrent/CountDownLatch;

    check-cast p1, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationErrorCode;

    iget-object v1, p0, La9/d;->b:Ljava/lang/Object;

    check-cast v1, Ljava/lang/StringBuilder;

    iget-object p0, p0, La9/d;->d:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    invoke-static {v1, p0, v0, p1}, Lcom/samsung/android/app/sdk/deepsky/textextraction/translate/TextTranslator;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/util/concurrent/CountDownLatch;Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationErrorCode;)V

    return-void

    :pswitch_0
    iget-object v0, p0, La9/d;->d:Ljava/lang/Object;

    check-cast v0, Ljava/util/concurrent/atomic/AtomicReference;

    check-cast p1, Ljava/lang/String;

    iget-object v1, p0, La9/d;->b:Ljava/lang/Object;

    check-cast v1, Lcom/sec/android/app/sbrowser/settings/browsing_assist/ReadArticlesAloudVoiceTypeFragment;

    iget-object p0, p0, La9/d;->c:Ljava/lang/Object;

    check-cast p0, Landroidx/preference/PreferenceScreen;

    invoke-static {v1, p0, v0, p1}, Lcom/sec/android/app/sbrowser/settings/browsing_assist/ReadArticlesAloudVoiceTypeFragment;->k(Lcom/sec/android/app/sbrowser/settings/browsing_assist/ReadArticlesAloudVoiceTypeFragment;Landroidx/preference/PreferenceScreen;Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/String;)V

    return-void

    :pswitch_1
    iget-object v0, p0, La9/d;->d:Ljava/lang/Object;

    check-cast v0, Ljava/util/concurrent/atomic/AtomicReference;

    check-cast p1, Ljava/lang/String;

    iget-object v1, p0, La9/d;->b:Ljava/lang/Object;

    check-cast v1, Lcom/sec/android/app/sbrowser/settings/ReadAloudVoiceTypeFragment;

    iget-object p0, p0, La9/d;->c:Ljava/lang/Object;

    check-cast p0, Landroidx/preference/PreferenceScreen;

    invoke-static {v1, p0, v0, p1}, Lcom/sec/android/app/sbrowser/settings/ReadAloudVoiceTypeFragment;->k(Lcom/sec/android/app/sbrowser/settings/ReadAloudVoiceTypeFragment;Landroidx/preference/PreferenceScreen;Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/String;)V

    return-void

    :pswitch_2
    check-cast p1, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationErrorCode;

    iget-object v0, p0, La9/d;->b:Ljava/lang/Object;

    check-cast v0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudTranslationHandler;

    iget-object v1, p0, La9/d;->c:Ljava/lang/Object;

    check-cast v1, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudTranslationHandler$TranslationResultCallback;

    iget-object p0, p0, La9/d;->d:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    invoke-static {v0, v1, p0, p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudTranslationHandler;->e(Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudTranslationHandler;Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudTranslationHandler$TranslationResultCallback;Ljava/lang/String;Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationErrorCode;)V

    return-void

    :pswitch_3
    move-object v6, p1

    check-cast v6, Lcom/samsung/android/scloud/lib/setting/n;

    iget-object p1, p0, La9/d;->b:Ljava/lang/Object;

    move-object v3, p1

    check-cast v3, Lcom/samsung/android/scloud/lib/setting/e;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p1, Ljava/lang/Thread;

    new-instance v0, LH6/a;

    iget-object v1, p0, La9/d;->c:Ljava/lang/Object;

    move-object v4, v1

    check-cast v4, Landroid/net/Uri;

    iget-object p0, p0, La9/d;->d:Ljava/lang/Object;

    move-object v5, p0

    check-cast v5, Ljava/util/List;

    const/4 v7, 0x1

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, LH6/a;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-direct {p1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    return-void

    :pswitch_4
    check-cast p1, Lcom/samsung/android/sdk/scs/ai/language/service/LlmServiceObserver2;

    iget-object v0, p0, La9/d;->b:Ljava/lang/Object;

    check-cast v0, Lcom/samsung/android/sdk/scs/ai/language/SmartReplyer;

    iget-object v1, p0, La9/d;->c:Ljava/lang/Object;

    check-cast v1, Lcom/samsung/android/sdk/scs/ai/language/AppInfo;

    iget-object p0, p0, La9/d;->d:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    invoke-static {v0, v1, p0, p1}, Lcom/samsung/android/sdk/scs/ai/language/SmartReplyer;->b(Lcom/samsung/android/sdk/scs/ai/language/SmartReplyer;Lcom/samsung/android/sdk/scs/ai/language/AppInfo;Ljava/lang/String;Lcom/samsung/android/sdk/scs/ai/language/service/LlmServiceObserver2;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
