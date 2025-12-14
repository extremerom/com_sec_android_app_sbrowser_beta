.class Lcom/sec/terrace/browser/extensions/TerraceExtensionUtil$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/terrace/browser/extensions/TerraceExtensionUtil;->unregisterObserver(Lcom/sec/terrace/browser/extensions/TerraceExtensionUtil$TerraceExtensionUtilObserver;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/terrace/browser/extensions/TerraceExtensionUtil;

.field final synthetic val$observer:Lcom/sec/terrace/browser/extensions/TerraceExtensionUtil$TerraceExtensionUtilObserver;


# direct methods
.method public constructor <init>(Lcom/sec/terrace/browser/extensions/TerraceExtensionUtil;Lcom/sec/terrace/browser/extensions/TerraceExtensionUtil$TerraceExtensionUtilObserver;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sec/terrace/browser/extensions/TerraceExtensionUtil$1;->this$0:Lcom/sec/terrace/browser/extensions/TerraceExtensionUtil;

    iput-object p2, p0, Lcom/sec/terrace/browser/extensions/TerraceExtensionUtil$1;->val$observer:Lcom/sec/terrace/browser/extensions/TerraceExtensionUtil$TerraceExtensionUtilObserver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/sec/terrace/browser/extensions/TerraceExtensionUtil$1;->this$0:Lcom/sec/terrace/browser/extensions/TerraceExtensionUtil;

    invoke-static {v0}, Lcom/sec/terrace/browser/extensions/TerraceExtensionUtil;->a(Lcom/sec/terrace/browser/extensions/TerraceExtensionUtil;)Lorg/chromium/base/ObserverList;

    move-result-object v0

    iget-object p0, p0, Lcom/sec/terrace/browser/extensions/TerraceExtensionUtil$1;->val$observer:Lcom/sec/terrace/browser/extensions/TerraceExtensionUtil$TerraceExtensionUtilObserver;

    invoke-virtual {v0, p0}, Lorg/chromium/base/ObserverList;->removeObserver(Ljava/lang/Object;)Z

    return-void
.end method
