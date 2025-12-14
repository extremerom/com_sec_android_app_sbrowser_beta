.class public final synthetic Lcom/sec/android/app/sbrowser/extensions/trans/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic a:Lcom/sec/android/app/sbrowser/extensions/trans/NeuralTransClient;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:J


# direct methods
.method public synthetic constructor <init>(Lcom/sec/android/app/sbrowser/extensions/trans/NeuralTransClient;Ljava/lang/String;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/extensions/trans/c;->a:Lcom/sec/android/app/sbrowser/extensions/trans/NeuralTransClient;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/extensions/trans/c;->b:Ljava/lang/String;

    iput-wide p3, p0, Lcom/sec/android/app/sbrowser/extensions/trans/c;->c:J

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 4

    check-cast p1, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationErrorCode;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extensions/trans/c;->a:Lcom/sec/android/app/sbrowser/extensions/trans/NeuralTransClient;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/extensions/trans/c;->b:Ljava/lang/String;

    iget-wide v2, p0, Lcom/sec/android/app/sbrowser/extensions/trans/c;->c:J

    invoke-static {v0, v1, v2, v3, p1}, Lcom/sec/android/app/sbrowser/extensions/trans/NeuralTransClient;->f(Lcom/sec/android/app/sbrowser/extensions/trans/NeuralTransClient;Ljava/lang/String;JLcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationErrorCode;)V

    return-void
.end method
