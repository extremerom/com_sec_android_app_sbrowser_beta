.class Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager;->unregisterDataObserver(Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$TerracePersonalDataManagerObserver;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager;

.field final synthetic val$observer:Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$TerracePersonalDataManagerObserver;


# direct methods
.method public constructor <init>(Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager;Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$TerracePersonalDataManagerObserver;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$1;->this$0:Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager;

    iput-object p2, p0, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$1;->val$observer:Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$TerracePersonalDataManagerObserver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$1;->this$0:Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager;

    invoke-static {v0}, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager;->a(Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/sec/terrace/base/AssertUtil;->assertTrue(Z)V

    iget-object v0, p0, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$1;->this$0:Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager;

    invoke-static {v0}, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager;->a(Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$1;->val$observer:Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$TerracePersonalDataManagerObserver;

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Lcom/sec/terrace/base/AssertUtil;->assertTrue(Z)V

    iget-object v0, p0, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$1;->this$0:Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager;

    invoke-static {v0}, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager;->a(Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager;)Ljava/util/List;

    move-result-object v0

    iget-object p0, p0, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$1;->val$observer:Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$TerracePersonalDataManagerObserver;

    invoke-interface {v0, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method
