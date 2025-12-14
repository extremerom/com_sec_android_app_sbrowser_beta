.class public final synthetic Lcom/sec/terrace/browser/browserservices/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/sec/terrace/browser/browserservices/TinTrustedWebActivityClient$ExecutionCallback;

.field public final synthetic b:Lcom/sec/terrace/browser/customtabs/TerraceOrigin;

.field public final synthetic c:Lcom/google/common/util/concurrent/y;


# direct methods
.method public synthetic constructor <init>(Lcom/sec/terrace/browser/browserservices/TinTrustedWebActivityClient$ExecutionCallback;Lcom/sec/terrace/browser/customtabs/TerraceOrigin;Lcom/google/common/util/concurrent/y;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/terrace/browser/browserservices/b;->a:Lcom/sec/terrace/browser/browserservices/TinTrustedWebActivityClient$ExecutionCallback;

    iput-object p2, p0, Lcom/sec/terrace/browser/browserservices/b;->b:Lcom/sec/terrace/browser/customtabs/TerraceOrigin;

    iput-object p3, p0, Lcom/sec/terrace/browser/browserservices/b;->c:Lcom/google/common/util/concurrent/y;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/sec/terrace/browser/browserservices/b;->c:Lcom/google/common/util/concurrent/y;

    iget-object v1, p0, Lcom/sec/terrace/browser/browserservices/b;->a:Lcom/sec/terrace/browser/browserservices/TinTrustedWebActivityClient$ExecutionCallback;

    iget-object p0, p0, Lcom/sec/terrace/browser/browserservices/b;->b:Lcom/sec/terrace/browser/customtabs/TerraceOrigin;

    invoke-static {v1, p0, v0}, Lcom/sec/terrace/browser/browserservices/TinTrustedWebActivityClientWrappers$1;->a(Lcom/sec/terrace/browser/browserservices/TinTrustedWebActivityClient$ExecutionCallback;Lcom/sec/terrace/browser/customtabs/TerraceOrigin;Lcom/google/common/util/concurrent/y;)V

    return-void
.end method
