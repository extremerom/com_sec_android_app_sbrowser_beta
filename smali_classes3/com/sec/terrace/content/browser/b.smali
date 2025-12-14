.class public final synthetic Lcom/sec/terrace/content/browser/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/base/Callback;


# instance fields
.field public final synthetic a:Lcom/sec/terrace/content/browser/TinContentViewCore;


# direct methods
.method public synthetic constructor <init>(Lcom/sec/terrace/content/browser/TinContentViewCore;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/terrace/content/browser/b;->a:Lcom/sec/terrace/content/browser/TinContentViewCore;

    return-void
.end method


# virtual methods
.method public final onResult(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/content/browser/b;->a:Lcom/sec/terrace/content/browser/TinContentViewCore;

    check-cast p1, Lorg/chromium/ui/base/ViewportInsets;

    invoke-static {p0, p1}, Lcom/sec/terrace/content/browser/TinContentViewCore;->b(Lcom/sec/terrace/content/browser/TinContentViewCore;Lorg/chromium/ui/base/ViewportInsets;)V

    return-void
.end method
