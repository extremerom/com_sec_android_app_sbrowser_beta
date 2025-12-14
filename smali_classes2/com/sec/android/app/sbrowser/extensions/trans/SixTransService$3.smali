.class Lcom/sec/android/app/sbrowser/extensions/trans/SixTransService$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/artificial_intelligence/translate/LangPackManager$OnSupportAllLanguageList;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/extensions/trans/SixTransService;->getLangList(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/extensions/trans/SixTransService;

.field final synthetic val$nativeCallback:J


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/extensions/trans/SixTransService;J)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/extensions/trans/SixTransService$3;->this$0:Lcom/sec/android/app/sbrowser/extensions/trans/SixTransService;

    iput-wide p2, p0, Lcom/sec/android/app/sbrowser/extensions/trans/SixTransService$3;->val$nativeCallback:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed()V
    .locals 4

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "Fail-GetLangList"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/extensions/trans/SixTransService$3;->this$0:Lcom/sec/android/app/sbrowser/extensions/trans/SixTransService;

    iget-wide v2, p0, Lcom/sec/android/app/sbrowser/extensions/trans/SixTransService$3;->val$nativeCallback:J

    invoke-virtual {v1, v2, v3, v0}, Lcom/sec/android/app/sbrowser/extensions/trans/SixTransService;->getLangListResult(J[Ljava/lang/String;)V

    return-void
.end method

.method public onSuccess(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/extensions/trans/SixTransService$3;->this$0:Lcom/sec/android/app/sbrowser/extensions/trans/SixTransService;

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/extensions/trans/SixTransService;->y(Lcom/sec/android/app/sbrowser/extensions/trans/SixTransService;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "Success"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    new-array p1, p1, [Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extensions/trans/SixTransService$3;->this$0:Lcom/sec/android/app/sbrowser/extensions/trans/SixTransService;

    iget-wide v1, p0, Lcom/sec/android/app/sbrowser/extensions/trans/SixTransService$3;->val$nativeCallback:J

    invoke-virtual {v0, v1, v2, p1}, Lcom/sec/android/app/sbrowser/extensions/trans/SixTransService;->getLangListResult(J[Ljava/lang/String;)V

    return-void
.end method
