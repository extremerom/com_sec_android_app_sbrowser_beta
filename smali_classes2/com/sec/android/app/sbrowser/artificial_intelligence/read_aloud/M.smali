.class public final synthetic Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/M;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic a:Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudTranslationHandler$TranslationResultCallback;


# direct methods
.method public synthetic constructor <init>(Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudTranslationHandler$TranslationResultCallback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/M;->a:Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudTranslationHandler$TranslationResultCallback;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/M;->a:Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudTranslationHandler$TranslationResultCallback;

    check-cast p1, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationResult;

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudTranslationHandler;->c(Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudTranslationHandler$TranslationResultCallback;Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationResult;)V

    return-void
.end method
