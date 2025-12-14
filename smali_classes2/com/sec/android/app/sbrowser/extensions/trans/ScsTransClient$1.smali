.class Lcom/sec/android/app/sbrowser/extensions/trans/ScsTransClient$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/sdk/scs/base/tasks/OnCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/extensions/trans/ScsTransClient;->translate(Landroid/content/Context;Lcom/samsung/android/sdk/scs/ai/language/AppInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/samsung/android/sdk/scs/base/tasks/OnCompleteListener<",
        "Ljava/util/List<",
        "Lcom/samsung/android/sdk/scs/ai/language/Result;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/extensions/trans/ScsTransClient;

.field final synthetic val$nativeCallback:J


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/extensions/trans/ScsTransClient;J)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/extensions/trans/ScsTransClient$1;->this$0:Lcom/sec/android/app/sbrowser/extensions/trans/ScsTransClient;

    iput-wide p2, p0, Lcom/sec/android/app/sbrowser/extensions/trans/ScsTransClient$1;->val$nativeCallback:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Lcom/samsung/android/sdk/scs/base/tasks/Task;)V
    .locals 3
    .param p1    # Lcom/samsung/android/sdk/scs/base/tasks/Task;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/sdk/scs/base/tasks/Task<",
            "Ljava/util/List<",
            "Lcom/samsung/android/sdk/scs/ai/language/Result;",
            ">;>;)V"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/samsung/android/sdk/scs/base/tasks/Task;->isSuccessful()Z

    move-result v0

    const-string v1, "Fail-Translate"

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/samsung/android/sdk/scs/base/tasks/Task;->getResult()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x1

    if-ge v0, v2, :cond_0

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    invoke-static {}, Lcom/sec/android/app/sbrowser/extensions/trans/SixTransService;->getInstance()Lcom/sec/android/app/sbrowser/extensions/trans/SixTransService;

    move-result-object v0

    iget-wide v1, p0, Lcom/sec/android/app/sbrowser/extensions/trans/ScsTransClient$1;->val$nativeCallback:J

    invoke-virtual {v0, v1, v2, p1}, Lcom/sec/android/app/sbrowser/extensions/trans/SixTransService;->translateResult(J[Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/sdk/scs/ai/language/Result;

    invoke-virtual {p1}, Lcom/samsung/android/sdk/scs/ai/language/Result;->getContent()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_1

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    invoke-static {}, Lcom/sec/android/app/sbrowser/extensions/trans/SixTransService;->getInstance()Lcom/sec/android/app/sbrowser/extensions/trans/SixTransService;

    move-result-object v0

    iget-wide v1, p0, Lcom/sec/android/app/sbrowser/extensions/trans/ScsTransClient$1;->val$nativeCallback:J

    invoke-virtual {v0, v1, v2, p1}, Lcom/sec/android/app/sbrowser/extensions/trans/SixTransService;->translateResult(J[Ljava/lang/String;)V

    return-void

    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "Success"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    new-array p1, p1, [Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    invoke-static {}, Lcom/sec/android/app/sbrowser/extensions/trans/SixTransService;->getInstance()Lcom/sec/android/app/sbrowser/extensions/trans/SixTransService;

    move-result-object v0

    iget-wide v1, p0, Lcom/sec/android/app/sbrowser/extensions/trans/ScsTransClient$1;->val$nativeCallback:J

    invoke-virtual {v0, v1, v2, p1}, Lcom/sec/android/app/sbrowser/extensions/trans/SixTransService;->translateResult(J[Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    invoke-static {}, Lcom/sec/android/app/sbrowser/extensions/trans/SixTransService;->getInstance()Lcom/sec/android/app/sbrowser/extensions/trans/SixTransService;

    move-result-object v0

    iget-wide v1, p0, Lcom/sec/android/app/sbrowser/extensions/trans/ScsTransClient$1;->val$nativeCallback:J

    invoke-virtual {v0, v1, v2, p1}, Lcom/sec/android/app/sbrowser/extensions/trans/SixTransService;->translateResult(J[Ljava/lang/String;)V

    :goto_0
    return-void
.end method
