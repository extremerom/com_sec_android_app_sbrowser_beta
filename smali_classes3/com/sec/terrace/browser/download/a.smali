.class public final synthetic Lcom/sec/terrace/browser/download/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/base/Callback;


# instance fields
.field public final synthetic a:Lcom/sec/terrace/browser/download/TerraceDownloadController$1;

.field public final synthetic b:J


# direct methods
.method public synthetic constructor <init>(Lcom/sec/terrace/browser/download/TerraceDownloadController$1;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/terrace/browser/download/a;->a:Lcom/sec/terrace/browser/download/TerraceDownloadController$1;

    iput-wide p2, p0, Lcom/sec/terrace/browser/download/a;->b:J

    return-void
.end method


# virtual methods
.method public final onResult(Ljava/lang/Object;)V
    .locals 3

    check-cast p1, Ljava/lang/Boolean;

    iget-object v0, p0, Lcom/sec/terrace/browser/download/a;->a:Lcom/sec/terrace/browser/download/TerraceDownloadController$1;

    iget-wide v1, p0, Lcom/sec/terrace/browser/download/a;->b:J

    invoke-static {v0, v1, v2, p1}, Lcom/sec/terrace/browser/download/TerraceDownloadController$1;->a(Lcom/sec/terrace/browser/download/TerraceDownloadController$1;JLjava/lang/Boolean;)V

    return-void
.end method
