.class public final synthetic Lcom/sec/android/app/sbrowser/extensions/trans/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic a:Lcom/sec/android/app/sbrowser/extensions/trans/NeuralTransClient;

.field public final synthetic b:J


# direct methods
.method public synthetic constructor <init>(Lcom/sec/android/app/sbrowser/extensions/trans/NeuralTransClient;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/extensions/trans/b;->a:Lcom/sec/android/app/sbrowser/extensions/trans/NeuralTransClient;

    iput-wide p2, p0, Lcom/sec/android/app/sbrowser/extensions/trans/b;->b:J

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 3

    check-cast p1, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationResult;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extensions/trans/b;->a:Lcom/sec/android/app/sbrowser/extensions/trans/NeuralTransClient;

    iget-wide v1, p0, Lcom/sec/android/app/sbrowser/extensions/trans/b;->b:J

    invoke-static {v0, v1, v2, p1}, Lcom/sec/android/app/sbrowser/extensions/trans/NeuralTransClient;->d(Lcom/sec/android/app/sbrowser/extensions/trans/NeuralTransClient;JLcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationResult;)V

    return-void
.end method
