.class public final Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView$setChildItemsListener$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/media/assistant/view/item/IMediaAssistantItem$LongClickListener;


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
        "com/sec/android/app/sbrowser/media/assistant/view/MAButtonView$setChildItemsListener$2",
        "Lcom/sec/android/app/sbrowser/media/assistant/view/item/IMediaAssistantItem$LongClickListener;",
        "Lcom/sec/android/app/sbrowser/media/assistant/view/item/IMediaAssistantItem;",
        "item",
        "Ldb/r;",
        "onLongClick",
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

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView$setChildItemsListener$2;->this$0:Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Lcom/sec/android/app/sbrowser/media/assistant/view/item/IMediaAssistantItem;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView$setChildItemsListener$2;->this$0:Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView;->access$startDrag(Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView;)V

    return-void
.end method
