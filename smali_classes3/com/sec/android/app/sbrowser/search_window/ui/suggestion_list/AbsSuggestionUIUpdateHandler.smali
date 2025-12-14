.class public abstract Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/AbsSuggestionUIUpdateHandler;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/AbsSuggestionUIUpdateHandler$SuggestionItems;
    }
.end annotation


# instance fields
.field protected final mItemReceiver:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/SuggestionListController;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/SuggestionListController;)V
    .locals 1

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/AbsSuggestionUIUpdateHandler;->mItemReceiver:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public abstract clear()V
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/AbsSuggestionUIUpdateHandler;->mItemReceiver:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/SuggestionListController;

    if-eqz v0, :cond_2

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/AbsSuggestionUIUpdateHandler;->isInvalidMessage(Landroid/os/Message;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/AbsSuggestionUIUpdateHandler;->clear()V

    invoke-virtual {p0, v0, p1}, Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/AbsSuggestionUIUpdateHandler;->update(Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/SuggestionListController;Landroid/os/Message;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public abstract isInvalidMessage(Landroid/os/Message;)Z
.end method

.method public abstract update(Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/SuggestionListController;Landroid/os/Message;)V
.end method
