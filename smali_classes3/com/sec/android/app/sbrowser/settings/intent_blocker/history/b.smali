.class public final synthetic Lcom/sec/android/app/sbrowser/settings/intent_blocker/history/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/settings/intent_blocker/history/IntentBlockerHistoryModel$Listener;


# instance fields
.field public final synthetic a:Lcom/sec/android/app/sbrowser/settings/intent_blocker/history/IntentBlockerHistoryFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/sec/android/app/sbrowser/settings/intent_blocker/history/IntentBlockerHistoryFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/intent_blocker/history/b;->a:Lcom/sec/android/app/sbrowser/settings/intent_blocker/history/IntentBlockerHistoryFragment;

    return-void
.end method


# virtual methods
.method public final onListDataLoaded(Ljava/util/concurrent/CopyOnWriteArrayList;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/intent_blocker/history/b;->a:Lcom/sec/android/app/sbrowser/settings/intent_blocker/history/IntentBlockerHistoryFragment;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/settings/intent_blocker/history/IntentBlockerHistoryFragment;->setListData(Ljava/util/concurrent/CopyOnWriteArrayList;)V

    return-void
.end method
