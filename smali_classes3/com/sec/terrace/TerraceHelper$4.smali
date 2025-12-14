.class Lcom/sec/terrace/TerraceHelper$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/terrace/TerraceHelper;->postStartupCompleted(Lcom/sec/terrace/TerraceHelper$TerraceHelperStartupCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/terrace/TerraceHelper;

.field final synthetic val$callback:Lcom/sec/terrace/TerraceHelper$TerraceHelperStartupCallback;


# direct methods
.method public constructor <init>(Lcom/sec/terrace/TerraceHelper;Lcom/sec/terrace/TerraceHelper$TerraceHelperStartupCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sec/terrace/TerraceHelper$4;->this$0:Lcom/sec/terrace/TerraceHelper;

    iput-object p2, p0, Lcom/sec/terrace/TerraceHelper$4;->val$callback:Lcom/sec/terrace/TerraceHelper$TerraceHelperStartupCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/TerraceHelper$4;->val$callback:Lcom/sec/terrace/TerraceHelper$TerraceHelperStartupCallback;

    invoke-interface {p0}, Lcom/sec/terrace/TerraceHelper$TerraceHelperStartupCallback;->onSuccess()V

    return-void
.end method
