.class Lcom/sec/android/app/sbrowser/tab_saver/TabSaver$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/tab_saver/util/TabStateReader$OnTabStateReadCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/tab_saver/TabSaver;->loadStateInternal(Ljava/lang/String;Z)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/tab_saver/TabSaver;

.field final synthetic val$restoreList:Ljava/util/Deque;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/tab_saver/TabSaver;Ljava/util/Deque;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/tab_saver/TabSaver$1;->this$0:Lcom/sec/android/app/sbrowser/tab_saver/TabSaver;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/tab_saver/TabSaver$1;->val$restoreList:Ljava/util/Deque;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDetailsRead(Lcom/sec/android/app/sbrowser/tab_saver/model/TabState;Z)V
    .locals 0

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/tab_saver/TabSaver$1;->val$restoreList:Ljava/util/Deque;

    invoke-interface {p2, p1}, Ljava/util/Deque;->addFirst(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/sec/android/app/sbrowser/tab_saver/TabSaver$1;->val$restoreList:Ljava/util/Deque;

    invoke-interface {p2, p1}, Ljava/util/Deque;->addLast(Ljava/lang/Object;)V

    :goto_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_saver/TabSaver$1;->this$0:Lcom/sec/android/app/sbrowser/tab_saver/TabSaver;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/tab_saver/TabSaver;->processTabDataFromRead(Lcom/sec/android/app/sbrowser/tab_saver/model/TabState;)V

    return-void
.end method
