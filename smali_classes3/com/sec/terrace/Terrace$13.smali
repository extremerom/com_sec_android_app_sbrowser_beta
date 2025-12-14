.class Lcom/sec/terrace/Terrace$13;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/content_public/browser/JavaScriptCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/terrace/Terrace;->evaluateJavaScriptForTests(Ljava/lang/String;Lcom/sec/terrace/TerraceJavaScriptCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field private final mCallback:Lcom/sec/terrace/TerraceJavaScriptCallback;

.field final synthetic this$0:Lcom/sec/terrace/Terrace;

.field final synthetic val$callback:Lcom/sec/terrace/TerraceJavaScriptCallback;


# direct methods
.method public constructor <init>(Lcom/sec/terrace/Terrace;Lcom/sec/terrace/TerraceJavaScriptCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sec/terrace/Terrace$13;->this$0:Lcom/sec/terrace/Terrace;

    iput-object p2, p0, Lcom/sec/terrace/Terrace$13;->val$callback:Lcom/sec/terrace/TerraceJavaScriptCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/sec/terrace/Terrace$13;->mCallback:Lcom/sec/terrace/TerraceJavaScriptCallback;

    return-void
.end method


# virtual methods
.method public handleJavaScriptResult(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/Terrace$13;->mCallback:Lcom/sec/terrace/TerraceJavaScriptCallback;

    invoke-interface {p0, p1}, Lcom/sec/terrace/TerraceJavaScriptCallback;->handleJavaScriptResult(Ljava/lang/String;)V

    return-void
.end method
