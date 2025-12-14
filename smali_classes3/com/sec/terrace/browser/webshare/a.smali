.class public final synthetic Lcom/sec/terrace/browser/webshare/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/mojo/system/Watcher$Callback;


# instance fields
.field public final synthetic a:Lcom/sec/terrace/browser/webshare/TinBlobReceiver;


# direct methods
.method public synthetic constructor <init>(Lcom/sec/terrace/browser/webshare/TinBlobReceiver;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/terrace/browser/webshare/a;->a:Lcom/sec/terrace/browser/webshare/TinBlobReceiver;

    return-void
.end method


# virtual methods
.method public final onResult(I)V
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/browser/webshare/a;->a:Lcom/sec/terrace/browser/webshare/TinBlobReceiver;

    invoke-static {p0, p1}, Lcom/sec/terrace/browser/webshare/TinBlobReceiver;->a(Lcom/sec/terrace/browser/webshare/TinBlobReceiver;I)V

    return-void
.end method
