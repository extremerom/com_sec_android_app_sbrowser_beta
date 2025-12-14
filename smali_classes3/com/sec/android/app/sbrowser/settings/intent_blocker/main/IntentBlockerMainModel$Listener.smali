.class interface abstract Lcom/sec/android/app/sbrowser/settings/intent_blocker/main/IntentBlockerMainModel$Listener;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/settings/intent_blocker/main/IntentBlockerMainModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Listener"
.end annotation


# virtual methods
.method public abstract onListDataLoaded(Ljava/util/concurrent/CopyOnWriteArrayList;)V
    .param p1    # Ljava/util/concurrent/CopyOnWriteArrayList;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/sec/android/app/sbrowser/intent_blocker/data/IntentBlockerAppDTO;",
            ">;)V"
        }
    .end annotation
.end method
