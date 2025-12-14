.class Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi$2;->this$0:Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi$2;->this$0:Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;->s(Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi$2;->this$0:Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;->D(Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;)Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchData;

    move-result-object v0

    const-string v1, "NotificationSearchBaseUi"

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi$2;->this$0:Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;->D(Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;)Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchData;->getSearchResultList()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    goto/16 :goto_3

    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ltz v0, :cond_b

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi$2;->this$0:Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;

    invoke-static {v2}, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;->D(Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;)Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchData;->getSearchResultList()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v2

    if-lt v0, v2, :cond_2

    goto/16 :goto_2

    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi$2;->this$0:Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;->D(Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;)Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchData;->getSearchResultList()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchItem;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi$2;->this$0:Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;

    invoke-static {v2}, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;->u(Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_6

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchItem;->isChecked()Z

    move-result v2

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi$2;->this$0:Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;

    invoke-static {v4}, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;->t(Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;)Z

    move-result v4

    const/4 v5, -0x1

    if-eqz v4, :cond_4

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi$2;->this$0:Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;->z(Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;)I

    move-result p1

    if-ne p1, v5, :cond_3

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi$2;->this$0:Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;->J(Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;)I

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi$2;->this$0:Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;

    invoke-static {p1, v3}, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;->L(Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;I)V

    :cond_3
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi$2;->this$0:Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;

    invoke-static {p1, v0}, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;->P(Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;I)V

    goto :goto_0

    :cond_4
    iget-object v3, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi$2;->this$0:Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;

    invoke-virtual {v3, v1, p1}, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;->updateCheckedItem(Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchItem;Landroid/view/View;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi$2;->this$0:Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;->updateSelectAllText()V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi$2;->this$0:Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;->updateSelectAllCheckBox()V

    :goto_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi$2;->this$0:Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;

    if-eqz v2, :cond_5

    move v0, v5

    :cond_5
    invoke-static {p0, v0}, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;->L(Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;I)V

    goto/16 :goto_1

    :cond_6
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi$2;->this$0:Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;->t(Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;)Z

    move-result p1

    if-eqz p1, :cond_7

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi$2;->this$0:Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;->x(Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;)Lcom/sec/android/app/sbrowser/settings/notifications/search/NotiSearchListener;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotiSearchListener;->setIsFirstLongPressIndex(I)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi$2;->this$0:Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;

    invoke-static {p1, v3}, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;->L(Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;I)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi$2;->this$0:Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;

    invoke-static {p1, v0}, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;->P(Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;I)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi$2;->this$0:Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;

    invoke-static {p1, v0}, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;->L(Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;I)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi$2;->this$0:Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;->startDeleteMode()V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi$2;->this$0:Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;

    const/16 p1, 0x12c

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;->Q(Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;I)V

    goto :goto_1

    :cond_7
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi$2;->this$0:Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;->K(Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi$2;->this$0:Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;->y(Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;)Lcom/sec/android/app/sbrowser/settings/notifications/NotificationUiController;

    move-result-object p1

    if-eqz p1, :cond_a

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchItem;->getRead()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_8

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi$2;->this$0:Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;

    invoke-static {p1, v1}, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;->T(Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchItem;)V

    :cond_8
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi$2;->this$0:Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;

    invoke-static {p1, v1}, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;->R(Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchItem;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi$2;->this$0:Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;->O(Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi$2;->this$0:Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;->getSearchEditTextView()Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    return-void

    :cond_9
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    new-instance v2, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchKeywordItem;

    invoke-direct {v2, p1, v0, v1}, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchKeywordItem;-><init>(Ljava/lang/String;J)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi$2;->this$0:Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;->D(Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;)Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchData;

    move-result-object p0

    invoke-virtual {p0, v2}, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchData;->addSearchKeywordToDB(Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchKeywordItem;)V

    :cond_a
    :goto_1
    return-void

    :cond_b
    :goto_2
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "onClick position : "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " is crossing the bounds"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_c
    :goto_3
    const-string p0, "onClick: no search data exists"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
