.class public final synthetic Lcom/sec/terrace/browser/webshare/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/terrace/browser/webshare/TinSharedFileCollator$Listener;


# instance fields
.field public final synthetic a:Lorg/chromium/webshare/mojom/ShareService$Share_Response;

.field public final synthetic b:Lcom/sec/terrace/TerraceListenerCallback;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Ljava/lang/String;

.field public final synthetic e:[Lorg/chromium/webshare/mojom/SharedFile;

.field public final synthetic f:Ljava/util/ArrayList;

.field public final synthetic g:Lcom/sec/terrace/browser/webshare/TerraceShareTargetChosenCallback;


# direct methods
.method public synthetic constructor <init>(Lorg/chromium/webshare/mojom/ShareService$Share_Response;Lcom/sec/terrace/TerraceListenerCallback;Ljava/lang/String;Ljava/lang/String;[Lorg/chromium/webshare/mojom/SharedFile;Ljava/util/ArrayList;Lcom/sec/terrace/browser/webshare/TerraceShareTargetChosenCallback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/terrace/browser/webshare/b;->a:Lorg/chromium/webshare/mojom/ShareService$Share_Response;

    iput-object p2, p0, Lcom/sec/terrace/browser/webshare/b;->b:Lcom/sec/terrace/TerraceListenerCallback;

    iput-object p3, p0, Lcom/sec/terrace/browser/webshare/b;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/sec/terrace/browser/webshare/b;->d:Ljava/lang/String;

    iput-object p5, p0, Lcom/sec/terrace/browser/webshare/b;->e:[Lorg/chromium/webshare/mojom/SharedFile;

    iput-object p6, p0, Lcom/sec/terrace/browser/webshare/b;->f:Ljava/util/ArrayList;

    iput-object p7, p0, Lcom/sec/terrace/browser/webshare/b;->g:Lcom/sec/terrace/browser/webshare/TerraceShareTargetChosenCallback;

    return-void
.end method


# virtual methods
.method public final didFinishCollate(Z)V
    .locals 8

    iget-object v5, p0, Lcom/sec/terrace/browser/webshare/b;->f:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/sec/terrace/browser/webshare/b;->d:Ljava/lang/String;

    iget-object v4, p0, Lcom/sec/terrace/browser/webshare/b;->e:[Lorg/chromium/webshare/mojom/SharedFile;

    iget-object v0, p0, Lcom/sec/terrace/browser/webshare/b;->a:Lorg/chromium/webshare/mojom/ShareService$Share_Response;

    iget-object v1, p0, Lcom/sec/terrace/browser/webshare/b;->b:Lcom/sec/terrace/TerraceListenerCallback;

    iget-object v2, p0, Lcom/sec/terrace/browser/webshare/b;->c:Ljava/lang/String;

    iget-object v6, p0, Lcom/sec/terrace/browser/webshare/b;->g:Lcom/sec/terrace/browser/webshare/TerraceShareTargetChosenCallback;

    move v7, p1

    invoke-static/range {v0 .. v7}, Lcom/sec/terrace/browser/webshare/TinShareServiceImpl$2;->f(Lorg/chromium/webshare/mojom/ShareService$Share_Response;Lcom/sec/terrace/TerraceListenerCallback;Ljava/lang/String;Ljava/lang/String;[Lorg/chromium/webshare/mojom/SharedFile;Ljava/util/ArrayList;Lcom/sec/terrace/browser/webshare/TerraceShareTargetChosenCallback;Z)V

    return-void
.end method
