.class public interface abstract Lcom/sec/android/app/sbrowser/media/assistant/view/item/IMediaAssistantItem;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/media/assistant/view/item/IMediaAssistantItem$ClickListener;,
        Lcom/sec/android/app/sbrowser/media/assistant/view/item/IMediaAssistantItem$LongClickListener;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\n\u0008f\u0018\u00002\u00020\u0001:\u0002\u0019\u001aJ\u000f\u0010\u0003\u001a\u00020\u0002H&\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u0017\u0010\u0008\u001a\u00020\u00072\u0006\u0010\u0006\u001a\u00020\u0005H&\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\u0017\u0010\n\u001a\u00020\u00072\u0006\u0010\u0006\u001a\u00020\u0005H&\u00a2\u0006\u0004\u0008\n\u0010\tJ\u000f\u0010\u000b\u001a\u00020\u0007H&\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\u0019\u0010\u000f\u001a\u00020\u00072\u0008\u0010\u000e\u001a\u0004\u0018\u00010\rH&\u00a2\u0006\u0004\u0008\u000f\u0010\u0010J\u0019\u0010\u0012\u001a\u00020\u00072\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u0011H&\u00a2\u0006\u0004\u0008\u0012\u0010\u0013R\u001c\u0010\u0014\u001a\u00020\u00058&@&X\u00a6\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u0014\u0010\u0015\"\u0004\u0008\u0016\u0010\tR\u001c\u0010\u0017\u001a\u00020\u00058&@&X\u00a6\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u0017\u0010\u0015\"\u0004\u0008\u0018\u0010\t\u00a8\u0006\u001b"
    }
    d2 = {
        "Lcom/sec/android/app/sbrowser/media/assistant/view/item/IMediaAssistantItem;",
        "",
        "",
        "id",
        "()I",
        "",
        "animation",
        "Ldb/r;",
        "show",
        "(Z)V",
        "hide",
        "updateImageButtonVisibility",
        "()V",
        "Lcom/sec/android/app/sbrowser/media/assistant/view/item/IMediaAssistantItem$ClickListener;",
        "listener",
        "setOnClickListener",
        "(Lcom/sec/android/app/sbrowser/media/assistant/view/item/IMediaAssistantItem$ClickListener;)V",
        "Lcom/sec/android/app/sbrowser/media/assistant/view/item/IMediaAssistantItem$LongClickListener;",
        "setOnLongClickListener",
        "(Lcom/sec/android/app/sbrowser/media/assistant/view/item/IMediaAssistantItem$LongClickListener;)V",
        "isEnabled",
        "()Z",
        "setEnabled",
        "isDimmed",
        "setDimmed",
        "ClickListener",
        "LongClickListener",
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


# virtual methods
.method public abstract hide(Z)V
.end method

.method public abstract id()I
.end method

.method public abstract isDimmed()Z
.end method

.method public abstract isEnabled()Z
.end method

.method public abstract setDimmed(Z)V
.end method

.method public abstract setEnabled(Z)V
.end method

.method public abstract setOnClickListener(Lcom/sec/android/app/sbrowser/media/assistant/view/item/IMediaAssistantItem$ClickListener;)V
    .param p1    # Lcom/sec/android/app/sbrowser/media/assistant/view/item/IMediaAssistantItem$ClickListener;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
.end method

.method public abstract setOnLongClickListener(Lcom/sec/android/app/sbrowser/media/assistant/view/item/IMediaAssistantItem$LongClickListener;)V
    .param p1    # Lcom/sec/android/app/sbrowser/media/assistant/view/item/IMediaAssistantItem$LongClickListener;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
.end method

.method public abstract show(Z)V
.end method

.method public abstract updateImageButtonVisibility()V
.end method
