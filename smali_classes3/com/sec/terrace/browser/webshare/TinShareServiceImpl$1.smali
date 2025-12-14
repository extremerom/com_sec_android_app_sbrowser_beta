.class Lcom/sec/terrace/browser/webshare/TinShareServiceImpl$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/terrace/browser/webshare/TerraceShareTargetChosenCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/terrace/browser/webshare/TinShareServiceImpl;->share(Ljava/lang/String;Ljava/lang/String;Lorg/chromium/url/mojom/Url;[Lorg/chromium/webshare/mojom/SharedFile;Lorg/chromium/webshare/mojom/ShareService$Share_Response;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/terrace/browser/webshare/TinShareServiceImpl;

.field final synthetic val$callback:Lorg/chromium/webshare/mojom/ShareService$Share_Response;


# direct methods
.method public constructor <init>(Lcom/sec/terrace/browser/webshare/TinShareServiceImpl;Lorg/chromium/webshare/mojom/ShareService$Share_Response;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sec/terrace/browser/webshare/TinShareServiceImpl$1;->this$0:Lcom/sec/terrace/browser/webshare/TinShareServiceImpl;

    iput-object p2, p0, Lcom/sec/terrace/browser/webshare/TinShareServiceImpl$1;->val$callback:Lorg/chromium/webshare/mojom/ShareService$Share_Response;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 1

    iget-object p0, p0, Lcom/sec/terrace/browser/webshare/TinShareServiceImpl$1;->val$callback:Lorg/chromium/webshare/mojom/ShareService$Share_Response;

    const/4 v0, 0x3

    invoke-interface {p0, v0}, Lorg/chromium/webshare/mojom/ShareService$Share_Response;->call(I)V

    return-void
.end method

.method public onTargetChosen()V
    .locals 1

    iget-object p0, p0, Lcom/sec/terrace/browser/webshare/TinShareServiceImpl$1;->val$callback:Lorg/chromium/webshare/mojom/ShareService$Share_Response;

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Lorg/chromium/webshare/mojom/ShareService$Share_Response;->call(I)V

    return-void
.end method
