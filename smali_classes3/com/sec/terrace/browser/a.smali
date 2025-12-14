.class public final synthetic Lcom/sec/terrace/browser/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/terrace/browser/TinSwipeRefreshLayout$OnRefreshListener;
.implements Lcom/sec/terrace/browser/TinSwipeRefreshLayout$OnResetListener;


# instance fields
.field public final synthetic a:Lcom/sec/terrace/browser/TinSwipeRefreshHandler;


# direct methods
.method public synthetic constructor <init>(Lcom/sec/terrace/browser/TinSwipeRefreshHandler;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/terrace/browser/a;->a:Lcom/sec/terrace/browser/TinSwipeRefreshHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRefresh()V
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/browser/a;->a:Lcom/sec/terrace/browser/TinSwipeRefreshHandler;

    invoke-static {p0}, Lcom/sec/terrace/browser/TinSwipeRefreshHandler;->b(Lcom/sec/terrace/browser/TinSwipeRefreshHandler;)V

    return-void
.end method

.method public onReset()V
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/browser/a;->a:Lcom/sec/terrace/browser/TinSwipeRefreshHandler;

    invoke-static {p0}, Lcom/sec/terrace/browser/TinSwipeRefreshHandler;->a(Lcom/sec/terrace/browser/TinSwipeRefreshHandler;)V

    return-void
.end method
