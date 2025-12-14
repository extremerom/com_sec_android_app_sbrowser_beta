.class public Lcom/sec/android/app/sbrowser/utils/VoiceRecognizer;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/utils/VoiceRecognizer$IntentBuilder;,
        Lcom/sec/android/app/sbrowser/utils/VoiceRecognizer$Result;
    }
.end annotation


# direct methods
.method public static launch(Landroid/app/Activity;Z)V
    .locals 2
    .param p0    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "VoiceRecognizer"

    new-instance v1, Lcom/sec/android/app/sbrowser/utils/VoiceRecognizer$IntentBuilder;

    invoke-direct {v1, p0}, Lcom/sec/android/app/sbrowser/utils/VoiceRecognizer$IntentBuilder;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v1, p1}, Lcom/sec/android/app/sbrowser/utils/VoiceRecognizer$IntentBuilder;->languageModel(Z)Lcom/sec/android/app/sbrowser/utils/VoiceRecognizer$IntentBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/utils/VoiceRecognizer$IntentBuilder;->build()Landroid/content/Intent;

    move-result-object p1

    const/16 v1, 0x68

    :try_start_0
    invoke-virtual {p0, p1, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "Exception :"

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_1
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "ActivityNotFoundException :"

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public static toResult(Landroid/content/Intent;)Lcom/sec/android/app/sbrowser/utils/VoiceRecognizer$Result;
    .locals 1
    .param p0    # Landroid/content/Intent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    new-instance v0, Lcom/sec/android/app/sbrowser/utils/VoiceRecognizer$Result;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/utils/VoiceRecognizer$Result;-><init>(Landroid/content/Intent;)V

    return-object v0
.end method
