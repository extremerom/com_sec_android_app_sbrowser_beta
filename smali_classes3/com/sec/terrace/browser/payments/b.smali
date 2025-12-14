.class public final synthetic Lcom/sec/terrace/browser/payments/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/sec/terrace/browser/payments/TerraceIsReadyToPayServiceHelper$ResultHandlerWrapper;

.field public final synthetic b:Z


# direct methods
.method public synthetic constructor <init>(Lcom/sec/terrace/browser/payments/TerraceIsReadyToPayServiceHelper$ResultHandlerWrapper;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/terrace/browser/payments/b;->a:Lcom/sec/terrace/browser/payments/TerraceIsReadyToPayServiceHelper$ResultHandlerWrapper;

    iput-boolean p2, p0, Lcom/sec/terrace/browser/payments/b;->b:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/sec/terrace/browser/payments/b;->a:Lcom/sec/terrace/browser/payments/TerraceIsReadyToPayServiceHelper$ResultHandlerWrapper;

    iget-boolean p0, p0, Lcom/sec/terrace/browser/payments/b;->b:Z

    invoke-static {v0, p0}, Lcom/sec/terrace/browser/payments/TerraceIsReadyToPayServiceHelper$ResultHandlerWrapper;->b(Lcom/sec/terrace/browser/payments/TerraceIsReadyToPayServiceHelper$ResultHandlerWrapper;Z)V

    return-void
.end method
