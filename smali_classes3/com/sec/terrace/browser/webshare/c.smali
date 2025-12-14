.class public final synthetic Lcom/sec/terrace/browser/webshare/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/sec/terrace/browser/webshare/TinSharedFileCollator$Listener;

.field public final synthetic b:Ljava/lang/Integer;


# direct methods
.method public synthetic constructor <init>(Lcom/sec/terrace/browser/webshare/TinSharedFileCollator$Listener;Ljava/lang/Integer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/terrace/browser/webshare/c;->a:Lcom/sec/terrace/browser/webshare/TinSharedFileCollator$Listener;

    iput-object p2, p0, Lcom/sec/terrace/browser/webshare/c;->b:Ljava/lang/Integer;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/sec/terrace/browser/webshare/c;->a:Lcom/sec/terrace/browser/webshare/TinSharedFileCollator$Listener;

    iget-object p0, p0, Lcom/sec/terrace/browser/webshare/c;->b:Ljava/lang/Integer;

    invoke-static {v0, p0}, Lcom/sec/terrace/browser/webshare/TinSharedFileCollator;->b(Lcom/sec/terrace/browser/webshare/TinSharedFileCollator$Listener;Ljava/lang/Integer;)V

    return-void
.end method
