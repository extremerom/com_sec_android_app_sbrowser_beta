.class interface abstract Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabStackViewTouchHandler$TouchHandleListener;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabStackViewTouchHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "TouchHandleListener"
.end annotation


# virtual methods
.method public abstract closeUnlockedMember(I)V
.end method

.method public abstract dismissChild(IF)V
.end method

.method public abstract getIndex(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/Tab;)I
.end method

.method public abstract hasLockedTab(Ljava/lang/String;)Z
.end method

.method public abstract onBeforeChildDismissed()V
.end method

.method public abstract onChildDismissed(Landroid/view/View;)V
.end method

.method public abstract sendSALoggingForTabSwipe()V
.end method

.method public abstract setCloseDialog(Lm/l;)V
.end method

.method public abstract snapChild(I)V
.end method
