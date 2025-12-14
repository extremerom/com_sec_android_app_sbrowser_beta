.class Lcom/sec/android/app/sbrowser/artificial_intelligence/translate/LangPackManager$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/sdk/scs/base/tasks/OnCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/artificial_intelligence/translate/LangPackManager;->getSupportAllLanguageInfo(Landroid/content/Context;ZLcom/sec/android/app/sbrowser/artificial_intelligence/translate/LangPackManager$OnSupportAllLanguageInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/samsung/android/sdk/scs/base/tasks/OnCompleteListener<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/artificial_intelligence/translate/LangPackManager;

.field final synthetic val$callback:Lcom/sec/android/app/sbrowser/artificial_intelligence/translate/LangPackManager$OnSupportAllLanguageInfo;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/artificial_intelligence/translate/LangPackManager;Lcom/sec/android/app/sbrowser/artificial_intelligence/translate/LangPackManager$OnSupportAllLanguageInfo;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/translate/LangPackManager$3;->this$0:Lcom/sec/android/app/sbrowser/artificial_intelligence/translate/LangPackManager;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/translate/LangPackManager$3;->val$callback:Lcom/sec/android/app/sbrowser/artificial_intelligence/translate/LangPackManager$OnSupportAllLanguageInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Lcom/samsung/android/sdk/scs/base/tasks/Task;)V
    .locals 5
    .param p1    # Lcom/samsung/android/sdk/scs/base/tasks/Task;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/sdk/scs/base/tasks/Task<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/samsung/android/sdk/scs/base/tasks/Task;->isSuccessful()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/samsung/android/sdk/scs/base/tasks/Task;->getResult()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-nez p1, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/translate/LangPackManager$3;->val$callback:Lcom/sec/android/app/sbrowser/artificial_intelligence/translate/LangPackManager$OnSupportAllLanguageInfo;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/translate/LangPackManager$OnSupportAllLanguageInfo;->onFailed()V

    return-void

    :cond_0
    :try_start_0
    new-instance v0, LG5/g4;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, LG5/g4;-><init>(I)V

    invoke-virtual {v0, p1}, LG5/g4;->i(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, LLd/c;

    const-string v0, "translateSupportLanguageInfo"

    invoke-virtual {p1, v0}, Ljava/util/AbstractMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, LLd/c;

    const-string v0, "default"

    invoke-virtual {p1, v0}, Ljava/util/AbstractMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LLd/c;

    const-string v3, "supportOndevice"

    invoke-virtual {v2, v3}, Ljava/util/AbstractMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "ondeviceLangCode"

    invoke-virtual {v2, v3}, Ljava/util/AbstractMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, "displayLangCode"

    invoke-virtual {v2, v4}, Ljava/util/AbstractMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_2

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/translate/LangPackManager$3;->val$callback:Lcom/sec/android/app/sbrowser/artificial_intelligence/translate/LangPackManager$OnSupportAllLanguageInfo;

    invoke-interface {p1, v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/translate/LangPackManager$OnSupportAllLanguageInfo;->onSuccess(Ljava/util/HashMap;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :goto_2
    const-string v0, "LangPackManager"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/translate/LangPackManager$3;->val$callback:Lcom/sec/android/app/sbrowser/artificial_intelligence/translate/LangPackManager$OnSupportAllLanguageInfo;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/translate/LangPackManager$OnSupportAllLanguageInfo;->onFailed()V

    goto :goto_3

    :cond_3
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/translate/LangPackManager$3;->val$callback:Lcom/sec/android/app/sbrowser/artificial_intelligence/translate/LangPackManager$OnSupportAllLanguageInfo;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/translate/LangPackManager$OnSupportAllLanguageInfo;->onFailed()V

    :goto_3
    return-void
.end method
