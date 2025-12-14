.class public interface abstract Lcom/sec/android/app/sbrowser/download/move/MoveUseCase$Listener;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/download/move/MoveUseCase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Listener"
.end annotation


# virtual methods
.method public abstract onFileMoved(Ljava/lang/String;Z)V
.end method

.method public abstract onMoveOperationFinished()V
.end method

.method public abstract onMoveOperationStart(I)V
.end method
