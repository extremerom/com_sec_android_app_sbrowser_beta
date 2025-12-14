.class public final Lcom/sec/android/app/sbrowser/media/assistant/MAManager$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/media/assistant/MAController$Delegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/media/assistant/MAManager;-><init>(Landroid/app/Activity;Lcom/sec/terrace/Terrace;Lcom/sec/android/app/sbrowser/media/assistant/MAManager$Delegate;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000#\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001R\u0014\u0010\u0002\u001a\u00020\u00038VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0004\u0010\u0005R\u0016\u0010\u0006\u001a\u0004\u0018\u00010\u00078VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0008\u0010\tR\u0014\u0010\n\u001a\u00020\u000b8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u000c\u0010\r\u00a8\u0006\u000e"
    }
    d2 = {
        "com/sec/android/app/sbrowser/media/assistant/MAManager$1",
        "Lcom/sec/android/app/sbrowser/media/assistant/MAController$Delegate;",
        "activity",
        "Landroid/app/Activity;",
        "getActivity",
        "()Landroid/app/Activity;",
        "mediaInfo",
        "Lcom/sec/android/app/sbrowser/media/common/MediaInfo;",
        "getMediaInfo",
        "()Lcom/sec/android/app/sbrowser/media/common/MediaInfo;",
        "terrace",
        "Lcom/sec/terrace/Terrace;",
        "getTerrace",
        "()Lcom/sec/terrace/Terrace;",
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
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/media/assistant/MAManager;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/media/assistant/MAManager;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/media/assistant/MAManager$1;->this$0:Lcom/sec/android/app/sbrowser/media/assistant/MAManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getActivity()Landroid/app/Activity;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/assistant/MAManager$1;->this$0:Lcom/sec/android/app/sbrowser/media/assistant/MAManager;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/media/assistant/MAManager;->access$getMActivity$p(Lcom/sec/android/app/sbrowser/media/assistant/MAManager;)Landroid/app/Activity;

    move-result-object p0

    return-object p0
.end method

.method public getMediaInfo()Lcom/sec/android/app/sbrowser/media/common/MediaInfo;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/assistant/MAManager$1;->this$0:Lcom/sec/android/app/sbrowser/media/assistant/MAManager;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/media/assistant/MAManager;->access$getMMediaInfo$p(Lcom/sec/android/app/sbrowser/media/assistant/MAManager;)Lcom/sec/android/app/sbrowser/media/common/MediaInfo;

    move-result-object p0

    return-object p0
.end method

.method public getTerrace()Lcom/sec/terrace/Terrace;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/assistant/MAManager$1;->this$0:Lcom/sec/android/app/sbrowser/media/assistant/MAManager;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/media/assistant/MAManager;->access$getMTerrace$p(Lcom/sec/android/app/sbrowser/media/assistant/MAManager;)Lcom/sec/terrace/Terrace;

    move-result-object p0

    return-object p0
.end method
