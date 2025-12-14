.class public final Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView$setChildItemsListener$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/media/assistant/view/item/IMediaAssistantItem$ClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView;->setChildItemsListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0019\u0010\u0005\u001a\u00020\u00042\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0016\u00a2\u0006\u0004\u0008\u0005\u0010\u0006\u00a8\u0006\u0007"
    }
    d2 = {
        "com/sec/android/app/sbrowser/media/assistant/view/MAButtonView$setChildItemsListener$1",
        "Lcom/sec/android/app/sbrowser/media/assistant/view/item/IMediaAssistantItem$ClickListener;",
        "Lcom/sec/android/app/sbrowser/media/assistant/view/item/IMediaAssistantItem;",
        "item",
        "Ldb/r;",
        "onClick",
        "(Lcom/sec/android/app/sbrowser/media/assistant/view/item/IMediaAssistantItem;)V",
        "SBrowser_highendBetaGlobal64Release"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView$setChildItemsListener$1;->this$0:Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Lcom/sec/android/app/sbrowser/media/assistant/view/item/IMediaAssistantItem;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView$setChildItemsListener$1;->this$0:Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x2

    iput v1, v0, Landroid/os/Message;->what:I

    if-eqz p1, :cond_1

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/media/assistant/view/item/IMediaAssistantItem;->id()I

    move-result p1

    iput p1, v0, Landroid/os/Message;->arg1:I

    :cond_1
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView$setChildItemsListener$1;->this$0:Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView;->access$getMHandler$p(Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView;)Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
